@interface PUAlbumListViewControllerCommonPhoneSpec
- (UIEdgeInsets)stackPerspectiveInsets;
- (UIOffset)stackOffset;
- (UIOffset)stackPerspectiveOffset;
- (double)posterSquareCornerRadius;
- (double)sectionHeaderHeight;
- (id)albumViewControllerSpec;
- (id)emptyStackPhotoDecoration;
- (id)gridViewControllerSpec;
- (id)stackPhotoDecoration;
@end

@implementation PUAlbumListViewControllerCommonPhoneSpec

- (id)albumViewControllerSpec
{
  v2 = objc_alloc_init(PUPhotosAlbumViewControllerPhoneSpec);

  return v2;
}

- (id)gridViewControllerSpec
{
  v2 = objc_alloc_init(PUPhotosGridViewControllerPhoneSpec);

  return v2;
}

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

- (double)posterSquareCornerRadius
{
  v2 = +[PUInterfaceManager currentTheme];
  [v2 phoneAlbumCornerRadius];
  v4 = v3;

  return v4;
}

- (UIOffset)stackOffset
{
  v2 = 0.0;
  v3 = 0.0;
  result.vertical = v3;
  result.horizontal = v2;
  return result;
}

- (UIOffset)stackPerspectiveOffset
{
  v2 = 0.0;
  v3 = -4.0;
  result.vertical = v3;
  result.horizontal = v2;
  return result;
}

- (UIEdgeInsets)stackPerspectiveInsets
{
  v2 = 2.0;
  v3 = 2.0;
  v4 = 2.0;
  v5 = 2.0;
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
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

@end