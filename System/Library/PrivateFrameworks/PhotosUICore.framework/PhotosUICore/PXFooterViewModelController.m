@interface PXFooterViewModelController
+ (OS_dispatch_queue)updateQueue;
+ (id)_updateQueue_viewModelConfigurationWithStatus:(id)a3 counts:(id *)a4 photoLibrary:(id)a5;
+ (void)loadAsyncUpdatesImmediately;
- (PXFooterViewModelController)init;
- (PXFooterViewModelController)initWithPhotoLibrary:(id)a3 provideLibraryCounts:(BOOL)a4 provideCloudQuotaOffers:(BOOL)a5;
- (PXFooterViewModelControllerDelegate)delegate;
- (id)presentingViewControllerForCloudQuotaControllerHelper:(id)a3;
- (void)_invalidateFooterViewModel;
- (void)_mainQueue_finishUpdateWithCPLStatus:(id)a3 viewModelConfiguration:(id)a4;
- (void)_prepareCounts;
- (void)_setNeedsUpdate;
- (void)_updateFooterViewModel;
- (void)_updateIfNeeded;
- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5;
- (void)setIsActive:(BOOL)a3;
@end

@implementation PXFooterViewModelController

+ (OS_dispatch_queue)updateQueue
{
  if (updateQueue_onceToken != -1)
  {
    dispatch_once(&updateQueue_onceToken, &__block_literal_global_229);
  }

  v3 = updateQueue_queue;

  return v3;
}

void __42__PXFooterViewModelController_updateQueue__block_invoke()
{
  v0 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v1 = dispatch_queue_attr_make_with_qos_class(v0, QOS_CLASS_UTILITY, 0);
  attr = dispatch_queue_attr_make_initially_inactive(v1);

  v2 = dispatch_queue_create("com.apple.PXFooterViewModelController.Update", attr);
  v3 = updateQueue_queue;
  updateQueue_queue = v2;

  v4 = [off_1E7721858 sharedScheduler];
  [v4 scheduleDeferredMainQueueTask:&__block_literal_global_233];
}

- (PXFooterViewModelControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (id)presentingViewControllerForCloudQuotaControllerHelper:(id)a3
{
  v4 = [(PXFooterViewModelController *)self delegate];
  if (!v4)
  {
    PXAssertGetLog();
  }

  v5 = [v4 presentingViewControllerForFooterViewModelController:self];

  return v5;
}

- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5
{
  v6 = a4;
  v9 = a3;
  if (PXAssetsDataSourceCountsControllerObserverContext == a5)
  {
    if (v6)
    {
LABEL_4:
      v11 = v9;
      [(PXFooterViewModelController *)self _invalidateFooterViewModel];
      v9 = v11;
    }
  }

  else
  {
    if (PXCPLUIStatusProviderObservationContext != a5)
    {
      v10 = [MEMORY[0x1E696AAA8] currentHandler];
      [v10 handleFailureInMethod:a2 object:self file:@"PXFooterViewModelController.m" lineNumber:356 description:@"Code which should be unreachable has been reached"];

      abort();
    }

    if ((v6 & 0x3FF) != 0)
    {
      goto LABEL_4;
    }
  }
}

- (void)_mainQueue_finishUpdateWithCPLStatus:(id)a3 viewModelConfiguration:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ((PXCPLUIStatusHasImportantInformation(v6) & 1) != 0 || [(PXCloudQuotaControllerHelper *)self->_cloudQuotaHelper hasAnyInformationViews])
  {
    v8 = 1;
  }

  else
  {
    v9 = +[PXFooterSettings sharedInstance];
    v8 = [v9 simulateImportantInformation];
  }

  if (PXCloudQuotaCanShowInformationView(v6))
  {
    v10 = [(PXCloudQuotaControllerHelper *)self->_cloudQuotaHelper informationView];
    v11 = [(PXCloudQuotaControllerHelper *)self->_cloudQuotaHelper premiumInformationView];
    v13 = [v6 pauseReason] == 2 && v10 != 0;
  }

  else
  {
    v10 = 0;
    v11 = 0;
    v13 = 0;
  }

  v14 = [(PXFooterViewModelController *)self footerViewModel];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __91__PXFooterViewModelController__mainQueue_finishUpdateWithCPLStatus_viewModelConfiguration___block_invoke;
  v18[3] = &unk_1E772E7D0;
  v20 = v11;
  v21 = v7;
  v22 = v8;
  v19 = v10;
  v23 = v13;
  v15 = v11;
  v16 = v10;
  v17 = v7;
  [v14 performChanges:v18];
}

void __91__PXFooterViewModelController__mainQueue_finishUpdateWithCPLStatus_viewModelConfiguration___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  (*(*(a1 + 48) + 16))();
  [v3 setHasImportantInformation:*(a1 + 56)];
  [v3 setAccessoryView:*(a1 + 32)];
  [v3 setTopAccessoryView:*(a1 + 40)];
  if (*(a1 + 57) == 1)
  {
    [v3 setSubtitle1Style:1];
  }
}

- (void)_updateFooterViewModel
{
  v3 = [(PXCPLUIStatusProvider *)self->_cplUIStatusProvider status];
  v4 = [v3 copy];

  v17 = 0uLL;
  v18 = 0;
  countsController = self->_countsController;
  if (countsController)
  {
    [(PXAssetsDataSourceCountsController *)countsController counts];
  }

  v6 = self->_photoLibrary;
  objc_initWeak(&location, self);
  v7 = +[PXFooterViewModelController updateQueue];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __53__PXFooterViewModelController__updateFooterViewModel__block_invoke;
  v10[3] = &unk_1E772E7A8;
  v14 = v17;
  v15 = v18;
  v11 = v4;
  v12 = v6;
  v8 = v6;
  v9 = v4;
  objc_copyWeak(&v13, &location);
  dispatch_async(v7, v10);

  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
}

void __53__PXFooterViewModelController__updateFooterViewModel__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v10 = *(a1 + 56);
  v11 = *(a1 + 72);
  v4 = [PXFooterViewModelController _updateQueue_viewModelConfigurationWithStatus:v2 counts:&v10 photoLibrary:v3];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __53__PXFooterViewModelController__updateFooterViewModel__block_invoke_2;
  block[3] = &unk_1E773F368;
  objc_copyWeak(&v9, (a1 + 48));
  v7 = *(a1 + 32);
  v8 = v4;
  v5 = v4;
  dispatch_async(MEMORY[0x1E69E96A0], block);

  objc_destroyWeak(&v9);
}

void __53__PXFooterViewModelController__updateFooterViewModel__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _mainQueue_finishUpdateWithCPLStatus:*(a1 + 32) viewModelConfiguration:*(a1 + 40)];
}

- (void)_invalidateFooterViewModel
{
  v2 = [(PXFooterViewModelController *)self updater];
  [v2 setNeedsUpdateOf:sel__updateFooterViewModel];
}

- (void)_prepareCounts
{
  v9 = [(PHPhotoLibrary *)self->_photoLibrary librarySpecificFetchOptions];
  [v9 setIncludeAllPhotosSmartAlbum:1];
  v3 = [MEMORY[0x1E6978650] fetchAssetCollectionsWithType:2 subtype:1000000205 options:v9];
  v4 = [[PXPhotosDataSourceConfiguration alloc] initWithCollectionListFetchResult:v3 options:3];
  v5 = [[PXPhotosDataSource alloc] initWithPhotosDataSourceConfiguration:v4];
  v6 = [[PXPhotoKitAssetsDataSourceManager alloc] initWithPhotosDataSource:v5];
  v7 = [[off_1E77214A8 alloc] initWithAssetsDataSourceManager:v6];
  countsController = self->_countsController;
  self->_countsController = v7;

  [(PXAssetsDataSourceCountsController *)self->_countsController registerChangeObserver:self context:PXAssetsDataSourceCountsControllerObserverContext];
  [(PXPhotoKitAssetsDataSourceManager *)v6 performChanges:&__block_literal_global_218];
  [(PXAssetsDataSourceCountsController *)self->_countsController prepareCountsIfNeeded];
}

- (void)_setNeedsUpdate
{
  v2 = [(PXFooterViewModelController *)self updateCoalescer];
  [v2 inputEvent];
}

- (void)_updateIfNeeded
{
  if ([(PXFooterViewModelController *)self isActive])
  {
    v3 = [(PXFooterViewModelController *)self updater];
    [v3 updateIfNeeded];
  }
}

- (void)setIsActive:(BOOL)a3
{
  if (self->_isActive != a3)
  {
    self->_isActive = a3;
    [(PXFooterViewModelController *)self _updateIfNeeded];
  }
}

- (PXFooterViewModelController)initWithPhotoLibrary:(id)a3 provideLibraryCounts:(BOOL)a4 provideCloudQuotaOffers:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v10 = a3;
  if (!v10)
  {
    v25 = [MEMORY[0x1E696AAA8] currentHandler];
    [v25 handleFailureInMethod:a2 object:self file:@"PXFooterViewModelController.m" lineNumber:61 description:{@"Invalid parameter not satisfying: %@", @"photoLibrary"}];
  }

  v29.receiver = self;
  v29.super_class = PXFooterViewModelController;
  v11 = [(PXFooterViewModelController *)&v29 init];
  if (v11)
  {
    v12 = [off_1E7721548 delayedCoalescerWithDelay:1.0];
    updateCoalescer = v11->_updateCoalescer;
    v11->_updateCoalescer = v12;

    [(PXEventCoalescer *)v11->_updateCoalescer registerObserver:v11];
    v14 = [[off_1E7721940 alloc] initWithTarget:v11 needsUpdateSelector:sel__setNeedsUpdate];
    updater = v11->_updater;
    v11->_updater = v14;

    [(PXUpdater *)v11->_updater addUpdateSelector:sel__updateFooterViewModel];
    v16 = objc_alloc_init(off_1E7721588);
    footerViewModel = v11->_footerViewModel;
    v11->_footerViewModel = v16;

    objc_storeStrong(&v11->_photoLibrary, a3);
    if (v6)
    {
      objc_initWeak(&location, v11);
      v18 = +[PXFooterViewModelController updateQueue];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __97__PXFooterViewModelController_initWithPhotoLibrary_provideLibraryCounts_provideCloudQuotaOffers___block_invoke;
      block[3] = &unk_1E774C318;
      objc_copyWeak(&v27, &location);
      dispatch_async(v18, block);

      objc_destroyWeak(&v27);
      objc_destroyWeak(&location);
    }

    v19 = [[PXPhotoKitCPLActionManager alloc] initWithPhotoLibrary:v10];
    v20 = [[PXCPLUIStatusProvider alloc] initWithPhotoLibrary:v10 actionManager:v19];
    cplUIStatusProvider = v11->_cplUIStatusProvider;
    v11->_cplUIStatusProvider = v20;

    [(PXCPLUIStatusProvider *)v11->_cplUIStatusProvider registerChangeObserver:v11 context:PXCPLUIStatusProviderObservationContext];
    if (v5)
    {
      v22 = objc_alloc_init(PXCloudQuotaControllerHelper);
      cloudQuotaHelper = v11->_cloudQuotaHelper;
      v11->_cloudQuotaHelper = v22;

      [(PXCloudQuotaControllerHelper *)v11->_cloudQuotaHelper setDelegate:v11];
    }
  }

  return v11;
}

void __97__PXFooterViewModelController_initWithPhotoLibrary_provideLibraryCounts_provideCloudQuotaOffers___block_invoke(uint64_t a1)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __97__PXFooterViewModelController_initWithPhotoLibrary_provideLibraryCounts_provideCloudQuotaOffers___block_invoke_2;
  block[3] = &unk_1E774C318;
  objc_copyWeak(&v2, (a1 + 32));
  dispatch_async(MEMORY[0x1E69E96A0], block);
  objc_destroyWeak(&v2);
}

void __97__PXFooterViewModelController_initWithPhotoLibrary_provideLibraryCounts_provideCloudQuotaOffers___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _prepareCounts];
}

- (PXFooterViewModelController)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PXFooterViewModelController.m" lineNumber:57 description:{@"%s is not available as initializer", "-[PXFooterViewModelController init]"}];

  abort();
}

+ (id)_updateQueue_viewModelConfigurationWithStatus:(id)a3 counts:(id *)a4 photoLibrary:(id)a5
{
  v104 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a5;
  v10 = [a1 updateQueue];
  dispatch_assert_queue_V2(v10);

  var1 = a4->var1;
  var2 = a4->var2;
  if (a4->var0 == 0x7FFFFFFFFFFFFFFFLL || var1 == 0x7FFFFFFFFFFFFFFFLL || var2 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v16 = PXLocalizedStringFromTable(@"PXCuratedLibraryLoadingCountsDescription", @"PhotosUICore");
    v15 = 0;
  }

  else
  {
    v15 = var1 + a4->var0 + var2;
    v16 = PLLocalizedCountDescription();
  }

  v97 = 0;
  v17 = [v9 hasSyncProgressReturningImportOperations:&v97];

  if (v17)
  {
    v18 = PLProgressDescription();
    v19 = PLAlbumImportOperationDebugDescription();
    v20 = PLUserStatusUIGetLog();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543874;
      v99 = a1;
      v100 = 2114;
      *v101 = v18;
      *&v101[8] = 2114;
      *v102 = v19;
      _os_log_impl(&dword_1A3C1C000, v20, OS_LOG_TYPE_DEFAULT, "%{public}@ Providing status for import operation: %{public}@ (%{public}@)", buf, 0x20u);
    }
  }

  else
  {
    v18 = 0;
  }

  v78 = v8;
  if (v8)
  {
    if (v16)
    {
      v21 = [v8 referencedItemsDescription];
    }

    else
    {
      v21 = 0;
    }

    v65 = v15;
    v67 = [v8 stateDescription];

    v68 = [v8 failureDescription];
    v34 = [v8 internalInformationMessage];
    v29 = [v8 isPaused];
    [v8 progress];
    v33 = v35;
    v74 = [v8 actionTitle];
    v72 = [v8 actionConfirmationAlertTitle];
    v36 = [v8 actionConfirmationAlertSubtitle];
    v37 = [v8 actionConfirmationAlertButtonTitle];
    v38 = [v8 action];
    v70 = v38;
    if (v38)
    {
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __97__PXFooterViewModelController__updateQueue_viewModelConfigurationWithStatus_counts_photoLibrary___block_invoke;
      aBlock[3] = &unk_1E774C2F0;
      v96 = v38;
      v95 = v8;
      v69 = _Block_copy(aBlock);
    }

    else
    {
      v69 = 0;
    }

    v76 = v34;
    v71 = v36;
    if (!v29 || [v8 pauseReason] == 2 || objc_msgSend(v8, "pauseReason") == 1 || !objc_msgSend(v8, "pauseReason"))
    {
      v66 = 0;
    }

    else
    {
      v39 = [v8 pauseReason];
      if (v39 > 0x12)
      {
        v40 = 0;
      }

      else
      {
        v40 = off_1E7748A00[v39];
      }

      v62 = v40;
      v63 = PLUserStatusUIGetLog();
      if (os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543618;
        v99 = a1;
        v100 = 2114;
        *v101 = v62;
        _os_log_impl(&dword_1A3C1C000, v63, OS_LOG_TYPE_DEFAULT, "%{public}@ Providing badge to status – reason: (%{public}@)", buf, 0x16u);
      }

      v66 = 1;
    }

    v41 = v97;
    v42 = [v8 inResetSync];
    v43 = v42;
    if ((v41 & 0x10) != 0 || v42)
    {
      v64 = v21;
      v44 = a1;
      v45 = v41 & 0x10;
      v46 = [v8 numberOfPhotoAssets];
      v47 = [v8 numberOfVideoAssets];
      v48 = v47 + v46 + [v8 numberOfOtherAssets];
      if (v48 <= v65)
      {
        a1 = v44;
      }

      else
      {
        v49 = PLLocalizedCountDescription();

        v33 = v65 / v48;
        v50 = PLUserStatusUIGetLog();
        a1 = v44;
        if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138544130;
          v99 = v44;
          v100 = 1024;
          *v101 = v45 >> 4;
          *&v101[4] = 1024;
          *&v101[6] = v43;
          *v102 = 2048;
          *&v102[2] = v33;
          _os_log_impl(&dword_1A3C1C000, v50, OS_LOG_TYPE_DEFAULT, "%{public}@ Providing status for rebuild: %d, reset: %d, progress: %f", buf, 0x22u);
        }

        v16 = v49;
      }

      v26 = v37;
      v23 = v16;
      if (v45)
      {
        v22 = PXLocalizedStringFromTable(@"PXCPLStatus_Rebuild", @"PhotosUICore");

        v51 = PLUserStatusUIGetLog();
        if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          v99 = a1;
          _os_log_impl(&dword_1A3C1C000, v51, OS_LOG_TYPE_DEFAULT, "%{public}@ Providing rebuild placeholder status title", buf, 0xCu);
        }

        v31 = v68;
      }

      else
      {
        v22 = v67;
        v31 = v68;
      }

      v32 = v64;
    }

    else
    {
      v32 = v21;
      v26 = v37;
      v23 = v16;
      v22 = v67;
      v31 = v68;
    }

    v52 = PLUserStatusUIGetLog();
    if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138544130;
      v99 = a1;
      v100 = 2114;
      *v101 = v23;
      *&v101[8] = 2114;
      *v102 = v22;
      *&v102[8] = 2114;
      v103 = v31;
      _os_log_impl(&dword_1A3C1C000, v52, OS_LOG_TYPE_DEFAULT, "%{public}@ Did provide CPL status: %{public}@, %{public}@, %{public}@", buf, 0x2Au);
    }

    v28 = v74;
    v30 = v76;
    v8 = v71;
    v27 = v72;
    v24 = v66;
    v25 = v69;
  }

  else
  {
    v22 = v18;
    v23 = v16;
    v24 = 0;
    v25 = 0;
    v26 = 0;
    v27 = 0;
    v28 = 0;
    LOBYTE(v29) = 0;
    v30 = 0;
    v31 = 0;
    v32 = 0;
    v33 = *off_1E7721FC8;
  }

  v79[0] = MEMORY[0x1E69E9820];
  v79[1] = 3221225472;
  v79[2] = __97__PXFooterViewModelController__updateQueue_viewModelConfigurationWithStatus_counts_photoLibrary___block_invoke_227;
  v79[3] = &unk_1E772E7F8;
  v80 = v23;
  v81 = v32;
  v82 = v22;
  v83 = v31;
  v92 = v29;
  v91 = v33;
  v84 = v30;
  v85 = v28;
  v86 = v27;
  v87 = v8;
  v88 = v26;
  v89 = v25;
  v90 = 0;
  v93 = v24;
  v53 = v25;
  v77 = v26;
  v75 = v8;
  v73 = v27;
  v54 = v28;
  v55 = v30;
  v56 = v31;
  v57 = v22;
  v58 = v32;
  v59 = v23;
  v60 = _Block_copy(v79);

  return v60;
}

void __97__PXFooterViewModelController__updateQueue_viewModelConfigurationWithStatus_counts_photoLibrary___block_invoke_227(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v5 = a2;
  [v5 setTitle:v3];
  [v5 setExtendedTitle:*(a1 + 40)];
  [v5 setSubtitle1:*(a1 + 48)];
  [v5 setSubtitle2:*(a1 + 56)];
  [v5 setInternalMessageSubtitle:*(a1 + 64)];
  [v5 setIsPaused:*(a1 + 124)];
  LODWORD(v4) = *(a1 + 120);
  [v5 setProgress:v4];
  [v5 setActionTitle:*(a1 + 72)];
  [v5 setActionConfirmationAlertTitle:*(a1 + 80)];
  [v5 setActionConfirmationAlertSubtitle:*(a1 + 88)];
  [v5 setActionConfirmationAlertButtonTitle:*(a1 + 96)];
  [v5 setAction:*(a1 + 104)];
  [v5 setSubtitle1Style:*(a1 + 112)];
  [v5 setShowBadge:*(a1 + 125)];
}

+ (void)loadAsyncUpdatesImmediately
{
  v2 = +[PXFooterViewModelController updateQueue];
  dispatch_activate(v2);

  queue = +[PXFooterViewModelController updateQueue];
  v3 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ASSIGN_CURRENT, QOS_CLASS_USER_INITIATED, 0, &__block_literal_global_11874);
  dispatch_async(queue, v3);
}

@end