@interface PXWidgetCompositionTilingControllerElement
- (id)contentTilingController;
@end

@implementation PXWidgetCompositionTilingControllerElement

- (id)contentTilingController
{
  v3 = [(PXWidgetCompositionElement *)self widget];
  v4 = [v3 contentTilingController];
  if (![(PXWidgetCompositionTilingControllerElement *)self _didLoadContent])
  {
    v5 = [(PXWidgetCompositionElement *)self scrollViewController];
    [v4 setScrollController:v5];

    [(PXWidgetCompositionTilingControllerElement *)self _setDidLoadContent:1];
  }

  return v4;
}

@end