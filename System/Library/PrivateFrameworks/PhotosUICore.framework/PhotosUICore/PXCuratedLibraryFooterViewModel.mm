@interface PXCuratedLibraryFooterViewModel
+ (BOOL)hasAnalysisProgressForMode:(int64_t)a3 analysisStatus:(id)a4 cplUIStatus:(id)a5 userDefaults:(id)a6 outAnimatedIconMode:(int64_t *)a7 outProgress:(float *)a8 outTitle:(id *)a9 outDescription:(id *)a10;
+ (id)_titleWithOptionalDescription:(id *)a3 progress:(float *)a4 forMode:(int64_t)a5 itemCountsController:(id)a6 analysisStatus:(id)a7 cplUIStatus:(id)a8 inRebuild:(BOOL)a9 reason:(id)a10;
- (BOOL)shouldAlternateTitleWithAnimatedGridCycle;
- (PXCuratedLibraryFooterViewModel)init;
- (PXCuratedLibraryFooterViewModel)initWithItemCountsController:(id)a3 cplUIStatusProvider:(id)a4 analysisStatus:(id)a5 mode:(int64_t)a6 viewModel:(id)a7;
- (PXCuratedLibraryFooterViewModelPresentationDelegate)presentingDelegate;
- (id)presentingViewControllerForCloudQuotaControllerHelper:(id)a3;
- (void)_updateExposedPropertiesForReason:(id)a3;
- (void)_updateHasImportantInformation;
- (void)cloudQuotaControllerHelper:(id)a3 informationViewDidChange:(id)a4;
- (void)didHideFooter;
- (void)footerAnimationCrossedGridCycleBoundary;
- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5;
- (void)setIsFooterShown:(BOOL)a3;
- (void)setMode:(int64_t)a3;
- (void)settings:(id)a3 changedValueForKey:(id)a4;
@end

@implementation PXCuratedLibraryFooterViewModel

- (PXCuratedLibraryFooterViewModelPresentationDelegate)presentingDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_presentingDelegate);

  return WeakRetained;
}

- (void)settings:(id)a3 changedValueForKey:(id)a4
{
  v5 = a4;
  if (([v5 isEqualToString:@"simulateAnimatedIconMode"] & 1) != 0 || objc_msgSend(v5, "isEqualToString:", @"simulatedAnimatedIconMode"))
  {
    [(PXCuratedLibraryFooterViewModel *)self _updateExposedPropertiesForReason:@"SimulateAnimatedIconMode"];
  }

  if ([v5 isEqualToString:@"simulateImportantInformation"])
  {
    [(PXCuratedLibraryFooterViewModel *)self _updateHasImportantInformation];
  }
}

- (id)presentingViewControllerForCloudQuotaControllerHelper:(id)a3
{
  v4 = [(PXCuratedLibraryFooterViewModel *)self presentingDelegate];
  v5 = [v4 presentingViewControllerForFooterViewModel:self];

  return v5;
}

- (void)cloudQuotaControllerHelper:(id)a3 informationViewDidChange:(id)a4
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __87__PXCuratedLibraryFooterViewModel_cloudQuotaControllerHelper_informationViewDidChange___block_invoke;
  v4[3] = &unk_1E77350C0;
  v4[4] = self;
  [(PXCuratedLibraryFooterViewModel *)self performChanges:v4, a4];
}

uint64_t __87__PXCuratedLibraryFooterViewModel_cloudQuotaControllerHelper_informationViewDidChange___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _updateExposedPropertiesForReason:@"PXCloudQuotaControllerHelper"];
  v2 = *(a1 + 32);

  return [v2 _updateHasImportantInformation];
}

- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5
{
  v6 = a4;
  v9 = a3;
  if (CuratedLibraryItemCountsControllerObserverContext == a5)
  {
    if ((v6 & 1) == 0)
    {
      goto LABEL_17;
    }

    v10 = @"PXAssetsDataSourceCountsController";
    goto LABEL_13;
  }

  if (CuratedLibraryAnalysisStatusObserverContext == a5)
  {
    v10 = @"PXCuratedLibraryAnalysisStatus";
    goto LABEL_13;
  }

  if (PXCPLUIStatusProviderObserverContext == a5)
  {
    v15 = v9;
    [(PXCuratedLibraryFooterViewModel *)self _updateExposedPropertiesForReason:@"PXCPLUIStatusProvider"];
    [(PXCuratedLibraryFooterViewModel *)self _updateHasImportantInformation];
    goto LABEL_16;
  }

  if (PXCuratedLibraryViewModelObserverContext_73372 == a5)
  {
    if ((v6 & 0x2000000) != 0)
    {
      v15 = v9;
      v11 = [(PXCuratedLibraryViewModel *)self->_curatedLibraryViewModel currentContentFilterState];
      [(PXFilterFooterController *)self->_filterFooterController setContentFilterState:v11];

      v10 = @"PXCuratedLibraryViewModel";
      goto LABEL_14;
    }
  }

  else if (PXSharedLibraryStatusProviderObservationContext_73374 == a5)
  {
    if ((v6 & 3) != 0)
    {
      v15 = v9;
      v12 = [(PXCuratedLibraryFooterViewModel *)self sharedLibraryStatusProvider];
      [(PXFilterFooterController *)self->_filterFooterController setSharedLibraryStatusProvider:v12];

      v10 = @"PXSharedLibraryStatusProvider";
      goto LABEL_14;
    }
  }

  else if (PXLibraryFilterStateObservationContext_73376 == a5)
  {
    if (v6)
    {
      v15 = v9;
      v13 = [(PXCuratedLibraryFooterViewModel *)self libraryFilterState];
      [(PXFilterFooterController *)self->_filterFooterController setLibraryFilterState:v13];

      v10 = @"PXLibraryFilterState";
      goto LABEL_14;
    }
  }

  else
  {
    if (PXCPLPhotoLibrarySourceObservationContext_73378 != a5)
    {
      v14 = [MEMORY[0x1E696AAA8] currentHandler];
      [v14 handleFailureInMethod:a2 object:self file:@"PXCuratedLibraryFooterViewModel.m" lineNumber:609 description:@"Code which should be unreachable has been reached"];

      abort();
    }

    if ((v6 & 8) != 0)
    {
      v10 = @"PXCPLPhotoLibrarySource";
LABEL_13:
      v15 = v9;
LABEL_14:
      [(PXCuratedLibraryFooterViewModel *)self _updateExposedPropertiesForReason:v10];
LABEL_16:
      v9 = v15;
    }
  }

LABEL_17:
}

- (void)_updateExposedPropertiesForReason:(id)a3
{
  v3 = self;
  v112 = *MEMORY[0x1E69E9840];
  v4 = *off_1E7721FC8;
  v103 = *off_1E7721FC8;
  cplUIStatusProvider = self->_cplUIStatusProvider;
  v6 = a3;
  v7 = [(PXCPLUIStatusProvider *)cplUIStatusProvider status];
  if (PXCloudQuotaCanShowInformationView(v7))
  {
    v76 = [(PXCloudQuotaControllerHelper *)v3->_cloudQuotaHelper informationView];
    v73 = [(PXCloudQuotaControllerHelper *)v3->_cloudQuotaHelper premiumInformationView];
  }

  else
  {
    v73 = 0;
    v76 = 0;
  }

  v8 = [(PXCuratedLibraryFooterViewModel *)v3 mode];
  v9 = [(PXCuratedLibraryFooterViewModel *)v3 itemCountsController];
  v10 = [(PXCuratedLibraryFooterViewModel *)v3 analysisStatus];
  v102 = 0;
  v11 = [(PXCuratedLibraryFooterViewModel *)v3 photoLibrary];
  v12 = [v11 hasSyncProgressReturningImportOperations:&v102];

  p_isa = &v3->super.super.super.isa;
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

    v3 = p_isa;
  }

  else
  {
    v13 = 0;
  }

  v101 = 0;
  LOBYTE(v58) = (v102 & 0x10) != 0;
  v16 = [objc_opt_class() _titleWithOptionalDescription:&v101 progress:&v103 forMode:v8 itemCountsController:v9 analysisStatus:v10 cplUIStatus:v7 inRebuild:v58 reason:v6];

  v17 = v101;
  v70 = v17;
  if (v17)
  {
    v18 = v17;

    v13 = v18;
  }

  v19 = +[PXFooterSettings sharedInstance];
  v20 = [v19 showFilterView];

  if (v20)
  {
    v21 = [(PXFilterFooterController *)v3->_filterFooterController view];
    v22 = [(PXFilterFooterController *)v3->_filterFooterController contentFilterState];
    v69 = v21;
    if (v21)
    {
      v23 = PLUserStatusUIGetLog();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543618;
        v105 = v3;
        v106 = 2114;
        v107 = v22;
        _os_log_impl(&dword_1A3C1C000, v23, OS_LOG_TYPE_DEFAULT, "%{public}@ Show filter view in footer: %{public}@", buf, 0x16u);
      }
    }

    if (v12)
    {
      LOBYTE(v12) = 1;
    }

    else
    {
      LOBYTE(v12) = [v22 isFiltering];
    }

    v24 = v16;
  }

  else
  {
    v69 = 0;
    v24 = v16;
  }

  v75 = v7;
  v71 = v10;
  v72 = v9;
  if (v7 && (v12 & 1) == 0)
  {
    v25 = [v10 localizedTitle];
    v26 = [v24 isEqualToString:v25];

    if (v26)
    {

      v24 = 0;
    }

    if (v8)
    {
      v27 = 0;
    }

    else
    {
      v27 = [v7 referencedItemsDescription];
    }

    v32 = [v7 stateDescription];

    v31 = [v7 failureDescription];
    v35 = [v7 internalInformationMessage];
    v29 = [v7 isPaused];
    *&v36 = v103;
    if (v103 == v4)
    {
      [v7 progress];
      v103 = v37;
    }

    v67 = [v7 actionTitle];
    v65 = [v7 actionConfirmationAlertTitle];
    v64 = [v7 actionConfirmationAlertSubtitle];
    v63 = [v7 actionConfirmationAlertButtonTitle];
    v38 = [v7 action];
    v34 = v38;
    if (v38)
    {
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __69__PXCuratedLibraryFooterViewModel__updateExposedPropertiesForReason___block_invoke;
      aBlock[3] = &unk_1E774C2F0;
      v100 = v38;
      v99 = v7;
      v62 = _Block_copy(aBlock);
    }

    else
    {
      v62 = 0;
    }

    v40 = [v7 pauseReason] == 2 && v76 != 0;
    v60 = v40;
    if (v8 != 2 || v24 || v27)
    {
      v30 = v35;
    }

    else
    {
      v30 = v35;
      if ((PXCPLUIStatusHasImportantInformation(v75) & 1) == 0)
      {
        v41 = [v75 actionTitle];

        if (!v41)
        {

          v31 = 0;
          v32 = 0;
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
      v109 = v32;
      v110 = 2114;
      v111 = v31;
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

      if (v8)
      {

        v103 = -1.0;
        v24 = 0;
        v76 = 0;
        v60 = 0;
        v62 = 0;
        v63 = 0;
        v64 = 0;
        v65 = 0;
        v67 = 0;
        v29 = 0;
        v30 = 0;
        v31 = 0;
        v27 = 0;
        v32 = 0;
        v33 = 1;
        v34 = v73;
        v73 = 0;
LABEL_54:

        v13 = v32;
        goto LABEL_61;
      }
    }

    else
    {
    }

    if ([p_isa[31] isRebuildingThumbnails])
    {
      v32 = PXLocalizedStringFromTable(@"PXCPLStatusRebuildingThumbnails", @"PhotosUICore");

      v34 = PLUserStatusUIGetLog();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138544130;
        v105 = p_isa;
        v106 = 2114;
        v107 = v24;
        v108 = 2114;
        v109 = v32;
        v110 = 2114;
        v111 = 0;
        _os_log_impl(&dword_1A3C1C000, v34, OS_LOG_TYPE_DEFAULT, "%{public}@ Did provide thumbnail rebuild status: %{public}@, %{public}@, %{public}@", buf, 0x2Au);
      }

      v33 = 0;
      v60 = 0;
      v62 = 0;
      v63 = 0;
      v64 = 0;
      v65 = 0;
      v67 = 0;
      v29 = 0;
      v30 = 0;
      v31 = 0;
      v27 = 0;
      goto LABEL_54;
    }
  }

  v33 = 0;
  v60 = 0;
  v62 = 0;
  v63 = 0;
  v64 = 0;
  v65 = 0;
  v67 = 0;
  v29 = 0;
  v30 = 0;
  v31 = 0;
  v27 = 0;
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

    if (!v27)
    {
      goto LABEL_71;
    }

    goto LABEL_69;
  }

  v24 = v44;
  if (!v27)
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
  v59 = v27;
  v48 = +[PXLemonadeSettings sharedInstance];
  v49 = [v48 forceHideProcessingUI];

  v79[0] = MEMORY[0x1E69E9820];
  v79[1] = 3221225472;
  v79[2] = __69__PXCuratedLibraryFooterViewModel__updateExposedPropertiesForReason___block_invoke_390;
  v79[3] = &unk_1E7735098;
  v80 = v47;
  v81 = v27;
  v82 = v69;
  v83 = v13;
  v84 = v31;
  v85 = v30;
  v96 = v29;
  v95 = v103;
  v86 = v67;
  v87 = v65;
  v88 = v64;
  v89 = v63;
  v92 = v62;
  v93 = 0;
  v90 = v76;
  v91 = v73;
  v94 = v60;
  v97 = v33 & (v49 ^ 1);
  v61 = v73;
  v77 = v76;
  v50 = v62;
  v51 = v63;
  v74 = v64;
  v66 = v65;
  v68 = v67;
  v52 = v30;
  v53 = v31;
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
  v3 = [(PXCPLUIStatusProvider *)self->_cplUIStatusProvider status];
  if (PXCPLUIStatusHasImportantInformation(v3))
  {
    [(PXCuratedLibraryFooterViewModel *)self mode];
LABEL_4:
    v6 = 1;
    goto LABEL_5;
  }

  v4 = [(PXCloudQuotaControllerHelper *)self->_cloudQuotaHelper hasAnyInformationViews];
  v5 = [(PXCuratedLibraryFooterViewModel *)self mode];
  if (v4)
  {
    goto LABEL_4;
  }

  v9 = v5;
  if ((v5 - 1) > 1)
  {
    v6 = 0;
  }

  else
  {
    v10 = [off_1E7721948 standardUserDefaults];
    v11 = [v10 didShowCurationFooter];
    if ([v11 BOOLValue])
    {
      v6 = 0;
    }

    else
    {
      v12 = objc_opt_class();
      v13 = [(PXCuratedLibraryFooterViewModel *)self analysisStatus];
      v14 = [off_1E7721948 standardUserDefaults];
      v6 = [v12 hasAnalysisProgressForMode:v9 analysisStatus:v13 cplUIStatus:v3 userDefaults:v14 outAnimatedIconMode:0 outProgress:0 outTitle:0 outDescription:0];
    }

    v15 = [v10 didShowCompletedCurationFooterAnimation];
    if (([v15 BOOLValue] & 1) == 0)
    {
      v16 = [(PXCuratedLibraryFooterViewModel *)self analysisStatus];
      v17 = [v16 state] == 1;

      v6 |= v17;
    }
  }

LABEL_5:
  v7 = +[PXFooterSettings sharedInstance];
  v8 = [v7 simulateImportantInformation];

  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __65__PXCuratedLibraryFooterViewModel__updateHasImportantInformation__block_invoke;
  v18[3] = &__block_descriptor_33_e36_v16__0___PXMutableFooterViewModel__8l;
  v19 = (v8 | v6) & 1;
  [(PXCuratedLibraryFooterViewModel *)self performChanges:v18];
}

- (BOOL)shouldAlternateTitleWithAnimatedGridCycle
{
  v3 = [off_1E7721948 standardUserDefaults];
  v4 = [v3 didShowCompletedCurationFooterAnimation];
  v5 = [v4 BOOLValue];

  if (v5)
  {
    return 0;
  }

  v7 = [(PXCuratedLibraryFooterViewModel *)self settings];
  v8 = [v7 shouldAlternateTitleWithGridCycle];

  return v8;
}

- (void)footerAnimationCrossedGridCycleBoundary
{
  v8.receiver = self;
  v8.super_class = PXCuratedLibraryFooterViewModel;
  [(PXCuratedLibraryFooterViewModel *)&v8 footerAnimationCrossedGridCycleBoundary];
  v3 = [(PXCuratedLibraryFooterViewModel *)self settings];
  if ([(PXCuratedLibraryFooterViewModel *)self shouldAlternateTitleWithAnimatedGridCycle])
  {
    v4 = self->_animatedGridCycleIndex + 1;
    self->_animatedGridCycleIndex = v4;
    if (!(v4 % [v3 alternateTitleGridCycleCount]))
    {
      [v3 alternateTitleGridCycleDelay];
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

- (void)setIsFooterShown:(BOOL)a3
{
  if (self->_isFooterShown != a3)
  {
    v3 = a3;
    self->_isFooterShown = a3;
    if (![(PXCuratedLibraryFooterViewModel *)self shouldAlternateTitleWithAnimatedGridCycle])
    {
      v5 = [(PXCuratedLibraryFooterViewModel *)self analysisStatus];
      v6 = v5;
      if (v3)
      {
        [v5 startCyclingThroughAlternateTitles];
      }

      else
      {
        [v5 stopCyclingThroughAlternateTitles];
      }
    }
  }
}

- (void)didHideFooter
{
  [(PXCuratedLibraryFooterViewModel *)self setIsFooterShown:0];
  v5 = [off_1E7721948 standardUserDefaults];
  v3 = [(PXCuratedLibraryFooterViewModel *)self animatedIconMode];
  if (v3)
  {
    v4 = v3;
    [v5 setDidShowCurationFooter:MEMORY[0x1E695E118]];
    if (v4 == 3)
    {
      [v5 setDidShowCompletedCurationFooterAnimation:MEMORY[0x1E695E118]];
      [(PXCuratedLibraryFooterViewModel *)self _updateExposedPropertiesForReason:@"DidShowCompletedCurationFooterAnimation"];
    }
  }
}

- (void)setMode:(int64_t)a3
{
  if (self->_mode != a3)
  {
    self->_mode = a3;
    [(PXCuratedLibraryFooterViewModel *)self _updateExposedPropertiesForReason:@"PXCuratedLibraryFooterViewModelMode"];

    [(PXCuratedLibraryFooterViewModel *)self _updateHasImportantInformation];
  }
}

- (PXCuratedLibraryFooterViewModel)initWithItemCountsController:(id)a3 cplUIStatusProvider:(id)a4 analysisStatus:(id)a5 mode:(int64_t)a6 viewModel:(id)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a7;
  v43.receiver = self;
  v43.super_class = PXCuratedLibraryFooterViewModel;
  v17 = [(PXCuratedLibraryFooterViewModel *)&v43 init];
  if (v17)
  {
    v42 = a6;
    v18 = [v16 photoLibrary];
    photoLibrary = v17->_photoLibrary;
    v17->_photoLibrary = v18;

    v20 = [v16 configuration];
    v21 = [v20 featureAvailabilityMonitor];
    featureAvailabilityMonitor = v17->_featureAvailabilityMonitor;
    v17->_featureAvailabilityMonitor = v21;

    v23 = [(PXLemonadeFeatureAvailabilityMonitor *)v17->_featureAvailabilityMonitor observable];
    [v23 registerChangeObserver:v17 context:PXLemonadeFeatureAvailabilityMonitorObservationContext];

    v24 = [PXSharedLibraryStatusProvider sharedLibraryStatusProviderWithPhotoLibrary:v17->_photoLibrary];
    sharedLibraryStatusProvider = v17->_sharedLibraryStatusProvider;
    v17->_sharedLibraryStatusProvider = v24;

    [(PXSharedLibraryStatusProvider *)v17->_sharedLibraryStatusProvider registerChangeObserver:v17 context:PXSharedLibraryStatusProviderObservationContext_73374];
    v26 = [v16 libraryFilterState];
    libraryFilterState = v17->_libraryFilterState;
    v17->_libraryFilterState = v26;

    [(PXLibraryFilterState *)v17->_libraryFilterState registerChangeObserver:v17 context:PXLibraryFilterStateObservationContext_73376];
    objc_storeStrong(&v17->_itemCountsController, a3);
    [(PXAssetsDataSourceCountsController *)v17->_itemCountsController prepareCountsIfNeeded];
    [(PXAssetsDataSourceCountsController *)v17->_itemCountsController registerChangeObserver:v17 context:CuratedLibraryItemCountsControllerObserverContext];
    objc_storeStrong(&v17->_cplUIStatusProvider, a4);
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
    v33 = [v32 showFilterView];

    if (v33)
    {
      objc_storeStrong(&v17->_curatedLibraryViewModel, a7);
      v34 = [PXFilterFooterController alloc];
      v35 = [v16 actionManager];
      v36 = [(PXFilterFooterController *)v34 initWithActionManager:v35 photoLibrary:v17->_photoLibrary];
      filterFooterController = v17->_filterFooterController;
      v17->_filterFooterController = v36;

      [(PXFilterFooterController *)v17->_filterFooterController setSharedLibraryStatusProvider:v17->_sharedLibraryStatusProvider];
      [(PXFilterFooterController *)v17->_filterFooterController setLibraryFilterState:v17->_libraryFilterState];
      v38 = [(PXCuratedLibraryViewModel *)v17->_curatedLibraryViewModel currentContentFilterState];
      [(PXFilterFooterController *)v17->_filterFooterController setContentFilterState:v38];

      [v16 registerChangeObserver:v17 context:PXCuratedLibraryViewModelObserverContext_73372];
    }

    objc_storeStrong(&v17->_analysisStatus, a5);
    [(PXCuratedLibraryAnalysisStatus *)v17->_analysisStatus registerChangeObserver:v17 context:CuratedLibraryAnalysisStatusObserverContext];
    v17->_mode = v42;
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
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PXCuratedLibraryFooterViewModel.m" lineNumber:124 description:{@"%s is not available as initializer", "-[PXCuratedLibraryFooterViewModel init]"}];

  abort();
}

+ (BOOL)hasAnalysisProgressForMode:(int64_t)a3 analysisStatus:(id)a4 cplUIStatus:(id)a5 userDefaults:(id)a6 outAnimatedIconMode:(int64_t *)a7 outProgress:(float *)a8 outTitle:(id *)a9 outDescription:(id *)a10
{
  v15 = a4;
  v16 = a5;
  v17 = a6;
  if ((a3 - 1) > 1)
  {
    goto LABEL_5;
  }

  v18 = +[PXCuratedLibrarySettings sharedInstance];
  v19 = [v18 hideAnalyzingStatus];

  if (v19)
  {
    goto LABEL_5;
  }

  if (PXCPLUIStatusHasImportantInformation(v16))
  {
    goto LABEL_5;
  }

  v20 = [v16 actionTitle];

  if (v20)
  {
    goto LABEL_5;
  }

  v23 = v15;
  v24 = v17;
  v25 = +[PXFooterSettings sharedInstance];
  v26 = [v25 simulateAnimatedIconMode];

  if (v26)
  {
    v36 = +[PXFooterSettings sharedInstance];
    v30 = [v36 simulatedAnimatedIconMode];

    if (v30)
    {
      goto LABEL_19;
    }
  }

  else
  {
    v27 = [v24 didShowCompletedCurationFooterAnimation];
    v28 = [v27 BOOLValue];

    if ((v28 & 1) == 0)
    {
      v29 = [v23 state];
      if (v29 == 1)
      {
        v30 = 3;
LABEL_18:

        goto LABEL_19;
      }

      if (v29 == 2)
      {
        if ([v23 isDevicePlugged])
        {
          v30 = 2;
        }

        else
        {
          v30 = 1;
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

  v30 = 0;
LABEL_19:
  if (a8)
  {
    [v23 displayProgress];
    v32 = v31;
    v33 = [v23 state];
    v34 = v32 == -1.0 || v33 == 1;
    v35 = *off_1E7721FC8;
    if (!v34)
    {
      v35 = v32;
    }

    *a8 = v35;
  }

  if (a10)
  {
    *a10 = [v23 localizedDescription];
  }

  if (a9)
  {
    *a9 = [v23 localizedTitle];
  }

  if (a7)
  {
    *a7 = v30;
  }

  v21 = 1;
LABEL_6:

  return v21;
}

+ (id)_titleWithOptionalDescription:(id *)a3 progress:(float *)a4 forMode:(int64_t)a5 itemCountsController:(id)a6 analysisStatus:(id)a7 cplUIStatus:(id)a8 inRebuild:(BOOL)a9 reason:(id)a10
{
  v52 = *MEMORY[0x1E69E9840];
  v16 = a6;
  v17 = a7;
  v18 = a8;
  v19 = a10;
  v20 = *off_1E7721FC8;
  if ((a5 - 1) < 2)
  {
    v21 = [v17 localizedTitle];
    v22 = [v17 localizedDescription];
    if (!a3)
    {
      goto LABEL_16;
    }

LABEL_15:
    v29 = v22;
    *a3 = v22;
    goto LABEL_16;
  }

  if (!a5)
  {
    if (v16)
    {
      [v16 counts];
    }

    v23 = [v18 inResetSync];
    v22 = 0;
    if (v18 && ((a9 | v23) & 1) != 0)
    {
      v24 = [v18 numberOfPhotoAssets];
      v25 = [v18 numberOfVideoAssets];
      v26 = [v18 numberOfOtherAssets];
      v27 = v25 + v24 + v26;
      if (v27 && v27 > v34)
      {
        v35 = v24;
        v36 = v25;
        v37 = v26;
        v28 = v27;
        if (a9)
        {
          v22 = PXLocalizedStringFromTable(@"PXCPLStatus_Rebuild", @"PhotosUICore");
        }

        else
        {
          v22 = 0;
        }

        v20 = v34 / v28;
        v31 = PLUserStatusUIGetLog();
        if (!os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
        {
LABEL_32:

          v21 = PLLocalizedCountDescription();
          if (a3)
          {
            goto LABEL_15;
          }

          goto LABEL_16;
        }

        v33 = @"reset";
        if (a9)
        {
          v33 = @"rebuild";
        }

        *buf = 138544898;
        v39 = a1;
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
        v51 = v19;
        v32 = "%{public}@ Cloud counts for <%{public}@, progress:%f>: photos:%lu, videos:%lu, others:%lu [Reason: %{public}@]";
LABEL_31:
        _os_log_impl(&dword_1A3C1C000, v31, OS_LOG_TYPE_DEFAULT, v32, buf, 0x48u);
        goto LABEL_32;
      }

      if (a9)
      {
        v22 = PXLocalizedStringFromTable(@"PXCPLStatus_Rebuild", @"PhotosUICore");
      }

      else
      {
        v22 = 0;
      }
    }

    v31 = PLUserStatusUIGetLog();
    if (!os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_32;
    }

    *buf = 138544898;
    v39 = a1;
    v40 = 2114;
    v41 = objc_opt_class();
    v42 = 2048;
    v43 = *&v16;
    v44 = 2048;
    v45 = 0;
    v46 = 2048;
    v47 = 0;
    v48 = 2048;
    v49 = 0;
    v50 = 2114;
    v51 = v19;
    v32 = "%{public}@ Local counts for <%{public}@:%p>: photos:%lu, videos:%lu, others:%lu [Reason: %{public}@]";
    goto LABEL_31;
  }

  v22 = 0;
  v21 = 0;
  if (a3)
  {
    goto LABEL_15;
  }

LABEL_16:
  if (a4)
  {
    *a4 = v20;
  }

  return v21;
}

@end