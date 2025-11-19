@interface PUPhotosAlbumViewControllerPadSpec
- (double)contentCornerRadius;
- (id)gridSpec;
@end

@implementation PUPhotosAlbumViewControllerPadSpec

- (double)contentCornerRadius
{
  v2 = +[PUInterfaceManager currentTheme];
  [v2 padAlbumCornerRadius];
  v4 = v3;

  return v4;
}

- (id)gridSpec
{
  v2 = objc_alloc_init(PUPhotosGridViewControllerPadSpec);

  return v2;
}

@end