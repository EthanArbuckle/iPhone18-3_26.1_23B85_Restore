@interface PXCPLStatusController
- (PXCPLStatusController)init;
- (PXCPLStatusController)initWithViewModel:(id)model;
- (void)_statusProviderDidChange;
- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context;
- (void)setFallbackAction:(id)action;
- (void)setFallbackActionTitle:(id)title;
- (void)setFallbackAttributedMessage:(id)message;
- (void)setFallbackMessage:(id)message;
- (void)setFallbackTitle:(id)title;
- (void)setStatusProvider:(id)provider;
@end

@implementation PXCPLStatusController

- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context
{
  changeCopy = change;
  observableCopy = observable;
  if (PXCPLUIStatusProviderChangeObserverContext != context)
  {
    v12 = observableCopy;
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXCPLStatusController.m" lineNumber:160 description:{@"Invalid parameter not satisfying: %@", @"context == PXCPLUIStatusProviderChangeObserverContext"}];

    observableCopy = v12;
  }

  if ((changeCopy & 0x25E3) != 0)
  {
    v11 = observableCopy;
    [(PXCPLStatusController *)self _statusProviderDidChange];
    observableCopy = v11;
  }
}

- (void)_statusProviderDidChange
{
  v41 = *MEMORY[0x1E69E9840];
  status = [(PXCPLUIStatusProvider *)self->_statusProvider status];
  v27 = status;
  if (!status)
  {
    stateDescription = [0 stateDescription];
LABEL_10:
    v8 = self->_fallbackTitle;
    failureDescription = self->_fallbackMessage;
    v15 = self->_fallbackAttributedMessage;
    actionTitle = self->_fallbackActionTitle;
    v14 = _Block_copy(self->_fallbackAction);
    actionConfirmationAlertTitle = 0;
    actionConfirmationAlertSubtitle = 0;
    actionConfirmationAlertButtonTitle = 0;
    goto LABEL_11;
  }

  v4 = status;
  state = [status state];
  stateDescription2 = [v4 stateDescription];
  v7 = stateDescription2;
  if (!state)
  {
    stateDescription = stateDescription2;
    goto LABEL_10;
  }

  if (![stateDescription2 length])
  {
    v16 = PLUserStatusGetLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v40 = v4;
      _os_log_impl(&dword_1A3C1C000, v16, OS_LOG_TYPE_ERROR, "No or empty state description provided: %{public}@", buf, 0xCu);
    }

    stateDescription = v7;

    goto LABEL_10;
  }

  v8 = v7;
  failureDescription = [v4 failureDescription];
  actionTitle = [v4 actionTitle];
  actionConfirmationAlertTitle = [v4 actionConfirmationAlertTitle];
  actionConfirmationAlertSubtitle = [v4 actionConfirmationAlertSubtitle];
  actionConfirmationAlertButtonTitle = [v4 actionConfirmationAlertButtonTitle];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __49__PXCPLStatusController__statusProviderDidChange__block_invoke;
  aBlock[3] = &unk_1E774C648;
  v38 = v4;
  v14 = _Block_copy(aBlock);

  v15 = 0;
  stateDescription = v8;
LABEL_11:
  viewModel = self->_viewModel;
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __49__PXCPLStatusController__statusProviderDidChange__block_invoke_2;
  v28[3] = &unk_1E773D750;
  v29 = v8;
  v30 = failureDescription;
  v31 = v15;
  v32 = actionTitle;
  v33 = actionConfirmationAlertTitle;
  v34 = actionConfirmationAlertSubtitle;
  v35 = actionConfirmationAlertButtonTitle;
  v36 = v14;
  v18 = v14;
  v19 = actionConfirmationAlertButtonTitle;
  v20 = actionConfirmationAlertSubtitle;
  v21 = actionConfirmationAlertTitle;
  v22 = actionTitle;
  v23 = v15;
  v24 = failureDescription;
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

- (void)setFallbackAction:(id)action
{
  aBlock = action;
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

- (void)setFallbackActionTitle:(id)title
{
  titleCopy = title;
  fallbackActionTitle = self->_fallbackActionTitle;
  if (fallbackActionTitle != titleCopy)
  {
    v9 = titleCopy;
    v6 = [(NSString *)fallbackActionTitle isEqualToString:titleCopy];
    titleCopy = v9;
    if (!v6)
    {
      v7 = [(NSString *)v9 copy];
      v8 = self->_fallbackActionTitle;
      self->_fallbackActionTitle = v7;

      [(PXCPLStatusController *)self _statusProviderDidChange];
      titleCopy = v9;
    }
  }
}

- (void)setFallbackAttributedMessage:(id)message
{
  messageCopy = message;
  fallbackAttributedMessage = self->_fallbackAttributedMessage;
  if (fallbackAttributedMessage != messageCopy)
  {
    v9 = messageCopy;
    v6 = [(NSAttributedString *)fallbackAttributedMessage isEqual:messageCopy];
    messageCopy = v9;
    if ((v6 & 1) == 0)
    {
      v7 = [(NSAttributedString *)v9 copy];
      v8 = self->_fallbackAttributedMessage;
      self->_fallbackAttributedMessage = v7;

      [(PXCPLStatusController *)self _statusProviderDidChange];
      messageCopy = v9;
    }
  }
}

- (void)setFallbackMessage:(id)message
{
  messageCopy = message;
  fallbackMessage = self->_fallbackMessage;
  if (fallbackMessage != messageCopy)
  {
    v9 = messageCopy;
    v6 = [(NSString *)fallbackMessage isEqualToString:messageCopy];
    messageCopy = v9;
    if (!v6)
    {
      v7 = [(NSString *)v9 copy];
      v8 = self->_fallbackMessage;
      self->_fallbackMessage = v7;

      [(PXCPLStatusController *)self _statusProviderDidChange];
      messageCopy = v9;
    }
  }
}

- (void)setFallbackTitle:(id)title
{
  titleCopy = title;
  fallbackTitle = self->_fallbackTitle;
  if (fallbackTitle != titleCopy)
  {
    v9 = titleCopy;
    v6 = [(NSString *)fallbackTitle isEqualToString:titleCopy];
    titleCopy = v9;
    if (!v6)
    {
      v7 = [(NSString *)v9 copy];
      v8 = self->_fallbackTitle;
      self->_fallbackTitle = v7;

      [(PXCPLStatusController *)self _statusProviderDidChange];
      titleCopy = v9;
    }
  }
}

- (void)setStatusProvider:(id)provider
{
  providerCopy = provider;
  statusProvider = self->_statusProvider;
  if (statusProvider != providerCopy)
  {
    v7 = providerCopy;
    [(PXCPLUIStatusProvider *)statusProvider unregisterChangeObserver:self context:PXCPLUIStatusProviderChangeObserverContext];
    objc_storeStrong(&self->_statusProvider, provider);
    [(PXCPLUIStatusProvider *)self->_statusProvider registerChangeObserver:self context:PXCPLUIStatusProviderChangeObserverContext];
    [(PXCPLStatusController *)self _statusProviderDidChange];
    providerCopy = v7;
  }
}

- (PXCPLStatusController)initWithViewModel:(id)model
{
  modelCopy = model;
  if (!modelCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXCPLStatusController.m" lineNumber:33 description:{@"Invalid parameter not satisfying: %@", @"viewModel"}];
  }

  v11.receiver = self;
  v11.super_class = PXCPLStatusController;
  v7 = [(PXCPLStatusController *)&v11 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_viewModel, model);
    [(PXCPLStatusController *)v8 _statusProviderDidChange];
  }

  return v8;
}

- (PXCPLStatusController)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXCPLStatusController.m" lineNumber:29 description:{@"%s is not available as initializer", "-[PXCPLStatusController init]"}];

  abort();
}

@end