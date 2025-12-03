@interface PUPXPhotoKitRemoveStacksActionPerformer
+ (BOOL)canPerformWithSelectionSnapshot:(id)snapshot person:(id)person socialGroup:(id)group;
- (void)performUserInteractionTask;
@end

@implementation PUPXPhotoKitRemoveStacksActionPerformer

- (void)performUserInteractionTask
{
  v13 = *MEMORY[0x1E69E9840];
  selectionSnapshot = [(PXAssetActionPerformer *)self selectionSnapshot];
  allItemsEnumerator = [selectionSnapshot allItemsEnumerator];

  if ([allItemsEnumerator count])
  {
    v5 = PXMap();
    v6 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E69BFF48] code:45998 userInfo:0];
    v7 = PLUIGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = [v5 componentsJoinedByString:{@", "}];
      v9 = 138543618;
      v10 = v6;
      v11 = 2114;
      v12 = v8;
      _os_log_impl(&dword_1B36F3000, v7, OS_LOG_TYPE_INFO, "Failed to remove stacks from assets: %{public}@ assetUUIDs: %{public}@", &v9, 0x16u);
    }

    [(PXActionPerformer *)self completeUserInteractionTaskWithSuccess:0 error:v6];
  }

  else
  {
    [(PXActionPerformer *)self completeUserInteractionTaskWithSuccess:0 error:0];
  }
}

+ (BOOL)canPerformWithSelectionSnapshot:(id)snapshot person:(id)person socialGroup:(id)group
{
  snapshotCopy = snapshot;
  personCopy = person;
  groupCopy = group;
  mEMORY[0x1E69C3970] = [MEMORY[0x1E69C3970] sharedInstance];
  canShowInternalUI = [mEMORY[0x1E69C3970] canShowInternalUI];

  if (canShowInternalUI && ([MEMORY[0x1E69A2900] sharedInstance], v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v12, "enableStacksReviewUI"), v12, v13) && (objc_msgSend(snapshotCopy, "selectedIndexPaths"), v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v14, "count"), v14, v15 >= 1))
  {
    v19 = 0;
    v20 = &v19;
    v21 = 0x2020000000;
    v22 = 0;
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __94__PUPXPhotoKitRemoveStacksActionPerformer_canPerformWithSelectionSnapshot_person_socialGroup___block_invoke;
    v18[3] = &unk_1E7B7A900;
    v18[4] = &v19;
    [snapshotCopy enumerateSelectedObjectsUsingBlock:v18];
    v16 = *(v20 + 24);
    _Block_object_dispose(&v19, 8);
  }

  else
  {
    v16 = 0;
  }

  return v16 & 1;
}

void __94__PUPXPhotoKitRemoveStacksActionPerformer_canPerformWithSelectionSnapshot_person_socialGroup___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v8 = a2;
  if (objc_opt_class() && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v5 = v8;
  }

  else
  {
    v5 = 0;
  }

  v6 = [v5 burstIdentifier];

  if (v6)
  {
    v7 = [v5 pl_managedAsset];
    if ([v7 avalancheKind] == 2)
    {
      *(*(*(a1 + 32) + 8) + 24) = 1;
      *a3 = 1;
    }
  }
}

@end