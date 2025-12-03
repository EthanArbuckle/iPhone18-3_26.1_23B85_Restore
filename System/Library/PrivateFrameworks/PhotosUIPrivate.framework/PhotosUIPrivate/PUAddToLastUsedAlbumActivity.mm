@interface PUAddToLastUsedAlbumActivity
- (BOOL)_presentActivityOnViewController:(id)controller animated:(BOOL)animated completion:(id)completion;
- (BOOL)canPerformWithActivityItems:(id)items;
- (id)activityTitle;
- (void)performActivity;
@end

@implementation PUAddToLastUsedAlbumActivity

- (void)performActivity
{
  itemSourceController = [(PXActivity *)self itemSourceController];
  assets = [itemSourceController assets];
  array = [assets array];

  WeakRetained = objc_loadWeakRetained(&self->_undoManager);
  v7 = [objc_alloc(MEMORY[0x1E69C3320]) initWithAssets:array];
  v8 = v7;
  if (v7)
  {
    underlyingAction = [v7 underlyingAction];
    [underlyingAction setShouldSortAssetsByCreationDate:1];

    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __47__PUAddToLastUsedAlbumActivity_performActivity__block_invoke;
    v10[3] = &unk_1E7B80280;
    v10[4] = self;
    [v8 executeWithUndoManager:WeakRetained completionHandler:v10];
  }

  else
  {
    [(UIActivity *)self activityDidFinish:0];
  }
}

- (BOOL)canPerformWithActivityItems:(id)items
{
  itemSourceController = [(PXActivity *)self itemSourceController];
  v4 = MEMORY[0x1E69C3320];
  appPhotoLibrary = [itemSourceController appPhotoLibrary];
  v6 = [v4 targetAssetCollectionInPhotoLibrary:appPhotoLibrary error:0];

  if (v6)
  {
    LOBYTE(v6) = [PUAddToAlbumActivity canPerformWithItemSourceController:itemSourceController];
  }

  return v6;
}

- (id)activityTitle
{
  itemSourceController = [(PXActivity *)self itemSourceController];
  assets = [itemSourceController assets];
  firstObject = [assets firstObject];
  photoLibrary = [firstObject photoLibrary];

  v6 = [MEMORY[0x1E69C3320] commandTitleWithPhotoLibrary:photoLibrary];

  return v6;
}

- (BOOL)_presentActivityOnViewController:(id)controller animated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  completionCopy = completion;
  controllerCopy = controller;
  undoManager = [controllerCopy undoManager];
  objc_storeWeak(&self->_undoManager, undoManager);

  v12.receiver = self;
  v12.super_class = PUAddToLastUsedAlbumActivity;
  LOBYTE(animatedCopy) = [(PXActivity *)&v12 _presentActivityOnViewController:controllerCopy animated:animatedCopy completion:completionCopy];

  return animatedCopy;
}

@end