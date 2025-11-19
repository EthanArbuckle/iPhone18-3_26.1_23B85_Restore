@interface _UIDocumentPickerNavigationBridgeController
+ (id)_exportedInterface;
- (id)popToRootViewControllerAnimated:(BOOL)a3;
- (id)popToViewController:(id)a3 animated:(BOOL)a4;
- (id)popViewControllerAnimated:(BOOL)a3;
- (void)_documentPickerDidDismiss;
- (void)_doneButton:(id)a3;
- (void)_locationsMenu:(id)a3;
- (void)_prepareWithExtensionInfo:(id)a3 completionHandler:(id)a4;
- (void)_setPickableTypes:(id)a3;
- (void)_setPickerMode:(unint64_t)a3;
- (void)_setTintColor:(id)a3;
- (void)_setUploadURLWrapper:(id)a3;
- (void)_updateNavigationItem;
- (void)pushViewController:(id)a3 animated:(BOOL)a4;
- (void)setViewControllers:(id)a3 animated:(BOOL)a4;
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

- (void)_setPickableTypes:(id)a3
{
  if ([-[NSArray firstObject](-[UINavigationController viewControllers](self "viewControllers")])
  {
    v5 = [(NSArray *)[(UINavigationController *)self viewControllers] firstObject];
  }

  else
  {
    v5 = 0;
  }

  [v5 _setPickableTypes:a3];
}

- (void)_setPickerMode:(unint64_t)a3
{
  if ([-[NSArray firstObject](-[UINavigationController viewControllers](self "viewControllers")])
  {
    v5 = [(NSArray *)[(UINavigationController *)self viewControllers] firstObject];
  }

  else
  {
    v5 = 0;
  }

  [v5 _setPickerMode:a3];
}

- (void)_setUploadURLWrapper:(id)a3
{
  if ([-[NSArray firstObject](-[UINavigationController viewControllers](self "viewControllers")])
  {
    v5 = [(NSArray *)[(UINavigationController *)self viewControllers] firstObject];
  }

  else
  {
    v5 = 0;
  }

  [v5 _setUploadURLWrapper:a3];
}

- (void)_prepareWithExtensionInfo:(id)a3 completionHandler:(id)a4
{
  if ([-[NSArray firstObject](-[UINavigationController viewControllers](self "viewControllers")])
  {
    v7 = [(NSArray *)[(UINavigationController *)self viewControllers] firstObject];
  }

  else
  {
    v7 = 0;
  }

  if ((dyld_program_sdk_at_least() & 1) == 0)
  {
    [(UINavigationController *)self setNavigationBarHidden:1];
  }

  if (v7)
  {

    [v7 _prepareWithExtensionInfo:a3 completionHandler:a4];
  }

  else
  {
    v8 = _UIApplicationLinkedOnVersion;
    v9 = *(a4 + 2);

    v9(a4, v8);
  }
}

- (void)_documentPickerDidDismiss
{
  if ([-[NSArray firstObject](-[UINavigationController viewControllers](self "viewControllers")])
  {
    v3 = [(NSArray *)[(UINavigationController *)self viewControllers] firstObject];
  }

  else
  {
    v3 = 0;
  }

  [v3 _documentPickerDidDismiss];
}

- (void)_setTintColor:(id)a3
{
  v4 = [(UIViewController *)self view];

  [(UIView *)v4 setTintColor:a3];
}

- (void)_doneButton:(id)a3
{
  v3 = [(_UIDocumentPickerNavigationBridgeController *)self hostingViewController];

  [v3 _doneButtonPressed];
}

- (void)_locationsMenu:(id)a3
{
  v5 = [a3 view];
  [objc_msgSend(a3 "view")];
  [v5 convertRect:-[UIViewController view](self toView:{"view"), v6, v7, v8, v9}];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v18 = [(_UIDocumentPickerNavigationBridgeController *)self hostingViewController];

  [v18 _displayLocationMenu:{v11, v13, v15, v17}];
}

- (void)_updateNavigationItem
{
  v5[1] = *MEMORY[0x1E69E9840];
  if (!self->_hasSetInitialNavigationItem)
  {
    self->_hasSetInitialNavigationItem = 1;
    v3 = [(NSArray *)[(UINavigationController *)self viewControllers] firstObject];
    [v3 _setExistingNavigationItem:{-[_UIDocumentPickerNavigationItem initWithTitle:rightBarButtonItem:]([_UIDocumentPickerNavigationItem alloc], "initWithTitle:rightBarButtonItem:", objc_msgSend(objc_msgSend(v3, "_existingNavigationItem"), "title"), -[UIBarButtonItem initWithBarButtonSystemItem:target:action:]([UIBarButtonItem alloc], "initWithBarButtonSystemItem:target:action:", 1, self, sel__doneButton_))}];
  }

  v4 = [(UINavigationController *)self topViewController];
  if (![(NSArray *)[(UINavigationItem *)[(UIViewController *)v4 navigationItem] rightBarButtonItems] count])
  {
    v5[0] = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:1 target:self action:sel__doneButton_];
    -[UINavigationItem setRightBarButtonItems:](-[UIViewController navigationItem](v4, "navigationItem"), "setRightBarButtonItems:", [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:1]);
  }
}

- (void)pushViewController:(id)a3 animated:(BOOL)a4
{
  v5.receiver = self;
  v5.super_class = _UIDocumentPickerNavigationBridgeController;
  [(UINavigationController *)&v5 pushViewController:a3 animated:a4];
  [(_UIDocumentPickerNavigationBridgeController *)self _updateNavigationItem];
}

- (id)popViewControllerAnimated:(BOOL)a3
{
  v6.receiver = self;
  v6.super_class = _UIDocumentPickerNavigationBridgeController;
  v4 = [(UINavigationController *)&v6 popViewControllerAnimated:a3];
  [(_UIDocumentPickerNavigationBridgeController *)self _updateNavigationItem];
  return v4;
}

- (id)popToViewController:(id)a3 animated:(BOOL)a4
{
  v7.receiver = self;
  v7.super_class = _UIDocumentPickerNavigationBridgeController;
  v5 = [(UINavigationController *)&v7 popToViewController:a3 animated:a4];
  [(_UIDocumentPickerNavigationBridgeController *)self _updateNavigationItem];
  return v5;
}

- (id)popToRootViewControllerAnimated:(BOOL)a3
{
  v6.receiver = self;
  v6.super_class = _UIDocumentPickerNavigationBridgeController;
  v4 = [(UINavigationController *)&v6 popToRootViewControllerAnimated:a3];
  [(_UIDocumentPickerNavigationBridgeController *)self _updateNavigationItem];
  return v4;
}

- (void)setViewControllers:(id)a3 animated:(BOOL)a4
{
  v5.receiver = self;
  v5.super_class = _UIDocumentPickerNavigationBridgeController;
  [(UINavigationController *)&v5 setViewControllers:a3 animated:a4];
  [(_UIDocumentPickerNavigationBridgeController *)self _updateNavigationItem];
}

@end