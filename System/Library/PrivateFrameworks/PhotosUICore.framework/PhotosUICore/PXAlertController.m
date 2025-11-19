@interface PXAlertController
+ (id)activityAlertControllerWithTitle:(id)a3 message:(id)a4 cancelHandler:(id)a5 shouldDismiss:(BOOL)a6;
+ (id)progressAlertControllerWithMessage:(id)a3;
- (PXAlertController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)setContentView:(id)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation PXAlertController

- (void)viewDidDisappear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = PXAlertController;
  [(PXAlertController *)&v4 viewDidDisappear:a3];
  [(UIActivityIndicatorView *)self->_activityIndicatorView stopAnimating];
}

- (void)viewWillAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = PXAlertController;
  [(PXAlertController *)&v4 viewWillAppear:a3];
  [(UIActivityIndicatorView *)self->_activityIndicatorView startAnimating];
}

- (void)setContentView:(id)a3
{
  v5 = a3;
  if (self->_contentView != v5)
  {
    v9 = v5;
    objc_storeStrong(&self->_contentView, a3);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v9;
    }

    else
    {
      v6 = 0;
    }

    objc_storeStrong(&self->_progressView, v6);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = v9;
    }

    else
    {
      v7 = 0;
    }

    objc_storeStrong(&self->_activityIndicatorView, v7);
    if (v9)
    {
      v8 = [[_PXAlertContentViewController alloc] initWithContentView:v9];
      [(PXAlertController *)self setContentViewController:v8];
    }

    else
    {
      [(PXAlertController *)self setContentViewController:0];
    }

    v5 = v9;
  }
}

- (PXAlertController)initWithNibName:(id)a3 bundle:(id)a4
{
  v8.receiver = self;
  v8.super_class = PXAlertController;
  v4 = [(PXAlertController *)&v8 initWithNibName:a3 bundle:a4];
  if (v4)
  {
    v5 = objc_alloc_init(_PXAlertContentViewController);
    contentViewController = v4->_contentViewController;
    v4->_contentViewController = v5;
  }

  return v4;
}

+ (id)progressAlertControllerWithMessage:(id)a3
{
  v3 = [a1 alertControllerWithTitle:0 message:a3 preferredStyle:1];
  v4 = [objc_alloc(MEMORY[0x1E69DCE48]) initWithProgressViewStyle:0];
  [v3 setContentView:v4];

  return v3;
}

+ (id)activityAlertControllerWithTitle:(id)a3 message:(id)a4 cancelHandler:(id)a5 shouldDismiss:(BOOL)a6
{
  v10 = a5;
  v11 = [a1 alertControllerWithTitle:a3 message:a4 preferredStyle:1];
  v12 = PXLocalizedStringFromTable(@"PXCancel", @"PhotosUICore");
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __90__PXAlertController_activityAlertControllerWithTitle_message_cancelHandler_shouldDismiss___block_invoke;
  v15[3] = &__block_descriptor_33_e5_B8__0l;
  v16 = a6;
  [v11 _addActionWithTitle:v12 style:1 handler:v10 shouldDismissHandler:v15];

  v13 = [objc_alloc(MEMORY[0x1E69DC638]) initWithActivityIndicatorStyle:100];
  [v11 setContentView:v13];

  return v11;
}

@end