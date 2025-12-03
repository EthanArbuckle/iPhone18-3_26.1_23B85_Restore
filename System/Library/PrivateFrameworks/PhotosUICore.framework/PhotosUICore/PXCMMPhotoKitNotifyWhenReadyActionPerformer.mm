@interface PXCMMPhotoKitNotifyWhenReadyActionPerformer
- (void)performBackgroundTask;
@end

@implementation PXCMMPhotoKitNotifyWhenReadyActionPerformer

- (void)performBackgroundTask
{
  session = [(PXCMMActionPerformer *)self session];
  dataSourceManager = [session dataSourceManager];
  dataSource = [dataSourceManager dataSource];

  if ([dataSource numberOfSections] >= 1)
  {
    *buf = [dataSource identifier];
    v17 = xmmword_1A5380D10;
    v18 = 0x7FFFFFFFFFFFFFFFLL;
    v7 = [dataSource assetCollectionAtSectionIndexPath:buf];
    if (v7)
    {
      v8 = v7;
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
        v12 = objc_opt_class();
        v13 = NSStringFromClass(v12);
        px_descriptionForAssertionMessage = [v8 px_descriptionForAssertionMessage];
        [currentHandler handleFailureInMethod:a2 object:self file:@"PXCMMPhotoKitNotifyWhenReadyActionPerformer.m" lineNumber:28 description:{@"%@ should be nil or an instance inheriting from %@, but it is %@", @"assetCollection", v13, px_descriptionForAssertionMessage}];
      }

      v9 = [dataSource numberOfItemsInSection:0];

      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __68__PXCMMPhotoKitNotifyWhenReadyActionPerformer_performBackgroundTask__block_invoke;
      v15[3] = &unk_1E774C5C0;
      v15[4] = self;
      PXMomentShareRequestNotificationOnUploadCompletion(v8, v9, v15);

      goto LABEL_10;
    }

    [dataSource numberOfItemsInSection:0];
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