@interface PXCMMFooterViewModel
- (PXCMMFooterViewModel)init;
- (PXCMMFooterViewModel)initWithMomentShareStatusPresentation:(id)presentation mode:(int64_t)mode;
- (PXCMMFooterViewModelDelegate)delegate;
- (void)_invokeStopSharingActionForInvitation:(id)invitation session:(id)session;
- (void)_updateAllProperties;
- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context;
- (void)setDelegate:(id)delegate;
@end

@implementation PXCMMFooterViewModel

- (PXCMMFooterViewModelDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context
{
  changeCopy = change;
  observableCopy = observable;
  if (PXMomentShareStatusPresentationObservationContext_161044 != context)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXCMMFooterViewModel.m" lineNumber:198 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  if ((changeCopy & 0x886F) != 0)
  {
    v11 = observableCopy;
    [(PXCMMFooterViewModel *)self _updateAllProperties];
    observableCopy = v11;
  }
}

- (void)_invokeStopSharingActionForInvitation:(id)invitation session:(id)session
{
  v20 = *MEMORY[0x1E69E9840];
  invitationCopy = invitation;
  sessionCopy = session;
  v8 = PLSharingGetLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    identifier = [invitationCopy identifier];
    *buf = 138543362;
    v19 = identifier;
    _os_log_impl(&dword_1A3C1C000, v8, OS_LOG_TYPE_DEFAULT, "PXCMMFooterViewModel: Will delete owned moment share: %{public}@", buf, 0xCu);
  }

  actionManager = [sessionCopy actionManager];
  v11 = [actionManager actionPerformerForActionType:@"PXCMMActionTypeDelete"];

  delegate = [(PXCMMFooterViewModel *)self delegate];
  if (!delegate)
  {
    PXAssertGetLog();
  }

  v13 = [delegate presentationEnvironmentForCMMFooterViewModel:self];
  [v11 setPresentationEnvironment:v13];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __70__PXCMMFooterViewModel__invokeStopSharingActionForInvitation_session___block_invoke;
  v16[3] = &unk_1E774C5C0;
  v17 = invitationCopy;
  v14 = invitationCopy;
  v15 = [v11 performActionWithSession:sessionCopy completionHandler:v16];
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
  assetsTitle = [(PXMomentShareStatusPresentation *)self->_momentShareStatusPresentation assetsTitle];
  expirationTitle = [(PXMomentShareStatusPresentation *)self->_momentShareStatusPresentation expirationTitle];
  type = [(PXMomentShareStatusPresentation *)self->_momentShareStatusPresentation type];
  if (type != 1)
  {
    if (!type)
    {
      assetsSaveStatusTitle = expirationTitle;
      v7 = 0;
      goto LABEL_15;
    }

LABEL_13:
    v7 = 0;
    assetsSaveStatusTitle = 0;
    goto LABEL_15;
  }

  mode = self->_mode;
  if (mode == 1)
  {
    assetsSaveStatusTitle = [(PXMomentShareStatusPresentation *)self->_momentShareStatusPresentation assetsSaveStatusTitle];
    v7 = expirationTitle;
    goto LABEL_15;
  }

  if (mode)
  {
    goto LABEL_13;
  }

  byline = [(PXMomentShareStatusPresentation *)self->_momentShareStatusPresentation byline];
  v10 = byline;
  if (byline)
  {
    v11 = byline;
  }

  else
  {
    v11 = expirationTitle;
  }

  if (byline)
  {
    v12 = expirationTitle;
  }

  else
  {
    v12 = 0;
  }

  assetsSaveStatusTitle = v11;
  v7 = v12;

LABEL_15:
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __44__PXCMMFooterViewModel__updateAllProperties__block_invoke;
  v16[3] = &unk_1E773ECB8;
  v17 = assetsTitle;
  v18 = assetsSaveStatusTitle;
  v19 = v7;
  v20 = 0u;
  v21 = 0u;
  v22 = 0;
  v13 = v7;
  v14 = assetsSaveStatusTitle;
  v15 = assetsTitle;
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

- (void)setDelegate:(id)delegate
{
  obj = delegate;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  v5 = obj;
  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_delegate, obj);
    [(PXCMMFooterViewModel *)self _updateAllProperties];
    v5 = obj;
  }
}

- (PXCMMFooterViewModel)initWithMomentShareStatusPresentation:(id)presentation mode:(int64_t)mode
{
  presentationCopy = presentation;
  if (!presentationCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXCMMFooterViewModel.m" lineNumber:33 description:{@"Invalid parameter not satisfying: %@", @"momentShareStatusPresentation"}];
  }

  v13.receiver = self;
  v13.super_class = PXCMMFooterViewModel;
  v9 = [(PXCMMFooterViewModel *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_momentShareStatusPresentation, presentation);
    [(PXMomentShareStatusPresentation *)v10->_momentShareStatusPresentation registerChangeObserver:v10 context:PXMomentShareStatusPresentationObservationContext_161044];
    v10->_mode = mode;
    [(PXCMMFooterViewModel *)v10 _updateAllProperties];
  }

  return v10;
}

- (PXCMMFooterViewModel)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXCMMFooterViewModel.m" lineNumber:29 description:{@"%s is not available as initializer", "-[PXCMMFooterViewModel init]"}];

  abort();
}

@end