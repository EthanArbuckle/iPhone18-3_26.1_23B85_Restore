@interface UIHyperInProcessPointAnimator
@end

@implementation UIHyperInProcessPointAnimator

void __53___UIHyperInProcessPointAnimator_initWithDimensions___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained _interactor];
  if (v1)
  {
    v2 = [WeakRetained _animatableProperty];
    v3 = [v2 _presentationValue];

    if ([WeakRetained _generatesFeedbackWhenBoundaryIsCrossed])
    {
      if (([WeakRetained _regionChangedDiscontinuouslyOnChange] & 1) != 0 || (objc_msgSend(v1, "_region"), v4 = objc_claimAutoreleasedReturnValue(), IsBoundaryCrossedFromPointToPoint = _UIHyperregionIsBoundaryCrossedFromPointToPoint(v4, objc_msgSend(v1, "_presentationPoint"), v3), v4, IsBoundaryCrossedFromPointToPoint))
      {
        v6 = [WeakRetained _feedbackGenerator];
        [v6 selectionChanged];

        [WeakRetained _setRegionChangedDiscontinuouslyOnChange:0];
      }
    }

    [v1 _copyOverridePresentationPoint:v3];
    v7 = [v1 _delegate];
    [v7 _hyperInteractorApplyPresentationPoint:v1];
  }
}

void __53___UIHyperInProcessPointAnimator__interactionChanged__block_invoke(uint64_t a1)
{
  v11[1] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1EEE9AC00](*(a1 + 32));
  v4 = v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [v5 _interactor];
  [v6 _closestPoint];
  cblas_dcopy_NEWLAPACK();

  v7 = [*(a1 + 32) _interactor];
  v8 = [v7 _delegate];
  v9 = [*(a1 + 32) _interactor];
  [v8 _hyperInteractorApplyPresentationPoint:v9];

  v10 = [*(a1 + 32) _interactor];
  [*(a1 + 32) _setRegionChangedDiscontinuouslyOnChange:{memcmp(v4, objc_msgSend(v10, "_closestPoint"), 8 * *(*(a1 + 32) + 16)) != 0}];
}

void __65___UIHyperInProcessPointAnimator__interactionEndedMutatingState___block_invoke(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v4 = [*(a1 + 32) _interactor];
  v2 = [v4 _delegate];
  v3 = [*(a1 + 32) _interactor];
  [v2 _hyperInteractorApplyPresentationPoint:v3];
}

void __65___UIHyperInProcessPointAnimator__animateWithPrelude_animations___block_invoke(uint64_t a1, int a2, char a3)
{
  if (a2 && (a3 & 1) == 0)
  {
    v3 = [*(a1 + 32) _interactor];
    [v3 _setOverridingPresentationPoint:0];
  }
}

@end