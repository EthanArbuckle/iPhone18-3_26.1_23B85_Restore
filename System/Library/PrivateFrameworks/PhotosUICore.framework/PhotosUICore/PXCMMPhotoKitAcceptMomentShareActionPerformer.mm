@interface PXCMMPhotoKitAcceptMomentShareActionPerformer
- (BOOL)canPerformActionWithSession:(id)session;
- (void)performBackgroundTask;
@end

@implementation PXCMMPhotoKitAcceptMomentShareActionPerformer

- (void)performBackgroundTask
{
  session = [(PXCMMActionPerformer *)self session];
  momentShare = [session momentShare];

  if (!momentShare)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXCMMPhotoKitAcceptMomentShareActionPerformer.m" lineNumber:41 description:{@"Invalid parameter not satisfying: %@", @"momentShare"}];
  }

  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __70__PXCMMPhotoKitAcceptMomentShareActionPerformer_performBackgroundTask__block_invoke;
  v7[3] = &unk_1E774C5C0;
  v7[4] = self;
  PXMomentShareAcceptIfNeeded(momentShare, v7);
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
      v6 = [momentShare status] == 2;
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