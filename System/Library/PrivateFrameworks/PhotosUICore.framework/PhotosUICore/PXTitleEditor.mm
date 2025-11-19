@interface PXTitleEditor
- (PXTitleEditor)init;
- (id)createAlertController;
- (void)_handleSuccess:(BOOL)a3;
- (void)_updateConfirmAction;
- (void)_updateExposedProperties;
- (void)presentFromViewController:(id)a3;
- (void)setConfirmAction:(id)a3;
- (void)setSubtitle:(id)a3;
- (void)setSubtitlePlaceholder:(id)a3;
@end

@implementation PXTitleEditor

- (void)_updateConfirmAction
{
  [(PXTitleEditor *)self _updateExposedProperties];
  v3 = [(PXTitleEditor *)self validation];
  v6 = v3;
  if (v3)
  {
    v4 = (*(v3 + 16))(v3, self);
  }

  else
  {
    v4 = 1;
  }

  v5 = [(PXTitleEditor *)self confirmAction];
  [v5 setEnabled:v4];
}

- (id)createAlertController
{
  v3 = MEMORY[0x1E69DC650];
  v4 = [(PXTitleEditor *)self message];
  v5 = [v3 alertControllerWithTitle:v4 message:0 preferredStyle:1];

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
  v9 = [(PXTitleEditor *)self confirmButtonTitle];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __38__PXTitleEditor_createAlertController__block_invoke_4;
  v16[3] = &unk_1E7749600;
  v16[4] = self;
  v10 = [v8 actionWithTitle:v9 style:0 handler:v16];

  [v5 addAction:v10];
  [(PXTitleEditor *)self setConfirmAction:v10];
  v11 = MEMORY[0x1E69DC648];
  v12 = [(PXTitleEditor *)self cancelButtonTitle];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __38__PXTitleEditor_createAlertController__block_invoke_5;
  v15[3] = &unk_1E7749600;
  v15[4] = self;
  v13 = [v11 actionWithTitle:v12 style:1 handler:v15];
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

- (void)presentFromViewController:(id)a3
{
  v4 = a3;
  v5 = [(PXTitleEditor *)self createAlertController];
  [v4 presentViewController:v5 animated:1 completion:0];
}

- (void)setConfirmAction:(id)a3
{
  v5 = a3;
  if (self->_confirmAction != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_confirmAction, a3);
    [(PXTitleEditor *)self _invalidateConfirmAction];
    v5 = v6;
  }
}

- (void)_handleSuccess:(BOOL)a3
{
  v3 = a3;
  [(PXTitleEditor *)self _updateExposedProperties];
  v5 = [(PXTitleEditor *)self completionHandler];
  v5[2](v5, self, v3);
}

- (void)_updateExposedProperties
{
  v3 = [(PXTitleEditor *)self titleTextField];
  v4 = [v3 text];
  [(PXTitleEditor *)self setTitle:v4];

  v6 = [(PXTitleEditor *)self subtitleTextField];
  v5 = [v6 text];
  [(PXTitleEditor *)self setSubtitle:v5];
}

- (void)setSubtitlePlaceholder:(id)a3
{
  v4 = [a3 copy];
  subtitlePlaceholder = self->_subtitlePlaceholder;
  self->_subtitlePlaceholder = v4;

  [(PXTitleEditor *)self setIncludesSubtitle:1];
}

- (void)setSubtitle:(id)a3
{
  v4 = [a3 copy];
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