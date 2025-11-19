@interface UIAlertAction
+ (UIAlertAction)actionWithTitle:(NSString *)title style:(UIAlertActionStyle)style handler:(void *)handler;
+ (id)_actionWithContentViewController:(id)a3 style:(int64_t)a4 handler:(id)a5;
+ (id)_actionWithTitle:(id)a3 descriptiveText:(id)a4 image:(id)a5 style:(int64_t)a6 handler:(id)a7 shouldDismissHandler:(id)a8;
+ (id)_actionWithTitle:(id)a3 image:(id)a4 style:(int64_t)a5 handler:(id)a6 shouldDismissHandler:(id)a7;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)_didAddContentViewController;
- (void)_setChecked:(BOOL)a3;
- (void)_setImageTintColor:(id)a3;
- (void)_setIsPreferred:(BOOL)a3;
- (void)_setKeyCommandInput:(id)a3 modifierFlags:(int64_t)a4;
- (void)_setTitleTextAlignment:(int64_t)a3;
- (void)_setTitleTextColor:(id)a3;
- (void)_willAddContentViewController;
- (void)setEnabled:(BOOL)enabled;
- (void)setTitle:(id)a3;
@end

@implementation UIAlertAction

+ (id)_actionWithTitle:(id)a3 descriptiveText:(id)a4 image:(id)a5 style:(int64_t)a6 handler:(id)a7 shouldDismissHandler:(id)a8
{
  v15 = a3;
  v16 = a8;
  v17 = a7;
  v18 = a5;
  v19 = a4;
  v20 = +[UIDevice currentDevice];
  v21 = _NSStringFromUIUserInterfaceIdiom([v20 userInterfaceIdiom]);

  if (!v15)
  {
    v25 = [MEMORY[0x1E696AAA8] currentHandler];
    v26 = v25;
    v27 = @"UIAlertActionStyleDefault";
    if (a6 == 1)
    {
      v27 = @"UIAlertActionStyleCancel";
    }

    if (a6 == 2)
    {
      v27 = @"UIAlertActionStyleDestructive";
    }

    [v25 handleFailureInMethod:a2 object:a1 file:@"UIAlertAction.m" lineNumber:42 description:{@"Actions added to UIAlertController of style %@ must have a title when running in %@", v27, v21}];
  }

  v22 = objc_alloc_init(objc_opt_class());
  if ([v15 length] >= 0x3E8)
  {
    v23 = [v15 substringToIndex:999];

    v15 = v23;
  }

  [v22 setTitle:v15];
  [v22 _setDescriptiveText:v19];

  [v22 _setTitleTextAlignment:1];
  [v22 setImage:v18];

  [v22 setStyle:a6];
  [v22 setHandler:v17];

  [v22 setShouldDismissHandler:v16];
  [v22 setEnabled:1];
  [v22 _setChecked:0];
  [v22 _setIsPreferred:0];

  return v22;
}

+ (id)_actionWithTitle:(id)a3 image:(id)a4 style:(int64_t)a5 handler:(id)a6 shouldDismissHandler:(id)a7
{
  v11 = a7;
  v12 = a6;
  v13 = a4;
  v14 = a3;
  v15 = [objc_opt_class() _actionWithTitle:v14 descriptiveText:0 image:v13 style:a5 handler:v12 shouldDismissHandler:v11];

  return v15;
}

+ (id)_actionWithContentViewController:(id)a3 style:(int64_t)a4 handler:(id)a5
{
  v7 = a5;
  v8 = a3;
  v9 = objc_alloc_init(objc_opt_class());
  [v9 _setContentViewController:v8];

  [v9 setStyle:a4];
  [v9 setEnabled:1];
  [v9 _setChecked:0];
  [v9 _setIsPreferred:0];
  [v9 setHandler:v7];

  return v9;
}

+ (UIAlertAction)actionWithTitle:(NSString *)title style:(UIAlertActionStyle)style handler:(void *)handler
{
  v7 = handler;
  v8 = title;
  v9 = [objc_opt_class() _actionWithTitle:v8 image:0 style:style handler:v7 shouldDismissHandler:0];

  return v9;
}

- (void)setTitle:(id)a3
{
  v10 = a3;
  if ([v10 length] < 0x3E8)
  {
    v5 = v10;
  }

  else
  {
    v4 = [v10 substringToIndex:999];

    v5 = v4;
  }

  v11 = v5;
  if (([v5 isEqualToString:self->_title] & 1) == 0)
  {
    v6 = [v11 copy];
    title = self->_title;
    self->_title = v6;

    v8 = [(UIAlertAction *)self _interfaceActionRepresentation];
    [v8 _action:self changedToTitle:self->_title];

    v9 = [(UIAlertAction *)self _representer];
    [v9 _action:self changedToTitle:self->_title];
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v5 = [(UIAlertAction *)self title];
  [v4 setTitle:v5];

  [v4 setStyle:{-[UIAlertAction style](self, "style")}];
  v6 = [(UIAlertAction *)self handler];
  [v4 setHandler:v6];

  [v4 setEnabled:{-[UIAlertAction isEnabled](self, "isEnabled")}];
  [v4 _setIsPreferred:{-[UIAlertAction _isPreferred](self, "_isPreferred")}];
  v7 = [(UIAlertAction *)self simpleHandler];
  [v4 setSimpleHandler:v7];

  v8 = [(UIAlertAction *)self shouldDismissHandler];
  [v4 setShouldDismissHandler:v8];

  [v4 _setChecked:{-[UIAlertAction _isChecked](self, "_isChecked")}];
  v9 = [(UIAlertAction *)self _descriptiveText];
  [v4 _setDescriptiveText:v9];

  [v4 _setTitleTextAlignment:{-[UIAlertAction _titleTextAlignment](self, "_titleTextAlignment")}];
  v10 = [(UIAlertAction *)self image];
  [v4 setImage:v10];

  v11 = [(UIAlertAction *)self _imageTintColor];
  [v4 _setImageTintColor:v11];

  v12 = [(UIAlertAction *)self _titleTextColor];
  [v4 _setTitleTextColor:v12];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(UIAlertAction *)self title];
  v6 = [(UIAlertAction *)self _descriptiveText];
  v7 = [(UIAlertAction *)self image];
  v8 = [v3 stringWithFormat:@"<%@: %p Title = %@ Descriptive = %@ Image = %p>", v4, self, v5, v6, v7];

  return v8;
}

- (void)_setTitleTextAlignment:(int64_t)a3
{
  self->_titleTextAlignment = a3;
  v4 = [(UIAlertAction *)self _interfaceActionRepresentation];
  [v4 _action:self changedToTitleTextAlignment:self->_titleTextAlignment];

  v5 = [(UIAlertAction *)self _representer];
  [v5 _action:self changedToTitleTextAlignment:self->_titleTextAlignment];
}

- (void)setEnabled:(BOOL)enabled
{
  v3 = enabled;
  self->_enabled = enabled;
  v5 = [(UIAlertAction *)self _interfaceActionRepresentation];
  [v5 _action:self changedToEnabled:v3];

  v6 = [(UIAlertAction *)self _representer];
  [v6 _action:self changedToEnabled:self->_titleTextAlignment != 0];
}

- (void)_setChecked:(BOOL)a3
{
  self->_checked = a3;
  v4 = [(UIAlertAction *)self _interfaceActionRepresentation];
  [v4 _action:self changedToChecked:self->_checked];

  v5 = [(UIAlertAction *)self _representer];
  [v5 _action:self changedToChecked:self->_checked];
}

- (void)_setIsPreferred:(BOOL)a3
{
  if (self->_isPreferred != a3)
  {
    self->_isPreferred = a3;
    v5 = [(UIAlertAction *)self _interfaceActionRepresentation];
    [v5 _action:self changedToBePreferred:self->_isPreferred];

    v6 = [(UIAlertAction *)self _representer];
    [v6 _action:self changedToBePreferred:self->_isPreferred];
  }
}

- (void)_setImageTintColor:(id)a3
{
  v5 = a3;
  if (self->_imageTintColor != v5)
  {
    v8 = v5;
    objc_storeStrong(&self->_imageTintColor, a3);
    v6 = [(UIAlertAction *)self _interfaceActionRepresentation];
    [v6 _action:self updatedImageTintColor:v8];

    v7 = [(UIAlertAction *)self _representer];
    [v7 _action:self updatedImageTintColor:v8];

    v5 = v8;
  }
}

- (void)_setTitleTextColor:(id)a3
{
  v5 = a3;
  if (self->_titleTextColor != v5)
  {
    v8 = v5;
    objc_storeStrong(&self->_titleTextColor, a3);
    v6 = [(UIAlertAction *)self _interfaceActionRepresentation];
    [v6 _action:self updatedTitleTextColor:v8];

    v7 = [(UIAlertAction *)self _representer];
    [v7 _action:self updatedTitleTextColor:v8];

    v5 = v8;
  }
}

- (void)_willAddContentViewController
{
  v4 = [(UIAlertAction *)self _contentViewController];
  v3 = [(UIAlertAction *)self _alertController];
  [v4 willMoveToParentViewController:v3];
  [v3 addChildViewController:v4];
}

- (void)_didAddContentViewController
{
  v4 = [(UIAlertAction *)self _contentViewController];
  v3 = [(UIAlertAction *)self _alertController];
  [v4 didMoveToParentViewController:v3];
}

- (void)_setKeyCommandInput:(id)a3 modifierFlags:(int64_t)a4
{
  v7 = a3;
  if ([v7 length])
  {
    [(UIAlertAction *)self _setKeyCommandInput:v7];
    [(UIAlertAction *)self _setKeyCommandModifierFlags:a4];
    v6 = [(UIAlertAction *)self _alertController];
    [v6 _action:self changedToKeyCommandWithInput:v7 modifierFlags:a4];
  }
}

@end