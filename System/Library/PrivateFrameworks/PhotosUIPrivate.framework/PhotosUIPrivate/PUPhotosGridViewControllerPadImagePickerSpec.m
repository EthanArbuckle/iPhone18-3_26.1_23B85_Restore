@interface PUPhotosGridViewControllerPadImagePickerSpec
- (unsigned)thumbnailImageFormat;
@end

@implementation PUPhotosGridViewControllerPadImagePickerSpec

- (unsigned)thumbnailImageFormat
{
  if (PUMainScreenScale_onceToken != -1)
  {
    dispatch_once(&PUMainScreenScale_onceToken, &__block_literal_global_27106);
  }

  if (*&PUMainScreenScale_screenScale <= 1.0)
  {
    return 3311;
  }

  else
  {
    return 3319;
  }
}

@end