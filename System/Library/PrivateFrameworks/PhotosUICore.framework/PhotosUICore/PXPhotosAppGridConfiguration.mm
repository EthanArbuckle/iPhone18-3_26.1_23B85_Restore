@interface PXPhotosAppGridConfiguration
- (PXPhotosAppSpecificGridDelegate)photosAppGridDelegate;
- (id)copyWithZone:(_NSZone *)zone;
- (id)createContentControllerHelperWithConfiguration:(id)configuration contentController:(id)controller;
- (id)createViewModelHelperWithConfiguration:(id)configuration viewModel:(id)model;
@end

@implementation PXPhotosAppGridConfiguration

- (PXPhotosAppSpecificGridDelegate)photosAppGridDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_photosAppGridDelegate);

  return WeakRetained;
}

- (id)createContentControllerHelperWithConfiguration:(id)configuration contentController:(id)controller
{
  controllerCopy = controller;
  configurationCopy = configuration;
  v7 = [[PXPhotosAppGridContentController alloc] initWithConfiguration:configurationCopy contentController:controllerCopy];

  return v7;
}

- (id)createViewModelHelperWithConfiguration:(id)configuration viewModel:(id)model
{
  modelCopy = model;
  configurationCopy = configuration;
  v7 = [[PXPhotosAppGridViewModel alloc] initWithConfiguration:configurationCopy viewModel:modelCopy];

  return v7;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(PXPhotosAppGridConfiguration);
  privacyController = [(PXPhotosAppGridConfiguration *)self privacyController];
  [(PXPhotosAppGridConfiguration *)v4 setPrivacyController:privacyController];

  searchQueryMatchInfo = [(PXPhotosAppGridConfiguration *)self searchQueryMatchInfo];
  [(PXPhotosAppGridConfiguration *)v4 setSearchQueryMatchInfo:searchQueryMatchInfo];

  searchContextualVideoThumbnailIdentifiers = [(PXPhotosAppGridConfiguration *)self searchContextualVideoThumbnailIdentifiers];
  [(PXPhotosAppGridConfiguration *)v4 setSearchContextualVideoThumbnailIdentifiers:searchContextualVideoThumbnailIdentifiers];

  viewOptionsModel = [(PXPhotosAppGridConfiguration *)self viewOptionsModel];
  [(PXPhotosAppGridConfiguration *)v4 setViewOptionsModel:viewOptionsModel];

  [(PXPhotosAppGridConfiguration *)v4 setHidesViewOptionsToolbar:[(PXPhotosAppGridConfiguration *)self hidesViewOptionsToolbar]];
  [(PXPhotosAppGridConfiguration *)v4 setAlwaysIncludeSharedWithYouAssets:[(PXPhotosAppGridConfiguration *)self alwaysIncludeSharedWithYouAssets]];
  photosAppGridDelegate = [(PXPhotosAppGridConfiguration *)self photosAppGridDelegate];
  [(PXPhotosAppGridConfiguration *)v4 setPhotosAppGridDelegate:photosAppGridDelegate];

  [(PXPhotosAppGridConfiguration *)v4 setBarItemProviderClass:[(PXPhotosAppGridConfiguration *)self barItemProviderClass]];
  photoLibraries = [(PXPhotosAppGridConfiguration *)self photoLibraries];
  [(PXPhotosAppGridConfiguration *)v4 setPhotoLibraries:photoLibraries];

  openInPhotosAppButtonNavigationDestination = [(PXPhotosAppGridConfiguration *)self openInPhotosAppButtonNavigationDestination];
  [(PXPhotosAppGridConfiguration *)v4 setOpenInPhotosAppButtonNavigationDestination:openInPhotosAppButtonNavigationDestination];

  return v4;
}

@end