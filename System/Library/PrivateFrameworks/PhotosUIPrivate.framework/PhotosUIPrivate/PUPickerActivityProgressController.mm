@interface PUPickerActivityProgressController
- (PUPickerActivityProgressController)init;
- (void)_setupAlertController;
- (void)setMessage:(id)message;
- (void)setProgress:(id)progress;
- (void)setTitle:(id)title;
- (void)showFromSourceViewController:(id)controller completion:(id)completion;
@end

@implementation PUPickerActivityProgressController

- (void)_setupAlertController
{
  title = [(PUPickerActivityProgressController *)self title];
  message = [(PUPickerActivityProgressController *)self message];
  v5 = [MEMORY[0x1E69DC650] alertControllerWithTitle:title message:message preferredStyle:1];
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

- (void)showFromSourceViewController:(id)controller completion:(id)completion
{
  completionCopy = completion;
  controllerCopy = controller;
  [(PUPickerActivityProgressController *)self _setupAlertController];
  [controllerCopy presentViewController:self->_alertController animated:1 completion:completionCopy];
}

- (void)setMessage:(id)message
{
  messageCopy = message;
  if (self->_message != messageCopy)
  {
    v8 = messageCopy;
    if (![(NSString *)messageCopy isEqualToString:?])
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

- (void)setTitle:(id)title
{
  titleCopy = title;
  if (self->_title != titleCopy)
  {
    v8 = titleCopy;
    if (![(NSString *)titleCopy isEqualToString:?])
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

- (void)setProgress:(id)progress
{
  objc_storeStrong(&self->_progress, progress);
  progressCopy = progress;
  [(PUAssetPickerActivityProgressViewController *)self->_progressViewController setProgress:progressCopy];
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