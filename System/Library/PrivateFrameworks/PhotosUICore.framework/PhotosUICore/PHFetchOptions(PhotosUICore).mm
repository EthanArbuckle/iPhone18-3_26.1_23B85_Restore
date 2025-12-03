@interface PHFetchOptions(PhotosUICore)
+ (id)px_standardFetchOptions;
@end

@implementation PHFetchOptions(PhotosUICore)

+ (id)px_standardFetchOptions
{
  px_deprecated_appPhotoLibrary = [MEMORY[0x1E69789A8] px_deprecated_appPhotoLibrary];
  px_standardLibrarySpecificFetchOptions = [px_deprecated_appPhotoLibrary px_standardLibrarySpecificFetchOptions];

  return px_standardLibrarySpecificFetchOptions;
}

@end