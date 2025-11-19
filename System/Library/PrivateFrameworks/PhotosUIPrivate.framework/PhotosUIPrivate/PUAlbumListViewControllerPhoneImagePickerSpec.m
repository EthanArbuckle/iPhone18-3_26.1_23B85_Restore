@interface PUAlbumListViewControllerPhoneImagePickerSpec
- (id)albumViewControllerSpec;
- (id)gridViewControllerSpec;
@end

@implementation PUAlbumListViewControllerPhoneImagePickerSpec

- (id)albumViewControllerSpec
{
  v2 = objc_alloc_init(PUPhotosAlbumViewControllerPhoneImagePickerSpec);

  return v2;
}

- (id)gridViewControllerSpec
{
  v2 = objc_alloc_init(PUPhotosGridViewControllerPhoneImagePickerSpec);

  return v2;
}

@end