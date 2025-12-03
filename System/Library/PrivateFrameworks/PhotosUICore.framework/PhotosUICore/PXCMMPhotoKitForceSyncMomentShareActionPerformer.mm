@interface PXCMMPhotoKitForceSyncMomentShareActionPerformer
- (BOOL)canPerformActionWithSession:(id)session;
- (void)performBackgroundTask;
@end

@implementation PXCMMPhotoKitForceSyncMomentShareActionPerformer

- (void)performBackgroundTask
{
  session = [(PXCMMActionPerformer *)self session];
  momentShare = [session momentShare];

  if (!momentShare)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXCMMPhotoKitForceSyncMomentShareActionPerformer.m" lineNumber:39 description:{@"Invalid parameter not satisfying: %@", @"momentShare"}];
  }

  if ([momentShare status] != 1 && objc_msgSend(momentShare, "status") != 3)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"PXCMMPhotoKitForceSyncMomentShareActionPerformer.m" lineNumber:40 description:{@"Invalid parameter not satisfying: %@", @"momentShare.status == PHShareStatusOwned || momentShare.status == PHShareStatusAccepted"}];
  }

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __73__PXCMMPhotoKitForceSyncMomentShareActionPerformer_performBackgroundTask__block_invoke;
  v8[3] = &unk_1E774BE98;
  v8[4] = self;
  [momentShare forceSyncMomentShareWithCompletion:v8];
}

- (BOOL)canPerformActionWithSession:(id)session
{
  sessionCopy = session;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    momentShare = [sessionCopy momentShare];
    v5 = momentShare;
    if (momentShare)
    {
      v6 = [momentShare status] == 1 || objc_msgSend(v5, "status") == 3;
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