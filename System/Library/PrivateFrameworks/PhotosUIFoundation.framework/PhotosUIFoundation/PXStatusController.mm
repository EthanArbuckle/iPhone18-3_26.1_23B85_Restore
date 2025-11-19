@interface PXStatusController
- (PXStatusController)init;
- (PXStatusControllerDelegate)delegate;
- (void)_handleButtonAction:(id)a3;
- (void)_updateButtonTitle;
- (void)_updateMessage;
- (void)_updateTitle;
- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5;
- (void)setViewModel:(id)a3;
@end

@implementation PXStatusController

- (PXStatusControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5
{
  v6 = a4;
  v19 = *MEMORY[0x1E69E9840];
  v9 = a3;
  if (PXStatusViewModelObservationContext == a5)
  {
    if ((v6 & 2) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v16 = [MEMORY[0x1E696AAA8] currentHandler];
  [v16 handleFailureInMethod:a2 object:self file:@"PXStatusController.m" lineNumber:167 description:{@"Invalid parameter not satisfying: %@", @"context == PXStatusViewModelObservationContext"}];

  if ((v6 & 2) != 0)
  {
LABEL_3:
    [(PXStatusController *)self _updateTitle];
  }

LABEL_4:
  if ((v6 & 0xC) != 0)
  {
    [(PXStatusController *)self _updateMessage];
  }

  if ((v6 & 0x10) == 0 || ([(PXStatusController *)self confirmationAlertToken], v10 = objc_claimAutoreleasedReturnValue(), [(PXStatusController *)self _updateButtonTitle], !v10))
  {
    if ((v6 & 0xE0) == 0)
    {
      goto LABEL_14;
    }

    v11 = [(PXStatusController *)self confirmationAlertToken];
    if (!v11)
    {
      goto LABEL_14;
    }

    v10 = v11;
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

  v14 = [(PXStatusController *)self delegate];
  v15 = [v14 presentationEnvironmentForStatusController:self];

  [v15 dismissAlertWithToken:v10 completionHandler:0];
LABEL_14:
}

- (void)_handleButtonAction:(id)a3
{
  v34 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(PXStatusViewModel *)self->_viewModel action];
  v6 = PXUserStatusUIGetLog();
  v7 = v6;
  if (v5)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      viewModel = self->_viewModel;
      *buf = 138543362;
      v33 = viewModel;
      _os_log_impl(&dword_1B3F73000, v7, OS_LOG_TYPE_DEFAULT, "Status View: User invoked un-pause action (%{public}@)", buf, 0xCu);
    }

    v7 = [(PXStatusViewModel *)self->_viewModel actionConfirmationAlertTitle];
    v9 = [(PXStatusViewModel *)self->_viewModel actionConfirmationAlertButtonTitle];
    v10 = PXUserStatusUIGetLog();
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
    if (v7 && v9)
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
      v13 = [(PXStatusController *)self delegate];
      v14 = [v13 presentationEnvironmentForStatusController:self];

      v22[0] = MEMORY[0x1E69E9820];
      v22[1] = 3221225472;
      v22[2] = __42__PXStatusController__handleButtonAction___block_invoke;
      v22[3] = &unk_1E7BB61F0;
      v23 = v7;
      v24 = self;
      v25 = v4;
      v26 = v9;
      objc_copyWeak(&v28, &from);
      objc_copyWeak(&v29, &location);
      v27 = v5;
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

      v5[2](v5);
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v19 = self->_viewModel;
    *buf = 138543362;
    v33 = v19;
    _os_log_impl(&dword_1B3F73000, v7, OS_LOG_TYPE_ERROR, "Status View: No action for button (%{public}@)", buf, 0xCu);
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
  v3 = [(PXStatusViewModel *)self->_viewModel actionTitle];
  v4 = [v3 length];
  v5 = [(PXStatusController *)self configuration];
  v6 = [v5 buttonProperties];
  v7 = [v6 configuration];
  v8 = v7;
  if (v4)
  {
    [v7 setTitle:v3];

    objc_initWeak(&location, self);
    v9 = MEMORY[0x1E69DC628];
    v17 = MEMORY[0x1E69E9820];
    v18 = 3221225472;
    v19 = __40__PXStatusController__updateButtonTitle__block_invoke;
    v20 = &unk_1E7BB6178;
    objc_copyWeak(&v21, &location);
    v10 = [v9 actionWithHandler:&v17];
    v11 = [(PXStatusController *)self configuration:v17];
    v12 = [v11 buttonProperties];
    [v12 setPrimaryAction:v10];

    objc_destroyWeak(&v21);
    objc_destroyWeak(&location);
  }

  else
  {
    [v7 setTitle:0];

    v13 = [(PXStatusController *)self configuration];
    v14 = [v13 buttonProperties];
    [v14 setPrimaryAction:0];
  }

  v15 = [(PXStatusController *)self delegate];
  v16 = [(PXStatusController *)self configuration];
  [v15 statusController:self configurationDidChange:v16];
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
  v9 = [(PXStatusViewModel *)self->_viewModel message];
  v3 = [(PXStatusController *)self viewModel];
  v4 = [v3 attributedMessage];

  if (v4)
  {
    v5 = [(PXStatusViewModel *)self->_viewModel attributedMessage];
    v6 = [(PXStatusController *)self configuration];
    [v6 setSecondaryAttributedText:v5];
  }

  else
  {
    v5 = [(PXStatusController *)self configuration];
    [v5 setSecondaryText:v9];
  }

  v7 = [(PXStatusController *)self delegate];
  v8 = [(PXStatusController *)self configuration];
  [v7 statusController:self configurationDidChange:v8];
}

- (void)_updateTitle
{
  v7 = [(PXStatusViewModel *)self->_viewModel title];
  if ([v7 length])
  {
    v3 = v7;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(PXStatusController *)self configuration];
  [v4 setText:v3];

  v5 = [(PXStatusController *)self delegate];
  v6 = [(PXStatusController *)self configuration];
  [v5 statusController:self configurationDidChange:v6];
}

- (void)setViewModel:(id)a3
{
  v6 = a3;
  if (!v6)
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"PXStatusController.m" lineNumber:55 description:{@"Invalid parameter not satisfying: %@", @"viewModel"}];
  }

  viewModel = self->_viewModel;
  v8 = v6;
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
      objc_storeStrong(&self->_viewModel, a3);
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
    v6 = [MEMORY[0x1E69DC8C8] emptyConfiguration];
    configuration = v2->_configuration;
    v2->_configuration = v6;
  }

  return v2;
}

@end