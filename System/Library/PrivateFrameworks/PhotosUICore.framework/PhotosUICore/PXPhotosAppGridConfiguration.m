@interface PXPhotosAppGridConfiguration
- (PXPhotosAppSpecificGridDelegate)photosAppGridDelegate;
- (id)copyWithZone:(_NSZone *)a3;
- (id)createContentControllerHelperWithConfiguration:(id)a3 contentController:(id)a4;
- (id)createViewModelHelperWithConfiguration:(id)a3 viewModel:(id)a4;
@end

@implementation PXPhotosAppGridConfiguration

- (PXPhotosAppSpecificGridDelegate)photosAppGridDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_photosAppGridDelegate);

  return WeakRetained;
}

- (id)createContentControllerHelperWithConfiguration:(id)a3 contentController:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[PXPhotosAppGridContentController alloc] initWithConfiguration:v6 contentController:v5];

  return v7;
}

- (id)createViewModelHelperWithConfiguration:(id)a3 viewModel:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[PXPhotosAppGridViewModel alloc] initWithConfiguration:v6 viewModel:v5];

  return v7;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(PXPhotosAppGridConfiguration);
  v5 = [(PXPhotosAppGridConfiguration *)self privacyController];
  [(PXPhotosAppGridConfiguration *)v4 setPrivacyController:v5];

  v6 = [(PXPhotosAppGridConfiguration *)self searchQueryMatchInfo];
  [(PXPhotosAppGridConfiguration *)v4 setSearchQueryMatchInfo:v6];

  v7 = [(PXPhotosAppGridConfiguration *)self searchContextualVideoThumbnailIdentifiers];
  [(PXPhotosAppGridConfiguration *)v4 setSearchContextualVideoThumbnailIdentifiers:v7];

  v8 = [(PXPhotosAppGridConfiguration *)self viewOptionsModel];
  [(PXPhotosAppGridConfiguration *)v4 setViewOptionsModel:v8];

  [(PXPhotosAppGridConfiguration *)v4 setHidesViewOptionsToolbar:[(PXPhotosAppGridConfiguration *)self hidesViewOptionsToolbar]];
  [(PXPhotosAppGridConfiguration *)v4 setAlwaysIncludeSharedWithYouAssets:[(PXPhotosAppGridConfiguration *)self alwaysIncludeSharedWithYouAssets]];
  v9 = [(PXPhotosAppGridConfiguration *)self photosAppGridDelegate];
  [(PXPhotosAppGridConfiguration *)v4 setPhotosAppGridDelegate:v9];

  [(PXPhotosAppGridConfiguration *)v4 setBarItemProviderClass:[(PXPhotosAppGridConfiguration *)self barItemProviderClass]];
  v10 = [(PXPhotosAppGridConfiguration *)self photoLibraries];
  [(PXPhotosAppGridConfiguration *)v4 setPhotoLibraries:v10];

  v11 = [(PXPhotosAppGridConfiguration *)self openInPhotosAppButtonNavigationDestination];
  [(PXPhotosAppGridConfiguration *)v4 setOpenInPhotosAppButtonNavigationDestination:v11];

  return v4;
}

@end