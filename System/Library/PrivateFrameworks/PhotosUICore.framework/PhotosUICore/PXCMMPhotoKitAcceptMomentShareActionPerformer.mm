@interface PXCMMPhotoKitAcceptMomentShareActionPerformer
- (BOOL)canPerformActionWithSession:(id)a3;
- (void)performBackgroundTask;
@end

@implementation PXCMMPhotoKitAcceptMomentShareActionPerformer

- (void)performBackgroundTask
{
  v4 = [(PXCMMActionPerformer *)self session];
  v5 = [v4 momentShare];

  if (!v5)
  {
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    [v6 handleFailureInMethod:a2 object:self file:@"PXCMMPhotoKitAcceptMomentShareActionPerformer.m" lineNumber:41 description:{@"Invalid parameter not satisfying: %@", @"momentShare"}];
  }

  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __70__PXCMMPhotoKitAcceptMomentShareActionPerformer_performBackgroundTask__block_invoke;
  v7[3] = &unk_1E774C5C0;
  v7[4] = self;
  PXMomentShareAcceptIfNeeded(v5, v7);
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
      v6 = [v4 status] == 2;
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