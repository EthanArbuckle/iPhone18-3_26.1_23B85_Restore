@interface PUPickerActivityProgressController
- (PUPickerActivityProgressController)init;
- (void)_setupAlertController;
- (void)setMessage:(id)a3;
- (void)setProgress:(id)a3;
- (void)setTitle:(id)a3;
- (void)showFromSourceViewController:(id)a3 completion:(id)a4;
@end

@implementation PUPickerActivityProgressController

- (void)_setupAlertController
{
  v3 = [(PUPickerActivityProgressController *)self title];
  v4 = [(PUPickerActivityProgressController *)self message];
  v5 = [MEMORY[0x1E69DC650] alertControllerWithTitle:v3 message:v4 preferredStyle:1];
  objc_initWeak(&location, self);
  v6 = PULocalizedString(@"CANCEL");
  v8 = MEMORY[0x1E69E9820];
  v9 = 3221225472;
  v10 = __59__PUPickerActivityProgressController__setupAlertController__block_invoke;
  v11 = &unk_1E7B80638;
  objc_copyWeak(&v12, &location);
  [(UIAlertController *)v5 _addActionWithTitle:v6 style:1 handler:&v8 shouldDismissHandler:&__block_literal_global_979];

  [(UIAlertController *)v5 setContentViewController:self->_progressViewController, v8, v9, v10, v11];
  alertController = self->_alertController;
  self->_alertController = v5;

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

void __59__PUPickerActivityProgressController__setupAlertController__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained cancellationHandler];
  v2 = v1;
  if (v1)
  {
    (*(v1 + 16))(v1);
  }
}

- (void)showFromSourceViewController:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  [(PUPickerActivityProgressController *)self _setupAlertController];
  [v7 presentViewController:self->_alertController animated:1 completion:v6];
}

- (void)setMessage:(id)a3
{
  v4 = a3;
  if (self->_message != v4)
  {
    v8 = v4;
    if (![(NSString *)v4 isEqualToString:?])
    {
      v5 = [(NSString *)v8 copy];
      message = self->_message;
      self->_message = v5;

      alertController = self->_alertController;
      if (alertController)
      {
        [(UIAlertController *)alertController setMessage:self->_message];
      }
    }
  }

  MEMORY[0x1EEE66BB8]();
}

- (void)setTitle:(id)a3
{
  v4 = a3;
  if (self->_title != v4)
  {
    v8 = v4;
    if (![(NSString *)v4 isEqualToString:?])
    {
      v5 = [(NSString *)v8 copy];
      title = self->_title;
      self->_title = v5;

      alertController = self->_alertController;
      if (alertController)
      {
        [(UIAlertController *)alertController setTitle:self->_title];
      }
    }
  }

  MEMORY[0x1EEE66BB8]();
}

- (void)setProgress:(id)a3
{
  objc_storeStrong(&self->_progress, a3);
  v5 = a3;
  [(PUAssetPickerActivityProgressViewController *)self->_progressViewController setProgress:v5];
}

- (PUPickerActivityProgressController)init
{
  v6.receiver = self;
  v6.super_class = PUPickerActivityProgressController;
  v2 = [(PUPickerActivityProgressController *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(PUAssetPickerActivityProgressViewController);
    progressViewController = v2->_progressViewController;
    v2->_progressViewController = v3;
  }

  return v2;
}

@end