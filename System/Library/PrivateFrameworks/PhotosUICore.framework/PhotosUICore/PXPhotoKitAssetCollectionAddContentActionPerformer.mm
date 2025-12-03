@interface PXPhotoKitAssetCollectionAddContentActionPerformer
+ (BOOL)canPerformOnAssetCollectionReference:(id)reference withInputs:(id)inputs;
- (BOOL)_isAddingToSharedAlbum;
- (PXPhotoKitAssetCollectionAddContentActionPerformer)initWithActionType:(id)type assetCollectionReference:(id)reference parameters:(id)parameters;
- (void)_performAddAssets:(id)assets;
- (void)_performAddSharedAlbumAssets:(id)assets;
- (void)_performMergeAssetCollections:(id)collections;
- (void)performBackgroundTask;
- (void)performUserInteractionTask;
@end

@implementation PXPhotoKitAssetCollectionAddContentActionPerformer

- (void)_performMergeAssetCollections:(id)collections
{
  collectionsCopy = collections;
  assetCollection = [(PXAssetCollectionActionPerformer *)self assetCollection];
  v6 = [[PXMergeAssetCollectionsAction alloc] initWithSourceAssetCollections:self->_content targetAssetCollection:assetCollection];
  undoManager = [(PXActionPerformer *)self undoManager];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __84__PXPhotoKitAssetCollectionAddContentActionPerformer__performMergeAssetCollections___block_invoke;
  v10[3] = &unk_1E774ACE8;
  v10[4] = self;
  v11 = assetCollection;
  v12 = collectionsCopy;
  v8 = collectionsCopy;
  v9 = assetCollection;
  [(PXAction *)v6 executeWithUndoManager:undoManager completionHandler:v10];
}

void __84__PXPhotoKitAssetCollectionAddContentActionPerformer__performMergeAssetCollections___block_invoke(void *a1, char a2, void *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if ((a2 & 1) == 0)
  {
    v6 = PLUIGetLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = a1[5];
      v8 = *(a1[4] + 176);
      v9 = 138412802;
      v10 = v5;
      v11 = 2112;
      v12 = v8;
      v13 = 2112;
      v14 = v7;
      _os_log_impl(&dword_1A3C1C000, v6, OS_LOG_TYPE_ERROR, "failed merging asset collections to album: %@ %@ %@", &v9, 0x20u);
    }
  }

  (*(a1[6] + 16))();
}

- (void)_performAddAssets:(id)assets
{
  assetsCopy = assets;
  assetCollection = [(PXAssetCollectionActionPerformer *)self assetCollection];
  if (assetCollection && [(PXFastEnumeration *)self->_content count])
  {
    if (([assetCollection canPerformEditOperation:3] & 1) == 0)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PXPhotoKitAssetCollectionAddContentActionPerformer.m" lineNumber:135 description:{@"Attempting to add assets to a non-editable collection: %@", assetCollection}];
    }

    v7 = [[PXAddAssetsToAssetCollectionAction alloc] initWithAssets:self->_content assetCollection:assetCollection];
    undoManager = [(PXActionPerformer *)self undoManager];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __72__PXPhotoKitAssetCollectionAddContentActionPerformer__performAddAssets___block_invoke;
    v11[3] = &unk_1E774ACE8;
    v11[4] = self;
    v12 = assetCollection;
    v13 = assetsCopy;
    [(PXAction *)v7 executeWithUndoManager:undoManager completionHandler:v11];
  }

  else
  {
    v9 = [MEMORY[0x1E696ABC0] px_genericErrorWithDebugDescription:@"PXPhotoKitAssetCollectionAddContentActionPerformer did not complete successfully"];
    (*(assetsCopy + 2))(assetsCopy, 0, v9);
  }
}

void __72__PXPhotoKitAssetCollectionAddContentActionPerformer__performAddAssets___block_invoke(void *a1, char a2, void *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if ((a2 & 1) == 0)
  {
    v6 = PLUIGetLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = a1[5];
      v8 = *(a1[4] + 176);
      v9 = 138412802;
      v10 = v5;
      v11 = 2112;
      v12 = v8;
      v13 = 2112;
      v14 = v7;
      _os_log_impl(&dword_1A3C1C000, v6, OS_LOG_TYPE_ERROR, "failed adding assets to album: %@ %@ %@", &v9, 0x20u);
    }
  }

  (*(a1[6] + 16))();
}

- (void)_performAddSharedAlbumAssets:(id)assets
{
  assetsCopy = assets;
  assetCollection = [(PXAssetCollectionActionPerformer *)self assetCollection];
  [(PXPhotoKitAssetCollectionActionPerformer *)self addAssets:assetsCopy toSharedAlbum:assetCollection];
}

- (void)performBackgroundTask
{
  if ([(PXPhotoKitAssetCollectionAddContentActionPerformer *)self _isAddingToSharedAlbum])
  {

    [(PXActionPerformer *)self completeBackgroundTaskWithSuccess:1 error:0];
  }

  else
  {
    firstObject = [(PXFastEnumeration *)self->_content firstObject];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v5[0] = MEMORY[0x1E69E9820];
      v5[1] = 3221225472;
      v5[2] = __75__PXPhotoKitAssetCollectionAddContentActionPerformer_performBackgroundTask__block_invoke;
      v5[3] = &unk_1E774C5C0;
      v5[4] = self;
      [(PXPhotoKitAssetCollectionAddContentActionPerformer *)self _performAddAssets:v5];
    }
  }
}

- (void)performUserInteractionTask
{
  _isAddingToSharedAlbum = [(PXPhotoKitAssetCollectionAddContentActionPerformer *)self _isAddingToSharedAlbum];
  content = self->_content;
  if (_isAddingToSharedAlbum)
  {
    v17 = content;
    if (v17)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
        v14 = objc_opt_class();
        v15 = NSStringFromClass(v14);
        px_descriptionForAssertionMessage = [(PXFastEnumeration *)v17 px_descriptionForAssertionMessage];
        [currentHandler handleFailureInMethod:a2 object:self file:@"PXPhotoKitAssetCollectionAddContentActionPerformer.m" lineNumber:56 description:{@"%@ should be nil or an instance inheriting from %@, but it is %@", @"_content", v15, px_descriptionForAssertionMessage}];
      }

      [(PXPhotoKitAssetCollectionAddContentActionPerformer *)self _performAddSharedAlbumAssets:v17];
    }

    else
    {
      v12 = [MEMORY[0x1E696ABC0] px_genericErrorWithDebugDescription:@"Invalid contents. PXPhotoKitAssetCollectionAddContentActionPerformer did not complete successfully."];
      [(PXActionPerformer *)self completeUserInteractionTaskWithSuccess:0 error:v12];
    }
  }

  else
  {
    firstObject = [(PXFastEnumeration *)content firstObject];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      PXLocalizedStringFromTable(@"PXPhotoKitAssetCollectionAddContentActionPerformer_MergeAlbumsTitle", @"PhotosUICore");
      objc_claimAutoreleasedReturnValue();
      v8 = MEMORY[0x1E696AEC0];
      v9 = [(PXFastEnumeration *)self->_content count];
      v10 = "One";
      if (v9 > 1)
      {
        v10 = "Many";
      }

      v11 = [v8 stringWithFormat:@"PXPhotoKitAssetCollectionAddContentActionPerformer_MergeAlbumsMessageFormat_%s", v10];
      PXLocalizedStringFromTable(v11, @"PhotosUICore");
      objc_claimAutoreleasedReturnValue();

      [(PXAssetCollectionActionPerformer *)self assetCollection];
      [objc_claimAutoreleasedReturnValue() localizedTitle];
      objc_claimAutoreleasedReturnValue();
      PXLocalizedStringWithValidatedFormat();
    }

    [(PXActionPerformer *)self completeUserInteractionTaskWithSuccess:1 error:0];
  }
}

uint64_t __80__PXPhotoKitAssetCollectionAddContentActionPerformer_performUserInteractionTask__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __80__PXPhotoKitAssetCollectionAddContentActionPerformer_performUserInteractionTask__block_invoke_2;
  v3[3] = &unk_1E774C5C0;
  v3[4] = v1;
  return [v1 _performMergeAssetCollections:v3];
}

- (BOOL)_isAddingToSharedAlbum
{
  firstObject = [(PXFastEnumeration *)self->_content firstObject];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    assetCollection = [(PXAssetCollectionActionPerformer *)self assetCollection];
    px_isSharedAlbum = [assetCollection px_isSharedAlbum];
  }

  else
  {
    px_isSharedAlbum = 0;
  }

  return px_isSharedAlbum;
}

- (PXPhotoKitAssetCollectionAddContentActionPerformer)initWithActionType:(id)type assetCollectionReference:(id)reference parameters:(id)parameters
{
  parametersCopy = parameters;
  v17.receiver = self;
  v17.super_class = PXPhotoKitAssetCollectionAddContentActionPerformer;
  v10 = [(PXAssetCollectionActionPerformer *)&v17 initWithActionType:type assetCollectionReference:reference parameters:parametersCopy];
  if (v10)
  {
    v11 = [parametersCopy objectForKeyedSubscript:*off_1E77219C0];
    v12 = v11;
    if (v11)
    {
      if (([(PXFastEnumeration *)v11 conformsToProtocol:&unk_1F1989768]& 1) != 0)
      {
LABEL_4:
        content = v10->_content;
        v10->_content = v12;

        goto LABEL_5;
      }

      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      px_descriptionForAssertionMessage = [(PXFastEnumeration *)v12 px_descriptionForAssertionMessage];
      [currentHandler handleFailureInMethod:a2 object:v10 file:@"PXPhotoKitAssetCollectionAddContentActionPerformer.m" lineNumber:40 description:{@"%@ should conform to protocol %@, but %@ doesn't", @"parameters[PXActionParameterKeyContent]", @"PXFastEnumeration", px_descriptionForAssertionMessage}];
    }

    else
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:v10 file:@"PXPhotoKitAssetCollectionAddContentActionPerformer.m" lineNumber:40 description:{@"%@ should conform to protocol %@, but it is nil", @"parameters[PXActionParameterKeyContent]", @"PXFastEnumeration"}];
    }

    goto LABEL_4;
  }

LABEL_5:

  return v10;
}

+ (BOOL)canPerformOnAssetCollectionReference:(id)reference withInputs:(id)inputs
{
  assetCollection = [reference assetCollection];
  if (!assetCollection)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXPhotoKitAssetCollectionAddContentActionPerformer.m" lineNumber:30 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"assetCollectionReference.assetCollection", v11}];
LABEL_6:

    goto LABEL_3;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v12 = objc_opt_class();
    v11 = NSStringFromClass(v12);
    px_descriptionForAssertionMessage = [assetCollection px_descriptionForAssertionMessage];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXPhotoKitAssetCollectionAddContentActionPerformer.m" lineNumber:30 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"assetCollectionReference.assetCollection", v11, px_descriptionForAssertionMessage}];

    goto LABEL_6;
  }

LABEL_3:
  v7 = [assetCollection canPerformEditOperation:3];

  return v7;
}

@end