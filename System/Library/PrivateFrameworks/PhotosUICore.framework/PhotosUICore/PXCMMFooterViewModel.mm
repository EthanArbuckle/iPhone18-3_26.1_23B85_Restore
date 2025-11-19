@interface PXCMMFooterViewModel
- (PXCMMFooterViewModel)init;
- (PXCMMFooterViewModel)initWithMomentShareStatusPresentation:(id)a3 mode:(int64_t)a4;
- (PXCMMFooterViewModelDelegate)delegate;
- (void)_invokeStopSharingActionForInvitation:(id)a3 session:(id)a4;
- (void)_updateAllProperties;
- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5;
- (void)setDelegate:(id)a3;
@end

@implementation PXCMMFooterViewModel

- (PXCMMFooterViewModelDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5
{
  v6 = a4;
  v9 = a3;
  if (PXMomentShareStatusPresentationObservationContext_161044 != a5)
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"PXCMMFooterViewModel.m" lineNumber:198 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  if ((v6 & 0x886F) != 0)
  {
    v11 = v9;
    [(PXCMMFooterViewModel *)self _updateAllProperties];
    v9 = v11;
  }
}

- (void)_invokeStopSharingActionForInvitation:(id)a3 session:(id)a4
{
  v20 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = PLSharingGetLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [v6 identifier];
    *buf = 138543362;
    v19 = v9;
    _os_log_impl(&dword_1A3C1C000, v8, OS_LOG_TYPE_DEFAULT, "PXCMMFooterViewModel: Will delete owned moment share: %{public}@", buf, 0xCu);
  }

  v10 = [v7 actionManager];
  v11 = [v10 actionPerformerForActionType:@"PXCMMActionTypeDelete"];

  v12 = [(PXCMMFooterViewModel *)self delegate];
  if (!v12)
  {
    PXAssertGetLog();
  }

  v13 = [v12 presentationEnvironmentForCMMFooterViewModel:self];
  [v11 setPresentationEnvironment:v13];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __70__PXCMMFooterViewModel__invokeStopSharingActionForInvitation_session___block_invoke;
  v16[3] = &unk_1E774C5C0;
  v17 = v6;
  v14 = v6;
  v15 = [v11 performActionWithSession:v7 completionHandler:v16];
}

void __70__PXCMMFooterViewModel__invokeStopSharingActionForInvitation_session___block_invoke(uint64_t a1, int a2, void *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = PLSharingGetLog();
  v7 = v6;
  if (a2)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [*(a1 + 32) identifier];
      v13 = 138543362;
      v14 = v8;
      v9 = "PXCMMFooterViewModel: Did delete owned moment share: %{public}@";
      v10 = v7;
      v11 = OS_LOG_TYPE_DEFAULT;
      v12 = 12;
LABEL_6:
      _os_log_impl(&dword_1A3C1C000, v10, v11, v9, &v13, v12);
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v8 = [*(a1 + 32) identifier];
    v13 = 138543618;
    v14 = v8;
    v15 = 2112;
    v16 = v5;
    v9 = "PXCMMFooterViewModel: Failed to delete owned moment share: %{public}@, error: %@";
    v10 = v7;
    v11 = OS_LOG_TYPE_ERROR;
    v12 = 22;
    goto LABEL_6;
  }
}

- (void)_updateAllProperties
{
  v3 = [(PXMomentShareStatusPresentation *)self->_momentShareStatusPresentation assetsTitle];
  v4 = [(PXMomentShareStatusPresentation *)self->_momentShareStatusPresentation expirationTitle];
  v5 = [(PXMomentShareStatusPresentation *)self->_momentShareStatusPresentation type];
  if (v5 != 1)
  {
    if (!v5)
    {
      v6 = v4;
      v7 = 0;
      goto LABEL_15;
    }

LABEL_13:
    v7 = 0;
    v6 = 0;
    goto LABEL_15;
  }

  mode = self->_mode;
  if (mode == 1)
  {
    v6 = [(PXMomentShareStatusPresentation *)self->_momentShareStatusPresentation assetsSaveStatusTitle];
    v7 = v4;
    goto LABEL_15;
  }

  if (mode)
  {
    goto LABEL_13;
  }

  v9 = [(PXMomentShareStatusPresentation *)self->_momentShareStatusPresentation byline];
  v10 = v9;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = v4;
  }

  if (v9)
  {
    v12 = v4;
  }

  else
  {
    v12 = 0;
  }

  v6 = v11;
  v7 = v12;

LABEL_15:
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __44__PXCMMFooterViewModel__updateAllProperties__block_invoke;
  v16[3] = &unk_1E773ECB8;
  v17 = v3;
  v18 = v6;
  v19 = v7;
  v20 = 0u;
  v21 = 0u;
  v22 = 0;
  v13 = v7;
  v14 = v6;
  v15 = v3;
  [(PXCMMFooterViewModel *)self performChanges:v16];
}

void __44__PXCMMFooterViewModel__updateAllProperties__block_invoke(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a2;
  [v4 setTitle:v3];
  [v4 setSubtitle1:a1[5]];
  [v4 setSubtitle2:a1[6]];
  [v4 setActionTitle:a1[7]];
  [v4 setActionConfirmationAlertTitle:a1[8]];
  [v4 setActionConfirmationAlertSubtitle:a1[9]];
  [v4 setActionConfirmationAlertButtonTitle:a1[10]];
  [v4 setAction:a1[11]];
}

- (void)setDelegate:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  v5 = obj;
  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_delegate, obj);
    [(PXCMMFooterViewModel *)self _updateAllProperties];
    v5 = obj;
  }
}

- (PXCMMFooterViewModel)initWithMomentShareStatusPresentation:(id)a3 mode:(int64_t)a4
{
  v8 = a3;
  if (!v8)
  {
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    [v12 handleFailureInMethod:a2 object:self file:@"PXCMMFooterViewModel.m" lineNumber:33 description:{@"Invalid parameter not satisfying: %@", @"momentShareStatusPresentation"}];
  }

  v13.receiver = self;
  v13.super_class = PXCMMFooterViewModel;
  v9 = [(PXCMMFooterViewModel *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_momentShareStatusPresentation, a3);
    [(PXMomentShareStatusPresentation *)v10->_momentShareStatusPresentation registerChangeObserver:v10 context:PXMomentShareStatusPresentationObservationContext_161044];
    v10->_mode = a4;
    [(PXCMMFooterViewModel *)v10 _updateAllProperties];
  }

  return v10;
}

- (PXCMMFooterViewModel)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PXCMMFooterViewModel.m" lineNumber:29 description:{@"%s is not available as initializer", "-[PXCMMFooterViewModel init]"}];

  abort();
}

@end