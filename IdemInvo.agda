module IdemInvo where

open import Relation.Binary.PropositionalEquality

module MainResult
  (A : Set)
  (f : A → A)
  (idem : ∀ x → f (f x) ≡ f x)
  (invo : ∀ x → f (f x) ≡ x)
  where

  -- an idempotent and involutive function is an identity function
  iden : ∀ x → f x ≡ x
  iden x = trans (sym (idem x)) (invo x)
