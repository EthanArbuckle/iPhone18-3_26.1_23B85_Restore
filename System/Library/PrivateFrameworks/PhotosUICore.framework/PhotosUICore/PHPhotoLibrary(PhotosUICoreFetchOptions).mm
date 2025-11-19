@interface PHPhotoLibrary(PhotosUICoreFetchOptions)
- (id)px_standardLibrarySpecificFetchOptions;
@end

@implementation PHPhotoLibrary(PhotosUICoreFetchOptions)

- (id)px_standardLibrarySpecificFetchOptions
{
  v1 = [a1 librarySpecificFetchOptions];
  [v1 setCacheSizeForFetch:200000];

  return v1;
}

@end