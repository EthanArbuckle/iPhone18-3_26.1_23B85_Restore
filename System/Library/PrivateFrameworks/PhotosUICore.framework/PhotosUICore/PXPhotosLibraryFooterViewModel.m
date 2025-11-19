@interface PXPhotosLibraryFooterViewModel
- (PXPhotosLibraryFooterViewModel)init;
- (PXPhotosLibraryFooterViewModel)initWithDataSource:(id)a3;
- (PXPhotosLibraryFooterViewModelPresentationDelegate)presentingDelegate;
- (id)presentingViewControllerForCloudQuotaControllerHelper:(id)a3;
- (void)_updateExposedProperties;
- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5;
@end

@implementation PXPhotosLibraryFooterViewModel

- (PXPhotosLibraryFooterViewModelPresentationDelegate)presentingDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_presentingDelegate);

  return WeakRetained;
}

- (id)presentingViewControllerForCloudQuotaControllerHelper:(id)a3
{
  v4 = [(PXPhotosLibraryFooterViewModel *)self presentingDelegate];
  v5 = [v4 presentingViewControllerForViewModel:self];

  return v5;
}

- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5
{
  v6 = a4;
  v9 = a3;
  if (PXPhotosLibraryFooterViewModelObserverContext == a5)
  {
    if ((v6 & 1) == 0)
    {
      goto LABEL_7;
    }

LABEL_6:
    [(PXPhotosLibraryFooterViewModel *)self _updateExposedProperties];
    goto LABEL_7;
  }

  if (PXCPLUIStatusProviderObservationContext_254606 != a5)
  {
    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    [v13 handleFailureInMethod:a2 object:self file:@"PXPhotosLibraryFooterViewModel.m" lineNumber:166 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  if ((v6 & 0x10) == 0)
  {
    goto LABEL_6;
  }

  v10 = [(PXCPLUIStatusProvider *)self->_cplUIStatusProvider status];
  [v10 progress];
  v12 = v11;

  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __63__PXPhotosLibraryFooterViewModel_observable_didChange_context___block_invoke;
  v14[3] = &__block_descriptor_36_e36_v16__0___PXMutableFooterViewModel__8l;
  v15 = v12;
  [(PXPhotosLibraryFooterViewModel *)self performChanges:v14];
LABEL_7:
}

- (void)_updateExposedProperties
{
  v3 = [(PXPhotosLibraryFooterViewModel *)self assetsDataSourceManager];
  v4 = [v3 dataSource];

  v43 = v4;
  v5 = [v4 photosDataSource];
  [v5 estimatedPhotosCount];
  [v5 estimatedVideosCount];
  v42 = v5;
  [v5 estimatedOtherCount];
  v41 = PLLocalizedCountDescription();
  v6 = [(PXCPLUIStatusProvider *)self->_cplUIStatusProvider status];
  if (PXCloudQuotaCanShowInformationView(v6))
  {
    v39 = [(PXCloudQuotaControllerHelper *)self->_cloudQuotaHelper informationView];
    v7 = [(PXCloudQuotaControllerHelper *)self->_cloudQuotaHelper premiumInformationView];
  }

  else
  {
    v39 = 0;
    v7 = 0;
  }

  v8 = *off_1E7721FC8;
  v60[0] = 0;
  v9 = [(PXPhotosLibraryFooterViewModel *)self photoLibrary];
  v10 = [v9 hasSyncProgressReturningImportOperations:v60];

  v38 = self;
  if (v10)
  {
    v11 = PLProgressDescription();
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
  }

  else if (v6)
  {
    v36 = [v6 stateDescription];
    v18 = [v6 failureDescription];
    v34 = [v6 internalInformationMessage];
    v32 = [v6 isPaused];
    [v6 progress];
    v8 = v19;
    v20 = [v6 actionTitle];
    v14 = [v6 actionConfirmationAlertTitle];
    v15 = [v6 actionConfirmationAlertButtonTitle];
    v21 = [v6 action];
    v22 = v21;
    if (v21)
    {
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __58__PXPhotosLibraryFooterViewModel__updateExposedProperties__block_invoke;
      aBlock[3] = &unk_1E774C2F0;
      v59 = v21;
      v58 = v6;
      v16 = _Block_copy(aBlock);
    }

    else
    {
      v16 = 0;
    }

    v17 = v34;
    v11 = v36;
    v13 = v20;
    v12 = v32;
  }

  else
  {
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v11 = 0;
  }

  v44[0] = MEMORY[0x1E69E9820];
  v44[1] = 3221225472;
  v44[2] = __58__PXPhotosLibraryFooterViewModel__updateExposedProperties__block_invoke_2;
  v44[3] = &unk_1E774BB98;
  v45 = v41;
  v46 = v11;
  v47 = v18;
  v48 = v17;
  v56 = v12;
  v55 = v8;
  v49 = v13;
  v50 = v14;
  v51 = v15;
  v52 = v39;
  v53 = v7;
  v54 = v16;
  v23 = v17;
  v24 = v7;
  v25 = v13;
  v33 = v24;
  v40 = v39;
  v26 = v16;
  v37 = v15;
  v35 = v14;
  v27 = v25;
  v28 = v23;
  v29 = v18;
  v30 = v11;
  v31 = v41;
  [(PXPhotosLibraryFooterViewModel *)v38 performChanges:v44];
}

void __58__PXPhotosLibraryFooterViewModel__updateExposedProperties__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v5 = a2;
  [v5 setTitle:v3];
  [v5 setSubtitle1:*(a1 + 40)];
  [v5 setSubtitle2:*(a1 + 48)];
  [v5 setInternalMessageSubtitle:*(a1 + 56)];
  [v5 setIsPaused:*(a1 + 120)];
  v4 = *(a1 + 112);
  *&v4 = v4;
  [v5 setProgress:v4];
  [v5 setActionTitle:*(a1 + 64)];
  [v5 setActionConfirmationAlertTitle:*(a1 + 72)];
  [v5 setActionConfirmationAlertButtonTitle:*(a1 + 80)];
  [v5 setAction:*(a1 + 104)];
  [v5 setAccessoryView:*(a1 + 88)];
  [v5 setTopAccessoryView:*(a1 + 96)];
}

- (PXPhotosLibraryFooterViewModel)initWithDataSource:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = PXPhotosLibraryFooterViewModel;
  v5 = [(PXPhotosLibraryFooterViewModel *)&v16 init];
  if (v5)
  {
    v6 = [[PXPhotoKitAssetsDataSourceManager alloc] initWithPhotosDataSource:v4];
    assetsDataSourceManager = v5->_assetsDataSourceManager;
    v5->_assetsDataSourceManager = v6;

    [(PXSectionedDataSourceManager *)v5->_assetsDataSourceManager registerChangeObserver:v5 context:PXPhotosLibraryFooterViewModelObserverContext];
    v8 = [v4 photoLibrary];
    photoLibrary = v5->_photoLibrary;
    v5->_photoLibrary = v8;

    v10 = [[PXPhotoKitCPLActionManager alloc] initWithPhotoLibrary:v5->_photoLibrary];
    v11 = [[PXCPLUIStatusProvider alloc] initWithPhotoLibrary:v5->_photoLibrary actionManager:v10];
    cplUIStatusProvider = v5->_cplUIStatusProvider;
    v5->_cplUIStatusProvider = v11;

    [(PXCPLUIStatusProvider *)v5->_cplUIStatusProvider registerChangeObserver:v5 context:PXCPLUIStatusProviderObservationContext_254606];
    v13 = objc_alloc_init(PXCloudQuotaControllerHelper);
    cloudQuotaHelper = v5->_cloudQuotaHelper;
    v5->_cloudQuotaHelper = v13;

    [(PXCloudQuotaControllerHelper *)v5->_cloudQuotaHelper setDelegate:v5];
    [(PXPhotosLibraryFooterViewModel *)v5 _updateExposedProperties];
  }

  return v5;
}

- (PXPhotosLibraryFooterViewModel)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PXPhotosLibraryFooterViewModel.m" lineNumber:52 description:{@"%s is not available as initializer", "-[PXPhotosLibraryFooterViewModel init]"}];

  abort();
}

@end