@interface PXPhotosExternalSecondaryToolbarController
- (CGSize)secondaryToolbarControllerToolbarSize:(id)a3;
- (PXPhotosExternalSecondaryToolbarController)initWithContainerView:(id)a3;
- (UIEdgeInsets)secondaryToolbarControllerScrollableContentPadding:(id)a3;
- (UIEdgeInsets)secondaryToolbarControllerToolbarContentInsets:(id)a3;
@end

@implementation PXPhotosExternalSecondaryToolbarController

- (CGSize)secondaryToolbarControllerToolbarSize:(id)a3
{
  v3 = 260.0;
  v4 = 19.0;
  result.height = v4;
  result.width = v3;
  return result;
}

- (UIEdgeInsets)secondaryToolbarControllerScrollableContentPadding:(id)a3
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

- (UIEdgeInsets)secondaryToolbarControllerToolbarContentInsets:(id)a3
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

- (PXPhotosExternalSecondaryToolbarController)initWithContainerView:(id)a3
{
  v4.receiver = self;
  v4.super_class = PXPhotosExternalSecondaryToolbarController;
  return [(PXSecondaryToolbarController *)&v4 initWithContainerView:a3 styleGuideProvider:self];
}

@end