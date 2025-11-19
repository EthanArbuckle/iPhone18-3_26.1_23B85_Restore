@interface PUAlbumListViewControllerPadImagePickerSpec
- (id)albumViewControllerSpec;
- (id)gridViewControllerSpec;
@end

@implementation PUAlbumListViewControllerPadImagePickerSpec

- (id)albumViewControllerSpec
{
  v2 = objc_alloc_init(PUPhotosAlbumViewControllerPadImagePickerSpec);

  return v2;
}

- (id)gridViewControllerSpec
{
  v2 = objc_alloc_init(PUPhotosGridViewControllerPadImagePickerSpec);

  return v2;
}

@end