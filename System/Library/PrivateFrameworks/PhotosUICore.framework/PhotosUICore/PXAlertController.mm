@interface PXAlertController
+ (id)activityAlertControllerWithTitle:(id)title message:(id)message cancelHandler:(id)handler shouldDismiss:(BOOL)dismiss;
+ (id)progressAlertControllerWithMessage:(id)message;
- (PXAlertController)initWithNibName:(id)name bundle:(id)bundle;
- (void)setContentView:(id)view;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation PXAlertController

- (void)viewDidDisappear:(BOOL)disappear
{
  v4.receiver = self;
  v4.super_class = PXAlertController;
  [(PXAlertController *)&v4 viewDidDisappear:disappear];
  [(UIActivityIndicatorView *)self->_activityIndicatorView stopAnimating];
}

- (void)viewWillAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = PXAlertController;
  [(PXAlertController *)&v4 viewWillAppear:appear];
  [(UIActivityIndicatorView *)self->_activityIndicatorView startAnimating];
}

- (void)setContentView:(id)view
{
  viewCopy = view;
  if (self->_contentView != viewCopy)
  {
    v9 = viewCopy;
    objc_storeStrong(&self->_contentView, view);
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

    viewCopy = v9;
  }
}

- (PXAlertController)initWithNibName:(id)name bundle:(id)bundle
{
  v8.receiver = self;
  v8.super_class = PXAlertController;
  v4 = [(PXAlertController *)&v8 initWithNibName:name bundle:bundle];
  if (v4)
  {
    v5 = objc_alloc_init(_PXAlertContentViewController);
    contentViewController = v4->_contentViewController;
    v4->_contentViewController = v5;
  }

  return v4;
}

+ (id)progressAlertControllerWithMessage:(id)message
{
  v3 = [self alertControllerWithTitle:0 message:message preferredStyle:1];
  v4 = [objc_alloc(MEMORY[0x1E69DCE48]) initWithProgressViewStyle:0];
  [v3 setContentView:v4];

  return v3;
}

+ (id)activityAlertControllerWithTitle:(id)title message:(id)message cancelHandler:(id)handler shouldDismiss:(BOOL)dismiss
{
  handlerCopy = handler;
  v11 = [self alertControllerWithTitle:title message:message preferredStyle:1];
  v12 = PXLocalizedStringFromTable(@"PXCancel", @"PhotosUICore");
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __90__PXAlertController_activityAlertControllerWithTitle_message_cancelHandler_shouldDismiss___block_invoke;
  v15[3] = &__block_descriptor_33_e5_B8__0l;
  dismissCopy = dismiss;
  [v11 _addActionWithTitle:v12 style:1 handler:handlerCopy shouldDismissHandler:v15];

  v13 = [objc_alloc(MEMORY[0x1E69DC638]) initWithActivityIndicatorStyle:100];
  [v11 setContentView:v13];

  return v11;
}

@end