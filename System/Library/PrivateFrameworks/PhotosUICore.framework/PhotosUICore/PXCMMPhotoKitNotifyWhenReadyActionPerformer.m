@interface PXCMMPhotoKitNotifyWhenReadyActionPerformer
- (void)performBackgroundTask;
@end

@implementation PXCMMPhotoKitNotifyWhenReadyActionPerformer

- (void)performBackgroundTask
{
  v4 = [(PXCMMActionPerformer *)self session];
  v5 = [v4 dataSourceManager];
  v6 = [v5 dataSource];

  if ([v6 numberOfSections] >= 1)
  {
    *buf = [v6 identifier];
    v17 = xmmword_1A5380D10;
    v18 = 0x7FFFFFFFFFFFFFFFLL;
    v7 = [v6 assetCollectionAtSectionIndexPath:buf];
    if (v7)
    {
      v8 = v7;
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v11 = [MEMORY[0x1E696AAA8] currentHandler];
        v12 = objc_opt_class();
        v13 = NSStringFromClass(v12);
        v14 = [v8 px_descriptionForAssertionMessage];
        [v11 handleFailureInMethod:a2 object:self file:@"PXCMMPhotoKitNotifyWhenReadyActionPerformer.m" lineNumber:28 description:{@"%@ should be nil or an instance inheriting from %@, but it is %@", @"assetCollection", v13, v14}];
      }

      v9 = [v6 numberOfItemsInSection:0];

      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __68__PXCMMPhotoKitNotifyWhenReadyActionPerformer_performBackgroundTask__block_invoke;
      v15[3] = &unk_1E774C5C0;
      v15[4] = self;
      PXMomentShareRequestNotificationOnUploadCompletion(v8, v9, v15);

      goto LABEL_10;
    }

    [v6 numberOfItemsInSection:0];
  }

  v10 = PLSharingGetLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1A3C1C000, v10, OS_LOG_TYPE_DEFAULT, "Found no moment share to notify on upload completion", buf, 2u);
  }

  [(PXActionPerformer *)self completeBackgroundTaskWithSuccess:1 error:0];
LABEL_10:
}

@end