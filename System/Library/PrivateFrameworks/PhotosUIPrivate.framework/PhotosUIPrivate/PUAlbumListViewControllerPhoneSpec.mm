@interface PUAlbumListViewControllerPhoneSpec
- (CGSize)cellSizeForStackSize:(CGSize)size;
- (CGSize)imageSize;
- (CGSize)imageSizeForLayoutReferenceSize:(CGSize)size safeAreaInsets:(UIEdgeInsets)insets;
- (CGSize)stackSize;
- (CGSize)stackSizeForLayoutReferenceSize:(CGSize)size safeAreaInsets:(UIEdgeInsets)insets;
- (UIEdgeInsets)sectionInsetsForLayoutReferenceSize:(CGSize)size safeAreaInsets:(UIEdgeInsets)insets;
- (double)sectionHeaderHeight;
- (void)configureGridLayout:(id)layout forLayoutReferenceSize:(CGSize)size safeAreaInsets:(UIEdgeInsets)insets;
- (void)configureStackViewWithGridStyle:(id)style;
@end

@implementation PUAlbumListViewControllerPhoneSpec

- (double)sectionHeaderHeight
{
  _fontManager = [(PUAlbumListViewControllerSpec *)self _fontManager];
  albumListSectionTitleLabelFont = [_fontManager albumListSectionTitleLabelFont];

  [albumListSectionTitleLabelFont _scaledValueForValue:34.0];
  v5 = v4;
  if (PUMainScreenScale_onceToken != -1)
  {
    dispatch_once(&PUMainScreenScale_onceToken, &__block_literal_global_27106);
  }

  v6 = round(*&PUMainScreenScale_screenScale * v5) / *&PUMainScreenScale_screenScale;

  return v6;
}

- (void)configureGridLayout:(id)layout forLayoutReferenceSize:(CGSize)size safeAreaInsets:(UIEdgeInsets)insets
{
  right = insets.right;
  bottom = insets.bottom;
  left = insets.left;
  top = insets.top;
  height = size.height;
  width = size.width;
  v23 = 0.0;
  v24 = 0.0;
  v21 = 0u;
  v22 = 0u;
  layoutCopy = layout;
  [(PUAlbumListViewControllerSpec *)self _getStackSize:&v23 outEdgeInsets:&v21 forLayoutReferenceSize:width safeAreaInsets:height, top, left, bottom, right];
  v13 = *(&v21 + 1);
  v15 = *(&v22 + 1);
  v14 = v23;
  if (PUMainScreenScale_onceToken != -1)
  {
    dispatch_once(&PUMainScreenScale_onceToken, &__block_literal_global_27106);
  }

  v16 = floor(*&PUMainScreenScale_screenScale * ((width - v13 - v15 - floor((width - v13 - v15 + 8.0) / (v14 + 8.0)) * v14) / (vcvtmd_s64_f64((width - v13 - v15 + 8.0) / (v14 + 8.0)) - 1))) / *&PUMainScreenScale_screenScale;
  if (*(&v21 + 1) >= *(&v22 + 1))
  {
    v17 = *(&v22 + 1);
  }

  else
  {
    v17 = *(&v21 + 1);
  }

  if (v16 * 0.5 < v17)
  {
    v17 = v16 * 0.5;
  }

  *(&v21 + 1) = *(&v21 + 1) - v17;
  v18 = *(&v21 + 1);
  *(&v22 + 1) = *(&v22 + 1) - v17;
  v23 = v23 + v17 * 2.0;
  v19 = v16 + v17 * -2.0;
  [(PUAlbumListViewControllerPhoneSpec *)self sectionFooterHeight:v21];
  [layoutCopy setSectionContentInset:{0.0, v18, v20, *(&v22 + 1)}];
  [layoutCopy setInterItemSpacing:{v19, 0.0}];
  [(PUAlbumListViewControllerPhoneSpec *)self cellSizeForStackSize:v23, v24];
  [layoutCopy setItemSize:?];
}

- (CGSize)cellSizeForStackSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  _fontManager = [(PUAlbumListViewControllerSpec *)self _fontManager];
  albumListTitleLabelFont = [_fontManager albumListTitleLabelFont];

  [albumListTitleLabelFont _scaledValueForValue:20.0];
  v8 = v7;
  if (PUMainScreenScale_onceToken != -1)
  {
    dispatch_once(&PUMainScreenScale_onceToken, &__block_literal_global_27106);
  }

  v9 = *&PUMainScreenScale_screenScale;
  _fontManager2 = [(PUAlbumListViewControllerSpec *)self _fontManager];
  albumListSubtitleLabelFont = [_fontManager2 albumListSubtitleLabelFont];

  [albumListSubtitleLabelFont _scaledValueForValue:20.0];
  v13 = v12;
  if (PUMainScreenScale_onceToken != -1)
  {
    dispatch_once(&PUMainScreenScale_onceToken, &__block_literal_global_27106);
  }

  v14 = *&PUMainScreenScale_screenScale;
  [albumListTitleLabelFont _scaledValueForValue:8.0];
  v16 = v15;
  if (PUMainScreenScale_onceToken != -1)
  {
    dispatch_once(&PUMainScreenScale_onceToken, &__block_literal_global_27106);
  }

  v17 = *&PUMainScreenScale_screenScale;
  [albumListTitleLabelFont _scaledValueForValue:8.0];
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

- (CGSize)stackSizeForLayoutReferenceSize:(CGSize)size safeAreaInsets:(UIEdgeInsets)insets
{
  v6 = 0.0;
  v7 = 0.0;
  [(PUAlbumListViewControllerSpec *)self _getStackSize:&v6 outEdgeInsets:0 forLayoutReferenceSize:size.width safeAreaInsets:size.height, insets.top, insets.left, insets.bottom, insets.right];
  v4 = v6;
  v5 = v7;
  result.height = v5;
  result.width = v4;
  return result;
}

- (UIEdgeInsets)sectionInsetsForLayoutReferenceSize:(CGSize)size safeAreaInsets:(UIEdgeInsets)insets
{
  v4 = *(MEMORY[0x1E69DDCE0] + 16);
  v9 = *MEMORY[0x1E69DDCE0];
  v10 = v4;
  [(PUAlbumListViewControllerSpec *)self _getStackSize:0 outEdgeInsets:&v9 forLayoutReferenceSize:size.width safeAreaInsets:size.height, insets.top, insets.left, insets.bottom, insets.right];
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

- (void)configureStackViewWithGridStyle:(id)style
{
  styleCopy = style;
  v3 = +[PUInterfaceManager currentTheme];
  folderCellBackgroundColor = [v3 folderCellBackgroundColor];
  [styleCopy setGridBackgroundColor:folderCellBackgroundColor];

  [styleCopy setGridMargin:0.0];
  [styleCopy setGridItemSpacing:2.0];
}

- (CGSize)stackSize
{
  v2 = 130.0;
  v3 = 130.0;
  result.height = v3;
  result.width = v2;
  return result;
}

- (CGSize)imageSizeForLayoutReferenceSize:(CGSize)size safeAreaInsets:(UIEdgeInsets)insets
{
  v4 = 256.0;
  v5 = 256.0;
  result.height = v5;
  result.width = v4;
  return result;
}

- (CGSize)imageSize
{
  v2 = PUPixelSizeFromPointSize(130.0);
  result.height = v3;
  result.width = v2;
  return result;
}

@end