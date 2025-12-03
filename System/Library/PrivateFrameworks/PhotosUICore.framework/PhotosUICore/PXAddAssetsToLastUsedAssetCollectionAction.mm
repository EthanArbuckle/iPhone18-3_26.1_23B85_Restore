@interface PXAddAssetsToLastUsedAssetCollectionAction
+ (id)commandTitleWithPhotoLibrary:(id)library;
+ (id)targetAssetCollectionInPhotoLibrary:(id)library error:(id *)error;
+ (void)configureToast:(id)toast withAlbumName:(id)name;
+ (void)userDidAddAssetsToAssetCollection:(id)collection;
- (PXAddAssetsToLastUsedAssetCollectionAction)initWithAssets:(id)assets error:(id *)error;
- (id)localizedActionName;
- (void)performAction:(id)action;
- (void)performRedo:(id)redo;
- (void)performUndo:(id)undo;
@end

@implementation PXAddAssetsToLastUsedAssetCollectionAction

- (void)performRedo:(id)redo
{
  redoCopy = redo;
  underlyingAction = [(PXAddAssetsToLastUsedAssetCollectionAction *)self underlyingAction];
  v6 = underlyingAction;
  if (underlyingAction)
  {
    [underlyingAction performRedo:redoCopy];
  }

  else
  {
    redoCopy[2](redoCopy, 1, 0);
  }
}

- (void)performUndo:(id)undo
{
  undoCopy = undo;
  underlyingAction = [(PXAddAssetsToLastUsedAssetCollectionAction *)self underlyingAction];
  v6 = underlyingAction;
  if (underlyingAction)
  {
    [underlyingAction performUndo:undoCopy];
  }

  else
  {
    undoCopy[2](undoCopy, 1, 0);
  }
}

- (void)performAction:(id)action
{
  actionCopy = action;
  underlyingAction = [(PXAddAssetsToLastUsedAssetCollectionAction *)self underlyingAction];
  v6 = underlyingAction;
  if (underlyingAction)
  {
    [underlyingAction performAction:actionCopy];
  }

  else
  {
    actionCopy[2](actionCopy, 1, 0);
  }
}

- (id)localizedActionName
{
  v3 = objc_opt_class();
  photoLibrary = [(PXPhotosAction *)self photoLibrary];
  v5 = [v3 commandTitleWithPhotoLibrary:photoLibrary];

  return v5;
}

- (PXAddAssetsToLastUsedAssetCollectionAction)initWithAssets:(id)assets error:(id *)error
{
  assetsCopy = assets;
  v7 = objc_opt_class();
  firstObject = [assetsCopy firstObject];
  if (objc_opt_class() && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v9 = firstObject;
  }

  else
  {
    v9 = 0;
  }

  photoLibrary = [v9 photoLibrary];
  v11 = [v7 targetAssetCollectionInPhotoLibrary:photoLibrary error:error];

  if (v11)
  {
    v17.receiver = self;
    v17.super_class = PXAddAssetsToLastUsedAssetCollectionAction;
    v12 = [(PXAssetsAction *)&v17 initWithAssets:assetsCopy];
    if (v12)
    {
      v13 = [[PXAddAssetsToAssetCollectionAction alloc] initWithAssets:assetsCopy assetCollection:v11];
      underlyingAction = v12->_underlyingAction;
      v12->_underlyingAction = v13;

      objc_storeStrong(&v12->_targetAssetCollection, v11);
    }

    self = v12;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

+ (void)configureToast:(id)toast withAlbumName:(id)name
{
  v5 = MEMORY[0x1E696AEC0];
  nameCopy = name;
  toastCopy = toast;
  v7 = PXLocalizedStringFromTable(@"ADDED_TO_LAST_ALBUM_%@_TOAST_MESSAGE_FORMAT", @"PhotosUICore");
  nameCopy = [v5 localizedStringWithFormat:v7, nameCopy];

  [toastCopy setMessage:nameCopy];
  [toastCopy setIconSystemImageName:@"rectangle.stack"];
  [toastCopy setAutoDismissalDelay:1.0];
}

+ (id)commandTitleWithPhotoLibrary:(id)library
{
  v12 = *MEMORY[0x1E69E9840];
  v9 = 0;
  v4 = [self targetAssetCollectionInPhotoLibrary:library error:&v9];
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

  placeholderCommandTitle = [self placeholderCommandTitle];

  return placeholderCommandTitle;
}

+ (id)targetAssetCollectionInPhotoLibrary:(id)library error:(id *)error
{
  v32[1] = *MEMORY[0x1E69E9840];
  libraryCopy = library;
  if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXAddAssetsToLastUsedAssetCollectionAction.m" lineNumber:59 description:{@"%s must be called on the main thread", "+[PXAddAssetsToLastUsedAssetCollectionAction targetAssetCollectionInPhotoLibrary:error:]"}];
  }

  if (targetAssetCollectionInPhotoLibrary_error__targetAssetCollection)
  {
    photoLibrary = [targetAssetCollectionInPhotoLibrary_error__targetAssetCollection photoLibrary];
    v9 = [libraryCopy isEqual:photoLibrary];

    if (v9)
    {
      v10 = targetAssetCollectionInPhotoLibrary_error__targetAssetCollection;
      goto LABEL_24;
    }
  }

  if (!libraryCopy)
  {
    v23 = [MEMORY[0x1E696ABC0] px_genericErrorWithDebugDescription:@"target asset collection for 'add to last used asset collection' couldn't be determined because the photo library is missing"];
    if (!error)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  px_localDefaults = [libraryCopy px_localDefaults];
  v12 = [px_localDefaults dateForKey:@"LastAddToDestinationDate"];
  if (!v12 || ([MEMORY[0x1E695DF00] now], v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v13, "px_isWithinTimeInterval:sinceDate:", v12, 2592000.0), v13, !v14))
  {
    v23 = [MEMORY[0x1E696ABC0] px_genericErrorWithDebugDescription:@"target asset collection for 'add to last used asset collection' couldn't be determined because the date is too old or missing"];
    goto LABEL_19;
  }

  v15 = [px_localDefaults stringForKey:@"LastAddToDestination"];
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
  librarySpecificFetchOptions = [libraryCopy librarySpecificFetchOptions];
  v20 = [v17 fetchAssetCollectionsWithLocalIdentifiers:v18 options:librarySpecificFetchOptions];
  firstObject = [v20 firstObject];
  v22 = targetAssetCollectionInPhotoLibrary_error__targetAssetCollection;
  targetAssetCollectionInPhotoLibrary_error__targetAssetCollection = firstObject;

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
  if (error)
  {
LABEL_20:
    v26 = v23;
    *error = v23;
  }

LABEL_21:
  v27 = targetAssetCollectionInPhotoLibrary_error__targetAssetCollection;
  if (targetAssetCollectionInPhotoLibrary_error__targetAssetCollection)
  {
    currentRunLoop = [MEMORY[0x1E695DFD0] currentRunLoop];
    [currentRunLoop performBlock:&__block_literal_global_51117];

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

+ (void)userDidAddAssetsToAssetCollection:(id)collection
{
  collectionCopy = collection;
  photoLibrary = [collectionCopy photoLibrary];
  px_localDefaults = [photoLibrary px_localDefaults];

  localIdentifier = [collectionCopy localIdentifier];

  [px_localDefaults setString:localIdentifier forKey:@"LastAddToDestination"];
  date = [MEMORY[0x1E695DF00] date];
  [px_localDefaults setDate:date forKey:@"LastAddToDestinationDate"];

  px_dispatch_on_main_queue();
}

@end