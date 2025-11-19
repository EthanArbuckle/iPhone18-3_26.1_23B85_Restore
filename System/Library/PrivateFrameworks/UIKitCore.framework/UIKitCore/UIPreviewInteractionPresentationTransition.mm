@interface UIPreviewInteractionPresentationTransition
@end

@implementation UIPreviewInteractionPresentationTransition

uint64_t __74___UIPreviewInteractionPresentationTransition_startInteractiveTransition___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2[34] == 1)
  {
    result = [v2 _performCancelTransition];
  }

  else
  {
    result = [v2 _performFinishTransition];
  }

  *(*(a1 + 32) + 33) = 0;
  *(*(a1 + 32) + 34) = 0;
  return result;
}

void __68___UIPreviewInteractionPresentationTransition__newPushDecayAnimator__block_invoke(uint64_t a1)
{
  v4 = [*(a1 + 32) _previewPresentationControllerForTransitionContext:*(*(a1 + 32) + 8)];
  v2 = [v4 presentationContainerEffectView];
  v3 = [v2 contentView];

  [*(a1 + 32) _applyPushDecayEffectTransformToView:v3];
}

@end