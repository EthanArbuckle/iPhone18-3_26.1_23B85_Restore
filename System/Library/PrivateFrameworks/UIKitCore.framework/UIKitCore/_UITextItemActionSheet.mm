@interface _UITextItemActionSheet
- (CGRect)initialPresentationRectInHostViewForSheet:(id)sheet;
- (CGRect)presentationRectInHostViewForSheet:(id)sheet;
- (_UITextItemActionSheet)initWithTitle:(id)title dataDetectorActions:(id)actions fromRect:(CGRect)rect inView:(id)view;
- (id)_alertActionsWithController:(id)controller;
- (id)hostViewForSheet:(id)sheet;
- (void)dealloc;
- (void)present;
@end

@implementation _UITextItemActionSheet

- (_UITextItemActionSheet)initWithTitle:(id)title dataDetectorActions:(id)actions fromRect:(CGRect)rect inView:(id)view
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  titleCopy = title;
  actionsCopy = actions;
  viewCopy = view;
  v27.receiver = self;
  v27.super_class = _UITextItemActionSheet;
  v17 = [(_UITextItemActionSheet *)&v27 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_title, title);
    v19 = [actionsCopy copy];
    ddActions = v18->_ddActions;
    v18->_ddActions = v19;

    objc_storeWeak(&v18->_view, viewCopy);
    _screen = [viewCopy _screen];
    [_screen scale];
    v18->_rect.origin.x = UIRectIntegralWithScale(x, y, width, height, v22);
    v18->_rect.origin.y = v23;
    v18->_rect.size.width = v24;
    v18->_rect.size.height = v25;
  }

  return v18;
}

- (void)dealloc
{
  [(UIWindow *)self->_alertWindow setHidden:1];
  alertWindow = self->_alertWindow;
  self->_alertWindow = 0;

  v4.receiver = self;
  v4.super_class = _UITextItemActionSheet;
  [(_UITextItemActionSheet *)&v4 dealloc];
}

- (void)present
{
  WeakRetained = objc_loadWeakRetained(&self->_alertController);

  if (!WeakRetained && [(_UITextItemActionSheet *)self _hasAlertActions])
  {
    obj = objc_opt_new();
    [obj setRotatingSheetDelegate:self];
    [obj setTitle:self->_title];
    v4 = [(_UITextItemActionSheet *)self _alertActionsWithController:obj];
    [obj _setActions:v4];

    if ([obj presentSheet])
    {
      objc_storeWeak(&self->_alertController, obj);
      objc_setAssociatedObject(obj, &present_keepalive_key, self, 1);
    }
  }
}

- (id)_alertActionsWithController:(id)controller
{
  v30 = *MEMORY[0x1E69E9840];
  val = controller;
  array = [MEMORY[0x1E695DF70] array];
  objc_initWeak(&location, val);
  objc_copyWeak(&to, &self->_view);
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = self->_ddActions;
  v4 = [(NSArray *)obj countByEnumeratingWithState:&v23 objects:v29 count:16];
  if (v4)
  {
    v17 = *v24;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v24 != v17)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v23 + 1) + 8 * i);
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 3221225472;
        aBlock[2] = __54___UITextItemActionSheet__alertActionsWithController___block_invoke;
        aBlock[3] = &unk_1E7108F90;
        aBlock[4] = v6;
        objc_copyWeak(&v21, &to);
        objc_copyWeak(&v22, &location);
        v7 = _Block_copy(aBlock);
        v19[0] = MEMORY[0x1E69E9820];
        v19[1] = 3221225472;
        v19[2] = __54___UITextItemActionSheet__alertActionsWithController___block_invoke_2;
        v19[3] = &unk_1E70F3CB0;
        v19[4] = v6;
        v8 = _Block_copy(v19);
        localizedName = [v6 localizedName];
        icon = [v6 icon];
        v11 = [UIAlertAction _actionWithTitle:localizedName image:icon style:0 handler:v7 shouldDismissHandler:v8];

        [array addObject:v11];
        objc_destroyWeak(&v22);
        objc_destroyWeak(&v21);
      }

      v4 = [(NSArray *)obj countByEnumeratingWithState:&v23 objects:v29 count:16];
    }

    while (v4);
  }

  if ([array count])
  {
    v12 = _UINSLocalizedStringWithDefaultValue(@"Cancel", @"Cancel");
    v13 = [UIAlertAction actionWithTitle:v12 style:1 handler:&__block_literal_global_235];

    [array addObject:v13];
  }

  objc_destroyWeak(&to);
  objc_destroyWeak(&location);

  return array;
}

- (id)hostViewForSheet:(id)sheet
{
  sheetCopy = sheet;
  popoverPresentationController = [sheetCopy popoverPresentationController];
  if (popoverPresentationController && ([sheetCopy presentationController], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "presentationStyle"), v6, v7 == 7) || (dyld_program_sdk_at_least() & 1) != 0)
  {
    WeakRetained = objc_loadWeakRetained(&self->_view);
  }

  else
  {
    alertWindow = self->_alertWindow;
    if (!alertWindow)
    {
      v10 = [_UIAlertControllerShimPresenterWindow alloc];
      v11 = objc_loadWeakRetained(&self->_view);
      window = [v11 window];
      windowScene = [window windowScene];
      v14 = [(_UIAlertControllerShimPresenterWindow *)v10 initWithWindowScene:windowScene];
      v15 = self->_alertWindow;
      self->_alertWindow = v14;

      [(UIWindow *)self->_alertWindow setHidden:0];
      alertWindow = self->_alertWindow;
    }

    [(UIWindow *)alertWindow setWindowLevel:10000002.0];
    WeakRetained = self->_alertWindow;
  }

  v16 = WeakRetained;

  return v16;
}

- (CGRect)initialPresentationRectInHostViewForSheet:(id)sheet
{
  x = self->_rect.origin.x;
  y = self->_rect.origin.y;
  width = self->_rect.size.width;
  height = self->_rect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)presentationRectInHostViewForSheet:(id)sheet
{
  x = self->_rect.origin.x;
  y = self->_rect.origin.y;
  width = self->_rect.size.width;
  height = self->_rect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end