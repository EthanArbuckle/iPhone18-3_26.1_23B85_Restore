@interface PHPhotoLibrary(PhotosUICoreFetchOptions)
- (id)px_standardLibrarySpecificFetchOptions;
@end

@implementation PHPhotoLibrary(PhotosUICoreFetchOptions)

- (id)px_standardLibrarySpecificFetchOptions
{
  librarySpecificFetchOptions = [self librarySpecificFetchOptions];
  [librarySpecificFetchOptions setCacheSizeForFetch:200000];

  return librarySpecificFetchOptions;
}

@end