@interface PXViewControllerPresenter
+ (id)popoverPresenterWithViewController:(id)controller sourceItem:(id)item;
+ (id)popoverPresenterWithViewController:(id)controller sourceView:(id)view sourceRect:(CGRect)rect;
- (BOOL)canPresentPopovers;
- (BOOL)canPushViewController;
- (BOOL)popToViewController:(id)controller animated:(BOOL)animated;
- (BOOL)pushViewController:(id)controller animated:(BOOL)animated;
- (CGRect)sourceRect;
- (NSString)description;
- (PXViewControllerPresenter)init;
- (PXViewControllerPresenter)initWithBaseViewController:(id)controller sourceItem:(id)item;
- (PXViewControllerPresenter)initWithBaseViewController:(id)controller sourceView:(id)view sourceRect:(CGRect)rect;
- (UINavigationController)navigationController;
- (UIViewController)presentingViewController;
- (id)presentAlertWithConfigurationHandler:(id)handler;
- (void)dismissAlertWithToken:(id)token completionHandler:(id)handler;
- (void)dismissViewController:(id)controller animated:(BOOL)animated completionHandler:(id)handler;
- (void)presentViewController:(id)controller animated:(BOOL)animated completionHandler:(id)handler;
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

- (void)dismissAlertWithToken:(id)token completionHandler:(id)handler
{
  tokenCopy = token;
  handlerCopy = handler;
  v9 = tokenCopy;
  if (v9)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_3;
    }

    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v16 = objc_opt_class();
    v15 = NSStringFromClass(v16);
    px_descriptionForAssertionMessage = [v9 px_descriptionForAssertionMessage];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXViewControllerPresenter.m" lineNumber:176 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"token", v15, px_descriptionForAssertionMessage}];
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v14 = objc_opt_class();
    v15 = NSStringFromClass(v14);
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXViewControllerPresenter.m" lineNumber:176 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"token", v15}];
  }

LABEL_3:
  alertController = [v9 alertController];
  presentingViewController = [alertController presentingViewController];

  if (presentingViewController)
  {
    [presentingViewController dismissViewControllerAnimated:1 completion:handlerCopy];
  }

  else
  {
    v12 = PXAssertGetLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_1B3F73000, v12, OS_LOG_TYPE_FAULT, "Alert controller had a nil presentingViewController, indicating it may have been already dismissed.", buf, 2u);
    }

    handlerCopy[2](handlerCopy);
  }
}

- (id)presentAlertWithConfigurationHandler:(id)handler
{
  handlerCopy = handler;
  v5 = objc_alloc_init(PXAlertConfiguration);
  handlerCopy[2](handlerCopy, v5);

  v6 = [[PXAlert alloc] initWithConfiguration:v5];
  alertController = [(PXAlert *)v6 alertController];
  [(PXViewControllerPresenter *)self presentViewController:alertController animated:1 completionHandler:0];

  return v6;
}

- (BOOL)popToViewController:(id)controller animated:(BOOL)animated
{
  controllerCopy = controller;
  navigationController = [(PXViewControllerPresenter *)self navigationController];
  if (navigationController && [(PXViewControllerPresenter *)self canPushViewController])
  {
    v8 = controllerCopy;
    v9 = [navigationController px_preparePopToViewController:v8 forced:0];
    if (v9)
    {
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __58__PXViewControllerPresenter_popToViewController_animated___block_invoke;
      v11[3] = &unk_1E7BB8948;
      v12 = navigationController;
      v13 = v8;
      animatedCopy = animated;
      [(PXViewControllerPresenter *)self _performWithoutDeferringTransitions:v11];
    }
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9;
}

- (BOOL)pushViewController:(id)controller animated:(BOOL)animated
{
  animatedCopy = animated;
  controllerCopy = controller;
  navigationController = [(PXViewControllerPresenter *)self navigationController];
  if (navigationController && [(PXViewControllerPresenter *)self canPushViewController]&& (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v10 = controllerCopy;
    [(PXViewControllerPresenter *)self willPushViewController:v10 inNavigationController:navigationController animated:animatedCopy];
    [navigationController pushViewController:v10 animated:animatedCopy];

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
  navigationController = [(PXViewControllerPresenter *)self navigationController];
  v3 = navigationController != 0;

  return v3;
}

- (UIViewController)presentingViewController
{
  baseViewController = [(PXViewControllerPresenter *)self baseViewController];
  px_topmostPresentedViewController = [baseViewController px_topmostPresentedViewController];
  v5 = px_topmostPresentedViewController;
  if (px_topmostPresentedViewController)
  {
    baseViewController2 = px_topmostPresentedViewController;
  }

  else
  {
    baseViewController2 = [(PXViewControllerPresenter *)self baseViewController];
  }

  v7 = baseViewController2;

  return v7;
}

- (void)dismissViewController:(id)controller animated:(BOOL)animated completionHandler:(id)handler
{
  animatedCopy = animated;
  controllerCopy = controller;
  handlerCopy = handler;
  presentingViewController = [controllerCopy presentingViewController];
  [presentingViewController dismissViewControllerAnimated:animatedCopy completion:handlerCopy];
}

- (void)presentViewController:(id)controller animated:(BOOL)animated completionHandler:(id)handler
{
  animatedCopy = animated;
  controllerCopy = controller;
  handlerCopy = handler;
  v24 = controllerCopy;
  sourceItem = [(PXViewControllerPresenter *)self sourceItem];
  sourceView = [(PXViewControllerPresenter *)self sourceView];
  [(PXViewControllerPresenter *)self sourceRect];
  if (sourceItem)
  {
    popoverPresentationController = [v24 popoverPresentationController];
    [popoverPresentationController setSourceItem:sourceItem];
LABEL_3:

    goto LABEL_4;
  }

  if (sourceView)
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
        popoverPresentationController = [v24 popoverPresentationController];
        [popoverPresentationController setSourceView:sourceView];
        [popoverPresentationController setSourceRect:{v19, v20, v21, v22}];
        goto LABEL_3;
      }
    }
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v24 modalPresentationStyle] == 7)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXViewControllerPresenter.m" lineNumber:106 description:{@"%@ wasn't configured for a popover presentation but %@ requires to be presented as a popover", self, v24}];

    abort();
  }

LABEL_4:
  presentingViewController = [(PXViewControllerPresenter *)self presentingViewController];
  [presentingViewController presentViewController:v24 animated:animatedCopy completion:handlerCopy];
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
  traitCollection = [(UIViewController *)self->_baseViewController traitCollection];
  v4 = [traitCollection horizontalSizeClass] == 1 || objc_msgSend(traitCollection, "verticalSizeClass") == 1 || self->_sourceView || self->_sourceItem != 0;

  return v4;
}

- (UINavigationController)navigationController
{
  baseViewController = [(PXViewControllerPresenter *)self baseViewController];
  navigationController = [baseViewController navigationController];

  return navigationController;
}

- (PXViewControllerPresenter)initWithBaseViewController:(id)controller sourceView:(id)view sourceRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  viewCopy = view;
  v13 = [(PXViewControllerPresenter *)self initWithBaseViewController:controller sourceItem:0];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_sourceView, view);
    v14->_sourceRect.origin.x = x;
    v14->_sourceRect.origin.y = y;
    v14->_sourceRect.size.width = width;
    v14->_sourceRect.size.height = height;
  }

  return v14;
}

- (PXViewControllerPresenter)initWithBaseViewController:(id)controller sourceItem:(id)item
{
  controllerCopy = controller;
  itemCopy = item;
  if (!controllerCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXViewControllerPresenter.m" lineNumber:46 description:{@"Invalid parameter not satisfying: %@", @"baseViewController"}];
  }

  v16.receiver = self;
  v16.super_class = PXViewControllerPresenter;
  v10 = [(PXViewControllerPresenter *)&v16 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_baseViewController, controller);
    objc_storeStrong(&v11->_sourceItem, item);
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
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXViewControllerPresenter.m" lineNumber:41 description:{@"%s is not available as initializer", "-[PXViewControllerPresenter init]"}];

  abort();
}

+ (id)popoverPresenterWithViewController:(id)controller sourceView:(id)view sourceRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  viewCopy = view;
  controllerCopy = controller;
  v13 = [[self alloc] initWithBaseViewController:controllerCopy sourceView:viewCopy sourceRect:{x, y, width, height}];

  return v13;
}

+ (id)popoverPresenterWithViewController:(id)controller sourceItem:(id)item
{
  itemCopy = item;
  controllerCopy = controller;
  v8 = [[self alloc] initWithBaseViewController:controllerCopy sourceItem:itemCopy];

  return v8;
}

@end