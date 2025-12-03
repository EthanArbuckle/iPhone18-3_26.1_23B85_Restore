@interface PXPhotosExternalSecondaryToolbarController
- (CGSize)secondaryToolbarControllerToolbarSize:(id)size;
- (PXPhotosExternalSecondaryToolbarController)initWithContainerView:(id)view;
- (UIEdgeInsets)secondaryToolbarControllerScrollableContentPadding:(id)padding;
- (UIEdgeInsets)secondaryToolbarControllerToolbarContentInsets:(id)insets;
@end

@implementation PXPhotosExternalSecondaryToolbarController

- (CGSize)secondaryToolbarControllerToolbarSize:(id)size
{
  v3 = 260.0;
  v4 = 19.0;
  result.height = v4;
  result.width = v3;
  return result;
}

- (UIEdgeInsets)secondaryToolbarControllerScrollableContentPadding:(id)padding
{
  v3 = *off_1E7721FA8;
  v4 = *(off_1E7721FA8 + 1);
  v5 = *(off_1E7721FA8 + 2);
  v6 = *(off_1E7721FA8 + 3);
  result.right = v6;
  result.bottom = v5;
  result.left = v4;
  result.top = v3;
  return result;
}

- (UIEdgeInsets)secondaryToolbarControllerToolbarContentInsets:(id)insets
{
  v3 = *off_1E7721FA8;
  v4 = *(off_1E7721FA8 + 1);
  v5 = *(off_1E7721FA8 + 2);
  v6 = *(off_1E7721FA8 + 3);
  result.right = v6;
  result.bottom = v5;
  result.left = v4;
  result.top = v3;
  return result;
}

- (PXPhotosExternalSecondaryToolbarController)initWithContainerView:(id)view
{
  v4.receiver = self;
  v4.super_class = PXPhotosExternalSecondaryToolbarController;
  return [(PXSecondaryToolbarController *)&v4 initWithContainerView:view styleGuideProvider:self];
}

@end