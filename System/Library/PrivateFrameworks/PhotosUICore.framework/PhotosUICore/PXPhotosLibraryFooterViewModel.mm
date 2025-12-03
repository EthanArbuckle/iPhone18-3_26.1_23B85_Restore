@interface PXPhotosLibraryFooterViewModel
- (PXPhotosLibraryFooterViewModel)init;
- (PXPhotosLibraryFooterViewModel)initWithDataSource:(id)source;
- (PXPhotosLibraryFooterViewModelPresentationDelegate)presentingDelegate;
- (id)presentingViewControllerForCloudQuotaControllerHelper:(id)helper;
- (void)_updateExposedProperties;
- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context;
@end

@implementation PXPhotosLibraryFooterViewModel

- (PXPhotosLibraryFooterViewModelPresentationDelegate)presentingDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_presentingDelegate);

  return WeakRetained;
}

- (id)presentingViewControllerForCloudQuotaControllerHelper:(id)helper
{
  presentingDelegate = [(PXPhotosLibraryFooterViewModel *)self presentingDelegate];
  v5 = [presentingDelegate presentingViewControllerForViewModel:self];

  return v5;
}

- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context
{
  changeCopy = change;
  observableCopy = observable;
  if (PXPhotosLibraryFooterViewModelObserverContext == context)
  {
    if ((changeCopy & 1) == 0)
    {
      goto LABEL_7;
    }

LABEL_6:
    [(PXPhotosLibraryFooterViewModel *)self _updateExposedProperties];
    goto LABEL_7;
  }

  if (PXCPLUIStatusProviderObservationContext_254606 != context)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXPhotosLibraryFooterViewModel.m" lineNumber:166 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  if ((changeCopy & 0x10) == 0)
  {
    goto LABEL_6;
  }

  status = [(PXCPLUIStatusProvider *)self->_cplUIStatusProvider status];
  [status progress];
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
  assetsDataSourceManager = [(PXPhotosLibraryFooterViewModel *)self assetsDataSourceManager];
  dataSource = [assetsDataSourceManager dataSource];

  v43 = dataSource;
  photosDataSource = [dataSource photosDataSource];
  [photosDataSource estimatedPhotosCount];
  [photosDataSource estimatedVideosCount];
  v42 = photosDataSource;
  [photosDataSource estimatedOtherCount];
  v41 = PLLocalizedCountDescription();
  status = [(PXCPLUIStatusProvider *)self->_cplUIStatusProvider status];
  if (PXCloudQuotaCanShowInformationView(status))
  {
    informationView = [(PXCloudQuotaControllerHelper *)self->_cloudQuotaHelper informationView];
    premiumInformationView = [(PXCloudQuotaControllerHelper *)self->_cloudQuotaHelper premiumInformationView];
  }

  else
  {
    informationView = 0;
    premiumInformationView = 0;
  }

  v8 = *off_1E7721FC8;
  v60[0] = 0;
  photoLibrary = [(PXPhotosLibraryFooterViewModel *)self photoLibrary];
  v10 = [photoLibrary hasSyncProgressReturningImportOperations:v60];

  selfCopy = self;
  if (v10)
  {
    v11 = PLProgressDescription();
    v12 = 0;
    v13 = 0;
    actionConfirmationAlertTitle = 0;
    actionConfirmationAlertButtonTitle = 0;
    v16 = 0;
    v17 = 0;
    failureDescription = 0;
  }

  else if (status)
  {
    stateDescription = [status stateDescription];
    failureDescription = [status failureDescription];
    internalInformationMessage = [status internalInformationMessage];
    isPaused = [status isPaused];
    [status progress];
    v8 = v19;
    actionTitle = [status actionTitle];
    actionConfirmationAlertTitle = [status actionConfirmationAlertTitle];
    actionConfirmationAlertButtonTitle = [status actionConfirmationAlertButtonTitle];
    action = [status action];
    v22 = action;
    if (action)
    {
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __58__PXPhotosLibraryFooterViewModel__updateExposedProperties__block_invoke;
      aBlock[3] = &unk_1E774C2F0;
      v59 = action;
      v58 = status;
      v16 = _Block_copy(aBlock);
    }

    else
    {
      v16 = 0;
    }

    v17 = internalInformationMessage;
    v11 = stateDescription;
    v13 = actionTitle;
    v12 = isPaused;
  }

  else
  {
    v12 = 0;
    v13 = 0;
    actionConfirmationAlertTitle = 0;
    actionConfirmationAlertButtonTitle = 0;
    v16 = 0;
    v17 = 0;
    failureDescription = 0;
    v11 = 0;
  }

  v44[0] = MEMORY[0x1E69E9820];
  v44[1] = 3221225472;
  v44[2] = __58__PXPhotosLibraryFooterViewModel__updateExposedProperties__block_invoke_2;
  v44[3] = &unk_1E774BB98;
  v45 = v41;
  v46 = v11;
  v47 = failureDescription;
  v48 = v17;
  v56 = v12;
  v55 = v8;
  v49 = v13;
  v50 = actionConfirmationAlertTitle;
  v51 = actionConfirmationAlertButtonTitle;
  v52 = informationView;
  v53 = premiumInformationView;
  v54 = v16;
  v23 = v17;
  v24 = premiumInformationView;
  v25 = v13;
  v33 = v24;
  v40 = informationView;
  v26 = v16;
  v37 = actionConfirmationAlertButtonTitle;
  v35 = actionConfirmationAlertTitle;
  v27 = v25;
  v28 = v23;
  v29 = failureDescription;
  v30 = v11;
  v31 = v41;
  [(PXPhotosLibraryFooterViewModel *)selfCopy performChanges:v44];
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

- (PXPhotosLibraryFooterViewModel)initWithDataSource:(id)source
{
  sourceCopy = source;
  v16.receiver = self;
  v16.super_class = PXPhotosLibraryFooterViewModel;
  v5 = [(PXPhotosLibraryFooterViewModel *)&v16 init];
  if (v5)
  {
    v6 = [[PXPhotoKitAssetsDataSourceManager alloc] initWithPhotosDataSource:sourceCopy];
    assetsDataSourceManager = v5->_assetsDataSourceManager;
    v5->_assetsDataSourceManager = v6;

    [(PXSectionedDataSourceManager *)v5->_assetsDataSourceManager registerChangeObserver:v5 context:PXPhotosLibraryFooterViewModelObserverContext];
    photoLibrary = [sourceCopy photoLibrary];
    photoLibrary = v5->_photoLibrary;
    v5->_photoLibrary = photoLibrary;

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
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXPhotosLibraryFooterViewModel.m" lineNumber:52 description:{@"%s is not available as initializer", "-[PXPhotosLibraryFooterViewModel init]"}];

  abort();
}

@end