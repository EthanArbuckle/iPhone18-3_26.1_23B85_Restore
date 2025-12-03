@interface PXPhotoKitPhotoLibraryActionManager
- (PXPhotoKitPhotoLibraryActionManager)initWithPhotoLibrary:(id)library;
@end

@implementation PXPhotoKitPhotoLibraryActionManager

- (PXPhotoKitPhotoLibraryActionManager)initWithPhotoLibrary:(id)library
{
  libraryCopy = library;
  v9.receiver = self;
  v9.super_class = PXPhotoKitPhotoLibraryActionManager;
  v6 = [(PXPhotoKitPhotoLibraryActionManager *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_photoLibrary, library);
  }

  return v7;
}

@end