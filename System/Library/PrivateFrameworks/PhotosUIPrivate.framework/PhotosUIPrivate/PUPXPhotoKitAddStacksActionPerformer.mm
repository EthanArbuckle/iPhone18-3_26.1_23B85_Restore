@interface PUPXPhotoKitAddStacksActionPerformer
+ (BOOL)canPerformWithSelectionSnapshot:(id)snapshot person:(id)person socialGroup:(id)group;
- (void)performUserInteractionTask;
@end

@implementation PUPXPhotoKitAddStacksActionPerformer

- (void)performUserInteractionTask
{
  v12 = *MEMORY[0x1E69E9840];
  assets = [(PXPhotoKitAssetActionPerformer *)self assets];
  if ([assets count] < 2)
  {
    [(PXActionPerformer *)self completeUserInteractionTaskWithSuccess:0 error:0];
  }

  else
  {
    v4 = PXMap();
    v5 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E69BFF48] code:45998 userInfo:0];
    v6 = PLUIGetLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = [v4 componentsJoinedByString:{@", "}];
      v8 = 138543618;
      v9 = v5;
      v10 = 2114;
      v11 = v7;
      _os_log_impl(&dword_1B36F3000, v6, OS_LOG_TYPE_INFO, "Failed to create stack from assets: %{public}@ assetUUIDs: %{public}@", &v8, 0x16u);
    }

    [(PXActionPerformer *)self completeUserInteractionTaskWithSuccess:0 error:v5];
  }
}

+ (BOOL)canPerformWithSelectionSnapshot:(id)snapshot person:(id)person socialGroup:(id)group
{
  snapshotCopy = snapshot;
  mEMORY[0x1E69C3970] = [MEMORY[0x1E69C3970] sharedInstance];
  canShowInternalUI = [mEMORY[0x1E69C3970] canShowInternalUI];

  if (canShowInternalUI && ([MEMORY[0x1E69A2900] sharedInstance], v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "enableStacksReviewUI"), v8, v9))
  {
    selectedIndexPaths = [snapshotCopy selectedIndexPaths];
    v11 = [selectedIndexPaths count] > 1;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

@end