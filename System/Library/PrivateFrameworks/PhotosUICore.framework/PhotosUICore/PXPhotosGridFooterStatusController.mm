@interface PXPhotosGridFooterStatusController
- (BOOL)assetsSharingHelper:(id)helper dismissViewController:(id)controller completionHandler:(id)handler;
- (BOOL)assetsSharingHelper:(id)helper presentViewController:(id)controller;
- (PXPhotosGridFooterStatusController)init;
- (PXPhotosGridFooterStatusController)initWithViewModel:(id)model itemsCountsController:(id)controller;
- (PXPhotosGridFooterStatusControllerDelegate)delegate;
- (id)presentingViewControllerForCloudQuotaControllerHelper:(id)helper;
- (void)_updateFooterIfNeededWithReason:(id)reason;
- (void)_updateFooterViewModelWithReason:(id)reason;
- (void)_updateHasImportantInformation;
- (void)cloudQuotaControllerHelper:(id)helper informationViewDidChange:(id)change;
- (void)fetchResultCountObserver:(id)observer didChangeFetchResultCount:(int64_t)count;
- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context;
@end

@implementation PXPhotosGridFooterStatusController

- (PXPhotosGridFooterStatusControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (BOOL)assetsSharingHelper:(id)helper dismissViewController:(id)controller completionHandler:(id)handler
{
  handlerCopy = handler;
  controllerCopy = controller;
  delegate = [(PXPhotosGridFooterStatusController *)self delegate];
  v10 = [delegate presentingViewControllerForFooterStatusController:self];

  presentedViewController = [v10 presentedViewController];

  if (presentedViewController == controllerCopy)
  {
    [v10 dismissViewControllerAnimated:1 completion:handlerCopy];
  }

  return presentedViewController == controllerCopy;
}

- (BOOL)assetsSharingHelper:(id)helper presentViewController:(id)controller
{
  controllerCopy = controller;
  delegate = [(PXPhotosGridFooterStatusController *)self delegate];
  v7 = [delegate presentingViewControllerForFooterStatusController:self];

  [v7 presentViewController:controllerCopy animated:1 completion:0];
  return controllerCopy != 0;
}

- (void)fetchResultCountObserver:(id)observer didChangeFetchResultCount:(int64_t)count
{
  [(PXPhotosGridFooterStatusController *)self _updateHasImportantInformation:observer];

  [(PXPhotosGridFooterStatusController *)self _updateFooterViewModelWithReason:@"PXFetchResultCountObserver"];
}

- (id)presentingViewControllerForCloudQuotaControllerHelper:(id)helper
{
  delegate = [(PXPhotosGridFooterStatusController *)self delegate];
  v5 = [delegate presentingViewControllerForFooterStatusController:self];

  return v5;
}

- (void)cloudQuotaControllerHelper:(id)helper informationViewDidChange:(id)change
{
  [(PXPhotosGridFooterStatusController *)self _updateHasImportantInformation:helper];

  [(PXPhotosGridFooterStatusController *)self _updateFooterViewModelWithReason:@"PXCloudQuotaControllerHelper"];
}

- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context
{
  observableCopy = observable;
  if (PXAssetsDataSourceCountsControllerObserverContext_154071 == context)
  {
    if ((change & 1) == 0)
    {
      goto LABEL_20;
    }

    v14 = observableCopy;
    v10 = @"PXAssetsDataSourceCountsController";
    goto LABEL_19;
  }

  if (PXCPLUIStatusProviderObservationContext_154072 == context)
  {
    if ((change & 0x3FF) == 0)
    {
      goto LABEL_20;
    }

    v14 = observableCopy;
    v10 = @"PXCPLUIStatusProvider";
    goto LABEL_19;
  }

  if (PXLemonadeFeatureAvailabilityMonitorObservationContext_154073 == context)
  {
    v14 = observableCopy;
    v11 = (+[PXLemonadeFeatureAvailabilityMonitor stateChangedChangeDescriptor]& change) == 0;
    observableCopy = v14;
    if (v11)
    {
      goto LABEL_20;
    }

    v10 = @"PXLemonadeFeatureAvailabilityMonitor";
    goto LABEL_19;
  }

  if (PXPhotosViewModelObserverContext_154075 == context)
  {
    if ((change & 0x2000000) == 0)
    {
      goto LABEL_20;
    }

    v14 = observableCopy;
    contentFilterState = [(PXPhotosViewModel *)self->_viewModel contentFilterState];
    [(PXFilterFooterController *)self->_filterFooterController setContentFilterState:contentFilterState];

    v10 = @"PXPhotosViewModel";
    goto LABEL_19;
  }

  if (PXLibraryFilterStateObservationContext_154076 == context)
  {
    if ((change & 1) == 0)
    {
      goto LABEL_20;
    }

    v14 = observableCopy;
    v10 = @"PXLibraryFilterState";
    goto LABEL_19;
  }

  if (PXCPLPhotoLibrarySourceObservationContext_154077 != context)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXPhotosGridFooterStatusController.m" lineNumber:422 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  if ((change & 8) != 0)
  {
    v14 = observableCopy;
    v10 = @"PXCPLPhotoLibrarySource";
LABEL_19:
    [(PXPhotosGridFooterStatusController *)self _updateFooterViewModelWithReason:v10];
    observableCopy = v14;
  }

LABEL_20:
}

- (void)_updateFooterViewModelWithReason:(id)reason
{
  v146 = *MEMORY[0x1E69E9840];
  reasonCopy = reason;
  v5 = +[PXLemonadeSettings sharedInstance];
  forceShowProcessingUI = [v5 forceShowProcessingUI];

  v129 = 0;
  v130 = 0;
  v131 = 0;
  countsController = self->_countsController;
  if (countsController)
  {
    [(PXAssetsDataSourceCountsController *)countsController counts];
    v8 = v129;
    v9 = v130;
    v10 = v131;
  }

  else
  {
    v8 = 0;
    v9 = 0;
    v10 = 0;
  }

  v11 = v9 + v10 + v8;
  p_viewModel = &self->_viewModel;
  if (([(PXPhotosViewModel *)self->_viewModel hidesAssetCountInFooter]& 1) != 0)
  {
    v105 = 0;
  }

  else
  {
    v105 = PLLocalizedCountDescription();
    v13 = PLUserStatusUIGetLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = objc_opt_class();
      v15 = self->_countsController;
      *buf = 138544898;
      selfCopy8 = self;
      v134 = 2114;
      v135 = v14;
      v136 = 2048;
      v137 = *&v15;
      v138 = 2048;
      v139 = v129;
      v140 = 2048;
      v141 = v130;
      v142 = 2048;
      v143 = v131;
      v144 = 2114;
      v145 = reasonCopy;
      _os_log_impl(&dword_1A3C1C000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@ Local counts for <%{public}@:%p>: photos:%lu, videos:%lu, others:%lu [Reason: %{public}@]", buf, 0x48u);
    }
  }

  v16 = +[PXFooterSettings sharedInstance];
  showFilterView = [v16 showFilterView];

  if (showFilterView && ([(PXFilterFooterController *)self->_filterFooterController view], (v18 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v101 = v18;
    v19 = PLUserStatusUIGetLog();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      contentFilterState = [(PXFilterFooterController *)self->_filterFooterController contentFilterState];
      *buf = 138543618;
      selfCopy8 = self;
      v134 = 2114;
      v135 = contentFilterState;
      _os_log_impl(&dword_1A3C1C000, v19, OS_LOG_TYPE_DEFAULT, "%{public}@ Show filter view in footer: %{public}@", buf, 0x16u);
    }
  }

  else
  {
    v101 = 0;
  }

  v21 = *off_1E7721FC8;
  v22 = +[PXLemonadeSettings sharedInstance];
  forceRenderingStatus = [v22 forceRenderingStatus];

  v24 = "anager";
  v103 = reasonCopy;
  forceShowProcessingUI2 = forceShowProcessingUI;
  if (([(PXPhotosViewModel *)*p_viewModel wantsRenderingStatus]& 1) != 0 || forceRenderingStatus)
  {
    fetchResultCount = [(PXFetchResultCountObserver *)self->_renderingCountObserver fetchResultCount];
    if ((fetchResultCount > 0) | forceRenderingStatus & 1)
    {
      PXLocalizedAssetCountForUsage(fetchResultCount, 2, 0, 10);
    }
  }

  if ([(PXPhotosViewModel *)*p_viewModel wantsCPLStatus])
  {
    v89 = v11;
    v128 = 0;
    v26 = [(PHPhotoLibrary *)self->_photoLibrary hasSyncProgressReturningImportOperations:&v128];
    v27 = v26;
    if (v26)
    {
      PLProgressDescription();
      v28 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
      PLAlbumImportOperationDebugDescription();
      v29 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
      v30 = PLUserStatusUIGetLog();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543874;
        selfCopy8 = self;
        v134 = 2114;
        v135 = *&v28;
        v136 = 2114;
        v137 = v29;
        _os_log_impl(&dword_1A3C1C000, v30, OS_LOG_TYPE_DEFAULT, "%{public}@ Providing status for import operation: %{public}@ (%{public}@)", buf, 0x20u);
      }

      v24 = "MacSyncedAssetsNotificationListManager" + 32;
    }

    else
    {
      v28 = 0.0;
    }

    status = [(PXCPLUIStatusProvider *)self->_cplUIStatusProvider status];
    if (status)
    {
      v36 = status;
      if (v105)
      {
        referencedItemsDescription = [status referencedItemsDescription];
      }

      else
      {
        referencedItemsDescription = 0;
      }

      [v36 stateDescription];
      *&v37 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());

      failureDescription = [v36 failureDescription];
      internalInformationMessage = [v36 internalInformationMessage];
      isPaused = [v36 isPaused];
      [v36 progress];
      v21 = v38;
      actionTitle = [v36 actionTitle];
      actionConfirmationAlertTitle = [v36 actionConfirmationAlertTitle];
      actionConfirmationAlertSubtitle = [v36 actionConfirmationAlertSubtitle];
      actionConfirmationAlertButtonTitle = [v36 actionConfirmationAlertButtonTitle];
      action = [v36 action];
      v84 = action;
      if (action)
      {
        v125[0] = MEMORY[0x1E69E9820];
        v125[1] = *(v24 + 63);
        v125[2] = __71__PXPhotosGridFooterStatusController__updateFooterViewModelWithReason___block_invoke_409;
        v125[3] = &unk_1E774C2F0;
        v127 = action;
        v126 = v36;
        v34 = _Block_copy(v125);
      }

      else
      {
        v34 = 0;
      }

      v41 = v89;
      v98 = actionTitle;
      if (PXCloudQuotaCanShowInformationView(v36))
      {
        informationView = [(PXCloudQuotaControllerHelper *)self->_cloudQuotaHelper informationView];
        premiumInformationView = [(PXCloudQuotaControllerHelper *)self->_cloudQuotaHelper premiumInformationView];
        v90 = informationView;
        v44 = [v36 pauseReason] == 2 && informationView != 0;
        v86 = v44;
      }

      else
      {
        v86 = 0;
        premiumInformationView = 0;
        v90 = 0;
      }

      v45 = v128;
      inResetSync = [v36 inResetSync];
      if ((v45 & 0x10) != 0 || inResetSync)
      {
        v81 = failureDescription;
        v47 = v37;
        numberOfPhotoAssets = [v36 numberOfPhotoAssets];
        numberOfVideoAssets = [v36 numberOfVideoAssets];
        numberOfOtherAssets = [v36 numberOfOtherAssets];
        v51 = numberOfVideoAssets;
        v52 = numberOfVideoAssets + numberOfPhotoAssets + numberOfOtherAssets;
        if (v52 > v41)
        {
          v79 = numberOfOtherAssets;
          v80 = numberOfPhotoAssets;
          v53 = PLLocalizedCountDescription();

          v21 = v41 / v52;
          v54 = PLUserStatusUIGetLog();
          if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
          {
            v55 = @"reset";
            *buf = 138544898;
            selfCopy8 = self;
            if ((v45 & 0x10) != 0)
            {
              v55 = @"rebuild";
            }

            v134 = 2114;
            v135 = v55;
            v136 = 2048;
            v137 = v21;
            v138 = 2048;
            v139 = v80;
            v140 = 2048;
            v141 = v51;
            v142 = 2048;
            v143 = v79;
            v144 = 2114;
            v145 = v103;
            _os_log_impl(&dword_1A3C1C000, v54, OS_LOG_TYPE_DEFAULT, "%{public}@ Cloud counts for <%{public}@, progress:%f>: photos:%lu, videos:%lu, others:%lu [Reason: %{public}@]", buf, 0x48u);
          }

          v105 = v53;
        }

        failureDescription = v81;
        if ((v45 & 0x10) != 0)
        {
          PXLocalizedStringFromTable(@"PXCPLStatus_Rebuild", @"PhotosUICore");
          v31 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());

          v56 = PLUserStatusUIGetLog();
          if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543362;
            selfCopy8 = self;
            _os_log_impl(&dword_1A3C1C000, v56, OS_LOG_TYPE_DEFAULT, "%{public}@ Providing rebuild placeholder status title", buf, 0xCu);
          }
        }

        else
        {
          v31 = *&v47;
        }
      }

      else
      {
        v31 = *&v37;
      }

      v57 = PLUserStatusUIGetLog();
      if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138544130;
        selfCopy8 = self;
        v134 = 2114;
        v135 = v105;
        v136 = 2114;
        v137 = v31;
        v138 = 2114;
        v139 = failureDescription;
        _os_log_impl(&dword_1A3C1C000, v57, OS_LOG_TYPE_DEFAULT, "%{public}@ Did provide CPL status: %{public}@, %{public}@, %{public}@", buf, 0x2Au);
      }

      goto LABEL_65;
    }

    if (v27)
    {
LABEL_34:
      v98 = 0;
      referencedItemsDescription = 0;
      failureDescription = 0;
      actionConfirmationAlertTitle = 0;
      internalInformationMessage = 0;
      isPaused = 0;
      actionConfirmationAlertSubtitle = 0;
      v90 = 0;
      actionConfirmationAlertButtonTitle = 0;
      v34 = 0;
      v86 = 0;
      premiumInformationView = 0;
      v31 = v28;
      goto LABEL_65;
    }
  }

  else
  {
    v28 = 0.0;
  }

  if (![(PXCPLPhotoLibrarySource *)self->_photoLibrarySource isRebuildingThumbnails])
  {
    goto LABEL_34;
  }

  PXLocalizedStringFromTable(@"PXCPLStatusRebuildingThumbnails", @"PhotosUICore");
  v31 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());

  v32 = PLUserStatusUIGetLog();
  if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138544130;
    selfCopy8 = self;
    v134 = 2114;
    v135 = v105;
    v136 = 2114;
    v137 = v31;
    v138 = 2114;
    v139 = 0;
    _os_log_impl(&dword_1A3C1C000, v32, OS_LOG_TYPE_DEFAULT, "%{public}@ Did provide thumbnail rebuild status: %{public}@, %{public}@, %{public}@", buf, 0x2Au);
  }

  v98 = 0;
  referencedItemsDescription = 0;
  failureDescription = 0;
  actionConfirmationAlertTitle = 0;
  internalInformationMessage = 0;
  isPaused = 0;
  actionConfirmationAlertSubtitle = 0;
  actionConfirmationAlertButtonTitle = 0;
  v34 = 0;
  premiumInformationView = 0;
  v90 = 0;
  v86 = 0;
LABEL_65:
  v58 = [(PXPhotosViewModel *)*p_viewModel footerSubtitle:v79];
  v59 = v58;
  if (v105 && v58)
  {
    dataSourceManager = [(PXPhotosViewModel *)*p_viewModel dataSourceManager];
    dataSource = [dataSourceManager dataSource];
    containerCollection = [dataSource containerCollection];

    if ([containerCollection px_isSharedAlbum])
    {
      if (v31 == 0.0)
      {
        v63 = 0.0;
      }

      else
      {
        currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
        [currentHandler handleFailureInMethod:a2 object:self file:@"PXPhotosGridFooterStatusController.m" lineNumber:332 description:@"Shared album subitle1 is not nil!"];

        v63 = v31;
      }

      v31 = *&v59;
    }

    else
    {
      v63 = *&failureDescription;
      failureDescription = v59;
    }

    v64 = v59;

    v65 = PLUserStatusUIGetLog();
    if (os_log_type_enabled(v65, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      selfCopy8 = self;
      v134 = 2114;
      v135 = v64;
      _os_log_impl(&dword_1A3C1C000, v65, OS_LOG_TYPE_DEFAULT, "%{public}@ Using subtitle from footer view model: %{public}@", buf, 0x16u);
    }
  }

  featureAvailabilityMonitor = self->_featureAvailabilityMonitor;
  if (featureAvailabilityMonitor)
  {
    if ([(PXLemonadeFeatureAvailabilityMonitor *)featureAvailabilityMonitor state]== 1)
    {
      forceShowProcessingUI2 = 1;
    }

    else
    {
      v67 = +[PXLemonadeSettings sharedInstance];
      forceShowProcessingUI2 = [v67 forceShowProcessingUI];
    }
  }

  v68 = +[PXLemonadeSettings sharedInstance];
  forceHideProcessingUI = [v68 forceHideProcessingUI];

  [(PXPhotosViewModel *)*p_viewModel footerLearnMoreURL];
  v85 = v59;
  if (objc_claimAutoreleasedReturnValue())
  {
    PXGridZeroBundle();
  }

  footerViewModel = [(PXPhotosViewModel *)*p_viewModel footerViewModel];
  v106[0] = MEMORY[0x1E69E9820];
  v106[1] = 3221225472;
  v106[2] = __71__PXPhotosGridFooterStatusController__updateFooterViewModelWithReason___block_invoke_2_429;
  v106[3] = &unk_1E773E058;
  v107 = v105;
  v108 = referencedItemsDescription;
  v109 = v31;
  v110 = failureDescription;
  v122 = isPaused;
  v121 = v21;
  v111 = internalInformationMessage;
  v112 = v98;
  v123 = 0;
  v113 = actionConfirmationAlertTitle;
  v114 = actionConfirmationAlertSubtitle;
  v115 = actionConfirmationAlertButtonTitle;
  v116 = v90;
  v119 = v34;
  v120 = v86;
  v117 = premiumInformationView;
  v118 = v101;
  v124 = (forceHideProcessingUI ^ 1) & forceShowProcessingUI2;
  v94 = v101;
  v88 = premiumInformationView;
  v91 = v90;
  v70 = v34;
  v102 = actionConfirmationAlertButtonTitle;
  v71 = actionConfirmationAlertSubtitle;
  v72 = actionConfirmationAlertTitle;
  v99 = v98;
  v73 = internalInformationMessage;
  v74 = failureDescription;
  v75 = *&v31;
  v76 = referencedItemsDescription;
  v77 = v105;
  [footerViewModel performChanges:v106];
}

void __71__PXPhotosGridFooterStatusController__updateFooterViewModelWithReason___block_invoke(uint64_t a1)
{
  v4 = PXCreateDefaultAssetSharingHelper(*(a1 + 32));
  v2 = [*(*(a1 + 32) + 80) fetchResult];
  v3 = [v2 fetchedObjects];
  [v4 ensureLocalAssetsForRendering:v3 completion:&__block_literal_global_154138];
}

void __71__PXPhotosGridFooterStatusController__updateFooterViewModelWithReason___block_invoke_2_429(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v5 = a2;
  [v5 setTitle:v3];
  [v5 setExtendedTitle:*(a1 + 40)];
  [v5 setSubtitle1:*(a1 + 48)];
  [v5 setSubtitle2:*(a1 + 56)];
  [v5 setInternalMessageSubtitle:*(a1 + 64)];
  [v5 setIsPaused:*(a1 + 148)];
  LODWORD(v4) = *(a1 + 144);
  [v5 setProgress:v4];
  [v5 setActionTitle:*(a1 + 72)];
  [v5 setUseBlankActionSeparator:*(a1 + 149)];
  [v5 setActionConfirmationAlertTitle:*(a1 + 80)];
  [v5 setActionConfirmationAlertSubtitle:*(a1 + 88)];
  [v5 setActionConfirmationAlertButtonTitle:*(a1 + 96)];
  [v5 setAction:*(a1 + 128)];
  [v5 setAccessoryView:*(a1 + 104)];
  [v5 setTopAccessoryView:*(a1 + 112)];
  [v5 setSubtitle1Style:*(a1 + 136)];
  [v5 setFilterView:*(a1 + 120)];
  [v5 setIsProcessing:*(a1 + 150)];
}

- (void)_updateHasImportantInformation
{
  if ([(PXPhotosViewModel *)self->_viewModel wantsCPLStatus])
  {
    status = [(PXCPLUIStatusProvider *)self->_cplUIStatusProvider status];
    HasImportantInformation = PXCPLUIStatusHasImportantInformation(status);

    if ((HasImportantInformation & 1) != 0 || [(PXCloudQuotaControllerHelper *)self->_cloudQuotaHelper hasAnyInformationViews]|| [(PXFetchResultCountObserver *)self->_renderingCountObserver fetchResultCount]> 0)
    {
      simulateImportantInformation = 1;
    }

    else
    {
      v7 = +[PXFooterSettings sharedInstance];
      simulateImportantInformation = [v7 simulateImportantInformation];
    }

    viewModel = self->_viewModel;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __68__PXPhotosGridFooterStatusController__updateHasImportantInformation__block_invoke;
    v8[3] = &__block_descriptor_33_e53_v16__0__PXPhotosViewModel_PXMutablePhotosViewModel__8l;
    v9 = simulateImportantInformation;
    [(PXPhotosViewModel *)viewModel performChanges:v8];
  }
}

- (void)_updateFooterIfNeededWithReason:(id)reason
{
  countsController = self->_countsController;
  reasonCopy = reason;
  [(PXAssetsDataSourceCountsController *)countsController prepareCountsIfNeeded];
  [(PXPhotosGridFooterStatusController *)self _updateHasImportantInformation];
  [(PXPhotosGridFooterStatusController *)self _updateFooterViewModelWithReason:reasonCopy];
}

- (PXPhotosGridFooterStatusController)initWithViewModel:(id)model itemsCountsController:(id)controller
{
  v71 = *MEMORY[0x1E69E9840];
  modelCopy = model;
  controllerCopy = controller;
  v10 = controllerCopy;
  if (modelCopy)
  {
    if (controllerCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXPhotosGridFooterStatusController.m" lineNumber:73 description:{@"Invalid parameter not satisfying: %@", @"viewModel"}];

    if (v10)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"PXPhotosGridFooterStatusController.m" lineNumber:74 description:{@"Invalid parameter not satisfying: %@", @"itemsCountsController"}];

LABEL_3:
  v62.receiver = self;
  v62.super_class = PXPhotosGridFooterStatusController;
  v11 = [(PXPhotosGridFooterStatusController *)&v62 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_viewModel, model);
    footerViewModel = [modelCopy footerViewModel];
    featureAvailabilityMonitor = [footerViewModel featureAvailabilityMonitor];
    featureAvailabilityMonitor = v12->_featureAvailabilityMonitor;
    v12->_featureAvailabilityMonitor = featureAvailabilityMonitor;

    observable = [(PXLemonadeFeatureAvailabilityMonitor *)v12->_featureAvailabilityMonitor observable];
    [observable registerChangeObserver:v12 context:PXLemonadeFeatureAvailabilityMonitorObservationContext_154073];

    dataSourceManager = [modelCopy dataSourceManager];
    dataSource = [dataSourceManager dataSource];
    containerCollection = [dataSource containerCollection];

    if (objc_opt_class() && (objc_opt_isKindOfClass() & 1) != 0)
    {
      v20 = containerCollection;
    }

    else
    {
      v20 = 0;
    }

    photoLibrary = [v20 photoLibrary];
    photoLibrary = v12->_photoLibrary;
    v12->_photoLibrary = photoLibrary;

    if (!v12->_photoLibrary)
    {
      v23 = PLUIGetLog();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        dataSourceManager2 = [modelCopy dataSourceManager];
        dataSourceManager3 = [modelCopy dataSourceManager];
        dataSource2 = [dataSourceManager3 dataSource];
        *buf = 138413058;
        v64 = modelCopy;
        v65 = 2112;
        v66 = dataSourceManager2;
        v67 = 2112;
        v68 = dataSource2;
        v69 = 2112;
        v70 = v20;
        _os_log_impl(&dword_1A3C1C000, v23, OS_LOG_TYPE_ERROR, "Failed to acquire photo library from vm:%@, dsm:%@, ds:%@, collection:%@", buf, 0x2Au);
      }

      px_deprecated_appPhotoLibrary = [MEMORY[0x1E69789A8] px_deprecated_appPhotoLibrary];
      v28 = v12->_photoLibrary;
      v12->_photoLibrary = px_deprecated_appPhotoLibrary;
    }

    objc_storeStrong(&v12->_countsController, controller);
    [(PXAssetsDataSourceCountsController *)v12->_countsController registerChangeObserver:v12 context:PXAssetsDataSourceCountsControllerObserverContext_154071];
    if ([modelCopy wantsCPLStatus])
    {
      cplActionManagerClass = [modelCopy cplActionManagerClass];
      v12->_cplActionManagerClass = cplActionManagerClass;
      if (!cplActionManagerClass)
      {
        currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
        [currentHandler3 handleFailureInMethod:a2 object:v12 file:@"PXPhotosGridFooterStatusController.m" lineNumber:97 description:@"a class is needed for CPL status"];

        cplActionManagerClass = v12->_cplActionManagerClass;
      }

      v30 = [[cplActionManagerClass alloc] initWithPhotoLibrary:v12->_photoLibrary];
      v31 = [[PXCPLUIStatusProvider alloc] initWithPhotoLibrary:v12->_photoLibrary actionManager:v30];
      cplUIStatusProvider = v12->_cplUIStatusProvider;
      v12->_cplUIStatusProvider = v31;

      [(PXCPLUIStatusProvider *)v12->_cplUIStatusProvider registerChangeObserver:v12 context:PXCPLUIStatusProviderObservationContext_154072];
      v33 = [[PXCPLPhotoLibrarySource alloc] initWithPhotoLibrary:v12->_photoLibrary];
      photoLibrarySource = v12->_photoLibrarySource;
      v12->_photoLibrarySource = v33;

      [(PXCPLPhotoLibrarySource *)v12->_photoLibrarySource registerChangeObserver:v12 context:PXCPLPhotoLibrarySourceObservationContext_154077];
      v35 = objc_alloc_init(PXCloudQuotaControllerHelper);
      cloudQuotaHelper = v12->_cloudQuotaHelper;
      v12->_cloudQuotaHelper = v35;

      [(PXCloudQuotaControllerHelper *)v12->_cloudQuotaHelper setDelegate:v12];
    }

    if ([modelCopy wantsRenderingStatus])
    {
      if (v20)
      {
        v37 = [PXFetchResultCountObserver alloc];
        v38 = v12->_photoLibrary;
        v59[0] = MEMORY[0x1E69E9820];
        v59[1] = 3221225472;
        v59[2] = __78__PXPhotosGridFooterStatusController_initWithViewModel_itemsCountsController___block_invoke;
        v59[3] = &unk_1E773E030;
        v39 = v12;
        p_super = &v39->super;
        v61 = v20;
        v40 = [(PXFetchResultCountObserver *)v37 initWithQOSClass:17 photoLibrary:v38 fetchResultBlock:v59];
        renderingCountObserver = v39->_renderingCountObserver;
        v39->_renderingCountObserver = v40;

        [(PXFetchResultCountObserver *)v39->_renderingCountObserver setDelegate:v39];
        v42 = p_super;
      }

      else
      {
        v42 = PLUIGetLog();
        if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
        {
          dataSourceManager4 = [modelCopy dataSourceManager];
          dataSourceManager5 = [modelCopy dataSourceManager];
          dataSource3 = [dataSourceManager5 dataSource];
          *buf = 138412802;
          v64 = modelCopy;
          v65 = 2112;
          v66 = dataSourceManager4;
          v67 = 2112;
          v68 = dataSource3;
          _os_log_impl(&dword_1A3C1C000, v42, OS_LOG_TYPE_ERROR, "Failed to acquire asset collection from vm:%@, dsm:%@, ds:%@", buf, 0x20u);
        }
      }
    }

    libraryFilterState = [modelCopy libraryFilterState];
    libraryFilterState = v12->_libraryFilterState;
    v12->_libraryFilterState = libraryFilterState;

    [(PXLibraryFilterState *)v12->_libraryFilterState registerChangeObserver:v12 context:PXLibraryFilterStateObservationContext_154076];
    v48 = +[PXFooterSettings sharedInstance];
    showFilterView = [v48 showFilterView];

    if (showFilterView)
    {
      v50 = [PXFilterFooterController alloc];
      gridActionManager = [modelCopy gridActionManager];
      v52 = [(PXFilterFooterController *)v50 initWithActionManager:gridActionManager photoLibrary:v12->_photoLibrary];
      filterFooterController = v12->_filterFooterController;
      v12->_filterFooterController = v52;

      [(PXFilterFooterController *)v12->_filterFooterController setLibraryFilterState:v12->_libraryFilterState];
      contentFilterState = [modelCopy contentFilterState];
      [(PXFilterFooterController *)v12->_filterFooterController setContentFilterState:contentFilterState];

      [modelCopy registerChangeObserver:v12 context:PXPhotosViewModelObserverContext_154075];
    }
  }

  return v12;
}

id __78__PXPhotosGridFooterStatusController_initWithViewModel_itemsCountsController___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 16) librarySpecificFetchOptions];
  v3 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K != 0", @"deferredProcessingNeeded"];
  [v2 setInternalPredicate:v3];

  v4 = [MEMORY[0x1E6978630] fetchAssetsInAssetCollection:*(a1 + 40) options:v2];

  return v4;
}

- (PXPhotosGridFooterStatusController)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXPhotosGridFooterStatusController.m" lineNumber:69 description:{@"%s is not available as initializer", "-[PXPhotosGridFooterStatusController init]"}];

  abort();
}

@end