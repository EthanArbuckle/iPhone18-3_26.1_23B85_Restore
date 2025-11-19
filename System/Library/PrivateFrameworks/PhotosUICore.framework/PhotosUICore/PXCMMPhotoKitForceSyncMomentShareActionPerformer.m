@interface PXCMMPhotoKitForceSyncMomentShareActionPerformer
- (BOOL)canPerformActionWithSession:(id)a3;
- (void)performBackgroundTask;
@end

@implementation PXCMMPhotoKitForceSyncMomentShareActionPerformer

- (void)performBackgroundTask
{
  v4 = [(PXCMMActionPerformer *)self session];
  v5 = [v4 momentShare];

  if (!v5)
  {
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    [v6 handleFailureInMethod:a2 object:self file:@"PXCMMPhotoKitForceSyncMomentShareActionPerformer.m" lineNumber:39 description:{@"Invalid parameter not satisfying: %@", @"momentShare"}];
  }

  if ([v5 status] != 1 && objc_msgSend(v5, "status") != 3)
  {
    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    [v7 handleFailureInMethod:a2 object:self file:@"PXCMMPhotoKitForceSyncMomentShareActionPerformer.m" lineNumber:40 description:{@"Invalid parameter not satisfying: %@", @"momentShare.status == PHShareStatusOwned || momentShare.status == PHShareStatusAccepted"}];
  }

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __73__PXCMMPhotoKitForceSyncMomentShareActionPerformer_performBackgroundTask__block_invoke;
  v8[3] = &unk_1E774BE98;
  v8[4] = self;
  [v5 forceSyncMomentShareWithCompletion:v8];
}

- (BOOL)canPerformActionWithSession:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 momentShare];
    v5 = v4;
    if (v4)
    {
      v6 = [v4 status] == 1 || objc_msgSend(v5, "status") == 3;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end