@interface PXCPLStatusController
- (PXCPLStatusController)init;
- (PXCPLStatusController)initWithViewModel:(id)a3;
- (void)_statusProviderDidChange;
- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5;
- (void)setFallbackAction:(id)a3;
- (void)setFallbackActionTitle:(id)a3;
- (void)setFallbackAttributedMessage:(id)a3;
- (void)setFallbackMessage:(id)a3;
- (void)setFallbackTitle:(id)a3;
- (void)setStatusProvider:(id)a3;
@end

@implementation PXCPLStatusController

- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5
{
  v6 = a4;
  v9 = a3;
  if (PXCPLUIStatusProviderChangeObserverContext != a5)
  {
    v12 = v9;
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"PXCPLStatusController.m" lineNumber:160 description:{@"Invalid parameter not satisfying: %@", @"context == PXCPLUIStatusProviderChangeObserverContext"}];

    v9 = v12;
  }

  if ((v6 & 0x25E3) != 0)
  {
    v11 = v9;
    [(PXCPLStatusController *)self _statusProviderDidChange];
    v9 = v11;
  }
}

- (void)_statusProviderDidChange
{
  v41 = *MEMORY[0x1E69E9840];
  v3 = [(PXCPLUIStatusProvider *)self->_statusProvider status];
  v27 = v3;
  if (!v3)
  {
    v26 = [0 stateDescription];
LABEL_10:
    v8 = self->_fallbackTitle;
    v9 = self->_fallbackMessage;
    v15 = self->_fallbackAttributedMessage;
    v10 = self->_fallbackActionTitle;
    v14 = _Block_copy(self->_fallbackAction);
    v11 = 0;
    v12 = 0;
    v13 = 0;
    goto LABEL_11;
  }

  v4 = v3;
  v5 = [v3 state];
  v6 = [v4 stateDescription];
  v7 = v6;
  if (!v5)
  {
    v26 = v6;
    goto LABEL_10;
  }

  if (![v6 length])
  {
    v16 = PLUserStatusGetLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v40 = v4;
      _os_log_impl(&dword_1A3C1C000, v16, OS_LOG_TYPE_ERROR, "No or empty state description provided: %{public}@", buf, 0xCu);
    }

    v26 = v7;

    goto LABEL_10;
  }

  v8 = v7;
  v9 = [v4 failureDescription];
  v10 = [v4 actionTitle];
  v11 = [v4 actionConfirmationAlertTitle];
  v12 = [v4 actionConfirmationAlertSubtitle];
  v13 = [v4 actionConfirmationAlertButtonTitle];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __49__PXCPLStatusController__statusProviderDidChange__block_invoke;
  aBlock[3] = &unk_1E774C648;
  v38 = v4;
  v14 = _Block_copy(aBlock);

  v15 = 0;
  v26 = v8;
LABEL_11:
  viewModel = self->_viewModel;
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __49__PXCPLStatusController__statusProviderDidChange__block_invoke_2;
  v28[3] = &unk_1E773D750;
  v29 = v8;
  v30 = v9;
  v31 = v15;
  v32 = v10;
  v33 = v11;
  v34 = v12;
  v35 = v13;
  v36 = v14;
  v18 = v14;
  v19 = v13;
  v20 = v12;
  v21 = v11;
  v22 = v10;
  v23 = v15;
  v24 = v9;
  v25 = v8;
  [(PXStatusViewModel *)viewModel performChanges:v28];
}

void __49__PXCPLStatusController__statusProviderDidChange__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) action];
  if (v2)
  {
    v4 = v2;
    v3 = [*(a1 + 32) action];
    v3[2](v3, *(a1 + 32));

    v2 = v4;
  }
}

void __49__PXCPLStatusController__statusProviderDidChange__block_invoke_2(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a2;
  [v4 setTitle:v3];
  [v4 setMessage:a1[5]];
  [v4 setAttributedMessage:a1[6]];
  [v4 setActionTitle:a1[7]];
  [v4 setActionConfirmationAlertTitle:a1[8]];
  [v4 setActionConfirmationAlertSubtitle:a1[9]];
  [v4 setActionConfirmationAlertButtonTitle:a1[10]];
  [v4 setAction:a1[11]];
}

- (void)setFallbackAction:(id)a3
{
  aBlock = a3;
  v4 = _Block_copy(self->_fallbackAction);
  v5 = _Block_copy(aBlock);
  v6 = v5;
  if (v4 == v5)
  {
  }

  else
  {
    v7 = [v4 isEqual:v5];

    if ((v7 & 1) == 0)
    {
      v8 = [aBlock copy];
      fallbackAction = self->_fallbackAction;
      self->_fallbackAction = v8;

      [(PXCPLStatusController *)self _statusProviderDidChange];
    }
  }
}

- (void)setFallbackActionTitle:(id)a3
{
  v4 = a3;
  fallbackActionTitle = self->_fallbackActionTitle;
  if (fallbackActionTitle != v4)
  {
    v9 = v4;
    v6 = [(NSString *)fallbackActionTitle isEqualToString:v4];
    v4 = v9;
    if (!v6)
    {
      v7 = [(NSString *)v9 copy];
      v8 = self->_fallbackActionTitle;
      self->_fallbackActionTitle = v7;

      [(PXCPLStatusController *)self _statusProviderDidChange];
      v4 = v9;
    }
  }
}

- (void)setFallbackAttributedMessage:(id)a3
{
  v4 = a3;
  fallbackAttributedMessage = self->_fallbackAttributedMessage;
  if (fallbackAttributedMessage != v4)
  {
    v9 = v4;
    v6 = [(NSAttributedString *)fallbackAttributedMessage isEqual:v4];
    v4 = v9;
    if ((v6 & 1) == 0)
    {
      v7 = [(NSAttributedString *)v9 copy];
      v8 = self->_fallbackAttributedMessage;
      self->_fallbackAttributedMessage = v7;

      [(PXCPLStatusController *)self _statusProviderDidChange];
      v4 = v9;
    }
  }
}

- (void)setFallbackMessage:(id)a3
{
  v4 = a3;
  fallbackMessage = self->_fallbackMessage;
  if (fallbackMessage != v4)
  {
    v9 = v4;
    v6 = [(NSString *)fallbackMessage isEqualToString:v4];
    v4 = v9;
    if (!v6)
    {
      v7 = [(NSString *)v9 copy];
      v8 = self->_fallbackMessage;
      self->_fallbackMessage = v7;

      [(PXCPLStatusController *)self _statusProviderDidChange];
      v4 = v9;
    }
  }
}

- (void)setFallbackTitle:(id)a3
{
  v4 = a3;
  fallbackTitle = self->_fallbackTitle;
  if (fallbackTitle != v4)
  {
    v9 = v4;
    v6 = [(NSString *)fallbackTitle isEqualToString:v4];
    v4 = v9;
    if (!v6)
    {
      v7 = [(NSString *)v9 copy];
      v8 = self->_fallbackTitle;
      self->_fallbackTitle = v7;

      [(PXCPLStatusController *)self _statusProviderDidChange];
      v4 = v9;
    }
  }
}

- (void)setStatusProvider:(id)a3
{
  v5 = a3;
  statusProvider = self->_statusProvider;
  if (statusProvider != v5)
  {
    v7 = v5;
    [(PXCPLUIStatusProvider *)statusProvider unregisterChangeObserver:self context:PXCPLUIStatusProviderChangeObserverContext];
    objc_storeStrong(&self->_statusProvider, a3);
    [(PXCPLUIStatusProvider *)self->_statusProvider registerChangeObserver:self context:PXCPLUIStatusProviderChangeObserverContext];
    [(PXCPLStatusController *)self _statusProviderDidChange];
    v5 = v7;
  }
}

- (PXCPLStatusController)initWithViewModel:(id)a3
{
  v6 = a3;
  if (!v6)
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"PXCPLStatusController.m" lineNumber:33 description:{@"Invalid parameter not satisfying: %@", @"viewModel"}];
  }

  v11.receiver = self;
  v11.super_class = PXCPLStatusController;
  v7 = [(PXCPLStatusController *)&v11 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_viewModel, a3);
    [(PXCPLStatusController *)v8 _statusProviderDidChange];
  }

  return v8;
}

- (PXCPLStatusController)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PXCPLStatusController.m" lineNumber:29 description:{@"%s is not available as initializer", "-[PXCPLStatusController init]"}];

  abort();
}

@end