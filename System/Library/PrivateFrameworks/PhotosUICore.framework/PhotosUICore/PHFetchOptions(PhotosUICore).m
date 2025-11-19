@interface PHFetchOptions(PhotosUICore)
+ (id)px_standardFetchOptions;
@end

@implementation PHFetchOptions(PhotosUICore)

+ (id)px_standardFetchOptions
{
  v0 = [MEMORY[0x1E69789A8] px_deprecated_appPhotoLibrary];
  v1 = [v0 px_standardLibrarySpecificFetchOptions];

  return v1;
}

@end