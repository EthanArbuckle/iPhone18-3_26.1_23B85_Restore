@interface PXStoryChromeLayoutEdgeHighlightController
- (double)targetAlphaForVisibleState;
- (void)animateChangeToTargetAlpha:(double)alpha;
@end

@implementation PXStoryChromeLayoutEdgeHighlightController

- (void)animateChangeToTargetAlpha:(double)alpha
{
  if (alpha == 0.0)
  {
    v8.receiver = self;
    v8.super_class = PXStoryChromeLayoutEdgeHighlightController;
    [(PXStoryChromeLayoutItemController *)&v8 animateChangeToTargetAlpha:alpha];
  }

  else
  {
    alphaAnimator = [(PXStoryChromeLayoutItemController *)self alphaAnimator];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __73__PXStoryChromeLayoutEdgeHighlightController_animateChangeToTargetAlpha___block_invoke;
    v7[3] = &__block_descriptor_40_e35_v16__0___PXMutableNumberAnimator__8l;
    *&v7[4] = alpha;
    [alphaAnimator performChangesWithoutAnimation:v7];

    viewModel = [(PXStoryChromeLayoutItemController *)self viewModel];
    [viewModel performChanges:&__block_literal_global_155454];
  }
}

- (double)targetAlphaForVisibleState
{
  viewModel = [(PXStoryChromeLayoutItemController *)self viewModel];
  viewLayoutSpec = [viewModel viewLayoutSpec];

  [viewLayoutSpec edgeHighlightAlpha];
  v5 = v4;

  return v5;
}

@end