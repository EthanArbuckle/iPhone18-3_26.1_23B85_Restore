@interface PUAlbumListViewControllerCommonImagePickerSpec
- (CGSize)cellSizeForBounds:(CGRect)a3;
- (CGSize)imageSize;
- (CGSize)stackSize;
- (UIEdgeInsets)sectionInsetsForLayoutReferenceSize:(CGSize)a3 safeAreaInsets:(UIEdgeInsets)a4;
- (double)sectionHeaderHeight;
- (void)configureStackViewWithGridStyle:(id)a3;
@end

@implementation PUAlbumListViewControllerCommonImagePickerSpec

- (UIEdgeInsets)sectionInsetsForLayoutReferenceSize:(CGSize)a3 safeAreaInsets:(UIEdgeInsets)a4
{
  UIEdgeInsetsAdd();
  result.right = v7;
  result.bottom = v6;
  result.left = v5;
  result.top = v4;
  return result;
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

- (CGSize)cellSizeForBounds:(CGRect)a3
{
  width = a3.size.width;
  v5 = [(PUAlbumListViewControllerSpec *)self _fontManager:a3.origin.x];
  v6 = [v5 albumListTitleLabelFont];

  [v6 _scaledValueForValue:40.0];
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
  [v6 _scaledValueForValue:29.0];
  v16 = v15;
  if (PUMainScreenScale_onceToken != -1)
  {
    dispatch_once(&PUMainScreenScale_onceToken, &__block_literal_global_27106);
  }

  v17 = round(v9 * v8) / v9 + round(v14 * v13) / v14 + round(*&PUMainScreenScale_screenScale * v16) / *&PUMainScreenScale_screenScale;

  v18 = width;
  v19 = v17;
  result.height = v19;
  result.width = v18;
  return result;
}

- (void)configureStackViewWithGridStyle:(id)a3
{
  v5 = a3;
  v3 = +[PUInterfaceManager currentTheme];
  v4 = [v3 folderCellBackgroundColor];
  [v5 setGridBackgroundColor:v4];

  [v5 setGridMargin:5.0];
  [v5 setGridItemSpacing:2.0];
}

- (CGSize)stackSize
{
  v2 = 70.0;
  v3 = 70.0;
  result.height = v3;
  result.width = v2;
  return result;
}

- (CGSize)imageSize
{
  if (PUMainScreenScale_onceToken != -1)
  {
    dispatch_once(&PUMainScreenScale_onceToken, &__block_literal_global_27106);
  }

  v2 = dbl_1B3D0CE50[*&PUMainScreenScale_screenScale > 1.0];
  v3 = v2;
  result.height = v3;
  result.width = v2;
  return result;
}

@end