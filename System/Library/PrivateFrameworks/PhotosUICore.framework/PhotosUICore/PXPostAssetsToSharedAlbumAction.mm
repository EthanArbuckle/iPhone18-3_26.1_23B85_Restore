@interface PXPostAssetsToSharedAlbumAction
- (PXPostAssetsToSharedAlbumAction)initWithSharedAlbum:(id)a3 assets:(id)a4 comment:(id)a5;
- (id)presentationEnvironment;
- (void)performAction:(id)a3;
- (void)performUndo:(id)a3;
@end

@implementation PXPostAssetsToSharedAlbumAction

- (void)performUndo:(id)a3
{
  v4 = MEMORY[0x1E696ABC0];
  v5 = a3;
  v6 = [v4 px_genericErrorWithDebugDescription:@"No undo support for post actions"];
  (*(a3 + 2))(v5, 0, v6);
}

- (void)performAction:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = self->_sharedAlbum;
  v6 = PLSharedAlbumsGetLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [(PHAssetCollection *)v5 uuid];
    *buf = 138543362;
    v19 = v7;
    _os_log_impl(&dword_1A3C1C000, v6, OS_LOG_TYPE_DEFAULT, "IPXSharedAlbumPostToAction: Posting assets to shared album with UUID=%{public}@", buf, 0xCu);
  }

  v8 = [(PXPostAssetsToSharedAlbumAction *)self presentationEnvironment];
  v9 = [(PXAssetsAction *)self assets];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __49__PXPostAssetsToSharedAlbumAction_performAction___block_invoke;
  v13[3] = &unk_1E77358A0;
  v14 = v5;
  v15 = self;
  v16 = v8;
  v17 = v4;
  v10 = v4;
  v11 = v8;
  v12 = v5;
  _PXSharedAlbumsValidateSharedAlbumAddAssets(v12, v9, v11, 0, v13);
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

- (PXPostAssetsToSharedAlbumAction)initWithSharedAlbum:(id)a3 assets:(id)a4 comment:(id)a5
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (!v10)
  {
    v18 = [MEMORY[0x1E696AAA8] currentHandler];
    [v18 handleFailureInMethod:a2 object:self file:@"PXPostAssetsToSharedAlbumAction.m" lineNumber:36 description:{@"Invalid parameter not satisfying: %@", @"sharedAlbum"}];
  }

  if (![v11 count])
  {
    v19 = [MEMORY[0x1E696AAA8] currentHandler];
    [v19 handleFailureInMethod:a2 object:self file:@"PXPostAssetsToSharedAlbumAction.m" lineNumber:37 description:{@"Invalid parameter not satisfying: %@", @"assets.count"}];
  }

  v20.receiver = self;
  v20.super_class = PXPostAssetsToSharedAlbumAction;
  v13 = [(PXAssetsAction *)&v20 initWithAssets:v11];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_sharedAlbum, a3);
    v15 = [v12 copy];
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