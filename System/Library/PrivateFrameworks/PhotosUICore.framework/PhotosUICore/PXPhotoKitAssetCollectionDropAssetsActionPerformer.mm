@interface PXPhotoKitAssetCollectionDropAssetsActionPerformer
+ (BOOL)canPerformActionType:(id)type onAssetCollectionReference:(id)reference withInputs:(id)inputs;
+ (id)dropAssetsActionPerformerForAssetCollection:(id)collection dropSession:(id)session;
- (id)memoryAssetsActionFactory;
- (void)completeUserInteractionTaskWithSuccess:(BOOL)success error:(id)error;
- (void)performUserInteractionTask;
@end

@implementation PXPhotoKitAssetCollectionDropAssetsActionPerformer

- (id)memoryAssetsActionFactory
{
  delegate = [(PXActionPerformer *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    delegate2 = [(PXActionPerformer *)self delegate];
    memoryAssetsActionFactory = [delegate2 memoryAssetsActionFactory];
  }

  else
  {
    memoryAssetsActionFactory = 0;
  }

  return memoryAssetsActionFactory;
}

- (void)completeUserInteractionTaskWithSuccess:(BOOL)success error:(id)error
{
  v5.receiver = self;
  v5.super_class = PXPhotoKitAssetCollectionDropAssetsActionPerformer;
  [(PXActionPerformer *)&v5 completeUserInteractionTaskWithSuccess:success error:error];
  [(PXAssetCollectionActionPerformer *)self setDragSession:0];
  [(PXAssetCollectionActionPerformer *)self setDropSession:0];
}

- (void)performUserInteractionTask
{
  v26 = *MEMORY[0x1E69E9840];
  assetCollection = [(PXAssetCollectionActionPerformer *)self assetCollection];
  dropSession = [(PXAssetCollectionActionPerformer *)self dropSession];
  if (![assetCollection px_assetsDropMode])
  {
    memoryAssetsActionFactory = [(PXPhotoKitAssetCollectionDropAssetsActionPerformer *)self memoryAssetsActionFactory];

    if (!memoryAssetsActionFactory)
    {
      v10 = PLDragAndDropGetLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v14 = objc_opt_class();
        v12 = NSStringFromClass(v14);
        *buf = 138412546;
        v23 = v12;
        v24 = 2112;
        v25 = assetCollection;
        v13 = "%@ called with non-editable collection: %@";
        goto LABEL_12;
      }

LABEL_13:

      [(PXPhotoKitAssetCollectionDropAssetsActionPerformer *)self completeUserInteractionTaskWithSuccess:0 error:0];
      goto LABEL_14;
    }
  }

  if (!dropSession)
  {
    v10 = PLDragAndDropGetLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = objc_opt_class();
      v12 = NSStringFromClass(v11);
      *buf = 138412546;
      v23 = v12;
      v24 = 2112;
      v25 = assetCollection;
      v13 = "%@ called without drop session: %@";
LABEL_12:
      _os_log_impl(&dword_1A3C1C000, v10, OS_LOG_TYPE_ERROR, v13, buf, 0x16u);

      goto LABEL_13;
    }

    goto LABEL_13;
  }

  px_isSharedAlbum = [assetCollection px_isSharedAlbum];
  v8 = +[PXImportManager defaultManager];
  if (px_isSharedAlbum)
  {
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __80__PXPhotoKitAssetCollectionDropAssetsActionPerformer_performUserInteractionTask__block_invoke;
    v19[3] = &unk_1E7743DF8;
    v19[4] = self;
    v20 = assetCollection;
    v21 = dropSession;
    [v8 fetchAssetsFromDrop:v21 importIfNeeded:0 completion:v19];

    v9 = v20;
  }

  else
  {
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __80__PXPhotoKitAssetCollectionDropAssetsActionPerformer_performUserInteractionTask__block_invoke_7;
    v15[3] = &unk_1E7743E20;
    v18 = a2;
    v15[4] = self;
    v16 = dropSession;
    v17 = assetCollection;
    [v8 fetchAssetsFromDrop:v16 importIfNeeded:1 completion:v15];

    v9 = v16;
  }

LABEL_14:
}

void __80__PXPhotoKitAssetCollectionDropAssetsActionPerformer_performUserInteractionTask__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 count])
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __80__PXPhotoKitAssetCollectionDropAssetsActionPerformer_performUserInteractionTask__block_invoke_2;
    block[3] = &unk_1E774A1B8;
    block[4] = *(a1 + 32);
    v4 = &v14;
    v14 = v3;
    v5 = &v15;
    v15 = *(a1 + 40);
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }

  else
  {
    v6 = +[PXImportManager defaultManager];
    v7 = [*(a1 + 48) items];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __80__PXPhotoKitAssetCollectionDropAssetsActionPerformer_performUserInteractionTask__block_invoke_3;
    v10[3] = &unk_1E7743DD0;
    v8 = *(a1 + 40);
    v10[4] = *(a1 + 32);
    v4 = &v11;
    v11 = v8;
    v5 = &v12;
    v12 = *(a1 + 48);
    v9 = [v6 importSharedSourcesForDragItems:v7 completionHandler:v10];
  }
}

void __80__PXPhotoKitAssetCollectionDropAssetsActionPerformer_performUserInteractionTask__block_invoke_7(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v28 = [MEMORY[0x1E696AAA8] currentHandler];
      v29 = *(a1 + 56);
      v30 = *(a1 + 32);
      v31 = objc_opt_class();
      v32 = NSStringFromClass(v31);
      v33 = [v3 px_descriptionForAssertionMessage];
      [v28 handleFailureInMethod:v29 object:v30 file:@"PXPhotoKitAssetCollectionDropAssetsActionPerformer.m" lineNumber:122 description:{@"%@ should be nil or an instance inheriting from %@, but it is %@", @"displayAssetFetchResult", v32, v33}];
    }
  }

  v4 = [v3 count];
  v5 = [*(a1 + 40) items];
  v6 = [v5 count];

  if (v4 != v6)
  {
    v7 = [PXDragAndDropUIUtilities dropImportErrorAlertControllerWithHandler:0];
    [*(a1 + 32) presentViewController:v7];
  }

  if ([v3 count])
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __80__PXPhotoKitAssetCollectionDropAssetsActionPerformer_performUserInteractionTask__block_invoke_8;
    aBlock[3] = &unk_1E774C5C0;
    aBlock[4] = *(a1 + 32);
    v8 = _Block_copy(aBlock);
    v9 = [*(a1 + 32) actionType];
    v10 = [v9 isEqualToString:*off_1E7721D38];

    if (!v10)
    {
      if ([*(a1 + 48) px_isFavoritesSmartAlbum])
      {
        v19 = [[PXFavoriteAssetsAction alloc] initWithAssets:v3 favorite:1];
      }

      else
      {
        if ([*(a1 + 48) px_isLibraryVirtualCollection])
        {
          v8[2](v8, 1, 0);
LABEL_32:

          goto LABEL_33;
        }

        v19 = [[PXAddAssetsToAssetCollectionAction alloc] initWithAssets:v3 assetCollection:*(a1 + 48)];
      }

      v13 = v19;
      v27 = [*(a1 + 32) undoManager];
      [v13 executeWithUndoManager:v27 completionHandler:v8];

LABEL_31:
      goto LABEL_32;
    }

    v11 = [*(a1 + 32) dropTargetAssetReference];
    if (v11)
    {
      v12 = [*(a1 + 32) dropTargetAssetReference];
      v13 = [v12 asset];

      if (!v13)
      {
        v14 = [MEMORY[0x1E696AAA8] currentHandler];
        v34 = *(a1 + 56);
        v35 = *(a1 + 32);
        v36 = objc_opt_class();
        v17 = NSStringFromClass(v36);
        [v14 handleFailureInMethod:v34 object:v35 file:@"PXPhotoKitAssetCollectionDropAssetsActionPerformer.m" lineNumber:137 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"self.dropTargetAssetReference.asset", v17}];
        goto LABEL_35;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v14 = [MEMORY[0x1E696AAA8] currentHandler];
        v37 = *(a1 + 56);
        v15 = *(a1 + 32);
        v16 = objc_opt_class();
        v17 = NSStringFromClass(v16);
        v18 = [v13 px_descriptionForAssertionMessage];
        [v14 handleFailureInMethod:v37 object:v15 file:@"PXPhotoKitAssetCollectionDropAssetsActionPerformer.m" lineNumber:137 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"self.dropTargetAssetReference.asset", v17, v18}];

LABEL_35:
      }
    }

    else
    {
      v13 = 0;
    }

    v20 = [MEMORY[0x1E6978630] fetchAssetsInAssetCollection:*(a1 + 48) options:0];
    if ([v20 containsObject:v13] & 1) != 0 || (objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), !v13) || (isKindOfClass)
    {
      v21 = [*(a1 + 32) memoryAssetsActionFactory];
      v22 = [v21 rearrangeMemoryAssetsActionWithAssetCollection:*(a1 + 48) movedAssets:v3 beforeAsset:v13];

      if (!v22)
      {
        if (([*(a1 + 48) px_isMemory] & 1) != 0 || (v26 = -[PXRearrangeAssetCollectionAction initWithAssetCollection:movedAssets:targetAsset:]([PXRearrangeAssetCollectionAction alloc], "initWithAssetCollection:movedAssets:targetAsset:", *(a1 + 48), v3, v13)) == 0)
        {
          v22 = [MEMORY[0x1E696ABC0] px_genericErrorWithDebugDescription:{@"Unable to obtain rearrange action for asset collection: %@", *(a1 + 48)}];
          (v8)[2](v8, 0, v22);
          goto LABEL_30;
        }

        v22 = v26;
      }

      v23 = [*(a1 + 32) undoManager];
      [v22 executeWithUndoManager:v23 completionHandler:v8];
    }

    else
    {
      v25 = *(a1 + 32);
      v22 = [MEMORY[0x1E696ABC0] px_genericErrorWithDebugDescription:{@"Unable to know where the move target is, %@ is not in the list of existing assets.", v13}];
      [v25 completeUserInteractionTaskWithSuccess:0 error:v22];
    }

LABEL_30:

    goto LABEL_31;
  }

  [*(a1 + 32) completeUserInteractionTaskWithSuccess:0 error:0];
LABEL_33:
}

void __80__PXPhotoKitAssetCollectionDropAssetsActionPerformer_performUserInteractionTask__block_invoke_8(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __80__PXPhotoKitAssetCollectionDropAssetsActionPerformer_performUserInteractionTask__block_invoke_9;
  block[3] = &unk_1E774B368;
  v6 = *(a1 + 32);
  v10 = a2;
  block[4] = v6;
  v9 = v5;
  v7 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __80__PXPhotoKitAssetCollectionDropAssetsActionPerformer_performUserInteractionTask__block_invoke_3(id *a1, int a2, uint64_t a3, void *a4, void *a5)
{
  v9 = a4;
  v10 = a5;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __80__PXPhotoKitAssetCollectionDropAssetsActionPerformer_performUserInteractionTask__block_invoke_4;
  aBlock[3] = &unk_1E774A1B8;
  aBlock[4] = a1[4];
  v11 = v10;
  v25 = v11;
  v26 = a1[5];
  v12 = _Block_copy(aBlock);
  v13 = [v9 count];
  if (!v13)
  {
    if (![v11 count])
    {
      goto LABEL_9;
    }

    goto LABEL_6;
  }

  v14 = [v9 count];
  v5 = [a1[6] items];
  if (v14 != [v5 count])
  {

    goto LABEL_14;
  }

  if ([v11 count])
  {
LABEL_6:
    v15 = [v11 count];
    v16 = [a1[6] items];
    v17 = [v16 count];

    if (v13)
    {
    }

    if (v15 == v17)
    {
      goto LABEL_9;
    }

LABEL_14:
    v19 = MEMORY[0x1E69E9820];
    v20 = 3221225472;
    v21 = __80__PXPhotoKitAssetCollectionDropAssetsActionPerformer_performUserInteractionTask__block_invoke_6;
    v22 = &unk_1E7748000;
    v23 = v12;
    v18 = [PXDragAndDropUIUtilities dropImportErrorAlertControllerWithHandler:&v19];
    [a1[4] presentViewController:{v18, v19, v20, v21, v22}];

    goto LABEL_15;
  }

LABEL_9:
  if (a2 && ([v9 count] || objc_msgSend(v11, "count")))
  {
    v12[2](v12);
  }

LABEL_15:
}

void __80__PXPhotoKitAssetCollectionDropAssetsActionPerformer_performUserInteractionTask__block_invoke_4(uint64_t a1)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __80__PXPhotoKitAssetCollectionDropAssetsActionPerformer_performUserInteractionTask__block_invoke_5;
  block[3] = &unk_1E774A1B8;
  v2 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v4 = v2;
  v5 = *(a1 + 48);
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

+ (id)dropAssetsActionPerformerForAssetCollection:(id)collection dropSession:(id)session
{
  sessionCopy = session;
  collectionCopy = collection;
  v7 = [off_1E7721488 alloc];
  v12 = *off_1E7721F68;
  v13 = xmmword_1A5380D10;
  v14 = 0x7FFFFFFFFFFFFFFFLL;
  v8 = [v7 initWithAssetCollection:collectionCopy keyAssetReference:0 indexPath:&v12];

  v9 = [PXPhotoKitAssetCollectionDropAssetsActionPerformer alloc];
  v10 = [(PXAssetCollectionActionPerformer *)v9 initWithActionType:*off_1E7721D00 assetCollectionReference:v8 parameters:MEMORY[0x1E695E0F8]];
  [(PXAssetCollectionActionPerformer *)v10 setDropSession:sessionCopy];

  return v10;
}

+ (BOOL)canPerformActionType:(id)type onAssetCollectionReference:(id)reference withInputs:(id)inputs
{
  typeCopy = type;
  inputsCopy = inputs;
  assetCollection = [reference assetCollection];
  if (assetCollection)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_3;
    }

    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v29 = objc_opt_class();
    v28 = NSStringFromClass(v29);
    px_descriptionForAssertionMessage = [assetCollection px_descriptionForAssertionMessage];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXPhotoKitAssetCollectionDropAssetsActionPerformer.m" lineNumber:40 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"assetCollectionReference.assetCollection", v28, px_descriptionForAssertionMessage}];
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v27 = objc_opt_class();
    v28 = NSStringFromClass(v27);
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXPhotoKitAssetCollectionDropAssetsActionPerformer.m" lineNumber:40 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"assetCollectionReference.assetCollection", v28}];
  }

LABEL_3:
  if (objc_opt_respondsToSelector())
  {
    dropSession = [inputsCopy dropSession];
  }

  else
  {
    dropSession = 0;
  }

  if ((objc_opt_respondsToSelector() & 1) != 0 && ([inputsCopy memoryAssetsActionFactory], v13 = objc_claimAutoreleasedReturnValue(), v13, v13))
  {
    v14 = 0;
    px_assetsDropMode = 1;
  }

  else
  {
    px_assetsDropMode = [assetCollection px_assetsDropMode];
    v14 = 1;
  }

  if (dropSession)
  {
    v16 = px_assetsDropMode == 0;
  }

  else
  {
    v16 = 1;
  }

  v17 = !v16;
  if ([typeCopy isEqualToString:*off_1E7721D38])
  {
    if (v14)
    {
      v18 = [assetCollection canPerformEditOperation:5];
    }

    else
    {
      v18 = 1;
    }

    if ((v17 & v18) != 1)
    {
      goto LABEL_28;
    }

    dropTargetAssetReference = [inputsCopy dropTargetAssetReference];
    if (dropTargetAssetReference)
    {
      v20 = dropTargetAssetReference;
      dropTargetAssetReference2 = [inputsCopy dropTargetAssetReference];
      asset = [dropTargetAssetReference2 asset];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if ((isKindOfClass & 1) == 0)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v17)
  {
LABEL_28:
    HasValidItems = 0;
    goto LABEL_29;
  }

  if (px_assetsDropMode == 2 && !PXDropSessionHasItemsNeedingImport(dropSession))
  {
    goto LABEL_28;
  }

  HasValidItems = PXDropSessionHasValidItems(dropSession);
LABEL_29:

  return HasValidItems;
}

@end