@interface PXWidgetCompositionTilingControllerElement
- (id)contentTilingController;
@end

@implementation PXWidgetCompositionTilingControllerElement

- (id)contentTilingController
{
  widget = [(PXWidgetCompositionElement *)self widget];
  contentTilingController = [widget contentTilingController];
  if (![(PXWidgetCompositionTilingControllerElement *)self _didLoadContent])
  {
    scrollViewController = [(PXWidgetCompositionElement *)self scrollViewController];
    [contentTilingController setScrollController:scrollViewController];

    [(PXWidgetCompositionTilingControllerElement *)self _setDidLoadContent:1];
  }

  return contentTilingController;
}

@end