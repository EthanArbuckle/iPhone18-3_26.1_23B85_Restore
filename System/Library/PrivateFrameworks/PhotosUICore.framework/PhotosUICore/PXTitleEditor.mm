@interface PXTitleEditor
- (PXTitleEditor)init;
- (id)createAlertController;
- (void)_handleSuccess:(BOOL)success;
- (void)_updateConfirmAction;
- (void)_updateExposedProperties;
- (void)presentFromViewController:(id)controller;
- (void)setConfirmAction:(id)action;
- (void)setSubtitle:(id)subtitle;
- (void)setSubtitlePlaceholder:(id)placeholder;
@end

@implementation PXTitleEditor

- (void)_updateConfirmAction
{
  [(PXTitleEditor *)self _updateExposedProperties];
  validation = [(PXTitleEditor *)self validation];
  v6 = validation;
  if (validation)
  {
    v4 = (*(validation + 16))(validation, self);
  }

  else
  {
    v4 = 1;
  }

  confirmAction = [(PXTitleEditor *)self confirmAction];
  [confirmAction setEnabled:v4];
}

- (id)createAlertController
{
  v3 = MEMORY[0x1E69DC650];
  message = [(PXTitleEditor *)self message];
  v5 = [v3 alertControllerWithTitle:message message:0 preferredStyle:1];

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __38__PXTitleEditor_createAlertController__block_invoke;
  aBlock[3] = &unk_1E772C930;
  aBlock[4] = self;
  v6 = _Block_copy(aBlock);
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __38__PXTitleEditor_createAlertController__block_invoke_2;
  v19[3] = &unk_1E772C958;
  v7 = v6;
  v19[4] = self;
  v20 = v7;
  [v5 addTextFieldWithConfigurationHandler:v19];
  if ([(PXTitleEditor *)self includesSubtitle])
  {
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __38__PXTitleEditor_createAlertController__block_invoke_3;
    v17[3] = &unk_1E772C958;
    v17[4] = self;
    v18 = v7;
    [v5 addTextFieldWithConfigurationHandler:v17];
  }

  v8 = MEMORY[0x1E69DC648];
  confirmButtonTitle = [(PXTitleEditor *)self confirmButtonTitle];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __38__PXTitleEditor_createAlertController__block_invoke_4;
  v16[3] = &unk_1E7749600;
  v16[4] = self;
  v10 = [v8 actionWithTitle:confirmButtonTitle style:0 handler:v16];

  [v5 addAction:v10];
  [(PXTitleEditor *)self setConfirmAction:v10];
  v11 = MEMORY[0x1E69DC648];
  cancelButtonTitle = [(PXTitleEditor *)self cancelButtonTitle];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __38__PXTitleEditor_createAlertController__block_invoke_5;
  v15[3] = &unk_1E7749600;
  v15[4] = self;
  v13 = [v11 actionWithTitle:cancelButtonTitle style:1 handler:v15];
  [v5 addAction:v13];

  return v5;
}

void __38__PXTitleEditor_createAlertController__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setAutocapitalizationType:2];
  [v3 setAutocorrectionType:0];
  [v3 setClearButtonMode:1];
  [v3 setReturnKeyType:9];
  [v3 setEnablesReturnKeyAutomatically:1];
  [v3 addTarget:*(a1 + 32) action:sel__textFieldDidChange_ forControlEvents:0x20000];
}

void __38__PXTitleEditor_createAlertController__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 40);
  v4 = *(v3 + 16);
  v7 = a2;
  v4(v3, v7);
  v5 = [*(a1 + 32) titlePlaceholder];
  [v7 setPlaceholder:v5];

  v6 = [*(a1 + 32) title];
  [v7 setText:v6];

  [*(a1 + 32) setTitleTextField:v7];
}

void __38__PXTitleEditor_createAlertController__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = *(a1 + 40);
  v4 = *(v3 + 16);
  v7 = a2;
  v4(v3, v7);
  v5 = [*(a1 + 32) subtitlePlaceholder];
  [v7 setPlaceholder:v5];

  v6 = [*(a1 + 32) subtitle];
  [v7 setText:v6];

  [*(a1 + 32) setSubtitleTextField:v7];
}

- (void)presentFromViewController:(id)controller
{
  controllerCopy = controller;
  createAlertController = [(PXTitleEditor *)self createAlertController];
  [controllerCopy presentViewController:createAlertController animated:1 completion:0];
}

- (void)setConfirmAction:(id)action
{
  actionCopy = action;
  if (self->_confirmAction != actionCopy)
  {
    v6 = actionCopy;
    objc_storeStrong(&self->_confirmAction, action);
    [(PXTitleEditor *)self _invalidateConfirmAction];
    actionCopy = v6;
  }
}

- (void)_handleSuccess:(BOOL)success
{
  successCopy = success;
  [(PXTitleEditor *)self _updateExposedProperties];
  completionHandler = [(PXTitleEditor *)self completionHandler];
  completionHandler[2](completionHandler, self, successCopy);
}

- (void)_updateExposedProperties
{
  titleTextField = [(PXTitleEditor *)self titleTextField];
  text = [titleTextField text];
  [(PXTitleEditor *)self setTitle:text];

  subtitleTextField = [(PXTitleEditor *)self subtitleTextField];
  text2 = [subtitleTextField text];
  [(PXTitleEditor *)self setSubtitle:text2];
}

- (void)setSubtitlePlaceholder:(id)placeholder
{
  v4 = [placeholder copy];
  subtitlePlaceholder = self->_subtitlePlaceholder;
  self->_subtitlePlaceholder = v4;

  [(PXTitleEditor *)self setIncludesSubtitle:1];
}

- (void)setSubtitle:(id)subtitle
{
  v4 = [subtitle copy];
  subtitle = self->_subtitle;
  self->_subtitle = v4;

  [(PXTitleEditor *)self setIncludesSubtitle:1];
}

- (PXTitleEditor)init
{
  v9.receiver = self;
  v9.super_class = PXTitleEditor;
  v2 = [(PXTitleEditor *)&v9 init];
  if (v2)
  {
    v3 = PXLocalizedStringFromTable(@"PXCancel", @"PhotosUICore");
    cancelButtonTitle = v2->_cancelButtonTitle;
    v2->_cancelButtonTitle = v3;

    v5 = PXLocalizedStringFromTable(@"PXOK", @"PhotosUICore");
    confirmButtonTitle = v2->_confirmButtonTitle;
    v2->_confirmButtonTitle = v5;

    completionHandler = v2->_completionHandler;
    v2->_completionHandler = &__block_literal_global_446;
  }

  return v2;
}

@end