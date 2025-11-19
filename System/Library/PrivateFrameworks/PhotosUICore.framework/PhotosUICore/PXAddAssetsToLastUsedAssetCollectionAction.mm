@interface PXAddAssetsToLastUsedAssetCollectionAction
+ (id)commandTitleWithPhotoLibrary:(id)a3;
+ (id)targetAssetCollectionInPhotoLibrary:(id)a3 error:(id *)a4;
+ (void)configureToast:(id)a3 withAlbumName:(id)a4;
+ (void)userDidAddAssetsToAssetCollection:(id)a3;
- (PXAddAssetsToLastUsedAssetCollectionAction)initWithAssets:(id)a3 error:(id *)a4;
- (id)localizedActionName;
- (void)performAction:(id)a3;
- (void)performRedo:(id)a3;
- (void)performUndo:(id)a3;
@end

@implementation PXAddAssetsToLastUsedAssetCollectionAction

- (void)performRedo:(id)a3
{
  v4 = a3;
  v5 = [(PXAddAssetsToLastUsedAssetCollectionAction *)self underlyingAction];
  v6 = v5;
  if (v5)
  {
    [v5 performRedo:v4];
  }

  else
  {
    v4[2](v4, 1, 0);
  }
}

- (void)performUndo:(id)a3
{
  v4 = a3;
  v5 = [(PXAddAssetsToLastUsedAssetCollectionAction *)self underlyingAction];
  v6 = v5;
  if (v5)
  {
    [v5 performUndo:v4];
  }

  else
  {
    v4[2](v4, 1, 0);
  }
}

- (void)performAction:(id)a3
{
  v4 = a3;
  v5 = [(PXAddAssetsToLastUsedAssetCollectionAction *)self underlyingAction];
  v6 = v5;
  if (v5)
  {
    [v5 performAction:v4];
  }

  else
  {
    v4[2](v4, 1, 0);
  }
}

- (id)localizedActionName
{
  v3 = objc_opt_class();
  v4 = [(PXPhotosAction *)self photoLibrary];
  v5 = [v3 commandTitleWithPhotoLibrary:v4];

  return v5;
}

- (PXAddAssetsToLastUsedAssetCollectionAction)initWithAssets:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = objc_opt_class();
  v8 = [v6 firstObject];
  if (objc_opt_class() && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  v10 = [v9 photoLibrary];
  v11 = [v7 targetAssetCollectionInPhotoLibrary:v10 error:a4];

  if (v11)
  {
    v17.receiver = self;
    v17.super_class = PXAddAssetsToLastUsedAssetCollectionAction;
    v12 = [(PXAssetsAction *)&v17 initWithAssets:v6];
    if (v12)
    {
      v13 = [[PXAddAssetsToAssetCollectionAction alloc] initWithAssets:v6 assetCollection:v11];
      underlyingAction = v12->_underlyingAction;
      v12->_underlyingAction = v13;

      objc_storeStrong(&v12->_targetAssetCollection, v11);
    }

    self = v12;
    v15 = self;
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

+ (void)configureToast:(id)a3 withAlbumName:(id)a4
{
  v5 = MEMORY[0x1E696AEC0];
  v6 = a4;
  v9 = a3;
  v7 = PXLocalizedStringFromTable(@"ADDED_TO_LAST_ALBUM_%@_TOAST_MESSAGE_FORMAT", @"PhotosUICore");
  v8 = [v5 localizedStringWithFormat:v7, v6];

  [v9 setMessage:v8];
  [v9 setIconSystemImageName:@"rectangle.stack"];
  [v9 setAutoDismissalDelay:1.0];
}

+ (id)commandTitleWithPhotoLibrary:(id)a3
{
  v12 = *MEMORY[0x1E69E9840];
  v9 = 0;
  v4 = [a1 targetAssetCollectionInPhotoLibrary:a3 error:&v9];
  v5 = v9;
  if (v4)
  {
    PXLocalizedStringFromTable(@"ADD_TO_LAST_ALBUM_COMMAND_TITLE_FORMAT", @"PhotosUICore");
    objc_claimAutoreleasedReturnValue();
    [v4 localizedTitle];
    objc_claimAutoreleasedReturnValue();
    PXStringWithValidatedFormat();
  }

  v6 = PLUIGetLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v11 = v5;
    _os_log_impl(&dword_1A3C1C000, v6, OS_LOG_TYPE_ERROR, "command title for 'add to last used asset collection' couldn't be determined because destination is missing: %@", buf, 0xCu);
  }

  v7 = [a1 placeholderCommandTitle];

  return v7;
}

+ (id)targetAssetCollectionInPhotoLibrary:(id)a3 error:(id *)a4
{
  v32[1] = *MEMORY[0x1E69E9840];
  v7 = a3;
  if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
  {
    v30 = [MEMORY[0x1E696AAA8] currentHandler];
    [v30 handleFailureInMethod:a2 object:a1 file:@"PXAddAssetsToLastUsedAssetCollectionAction.m" lineNumber:59 description:{@"%s must be called on the main thread", "+[PXAddAssetsToLastUsedAssetCollectionAction targetAssetCollectionInPhotoLibrary:error:]"}];
  }

  if (targetAssetCollectionInPhotoLibrary_error__targetAssetCollection)
  {
    v8 = [targetAssetCollectionInPhotoLibrary_error__targetAssetCollection photoLibrary];
    v9 = [v7 isEqual:v8];

    if (v9)
    {
      v10 = targetAssetCollectionInPhotoLibrary_error__targetAssetCollection;
      goto LABEL_24;
    }
  }

  if (!v7)
  {
    v23 = [MEMORY[0x1E696ABC0] px_genericErrorWithDebugDescription:@"target asset collection for 'add to last used asset collection' couldn't be determined because the photo library is missing"];
    if (!a4)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  v11 = [v7 px_localDefaults];
  v12 = [v11 dateForKey:@"LastAddToDestinationDate"];
  if (!v12 || ([MEMORY[0x1E695DF00] now], v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v13, "px_isWithinTimeInterval:sinceDate:", v12, 2592000.0), v13, !v14))
  {
    v23 = [MEMORY[0x1E696ABC0] px_genericErrorWithDebugDescription:@"target asset collection for 'add to last used asset collection' couldn't be determined because the date is too old or missing"];
    goto LABEL_19;
  }

  v15 = [v11 stringForKey:@"LastAddToDestination"];
  v16 = v15;
  if (!v15)
  {
    v24 = MEMORY[0x1E696ABC0];
    v25 = @"target asset collection for 'add to last used asset collection' couldn't be determined because its local identifier is missing";
LABEL_17:
    v23 = [v24 px_genericErrorWithDebugDescription:{v25, v31}];
    goto LABEL_18;
  }

  v17 = MEMORY[0x1E6978650];
  v32[0] = v15;
  v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v32 count:1];
  v19 = [v7 librarySpecificFetchOptions];
  v20 = [v17 fetchAssetCollectionsWithLocalIdentifiers:v18 options:v19];
  v21 = [v20 firstObject];
  v22 = targetAssetCollectionInPhotoLibrary_error__targetAssetCollection;
  targetAssetCollectionInPhotoLibrary_error__targetAssetCollection = v21;

  if (!targetAssetCollectionInPhotoLibrary_error__targetAssetCollection)
  {
    v24 = MEMORY[0x1E696ABC0];
    v31 = v16;
    v25 = @"target asset collection for 'add to last used asset collection' couldn't be found with local identifier %@";
    goto LABEL_17;
  }

  v23 = 0;
LABEL_18:

LABEL_19:
  if (a4)
  {
LABEL_20:
    v26 = v23;
    *a4 = v23;
  }

LABEL_21:
  v27 = targetAssetCollectionInPhotoLibrary_error__targetAssetCollection;
  if (targetAssetCollectionInPhotoLibrary_error__targetAssetCollection)
  {
    v28 = [MEMORY[0x1E695DFD0] currentRunLoop];
    [v28 performBlock:&__block_literal_global_51117];

    v27 = targetAssetCollectionInPhotoLibrary_error__targetAssetCollection;
  }

  v10 = v27;

LABEL_24:

  return v10;
}

void __88__PXAddAssetsToLastUsedAssetCollectionAction_targetAssetCollectionInPhotoLibrary_error___block_invoke()
{
  v0 = targetAssetCollectionInPhotoLibrary_error__targetAssetCollection;
  targetAssetCollectionInPhotoLibrary_error__targetAssetCollection = 0;
}

+ (void)userDidAddAssetsToAssetCollection:(id)a3
{
  v3 = a3;
  v4 = [v3 photoLibrary];
  v5 = [v4 px_localDefaults];

  v6 = [v3 localIdentifier];

  [v5 setString:v6 forKey:@"LastAddToDestination"];
  v7 = [MEMORY[0x1E695DF00] date];
  [v5 setDate:v7 forKey:@"LastAddToDestinationDate"];

  px_dispatch_on_main_queue();
}

@end