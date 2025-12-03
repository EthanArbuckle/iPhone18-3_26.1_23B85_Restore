@interface PXCuratedLibraryFooterViewModel
+ (BOOL)hasAnalysisProgressForMode:(int64_t)mode analysisStatus:(id)status cplUIStatus:(id)iStatus userDefaults:(id)defaults outAnimatedIconMode:(int64_t *)iconMode outProgress:(float *)progress outTitle:(id *)title outDescription:(id *)self0;
+ (id)_titleWithOptionalDescription:(id *)description progress:(float *)progress forMode:(int64_t)mode itemCountsController:(id)controller analysisStatus:(id)status cplUIStatus:(id)iStatus inRebuild:(BOOL)rebuild reason:(id)self0;
- (BOOL)shouldAlternateTitleWithAnimatedGridCycle;
- (PXCuratedLibraryFooterViewModel)init;
- (PXCuratedLibraryFooterViewModel)initWithItemCountsController:(id)controller cplUIStatusProvider:(id)provider analysisStatus:(id)status mode:(int64_t)mode viewModel:(id)model;
- (PXCuratedLibraryFooterViewModelPresentationDelegate)presentingDelegate;
- (id)presentingViewControllerForCloudQuotaControllerHelper:(id)helper;
- (void)_updateExposedPropertiesForReason:(id)reason;
- (void)_updateHasImportantInformation;
- (void)cloudQuotaControllerHelper:(id)helper informationViewDidChange:(id)change;
- (void)didHideFooter;
- (void)footerAnimationCrossedGridCycleBoundary;
- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context;
- (void)setIsFooterShown:(BOOL)shown;
- (void)setMode:(int64_t)mode;
- (void)settings:(id)settings changedValueForKey:(id)key;
@end

@implementation PXCuratedLibraryFooterViewModel

- (PXCuratedLibraryFooterViewModelPresentationDelegate)presentingDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_presentingDelegate);

  return WeakRetained;
}

- (void)settings:(id)settings changedValueForKey:(id)key
{
  keyCopy = key;
  if (([keyCopy isEqualToString:@"simulateAnimatedIconMode"] & 1) != 0 || objc_msgSend(keyCopy, "isEqualToString:", @"simulatedAnimatedIconMode"))
  {
    [(PXCuratedLibraryFooterViewModel *)self _updateExposedPropertiesForReason:@"SimulateAnimatedIconMode"];
  }

  if ([keyCopy isEqualToString:@"simulateImportantInformation"])
  {
    [(PXCuratedLibraryFooterViewModel *)self _updateHasImportantInformation];
  }
}

- (id)presentingViewControllerForCloudQuotaControllerHelper:(id)helper
{
  presentingDelegate = [(PXCuratedLibraryFooterViewModel *)self presentingDelegate];
  v5 = [presentingDelegate presentingViewControllerForFooterViewModel:self];

  return v5;
}

- (void)cloudQuotaControllerHelper:(id)helper informationViewDidChange:(id)change
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __87__PXCuratedLibraryFooterViewModel_cloudQuotaControllerHelper_informationViewDidChange___block_invoke;
  v4[3] = &unk_1E77350C0;
  v4[4] = self;
  [(PXCuratedLibraryFooterViewModel *)self performChanges:v4, change];
}

uint64_t __87__PXCuratedLibraryFooterViewModel_cloudQuotaControllerHelper_informationViewDidChange___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _updateExposedPropertiesForReason:@"PXCloudQuotaControllerHelper"];
  v2 = *(a1 + 32);

  return [v2 _updateHasImportantInformation];
}

- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context
{
  changeCopy = change;
  observableCopy = observable;
  if (CuratedLibraryItemCountsControllerObserverContext == context)
  {
    if ((changeCopy & 1) == 0)
    {
      goto LABEL_17;
    }

    v10 = @"PXAssetsDataSourceCountsController";
    goto LABEL_13;
  }

  if (CuratedLibraryAnalysisStatusObserverContext == context)
  {
    v10 = @"PXCuratedLibraryAnalysisStatus";
    goto LABEL_13;
  }

  if (PXCPLUIStatusProviderObserverContext == context)
  {
    v15 = observableCopy;
    [(PXCuratedLibraryFooterViewModel *)self _updateExposedPropertiesForReason:@"PXCPLUIStatusProvider"];
    [(PXCuratedLibraryFooterViewModel *)self _updateHasImportantInformation];
    goto LABEL_16;
  }

  if (PXCuratedLibraryViewModelObserverContext_73372 == context)
  {
    if ((changeCopy & 0x2000000) != 0)
    {
      v15 = observableCopy;
      currentContentFilterState = [(PXCuratedLibraryViewModel *)self->_curatedLibraryViewModel currentContentFilterState];
      [(PXFilterFooterController *)self->_filterFooterController setContentFilterState:currentContentFilterState];

      v10 = @"PXCuratedLibraryViewModel";
      goto LABEL_14;
    }
  }

  else if (PXSharedLibraryStatusProviderObservationContext_73374 == context)
  {
    if ((changeCopy & 3) != 0)
    {
      v15 = observableCopy;
      sharedLibraryStatusProvider = [(PXCuratedLibraryFooterViewModel *)self sharedLibraryStatusProvider];
      [(PXFilterFooterController *)self->_filterFooterController setSharedLibraryStatusProvider:sharedLibraryStatusProvider];

      v10 = @"PXSharedLibraryStatusProvider";
      goto LABEL_14;
    }
  }

  else if (PXLibraryFilterStateObservationContext_73376 == context)
  {
    if (changeCopy)
    {
      v15 = observableCopy;
      libraryFilterState = [(PXCuratedLibraryFooterViewModel *)self libraryFilterState];
      [(PXFilterFooterController *)self->_filterFooterController setLibraryFilterState:libraryFilterState];

      v10 = @"PXLibraryFilterState";
      goto LABEL_14;
    }
  }

  else
  {
    if (PXCPLPhotoLibrarySourceObservationContext_73378 != context)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PXCuratedLibraryFooterViewModel.m" lineNumber:609 description:@"Code which should be unreachable has been reached"];

      abort();
    }

    if ((changeCopy & 8) != 0)
    {
      v10 = @"PXCPLPhotoLibrarySource";
LABEL_13:
      v15 = observableCopy;
LABEL_14:
      [(PXCuratedLibraryFooterViewModel *)self _updateExposedPropertiesForReason:v10];
LABEL_16:
      observableCopy = v15;
    }
  }

LABEL_17:
}

- (void)_updateExposedPropertiesForReason:(id)reason
{
  selfCopy = self;
  v112 = *MEMORY[0x1E69E9840];
  v4 = *off_1E7721FC8;
  v103 = *off_1E7721FC8;
  cplUIStatusProvider = self->_cplUIStatusProvider;
  reasonCopy = reason;
  status = [(PXCPLUIStatusProvider *)cplUIStatusProvider status];
  if (PXCloudQuotaCanShowInformationView(status))
  {
    informationView = [(PXCloudQuotaControllerHelper *)selfCopy->_cloudQuotaHelper informationView];
    premiumInformationView = [(PXCloudQuotaControllerHelper *)selfCopy->_cloudQuotaHelper premiumInformationView];
  }

  else
  {
    premiumInformationView = 0;
    informationView = 0;
  }

  mode = [(PXCuratedLibraryFooterViewModel *)selfCopy mode];
  itemCountsController = [(PXCuratedLibraryFooterViewModel *)selfCopy itemCountsController];
  analysisStatus = [(PXCuratedLibraryFooterViewModel *)selfCopy analysisStatus];
  v102 = 0;
  photoLibrary = [(PXCuratedLibraryFooterViewModel *)selfCopy photoLibrary];
  v12 = [photoLibrary hasSyncProgressReturningImportOperations:&v102];

  p_isa = &selfCopy->super.super.super.isa;
  if (v12)
  {
    v13 = PLProgressDescription();
    v14 = PLAlbumImportOperationDebugDescription();
    v15 = PLUserStatusUIGetLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543874;
      v105 = p_isa;
      v106 = 2114;
      v107 = v13;
      v108 = 2114;
      v109 = v14;
      _os_log_impl(&dword_1A3C1C000, v15, OS_LOG_TYPE_DEFAULT, "%{public}@ Providing status for import operation: %{public}@ (%{public}@)", buf, 0x20u);
    }

    selfCopy = p_isa;
  }

  else
  {
    v13 = 0;
  }

  v101 = 0;
  LOBYTE(v58) = (v102 & 0x10) != 0;
  v16 = [objc_opt_class() _titleWithOptionalDescription:&v101 progress:&v103 forMode:mode itemCountsController:itemCountsController analysisStatus:analysisStatus cplUIStatus:status inRebuild:v58 reason:reasonCopy];

  v17 = v101;
  v70 = v17;
  if (v17)
  {
    v18 = v17;

    v13 = v18;
  }

  v19 = +[PXFooterSettings sharedInstance];
  showFilterView = [v19 showFilterView];

  if (showFilterView)
  {
    view = [(PXFilterFooterController *)selfCopy->_filterFooterController view];
    contentFilterState = [(PXFilterFooterController *)selfCopy->_filterFooterController contentFilterState];
    v69 = view;
    if (view)
    {
      v23 = PLUserStatusUIGetLog();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543618;
        v105 = selfCopy;
        v106 = 2114;
        v107 = contentFilterState;
        _os_log_impl(&dword_1A3C1C000, v23, OS_LOG_TYPE_DEFAULT, "%{public}@ Show filter view in footer: %{public}@", buf, 0x16u);
      }
    }

    if (v12)
    {
      LOBYTE(v12) = 1;
    }

    else
    {
      LOBYTE(v12) = [contentFilterState isFiltering];
    }

    v24 = v16;
  }

  else
  {
    v69 = 0;
    v24 = v16;
  }

  v75 = status;
  v71 = analysisStatus;
  v72 = itemCountsController;
  if (status && (v12 & 1) == 0)
  {
    localizedTitle = [analysisStatus localizedTitle];
    v26 = [v24 isEqualToString:localizedTitle];

    if (v26)
    {

      v24 = 0;
    }

    if (mode)
    {
      referencedItemsDescription = 0;
    }

    else
    {
      referencedItemsDescription = [status referencedItemsDescription];
    }

    stateDescription = [status stateDescription];

    failureDescription = [status failureDescription];
    internalInformationMessage = [status internalInformationMessage];
    isPaused = [status isPaused];
    *&v36 = v103;
    if (v103 == v4)
    {
      [status progress];
      v103 = v37;
    }

    actionTitle = [status actionTitle];
    actionConfirmationAlertTitle = [status actionConfirmationAlertTitle];
    actionConfirmationAlertSubtitle = [status actionConfirmationAlertSubtitle];
    actionConfirmationAlertButtonTitle = [status actionConfirmationAlertButtonTitle];
    action = [status action];
    v34 = action;
    if (action)
    {
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __69__PXCuratedLibraryFooterViewModel__updateExposedPropertiesForReason___block_invoke;
      aBlock[3] = &unk_1E774C2F0;
      v100 = action;
      v99 = status;
      v62 = _Block_copy(aBlock);
    }

    else
    {
      v62 = 0;
    }

    v40 = [status pauseReason] == 2 && informationView != 0;
    v60 = v40;
    if (mode != 2 || v24 || referencedItemsDescription)
    {
      v30 = internalInformationMessage;
    }

    else
    {
      v30 = internalInformationMessage;
      if ((PXCPLUIStatusHasImportantInformation(v75) & 1) == 0)
      {
        actionTitle2 = [v75 actionTitle];

        if (!actionTitle2)
        {

          failureDescription = 0;
          stateDescription = 0;
          v103 = v4;
        }
      }
    }

    v42 = PLUserStatusUIGetLog();
    if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138544130;
      v105 = p_isa;
      v106 = 2114;
      v107 = v24;
      v108 = 2114;
      v109 = stateDescription;
      v110 = 2114;
      v111 = failureDescription;
      _os_log_impl(&dword_1A3C1C000, v42, OS_LOG_TYPE_DEFAULT, "%{public}@ Did provide CPL status: %{public}@, %{public}@, %{public}@", buf, 0x2Au);
    }

    v33 = 0;
    goto LABEL_54;
  }

  if ((v12 & 1) == 0)
  {
    v28 = +[PXLemonadeSettings sharedInstance];
    if (([v28 forceShowProcessingUI] & 1) != 0 || objc_msgSend(p_isa[46], "state") == 1)
    {

      if (mode)
      {

        v103 = -1.0;
        v24 = 0;
        informationView = 0;
        v60 = 0;
        v62 = 0;
        actionConfirmationAlertButtonTitle = 0;
        actionConfirmationAlertSubtitle = 0;
        actionConfirmationAlertTitle = 0;
        actionTitle = 0;
        isPaused = 0;
        v30 = 0;
        failureDescription = 0;
        referencedItemsDescription = 0;
        stateDescription = 0;
        v33 = 1;
        v34 = premiumInformationView;
        premiumInformationView = 0;
LABEL_54:

        v13 = stateDescription;
        goto LABEL_61;
      }
    }

    else
    {
    }

    if ([p_isa[31] isRebuildingThumbnails])
    {
      stateDescription = PXLocalizedStringFromTable(@"PXCPLStatusRebuildingThumbnails", @"PhotosUICore");

      v34 = PLUserStatusUIGetLog();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138544130;
        v105 = p_isa;
        v106 = 2114;
        v107 = v24;
        v108 = 2114;
        v109 = stateDescription;
        v110 = 2114;
        v111 = 0;
        _os_log_impl(&dword_1A3C1C000, v34, OS_LOG_TYPE_DEFAULT, "%{public}@ Did provide thumbnail rebuild status: %{public}@, %{public}@, %{public}@", buf, 0x2Au);
      }

      v33 = 0;
      v60 = 0;
      v62 = 0;
      actionConfirmationAlertButtonTitle = 0;
      actionConfirmationAlertSubtitle = 0;
      actionConfirmationAlertTitle = 0;
      actionTitle = 0;
      isPaused = 0;
      v30 = 0;
      failureDescription = 0;
      referencedItemsDescription = 0;
      goto LABEL_54;
    }
  }

  v33 = 0;
  v60 = 0;
  v62 = 0;
  actionConfirmationAlertButtonTitle = 0;
  actionConfirmationAlertSubtitle = 0;
  actionConfirmationAlertTitle = 0;
  actionTitle = 0;
  isPaused = 0;
  v30 = 0;
  failureDescription = 0;
  referencedItemsDescription = 0;
LABEL_61:
  v43 = PXLocalizedStringFromTable(@"PXCuratedLibraryFooterCuratedLibraryCurationCompleteTitle", @"PhotosUICore");
  if (![v24 isEqualToString:v43])
  {
    goto LABEL_68;
  }

  v44 = v24;
  v45 = [v13 length];

  if (!v45)
  {
    v46 = PLUserStatusUIGetLog();
    if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v105 = p_isa;
      _os_log_impl(&dword_1A3C1C000, v46, OS_LOG_TYPE_DEFAULT, "%{public}@ Special case: Erasing curation specific title", buf, 0xCu);
    }

    v43 = v44;
    v24 = 0;
LABEL_68:

    if (!referencedItemsDescription)
    {
      goto LABEL_71;
    }

    goto LABEL_69;
  }

  v24 = v44;
  if (!referencedItemsDescription)
  {
    goto LABEL_71;
  }

LABEL_69:
  if (!v24)
  {
    PXAssertGetLog();
  }

LABEL_71:
  v47 = v24;
  v59 = referencedItemsDescription;
  v48 = +[PXLemonadeSettings sharedInstance];
  forceHideProcessingUI = [v48 forceHideProcessingUI];

  v79[0] = MEMORY[0x1E69E9820];
  v79[1] = 3221225472;
  v79[2] = __69__PXCuratedLibraryFooterViewModel__updateExposedPropertiesForReason___block_invoke_390;
  v79[3] = &unk_1E7735098;
  v80 = v47;
  v81 = referencedItemsDescription;
  v82 = v69;
  v83 = v13;
  v84 = failureDescription;
  v85 = v30;
  v96 = isPaused;
  v95 = v103;
  v86 = actionTitle;
  v87 = actionConfirmationAlertTitle;
  v88 = actionConfirmationAlertSubtitle;
  v89 = actionConfirmationAlertButtonTitle;
  v92 = v62;
  v93 = 0;
  v90 = informationView;
  v91 = premiumInformationView;
  v94 = v60;
  v97 = v33 & (forceHideProcessingUI ^ 1);
  v61 = premiumInformationView;
  v77 = informationView;
  v50 = v62;
  v51 = actionConfirmationAlertButtonTitle;
  v74 = actionConfirmationAlertSubtitle;
  v66 = actionConfirmationAlertTitle;
  v68 = actionTitle;
  v52 = v30;
  v53 = failureDescription;
  v54 = v13;
  v55 = v69;
  v56 = v59;
  v57 = v47;
  [p_isa performChanges:v79];
}

void __69__PXCuratedLibraryFooterViewModel__updateExposedPropertiesForReason___block_invoke_390(uint64_t a1, void *a2)
{
  v3 = *(a1 + 136);
  v5 = a2;
  [v5 setAnimatedIconMode:v3];
  [v5 setTitle:*(a1 + 32)];
  [v5 setExtendedTitle:*(a1 + 40)];
  [v5 setFilterView:*(a1 + 48)];
  [v5 setSubtitle1:*(a1 + 56)];
  [v5 setSubtitle2:*(a1 + 64)];
  [v5 setInternalMessageSubtitle:*(a1 + 72)];
  [v5 setIsPaused:*(a1 + 156)];
  LODWORD(v4) = *(a1 + 152);
  [v5 setProgress:v4];
  [v5 setActionTitle:*(a1 + 80)];
  [v5 setActionConfirmationAlertTitle:*(a1 + 88)];
  [v5 setActionConfirmationAlertSubtitle:*(a1 + 96)];
  [v5 setActionConfirmationAlertButtonTitle:*(a1 + 104)];
  [v5 setAction:*(a1 + 128)];
  [v5 setAccessoryView:*(a1 + 112)];
  [v5 setTopAccessoryView:*(a1 + 120)];
  [v5 setSubtitle1Style:*(a1 + 144)];
  [v5 setIsProcessing:*(a1 + 157)];
}

- (void)_updateHasImportantInformation
{
  status = [(PXCPLUIStatusProvider *)self->_cplUIStatusProvider status];
  if (PXCPLUIStatusHasImportantInformation(status))
  {
    [(PXCuratedLibraryFooterViewModel *)self mode];
LABEL_4:
    v6 = 1;
    goto LABEL_5;
  }

  hasAnyInformationViews = [(PXCloudQuotaControllerHelper *)self->_cloudQuotaHelper hasAnyInformationViews];
  mode = [(PXCuratedLibraryFooterViewModel *)self mode];
  if (hasAnyInformationViews)
  {
    goto LABEL_4;
  }

  v9 = mode;
  if ((mode - 1) > 1)
  {
    v6 = 0;
  }

  else
  {
    standardUserDefaults = [off_1E7721948 standardUserDefaults];
    didShowCurationFooter = [standardUserDefaults didShowCurationFooter];
    if ([didShowCurationFooter BOOLValue])
    {
      v6 = 0;
    }

    else
    {
      v12 = objc_opt_class();
      analysisStatus = [(PXCuratedLibraryFooterViewModel *)self analysisStatus];
      standardUserDefaults2 = [off_1E7721948 standardUserDefaults];
      v6 = [v12 hasAnalysisProgressForMode:v9 analysisStatus:analysisStatus cplUIStatus:status userDefaults:standardUserDefaults2 outAnimatedIconMode:0 outProgress:0 outTitle:0 outDescription:0];
    }

    didShowCompletedCurationFooterAnimation = [standardUserDefaults didShowCompletedCurationFooterAnimation];
    if (([didShowCompletedCurationFooterAnimation BOOLValue] & 1) == 0)
    {
      analysisStatus2 = [(PXCuratedLibraryFooterViewModel *)self analysisStatus];
      v17 = [analysisStatus2 state] == 1;

      v6 |= v17;
    }
  }

LABEL_5:
  v7 = +[PXFooterSettings sharedInstance];
  simulateImportantInformation = [v7 simulateImportantInformation];

  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __65__PXCuratedLibraryFooterViewModel__updateHasImportantInformation__block_invoke;
  v18[3] = &__block_descriptor_33_e36_v16__0___PXMutableFooterViewModel__8l;
  v19 = (simulateImportantInformation | v6) & 1;
  [(PXCuratedLibraryFooterViewModel *)self performChanges:v18];
}

- (BOOL)shouldAlternateTitleWithAnimatedGridCycle
{
  standardUserDefaults = [off_1E7721948 standardUserDefaults];
  didShowCompletedCurationFooterAnimation = [standardUserDefaults didShowCompletedCurationFooterAnimation];
  bOOLValue = [didShowCompletedCurationFooterAnimation BOOLValue];

  if (bOOLValue)
  {
    return 0;
  }

  settings = [(PXCuratedLibraryFooterViewModel *)self settings];
  shouldAlternateTitleWithGridCycle = [settings shouldAlternateTitleWithGridCycle];

  return shouldAlternateTitleWithGridCycle;
}

- (void)footerAnimationCrossedGridCycleBoundary
{
  v8.receiver = self;
  v8.super_class = PXCuratedLibraryFooterViewModel;
  [(PXCuratedLibraryFooterViewModel *)&v8 footerAnimationCrossedGridCycleBoundary];
  settings = [(PXCuratedLibraryFooterViewModel *)self settings];
  if ([(PXCuratedLibraryFooterViewModel *)self shouldAlternateTitleWithAnimatedGridCycle])
  {
    v4 = self->_animatedGridCycleIndex + 1;
    self->_animatedGridCycleIndex = v4;
    if (!(v4 % [settings alternateTitleGridCycleCount]))
    {
      [settings alternateTitleGridCycleDelay];
      v6 = dispatch_time(0, (v5 * 1000000000.0));
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __74__PXCuratedLibraryFooterViewModel_footerAnimationCrossedGridCycleBoundary__block_invoke;
      block[3] = &unk_1E774C648;
      block[4] = self;
      dispatch_after(v6, MEMORY[0x1E69E96A0], block);
    }
  }
}

void __74__PXCuratedLibraryFooterViewModel_footerAnimationCrossedGridCycleBoundary__block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) isFooterShown])
  {
    v2 = [*(a1 + 32) analysisStatus];
    [v2 cycleToNextAlternateTitle];
  }
}

- (void)setIsFooterShown:(BOOL)shown
{
  if (self->_isFooterShown != shown)
  {
    shownCopy = shown;
    self->_isFooterShown = shown;
    if (![(PXCuratedLibraryFooterViewModel *)self shouldAlternateTitleWithAnimatedGridCycle])
    {
      analysisStatus = [(PXCuratedLibraryFooterViewModel *)self analysisStatus];
      v6 = analysisStatus;
      if (shownCopy)
      {
        [analysisStatus startCyclingThroughAlternateTitles];
      }

      else
      {
        [analysisStatus stopCyclingThroughAlternateTitles];
      }
    }
  }
}

- (void)didHideFooter
{
  [(PXCuratedLibraryFooterViewModel *)self setIsFooterShown:0];
  standardUserDefaults = [off_1E7721948 standardUserDefaults];
  animatedIconMode = [(PXCuratedLibraryFooterViewModel *)self animatedIconMode];
  if (animatedIconMode)
  {
    v4 = animatedIconMode;
    [standardUserDefaults setDidShowCurationFooter:MEMORY[0x1E695E118]];
    if (v4 == 3)
    {
      [standardUserDefaults setDidShowCompletedCurationFooterAnimation:MEMORY[0x1E695E118]];
      [(PXCuratedLibraryFooterViewModel *)self _updateExposedPropertiesForReason:@"DidShowCompletedCurationFooterAnimation"];
    }
  }
}

- (void)setMode:(int64_t)mode
{
  if (self->_mode != mode)
  {
    self->_mode = mode;
    [(PXCuratedLibraryFooterViewModel *)self _updateExposedPropertiesForReason:@"PXCuratedLibraryFooterViewModelMode"];

    [(PXCuratedLibraryFooterViewModel *)self _updateHasImportantInformation];
  }
}

- (PXCuratedLibraryFooterViewModel)initWithItemCountsController:(id)controller cplUIStatusProvider:(id)provider analysisStatus:(id)status mode:(int64_t)mode viewModel:(id)model
{
  controllerCopy = controller;
  providerCopy = provider;
  statusCopy = status;
  modelCopy = model;
  v43.receiver = self;
  v43.super_class = PXCuratedLibraryFooterViewModel;
  v17 = [(PXCuratedLibraryFooterViewModel *)&v43 init];
  if (v17)
  {
    modeCopy = mode;
    photoLibrary = [modelCopy photoLibrary];
    photoLibrary = v17->_photoLibrary;
    v17->_photoLibrary = photoLibrary;

    configuration = [modelCopy configuration];
    featureAvailabilityMonitor = [configuration featureAvailabilityMonitor];
    featureAvailabilityMonitor = v17->_featureAvailabilityMonitor;
    v17->_featureAvailabilityMonitor = featureAvailabilityMonitor;

    observable = [(PXLemonadeFeatureAvailabilityMonitor *)v17->_featureAvailabilityMonitor observable];
    [observable registerChangeObserver:v17 context:PXLemonadeFeatureAvailabilityMonitorObservationContext];

    v24 = [PXSharedLibraryStatusProvider sharedLibraryStatusProviderWithPhotoLibrary:v17->_photoLibrary];
    sharedLibraryStatusProvider = v17->_sharedLibraryStatusProvider;
    v17->_sharedLibraryStatusProvider = v24;

    [(PXSharedLibraryStatusProvider *)v17->_sharedLibraryStatusProvider registerChangeObserver:v17 context:PXSharedLibraryStatusProviderObservationContext_73374];
    libraryFilterState = [modelCopy libraryFilterState];
    libraryFilterState = v17->_libraryFilterState;
    v17->_libraryFilterState = libraryFilterState;

    [(PXLibraryFilterState *)v17->_libraryFilterState registerChangeObserver:v17 context:PXLibraryFilterStateObservationContext_73376];
    objc_storeStrong(&v17->_itemCountsController, controller);
    [(PXAssetsDataSourceCountsController *)v17->_itemCountsController prepareCountsIfNeeded];
    [(PXAssetsDataSourceCountsController *)v17->_itemCountsController registerChangeObserver:v17 context:CuratedLibraryItemCountsControllerObserverContext];
    objc_storeStrong(&v17->_cplUIStatusProvider, provider);
    [(PXCPLUIStatusProvider *)v17->_cplUIStatusProvider registerChangeObserver:v17 context:PXCPLUIStatusProviderObserverContext];
    v28 = [[PXCPLPhotoLibrarySource alloc] initWithPhotoLibrary:v17->_photoLibrary];
    photoLibrarySource = v17->_photoLibrarySource;
    v17->_photoLibrarySource = v28;

    [(PXCPLPhotoLibrarySource *)v17->_photoLibrarySource registerChangeObserver:v17 context:PXCPLPhotoLibrarySourceObservationContext_73378];
    v30 = objc_alloc_init(PXCloudQuotaControllerHelper);
    cloudQuotaHelper = v17->_cloudQuotaHelper;
    v17->_cloudQuotaHelper = v30;

    [(PXCloudQuotaControllerHelper *)v17->_cloudQuotaHelper setDelegate:v17];
    v32 = +[PXFooterSettings sharedInstance];
    showFilterView = [v32 showFilterView];

    if (showFilterView)
    {
      objc_storeStrong(&v17->_curatedLibraryViewModel, model);
      v34 = [PXFilterFooterController alloc];
      actionManager = [modelCopy actionManager];
      v36 = [(PXFilterFooterController *)v34 initWithActionManager:actionManager photoLibrary:v17->_photoLibrary];
      filterFooterController = v17->_filterFooterController;
      v17->_filterFooterController = v36;

      [(PXFilterFooterController *)v17->_filterFooterController setSharedLibraryStatusProvider:v17->_sharedLibraryStatusProvider];
      [(PXFilterFooterController *)v17->_filterFooterController setLibraryFilterState:v17->_libraryFilterState];
      currentContentFilterState = [(PXCuratedLibraryViewModel *)v17->_curatedLibraryViewModel currentContentFilterState];
      [(PXFilterFooterController *)v17->_filterFooterController setContentFilterState:currentContentFilterState];

      [modelCopy registerChangeObserver:v17 context:PXCuratedLibraryViewModelObserverContext_73372];
    }

    objc_storeStrong(&v17->_analysisStatus, status);
    [(PXCuratedLibraryAnalysisStatus *)v17->_analysisStatus registerChangeObserver:v17 context:CuratedLibraryAnalysisStatusObserverContext];
    v17->_mode = modeCopy;
    v39 = +[PXFooterSettings sharedInstance];
    settings = v17->_settings;
    v17->_settings = v39;

    [(PXSettings *)v17->_settings addDeferredKeyObserver:v17];
    [(PXCuratedLibraryFooterViewModel *)v17 _updateExposedPropertiesForReason:@"<initial>"];
    [(PXCuratedLibraryFooterViewModel *)v17 _updateHasImportantInformation];
  }

  return v17;
}

- (PXCuratedLibraryFooterViewModel)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXCuratedLibraryFooterViewModel.m" lineNumber:124 description:{@"%s is not available as initializer", "-[PXCuratedLibraryFooterViewModel init]"}];

  abort();
}

+ (BOOL)hasAnalysisProgressForMode:(int64_t)mode analysisStatus:(id)status cplUIStatus:(id)iStatus userDefaults:(id)defaults outAnimatedIconMode:(int64_t *)iconMode outProgress:(float *)progress outTitle:(id *)title outDescription:(id *)self0
{
  statusCopy = status;
  iStatusCopy = iStatus;
  defaultsCopy = defaults;
  if ((mode - 1) > 1)
  {
    goto LABEL_5;
  }

  v18 = +[PXCuratedLibrarySettings sharedInstance];
  hideAnalyzingStatus = [v18 hideAnalyzingStatus];

  if (hideAnalyzingStatus)
  {
    goto LABEL_5;
  }

  if (PXCPLUIStatusHasImportantInformation(iStatusCopy))
  {
    goto LABEL_5;
  }

  actionTitle = [iStatusCopy actionTitle];

  if (actionTitle)
  {
    goto LABEL_5;
  }

  v23 = statusCopy;
  v24 = defaultsCopy;
  v25 = +[PXFooterSettings sharedInstance];
  simulateAnimatedIconMode = [v25 simulateAnimatedIconMode];

  if (simulateAnimatedIconMode)
  {
    v36 = +[PXFooterSettings sharedInstance];
    simulatedAnimatedIconMode = [v36 simulatedAnimatedIconMode];

    if (simulatedAnimatedIconMode)
    {
      goto LABEL_19;
    }
  }

  else
  {
    didShowCompletedCurationFooterAnimation = [v24 didShowCompletedCurationFooterAnimation];
    bOOLValue = [didShowCompletedCurationFooterAnimation BOOLValue];

    if ((bOOLValue & 1) == 0)
    {
      state = [v23 state];
      if (state == 1)
      {
        simulatedAnimatedIconMode = 3;
LABEL_18:

        goto LABEL_19;
      }

      if (state == 2)
      {
        if ([v23 isDevicePlugged])
        {
          simulatedAnimatedIconMode = 2;
        }

        else
        {
          simulatedAnimatedIconMode = 1;
        }

        goto LABEL_18;
      }
    }
  }

  if ([v23 state] != 2)
  {
LABEL_5:
    v21 = 0;
    goto LABEL_6;
  }

  simulatedAnimatedIconMode = 0;
LABEL_19:
  if (progress)
  {
    [v23 displayProgress];
    v32 = v31;
    state2 = [v23 state];
    v34 = v32 == -1.0 || state2 == 1;
    v35 = *off_1E7721FC8;
    if (!v34)
    {
      v35 = v32;
    }

    *progress = v35;
  }

  if (description)
  {
    *description = [v23 localizedDescription];
  }

  if (title)
  {
    *title = [v23 localizedTitle];
  }

  if (iconMode)
  {
    *iconMode = simulatedAnimatedIconMode;
  }

  v21 = 1;
LABEL_6:

  return v21;
}

+ (id)_titleWithOptionalDescription:(id *)description progress:(float *)progress forMode:(int64_t)mode itemCountsController:(id)controller analysisStatus:(id)status cplUIStatus:(id)iStatus inRebuild:(BOOL)rebuild reason:(id)self0
{
  v52 = *MEMORY[0x1E69E9840];
  controllerCopy = controller;
  statusCopy = status;
  iStatusCopy = iStatus;
  reasonCopy = reason;
  v20 = *off_1E7721FC8;
  if ((mode - 1) < 2)
  {
    localizedTitle = [statusCopy localizedTitle];
    localizedDescription = [statusCopy localizedDescription];
    if (!description)
    {
      goto LABEL_16;
    }

LABEL_15:
    v29 = localizedDescription;
    *description = localizedDescription;
    goto LABEL_16;
  }

  if (!mode)
  {
    if (controllerCopy)
    {
      [controllerCopy counts];
    }

    inResetSync = [iStatusCopy inResetSync];
    localizedDescription = 0;
    if (iStatusCopy && ((rebuild | inResetSync) & 1) != 0)
    {
      numberOfPhotoAssets = [iStatusCopy numberOfPhotoAssets];
      numberOfVideoAssets = [iStatusCopy numberOfVideoAssets];
      numberOfOtherAssets = [iStatusCopy numberOfOtherAssets];
      v27 = numberOfVideoAssets + numberOfPhotoAssets + numberOfOtherAssets;
      if (v27 && v27 > v34)
      {
        v35 = numberOfPhotoAssets;
        v36 = numberOfVideoAssets;
        v37 = numberOfOtherAssets;
        v28 = v27;
        if (rebuild)
        {
          localizedDescription = PXLocalizedStringFromTable(@"PXCPLStatus_Rebuild", @"PhotosUICore");
        }

        else
        {
          localizedDescription = 0;
        }

        v20 = v34 / v28;
        v31 = PLUserStatusUIGetLog();
        if (!os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
        {
LABEL_32:

          localizedTitle = PLLocalizedCountDescription();
          if (description)
          {
            goto LABEL_15;
          }

          goto LABEL_16;
        }

        v33 = @"reset";
        if (rebuild)
        {
          v33 = @"rebuild";
        }

        *buf = 138544898;
        selfCopy2 = self;
        v40 = 2114;
        v41 = v33;
        v42 = 2048;
        v43 = v20;
        v44 = 2048;
        v45 = v35;
        v46 = 2048;
        v47 = v36;
        v48 = 2048;
        v49 = v37;
        v50 = 2114;
        v51 = reasonCopy;
        v32 = "%{public}@ Cloud counts for <%{public}@, progress:%f>: photos:%lu, videos:%lu, others:%lu [Reason: %{public}@]";
LABEL_31:
        _os_log_impl(&dword_1A3C1C000, v31, OS_LOG_TYPE_DEFAULT, v32, buf, 0x48u);
        goto LABEL_32;
      }

      if (rebuild)
      {
        localizedDescription = PXLocalizedStringFromTable(@"PXCPLStatus_Rebuild", @"PhotosUICore");
      }

      else
      {
        localizedDescription = 0;
      }
    }

    v31 = PLUserStatusUIGetLog();
    if (!os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_32;
    }

    *buf = 138544898;
    selfCopy2 = self;
    v40 = 2114;
    v41 = objc_opt_class();
    v42 = 2048;
    v43 = *&controllerCopy;
    v44 = 2048;
    v45 = 0;
    v46 = 2048;
    v47 = 0;
    v48 = 2048;
    v49 = 0;
    v50 = 2114;
    v51 = reasonCopy;
    v32 = "%{public}@ Local counts for <%{public}@:%p>: photos:%lu, videos:%lu, others:%lu [Reason: %{public}@]";
    goto LABEL_31;
  }

  localizedDescription = 0;
  localizedTitle = 0;
  if (description)
  {
    goto LABEL_15;
  }

LABEL_16:
  if (progress)
  {
    *progress = v20;
  }

  return localizedTitle;
}

@end