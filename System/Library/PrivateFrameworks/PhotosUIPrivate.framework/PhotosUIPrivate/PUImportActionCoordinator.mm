@interface PUImportActionCoordinator
+ (float)lowBatteryLevelThresholdForDevice;
+ (id)deleteAllConfirmationMessageForItems:(id)items importSource:(id)source;
+ (int64_t)importBehaviorForBatteryState:(int64_t)state batteryLevel:(float)level;
+ (void)retrieveBatteryState:(int64_t *)state batteryLevel:(float *)level;
- (BOOL)someItemsButNotAllAreSelected;
- (PUImportActionCoordinator)initWithViewController:(id)controller importController:(id)importController loggingSource:(int64_t)source;
- (PUImportActionCoordinatorDelegate)delegate;
- (UIViewController)viewController;
- (id)_albumPickerViewController;
- (id)actionMenuForImportButton;
- (void)_commitImportingItems:(id)items;
- (void)_deleteItems:(id)items;
- (void)_handleDiskAvailabilityRequestForItems:(id)items withSuccess:(BOOL)success numBytesPurged:(int64_t)purged additionalBytesRequired:(int64_t)required error:(id)error;
- (void)_importItems:(id)items allowDuplicates:(BOOL)duplicates;
- (void)_presentInsufficientDiskSpaceAlertForItems:(id)items;
- (void)_showAlbumsPickerForAssets:(id)assets;
- (void)_showImportDestinationAlbumPicker;
- (void)_startImportToLibrary;
- (void)checkBatteryLevelWithCompletion:(id)completion;
- (void)configureImportActionsForBarButtonItem:(id)item;
- (void)deleteItemsFromBarButtonItem:(id)item withOneUpHintItems:(id)items;
- (void)importAllFromBarButtonItem;
- (void)notifyDelegateOfImportCancellation;
- (void)picker:(id)picker didFinishPicking:(id)picking;
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

- (void)_deleteItems:(id)items
{
  itemsCopy = items;
  if (![itemsCopy count])
  {
    _PFAssertContinueHandler();
  }

  if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
  {
    v8 = "[PUImportActionCoordinator _deleteItems:]";
    _PFAssertContinueHandler();
  }

  delegate = [(PUImportActionCoordinator *)self delegate];
  [delegate actionCoordinatorWillBeginDelete:self];

  objc_initWeak(&location, self);
  importController = [(PUImportActionCoordinator *)self importController];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __42__PUImportActionCoordinator__deleteItems___block_invoke;
  v9[3] = &unk_1E7B7FA30;
  objc_copyWeak(&v10, &location);
  [importController deleteItems:itemsCopy withCompletionHandler:v9];

  delegate2 = [(PUImportActionCoordinator *)self delegate];
  [delegate2 actionCoordinatorDidBeginDelete:self];

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

- (void)deleteItemsFromBarButtonItem:(id)item withOneUpHintItems:(id)items
{
  v50 = *MEMORY[0x1E69E9840];
  itemCopy = item;
  itemsCopy = items;
  v8 = _importActionCoordinatorLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    loggingPrefix = [(PUImportActionCoordinator *)self loggingPrefix];
    *buf = 138543618;
    v47 = loggingPrefix;
    v48 = 2048;
    v49 = [itemsCopy count];
    _os_log_impl(&dword_1B36F3000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@: Delete bar button tapped. Hint items: %lu", buf, 0x16u);
  }

  v10 = [itemsCopy count];
  importController = [(PUImportActionCoordinator *)self importController];
  selectedItems = [importController selectedItems];

  v13 = [selectedItems count];
  if (!itemsCopy)
  {
    v21 = _importActionCoordinatorLog();
    v22 = os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT);
    if (!v13)
    {
      if (v22)
      {
        loggingPrefix2 = [(PUImportActionCoordinator *)self loggingPrefix];
        *buf = 138543362;
        v47 = loggingPrefix2;
        _os_log_impl(&dword_1B36F3000, v21, OS_LOG_TYPE_DEFAULT, "%{public}@: Showing 'Delete All' confirmation", buf, 0xCu);
      }

      v13 = PLLocalizedFrameworkString();
      importController2 = [(PUImportActionCoordinator *)self importController];
      dataSourceManager = [importController2 dataSourceManager];
      unfilteredDataSource = [dataSourceManager unfilteredDataSource];

      allItems = [unfilteredDataSource allItems];
      v26 = 1;
      goto LABEL_18;
    }

    if (v22)
    {
      loggingPrefix3 = [(PUImportActionCoordinator *)self loggingPrefix];
      *buf = 138543618;
      v47 = loggingPrefix3;
      v48 = 2048;
      v49 = v13;
      _os_log_impl(&dword_1B36F3000, v21, OS_LOG_TYPE_DEFAULT, "%{public}@: Showing delete confirmation action sheet for %lu items", buf, 0x16u);
    }

    allItems = selectedItems;
    unfilteredDataSource = [MEMORY[0x1E69C3610] importAssetsFromModels:allItems];
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
    loggingPrefix4 = [(PUImportActionCoordinator *)self loggingPrefix];
    *buf = 138543618;
    v47 = loggingPrefix4;
    v48 = 2048;
    v49 = v13;
    _os_log_impl(&dword_1B36F3000, v14, OS_LOG_TYPE_DEFAULT, "%{public}@: Showing delete confirmation action sheet for %lu hint items", buf, 0x16u);
  }

  if (v10 == 1)
  {
    allItems = itemsCopy;
    unfilteredDataSource = [MEMORY[0x1E69C3610] importAssetsFromModels:allItems];
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
    allItems = selectedItems;
    unfilteredDataSource = PULocalizedString(@"DELETE_BUTTON_TITLE_SELECTED_ITEM");
    v41 = v13;
    v13 = PUStringWithValidatedFormat();
    goto LABEL_17;
  }

  v26 = 0;
  allItems = 0;
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
  v44 = allItems;
  v32 = allItems;
  v33 = v13;
  v34 = [v31 actionWithTitle:v33 style:2 handler:v42];
  [v27 addAction:v34];

  popoverPresentationController = [v27 popoverPresentationController];
  v36 = popoverPresentationController;
  if (popoverPresentationController)
  {
    [popoverPresentationController setBarButtonItem:itemCopy];
  }

  viewController = [(PUImportActionCoordinator *)self viewController];
  [viewController presentViewController:v27 animated:1 completion:0];
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
  delegate = [(PUImportActionCoordinator *)self delegate];
  [delegate actionCoordinatorDidCancelImport:self];
}

- (void)_commitImportingItems:(id)items
{
  v19 = *MEMORY[0x1E69E9840];
  itemsCopy = items;
  v5 = _importActionCoordinatorLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    loggingPrefix = [(PUImportActionCoordinator *)self loggingPrefix];
    *buf = 138543618;
    v16 = loggingPrefix;
    v17 = 2048;
    v18 = [itemsCopy count];
    _os_log_impl(&dword_1B36F3000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@: Importing %tu items", buf, 0x16u);
  }

  delegate = [(PUImportActionCoordinator *)self delegate];
  [delegate actionCoordinatorWillBeginImport:self];

  objc_initWeak(buf, self);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __51__PUImportActionCoordinator__commitImportingItems___block_invoke;
  aBlock[3] = &unk_1E7B7F820;
  objc_copyWeak(&v14, buf);
  v8 = itemsCopy;
  v12 = v8;
  selfCopy = self;
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

- (void)_presentInsufficientDiskSpaceAlertForItems:(id)items
{
  itemsCopy = items;
  v31 = 0;
  v5 = [MEMORY[0x1E69C3608] itemsConstrainedByAvailableDiskSpaceFromItems:itemsCopy additionalBytesRequired:&v31];
  mEMORY[0x1E69C3620] = [MEMORY[0x1E69C3620] sharedInstance];
  simulatedDiskSpace = [mEMORY[0x1E69C3620] simulatedDiskSpace];

  if (simulatedDiskSpace != 3)
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
    v9 = [itemsCopy count];
    if (simulatedDiskSpace == 3 || v8 < v9)
    {
      goto LABEL_9;
    }

LABEL_10:
    v20 = MEMORY[0x1E696AEC0];
    currentDevice = [MEMORY[0x1E69DC938] currentDevice];
    model = [currentDevice model];
    v11 = [v20 stringWithFormat:@"NO_SPACE_MESSAGE_%@", model];

    v12 = PLLocalizedFrameworkString();
    currentDevice2 = [MEMORY[0x1E69DC938] currentDevice];
    localizedModel = [currentDevice2 localizedModel];
    v13 = PUStringWithValidatedFormat();

    v24 = MEMORY[0x1E69DC650];
    v25 = PLLocalizedFrameworkString();
    v16 = [v24 alertControllerWithTitle:v25 message:v13 preferredStyle:{1, localizedModel}];

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

  viewController = [(PUImportActionCoordinator *)self viewController];
  [viewController presentViewController:v16 animated:1 completion:0];
}

- (void)_handleDiskAvailabilityRequestForItems:(id)items withSuccess:(BOOL)success numBytesPurged:(int64_t)purged additionalBytesRequired:(int64_t)required error:(id)error
{
  successCopy = success;
  v55 = *MEMORY[0x1E69E9840];
  itemsCopy = items;
  errorCopy = error;
  v14 = _importActionCoordinatorLog();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    [(PUImportActionCoordinator *)self loggingPrefix];
    v15 = v40 = itemsCopy;
    v16 = @"NO";
    if (successCopy)
    {
      v16 = @"YES";
    }

    v17 = v16;
    byteCountFormatter = [(PUImportActionCoordinator *)self byteCountFormatter];
    v19 = [byteCountFormatter stringFromByteCount:purged];
    byteCountFormatter2 = [(PUImportActionCoordinator *)self byteCountFormatter];
    v21 = [byteCountFormatter2 stringFromByteCount:required];
    *buf = 138544386;
    v46 = v15;
    v47 = 2114;
    v48 = v17;
    v49 = 2114;
    v50 = v19;
    v51 = 2114;
    v52 = v21;
    v53 = 2112;
    v54 = errorCopy;
    _os_log_impl(&dword_1B36F3000, v14, OS_LOG_TYPE_DEFAULT, "%{public}@: Requesting disk space succeeded: %{public}@. Bytes purged: %{public}@, Additional bytes required: %{public}@, Error: %@", buf, 0x34u);

    itemsCopy = v40;
  }

  if (errorCopy)
  {
    v22 = [errorCopy code] != 1;
  }

  else
  {
    v22 = 1;
  }

  mEMORY[0x1E69C3620] = [MEMORY[0x1E69C3620] sharedInstance];
  simulatedDiskSpace = [mEMORY[0x1E69C3620] simulatedDiskSpace];

  if (v22 && simulatedDiskSpace)
  {
    v25 = _importActionCoordinatorLog();
    v26 = os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT);
    if (simulatedDiskSpace == 4)
    {
      if (v26)
      {
        loggingPrefix = [(PUImportActionCoordinator *)self loggingPrefix];
        *buf = 138543362;
        v46 = loggingPrefix;
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
      if (simulatedDiskSpace == 1)
      {
        if (v26)
        {
          loggingPrefix2 = [(PUImportActionCoordinator *)self loggingPrefix];
          *buf = 138543362;
          v46 = loggingPrefix2;
          _os_log_impl(&dword_1B36F3000, v25, OS_LOG_TYPE_DEFAULT, "%{public}@: Simulating disk space ALWAYS available", buf, 0xCu);
        }

        errorCopy = 0;
        goto LABEL_16;
      }

      if (v26)
      {
        loggingPrefix3 = [(PUImportActionCoordinator *)self loggingPrefix];
        *buf = 138543362;
        v46 = loggingPrefix3;
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

    errorCopy = v38;
  }

  else if (successCopy)
  {
LABEL_16:
    [(PUImportActionCoordinator *)self _commitImportingItems:itemsCopy];
    goto LABEL_29;
  }

  if (errorCopy)
  {
    v39 = v22;
  }

  else
  {
    v39 = 0;
  }

  if (v39)
  {
    [(PUImportActionCoordinator *)self _presentInsufficientDiskSpaceAlertForItems:itemsCopy];
  }

LABEL_29:
}

- (void)_importItems:(id)items allowDuplicates:(BOOL)duplicates
{
  itemsCopy = items;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __58__PUImportActionCoordinator__importItems_allowDuplicates___block_invoke;
  v8[3] = &unk_1E7B7DF48;
  v8[4] = self;
  v9 = itemsCopy;
  duplicatesCopy = duplicates;
  v7 = itemsCopy;
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
  importController = [(PUImportActionCoordinator *)self importController];
  [importController stopImport];
}

- (void)checkBatteryLevelWithCompletion:(id)completion
{
  completionCopy = completion;
  v44 = 0;
  v43 = 0;
  [objc_opt_class() retrieveBatteryState:&v44 batteryLevel:&v43];
  v5 = objc_opt_class();
  LODWORD(v6) = v43;
  v7 = [v5 importBehaviorForBatteryState:v44 batteryLevel:v6];
  currentDevice = [MEMORY[0x1E69DC938] currentDevice];
  model = [currentDevice model];

  if ([(__CFString *)model hasPrefix:@"iPod"])
  {

    model = @"iPod";
  }

  percentageNumberFormatter = [(PUImportActionCoordinator *)self percentageNumberFormatter];
  LODWORD(v11) = v43;
  v12 = [MEMORY[0x1E696AD98] numberWithFloat:v11];
  v13 = [percentageNumberFormatter stringFromNumber:v12];

  if (v7 == 1)
  {
    v14 = [MEMORY[0x1E696AD60] stringWithString:@"IMPORT_BATTERY_LOW_MESSAGE_"];
    [v14 appendString:model];
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
    v30 = completionCopy;
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

    viewController = [(PUImportActionCoordinator *)self viewController];
    [viewController presentViewController:v27 animated:1 completion:0];

    goto LABEL_7;
  }

  if (v7 == 2)
  {
    v14 = [MEMORY[0x1E696AD60] stringWithString:@"IMPORT_BATTERY_CRITICAL_MESSAGE_"];
    [v14 appendString:model];
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
    v42 = completionCopy;
    v22 = [v20 actionWithTitle:v21 style:1 handler:v41];
    [v19 addAction:v22];

    viewController2 = [(PUImportActionCoordinator *)self viewController];
    [viewController2 presentViewController:v19 animated:1 completion:0];

LABEL_7:
    goto LABEL_8;
  }

  if (completionCopy && !v7)
  {
    (*(completionCopy + 2))(completionCopy, 1);
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
  importController = [(PUImportActionCoordinator *)self importController];
  dataSourceManager = [importController dataSourceManager];
  unfilteredDataSource = [dataSourceManager unfilteredDataSource];

  numberOfAlreadyImportedItems = [unfilteredDataSource numberOfAlreadyImportedItems];
  objc_initWeak(&location, self);
  if (numberOfAlreadyImportedItems < 1)
  {
    v16 = _importActionCoordinatorLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      loggingPrefix = [(PUImportActionCoordinator *)self loggingPrefix];
      *buf = 138543362;
      v44 = loggingPrefix;
      _os_log_impl(&dword_1B36F3000, v16, OS_LOG_TYPE_DEFAULT, "%{public}@: No duplicates found, performing Import All...", buf, 0xCu);
    }

    allItems = [unfilteredDataSource allItems];
    [(PUImportActionCoordinator *)self _importItems:allItems allowDuplicates:0];
  }

  else
  {
    if ([unfilteredDataSource numberOfNotYetImportedItems])
    {
      v7 = _importActionCoordinatorLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        loggingPrefix2 = [(PUImportActionCoordinator *)self loggingPrefix];
        *buf = 138543362;
        v44 = loggingPrefix2;
        _os_log_impl(&dword_1B36F3000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@: Duplicates found. Presenting alert.", buf, 0xCu);
      }

      v9 = MEMORY[0x1E69DC650];
      v10 = PLLocalizedFrameworkString();
      v11 = PLLocalizedFrameworkString();
      allItems = [v9 alertControllerWithTitle:v10 message:v11 preferredStyle:1];

      v13 = MEMORY[0x1E69DC648];
      v14 = PLLocalizedFrameworkString();
      v39[0] = MEMORY[0x1E69E9820];
      v39[1] = 3221225472;
      v39[2] = __55__PUImportActionCoordinator_importAllFromBarButtonItem__block_invoke;
      v39[3] = &unk_1E7B77670;
      objc_copyWeak(&v41, &location);
      v40 = unfilteredDataSource;
      v15 = [v13 actionWithTitle:v14 style:0 handler:v39];
      [allItems addAction:v15];

      objc_destroyWeak(&v41);
    }

    else
    {
      v18 = _importActionCoordinatorLog();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        loggingPrefix3 = [(PUImportActionCoordinator *)self loggingPrefix];
        *buf = 138543362;
        v44 = loggingPrefix3;
        _os_log_impl(&dword_1B36F3000, v18, OS_LOG_TYPE_DEFAULT, "%{public}@: All items to import are dupes. Presenting alert.", buf, 0xCu);
      }

      v20 = MEMORY[0x1E69DC650];
      v21 = PLLocalizedFrameworkString();
      v22 = PLLocalizedFrameworkString();
      allItems = [v20 alertControllerWithTitle:v21 message:v22 preferredStyle:1];
    }

    v23 = MEMORY[0x1E69DC648];
    v24 = PLLocalizedFrameworkString();
    v36[0] = MEMORY[0x1E69E9820];
    v36[1] = 3221225472;
    v36[2] = __55__PUImportActionCoordinator_importAllFromBarButtonItem__block_invoke_275;
    v36[3] = &unk_1E7B77670;
    objc_copyWeak(&v38, &location);
    v25 = unfilteredDataSource;
    v37 = v25;
    v26 = [v23 actionWithTitle:v24 style:0 handler:v36];
    [allItems addAction:v26];

    v27 = MEMORY[0x1E69DC648];
    v28 = PLLocalizedFrameworkString();
    v31 = MEMORY[0x1E69E9820];
    v32 = 3221225472;
    v33 = __55__PUImportActionCoordinator_importAllFromBarButtonItem__block_invoke_279;
    v34 = &unk_1E7B7FC80;
    objc_copyWeak(&v35, &location);
    v29 = [v27 actionWithTitle:v28 style:1 handler:&v31];
    [allItems addAction:{v29, v31, v32, v33, v34}];

    if ([(PUImportActionCoordinator *)self ppt_alwaysImportDuplicatesNoPrompt])
    {
      allItems2 = [v25 allItems];
      [(PUImportActionCoordinator *)self _importItems:allItems2 allowDuplicates:1];
    }

    else
    {
      allItems2 = [(PUImportActionCoordinator *)self viewController];
      [allItems2 presentViewController:allItems animated:1 completion:0];
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
    importController = [(PUImportActionCoordinator *)self importController];
    selectedItems = [importController selectedItems];

    [(PUImportActionCoordinator *)self _importItems:selectedItems allowDuplicates:1];
  }

  else
  {

    [(PUImportActionCoordinator *)self importAllFromBarButtonItem];
  }
}

- (BOOL)someItemsButNotAllAreSelected
{
  importController = [(PUImportActionCoordinator *)self importController];
  selectedItems = [importController selectedItems];

  importController2 = [(PUImportActionCoordinator *)self importController];
  dataSourceManager = [importController2 dataSourceManager];
  unfilteredDataSource = [dataSourceManager unfilteredDataSource];

  if ([selectedItems count])
  {
    numberOfItems = [unfilteredDataSource numberOfItems];
    v9 = numberOfItems != [selectedItems count];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)picker:(id)picker didFinishPicking:(id)picking
{
  pickingCopy = picking;
  viewController = [(PUImportActionCoordinator *)self viewController];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __53__PUImportActionCoordinator_picker_didFinishPicking___block_invoke;
  v8[3] = &unk_1E7B80C38;
  v9 = pickingCopy;
  selfCopy = self;
  v7 = pickingCopy;
  [viewController dismissViewControllerAnimated:1 completion:v8];
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
  importController = [(PUImportActionCoordinator *)self importController];
  photoLibrary = [importController photoLibrary];
  v5 = [PUPickerUtilities pickerConfigurationForAlbumPickerForPhotoLibrary:photoLibrary];

  v6 = [objc_alloc(MEMORY[0x1E69790F8]) initWithConfiguration:v5];
  [v6 setDelegate:self];
  v7 = v6;
  [v7 setModalInPresentation:1];

  return v7;
}

- (void)_showAlbumsPickerForAssets:(id)assets
{
  _albumPickerViewController = [(PUImportActionCoordinator *)self _albumPickerViewController];
  if (_albumPickerViewController)
  {
    viewController = [(PUImportActionCoordinator *)self viewController];
    [viewController presentViewController:_albumPickerViewController animated:1 completion:0];
  }

  else
  {
    viewController = PLUIGetLog();
    if (os_log_type_enabled(viewController, OS_LOG_TYPE_ERROR))
    {
      *v6 = 0;
      _os_log_impl(&dword_1B36F3000, viewController, OS_LOG_TYPE_ERROR, "Import: Failed to create album picker for adding assets to album.", v6, 2u);
    }
  }
}

- (void)_showImportDestinationAlbumPicker
{
  importController = [(PUImportActionCoordinator *)self importController];
  selectedItems = [importController selectedItems];

  if ([selectedItems count])
  {
    allItems = selectedItems;
  }

  else
  {
    importController2 = [(PUImportActionCoordinator *)self importController];
    dataSourceManager = [importController2 dataSourceManager];
    unfilteredDataSource = [dataSourceManager unfilteredDataSource];

    allItems = [unfilteredDataSource allItems];
  }

  [(PUImportActionCoordinator *)self _showAlbumsPickerForAssets:allItems];
}

- (void)_startImportToLibrary
{
  importController = [(PUImportActionCoordinator *)self importController];
  selectedItems = [importController selectedItems];

  if ([selectedItems count])
  {
    [(PUImportActionCoordinator *)self _importItems:selectedItems allowDuplicates:1];
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
  someItemsButNotAllAreSelected = [(PUImportActionCoordinator *)self someItemsButNotAllAreSelected];
  if (MEMORY[0x1B8C6D660]())
  {
    v4 = MEMORY[0x1E69C3A08];
    importController = [(PUImportActionCoordinator *)self importController];
    photoLibrary = [importController photoLibrary];
    v49 = [v4 sharedLibraryStatusProviderWithPhotoLibrary:photoLibrary];

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
      if (someItemsButNotAllAreSelected)
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

  else if (someItemsButNotAllAreSelected)
  {
    importActionsMenu = [(PUImportActionCoordinator *)self importActionsMenu];
    v20 = importActionsMenu == 0;

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

  importActionsMenu2 = [(PUImportActionCoordinator *)self importActionsMenu];
  objc_destroyWeak(&location);

  return importActionsMenu2;
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

- (void)configureImportActionsForBarButtonItem:(id)item
{
  itemCopy = item;
  actionMenuForImportButton = [(PUImportActionCoordinator *)self actionMenuForImportButton];
  if (actionMenuForImportButton)
  {
    [itemCopy setMenu:actionMenuForImportButton];
    if (MEMORY[0x1B8C6D660]([itemCopy setPrimaryAction:0]))
    {
      [(PUImportActionCoordinator *)self someItemsButNotAllAreSelected];
      v16 = PLLocalizedFrameworkString();
    }

    else
    {
      v16 = PLLocalizedFrameworkString();
      [itemCopy setTitle:v16];
    }

    [itemCopy setTitle:v16];
  }

  else
  {
    [itemCopy setMenu:0];
    importAllAction = [(PUImportActionCoordinator *)self importAllAction];

    if (!importAllAction)
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

    importController = [(PUImportActionCoordinator *)self importController];
    selectionManager = [importController selectionManager];
    selectionSnapshot = [selectionManager selectionSnapshot];
    [selectionSnapshot isAnyItemSelected];

    v13 = PLLocalizedFrameworkString();
    importAllAction2 = [(PUImportActionCoordinator *)self importAllAction];
    [importAllAction2 setTitle:v13];

    importAllAction3 = [(PUImportActionCoordinator *)self importAllAction];
    [itemCopy setPrimaryAction:importAllAction3];
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

- (PUImportActionCoordinator)initWithViewController:(id)controller importController:(id)importController loggingSource:(int64_t)source
{
  controllerCopy = controller;
  importControllerCopy = importController;
  v18.receiver = self;
  v18.super_class = PUImportActionCoordinator;
  v10 = [(PUImportActionCoordinator *)&v18 init];
  v11 = v10;
  if (v10)
  {
    objc_storeWeak(&v10->_viewController, controllerCopy);
    objc_storeStrong(&v11->_importController, importController);
    v11->_loggingSource = source;
    if (source)
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

+ (id)deleteAllConfirmationMessageForItems:(id)items importSource:(id)source
{
  v28 = *MEMORY[0x1E69E9840];
  itemsCopy = items;
  sourceCopy = source;
  v7 = [objc_alloc(MEMORY[0x1E696AD60]) initWithString:@"IMPORT_CONFIRM_DELETE_ALL_"];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v8 = itemsCopy;
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

        importAsset = [*(*(&v23 + 1) + 8 * i) importAsset];
        if ([importAsset isImage])
        {
          v13 = 0;
        }

        else
        {
          v14 = 0;
          v13 &= [importAsset isMovie];
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
  productKind = [sourceCopy productKind];
  name = [sourceCopy name];
  if (([productKind isEqualToString:@"Camera"] & 1) != 0 || !objc_msgSend(name, "length"))
  {
    [v7 appendString:productKind];
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

+ (int64_t)importBehaviorForBatteryState:(int64_t)state batteryLevel:(float)level
{
  v5 = (state & 0xFFFFFFFFFFFFFFFELL) != 2;
  [objc_opt_class() lowBatteryLevelThresholdForDevice];
  v7 = v6 >= level && v5;
  if (v5 && level <= 0.05)
  {
    return 2;
  }

  else
  {
    return v7;
  }
}

+ (void)retrieveBatteryState:(int64_t *)state batteryLevel:(float *)level
{
  currentDevice = [MEMORY[0x1E69DC938] currentDevice];
  v6 = 1;
  [currentDevice setBatteryMonitoringEnabled:1];
  batteryState = [currentDevice batteryState];
  [currentDevice batteryLevel];
  v9 = v8;
  [currentDevice setBatteryMonitoringEnabled:0];
  mEMORY[0x1E69C3620] = [MEMORY[0x1E69C3620] sharedInstance];
  simulatedBatteryLevel = [mEMORY[0x1E69C3620] simulatedBatteryLevel];

  if (simulatedBatteryLevel == 2)
  {
    v9 = 1028443341;
  }

  else if (simulatedBatteryLevel == 1)
  {
    [objc_opt_class() lowBatteryLevelThresholdForDevice];
    v9 = v12;
    v6 = 1;
  }

  else
  {
    v6 = batteryState;
  }

  *state = v6;
  *level = v9;
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