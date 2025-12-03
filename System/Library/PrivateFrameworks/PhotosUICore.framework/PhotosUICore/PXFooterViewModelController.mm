@interface PXFooterViewModelController
+ (OS_dispatch_queue)updateQueue;
+ (id)_updateQueue_viewModelConfigurationWithStatus:(id)status counts:(id *)counts photoLibrary:(id)library;
+ (void)loadAsyncUpdatesImmediately;
- (PXFooterViewModelController)init;
- (PXFooterViewModelController)initWithPhotoLibrary:(id)library provideLibraryCounts:(BOOL)counts provideCloudQuotaOffers:(BOOL)offers;
- (PXFooterViewModelControllerDelegate)delegate;
- (id)presentingViewControllerForCloudQuotaControllerHelper:(id)helper;
- (void)_invalidateFooterViewModel;
- (void)_mainQueue_finishUpdateWithCPLStatus:(id)status viewModelConfiguration:(id)configuration;
- (void)_prepareCounts;
- (void)_setNeedsUpdate;
- (void)_updateFooterViewModel;
- (void)_updateIfNeeded;
- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context;
- (void)setIsActive:(BOOL)active;
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

- (id)presentingViewControllerForCloudQuotaControllerHelper:(id)helper
{
  delegate = [(PXFooterViewModelController *)self delegate];
  if (!delegate)
  {
    PXAssertGetLog();
  }

  v5 = [delegate presentingViewControllerForFooterViewModelController:self];

  return v5;
}

- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context
{
  changeCopy = change;
  observableCopy = observable;
  if (PXAssetsDataSourceCountsControllerObserverContext == context)
  {
    if (changeCopy)
    {
LABEL_4:
      v11 = observableCopy;
      [(PXFooterViewModelController *)self _invalidateFooterViewModel];
      observableCopy = v11;
    }
  }

  else
  {
    if (PXCPLUIStatusProviderObservationContext != context)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PXFooterViewModelController.m" lineNumber:356 description:@"Code which should be unreachable has been reached"];

      abort();
    }

    if ((changeCopy & 0x3FF) != 0)
    {
      goto LABEL_4;
    }
  }
}

- (void)_mainQueue_finishUpdateWithCPLStatus:(id)status viewModelConfiguration:(id)configuration
{
  statusCopy = status;
  configurationCopy = configuration;
  if ((PXCPLUIStatusHasImportantInformation(statusCopy) & 1) != 0 || [(PXCloudQuotaControllerHelper *)self->_cloudQuotaHelper hasAnyInformationViews])
  {
    simulateImportantInformation = 1;
  }

  else
  {
    v9 = +[PXFooterSettings sharedInstance];
    simulateImportantInformation = [v9 simulateImportantInformation];
  }

  if (PXCloudQuotaCanShowInformationView(statusCopy))
  {
    informationView = [(PXCloudQuotaControllerHelper *)self->_cloudQuotaHelper informationView];
    premiumInformationView = [(PXCloudQuotaControllerHelper *)self->_cloudQuotaHelper premiumInformationView];
    v13 = [statusCopy pauseReason] == 2 && informationView != 0;
  }

  else
  {
    informationView = 0;
    premiumInformationView = 0;
    v13 = 0;
  }

  footerViewModel = [(PXFooterViewModelController *)self footerViewModel];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __91__PXFooterViewModelController__mainQueue_finishUpdateWithCPLStatus_viewModelConfiguration___block_invoke;
  v18[3] = &unk_1E772E7D0;
  v20 = premiumInformationView;
  v21 = configurationCopy;
  v22 = simulateImportantInformation;
  v19 = informationView;
  v23 = v13;
  v15 = premiumInformationView;
  v16 = informationView;
  v17 = configurationCopy;
  [footerViewModel performChanges:v18];
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
  status = [(PXCPLUIStatusProvider *)self->_cplUIStatusProvider status];
  v4 = [status copy];

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
  updater = [(PXFooterViewModelController *)self updater];
  [updater setNeedsUpdateOf:sel__updateFooterViewModel];
}

- (void)_prepareCounts
{
  librarySpecificFetchOptions = [(PHPhotoLibrary *)self->_photoLibrary librarySpecificFetchOptions];
  [librarySpecificFetchOptions setIncludeAllPhotosSmartAlbum:1];
  v3 = [MEMORY[0x1E6978650] fetchAssetCollectionsWithType:2 subtype:1000000205 options:librarySpecificFetchOptions];
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
  updateCoalescer = [(PXFooterViewModelController *)self updateCoalescer];
  [updateCoalescer inputEvent];
}

- (void)_updateIfNeeded
{
  if ([(PXFooterViewModelController *)self isActive])
  {
    updater = [(PXFooterViewModelController *)self updater];
    [updater updateIfNeeded];
  }
}

- (void)setIsActive:(BOOL)active
{
  if (self->_isActive != active)
  {
    self->_isActive = active;
    [(PXFooterViewModelController *)self _updateIfNeeded];
  }
}

- (PXFooterViewModelController)initWithPhotoLibrary:(id)library provideLibraryCounts:(BOOL)counts provideCloudQuotaOffers:(BOOL)offers
{
  offersCopy = offers;
  countsCopy = counts;
  libraryCopy = library;
  if (!libraryCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXFooterViewModelController.m" lineNumber:61 description:{@"Invalid parameter not satisfying: %@", @"photoLibrary"}];
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

    objc_storeStrong(&v11->_photoLibrary, library);
    if (countsCopy)
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

    v19 = [[PXPhotoKitCPLActionManager alloc] initWithPhotoLibrary:libraryCopy];
    v20 = [[PXCPLUIStatusProvider alloc] initWithPhotoLibrary:libraryCopy actionManager:v19];
    cplUIStatusProvider = v11->_cplUIStatusProvider;
    v11->_cplUIStatusProvider = v20;

    [(PXCPLUIStatusProvider *)v11->_cplUIStatusProvider registerChangeObserver:v11 context:PXCPLUIStatusProviderObservationContext];
    if (offersCopy)
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
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXFooterViewModelController.m" lineNumber:57 description:{@"%s is not available as initializer", "-[PXFooterViewModelController init]"}];

  abort();
}

+ (id)_updateQueue_viewModelConfigurationWithStatus:(id)status counts:(id *)counts photoLibrary:(id)library
{
  v104 = *MEMORY[0x1E69E9840];
  statusCopy = status;
  libraryCopy = library;
  updateQueue = [self updateQueue];
  dispatch_assert_queue_V2(updateQueue);

  var1 = counts->var1;
  var2 = counts->var2;
  if (counts->var0 == 0x7FFFFFFFFFFFFFFFLL || var1 == 0x7FFFFFFFFFFFFFFFLL || var2 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v16 = PXLocalizedStringFromTable(@"PXCuratedLibraryLoadingCountsDescription", @"PhotosUICore");
    v15 = 0;
  }

  else
  {
    v15 = var1 + counts->var0 + var2;
    v16 = PLLocalizedCountDescription();
  }

  v97 = 0;
  v17 = [libraryCopy hasSyncProgressReturningImportOperations:&v97];

  if (v17)
  {
    v18 = PLProgressDescription();
    v19 = PLAlbumImportOperationDebugDescription();
    v20 = PLUserStatusUIGetLog();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543874;
      selfCopy5 = self;
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

  v78 = statusCopy;
  if (statusCopy)
  {
    if (v16)
    {
      referencedItemsDescription = [statusCopy referencedItemsDescription];
    }

    else
    {
      referencedItemsDescription = 0;
    }

    v65 = v15;
    stateDescription = [statusCopy stateDescription];

    failureDescription = [statusCopy failureDescription];
    internalInformationMessage = [statusCopy internalInformationMessage];
    isPaused = [statusCopy isPaused];
    [statusCopy progress];
    v33 = v35;
    actionTitle = [statusCopy actionTitle];
    actionConfirmationAlertTitle = [statusCopy actionConfirmationAlertTitle];
    actionConfirmationAlertSubtitle = [statusCopy actionConfirmationAlertSubtitle];
    actionConfirmationAlertButtonTitle = [statusCopy actionConfirmationAlertButtonTitle];
    action = [statusCopy action];
    v70 = action;
    if (action)
    {
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __97__PXFooterViewModelController__updateQueue_viewModelConfigurationWithStatus_counts_photoLibrary___block_invoke;
      aBlock[3] = &unk_1E774C2F0;
      v96 = action;
      v95 = statusCopy;
      v69 = _Block_copy(aBlock);
    }

    else
    {
      v69 = 0;
    }

    v76 = internalInformationMessage;
    v71 = actionConfirmationAlertSubtitle;
    if (!isPaused || [statusCopy pauseReason] == 2 || objc_msgSend(statusCopy, "pauseReason") == 1 || !objc_msgSend(statusCopy, "pauseReason"))
    {
      v66 = 0;
    }

    else
    {
      pauseReason = [statusCopy pauseReason];
      if (pauseReason > 0x12)
      {
        v40 = 0;
      }

      else
      {
        v40 = off_1E7748A00[pauseReason];
      }

      v62 = v40;
      v63 = PLUserStatusUIGetLog();
      if (os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543618;
        selfCopy5 = self;
        v100 = 2114;
        *v101 = v62;
        _os_log_impl(&dword_1A3C1C000, v63, OS_LOG_TYPE_DEFAULT, "%{public}@ Providing badge to status – reason: (%{public}@)", buf, 0x16u);
      }

      v66 = 1;
    }

    v41 = v97;
    inResetSync = [statusCopy inResetSync];
    v43 = inResetSync;
    if ((v41 & 0x10) != 0 || inResetSync)
    {
      v64 = referencedItemsDescription;
      selfCopy3 = self;
      v45 = v41 & 0x10;
      numberOfPhotoAssets = [statusCopy numberOfPhotoAssets];
      numberOfVideoAssets = [statusCopy numberOfVideoAssets];
      v48 = numberOfVideoAssets + numberOfPhotoAssets + [statusCopy numberOfOtherAssets];
      if (v48 <= v65)
      {
        self = selfCopy3;
      }

      else
      {
        v49 = PLLocalizedCountDescription();

        v33 = v65 / v48;
        v50 = PLUserStatusUIGetLog();
        self = selfCopy3;
        if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138544130;
          selfCopy5 = selfCopy3;
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

      v26 = actionConfirmationAlertButtonTitle;
      v23 = v16;
      if (v45)
      {
        v22 = PXLocalizedStringFromTable(@"PXCPLStatus_Rebuild", @"PhotosUICore");

        v51 = PLUserStatusUIGetLog();
        if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          selfCopy5 = self;
          _os_log_impl(&dword_1A3C1C000, v51, OS_LOG_TYPE_DEFAULT, "%{public}@ Providing rebuild placeholder status title", buf, 0xCu);
        }

        v31 = failureDescription;
      }

      else
      {
        v22 = stateDescription;
        v31 = failureDescription;
      }

      v32 = v64;
    }

    else
    {
      v32 = referencedItemsDescription;
      v26 = actionConfirmationAlertButtonTitle;
      v23 = v16;
      v22 = stateDescription;
      v31 = failureDescription;
    }

    v52 = PLUserStatusUIGetLog();
    if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138544130;
      selfCopy5 = self;
      v100 = 2114;
      *v101 = v23;
      *&v101[8] = 2114;
      *v102 = v22;
      *&v102[8] = 2114;
      v103 = v31;
      _os_log_impl(&dword_1A3C1C000, v52, OS_LOG_TYPE_DEFAULT, "%{public}@ Did provide CPL status: %{public}@, %{public}@, %{public}@", buf, 0x2Au);
    }

    v28 = actionTitle;
    v30 = v76;
    statusCopy = v71;
    v27 = actionConfirmationAlertTitle;
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
    LOBYTE(isPaused) = 0;
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
  v92 = isPaused;
  v91 = v33;
  v84 = v30;
  v85 = v28;
  v86 = v27;
  v87 = statusCopy;
  v88 = v26;
  v89 = v25;
  v90 = 0;
  v93 = v24;
  v53 = v25;
  v77 = v26;
  v75 = statusCopy;
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