@interface PXStatusController
- (PXStatusController)init;
- (PXStatusControllerDelegate)delegate;
- (void)_handleButtonAction:(id)action;
- (void)_updateButtonTitle;
- (void)_updateMessage;
- (void)_updateTitle;
- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context;
- (void)setViewModel:(id)model;
@end

@implementation PXStatusController

- (PXStatusControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context
{
  changeCopy = change;
  v19 = *MEMORY[0x1E69E9840];
  observableCopy = observable;
  if (PXStatusViewModelObservationContext == context)
  {
    if ((changeCopy & 2) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXStatusController.m" lineNumber:167 description:{@"Invalid parameter not satisfying: %@", @"context == PXStatusViewModelObservationContext"}];

  if ((changeCopy & 2) != 0)
  {
LABEL_3:
    [(PXStatusController *)self _updateTitle];
  }

LABEL_4:
  if ((changeCopy & 0xC) != 0)
  {
    [(PXStatusController *)self _updateMessage];
  }

  if ((changeCopy & 0x10) == 0 || ([(PXStatusController *)self confirmationAlertToken], v10 = objc_claimAutoreleasedReturnValue(), [(PXStatusController *)self _updateButtonTitle], !v10))
  {
    if ((changeCopy & 0xE0) == 0)
    {
      goto LABEL_14;
    }

    confirmationAlertToken = [(PXStatusController *)self confirmationAlertToken];
    if (!confirmationAlertToken)
    {
      goto LABEL_14;
    }

    v10 = confirmationAlertToken;
  }

  [(PXStatusController *)self setConfirmationAlertToken:0];
  v12 = PXUserStatusUIGetLog();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    viewModel = self->_viewModel;
    *buf = 138543362;
    v18 = viewModel;
    _os_log_impl(&dword_1B3F73000, v12, OS_LOG_TYPE_DEFAULT, "Status View: Auto-dismiss alert for replaced action (%{public}@)", buf, 0xCu);
  }

  delegate = [(PXStatusController *)self delegate];
  v15 = [delegate presentationEnvironmentForStatusController:self];

  [v15 dismissAlertWithToken:v10 completionHandler:0];
LABEL_14:
}

- (void)_handleButtonAction:(id)action
{
  v34 = *MEMORY[0x1E69E9840];
  actionCopy = action;
  action = [(PXStatusViewModel *)self->_viewModel action];
  v6 = PXUserStatusUIGetLog();
  actionConfirmationAlertTitle = v6;
  if (action)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      viewModel = self->_viewModel;
      *buf = 138543362;
      v33 = viewModel;
      _os_log_impl(&dword_1B3F73000, actionConfirmationAlertTitle, OS_LOG_TYPE_DEFAULT, "Status View: User invoked un-pause action (%{public}@)", buf, 0xCu);
    }

    actionConfirmationAlertTitle = [(PXStatusViewModel *)self->_viewModel actionConfirmationAlertTitle];
    actionConfirmationAlertButtonTitle = [(PXStatusViewModel *)self->_viewModel actionConfirmationAlertButtonTitle];
    v10 = PXUserStatusUIGetLog();
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
    if (actionConfirmationAlertTitle && actionConfirmationAlertButtonTitle)
    {
      if (v11)
      {
        v12 = self->_viewModel;
        *buf = 138543362;
        v33 = v12;
        _os_log_impl(&dword_1B3F73000, v10, OS_LOG_TYPE_DEFAULT, "Status View: Will present confirmation alert (%{public}@)", buf, 0xCu);
      }

      objc_initWeak(&location, self);
      objc_initWeak(&from, self->_viewModel);
      delegate = [(PXStatusController *)self delegate];
      v14 = [delegate presentationEnvironmentForStatusController:self];

      v22[0] = MEMORY[0x1E69E9820];
      v22[1] = 3221225472;
      v22[2] = __42__PXStatusController__handleButtonAction___block_invoke;
      v22[3] = &unk_1E7BB61F0;
      v23 = actionConfirmationAlertTitle;
      selfCopy = self;
      v25 = actionCopy;
      v26 = actionConfirmationAlertButtonTitle;
      objc_copyWeak(&v28, &from);
      objc_copyWeak(&v29, &location);
      v27 = action;
      v15 = [v14 presentAlertWithConfigurationHandler:v22];
      v16 = PXUserStatusUIGetLog();
      v17 = v16;
      if (v15)
      {
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          v18 = self->_viewModel;
          *buf = 138543362;
          v33 = v18;
          _os_log_impl(&dword_1B3F73000, v17, OS_LOG_TYPE_DEFAULT, "Status View: Did present confirmation alert (%{public}@)", buf, 0xCu);
        }

        [(PXStatusController *)self setConfirmationAlertToken:v15];
      }

      else
      {
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          v21 = self->_viewModel;
          *buf = 138543362;
          v33 = v21;
          _os_log_impl(&dword_1B3F73000, v17, OS_LOG_TYPE_ERROR, "Status View: Failed to present confirmation alert (%{public}@)", buf, 0xCu);
        }
      }

      objc_destroyWeak(&v29);
      objc_destroyWeak(&v28);

      objc_destroyWeak(&from);
      objc_destroyWeak(&location);
    }

    else
    {
      if (v11)
      {
        v20 = self->_viewModel;
        *buf = 138543362;
        v33 = v20;
        _os_log_impl(&dword_1B3F73000, v10, OS_LOG_TYPE_DEFAULT, "Status View: Invoking action without confirmation (%{public}@)", buf, 0xCu);
      }

      action[2](action);
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v19 = self->_viewModel;
    *buf = 138543362;
    v33 = v19;
    _os_log_impl(&dword_1B3F73000, actionConfirmationAlertTitle, OS_LOG_TYPE_ERROR, "Status View: No action for button (%{public}@)", buf, 0xCu);
  }
}

void __42__PXStatusController__handleButtonAction___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setTitle:*(a1 + 32)];
  v4 = [*(*(a1 + 40) + 8) actionConfirmationAlertSubtitle];
  [v3 setMessage:v4];

  [v3 setStyle:0];
  v5 = *(a1 + 48);
  if (objc_opt_class() && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  [v3 setSourceItem:v6];
  v7 = *(a1 + 56);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __42__PXStatusController__handleButtonAction___block_invoke_2;
  v13[3] = &unk_1E7BB61A0;
  objc_copyWeak(&v15, (a1 + 72));
  objc_copyWeak(&v16, (a1 + 80));
  v14 = *(a1 + 64);
  [v3 addActionWithTitle:v7 style:0 action:v13];
  v8 = PXPhotosUIFoundationBundle();
  v9 = [v8 localizedStringForKey:@"PXCancel" value:&stru_1F2B87EE0 table:0];

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __42__PXStatusController__handleButtonAction___block_invoke_20;
  v10[3] = &unk_1E7BB61C8;
  objc_copyWeak(&v11, (a1 + 72));
  objc_copyWeak(&v12, (a1 + 80));
  [v3 addActionWithTitle:v9 style:1 action:v10];
  objc_destroyWeak(&v12);
  objc_destroyWeak(&v11);

  objc_destroyWeak(&v16);
  objc_destroyWeak(&v15);
}

uint64_t __42__PXStatusController__handleButtonAction___block_invoke_2(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = PXUserStatusUIGetLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v6 = 138543362;
    v7 = WeakRetained;
    _os_log_impl(&dword_1B3F73000, v2, OS_LOG_TYPE_DEFAULT, "Status View: User confirmed action (%{public}@)", &v6, 0xCu);
  }

  v4 = objc_loadWeakRetained((a1 + 48));
  [v4 setConfirmationAlertToken:0];

  return (*(*(a1 + 32) + 16))();
}

void __42__PXStatusController__handleButtonAction___block_invoke_20(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = PXUserStatusUIGetLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v5 = 138543362;
    v6 = WeakRetained;
    _os_log_impl(&dword_1B3F73000, v2, OS_LOG_TYPE_DEFAULT, "Status View: User cancelled action (%{public}@)", &v5, 0xCu);
  }

  v4 = objc_loadWeakRetained((a1 + 40));
  [v4 setConfirmationAlertToken:0];
}

- (void)_updateButtonTitle
{
  actionTitle = [(PXStatusViewModel *)self->_viewModel actionTitle];
  v4 = [actionTitle length];
  configuration = [(PXStatusController *)self configuration];
  buttonProperties = [configuration buttonProperties];
  configuration2 = [buttonProperties configuration];
  v8 = configuration2;
  if (v4)
  {
    [configuration2 setTitle:actionTitle];

    objc_initWeak(&location, self);
    v9 = MEMORY[0x1E69DC628];
    v17 = MEMORY[0x1E69E9820];
    v18 = 3221225472;
    v19 = __40__PXStatusController__updateButtonTitle__block_invoke;
    v20 = &unk_1E7BB6178;
    objc_copyWeak(&v21, &location);
    v10 = [v9 actionWithHandler:&v17];
    v11 = [(PXStatusController *)self configuration:v17];
    buttonProperties2 = [v11 buttonProperties];
    [buttonProperties2 setPrimaryAction:v10];

    objc_destroyWeak(&v21);
    objc_destroyWeak(&location);
  }

  else
  {
    [configuration2 setTitle:0];

    configuration3 = [(PXStatusController *)self configuration];
    buttonProperties3 = [configuration3 buttonProperties];
    [buttonProperties3 setPrimaryAction:0];
  }

  delegate = [(PXStatusController *)self delegate];
  configuration4 = [(PXStatusController *)self configuration];
  [delegate statusController:self configurationDidChange:configuration4];
}

void __40__PXStatusController__updateButtonTitle__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [v3 sender];

  [WeakRetained _handleButtonAction:v4];
}

- (void)_updateMessage
{
  message = [(PXStatusViewModel *)self->_viewModel message];
  viewModel = [(PXStatusController *)self viewModel];
  attributedMessage = [viewModel attributedMessage];

  if (attributedMessage)
  {
    attributedMessage2 = [(PXStatusViewModel *)self->_viewModel attributedMessage];
    configuration = [(PXStatusController *)self configuration];
    [configuration setSecondaryAttributedText:attributedMessage2];
  }

  else
  {
    attributedMessage2 = [(PXStatusController *)self configuration];
    [attributedMessage2 setSecondaryText:message];
  }

  delegate = [(PXStatusController *)self delegate];
  configuration2 = [(PXStatusController *)self configuration];
  [delegate statusController:self configurationDidChange:configuration2];
}

- (void)_updateTitle
{
  title = [(PXStatusViewModel *)self->_viewModel title];
  if ([title length])
  {
    v3 = title;
  }

  else
  {
    v3 = 0;
  }

  configuration = [(PXStatusController *)self configuration];
  [configuration setText:v3];

  delegate = [(PXStatusController *)self delegate];
  configuration2 = [(PXStatusController *)self configuration];
  [delegate statusController:self configurationDidChange:configuration2];
}

- (void)setViewModel:(id)model
{
  modelCopy = model;
  if (!modelCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXStatusController.m" lineNumber:55 description:{@"Invalid parameter not satisfying: %@", @"viewModel"}];
  }

  viewModel = self->_viewModel;
  v8 = modelCopy;
  v11 = v8;
  if (viewModel == v8)
  {
  }

  else
  {
    v9 = [(PXStatusViewModel *)v8 isEqual:viewModel];

    if ((v9 & 1) == 0)
    {
      [(PXObservable *)self->_viewModel unregisterChangeObserver:self context:PXStatusViewModelObservationContext];
      objc_storeStrong(&self->_viewModel, model);
      [(PXObservable *)self->_viewModel registerChangeObserver:self context:PXStatusViewModelObservationContext];
      [(PXStatusController *)self _updateTitle];
      [(PXStatusController *)self _updateMessage];
      [(PXStatusController *)self _updateButtonTitle];
    }
  }
}

- (PXStatusController)init
{
  v11.receiver = self;
  v11.super_class = PXStatusController;
  v2 = [(PXStatusController *)&v11 init];
  if (v2)
  {
    v3 = objc_alloc_init(PXStatusViewModel);
    viewModel = v2->_viewModel;
    v2->_viewModel = v3;

    v5 = v2->_viewModel;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __26__PXStatusController_init__block_invoke;
    v9[3] = &unk_1E7BB6150;
    v10 = &stru_1F2B87EE0;
    [(PXStatusViewModel *)v5 performChanges:v9];
    [(PXObservable *)v2->_viewModel registerChangeObserver:v2 context:PXStatusViewModelObservationContext];
    emptyConfiguration = [MEMORY[0x1E69DC8C8] emptyConfiguration];
    configuration = v2->_configuration;
    v2->_configuration = emptyConfiguration;
  }

  return v2;
}

@end