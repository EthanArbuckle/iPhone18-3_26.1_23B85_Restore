@interface PXPostAssetsToSharedAlbumAction
- (PXPostAssetsToSharedAlbumAction)initWithSharedAlbum:(id)album assets:(id)assets comment:(id)comment;
- (id)presentationEnvironment;
- (void)performAction:(id)action;
- (void)performUndo:(id)undo;
@end

@implementation PXPostAssetsToSharedAlbumAction

- (void)performUndo:(id)undo
{
  v4 = MEMORY[0x1E696ABC0];
  undoCopy = undo;
  v6 = [v4 px_genericErrorWithDebugDescription:@"No undo support for post actions"];
  (*(undo + 2))(undoCopy, 0, v6);
}

- (void)performAction:(id)action
{
  v20 = *MEMORY[0x1E69E9840];
  actionCopy = action;
  v5 = self->_sharedAlbum;
  v6 = PLSharedAlbumsGetLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    uuid = [(PHAssetCollection *)v5 uuid];
    *buf = 138543362;
    v19 = uuid;
    _os_log_impl(&dword_1A3C1C000, v6, OS_LOG_TYPE_DEFAULT, "IPXSharedAlbumPostToAction: Posting assets to shared album with UUID=%{public}@", buf, 0xCu);
  }

  presentationEnvironment = [(PXPostAssetsToSharedAlbumAction *)self presentationEnvironment];
  assets = [(PXAssetsAction *)self assets];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __49__PXPostAssetsToSharedAlbumAction_performAction___block_invoke;
  v13[3] = &unk_1E77358A0;
  v14 = v5;
  selfCopy = self;
  v16 = presentationEnvironment;
  v17 = actionCopy;
  v10 = actionCopy;
  v11 = presentationEnvironment;
  v12 = v5;
  _PXSharedAlbumsValidateSharedAlbumAddAssets(v12, assets, v11, 0, v13);
}

void __49__PXPostAssetsToSharedAlbumAction_performAction___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v8 = v3;
    v5 = PXSharedAlbumsDefaultAssetCreationOptionsForAssets(v3, 0, 1);
    v6 = PXSharedAlbumsPrepareAndPublishAssetsToSharedAlbum(*(a1 + 32), v8, *(*(a1 + 40) + 104), v5, *(a1 + 48), *(a1 + 56));
  }

  else
  {
    v7 = *(a1 + 56);
    if (!v7)
    {
      goto LABEL_6;
    }

    v8 = 0;
    (*(v7 + 16))(v7, 0, 0);
  }

  v4 = v8;
LABEL_6:
}

- (PXPostAssetsToSharedAlbumAction)initWithSharedAlbum:(id)album assets:(id)assets comment:(id)comment
{
  albumCopy = album;
  assetsCopy = assets;
  commentCopy = comment;
  if (!albumCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXPostAssetsToSharedAlbumAction.m" lineNumber:36 description:{@"Invalid parameter not satisfying: %@", @"sharedAlbum"}];
  }

  if (![assetsCopy count])
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"PXPostAssetsToSharedAlbumAction.m" lineNumber:37 description:{@"Invalid parameter not satisfying: %@", @"assets.count"}];
  }

  v20.receiver = self;
  v20.super_class = PXPostAssetsToSharedAlbumAction;
  v13 = [(PXAssetsAction *)&v20 initWithAssets:assetsCopy];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_sharedAlbum, album);
    v15 = [commentCopy copy];
    comment = v14->_comment;
    v14->_comment = v15;
  }

  return v14;
}

- (id)presentationEnvironment
{
  [MEMORY[0x1E69DC668] sharedApplication];
  [objc_claimAutoreleasedReturnValue() px_firstKeyWindow];
  [objc_claimAutoreleasedReturnValue() rootViewController];
  objc_claimAutoreleasedReturnValue();
  PXPresentationEnvironmentForSender();
}

@end