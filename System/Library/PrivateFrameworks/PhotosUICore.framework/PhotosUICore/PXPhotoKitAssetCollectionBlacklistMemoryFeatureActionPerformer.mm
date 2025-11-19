@interface PXPhotoKitAssetCollectionBlacklistMemoryFeatureActionPerformer
+ (BOOL)canPerformOnAssetCollectionReference:(id)a3 withInputs:(id)a4;
- (id)_memoryFeatureFromMemory:(id)a3 forActionType:(id)a4;
- (unint64_t)_memoryFeatureTypeFromActionType:(id)a3;
- (void)applyBlacklistFeatureWithActionType:(id)a3;
- (void)confirmBlacklistingUserAction:(id)a3 viewSpec:(id)a4;
- (void)performBackgroundTask;
- (void)performUserInteractionTask;
- (void)suggestLessPeopleInMemory:(id)a3;
@end

@implementation PXPhotoKitAssetCollectionBlacklistMemoryFeatureActionPerformer

- (void)applyBlacklistFeatureWithActionType:(id)a3
{
  v16[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(PXAssetCollectionActionPerformer *)self assetCollection];
  v6 = [(PXPhotoKitAssetCollectionBlacklistMemoryFeatureActionPerformer *)self _memoryFeatureTypeFromActionType:v4];

  v7 = [PXRejectMemoriesAction alloc];
  v16[0] = v5;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:1];
  v9 = [(PXMemoriesAction *)v7 initWithMemories:v8];

  [(PXRejectMemoriesAction *)v9 setFeatureType:v6];
  [(PXRejectMemoriesAction *)v9 setRejectReason:1];
  v10 = [(PXActionPerformer *)self undoManager];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __102__PXPhotoKitAssetCollectionBlacklistMemoryFeatureActionPerformer_applyBlacklistFeatureWithActionType___block_invoke;
  v12[3] = &unk_1E77411F0;
  v13 = v5;
  v14 = self;
  v15 = v6;
  v11 = v5;
  [(PXAction *)v9 executeWithUndoManager:v10 completionHandler:v12];
}

void __102__PXPhotoKitAssetCollectionBlacklistMemoryFeatureActionPerformer_applyBlacklistFeatureWithActionType___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v14[2] = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (a2)
  {
    v6 = *MEMORY[0x1E6991E08];
    v14[0] = *(a1 + 32);
    v7 = *MEMORY[0x1E6991E20];
    v13[0] = v6;
    v13[1] = v7;
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    v14[1] = v9;
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:2];

    [MEMORY[0x1E6991F28] sendEvent:@"com.apple.photos.CPAnalytics.assetCollectionBlocked" withPayload:v10];
    v11 = MEMORY[0x1E6991F28];
    v12 = PXAnalyticsEventFromMemoryFeatureType(*(a1 + 48));
    [v11 sendEvent:v12 withPayload:v10];
  }

  [*(a1 + 40) completeBackgroundTaskWithSuccess:a2 error:v5];
}

- (void)performBackgroundTask
{
  if ([(PXPhotoKitAssetCollectionBlacklistMemoryFeatureActionPerformer *)self isBlockingMemoryFeature])
  {
    v3 = [(PXActionPerformer *)self actionType];
    [(PXPhotoKitAssetCollectionBlacklistMemoryFeatureActionPerformer *)self applyBlacklistFeatureWithActionType:v3];
  }
}

- (id)_memoryFeatureFromMemory:(id)a3 forActionType:(id)a4
{
  v21 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [(PXPhotoKitAssetCollectionBlacklistMemoryFeatureActionPerformer *)self _memoryFeatureTypeFromActionType:a4];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v8 = [v6 blockableFeatures];
  v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v17;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v16 + 1) + 8 * i);
        if (([v13 type] & v7) != 0)
        {
          v14 = v13;
          goto LABEL_11;
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  v14 = 0;
LABEL_11:

  return v14;
}

- (unint64_t)_memoryFeatureTypeFromActionType:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:*off_1E7721C68] & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", *off_1E7721C50) & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", *off_1E7721C70))
  {
    v4 = 1008;
  }

  else if ([v3 isEqualToString:*off_1E7721C60])
  {
    v4 = 520192;
  }

  else if ([v3 isEqualToString:*off_1E7721C58])
  {
    v4 = 3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)suggestLessPeopleInMemory:(id)a3
{
  v32[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [PXSuggestLessPeopleHelper alloc];
  v6 = [(PXActionPerformer *)self undoManager];
  v7 = [(PXSuggestLessPeopleHelper *)v5 initWithUndoManager:v6];
  [(PXPhotoKitAssetCollectionBlacklistMemoryFeatureActionPerformer *)self setSuggestLessPeopleHelper:v7];

  v8 = [(PXPhotoKitAssetCollectionBlacklistMemoryFeatureActionPerformer *)self suggestLessPeopleHelper];
  [v8 setDelegate:self];

  v9 = [v4 photoLibrary];
  v10 = [v9 librarySpecificFetchOptions];

  v11 = [MEMORY[0x1E6978830] px_defaultDetectionTypes];
  [v10 setIncludedDetectionTypes:v11];

  v32[0] = *MEMORY[0x1E6978F38];
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v32 count:1];
  [v10 setFetchPropertySets:v12];

  [v10 setPersonContext:3];
  v29 = [MEMORY[0x1E6978980] fetchPersonsForAssetCollection:v4 options:v10];
  v13 = [v29 fetchedObjects];
  v14 = [PXPeopleWidgetUtilities verifiedPersonsFromMergeCandidatesForPersons:v13];

  v15 = [v14 allObjects];
  v16 = [v4 blockableFeatures];
  v17 = [PXPeopleUtilities sortedPersons:v15 byPersonMemoryFeatures:v16];

  [v10 setFetchLimit:0];
  v18 = objc_alloc(MEMORY[0x1E69788E0]);
  v19 = [v4 photoLibrary];
  v20 = [MEMORY[0x1E6978980] fetchType];
  v21 = MEMORY[0x1E695DFD8];
  v22 = [v10 fetchPropertySets];
  v23 = [v21 setWithArray:v22];
  v24 = [v18 initWithObjects:v17 photoLibrary:v19 fetchType:v20 fetchPropertySets:v23 identifier:0 registerIfNeeded:0];

  v25 = [(PXActionPerformer *)self undoManager];
  [v25 beginUndoGrouping];

  v26 = [(PXPhotoKitAssetCollectionBlacklistMemoryFeatureActionPerformer *)self suggestLessPeopleHelper];
  v27 = [v24 fetchedObjects];
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __92__PXPhotoKitAssetCollectionBlacklistMemoryFeatureActionPerformer_suggestLessPeopleInMemory___block_invoke;
  v30[3] = &unk_1E774B730;
  v30[4] = self;
  v31 = v4;
  v28 = v4;
  [v26 suggestLessPeople:v27 completionHandler:v30];
}

void __92__PXPhotoKitAssetCollectionBlacklistMemoryFeatureActionPerformer_suggestLessPeopleInMemory___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (!v5 && (a2 & 1) != 0)
  {
    v6 = [PXRejectMemoriesAction alloc];
    v12 = *(a1 + 40);
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v12 count:1];
    v8 = [(PXMemoriesAction *)v6 initWithMemories:v7];

    *(a1 + 40);
    v9 = v8;
    px_dispatch_on_main_queue();
  }

  v10 = PLUIGetLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v14 = v5;
    _os_log_impl(&dword_1A3C1C000, v10, OS_LOG_TYPE_ERROR, "Could not suggest this person less: %@", buf, 0xCu);
  }

  [*(a1 + 32) completeUserInteractionTaskWithSuccess:a2 error:v5];
  v11 = [*(a1 + 32) undoManager];
  [v11 endUndoGrouping];
}

void __92__PXPhotoKitAssetCollectionBlacklistMemoryFeatureActionPerformer_suggestLessPeopleInMemory___block_invoke_821(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) undoManager];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __92__PXPhotoKitAssetCollectionBlacklistMemoryFeatureActionPerformer_suggestLessPeopleInMemory___block_invoke_2;
  v6[3] = &unk_1E774B730;
  v4 = *(a1 + 48);
  v5 = *(a1 + 40);
  v7 = v4;
  v8 = v5;
  [v2 executeWithUndoManager:v3 completionHandler:v6];
}

void __92__PXPhotoKitAssetCollectionBlacklistMemoryFeatureActionPerformer_suggestLessPeopleInMemory___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = PLMemoriesGetLog();
  v7 = v6;
  if (a2)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 32);
      v15 = 138412290;
      v16 = v8;
      v9 = "Did reject memory: %@";
      v10 = v7;
      v11 = OS_LOG_TYPE_DEFAULT;
      v12 = 12;
LABEL_6:
      _os_log_impl(&dword_1A3C1C000, v10, v11, v9, &v15, v12);
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v13 = *(a1 + 32);
    v15 = 138412546;
    v16 = v13;
    v17 = 2112;
    v18 = v5;
    v9 = "Failed to reject memory: %@, error: %@";
    v10 = v7;
    v11 = OS_LOG_TYPE_ERROR;
    v12 = 22;
    goto LABEL_6;
  }

  [*(a1 + 40) completeUserInteractionTaskWithSuccess:a2 error:v5];
  v14 = [*(a1 + 40) undoManager];
  [v14 endUndoGrouping];
}

- (void)performUserInteractionTask
{
  v6 = [(PXActionPerformer *)self actionType];
  v3 = [(PXAssetCollectionActionPerformer *)self assetCollection];
  v4 = [(PXPhotoKitAssetCollectionBlacklistMemoryFeatureActionPerformer *)self _memoryFeatureFromMemory:v3 forActionType:v6];
  if ([v6 isEqualToString:*off_1E7721C58])
  {
    [(PXPhotoKitAssetCollectionBlacklistMemoryFeatureActionPerformer *)self suggestLessPeopleInMemory:v3];
  }

  else
  {
    v5 = [PXMemoriesBlacklistUtilities accessoryUIViewSpecForBlacklistedFeature:v4];
    [(PXPhotoKitAssetCollectionBlacklistMemoryFeatureActionPerformer *)self confirmBlacklistingUserAction:v6 viewSpec:v5];
  }
}

- (void)confirmBlacklistingUserAction:(id)a3 viewSpec:(id)a4
{
  v6 = a4;
  v7 = a3;
  [(PXPhotoKitAssetCollectionBlacklistMemoryFeatureActionPerformer *)self setIsBlockingMemoryFeature:1];
  [(PXPhotoKitAssetCollectionBlacklistMemoryFeatureActionPerformer *)self setUserResponse:v7];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __105__PXPhotoKitAssetCollectionBlacklistMemoryFeatureActionPerformer_confirmBlacklistingUserAction_viewSpec___block_invoke;
  v8[3] = &unk_1E774B308;
  v8[4] = self;
  [(PXPhotoKitAssetCollectionActionPerformer *)self _promptBlacklistingConfirmatonForUserAction:v7 viewSpec:v6 completionHandler:v8];
}

void __105__PXPhotoKitAssetCollectionBlacklistMemoryFeatureActionPerformer_confirmBlacklistingUserAction_viewSpec___block_invoke(uint64_t a1, int a2)
{
  v2 = *(a1 + 32);
  if (a2)
  {
    v3 = *(a1 + 32);

    [v3 completeUserInteractionTaskWithSuccess:1 error:0];
  }

  else
  {
    v4 = [MEMORY[0x1E696ABC0] px_genericErrorWithDebugDescription:@"User cancelled confirmation alert"];
    [v2 completeUserInteractionTaskWithSuccess:0 error:v4];
  }
}

+ (BOOL)canPerformOnAssetCollectionReference:(id)a3 withInputs:(id)a4
{
  v4 = [a3 assetCollection];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

@end