@interface PXPhotoKitAssetCollectionBlacklistMemoryActionPerformer
+ (BOOL)canPerformOnAssetCollectionReference:(id)reference withInputs:(id)inputs;
- (BOOL)_didUserConfirmDeleteOfMemory;
- (BOOL)_doesUserActionRequireDisambiguation:(id)disambiguation outResolvedAction:(id *)action outAlertActionsForDisambiguation:(id *)forDisambiguation alertActionHandler:(id)handler;
- (void)performBackgroundTask;
- (void)performUserInteractionTask;
@end

@implementation PXPhotoKitAssetCollectionBlacklistMemoryActionPerformer

- (void)performBackgroundTask
{
  v30 = *MEMORY[0x1E69E9840];
  if ([(PXPhotoKitAssetCollectionBlacklistMemoryActionPerformer *)self _didUserConfirmDeleteOfMemory])
  {
    assetCollection = [(PXAssetCollectionActionPerformer *)self assetCollection];
    if (assetCollection)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
LABEL_4:
        v5 = +[PXMemoriesRelatedSettings sharedInstance];
        deleteBehavior = [v5 deleteBehavior];

        v7 = PLMemoriesGetLog();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          v8 = @"delete";
          if (deleteBehavior != 1)
          {
            v8 = 0;
          }

          if (!deleteBehavior)
          {
            v8 = @"reject";
          }

          v9 = v8;
          *buf = 138412546;
          v27 = v9;
          v28 = 2112;
          v29 = assetCollection;
          _os_log_impl(&dword_1A3C1C000, v7, OS_LOG_TYPE_DEFAULT, "Will %@ memory: %@", buf, 0x16u);
        }

        if (deleteBehavior == 1)
        {
          v12 = [[PXDeleteCollectionsAction alloc] initWithCollection:assetCollection];
        }

        else if (deleteBehavior)
        {
          v12 = 0;
        }

        else
        {
          v10 = [PXRejectMemoriesAction alloc];
          v25 = assetCollection;
          v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v25 count:1];
          v12 = [(PXMemoriesAction *)v10 initWithMemories:v11];

          [(PXDeleteCollectionsAction *)v12 setRejectReason:1];
        }

        undoManager = [(PXActionPerformer *)self undoManager];
        v21[0] = MEMORY[0x1E69E9820];
        v21[1] = 3221225472;
        v21[2] = __80__PXPhotoKitAssetCollectionBlacklistMemoryActionPerformer_performBackgroundTask__block_invoke;
        v21[3] = &unk_1E77411F0;
        v22 = assetCollection;
        selfCopy = self;
        v24 = deleteBehavior;
        v14 = assetCollection;
        [(PXAction *)v12 executeWithUndoManager:undoManager completionHandler:v21];

        return;
      }

      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v18 = objc_opt_class();
      v17 = NSStringFromClass(v18);
      px_descriptionForAssertionMessage = [assetCollection px_descriptionForAssertionMessage];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PXPhotoKitAssetCollectionActionManager.m" lineNumber:1382 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"self.assetCollection", v17, px_descriptionForAssertionMessage}];
    }

    else
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v16 = objc_opt_class();
      v17 = NSStringFromClass(v16);
      [currentHandler handleFailureInMethod:a2 object:self file:@"PXPhotoKitAssetCollectionActionManager.m" lineNumber:1382 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"self.assetCollection", v17}];
    }

    goto LABEL_4;
  }

  if ([(PXPhotoKitAssetCollectionBlacklistMemoryFeatureActionPerformer *)self isBlockingMemoryFeature])
  {
    userResponse = [(PXPhotoKitAssetCollectionBlacklistMemoryFeatureActionPerformer *)self userResponse];
    [(PXPhotoKitAssetCollectionBlacklistMemoryFeatureActionPerformer *)self applyBlacklistFeatureWithActionType:?];
  }

  else
  {

    [(PXActionPerformer *)self completeBackgroundTaskWithSuccess:0 error:0];
  }
}

void __80__PXPhotoKitAssetCollectionBlacklistMemoryActionPerformer_performBackgroundTask__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v40[2] = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (a2)
  {
    v6 = MEMORY[0x1E6991F28];
    v7 = *MEMORY[0x1E6991E08];
    v40[0] = *(a1 + 32);
    v8 = *MEMORY[0x1E6991E20];
    v39[0] = v7;
    v39[1] = v8;
    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    v40[1] = v10;
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v40 forKeys:v39 count:2];
    [v6 sendEvent:@"com.apple.photos.CPAnalytics.assetCollectionBlocked" withPayload:v11];

    v12 = MEMORY[0x1E6991F28];
    v13 = *(a1 + 32);
    v37[1] = v8;
    v38[0] = v13;
    v37[0] = v7;
    v14 = objc_opt_class();
    v15 = NSStringFromClass(v14);
    v38[1] = v15;
    v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v38 forKeys:v37 count:2];
    [v12 sendEvent:@"com.apple.photos.CPAnalytics.userFeedback.negative.memoryFeature.none" withPayload:v16];

    v17 = PLMemoriesGetLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = *(a1 + 48);
      v19 = @"delete";
      if (v18 != 1)
      {
        v19 = 0;
      }

      if (v18)
      {
        v20 = v19;
      }

      else
      {
        v20 = @"reject";
      }

      v21 = v20;
      v22 = *(a1 + 32);
      v31 = 138412546;
      v32 = v21;
      v33 = 2112;
      v34 = v22;
      v23 = "Did %@ memory: %@";
      v24 = v17;
      v25 = OS_LOG_TYPE_DEFAULT;
      v26 = 22;
LABEL_16:
      _os_log_impl(&dword_1A3C1C000, v24, v25, v23, &v31, v26);
    }
  }

  else
  {
    v17 = PLMemoriesGetLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v27 = *(a1 + 48);
      v28 = @"delete";
      if (v27 != 1)
      {
        v28 = 0;
      }

      if (v27)
      {
        v29 = v28;
      }

      else
      {
        v29 = @"reject";
      }

      v21 = v29;
      v30 = *(a1 + 32);
      v31 = 138412802;
      v32 = v21;
      v33 = 2112;
      v34 = v30;
      v35 = 2112;
      v36 = v5;
      v23 = "Failed to %@ memory: %@, error: %@";
      v24 = v17;
      v25 = OS_LOG_TYPE_ERROR;
      v26 = 32;
      goto LABEL_16;
    }
  }

  [*(a1 + 40) completeBackgroundTaskWithSuccess:a2 error:v5];
}

- (BOOL)_didUserConfirmDeleteOfMemory
{
  userResponse = [(PXPhotoKitAssetCollectionBlacklistMemoryFeatureActionPerformer *)self userResponse];
  v3 = [userResponse isEqualToString:*off_1E7721C48];

  return v3;
}

- (void)performUserInteractionTask
{
  assetCollection = [(PXAssetCollectionActionPerformer *)self assetCollection];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __85__PXPhotoKitAssetCollectionBlacklistMemoryActionPerformer_performUserInteractionTask__block_invoke;
  aBlock[3] = &unk_1E774C648;
  aBlock[4] = self;
  v4 = _Block_copy(aBlock);
  actionType = [(PXActionPerformer *)self actionType];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __85__PXPhotoKitAssetCollectionBlacklistMemoryActionPerformer_performUserInteractionTask__block_invoke_2;
  v21[3] = &unk_1E77308D8;
  v21[4] = self;
  v6 = assetCollection;
  v22 = v6;
  v7 = actionType;
  v23 = v7;
  v8 = v4;
  v24 = v8;
  v9 = _Block_copy(v21);
  v19 = 0;
  v20 = 0;
  v10 = [(PXPhotoKitAssetCollectionBlacklistMemoryActionPerformer *)self _doesUserActionRequireDisambiguation:v7 outResolvedAction:&v20 outAlertActionsForDisambiguation:&v19 alertActionHandler:v9];
  v11 = v20;
  v12 = v19;
  if (v10)
  {
    v13 = [MEMORY[0x1E69DC650] alertControllerWithTitle:0 message:0 preferredStyle:0];
    [v13 _setActions:v12];
    v14 = MEMORY[0x1E69DC648];
    v15 = PXLocalizedStringFromTable(@"PXBlockConfirmationDialogButtonTitle_Cancel", @"PhotosUICore");
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __85__PXPhotoKitAssetCollectionBlacklistMemoryActionPerformer_performUserInteractionTask__block_invoke_3;
    v17[3] = &unk_1E7748000;
    v18 = v8;
    v16 = [v14 actionWithTitle:v15 style:1 handler:v17];
    [v13 addAction:v16];

    [(PXActionPerformer *)self presentViewController:v13];
  }

  else
  {
    v9[2](v9, v11);
  }
}

void __85__PXPhotoKitAssetCollectionBlacklistMemoryActionPerformer_performUserInteractionTask__block_invoke_2(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [*(a1 + 32) _memoryFeatureFromMemory:*(a1 + 40) forActionType:v5];
  if ([v5 isEqualToString:*off_1E7721C58])
  {
    [*(a1 + 32) setIsBlockingMemoryFeature:1];
    [*(a1 + 32) setUserResponse:*(a1 + 48)];
    [*(a1 + 32) suggestLessPeopleInMemory:*(a1 + 40)];
  }

  else if (v5)
  {
    v4 = [PXMemoriesBlacklistUtilities accessoryUIViewSpecForBlacklistedFeature:v3];
    [*(a1 + 32) confirmBlacklistingUserAction:v5 viewSpec:v4];
  }

  else
  {
    (*(*(a1 + 56) + 16))();
  }
}

- (BOOL)_doesUserActionRequireDisambiguation:(id)disambiguation outResolvedAction:(id *)action outAlertActionsForDisambiguation:(id *)forDisambiguation alertActionHandler:(id)handler
{
  v21[5] = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  v10 = *off_1E7721C70;
  v21[0] = *off_1E7721C68;
  v21[1] = v10;
  v11 = *off_1E7721C60;
  v21[2] = *off_1E7721C50;
  v21[3] = v11;
  v21[4] = *off_1E7721C58;
  v12 = MEMORY[0x1E695DEC8];
  disambiguationCopy = disambiguation;
  v14 = [v12 arrayWithObjects:v21 count:5];
  LOBYTE(v12) = [v14 containsObject:disambiguationCopy];

  if (v12)
  {
    v15 = 0;
  }

  else
  {
    assetCollection = [(PXAssetCollectionActionPerformer *)self assetCollection];
    px_blockableFeatureActions = [assetCollection px_blockableFeatureActions];
    v18 = [px_blockableFeatureActions count];
    v15 = v18 > 1;
    if (v18 >= 2)
    {
      handlerCopy;
      PXMap();
    }

    lastObject = [px_blockableFeatureActions lastObject];
    *action = [lastObject actionType];
  }

  return v15;
}

id __166__PXPhotoKitAssetCollectionBlacklistMemoryActionPerformer__doesUserActionRequireDisambiguation_outResolvedAction_outAlertActionsForDisambiguation_alertActionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = MEMORY[0x1E69DC648];
  v5 = [v3 localizedTitle];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __166__PXPhotoKitAssetCollectionBlacklistMemoryActionPerformer__doesUserActionRequireDisambiguation_outResolvedAction_outAlertActionsForDisambiguation_alertActionHandler___block_invoke_2;
  v10[3] = &unk_1E7741C90;
  v6 = *(a1 + 32);
  v11 = v3;
  v12 = v6;
  v7 = v3;
  v8 = [v4 actionWithTitle:v5 style:0 handler:v10];

  return v8;
}

void __166__PXPhotoKitAssetCollectionBlacklistMemoryActionPerformer__doesUserActionRequireDisambiguation_outResolvedAction_outAlertActionsForDisambiguation_alertActionHandler___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) actionType];
  (*(v1 + 16))(v1, v2);
}

+ (BOOL)canPerformOnAssetCollectionReference:(id)reference withInputs:(id)inputs
{
  assetCollection = [reference assetCollection];
  if (![assetCollection px_isMemory])
  {
    px_canPerformFeatureLessAction = 0;
    goto LABEL_6;
  }

  v7 = assetCollection;
  if (!v7)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v11 = objc_opt_class();
    v12 = NSStringFromClass(v11);
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXPhotoKitAssetCollectionActionManager.m" lineNumber:1276 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"assetCollection", v12}];
LABEL_9:

    goto LABEL_4;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v13 = objc_opt_class();
    v12 = NSStringFromClass(v13);
    px_descriptionForAssertionMessage = [v7 px_descriptionForAssertionMessage];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXPhotoKitAssetCollectionActionManager.m" lineNumber:1276 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"assetCollection", v12, px_descriptionForAssertionMessage}];

    goto LABEL_9;
  }

LABEL_4:
  px_canPerformFeatureLessAction = [v7 px_canPerformFeatureLessAction];

LABEL_6:
  return px_canPerformFeatureLessAction;
}

@end