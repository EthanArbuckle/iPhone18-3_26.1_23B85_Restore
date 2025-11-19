@interface PUAlbumListViewControllerPadSpec
- (CGSize)cellSizeForStackSize:(CGSize)a3;
- (CGSize)collageImageSize;
- (CGSize)imageSize;
- (CGSize)imageSizeForLayoutReferenceSize:(CGSize)a3 safeAreaInsets:(UIEdgeInsets)a4;
- (CGSize)stackSize;
- (CGSize)stackSizeForLayoutReferenceSize:(CGSize)a3 safeAreaInsets:(UIEdgeInsets)a4;
- (UIEdgeInsets)sectionInsetsForLayoutReferenceSize:(CGSize)a3 safeAreaInsets:(UIEdgeInsets)a4;
- (UIEdgeInsets)stackPerspectiveInsets;
- (UIOffset)stackOffset;
- (UIOffset)stackPerspectiveOffset;
- (double)posterSquareCornerRadius;
- (double)sectionHeaderHeight;
- (id)albumViewControllerSpec;
- (id)emptyStackPhotoDecoration;
- (id)gridViewControllerSpec;
- (id)stackPhotoDecoration;
- (void)configureGridLayout:(id)a3 forLayoutReferenceSize:(CGSize)a4 safeAreaInsets:(UIEdgeInsets)a5;
- (void)configureStackViewWithGridStyle:(id)a3;
@end

@implementation PUAlbumListViewControllerPadSpec

- (id)albumViewControllerSpec
{
  v2 = objc_alloc_init(PUPhotosAlbumViewControllerPadSpec);

  return v2;
}

- (id)gridViewControllerSpec
{
  v2 = objc_alloc_init(PUPhotosGridViewControllerPadSpec);

  return v2;
}

- (double)sectionHeaderHeight
{
  v2 = [(PUAlbumListViewControllerSpec *)self _fontManager];
  v3 = [v2 albumListSectionTitleLabelFont];

  [v3 _scaledValueForValue:34.0];
  v5 = v4;
  if (PUMainScreenScale_onceToken != -1)
  {
    dispatch_once(&PUMainScreenScale_onceToken, &__block_literal_global_27106);
  }

  v6 = round(*&PUMainScreenScale_screenScale * v5) / *&PUMainScreenScale_screenScale;

  return v6;
}

- (CGSize)imageSizeForLayoutReferenceSize:(CGSize)a3 safeAreaInsets:(UIEdgeInsets)a4
{
  v4 = 256.0;
  v5 = 256.0;
  result.height = v5;
  result.width = v4;
  return result;
}

- (void)configureGridLayout:(id)a3 forLayoutReferenceSize:(CGSize)a4 safeAreaInsets:(UIEdgeInsets)a5
{
  right = a5.right;
  bottom = a5.bottom;
  left = a5.left;
  top = a5.top;
  height = a4.height;
  width = a4.width;
  v21 = 0.0;
  v22 = 0.0;
  v19 = 0u;
  v20 = 0u;
  v12 = a3;
  [(PUAlbumListViewControllerSpec *)self _getStackSize:&v21 outEdgeInsets:&v19 forLayoutReferenceSize:width safeAreaInsets:height, top, left, bottom, right];
  v13 = *(&v19 + 1);
  v15 = *(&v20 + 1);
  v14 = v21;
  if (PUMainScreenScale_onceToken != -1)
  {
    dispatch_once(&PUMainScreenScale_onceToken, &__block_literal_global_27106);
  }

  v16 = floor(*&PUMainScreenScale_screenScale * ((width - v13 - v15 - floor((width - v13 - v15 + 8.0) / (v14 + 8.0)) * v14) / (vcvtmd_s64_f64((width - v13 - v15 + 8.0) / (v14 + 8.0)) - 1) * 0.5)) / *&PUMainScreenScale_screenScale;
  *(&v19 + 1) = *(&v19 + 1) - v16;
  v17 = *(&v19 + 1);
  *(&v20 + 1) = *(&v20 + 1) - v16;
  v21 = v21 + v16 * 2.0;
  [(PUAlbumListViewControllerPadSpec *)self sectionFooterHeight:v19];
  [v12 setSectionContentInset:{0.0, v17, v18, *(&v20 + 1)}];
  [v12 setInterItemSpacing:{0.0, 0.0}];
  [(PUAlbumListViewControllerPadSpec *)self cellSizeForStackSize:v21, v22];
  [v12 setItemSize:?];
}

- (CGSize)cellSizeForStackSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v5 = [(PUAlbumListViewControllerSpec *)self _fontManager];
  v6 = [v5 albumListTitleLabelFont];

  [v6 _scaledValueForValue:24.0];
  v8 = v7;
  if (PUMainScreenScale_onceToken != -1)
  {
    dispatch_once(&PUMainScreenScale_onceToken, &__block_literal_global_27106);
  }

  v9 = *&PUMainScreenScale_screenScale;
  v10 = [(PUAlbumListViewControllerSpec *)self _fontManager];
  v11 = [v10 albumListSubtitleLabelFont];

  [v11 _scaledValueForValue:20.0];
  v13 = v12;
  if (PUMainScreenScale_onceToken != -1)
  {
    dispatch_once(&PUMainScreenScale_onceToken, &__block_literal_global_27106);
  }

  v14 = *&PUMainScreenScale_screenScale;
  [v6 _scaledValueForValue:10.0];
  v16 = v15;
  if (PUMainScreenScale_onceToken != -1)
  {
    dispatch_once(&PUMainScreenScale_onceToken, &__block_literal_global_27106);
  }

  v17 = *&PUMainScreenScale_screenScale;
  [v11 _scaledValueForValue:10.0];
  v19 = v18;
  if (PUMainScreenScale_onceToken != -1)
  {
    dispatch_once(&PUMainScreenScale_onceToken, &__block_literal_global_27106);
  }

  v20 = height + round(v14 * v13) / v14 + round(v9 * v8) / v9 + round(v17 * v16) / v17 + round(*&PUMainScreenScale_screenScale * v19) / *&PUMainScreenScale_screenScale;

  v21 = width;
  v22 = v20;
  result.height = v22;
  result.width = v21;
  return result;
}

- (CGSize)stackSizeForLayoutReferenceSize:(CGSize)a3 safeAreaInsets:(UIEdgeInsets)a4
{
  v6 = 0.0;
  v7 = 0.0;
  [(PUAlbumListViewControllerSpec *)self _getStackSize:&v6 outEdgeInsets:0 forLayoutReferenceSize:a3.width safeAreaInsets:a3.height, a4.top, a4.left, a4.bottom, a4.right];
  v4 = v6;
  v5 = v7;
  result.height = v5;
  result.width = v4;
  return result;
}

- (UIEdgeInsets)sectionInsetsForLayoutReferenceSize:(CGSize)a3 safeAreaInsets:(UIEdgeInsets)a4
{
  v4 = *(MEMORY[0x1E69DDCE0] + 16);
  v9 = *MEMORY[0x1E69DDCE0];
  v10 = v4;
  [(PUAlbumListViewControllerSpec *)self _getStackSize:0 outEdgeInsets:&v9 forLayoutReferenceSize:a3.width safeAreaInsets:a3.height, a4.top, a4.left, a4.bottom, a4.right];
  v6 = *(&v9 + 1);
  v5 = *&v9;
  v8 = *(&v10 + 1);
  v7 = *&v10;
  result.right = v8;
  result.bottom = v7;
  result.left = v6;
  result.top = v5;
  return result;
}

- (double)posterSquareCornerRadius
{
  v2 = +[PUInterfaceManager currentTheme];
  [v2 padAlbumCornerRadius];
  v4 = v3;

  return v4;
}

- (void)configureStackViewWithGridStyle:(id)a3
{
  v5 = a3;
  v3 = +[PUInterfaceManager currentTheme];
  v4 = [v3 folderCellBackgroundColor];
  [v5 setGridBackgroundColor:v4];

  [v5 setGridMargin:0.0];
  [v5 setGridItemSpacing:3.0];
}

- (CGSize)collageImageSize
{
  v2 = 360.0;
  v3 = 360.0;
  result.height = v3;
  result.width = v2;
  return result;
}

- (UIOffset)stackPerspectiveOffset
{
  v2 = -0.0;
  v3 = 0.0;
  result.vertical = v2;
  result.horizontal = v3;
  return result;
}

- (UIEdgeInsets)stackPerspectiveInsets
{
  v2 = 0.0;
  v3 = 0.0;
  v4 = 0.0;
  v5 = 0.0;
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

- (UIOffset)stackOffset
{
  v2 = 0.0;
  v3 = 0.0;
  result.vertical = v3;
  result.horizontal = v2;
  return result;
}

- (CGSize)stackSize
{
  v2 = 160.0;
  v3 = 160.0;
  result.height = v3;
  result.width = v2;
  return result;
}

- (id)emptyStackPhotoDecoration
{
  emptyStackPhotoDecoration = self->super._emptyStackPhotoDecoration;
  if (!emptyStackPhotoDecoration)
  {
    v4 = +[PUPhotoDecoration defaultDecoration];
    v5 = self->super._emptyStackPhotoDecoration;
    self->super._emptyStackPhotoDecoration = v4;

    emptyStackPhotoDecoration = self->super._emptyStackPhotoDecoration;
  }

  return emptyStackPhotoDecoration;
}

- (id)stackPhotoDecoration
{
  stackPhotoDecoration = self->super._stackPhotoDecoration;
  if (!stackPhotoDecoration)
  {
    v4 = +[PUPhotoDecoration defaultDecoration];
    v5 = self->super._stackPhotoDecoration;
    self->super._stackPhotoDecoration = v4;

    stackPhotoDecoration = self->super._stackPhotoDecoration;
  }

  return stackPhotoDecoration;
}

- (CGSize)imageSize
{
  v2 = PUPixelSizeFromPointSize(160.0);
  result.height = v3;
  result.width = v2;
  return result;
}

@end