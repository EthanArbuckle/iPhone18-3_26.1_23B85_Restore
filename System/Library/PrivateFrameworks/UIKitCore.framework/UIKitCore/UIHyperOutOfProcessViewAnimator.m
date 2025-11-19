@interface UIHyperOutOfProcessViewAnimator
@end

@implementation UIHyperOutOfProcessViewAnimator

void __55___UIHyperOutOfProcessViewAnimator__interactionChanged__block_invoke(uint64_t a1)
{
  v4 = [*(a1 + 32) _interactor];
  v2 = [v4 _delegate];
  v3 = [*(a1 + 32) _interactor];
  [v2 _hyperInteractorApplyPresentationPoint:v3];
}

double __67___UIHyperOutOfProcessViewAnimator__interactionEndedMutatingState___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  result = *(a1 + 40) + *(a2 + 8 * v2);
  *(a2 + 8 * v2) = result;
  return result;
}

void __67___UIHyperOutOfProcessViewAnimator__interactionEndedMutatingState___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) _interactor];
  *(a2 + 8 * *(a1 + 40)) = *([v4 _constrainedPoint] + 8 * *(a1 + 40));
}

void __67___UIHyperOutOfProcessViewAnimator__interactionEndedMutatingState___block_invoke_3(uint64_t a1)
{
  v4 = [*(a1 + 32) _interactor];
  v2 = [v4 _delegate];
  v3 = [*(a1 + 32) _interactor];
  [v2 _hyperInteractorApplyPresentationPoint:v3];
}

uint64_t __79___UIHyperOutOfProcessViewAnimator__animateWithParameters_velocity_animations___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _preferredFrameRateRange];
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = [*(a1 + 32) _updateReason];
  v9 = *(a1 + 40);
  LODWORD(v10) = v3;
  LODWORD(v11) = v5;
  LODWORD(v12) = v7;

  return [UIView _modifyAnimationsWithPreferredFrameRateRange:v8 updateReason:v9 animations:v10, v11, v12];
}

void __79___UIHyperOutOfProcessViewAnimator__animateWithParameters_velocity_animations___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = objc_loadWeakRetained((a1 + 40));
  if (v2)
  {
    v3 = [WeakRetained _propertyAnimators];
    [v3 removeObject:v2];
  }
}

@end