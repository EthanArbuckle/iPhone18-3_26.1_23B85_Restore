@interface _UIDocumentPickerNavigationBridgeController
+ (id)_exportedInterface;
- (id)popToRootViewControllerAnimated:(BOOL)animated;
- (id)popToViewController:(id)controller animated:(BOOL)animated;
- (id)popViewControllerAnimated:(BOOL)animated;
- (void)_documentPickerDidDismiss;
- (void)_doneButton:(id)button;
- (void)_locationsMenu:(id)menu;
- (void)_prepareWithExtensionInfo:(id)info completionHandler:(id)handler;
- (void)_setPickableTypes:(id)types;
- (void)_setPickerMode:(unint64_t)mode;
- (void)_setTintColor:(id)color;
- (void)_setUploadURLWrapper:(id)wrapper;
- (void)_updateNavigationItem;
- (void)pushViewController:(id)controller animated:(BOOL)animated;
- (void)setViewControllers:(id)controllers animated:(BOOL)animated;
@end

@implementation _UIDocumentPickerNavigationBridgeController

+ (id)_exportedInterface
{
  v2 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1EFF88398];
  v3 = MEMORY[0x1E695DFD8];
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  [v2 setClasses:objc_msgSend(v3 forSelector:"setWithObjects:" argumentIndex:v4 ofReply:{v5, objc_opt_class(), 0), sel__prepareWithExtensionInfo_completionHandler_, 0, 0}];
  return v2;
}

- (void)_setPickableTypes:(id)types
{
  if ([-[NSArray firstObject](-[UINavigationController viewControllers](self "viewControllers")])
  {
    firstObject = [(NSArray *)[(UINavigationController *)self viewControllers] firstObject];
  }

  else
  {
    firstObject = 0;
  }

  [firstObject _setPickableTypes:types];
}

- (void)_setPickerMode:(unint64_t)mode
{
  if ([-[NSArray firstObject](-[UINavigationController viewControllers](self "viewControllers")])
  {
    firstObject = [(NSArray *)[(UINavigationController *)self viewControllers] firstObject];
  }

  else
  {
    firstObject = 0;
  }

  [firstObject _setPickerMode:mode];
}

- (void)_setUploadURLWrapper:(id)wrapper
{
  if ([-[NSArray firstObject](-[UINavigationController viewControllers](self "viewControllers")])
  {
    firstObject = [(NSArray *)[(UINavigationController *)self viewControllers] firstObject];
  }

  else
  {
    firstObject = 0;
  }

  [firstObject _setUploadURLWrapper:wrapper];
}

- (void)_prepareWithExtensionInfo:(id)info completionHandler:(id)handler
{
  if ([-[NSArray firstObject](-[UINavigationController viewControllers](self "viewControllers")])
  {
    firstObject = [(NSArray *)[(UINavigationController *)self viewControllers] firstObject];
  }

  else
  {
    firstObject = 0;
  }

  if ((dyld_program_sdk_at_least() & 1) == 0)
  {
    [(UINavigationController *)self setNavigationBarHidden:1];
  }

  if (firstObject)
  {

    [firstObject _prepareWithExtensionInfo:info completionHandler:handler];
  }

  else
  {
    v8 = _UIApplicationLinkedOnVersion;
    v9 = *(handler + 2);

    v9(handler, v8);
  }
}

- (void)_documentPickerDidDismiss
{
  if ([-[NSArray firstObject](-[UINavigationController viewControllers](self "viewControllers")])
  {
    firstObject = [(NSArray *)[(UINavigationController *)self viewControllers] firstObject];
  }

  else
  {
    firstObject = 0;
  }

  [firstObject _documentPickerDidDismiss];
}

- (void)_setTintColor:(id)color
{
  view = [(UIViewController *)self view];

  [(UIView *)view setTintColor:color];
}

- (void)_doneButton:(id)button
{
  hostingViewController = [(_UIDocumentPickerNavigationBridgeController *)self hostingViewController];

  [hostingViewController _doneButtonPressed];
}

- (void)_locationsMenu:(id)menu
{
  view = [menu view];
  [objc_msgSend(menu "view")];
  [view convertRect:-[UIViewController view](self toView:{"view"), v6, v7, v8, v9}];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  hostingViewController = [(_UIDocumentPickerNavigationBridgeController *)self hostingViewController];

  [hostingViewController _displayLocationMenu:{v11, v13, v15, v17}];
}

- (void)_updateNavigationItem
{
  v5[1] = *MEMORY[0x1E69E9840];
  if (!self->_hasSetInitialNavigationItem)
  {
    self->_hasSetInitialNavigationItem = 1;
    firstObject = [(NSArray *)[(UINavigationController *)self viewControllers] firstObject];
    [firstObject _setExistingNavigationItem:{-[_UIDocumentPickerNavigationItem initWithTitle:rightBarButtonItem:]([_UIDocumentPickerNavigationItem alloc], "initWithTitle:rightBarButtonItem:", objc_msgSend(objc_msgSend(firstObject, "_existingNavigationItem"), "title"), -[UIBarButtonItem initWithBarButtonSystemItem:target:action:]([UIBarButtonItem alloc], "initWithBarButtonSystemItem:target:action:", 1, self, sel__doneButton_))}];
  }

  topViewController = [(UINavigationController *)self topViewController];
  if (![(NSArray *)[(UINavigationItem *)[(UIViewController *)topViewController navigationItem] rightBarButtonItems] count])
  {
    v5[0] = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:1 target:self action:sel__doneButton_];
    -[UINavigationItem setRightBarButtonItems:](-[UIViewController navigationItem](topViewController, "navigationItem"), "setRightBarButtonItems:", [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:1]);
  }
}

- (void)pushViewController:(id)controller animated:(BOOL)animated
{
  v5.receiver = self;
  v5.super_class = _UIDocumentPickerNavigationBridgeController;
  [(UINavigationController *)&v5 pushViewController:controller animated:animated];
  [(_UIDocumentPickerNavigationBridgeController *)self _updateNavigationItem];
}

- (id)popViewControllerAnimated:(BOOL)animated
{
  v6.receiver = self;
  v6.super_class = _UIDocumentPickerNavigationBridgeController;
  v4 = [(UINavigationController *)&v6 popViewControllerAnimated:animated];
  [(_UIDocumentPickerNavigationBridgeController *)self _updateNavigationItem];
  return v4;
}

- (id)popToViewController:(id)controller animated:(BOOL)animated
{
  v7.receiver = self;
  v7.super_class = _UIDocumentPickerNavigationBridgeController;
  v5 = [(UINavigationController *)&v7 popToViewController:controller animated:animated];
  [(_UIDocumentPickerNavigationBridgeController *)self _updateNavigationItem];
  return v5;
}

- (id)popToRootViewControllerAnimated:(BOOL)animated
{
  v6.receiver = self;
  v6.super_class = _UIDocumentPickerNavigationBridgeController;
  v4 = [(UINavigationController *)&v6 popToRootViewControllerAnimated:animated];
  [(_UIDocumentPickerNavigationBridgeController *)self _updateNavigationItem];
  return v4;
}

- (void)setViewControllers:(id)controllers animated:(BOOL)animated
{
  v5.receiver = self;
  v5.super_class = _UIDocumentPickerNavigationBridgeController;
  [(UINavigationController *)&v5 setViewControllers:controllers animated:animated];
  [(_UIDocumentPickerNavigationBridgeController *)self _updateNavigationItem];
}

@end