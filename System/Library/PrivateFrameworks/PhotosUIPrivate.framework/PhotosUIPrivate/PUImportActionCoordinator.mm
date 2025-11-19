@interface PUImportActionCoordinator
+ (float)lowBatteryLevelThresholdForDevice;
+ (id)deleteAllConfirmationMessageForItems:(id)a3 importSource:(id)a4;
+ (int64_t)importBehaviorForBatteryState:(int64_t)a3 batteryLevel:(float)a4;
+ (void)retrieveBatteryState:(int64_t *)a3 batteryLevel:(float *)a4;
- (BOOL)someItemsButNotAllAreSelected;
- (PUImportActionCoordinator)initWithViewController:(id)a3 importController:(id)a4 loggingSource:(int64_t)a5;
- (PUImportActionCoordinatorDelegate)delegate;
- (UIViewController)viewController;
- (id)_albumPickerViewController;
- (id)actionMenuForImportButton;
- (void)_commitImportingItems:(id)a3;
- (void)_deleteItems:(id)a3;
- (void)_handleDiskAvailabilityRequestForItems:(id)a3 withSuccess:(BOOL)a4 numBytesPurged:(int64_t)a5 additionalBytesRequired:(int64_t)a6 error:(id)a7;
- (void)_importItems:(id)a3 allowDuplicates:(BOOL)a4;
- (void)_presentInsufficientDiskSpaceAlertForItems:(id)a3;
- (void)_showAlbumsPickerForAssets:(id)a3;
- (void)_showImportDestinationAlbumPicker;
- (void)_startImportToLibrary;
- (void)checkBatteryLevelWithCompletion:(id)a3;
- (void)configureImportActionsForBarButtonItem:(id)a3;
- (void)deleteItemsFromBarButtonItem:(id)a3 withOneUpHintItems:(id)a4;
- (void)importAllFromBarButtonItem;
- (void)notifyDelegateOfImportCancellation;
- (void)picker:(id)a3 didFinishPicking:(id)a4;
- (void)ppt_beginImportFromBarButtonItem;
- (void)stopImport;
@end

@implementation PUImportActionCoordinator

- (UIViewController)viewController
{
  WeakRetained = objc_loadWeakRetained(&self->_viewController);

  return WeakRetained;
}

- (PUImportActionCoordinatorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_deleteItems:(id)a3
{
  v4 = a3;
  if (![v4 count])
  {
    _PFAssertContinueHandler();
  }

  if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
  {
    v8 = "[PUImportActionCoordinator _deleteItems:]";
    _PFAssertContinueHandler();
  }

  v5 = [(PUImportActionCoordinator *)self delegate];
  [v5 actionCoordinatorWillBeginDelete:self];

  objc_initWeak(&location, self);
  v6 = [(PUImportActionCoordinator *)self importController];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __42__PUImportActionCoordinator__deleteItems___block_invoke;
  v9[3] = &unk_1E7B7FA30;
  objc_copyWeak(&v10, &location);
  [v6 deleteItems:v4 withCompletionHandler:v9];

  v7 = [(PUImportActionCoordinator *)self delegate];
  [v7 actionCoordinatorDidBeginDelete:self];

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

void __42__PUImportActionCoordinator__deleteItems___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained delegate];
  v3 = objc_loadWeakRetained((a1 + 32));
  [v2 actionCoordinatorDidEndDelete:v3];
}

- (void)deleteItemsFromBarButtonItem:(id)a3 withOneUpHintItems:(id)a4
{
  v50 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = _importActionCoordinatorLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [(PUImportActionCoordinator *)self loggingPrefix];
    *buf = 138543618;
    v47 = v9;
    v48 = 2048;
    v49 = [v7 count];
    _os_log_impl(&dword_1B36F3000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@: Delete bar button tapped. Hint items: %lu", buf, 0x16u);
  }

  v10 = [v7 count];
  v11 = [(PUImportActionCoordinator *)self importController];
  v12 = [v11 selectedItems];

  v13 = [v12 count];
  if (!v7)
  {
    v21 = _importActionCoordinatorLog();
    v22 = os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT);
    if (!v13)
    {
      if (v22)
      {
        v38 = [(PUImportActionCoordinator *)self loggingPrefix];
        *buf = 138543362;
        v47 = v38;
        _os_log_impl(&dword_1B36F3000, v21, OS_LOG_TYPE_DEFAULT, "%{public}@: Showing 'Delete All' confirmation", buf, 0xCu);
      }

      v13 = PLLocalizedFrameworkString();
      v39 = [(PUImportActionCoordinator *)self importController];
      v40 = [v39 dataSourceManager];
      v17 = [v40 unfilteredDataSource];

      v16 = [v17 allItems];
      v26 = 1;
      goto LABEL_18;
    }

    if (v22)
    {
      v23 = [(PUImportActionCoordinator *)self loggingPrefix];
      *buf = 138543618;
      v47 = v23;
      v48 = 2048;
      v49 = v13;
      _os_log_impl(&dword_1B36F3000, v21, OS_LOG_TYPE_DEFAULT, "%{public}@: Showing delete confirmation action sheet for %lu items", buf, 0x16u);
    }

    v16 = v12;
    v17 = [MEMORY[0x1E69C3610] importAssetsFromModels:v16];
    v18 = PXImportSuffixForItems();
    v24 = @"S";
    if (v13 == 1)
    {
      v24 = &stru_1F2AC6818;
    }

    v25 = [MEMORY[0x1E696AEC0] stringWithFormat:@"DELETE_BUTTON_TITLE_%@%@", v18, v24];
    v19 = PLServicesLocalizedFrameworkString();

    v41 = v13;
    v20 = PFLocalizedStringWithValidatedFormat();
    goto LABEL_14;
  }

  v14 = _importActionCoordinatorLog();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = [(PUImportActionCoordinator *)self loggingPrefix];
    *buf = 138543618;
    v47 = v15;
    v48 = 2048;
    v49 = v13;
    _os_log_impl(&dword_1B36F3000, v14, OS_LOG_TYPE_DEFAULT, "%{public}@: Showing delete confirmation action sheet for %lu hint items", buf, 0x16u);
  }

  if (v10 == 1)
  {
    v16 = v7;
    v17 = [MEMORY[0x1E69C3610] importAssetsFromModels:v16];
    v18 = PXImportSuffixForItems();
    v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"DELETE_BUTTON_TITLE_THIS_%@", v18];
    v20 = PLServicesLocalizedFrameworkString();
LABEL_14:
    v13 = v20;

LABEL_17:
    v26 = 0;
LABEL_18:

    goto LABEL_19;
  }

  if (v13)
  {
    v16 = v12;
    v17 = PULocalizedString(@"DELETE_BUTTON_TITLE_SELECTED_ITEM");
    v41 = v13;
    v13 = PUStringWithValidatedFormat();
    goto LABEL_17;
  }

  v26 = 0;
  v16 = 0;
LABEL_19:
  v27 = [MEMORY[0x1E69DC650] alertControllerWithTitle:0 message:0 preferredStyle:{0, v41}];
  v28 = MEMORY[0x1E69DC648];
  v29 = PLLocalizedFrameworkString();
  v30 = [v28 actionWithTitle:v29 style:1 handler:0];
  [v27 addAction:v30];

  v31 = MEMORY[0x1E69DC648];
  v42[0] = MEMORY[0x1E69E9820];
  v42[1] = 3221225472;
  v42[2] = __77__PUImportActionCoordinator_deleteItemsFromBarButtonItem_withOneUpHintItems___block_invoke;
  v42[3] = &unk_1E7B777A8;
  v45 = v26;
  v42[4] = self;
  v43 = v13;
  v44 = v16;
  v32 = v16;
  v33 = v13;
  v34 = [v31 actionWithTitle:v33 style:2 handler:v42];
  [v27 addAction:v34];

  v35 = [v27 popoverPresentationController];
  v36 = v35;
  if (v35)
  {
    [v35 setBarButtonItem:v6];
  }

  v37 = [(PUImportActionCoordinator *)self viewController];
  [v37 presentViewController:v27 animated:1 completion:0];
}

void __77__PUImportActionCoordinator_deleteItemsFromBarButtonItem_withOneUpHintItems___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*(a1 + 56) == 1 && [*(a1 + 32) presentsAdditionalDeleteAllConfirmation])
  {
    v4 = *(a1 + 48);
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);
    v7 = [v5 importController];
    v8 = [v7 importSource];
    v9 = [PUImportActionCoordinator deleteAllConfirmationMessageForItems:v4 importSource:v8];

    v10 = [MEMORY[0x1E69DC650] alertControllerWithTitle:v6 message:v9 preferredStyle:1];
    v11 = MEMORY[0x1E69DC648];
    v12 = PLLocalizedFrameworkString();
    v13 = [v11 actionWithTitle:v12 style:1 handler:0];
    [v10 addAction:v13];

    v14 = MEMORY[0x1E69DC648];
    v18 = MEMORY[0x1E69E9820];
    v19 = 3221225472;
    v20 = __77__PUImportActionCoordinator_deleteItemsFromBarButtonItem_withOneUpHintItems___block_invoke_2;
    v21 = &unk_1E7B7E120;
    v15 = *(a1 + 40);
    v22 = *(a1 + 32);
    v23 = *(a1 + 48);
    v16 = [v14 actionWithTitle:v15 style:2 handler:&v18];
    [v10 addAction:{v16, v18, v19, v20, v21, v22}];

    v17 = [*(a1 + 32) viewController];
    [v17 presentViewController:v10 animated:1 completion:0];
  }

  else
  {
    [*(a1 + 32) _deleteItems:*(a1 + 48)];
  }
}

- (void)notifyDelegateOfImportCancellation
{
  v3 = [(PUImportActionCoordinator *)self delegate];
  [v3 actionCoordinatorDidCancelImport:self];
}

- (void)_commitImportingItems:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = _importActionCoordinatorLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(PUImportActionCoordinator *)self loggingPrefix];
    *buf = 138543618;
    v16 = v6;
    v17 = 2048;
    v18 = [v4 count];
    _os_log_impl(&dword_1B36F3000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@: Importing %tu items", buf, 0x16u);
  }

  v7 = [(PUImportActionCoordinator *)self delegate];
  [v7 actionCoordinatorWillBeginImport:self];

  objc_initWeak(buf, self);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __51__PUImportActionCoordinator__commitImportingItems___block_invoke;
  aBlock[3] = &unk_1E7B7F820;
  objc_copyWeak(&v14, buf);
  v8 = v4;
  v12 = v8;
  v13 = self;
  v9 = _Block_copy(aBlock);
  v10 = v9;
  if (v9)
  {
    (*(v9 + 2))(v9);
  }

  objc_destroyWeak(&v14);
  objc_destroyWeak(buf);
}

void __51__PUImportActionCoordinator__commitImportingItems___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = [WeakRetained importController];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __51__PUImportActionCoordinator__commitImportingItems___block_invoke_2;
  v8[3] = &unk_1E7B77758;
  v4 = *(a1 + 32);
  v8[4] = *(a1 + 40);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __51__PUImportActionCoordinator__commitImportingItems___block_invoke_3;
  v6[3] = &unk_1E7B77780;
  objc_copyWeak(&v7, (a1 + 48));
  v6[4] = *(a1 + 40);
  [v3 importItems:v4 configuration:v8 completion:v6];

  v5 = [*(a1 + 40) delegate];
  [v5 actionCoordinatorDidBeginImport:*(a1 + 40)];

  objc_destroyWeak(&v7);
}

void __51__PUImportActionCoordinator__commitImportingItems___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 delegate];
  v6 = [v5 importDestinationForActionCoordinator:*(a1 + 32)];
  [v4 setDestinationAlbum:v6];

  [v4 setSkipDiskSpaceCheck:1];
  v9 = [*(a1 + 32) importController];
  v7 = [v9 photoLibrary];
  v8 = PXTargetLibraryFetchLibraryScopeOrNil();
  [v4 setLibraryScope:v8];
}

void __51__PUImportActionCoordinator__commitImportingItems___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v7 = [WeakRetained delegate];
  [v7 actionCoordinator:*(a1 + 32) didCompleteWithImportSession:v6 results:v5];
}

- (void)_presentInsufficientDiskSpaceAlertForItems:(id)a3
{
  v4 = a3;
  v31 = 0;
  v5 = [MEMORY[0x1E69C3608] itemsConstrainedByAvailableDiskSpaceFromItems:v4 additionalBytesRequired:&v31];
  v6 = [MEMORY[0x1E69C3620] sharedInstance];
  v7 = [v6 simulatedDiskSpace];

  if (v7 != 3)
  {
    if (![v5 count])
    {
      goto LABEL_10;
    }

    goto LABEL_5;
  }

  v31 = 0x100000;
  if ([v5 count])
  {
LABEL_5:
    v8 = [v5 count];
    v9 = [v4 count];
    if (v7 == 3 || v8 < v9)
    {
      goto LABEL_9;
    }

LABEL_10:
    v20 = MEMORY[0x1E696AEC0];
    v21 = [MEMORY[0x1E69DC938] currentDevice];
    v22 = [v21 model];
    v11 = [v20 stringWithFormat:@"NO_SPACE_MESSAGE_%@", v22];

    v12 = PLLocalizedFrameworkString();
    v23 = [MEMORY[0x1E69DC938] currentDevice];
    v28 = [v23 localizedModel];
    v13 = PUStringWithValidatedFormat();

    v24 = MEMORY[0x1E69DC650];
    v25 = PLLocalizedFrameworkString();
    v16 = [v24 alertControllerWithTitle:v25 message:v13 preferredStyle:{1, v28}];

    v17 = MEMORY[0x1E69DC648];
    v18 = PLLocalizedFrameworkString();
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __72__PUImportActionCoordinator__presentInsufficientDiskSpaceAlertForItems___block_invoke_2;
    v29[3] = &unk_1E7B7E148;
    v29[4] = self;
    v19 = v29;
    goto LABEL_11;
  }

LABEL_9:
  v11 = [MEMORY[0x1E696AAF0] stringFromByteCount:v31 countStyle:0];
  v12 = PLLocalizedFrameworkString();
  v13 = PUStringWithValidatedFormat();
  v14 = MEMORY[0x1E69DC650];
  v15 = PLLocalizedFrameworkString();
  v16 = [v14 alertControllerWithTitle:v15 message:v13 preferredStyle:{1, v11}];

  v17 = MEMORY[0x1E69DC648];
  v18 = PLLocalizedFrameworkString();
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __72__PUImportActionCoordinator__presentInsufficientDiskSpaceAlertForItems___block_invoke;
  v30[3] = &unk_1E7B7E148;
  v30[4] = self;
  v19 = v30;
LABEL_11:
  v26 = [v17 actionWithTitle:v18 style:1 handler:v19];
  [v16 addAction:v26];

  v27 = [(PUImportActionCoordinator *)self viewController];
  [v27 presentViewController:v16 animated:1 completion:0];
}

- (void)_handleDiskAvailabilityRequestForItems:(id)a3 withSuccess:(BOOL)a4 numBytesPurged:(int64_t)a5 additionalBytesRequired:(int64_t)a6 error:(id)a7
{
  v10 = a4;
  v55 = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a7;
  v14 = _importActionCoordinatorLog();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    [(PUImportActionCoordinator *)self loggingPrefix];
    v15 = v40 = v12;
    v16 = @"NO";
    if (v10)
    {
      v16 = @"YES";
    }

    v17 = v16;
    v18 = [(PUImportActionCoordinator *)self byteCountFormatter];
    v19 = [v18 stringFromByteCount:a5];
    v20 = [(PUImportActionCoordinator *)self byteCountFormatter];
    v21 = [v20 stringFromByteCount:a6];
    *buf = 138544386;
    v46 = v15;
    v47 = 2114;
    v48 = v17;
    v49 = 2114;
    v50 = v19;
    v51 = 2114;
    v52 = v21;
    v53 = 2112;
    v54 = v13;
    _os_log_impl(&dword_1B36F3000, v14, OS_LOG_TYPE_DEFAULT, "%{public}@: Requesting disk space succeeded: %{public}@. Bytes purged: %{public}@, Additional bytes required: %{public}@, Error: %@", buf, 0x34u);

    v12 = v40;
  }

  if (v13)
  {
    v22 = [v13 code] != 1;
  }

  else
  {
    v22 = 1;
  }

  v23 = [MEMORY[0x1E69C3620] sharedInstance];
  v24 = [v23 simulatedDiskSpace];

  if (v22 && v24)
  {
    v25 = _importActionCoordinatorLog();
    v26 = os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT);
    if (v24 == 4)
    {
      if (v26)
      {
        v28 = [(PUImportActionCoordinator *)self loggingPrefix];
        *buf = 138543362;
        v46 = v28;
        _os_log_impl(&dword_1B36F3000, v25, OS_LOG_TYPE_DEFAULT, "%{public}@: Simulating failure in Cache Delete", buf, 0xCu);
      }

      v29 = MEMORY[0x1E696ABC0];
      v30 = *MEMORY[0x1E69BE908];
      v43 = *MEMORY[0x1E696A578];
      v44 = @"This is a simulated Cache Delete failure.";
      v31 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v44 forKeys:&v43 count:1];
      v32 = v29;
      v33 = v30;
      v34 = 4;
    }

    else
    {
      if (v24 == 1)
      {
        if (v26)
        {
          v27 = [(PUImportActionCoordinator *)self loggingPrefix];
          *buf = 138543362;
          v46 = v27;
          _os_log_impl(&dword_1B36F3000, v25, OS_LOG_TYPE_DEFAULT, "%{public}@: Simulating disk space ALWAYS available", buf, 0xCu);
        }

        v13 = 0;
        goto LABEL_16;
      }

      if (v26)
      {
        v35 = [(PUImportActionCoordinator *)self loggingPrefix];
        *buf = 138543362;
        v46 = v35;
        _os_log_impl(&dword_1B36F3000, v25, OS_LOG_TYPE_DEFAULT, "%{public}@: Simulating insufficient disk space", buf, 0xCu);
      }

      v36 = MEMORY[0x1E696ABC0];
      v37 = *MEMORY[0x1E69BE908];
      v41 = *MEMORY[0x1E696A578];
      v42 = @"This is a simulated disk space error.";
      v31 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v42 forKeys:&v41 count:1];
      v32 = v36;
      v33 = v37;
      v34 = 0;
    }

    v38 = [v32 errorWithDomain:v33 code:v34 userInfo:v31];

    v13 = v38;
  }

  else if (v10)
  {
LABEL_16:
    [(PUImportActionCoordinator *)self _commitImportingItems:v12];
    goto LABEL_29;
  }

  if (v13)
  {
    v39 = v22;
  }

  else
  {
    v39 = 0;
  }

  if (v39)
  {
    [(PUImportActionCoordinator *)self _presentInsufficientDiskSpaceAlertForItems:v12];
  }

LABEL_29:
}

- (void)_importItems:(id)a3 allowDuplicates:(BOOL)a4
{
  v6 = a3;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __58__PUImportActionCoordinator__importItems_allowDuplicates___block_invoke;
  v8[3] = &unk_1E7B7DF48;
  v8[4] = self;
  v9 = v6;
  v10 = a4;
  v7 = v6;
  [(PUImportActionCoordinator *)self checkBatteryLevelWithCompletion:v8];
}

void __58__PUImportActionCoordinator__importItems_allowDuplicates___block_invoke(uint64_t a1, char a2)
{
  v52 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v3 = *(a1 + 40);
    v46[0] = MEMORY[0x1E69E9820];
    v46[1] = 3221225472;
    v46[2] = __58__PUImportActionCoordinator__importItems_allowDuplicates___block_invoke_2;
    v46[3] = &__block_descriptor_33_e48_B24__0__PXImportItemViewModel_8__NSDictionary_16l;
    v47 = *(a1 + 48);
    v4 = [MEMORY[0x1E696AE18] predicateWithBlock:v46];
    v5 = [v3 filteredArrayUsingPredicate:v4];

    v6 = [v5 count];
    if (v6 < [*(a1 + 40) count])
    {
      v7 = _importActionCoordinatorLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = [*(a1 + 32) loggingPrefix];
        v9 = [v5 count];
        v10 = [*(a1 + 40) count];
        *buf = 138543874;
        *&buf[4] = v8;
        *&buf[12] = 2048;
        *&buf[14] = v9;
        *&buf[22] = 2048;
        v49 = v10;
        _os_log_impl(&dword_1B36F3000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@: Importing %tu items instead of the %tu selected, as the others are already imported or invalid", buf, 0x20u);
      }
    }

    v11 = [MEMORY[0x1E69C3608] diskSpaceRequiredToImportItems:v5];
    v12 = _importActionCoordinatorLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = [*(a1 + 32) loggingPrefix];
      v14 = [v5 count];
      v15 = [*(a1 + 32) byteCountFormatter];
      v16 = [v15 stringFromByteCount:v11];
      *buf = 138543874;
      *&buf[4] = v13;
      *&buf[12] = 2048;
      *&buf[14] = v14;
      *&buf[22] = 2114;
      v49 = v16;
      _os_log_impl(&dword_1B36F3000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@: Disk space required to import %tu items: %{public}@", buf, 0x20u);
    }

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v49 = __Block_byref_object_copy__30123;
    v50 = __Block_byref_object_dispose__30124;
    v51 = 0;
    v44[0] = 0;
    v44[1] = v44;
    v44[2] = 0x2020000000;
    v45 = 0;
    v42[0] = 0;
    v42[1] = v42;
    v42[2] = 0x2020000000;
    v43 = 0;
    v17 = [*(a1 + 32) importController];
    v18 = [v17 photoLibrary];
    v19 = [v18 photoLibraryURL];
    v20 = [v19 path];

    objc_initWeak(&location, *(a1 + 32));
    v21 = objc_alloc(MEMORY[0x1E69BE2D0]);
    v22 = MEMORY[0x1E69E96A0];
    v23 = MEMORY[0x1E69E96A0];
    v24 = [v21 initWithQoSClass:25 pathForVolume:v20 callbackQueue:v22];
    [*(a1 + 32) setCacheDeleteClient:v24];

    v25 = [*(a1 + 32) cacheDeleteClient];
    v35[0] = MEMORY[0x1E69E9820];
    v35[1] = 3221225472;
    v35[2] = __58__PUImportActionCoordinator__importItems_allowDuplicates___block_invoke_323;
    v35[3] = &unk_1E7B776E0;
    v26 = *(a1 + 32);
    v37 = v42;
    v38 = v44;
    v35[4] = v26;
    v39 = buf;
    objc_copyWeak(&v40, &location);
    v27 = v5;
    v36 = v27;
    [v25 requestDiskSpaceAvailabilityOfSize:v11 completion:v35];

    v28 = [MEMORY[0x1E69C3620] sharedInstance];
    [v28 delayBeforeShowingPreparationAlert];
    v30 = v29;

    v31 = dispatch_time(0, (v30 * 1000000000.0));
    v34[0] = MEMORY[0x1E69E9820];
    v34[1] = 3221225472;
    v34[2] = __58__PUImportActionCoordinator__importItems_allowDuplicates___block_invoke_332;
    v34[3] = &unk_1E7B77730;
    v34[4] = *(a1 + 32);
    v34[5] = v42;
    v34[6] = buf;
    v34[7] = v44;
    v32 = MEMORY[0x1E69E96A0];
    dispatch_after(v31, MEMORY[0x1E69E96A0], v34);

    objc_destroyWeak(&v40);
    objc_destroyWeak(&location);

    _Block_object_dispose(v42, 8);
    _Block_object_dispose(v44, 8);
    _Block_object_dispose(buf, 8);
  }

  else
  {
    v33 = *(a1 + 32);

    [v33 notifyDelegateOfImportCancellation];
  }
}

uint64_t __58__PUImportActionCoordinator__importItems_allowDuplicates___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 isMediaAsset])
  {
    if (*(a1 + 32))
    {
      v4 = 1;
    }

    else
    {
      v4 = [v3 isNotYetImported];
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

void __58__PUImportActionCoordinator__importItems_allowDuplicates___block_invoke_323(uint64_t a1, char a2, void *a3, void *a4, void *a5)
{
  v9 = a5;
  v10 = [MEMORY[0x1E69C3620] sharedInstance];
  v11 = [v10 simulateLongDiskSpacePreparation];

  if (v11)
  {
    v12 = 5000000000;
  }

  else
  {
    v12 = 0;
  }

  v13 = dispatch_time(0, v12);
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __58__PUImportActionCoordinator__importItems_allowDuplicates___block_invoke_2_325;
  v16[3] = &unk_1E7B776B8;
  v23 = a2;
  v20 = *(a1 + 48);
  v14 = *(a1 + 32);
  v17 = v9;
  v18 = v14;
  v21 = *(a1 + 64);
  v15 = v9;
  objc_copyWeak(v22, (a1 + 72));
  v19 = *(a1 + 40);
  v22[1] = a3;
  v22[2] = a4;
  dispatch_after(v13, MEMORY[0x1E69E96A0], v16);

  objc_destroyWeak(v22);
}

void __58__PUImportActionCoordinator__importItems_allowDuplicates___block_invoke_332(uint64_t a1)
{
  if ((*(*(*(a1 + 40) + 8) + 24) & 1) == 0)
  {
    v2 = MEMORY[0x1E69DC650];
    v3 = PLLocalizedFrameworkString();
    v4 = [v2 alertControllerWithTitle:v3 message:0 preferredStyle:1];
    v5 = *(*(a1 + 48) + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;

    v7 = objc_alloc_init(MEMORY[0x1E69DD258]);
    v8 = [objc_alloc(MEMORY[0x1E69DC638]) initWithActivityIndicatorStyle:101];
    [v8 setAutoresizingMask:18];
    [v8 frame];
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v17 = [v7 view];
    [v17 setBounds:{v10, v12, v14, v16}];

    v18 = [v7 view];
    [v18 addSubview:v8];

    [v8 startAnimating];
    [*(*(*(a1 + 48) + 8) + 40) setContentViewController:v7];
    v19 = *(*(*(a1 + 48) + 8) + 40);
    v20 = MEMORY[0x1E69DC648];
    v21 = PLLocalizedFrameworkString();
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __58__PUImportActionCoordinator__importItems_allowDuplicates___block_invoke_2_338;
    v25[3] = &unk_1E7B77708;
    v22 = *(a1 + 56);
    v25[4] = *(a1 + 32);
    v25[5] = v22;
    v23 = [v20 actionWithTitle:v21 style:1 handler:v25];
    [v19 addAction:v23];

    v24 = [*(a1 + 32) viewController];
    [v24 presentViewController:*(*(*(a1 + 48) + 8) + 40) animated:1 completion:0];
  }
}

void __58__PUImportActionCoordinator__importItems_allowDuplicates___block_invoke_2_338(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = _importActionCoordinatorLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) loggingPrefix];
    v5 = 138543362;
    v6 = v3;
    _os_log_impl(&dword_1B36F3000, v2, OS_LOG_TYPE_DEFAULT, "%{public}@: Cancel button pressed on the preparation alert.", &v5, 0xCu);
  }

  *(*(*(a1 + 40) + 8) + 24) = 1;
  v4 = [*(a1 + 32) cacheDeleteClient];
  [v4 cancelDiskSpaceAvailabilityRequest];
}

void __58__PUImportActionCoordinator__importItems_allowDuplicates___block_invoke_2_325(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  *(*(*(a1 + 56) + 8) + 24) = 1;
  v2 = *(a1 + 104);
  v3 = *(a1 + 32);
  v4 = v3;
  if (v3 && [v3 code] == 1)
  {
    goto LABEL_8;
  }

  if (*(*(*(a1 + 64) + 8) + 24) == 1)
  {
    v5 = _importActionCoordinatorLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [*(a1 + 40) loggingPrefix];
      *buf = 138543362;
      v18 = v6;
      _os_log_impl(&dword_1B36F3000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@: Cache delete client did not receive cancellation in time, but treating as a cancel anyway.", buf, 0xCu);
    }

    v7 = MEMORY[0x1E696ABC0];
    v8 = *MEMORY[0x1E69BE908];
    v15 = *MEMORY[0x1E696A578];
    v16 = @"User cancelled the purge request, though the cache delete client finished.";
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v16 forKeys:&v15 count:1];
    v10 = [v7 errorWithDomain:v8 code:1 userInfo:v9];

    v2 = 0;
    v4 = v10;
  }

  if (v4)
  {
LABEL_8:
    v11 = [v4 code] == 1;
  }

  else
  {
    v11 = 0;
  }

  if (*(*(*(a1 + 72) + 8) + 40) && !v11)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 80));
    v13 = [WeakRetained viewController];
    [v13 dismissViewControllerAnimated:1 completion:0];
  }

  v14 = objc_loadWeakRetained((a1 + 80));
  [v14 _handleDiskAvailabilityRequestForItems:*(a1 + 48) withSuccess:v2 numBytesPurged:*(a1 + 88) additionalBytesRequired:*(a1 + 96) error:v4];
}

- (void)stopImport
{
  v2 = [(PUImportActionCoordinator *)self importController];
  [v2 stopImport];
}

- (void)checkBatteryLevelWithCompletion:(id)a3
{
  v4 = a3;
  v44 = 0;
  v43 = 0;
  [objc_opt_class() retrieveBatteryState:&v44 batteryLevel:&v43];
  v5 = objc_opt_class();
  LODWORD(v6) = v43;
  v7 = [v5 importBehaviorForBatteryState:v44 batteryLevel:v6];
  v8 = [MEMORY[0x1E69DC938] currentDevice];
  v9 = [v8 model];

  if ([(__CFString *)v9 hasPrefix:@"iPod"])
  {

    v9 = @"iPod";
  }

  v10 = [(PUImportActionCoordinator *)self percentageNumberFormatter];
  LODWORD(v11) = v43;
  v12 = [MEMORY[0x1E696AD98] numberWithFloat:v11];
  v13 = [v10 stringFromNumber:v12];

  if (v7 == 1)
  {
    v14 = [MEMORY[0x1E696AD60] stringWithString:@"IMPORT_BATTERY_LOW_MESSAGE_"];
    [v14 appendString:v9];
    v24 = PLLocalizedFrameworkString();
    v36 = PUStringWithValidatedFormat();

    v25 = MEMORY[0x1E69DC650];
    v26 = PLLocalizedFrameworkString();
    v27 = [v25 alertControllerWithTitle:v26 message:v36 preferredStyle:{1, v13}];

    v28 = MEMORY[0x1E69DC648];
    v29 = PLLocalizedFrameworkString();
    v39[0] = MEMORY[0x1E69E9820];
    v39[1] = 3221225472;
    v39[2] = __61__PUImportActionCoordinator_checkBatteryLevelWithCompletion___block_invoke_2;
    v39[3] = &unk_1E7B80980;
    v30 = v4;
    v40 = v30;
    v31 = [v28 actionWithTitle:v29 style:1 handler:v39];
    [v27 addAction:v31];

    v32 = MEMORY[0x1E69DC648];
    v33 = PLLocalizedFrameworkString();
    v37[0] = MEMORY[0x1E69E9820];
    v37[1] = 3221225472;
    v37[2] = __61__PUImportActionCoordinator_checkBatteryLevelWithCompletion___block_invoke_3;
    v37[3] = &unk_1E7B80980;
    v38 = v30;
    v34 = [v32 actionWithTitle:v33 style:0 handler:v37];
    [v27 addAction:v34];

    v35 = [(PUImportActionCoordinator *)self viewController];
    [v35 presentViewController:v27 animated:1 completion:0];

    goto LABEL_7;
  }

  if (v7 == 2)
  {
    v14 = [MEMORY[0x1E696AD60] stringWithString:@"IMPORT_BATTERY_CRITICAL_MESSAGE_"];
    [v14 appendString:v9];
    v15 = PLLocalizedFrameworkString();
    v16 = PUStringWithValidatedFormat();

    v17 = MEMORY[0x1E69DC650];
    v18 = PLLocalizedFrameworkString();
    v19 = [v17 alertControllerWithTitle:v18 message:v16 preferredStyle:{1, v13}];

    v20 = MEMORY[0x1E69DC648];
    v21 = PLLocalizedFrameworkString();
    v41[0] = MEMORY[0x1E69E9820];
    v41[1] = 3221225472;
    v41[2] = __61__PUImportActionCoordinator_checkBatteryLevelWithCompletion___block_invoke;
    v41[3] = &unk_1E7B80980;
    v42 = v4;
    v22 = [v20 actionWithTitle:v21 style:1 handler:v41];
    [v19 addAction:v22];

    v23 = [(PUImportActionCoordinator *)self viewController];
    [v23 presentViewController:v19 animated:1 completion:0];

LABEL_7:
    goto LABEL_8;
  }

  if (v4 && !v7)
  {
    (*(v4 + 2))(v4, 1);
  }

LABEL_8:
}

uint64_t __61__PUImportActionCoordinator_checkBatteryLevelWithCompletion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

uint64_t __61__PUImportActionCoordinator_checkBatteryLevelWithCompletion___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

uint64_t __61__PUImportActionCoordinator_checkBatteryLevelWithCompletion___block_invoke_3(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 1);
  }

  return result;
}

- (void)importAllFromBarButtonItem
{
  v45 = *MEMORY[0x1E69E9840];
  v3 = [(PUImportActionCoordinator *)self importController];
  v4 = [v3 dataSourceManager];
  v5 = [v4 unfilteredDataSource];

  v6 = [v5 numberOfAlreadyImportedItems];
  objc_initWeak(&location, self);
  if (v6 < 1)
  {
    v16 = _importActionCoordinatorLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = [(PUImportActionCoordinator *)self loggingPrefix];
      *buf = 138543362;
      v44 = v17;
      _os_log_impl(&dword_1B36F3000, v16, OS_LOG_TYPE_DEFAULT, "%{public}@: No duplicates found, performing Import All...", buf, 0xCu);
    }

    v12 = [v5 allItems];
    [(PUImportActionCoordinator *)self _importItems:v12 allowDuplicates:0];
  }

  else
  {
    if ([v5 numberOfNotYetImportedItems])
    {
      v7 = _importActionCoordinatorLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = [(PUImportActionCoordinator *)self loggingPrefix];
        *buf = 138543362;
        v44 = v8;
        _os_log_impl(&dword_1B36F3000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@: Duplicates found. Presenting alert.", buf, 0xCu);
      }

      v9 = MEMORY[0x1E69DC650];
      v10 = PLLocalizedFrameworkString();
      v11 = PLLocalizedFrameworkString();
      v12 = [v9 alertControllerWithTitle:v10 message:v11 preferredStyle:1];

      v13 = MEMORY[0x1E69DC648];
      v14 = PLLocalizedFrameworkString();
      v39[0] = MEMORY[0x1E69E9820];
      v39[1] = 3221225472;
      v39[2] = __55__PUImportActionCoordinator_importAllFromBarButtonItem__block_invoke;
      v39[3] = &unk_1E7B77670;
      objc_copyWeak(&v41, &location);
      v40 = v5;
      v15 = [v13 actionWithTitle:v14 style:0 handler:v39];
      [v12 addAction:v15];

      objc_destroyWeak(&v41);
    }

    else
    {
      v18 = _importActionCoordinatorLog();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v19 = [(PUImportActionCoordinator *)self loggingPrefix];
        *buf = 138543362;
        v44 = v19;
        _os_log_impl(&dword_1B36F3000, v18, OS_LOG_TYPE_DEFAULT, "%{public}@: All items to import are dupes. Presenting alert.", buf, 0xCu);
      }

      v20 = MEMORY[0x1E69DC650];
      v21 = PLLocalizedFrameworkString();
      v22 = PLLocalizedFrameworkString();
      v12 = [v20 alertControllerWithTitle:v21 message:v22 preferredStyle:1];
    }

    v23 = MEMORY[0x1E69DC648];
    v24 = PLLocalizedFrameworkString();
    v36[0] = MEMORY[0x1E69E9820];
    v36[1] = 3221225472;
    v36[2] = __55__PUImportActionCoordinator_importAllFromBarButtonItem__block_invoke_275;
    v36[3] = &unk_1E7B77670;
    objc_copyWeak(&v38, &location);
    v25 = v5;
    v37 = v25;
    v26 = [v23 actionWithTitle:v24 style:0 handler:v36];
    [v12 addAction:v26];

    v27 = MEMORY[0x1E69DC648];
    v28 = PLLocalizedFrameworkString();
    v31 = MEMORY[0x1E69E9820];
    v32 = 3221225472;
    v33 = __55__PUImportActionCoordinator_importAllFromBarButtonItem__block_invoke_279;
    v34 = &unk_1E7B7FC80;
    objc_copyWeak(&v35, &location);
    v29 = [v27 actionWithTitle:v28 style:1 handler:&v31];
    [v12 addAction:{v29, v31, v32, v33, v34}];

    if ([(PUImportActionCoordinator *)self ppt_alwaysImportDuplicatesNoPrompt])
    {
      v30 = [v25 allItems];
      [(PUImportActionCoordinator *)self _importItems:v30 allowDuplicates:1];
    }

    else
    {
      v30 = [(PUImportActionCoordinator *)self viewController];
      [v30 presentViewController:v12 animated:1 completion:0];
    }

    objc_destroyWeak(&v35);
    objc_destroyWeak(&v38);
  }

  objc_destroyWeak(&location);
}

void __55__PUImportActionCoordinator_importAllFromBarButtonItem__block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = _importActionCoordinatorLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v4 = [WeakRetained loggingPrefix];
    v7 = 138543362;
    v8 = v4;
    _os_log_impl(&dword_1B36F3000, v2, OS_LOG_TYPE_DEFAULT, "%{public}@: Skipping duplicates.", &v7, 0xCu);
  }

  v5 = [*(a1 + 32) notYetImportedItems];
  v6 = objc_loadWeakRetained((a1 + 40));
  [v6 _importItems:v5 allowDuplicates:0];
}

void __55__PUImportActionCoordinator_importAllFromBarButtonItem__block_invoke_275(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = _importActionCoordinatorLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v4 = [WeakRetained loggingPrefix];
    v7 = 138543362;
    v8 = v4;
    _os_log_impl(&dword_1B36F3000, v2, OS_LOG_TYPE_DEFAULT, "%{public}@: Import all, including dupes", &v7, 0xCu);
  }

  v5 = objc_loadWeakRetained((a1 + 40));
  v6 = [*(a1 + 32) allItems];
  [v5 _importItems:v6 allowDuplicates:1];
}

void __55__PUImportActionCoordinator_importAllFromBarButtonItem__block_invoke_279(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained notifyDelegateOfImportCancellation];
}

- (void)ppt_beginImportFromBarButtonItem
{
  if ([(PUImportActionCoordinator *)self someItemsButNotAllAreSelected])
  {
    v3 = [(PUImportActionCoordinator *)self importController];
    v4 = [v3 selectedItems];

    [(PUImportActionCoordinator *)self _importItems:v4 allowDuplicates:1];
  }

  else
  {

    [(PUImportActionCoordinator *)self importAllFromBarButtonItem];
  }
}

- (BOOL)someItemsButNotAllAreSelected
{
  v3 = [(PUImportActionCoordinator *)self importController];
  v4 = [v3 selectedItems];

  v5 = [(PUImportActionCoordinator *)self importController];
  v6 = [v5 dataSourceManager];
  v7 = [v6 unfilteredDataSource];

  if ([v4 count])
  {
    v8 = [v7 numberOfItems];
    v9 = v8 != [v4 count];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)picker:(id)a3 didFinishPicking:(id)a4
{
  v5 = a4;
  v6 = [(PUImportActionCoordinator *)self viewController];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __53__PUImportActionCoordinator_picker_didFinishPicking___block_invoke;
  v8[3] = &unk_1E7B80C38;
  v9 = v5;
  v10 = self;
  v7 = v5;
  [v6 dismissViewControllerAnimated:1 completion:v8];
}

void __53__PUImportActionCoordinator_picker_didFinishPicking___block_invoke(uint64_t a1)
{
  v18[1] = *MEMORY[0x1E69E9840];
  if ([*(a1 + 32) count])
  {
    v2 = [*(a1 + 40) importController];
    v3 = [v2 photoLibrary];
    v4 = [v3 librarySpecificFetchOptions];

    v5 = [*(a1 + 32) firstObject];
    v6 = [v5 itemIdentifier];

    if (v6)
    {
      v7 = MEMORY[0x1E6978650];
      v18[0] = v6;
      v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:1];
      v9 = [v7 fetchAssetCollectionsWithLocalIdentifiers:v8 options:v4];
      v10 = [v9 firstObject];

      v11 = [*(a1 + 40) importController];
      [v11 setImportDestinationAlbum:v10];

      [*(a1 + 40) _startImportToLibrary];
    }

    else
    {
      v10 = _importActionCoordinatorLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v13 = [*(a1 + 40) loggingPrefix];
        v14 = 138543618;
        v15 = v13;
        v16 = 2112;
        v17 = 0;
      }
    }
  }

  else
  {
    v4 = _importActionCoordinatorLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v12 = [*(a1 + 40) loggingPrefix];
      v14 = 138543362;
      v15 = v12;
      _os_log_impl(&dword_1B36F3000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@: User cancelled destination album selection.", &v14, 0xCu);
    }
  }
}

- (id)_albumPickerViewController
{
  v3 = [(PUImportActionCoordinator *)self importController];
  v4 = [v3 photoLibrary];
  v5 = [PUPickerUtilities pickerConfigurationForAlbumPickerForPhotoLibrary:v4];

  v6 = [objc_alloc(MEMORY[0x1E69790F8]) initWithConfiguration:v5];
  [v6 setDelegate:self];
  v7 = v6;
  [v7 setModalInPresentation:1];

  return v7;
}

- (void)_showAlbumsPickerForAssets:(id)a3
{
  v4 = [(PUImportActionCoordinator *)self _albumPickerViewController];
  if (v4)
  {
    v5 = [(PUImportActionCoordinator *)self viewController];
    [v5 presentViewController:v4 animated:1 completion:0];
  }

  else
  {
    v5 = PLUIGetLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *v6 = 0;
      _os_log_impl(&dword_1B36F3000, v5, OS_LOG_TYPE_ERROR, "Import: Failed to create album picker for adding assets to album.", v6, 2u);
    }
  }
}

- (void)_showImportDestinationAlbumPicker
{
  v3 = [(PUImportActionCoordinator *)self importController];
  v8 = [v3 selectedItems];

  if ([v8 count])
  {
    v4 = v8;
  }

  else
  {
    v5 = [(PUImportActionCoordinator *)self importController];
    v6 = [v5 dataSourceManager];
    v7 = [v6 unfilteredDataSource];

    v4 = [v7 allItems];
  }

  [(PUImportActionCoordinator *)self _showAlbumsPickerForAssets:v4];
}

- (void)_startImportToLibrary
{
  v3 = [(PUImportActionCoordinator *)self importController];
  v4 = [v3 selectedItems];

  if ([v4 count])
  {
    [(PUImportActionCoordinator *)self _importItems:v4 allowDuplicates:1];
  }

  else
  {
    [(PUImportActionCoordinator *)self importAllFromBarButtonItem];
  }
}

- (id)actionMenuForImportButton
{
  v67[2] = *MEMORY[0x1E69E9840];
  objc_initWeak(&location, self);
  v3 = [(PUImportActionCoordinator *)self someItemsButNotAllAreSelected];
  if (MEMORY[0x1B8C6D660]())
  {
    v4 = MEMORY[0x1E69C3A08];
    v5 = [(PUImportActionCoordinator *)self importController];
    v6 = [v5 photoLibrary];
    v49 = [v4 sharedLibraryStatusProviderWithPhotoLibrary:v6];

    if ([v49 hasSharedLibraryOrPreview])
    {
      v45 = MEMORY[0x1E69DCC60];
      v46 = PLLocalizedFrameworkString();
      v7 = MEMORY[0x1E69DC628];
      v48 = PLLocalizedFrameworkString();
      v47 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"person.2"];
      v58[0] = MEMORY[0x1E69E9820];
      v58[1] = 3221225472;
      v58[2] = __54__PUImportActionCoordinator_actionMenuForImportButton__block_invoke_229;
      v58[3] = &unk_1E7B80890;
      objc_copyWeak(&v59, &location);
      v8 = [v7 actionWithTitle:v48 image:v47 identifier:0 handler:v58];
      v66[0] = v8;
      v9 = MEMORY[0x1E69DC628];
      v10 = PLLocalizedFrameworkString();
      v11 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"person"];
      v56[0] = MEMORY[0x1E69E9820];
      v56[1] = 3221225472;
      v56[2] = __54__PUImportActionCoordinator_actionMenuForImportButton__block_invoke_2;
      v56[3] = &unk_1E7B80890;
      objc_copyWeak(&v57, &location);
      v12 = [v9 actionWithTitle:v10 image:v11 identifier:0 handler:v56];
      v66[1] = v12;
      v13 = MEMORY[0x1E69DC628];
      v14 = PLLocalizedFrameworkString();
      v15 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"rectangle.stack.badge.plus"];
      v54[0] = MEMORY[0x1E69E9820];
      v54[1] = 3221225472;
      v54[2] = __54__PUImportActionCoordinator_actionMenuForImportButton__block_invoke_3;
      v54[3] = &unk_1E7B80890;
      objc_copyWeak(&v55, &location);
      v16 = [v13 actionWithTitle:v14 image:v15 identifier:0 handler:v54];
      v66[2] = v16;
      v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v66 count:3];
      v18 = [v45 menuWithTitle:v46 children:v17];

      [(PUImportActionCoordinator *)self setImportActionsMenu:v18];
      objc_destroyWeak(&v55);
      objc_destroyWeak(&v57);
      objc_destroyWeak(&v59);
    }

    else
    {
      v31 = @"IMPORT_ALL_TO_LIBRARY";
      if (v3)
      {
        v31 = @"IMPORT_SELECTED_TO_LIBRARY";
      }

      v32 = v31;
      v33 = MEMORY[0x1E69DC628];
      v34 = PLLocalizedFrameworkString();
      v35 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"photo.on.rectangle"];
      v52[0] = MEMORY[0x1E69E9820];
      v52[1] = 3221225472;
      v52[2] = __54__PUImportActionCoordinator_actionMenuForImportButton__block_invoke_251;
      v52[3] = &unk_1E7B80890;
      objc_copyWeak(&v53, &location);
      v36 = [v33 actionWithTitle:v34 image:v35 identifier:0 handler:v52];
      v65[0] = v36;
      v37 = MEMORY[0x1E69DC628];
      v38 = PLLocalizedFrameworkString();
      v39 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"rectangle.stack.badge.plus"];
      v50[0] = MEMORY[0x1E69E9820];
      v50[1] = 3221225472;
      v50[2] = __54__PUImportActionCoordinator_actionMenuForImportButton__block_invoke_252;
      v50[3] = &unk_1E7B80890;
      objc_copyWeak(&v51, &location);
      v40 = [v37 actionWithTitle:v38 image:v39 identifier:0 handler:v50];
      v65[1] = v40;
      v41 = [MEMORY[0x1E695DEC8] arrayWithObjects:v65 count:2];

      v42 = [MEMORY[0x1E69DCC60] menuWithTitle:&stru_1F2AC6818 children:v41];
      [(PUImportActionCoordinator *)self setImportActionsMenu:v42];

      objc_destroyWeak(&v51);
      objc_destroyWeak(&v53);
    }
  }

  else if (v3)
  {
    v19 = [(PUImportActionCoordinator *)self importActionsMenu];
    v20 = v19 == 0;

    if (v20)
    {
      v21 = MEMORY[0x1E69DC628];
      v22 = PLLocalizedFrameworkString();
      v23 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"square.and.arrow.down.on.square"];
      v62[0] = MEMORY[0x1E69E9820];
      v62[1] = 3221225472;
      v62[2] = __54__PUImportActionCoordinator_actionMenuForImportButton__block_invoke;
      v62[3] = &unk_1E7B80890;
      objc_copyWeak(&v63, &location);
      v24 = [v21 actionWithTitle:v22 image:v23 identifier:0 handler:v62];
      v67[0] = v24;
      v25 = MEMORY[0x1E69DC628];
      v26 = PLLocalizedFrameworkString();
      v27 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"square.and.arrow.down"];
      v60[0] = MEMORY[0x1E69E9820];
      v60[1] = 3221225472;
      v60[2] = __54__PUImportActionCoordinator_actionMenuForImportButton__block_invoke_216;
      v60[3] = &unk_1E7B80890;
      objc_copyWeak(&v61, &location);
      v28 = [v25 actionWithTitle:v26 image:v27 identifier:0 handler:v60];
      v67[1] = v28;
      v29 = [MEMORY[0x1E695DEC8] arrayWithObjects:v67 count:2];

      v30 = [MEMORY[0x1E69DCC60] menuWithTitle:&stru_1F2AC6818 children:v29];
      [(PUImportActionCoordinator *)self setImportActionsMenu:v30];

      objc_destroyWeak(&v61);
      objc_destroyWeak(&v63);
    }
  }

  v43 = [(PUImportActionCoordinator *)self importActionsMenu];
  objc_destroyWeak(&location);

  return v43;
}

void __54__PUImportActionCoordinator_actionMenuForImportButton__block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = _importActionCoordinatorLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v4 = [WeakRetained loggingPrefix];
    v6 = 138543362;
    v7 = v4;
    _os_log_impl(&dword_1B36F3000, v2, OS_LOG_TYPE_DEFAULT, "%{public}@: Import All menu action triggered. Beginning an import-all session", &v6, 0xCu);
  }

  v5 = objc_loadWeakRetained((a1 + 32));
  [v5 importAllFromBarButtonItem];
}

void __54__PUImportActionCoordinator_actionMenuForImportButton__block_invoke_216(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained importController];
  v4 = [v3 selectedItems];

  v5 = _importActionCoordinatorLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_loadWeakRetained((a1 + 32));
    v7 = [v6 loggingPrefix];
    v9 = 138543618;
    v10 = v7;
    v11 = 2048;
    v12 = [v4 count];
    _os_log_impl(&dword_1B36F3000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@: Import Selected menu button triggered. Beginning an import-selected session with %lu selected items.", &v9, 0x16u);
  }

  v8 = objc_loadWeakRetained((a1 + 32));
  [v8 _importItems:v4 allowDuplicates:1];
}

void __54__PUImportActionCoordinator_actionMenuForImportButton__block_invoke_229(uint64_t a1)
{
  PXTargetLibrarySetTypePreference();
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _startImportToLibrary];
}

void __54__PUImportActionCoordinator_actionMenuForImportButton__block_invoke_2(uint64_t a1)
{
  PXTargetLibrarySetTypePreference();
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _startImportToLibrary];
}

void __54__PUImportActionCoordinator_actionMenuForImportButton__block_invoke_3(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _showImportDestinationAlbumPicker];

  v3 = _importActionCoordinatorLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = objc_loadWeakRetained((a1 + 32));
    v5 = [v4 loggingPrefix];
    v6 = 138543362;
    v7 = v5;
    _os_log_impl(&dword_1B36F3000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@: Choose Album menu button triggered. Bringing up the Albums view.", &v6, 0xCu);
  }
}

void __54__PUImportActionCoordinator_actionMenuForImportButton__block_invoke_251(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = _importActionCoordinatorLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v4 = [WeakRetained loggingPrefix];
    v6 = 138543362;
    v7 = v4;
    _os_log_impl(&dword_1B36F3000, v2, OS_LOG_TYPE_DEFAULT, "%{public}@: Import All/Selected menu action triggered. Beginning an import-to-library session, without a destination album.", &v6, 0xCu);
  }

  v5 = objc_loadWeakRetained((a1 + 32));
  [v5 _startImportToLibrary];
}

void __54__PUImportActionCoordinator_actionMenuForImportButton__block_invoke_252(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _showImportDestinationAlbumPicker];

  v3 = _importActionCoordinatorLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = objc_loadWeakRetained((a1 + 32));
    v5 = [v4 loggingPrefix];
    v6 = 138543362;
    v7 = v5;
    _os_log_impl(&dword_1B36F3000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@: Choose Album menu button triggered. Bringing up the Albums picker.", &v6, 0xCu);
  }
}

- (void)configureImportActionsForBarButtonItem:(id)a3
{
  v4 = a3;
  v5 = [(PUImportActionCoordinator *)self actionMenuForImportButton];
  if (v5)
  {
    [v4 setMenu:v5];
    if (MEMORY[0x1B8C6D660]([v4 setPrimaryAction:0]))
    {
      [(PUImportActionCoordinator *)self someItemsButNotAllAreSelected];
      v16 = PLLocalizedFrameworkString();
    }

    else
    {
      v16 = PLLocalizedFrameworkString();
      [v4 setTitle:v16];
    }

    [v4 setTitle:v16];
  }

  else
  {
    [v4 setMenu:0];
    v6 = [(PUImportActionCoordinator *)self importAllAction];

    if (!v6)
    {
      objc_initWeak(&location, self);
      v7 = MEMORY[0x1E69DC628];
      v8 = PLLocalizedFrameworkString();
      v17 = MEMORY[0x1E69E9820];
      v18 = 3221225472;
      v19 = __68__PUImportActionCoordinator_configureImportActionsForBarButtonItem___block_invoke;
      v20 = &unk_1E7B80890;
      objc_copyWeak(&v21, &location);
      v9 = [v7 actionWithTitle:v8 image:0 identifier:0 handler:&v17];
      [(PUImportActionCoordinator *)self setImportAllAction:v9, v17, v18, v19, v20];

      objc_destroyWeak(&v21);
      objc_destroyWeak(&location);
    }

    v10 = [(PUImportActionCoordinator *)self importController];
    v11 = [v10 selectionManager];
    v12 = [v11 selectionSnapshot];
    [v12 isAnyItemSelected];

    v13 = PLLocalizedFrameworkString();
    v14 = [(PUImportActionCoordinator *)self importAllAction];
    [v14 setTitle:v13];

    v15 = [(PUImportActionCoordinator *)self importAllAction];
    [v4 setPrimaryAction:v15];
  }
}

void __68__PUImportActionCoordinator_configureImportActionsForBarButtonItem___block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = _importActionCoordinatorLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v4 = [WeakRetained loggingPrefix];
    v6 = 138543362;
    v7 = v4;
    _os_log_impl(&dword_1B36F3000, v2, OS_LOG_TYPE_DEFAULT, "%{public}@: Import All bar button tapped. Beginning an import-all session", &v6, 0xCu);
  }

  v5 = objc_loadWeakRetained((a1 + 32));
  [v5 importAllFromBarButtonItem];
}

- (PUImportActionCoordinator)initWithViewController:(id)a3 importController:(id)a4 loggingSource:(int64_t)a5
{
  v8 = a3;
  v9 = a4;
  v18.receiver = self;
  v18.super_class = PUImportActionCoordinator;
  v10 = [(PUImportActionCoordinator *)&v18 init];
  v11 = v10;
  if (v10)
  {
    objc_storeWeak(&v10->_viewController, v8);
    objc_storeStrong(&v11->_importController, a4);
    v11->_loggingSource = a5;
    if (a5)
    {
      v12 = @"OneUp";
    }

    else
    {
      v12 = @"Grid";
    }

    objc_storeStrong(&v11->_loggingPrefix, v12);
    v13 = objc_alloc_init(MEMORY[0x1E696ADA0]);
    percentageNumberFormatter = v11->_percentageNumberFormatter;
    v11->_percentageNumberFormatter = v13;

    [(NSNumberFormatter *)v11->_percentageNumberFormatter setNumberStyle:3];
    [(NSNumberFormatter *)v11->_percentageNumberFormatter setMaximumFractionDigits:0];
    [(NSNumberFormatter *)v11->_percentageNumberFormatter setMultiplier:&unk_1F2B7DCB8];
    v15 = objc_alloc_init(MEMORY[0x1E696AAF0]);
    byteCountFormatter = v11->_byteCountFormatter;
    v11->_byteCountFormatter = v15;
  }

  return v11;
}

+ (id)deleteAllConfirmationMessageForItems:(id)a3 importSource:(id)a4
{
  v28 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = [objc_alloc(MEMORY[0x1E696AD60]) initWithString:@"IMPORT_CONFIRM_DELETE_ALL_"];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v8 = v5;
  v9 = [v8 countByEnumeratingWithState:&v23 objects:v27 count:16];
  v10 = @"PHOTOS_";
  if (v9)
  {
    v11 = v9;
    v12 = *v24;
    v13 = 1;
    v14 = 1;
    while (2)
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v24 != v12)
        {
          objc_enumerationMutation(v8);
        }

        v16 = [*(*(&v23 + 1) + 8 * i) importAsset];
        if ([v16 isImage])
        {
          v13 = 0;
        }

        else
        {
          v14 = 0;
          v13 &= [v16 isMovie];
        }

        if ((v14 & 1) == 0 && !v13)
        {
          v10 = @"MEDIA_";
          goto LABEL_19;
        }
      }

      v11 = [v8 countByEnumeratingWithState:&v23 objects:v27 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }

    v17 = @"VIDEOS_";
    if (!v13)
    {
      v17 = @"MEDIA_";
    }

    if ((v14 & 1) == 0)
    {
      v10 = v17;
    }
  }

  else
  {
LABEL_19:
  }

  [v7 appendString:v10];
  v18 = [v6 productKind];
  v19 = [v6 name];
  if (([v18 isEqualToString:@"Camera"] & 1) != 0 || !objc_msgSend(v19, "length"))
  {
    [v7 appendString:v18];
    v21 = PLLocalizedFrameworkString();
  }

  else
  {
    [v7 appendString:@"FORMAT"];
    v20 = PLLocalizedFrameworkString();
    v21 = PUStringWithValidatedFormat();
  }

  return v21;
}

+ (int64_t)importBehaviorForBatteryState:(int64_t)a3 batteryLevel:(float)a4
{
  v5 = (a3 & 0xFFFFFFFFFFFFFFFELL) != 2;
  [objc_opt_class() lowBatteryLevelThresholdForDevice];
  v7 = v6 >= a4 && v5;
  if (v5 && a4 <= 0.05)
  {
    return 2;
  }

  else
  {
    return v7;
  }
}

+ (void)retrieveBatteryState:(int64_t *)a3 batteryLevel:(float *)a4
{
  v13 = [MEMORY[0x1E69DC938] currentDevice];
  v6 = 1;
  [v13 setBatteryMonitoringEnabled:1];
  v7 = [v13 batteryState];
  [v13 batteryLevel];
  v9 = v8;
  [v13 setBatteryMonitoringEnabled:0];
  v10 = [MEMORY[0x1E69C3620] sharedInstance];
  v11 = [v10 simulatedBatteryLevel];

  if (v11 == 2)
  {
    v9 = 1028443341;
  }

  else if (v11 == 1)
  {
    [objc_opt_class() lowBatteryLevelThresholdForDevice];
    v9 = v12;
    v6 = 1;
  }

  else
  {
    v6 = v7;
  }

  *a3 = v6;
  *a4 = v9;
}

+ (float)lowBatteryLevelThresholdForDevice
{
  if (lowBatteryLevelThresholdForDevice_onceToken != -1)
  {
    dispatch_once(&lowBatteryLevelThresholdForDevice_onceToken, &__block_literal_global_30293);
  }

  return *&lowBatteryLevelThresholdForDevice_lowThreshold;
}

float __62__PUImportActionCoordinator_lowBatteryLevelThresholdForDevice__block_invoke()
{
  v0 = [MEMORY[0x1E69DC938] currentDevice];
  v1 = [v0 userInterfaceIdiom];

  result = flt_1B3D0C990[(v1 & 0xFFFFFFFFFFFFFFFBLL) == 1];
  lowBatteryLevelThresholdForDevice_lowThreshold = LODWORD(result);
  return result;
}

@end