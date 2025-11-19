@interface PUPhotosGridViewControllerSpec
- (CGSize)baseInterItemSpacing;
- (CGSize)contentSizeForViewInPopover;
- (PUPhotosGridViewControllerSpec)init;
- (UIEdgeInsets)gridContentInsets;
- (UIEdgeInsets)layoutMargins;
- (UIEdgeInsets)safeAreaInsets;
- (unsigned)thumbnailImageFormat;
- (void)configureCollectionViewGridLayout:(id)a3 forWidth:(double)a4 safeAreaInsets:(UIEdgeInsets)a5;
@end

@implementation PUPhotosGridViewControllerSpec

- (UIEdgeInsets)layoutMargins
{
  top = self->_layoutMargins.top;
  left = self->_layoutMargins.left;
  bottom = self->_layoutMargins.bottom;
  right = self->_layoutMargins.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (UIEdgeInsets)safeAreaInsets
{
  top = self->_safeAreaInsets.top;
  left = self->_safeAreaInsets.left;
  bottom = self->_safeAreaInsets.bottom;
  right = self->_safeAreaInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (CGSize)baseInterItemSpacing
{
  width = self->_baseInterItemSpacing.width;
  height = self->_baseInterItemSpacing.height;
  result.height = height;
  result.width = width;
  return result;
}

- (UIEdgeInsets)gridContentInsets
{
  v2 = *MEMORY[0x1E69DDCE0];
  v3 = *(MEMORY[0x1E69DDCE0] + 8);
  v4 = *(MEMORY[0x1E69DDCE0] + 16);
  v5 = *(MEMORY[0x1E69DDCE0] + 24);
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

- (void)configureCollectionViewGridLayout:(id)a3 forWidth:(double)a4 safeAreaInsets:(UIEdgeInsets)a5
{
  v10 = a3;
  PXEdgeInsetsForEdges();
  self->_safeAreaInsets.top = v6;
  self->_safeAreaInsets.left = v7;
  self->_safeAreaInsets.bottom = v8;
  self->_safeAreaInsets.right = v9;
  [v10 setUsesAspectItems:{-[PUPhotosGridViewControllerSpec shouldUseAspectItems](self, "shouldUseAspectItems")}];
}

- (unsigned)thumbnailImageFormat
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PUPhotosGridViewControllerSpec.m" lineNumber:53 description:@"Required override not found"];

  return 0;
}

- (CGSize)contentSizeForViewInPopover
{
  v2 = 320.0;
  v3 = 480.0;
  result.height = v3;
  result.width = v2;
  return result;
}

- (PUPhotosGridViewControllerSpec)init
{
  v10.receiver = self;
  v10.super_class = PUPhotosGridViewControllerSpec;
  v2 = [(PUPhotosGridViewControllerSpec *)&v10 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E69DCEB0] px_mainScreen];
    [v3 bounds];
    v5 = v4;
    v7 = v6;

    v2->_sizeSubclass = [MEMORY[0x1E69C4548] photosGridSizeSubclassForScreenSize:{v5, v7}];
    [MEMORY[0x1E69DD250] pu_layoutMarginWidthForCurrentScreenSize];
    v2->_layoutMargins.top = 0.0;
    v2->_layoutMargins.left = v8;
    v2->_layoutMargins.bottom = 0.0;
    v2->_layoutMargins.right = v8;
  }

  return v2;
}

@end