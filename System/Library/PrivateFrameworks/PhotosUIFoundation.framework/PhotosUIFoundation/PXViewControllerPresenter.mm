@interface PXViewControllerPresenter
+ (id)popoverPresenterWithViewController:(id)a3 sourceItem:(id)a4;
+ (id)popoverPresenterWithViewController:(id)a3 sourceView:(id)a4 sourceRect:(CGRect)a5;
- (BOOL)canPresentPopovers;
- (BOOL)canPushViewController;
- (BOOL)popToViewController:(id)a3 animated:(BOOL)a4;
- (BOOL)pushViewController:(id)a3 animated:(BOOL)a4;
- (CGRect)sourceRect;
- (NSString)description;
- (PXViewControllerPresenter)init;
- (PXViewControllerPresenter)initWithBaseViewController:(id)a3 sourceItem:(id)a4;
- (PXViewControllerPresenter)initWithBaseViewController:(id)a3 sourceView:(id)a4 sourceRect:(CGRect)a5;
- (UINavigationController)navigationController;
- (UIViewController)presentingViewController;
- (id)presentAlertWithConfigurationHandler:(id)a3;
- (void)dismissAlertWithToken:(id)a3 completionHandler:(id)a4;
- (void)dismissViewController:(id)a3 animated:(BOOL)a4 completionHandler:(id)a5;
- (void)presentViewController:(id)a3 animated:(BOOL)a4 completionHandler:(id)a5;
@end

@implementation PXViewControllerPresenter

- (CGRect)sourceRect
{
  x = self->_sourceRect.origin.x;
  y = self->_sourceRect.origin.y;
  width = self->_sourceRect.size.width;
  height = self->_sourceRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (void)dismissAlertWithToken:(id)a3 completionHandler:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = v7;
  if (v9)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_3;
    }

    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    v16 = objc_opt_class();
    v15 = NSStringFromClass(v16);
    v17 = [v9 px_descriptionForAssertionMessage];
    [v13 handleFailureInMethod:a2 object:self file:@"PXViewControllerPresenter.m" lineNumber:176 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"token", v15, v17}];
  }

  else
  {
    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    v14 = objc_opt_class();
    v15 = NSStringFromClass(v14);
    [v13 handleFailureInMethod:a2 object:self file:@"PXViewControllerPresenter.m" lineNumber:176 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"token", v15}];
  }

LABEL_3:
  v10 = [v9 alertController];
  v11 = [v10 presentingViewController];

  if (v11)
  {
    [v11 dismissViewControllerAnimated:1 completion:v8];
  }

  else
  {
    v12 = PXAssertGetLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_1B3F73000, v12, OS_LOG_TYPE_FAULT, "Alert controller had a nil presentingViewController, indicating it may have been already dismissed.", buf, 2u);
    }

    v8[2](v8);
  }
}

- (id)presentAlertWithConfigurationHandler:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(PXAlertConfiguration);
  v4[2](v4, v5);

  v6 = [[PXAlert alloc] initWithConfiguration:v5];
  v7 = [(PXAlert *)v6 alertController];
  [(PXViewControllerPresenter *)self presentViewController:v7 animated:1 completionHandler:0];

  return v6;
}

- (BOOL)popToViewController:(id)a3 animated:(BOOL)a4
{
  v6 = a3;
  v7 = [(PXViewControllerPresenter *)self navigationController];
  if (v7 && [(PXViewControllerPresenter *)self canPushViewController])
  {
    v8 = v6;
    v9 = [v7 px_preparePopToViewController:v8 forced:0];
    if (v9)
    {
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __58__PXViewControllerPresenter_popToViewController_animated___block_invoke;
      v11[3] = &unk_1E7BB8948;
      v12 = v7;
      v13 = v8;
      v14 = a4;
      [(PXViewControllerPresenter *)self _performWithoutDeferringTransitions:v11];
    }
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9;
}

- (BOOL)pushViewController:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(PXViewControllerPresenter *)self navigationController];
  if (v7 && [(PXViewControllerPresenter *)self canPushViewController]&& (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v10 = v6;
    [(PXViewControllerPresenter *)self willPushViewController:v10 inNavigationController:v7 animated:v4];
    [v7 pushViewController:v10 animated:v4];

    v8 = 1;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)canPushViewController
{
  v2 = [(PXViewControllerPresenter *)self navigationController];
  v3 = v2 != 0;

  return v3;
}

- (UIViewController)presentingViewController
{
  v3 = [(PXViewControllerPresenter *)self baseViewController];
  v4 = [v3 px_topmostPresentedViewController];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = [(PXViewControllerPresenter *)self baseViewController];
  }

  v7 = v6;

  return v7;
}

- (void)dismissViewController:(id)a3 animated:(BOOL)a4 completionHandler:(id)a5
{
  v6 = a4;
  v9 = a3;
  v7 = a5;
  v8 = [v9 presentingViewController];
  [v8 dismissViewControllerAnimated:v6 completion:v7];
}

- (void)presentViewController:(id)a3 animated:(BOOL)a4 completionHandler:(id)a5
{
  v6 = a4;
  v9 = a3;
  v10 = a5;
  v24 = v9;
  v11 = [(PXViewControllerPresenter *)self sourceItem];
  v12 = [(PXViewControllerPresenter *)self sourceView];
  [(PXViewControllerPresenter *)self sourceRect];
  if (v11)
  {
    v17 = [v24 popoverPresentationController];
    [v17 setSourceItem:v11];
LABEL_3:

    goto LABEL_4;
  }

  if (v12)
  {
    v19 = v13;
    v20 = v14;
    v21 = v15;
    v22 = v16;
    if (!CGRectIsNull(*&v13))
    {
      v26.origin.x = v19;
      v26.origin.y = v20;
      v26.size.width = v21;
      v26.size.height = v22;
      if (!CGRectIsEmpty(v26))
      {
        v17 = [v24 popoverPresentationController];
        [v17 setSourceView:v12];
        [v17 setSourceRect:{v19, v20, v21, v22}];
        goto LABEL_3;
      }
    }
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v24 modalPresentationStyle] == 7)
  {
    v23 = [MEMORY[0x1E696AAA8] currentHandler];
    [v23 handleFailureInMethod:a2 object:self file:@"PXViewControllerPresenter.m" lineNumber:106 description:{@"%@ wasn't configured for a popover presentation but %@ requires to be presented as a popover", self, v24}];

    abort();
  }

LABEL_4:
  v18 = [(PXViewControllerPresenter *)self presentingViewController];
  [v18 presentViewController:v24 animated:v6 completion:v10];
}

- (NSString)description
{
  if (self->_sourceView)
  {
    v3 = objc_alloc(MEMORY[0x1E696AEC0]);
    v4 = NSStringFromCGRect(self->_sourceRect);
    v5 = [v3 initWithFormat:@"%@ in %@", v4, self->_sourceView];
  }

  else
  {
    sourceItem = self->_sourceItem;
    if (sourceItem)
    {
      v5 = [(UIPopoverPresentationControllerSourceItem *)sourceItem description];
    }

    else
    {
      v5 = @"None";
    }
  }

  v7 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"<%@ %p, view controller: %@, popover source: %@>", objc_opt_class(), self, self->_baseViewController, v5];

  return v7;
}

- (BOOL)canPresentPopovers
{
  v3 = [(UIViewController *)self->_baseViewController traitCollection];
  v4 = [v3 horizontalSizeClass] == 1 || objc_msgSend(v3, "verticalSizeClass") == 1 || self->_sourceView || self->_sourceItem != 0;

  return v4;
}

- (UINavigationController)navigationController
{
  v2 = [(PXViewControllerPresenter *)self baseViewController];
  v3 = [v2 navigationController];

  return v3;
}

- (PXViewControllerPresenter)initWithBaseViewController:(id)a3 sourceView:(id)a4 sourceRect:(CGRect)a5
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v12 = a4;
  v13 = [(PXViewControllerPresenter *)self initWithBaseViewController:a3 sourceItem:0];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_sourceView, a4);
    v14->_sourceRect.origin.x = x;
    v14->_sourceRect.origin.y = y;
    v14->_sourceRect.size.width = width;
    v14->_sourceRect.size.height = height;
  }

  return v14;
}

- (PXViewControllerPresenter)initWithBaseViewController:(id)a3 sourceItem:(id)a4
{
  v8 = a3;
  v9 = a4;
  if (!v8)
  {
    v15 = [MEMORY[0x1E696AAA8] currentHandler];
    [v15 handleFailureInMethod:a2 object:self file:@"PXViewControllerPresenter.m" lineNumber:46 description:{@"Invalid parameter not satisfying: %@", @"baseViewController"}];
  }

  v16.receiver = self;
  v16.super_class = PXViewControllerPresenter;
  v10 = [(PXViewControllerPresenter *)&v16 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_baseViewController, a3);
    objc_storeStrong(&v11->_sourceItem, a4);
    sourceView = v11->_sourceView;
    v11->_sourceView = 0;

    v13 = *(MEMORY[0x1E695F050] + 16);
    v11->_sourceRect.origin = *MEMORY[0x1E695F050];
    v11->_sourceRect.size = v13;
  }

  return v11;
}

- (PXViewControllerPresenter)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PXViewControllerPresenter.m" lineNumber:41 description:{@"%s is not available as initializer", "-[PXViewControllerPresenter init]"}];

  abort();
}

+ (id)popoverPresenterWithViewController:(id)a3 sourceView:(id)a4 sourceRect:(CGRect)a5
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v11 = a4;
  v12 = a3;
  v13 = [[a1 alloc] initWithBaseViewController:v12 sourceView:v11 sourceRect:{x, y, width, height}];

  return v13;
}

+ (id)popoverPresenterWithViewController:(id)a3 sourceItem:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[a1 alloc] initWithBaseViewController:v7 sourceItem:v6];

  return v8;
}

@end