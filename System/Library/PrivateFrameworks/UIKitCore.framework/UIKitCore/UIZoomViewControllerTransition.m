@interface UIZoomViewControllerTransition
@end

@implementation UIZoomViewControllerTransition

id __71___UIZoomViewControllerTransition__zoomWithOptions_sourceItemProvider___block_invoke(uint64_t a1)
{
  v1 = (*(*(a1 + 32) + 16))();
  v2 = _UIPopoverPresentationControllerSourceItemUpCast(v1);
  v3 = [v2 _sourceViewForPresentationInWindow:0];

  return v3;
}

@end