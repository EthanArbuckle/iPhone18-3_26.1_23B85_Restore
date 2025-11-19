@interface PHPhotoLibrary
@end

@implementation PHPhotoLibrary

PXPhotoLibraryLocalDefaults *__48__PHPhotoLibrary_PhotosUICore__px_localDefaults__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = [[PXPhotoLibraryLocalDefaults alloc] initWithPhotoLibrary:WeakRetained];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

PXPhotoKitVirtualCollections *__53__PHPhotoLibrary_PhotosUICore__px_virtualCollections__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = [[PXPhotoKitVirtualCollections alloc] initWithPhotoLibrary:WeakRetained];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

void __50__PHPhotoLibrary_PhotosUICore__px_appPhotoLibrary__block_invoke()
{
  v0 = [MEMORY[0x1E69DC668] sharedApplication];
  px_appPhotoLibrary_appProvidesPhotoLibrary = [v0 conformsToProtocol:&unk_1F1B45D40];
}

id __58__PHPhotoLibrary_PhotosUICore__px_rootAlbumCollectionList__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = [MEMORY[0x1E6978760] fetchRootAlbumCollectionListWithOptions:*(a1 + 32)];
    v4 = [v3 firstObject];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

PXPeoplePetsHomeVisibilitySource *__59__PHPhotoLibrary_PhotosUICore__px_peoplePetsHomeVisibility__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = [[PXPeoplePetsHomeVisibilitySource alloc] initWithPhotoLibrary:WeakRetained];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

@end