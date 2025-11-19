@interface PXPhotoKitMergeDuplicatesActionPerformer
+ (BOOL)canPerformWithActionManager:(id)a3 error:(id *)a4;
+ (BOOL)shouldEnableWithActionManager:(id)a3;
+ (id)createBarButtonItemWithTarget:(id)a3 action:(SEL)a4 actionManager:(id)a5;
+ (id)localizedTitleForUseCase:(unint64_t)a3 actionManager:(id)a4;
- (void)_clearSelection;
- (void)_presentDuplicatesTypeDialogWithIdenticalCount:(int64_t)a3 totalCount:(int64_t)a4 completion:(id)a5;
- (void)_presentGenericFailureAlertAndCompleteBackgroundTaskWithError:(id)a3;
- (void)completeBackgroundTaskWithSuccess:(BOOL)a3 error:(id)a4;
- (void)completeUserInteractionTaskWithSuccess:(BOOL)a3 error:(id)a4;
- (void)performBackgroundTask;
- (void)performMergeWithSelection:(id)a3 localizedMessage:(id)a4 onlyIdenticalItemsSelected:(BOOL)a5;
- (void)performUserInteractionTask;
@end

@implementation PXPhotoKitMergeDuplicatesActionPerformer

- (void)_clearSelection
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = PLDuplicateDetectionGetLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138543362;
    v6 = self;
    _os_log_impl(&dword_1A3C1C000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ Will clear selection", &v5, 0xCu);
  }

  v4 = [(PXAssetActionPerformer *)self selectionManager];
  [v4 performChanges:&__block_literal_global_30952];
}

- (void)_presentGenericFailureAlertAndCompleteBackgroundTaskWithError:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = PLDuplicateDetectionGetLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v21 = self;
    _os_log_impl(&dword_1A3C1C000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ Present Server Side Disabled Alert", buf, 0xCu);
  }

  v6 = PXLocalizedStringFromTable(@"MERGE_DUPLICATES_ACTION_ERROR_TITLE", @"PhotosUICore");
  v7 = PXLocalizedStringFromTable(@"MERGE_DUPLICATES_ACTION_ERROR_MESSAGE", @"PhotosUICore");
  v8 = [MEMORY[0x1E69DC650] alertControllerWithTitle:v6 message:v7 preferredStyle:1];
  v9 = MEMORY[0x1E69DC648];
  v10 = PXLocalizedStringFromTable(@"PXOK", @"PhotosUICore");
  v14 = MEMORY[0x1E69E9820];
  v15 = 3221225472;
  v16 = __106__PXPhotoKitMergeDuplicatesActionPerformer__presentGenericFailureAlertAndCompleteBackgroundTaskWithError___block_invoke;
  v17 = &unk_1E774A2C8;
  v18 = self;
  v11 = v4;
  v19 = v11;
  v12 = [v9 actionWithTitle:v10 style:0 handler:&v14];
  [v8 addAction:{v12, v14, v15, v16, v17, v18}];

  if (![(PXActionPerformer *)self presentViewController:v8])
  {
    v13 = [MEMORY[0x1E696ABC0] px_genericErrorWithDebugDescription:@"Failed to present failure alert."];
    [(PXPhotoKitMergeDuplicatesActionPerformer *)self completeBackgroundTaskWithSuccess:0 error:v13];
  }
}

- (void)completeBackgroundTaskWithSuccess:(BOOL)a3 error:(id)a4
{
  v4 = a3;
  v18 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = PLDuplicateDetectionGetLog();
  v8 = v7;
  if (v4)
  {
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_7;
    }

    *buf = 138543362;
    v15 = self;
    v9 = "%{public}@ Merge succeeded";
    v10 = v8;
    v11 = OS_LOG_TYPE_DEFAULT;
    v12 = 12;
  }

  else
  {
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_7;
    }

    *buf = 138543618;
    v15 = self;
    v16 = 2112;
    v17 = v6;
    v9 = "%{public}@ Merge failed with error %@";
    v10 = v8;
    v11 = OS_LOG_TYPE_ERROR;
    v12 = 22;
  }

  _os_log_impl(&dword_1A3C1C000, v10, v11, v9, buf, v12);
LABEL_7:

  v13.receiver = self;
  v13.super_class = PXPhotoKitMergeDuplicatesActionPerformer;
  [(PXActionPerformer *)&v13 completeBackgroundTaskWithSuccess:v4 error:v6];
  if (!v4)
  {
    [MEMORY[0x1E6991F28] sendEvent:@"com.apple.photos.CPAnalytics.deduplicationEventFailed" withPayload:MEMORY[0x1E695E0F8]];
  }
}

- (void)performBackgroundTask
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = PXDuplicateGroupingAssetIdentifiersFromSelection(self->_mergeableSelection);
  v4 = [v3 count];
  v5 = PLDuplicateDetectionGetLog();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (v4)
  {
    if (v6)
    {
      v7 = [(PXSelectionSnapshot *)self->_mergeableSelection selectedIndexPaths];
      *buf = 138543874;
      v9 = self;
      v10 = 2048;
      v11 = v4;
      v12 = 2048;
      v13 = [v7 count];
      _os_log_impl(&dword_1A3C1C000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ will attempt merging %tu duplicate groups with a total of %tu assets", buf, 0x20u);
    }

    PXLocalizedStringFromTable(@"MERGE_DUPLICATES_ACTION_ONGOING_TOAST_TITLE", @"PhotosUICore");
    objc_claimAutoreleasedReturnValue();
    PXLocalizedStringFromTable(@"MERGE_DUPLICATES_ACTION_SUCCESS_TOAST_TITLE", @"PhotosUICore");
    objc_claimAutoreleasedReturnValue();
    PXLocalizedAssetCountForUsage(v4, 0, 0, 0);
  }

  if (v6)
  {
    *buf = 138543362;
    v9 = self;
    _os_log_impl(&dword_1A3C1C000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ Merge skipped, no assets selected.", buf, 0xCu);
  }

  [(PXPhotoKitMergeDuplicatesActionPerformer *)self completeBackgroundTaskWithSuccess:0 error:0];
}

void __65__PXPhotoKitMergeDuplicatesActionPerformer_performBackgroundTask__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  *(a1 + 32);
  *(a1 + 40);
  v5 = v4;
  px_dispatch_on_main_queue();
}

uint64_t __65__PXPhotoKitMergeDuplicatesActionPerformer_performBackgroundTask__block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) finishProgressMarkingAsComplete:1 updatedLocalizedTitle:*(a1 + 40) updatedLocalizedDescription:0];
  v2 = *(a1 + 48);
  v3 = *(a1 + 56);
  if (*(a1 + 64) == 1)
  {

    return [v2 completeBackgroundTaskWithSuccess:1 error:v3];
  }

  else
  {
    v5 = *(a1 + 56);

    return [v2 _presentGenericFailureAlertAndCompleteBackgroundTaskWithError:{v5, v3}];
  }
}

- (void)completeUserInteractionTaskWithSuccess:(BOOL)a3 error:(id)a4
{
  v4 = a3;
  v6.receiver = self;
  v6.super_class = PXPhotoKitMergeDuplicatesActionPerformer;
  [(PXActionPerformer *)&v6 completeUserInteractionTaskWithSuccess:a3 error:a4];
  if (v4)
  {
    [(PXPhotoKitMergeDuplicatesActionPerformer *)self _clearSelection];
  }
}

- (void)performMergeWithSelection:(id)a3 localizedMessage:(id)a4 onlyIdenticalItemsSelected:(BOOL)a5
{
  v5 = a5;
  v15 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = [v8 sectionIndexPathsContainingSelection];
  [v10 count];

  v11 = PLDuplicateDetectionGetLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v14 = self;
    _os_log_impl(&dword_1A3C1C000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@ Present Confirmation Dialog", buf, 0xCu);
  }

  if (v5)
  {
    v12 = @"MERGE_%ld_DUPLICATES_CONFIRMATION_IDENTICAL_FORMAT";
  }

  else
  {
    v12 = @"MERGE_%ld_DUPLICATES_ACTION_FORMAT";
  }

  PXLocalizedStringFromTable(v12, @"PhotosUICore");
  objc_claimAutoreleasedReturnValue();
  [v8 selectedIndexPaths];
  [objc_claimAutoreleasedReturnValue() count];
  PXLocalizedStringWithValidatedFormat();
}

void __114__PXPhotoKitMergeDuplicatesActionPerformer_performMergeWithSelection_localizedMessage_onlyIdenticalItemsSelected___block_invoke(uint64_t a1)
{
  objc_storeStrong((*(a1 + 32) + 192), *(a1 + 40));
  [*(a1 + 32) completeUserInteractionTaskWithSuccess:1 error:0];
  v2 = *(a1 + 48);
  v3 = [*(*(a1 + 32) + 192) dataSource];
  PXDeduplicationSendMergeAnalytics(v2, [v3 numberOfSections]);
}

uint64_t __114__PXPhotoKitMergeDuplicatesActionPerformer_performMergeWithSelection_localizedMessage_onlyIdenticalItemsSelected___block_invoke_2(uint64_t a1)
{
  [MEMORY[0x1E6991F28] sendEvent:@"com.apple.photos.CPAnalytics.deduplicationEventSkip" withPayload:MEMORY[0x1E695E0F8]];
  v2 = *(a1 + 32);

  return [v2 completeUserInteractionTaskWithSuccess:0 error:0];
}

- (void)_presentDuplicatesTypeDialogWithIdenticalCount:(int64_t)a3 totalCount:(int64_t)a4 completion:(id)a5
{
  v7 = a5;
  if (a4 == a3)
  {
    PXAssertGetLog();
  }

  v8 = MEMORY[0x1E69DC650];
  v9 = PXLocalizedStringFromTable(@"MERGE_DUPLICATES_ACTION_CONFIRMATION_IDENTICAL_AND_PERCEPTUAL", @"PhotosUICore");
  [v8 alertControllerWithTitle:0 message:v9 preferredStyle:0];
  objc_claimAutoreleasedReturnValue();

  PXLocalizedStringFromTable(@"MERGE_%ld_IDENITICAL_DUPLICATES_ACTION_FORMAT", @"PhotosUICore");
  objc_claimAutoreleasedReturnValue();
  PXLocalizedStringWithValidatedFormat();
}

uint64_t __113__PXPhotoKitMergeDuplicatesActionPerformer__presentDuplicatesTypeDialogWithIdenticalCount_totalCount_completion___block_invoke(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  v1 = MEMORY[0x1E6991F28];
  v2 = MEMORY[0x1E695E0F8];

  return [v1 sendEvent:@"com.apple.photos.CPAnalytics.deduplicationSkipPerceptualMerge" withPayload:v2];
}

- (void)performUserInteractionTask
{
  v3 = [(PXAssetActionPerformer *)self selectionSnapshot];
  v4 = PXDeduplicationAssetsThatCanBeMergedInSelection(v3);

  v5 = [v4 selectedIndexPaths];
  v6 = [v5 count];

  if (!v6)
  {
    v7 = self;
    v8 = 0;
    goto LABEL_5;
  }

  if ([(PXPhotoKitAssetActionPerformer *)self shouldSkipUserConfirmation])
  {
    objc_storeStrong(&self->_mergeableSelection, v4);
    v7 = self;
    v8 = 1;
LABEL_5:
    [(PXPhotoKitMergeDuplicatesActionPerformer *)v7 completeUserInteractionTaskWithSuccess:v8 error:0];
    goto LABEL_11;
  }

  v9 = PXDeduplicationIdenticalSelectionFromSelection(v4);
  v10 = [v9 selectedIndexPaths];
  v11 = [v10 count];

  if (v11 == v6 || !v11)
  {
    v12 = v11 == v6;
    v13 = PXDeduplicationLocalizedMergeConfirmationMessage(v4, 1, v12);
    [(PXPhotoKitMergeDuplicatesActionPerformer *)self performMergeWithSelection:v4 localizedMessage:v13 onlyIdenticalItemsSelected:v12];
  }

  else
  {
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __70__PXPhotoKitMergeDuplicatesActionPerformer_performUserInteractionTask__block_invoke;
    v14[3] = &unk_1E77302B8;
    v15 = v9;
    v16 = v4;
    v17 = self;
    [(PXPhotoKitMergeDuplicatesActionPerformer *)self _presentDuplicatesTypeDialogWithIdenticalCount:v11 totalCount:v6 completion:v14];
  }

LABEL_11:
}

void __70__PXPhotoKitMergeDuplicatesActionPerformer_performUserInteractionTask__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((a2 & 1) != 0 || a3)
  {
    v7 = 40;
    if (a2)
    {
      v7 = 32;
    }

    v8 = *(a1 + v7);
    v9 = PXDeduplicationLocalizedMergeConfirmationMessage(v8, 0, a2);
    [*(a1 + 48) performMergeWithSelection:v8 localizedMessage:v9 onlyIdenticalItemsSelected:a2];
  }

  else
  {
    [*(a1 + 48) completeUserInteractionTaskWithSuccess:a3 error:0];
    v5 = MEMORY[0x1E6991F28];
    v6 = MEMORY[0x1E695E0F8];

    [v5 sendEvent:@"com.apple.photos.CPAnalytics.deduplicationEventSkip" withPayload:v6];
  }
}

+ (BOOL)canPerformWithActionManager:(id)a3 error:(id *)a4
{
  v6 = [a3 selectionManager];
  v7 = [v6 dataSourceManager];

  if (!v7)
  {
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    v13 = objc_opt_class();
    v14 = NSStringFromClass(v13);
    [v12 handleFailureInMethod:a2 object:a1 file:@"PXPhotoKitMergeDuplicatesActionPerformer.m" lineNumber:59 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"actionManager.selectionManager.dataSourceManager", v14}];
LABEL_9:

    goto LABEL_3;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    v15 = objc_opt_class();
    v14 = NSStringFromClass(v15);
    v16 = [v7 px_descriptionForAssertionMessage];
    [v12 handleFailureInMethod:a2 object:a1 file:@"PXPhotoKitMergeDuplicatesActionPerformer.m" lineNumber:59 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"actionManager.selectionManager.dataSourceManager", v14, v16}];

    goto LABEL_9;
  }

LABEL_3:
  v8 = [v7 dataSource];
  v9 = [v8 containerCollection];

  if (v9)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v17 = [MEMORY[0x1E696AAA8] currentHandler];
      v18 = objc_opt_class();
      v19 = NSStringFromClass(v18);
      v20 = [v9 px_descriptionForAssertionMessage];
      [v17 handleFailureInMethod:a2 object:a1 file:@"PXPhotoKitMergeDuplicatesActionPerformer.m" lineNumber:60 description:{@"%@ should be nil or an instance inheriting from %@, but it is %@", @"dataSourceManager.dataSource.containerCollection", v19, v20}];
    }
  }

  v10 = [v9 assetCollectionSubtype] == 1000000212;

  return v10;
}

+ (BOOL)shouldEnableWithActionManager:(id)a3
{
  v3 = [a3 selectionManager];
  v4 = [v3 selectionSnapshot];
  CanEnableMergeActionForSelection = PXDeduplicationCanEnableMergeActionForSelection(v4);

  return CanEnableMergeActionForSelection;
}

+ (id)localizedTitleForUseCase:(unint64_t)a3 actionManager:(id)a4
{
  v4 = [a4 selectionManager];
  v5 = [v4 selectionSnapshot];
  v6 = PXDeduplicationLocalizedMergeActionTitleForSelection(v5, 0);

  return v6;
}

+ (id)createBarButtonItemWithTarget:(id)a3 action:(SEL)a4 actionManager:(id)a5
{
  v7 = a3;
  v8 = [a5 selectionManager];
  v9 = [v8 selectionSnapshot];
  v10 = PXDeduplicationLocalizedMergeActionTitleForSelection(v9, 1);

  v11 = [objc_alloc(MEMORY[0x1E69DC708]) initWithTitle:v10 style:0 target:v7 action:a4];

  return v11;
}

@end