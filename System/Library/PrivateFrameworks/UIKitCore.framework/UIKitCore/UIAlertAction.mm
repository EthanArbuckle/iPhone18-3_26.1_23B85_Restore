@interface UIAlertAction
+ (UIAlertAction)actionWithTitle:(NSString *)title style:(UIAlertActionStyle)style handler:(void *)handler;
+ (id)_actionWithContentViewController:(id)controller style:(int64_t)style handler:(id)handler;
+ (id)_actionWithTitle:(id)title descriptiveText:(id)text image:(id)image style:(int64_t)style handler:(id)handler shouldDismissHandler:(id)dismissHandler;
+ (id)_actionWithTitle:(id)title image:(id)image style:(int64_t)style handler:(id)handler shouldDismissHandler:(id)dismissHandler;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)_didAddContentViewController;
- (void)_setChecked:(BOOL)checked;
- (void)_setImageTintColor:(id)color;
- (void)_setIsPreferred:(BOOL)preferred;
- (void)_setKeyCommandInput:(id)input modifierFlags:(int64_t)flags;
- (void)_setTitleTextAlignment:(int64_t)alignment;
- (void)_setTitleTextColor:(id)color;
- (void)_willAddContentViewController;
- (void)setEnabled:(BOOL)enabled;
- (void)setTitle:(id)title;
@end

@implementation UIAlertAction

+ (id)_actionWithTitle:(id)title descriptiveText:(id)text image:(id)image style:(int64_t)style handler:(id)handler shouldDismissHandler:(id)dismissHandler
{
  titleCopy = title;
  dismissHandlerCopy = dismissHandler;
  handlerCopy = handler;
  imageCopy = image;
  textCopy = text;
  v20 = +[UIDevice currentDevice];
  v21 = _NSStringFromUIUserInterfaceIdiom([v20 userInterfaceIdiom]);

  if (!titleCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v26 = currentHandler;
    v27 = @"UIAlertActionStyleDefault";
    if (style == 1)
    {
      v27 = @"UIAlertActionStyleCancel";
    }

    if (style == 2)
    {
      v27 = @"UIAlertActionStyleDestructive";
    }

    [currentHandler handleFailureInMethod:a2 object:self file:@"UIAlertAction.m" lineNumber:42 description:{@"Actions added to UIAlertController of style %@ must have a title when running in %@", v27, v21}];
  }

  v22 = objc_alloc_init(objc_opt_class());
  if ([titleCopy length] >= 0x3E8)
  {
    v23 = [titleCopy substringToIndex:999];

    titleCopy = v23;
  }

  [v22 setTitle:titleCopy];
  [v22 _setDescriptiveText:textCopy];

  [v22 _setTitleTextAlignment:1];
  [v22 setImage:imageCopy];

  [v22 setStyle:style];
  [v22 setHandler:handlerCopy];

  [v22 setShouldDismissHandler:dismissHandlerCopy];
  [v22 setEnabled:1];
  [v22 _setChecked:0];
  [v22 _setIsPreferred:0];

  return v22;
}

+ (id)_actionWithTitle:(id)title image:(id)image style:(int64_t)style handler:(id)handler shouldDismissHandler:(id)dismissHandler
{
  dismissHandlerCopy = dismissHandler;
  handlerCopy = handler;
  imageCopy = image;
  titleCopy = title;
  v15 = [objc_opt_class() _actionWithTitle:titleCopy descriptiveText:0 image:imageCopy style:style handler:handlerCopy shouldDismissHandler:dismissHandlerCopy];

  return v15;
}

+ (id)_actionWithContentViewController:(id)controller style:(int64_t)style handler:(id)handler
{
  handlerCopy = handler;
  controllerCopy = controller;
  v9 = objc_alloc_init(objc_opt_class());
  [v9 _setContentViewController:controllerCopy];

  [v9 setStyle:style];
  [v9 setEnabled:1];
  [v9 _setChecked:0];
  [v9 _setIsPreferred:0];
  [v9 setHandler:handlerCopy];

  return v9;
}

+ (UIAlertAction)actionWithTitle:(NSString *)title style:(UIAlertActionStyle)style handler:(void *)handler
{
  v7 = handler;
  v8 = title;
  v9 = [objc_opt_class() _actionWithTitle:v8 image:0 style:style handler:v7 shouldDismissHandler:0];

  return v9;
}

- (void)setTitle:(id)title
{
  titleCopy = title;
  if ([titleCopy length] < 0x3E8)
  {
    v5 = titleCopy;
  }

  else
  {
    v4 = [titleCopy substringToIndex:999];

    v5 = v4;
  }

  v11 = v5;
  if (([v5 isEqualToString:self->_title] & 1) == 0)
  {
    v6 = [v11 copy];
    title = self->_title;
    self->_title = v6;

    _interfaceActionRepresentation = [(UIAlertAction *)self _interfaceActionRepresentation];
    [_interfaceActionRepresentation _action:self changedToTitle:self->_title];

    _representer = [(UIAlertAction *)self _representer];
    [_representer _action:self changedToTitle:self->_title];
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  title = [(UIAlertAction *)self title];
  [v4 setTitle:title];

  [v4 setStyle:{-[UIAlertAction style](self, "style")}];
  handler = [(UIAlertAction *)self handler];
  [v4 setHandler:handler];

  [v4 setEnabled:{-[UIAlertAction isEnabled](self, "isEnabled")}];
  [v4 _setIsPreferred:{-[UIAlertAction _isPreferred](self, "_isPreferred")}];
  simpleHandler = [(UIAlertAction *)self simpleHandler];
  [v4 setSimpleHandler:simpleHandler];

  shouldDismissHandler = [(UIAlertAction *)self shouldDismissHandler];
  [v4 setShouldDismissHandler:shouldDismissHandler];

  [v4 _setChecked:{-[UIAlertAction _isChecked](self, "_isChecked")}];
  _descriptiveText = [(UIAlertAction *)self _descriptiveText];
  [v4 _setDescriptiveText:_descriptiveText];

  [v4 _setTitleTextAlignment:{-[UIAlertAction _titleTextAlignment](self, "_titleTextAlignment")}];
  image = [(UIAlertAction *)self image];
  [v4 setImage:image];

  _imageTintColor = [(UIAlertAction *)self _imageTintColor];
  [v4 _setImageTintColor:_imageTintColor];

  _titleTextColor = [(UIAlertAction *)self _titleTextColor];
  [v4 _setTitleTextColor:_titleTextColor];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  title = [(UIAlertAction *)self title];
  _descriptiveText = [(UIAlertAction *)self _descriptiveText];
  image = [(UIAlertAction *)self image];
  v8 = [v3 stringWithFormat:@"<%@: %p Title = %@ Descriptive = %@ Image = %p>", v4, self, title, _descriptiveText, image];

  return v8;
}

- (void)_setTitleTextAlignment:(int64_t)alignment
{
  self->_titleTextAlignment = alignment;
  _interfaceActionRepresentation = [(UIAlertAction *)self _interfaceActionRepresentation];
  [_interfaceActionRepresentation _action:self changedToTitleTextAlignment:self->_titleTextAlignment];

  _representer = [(UIAlertAction *)self _representer];
  [_representer _action:self changedToTitleTextAlignment:self->_titleTextAlignment];
}

- (void)setEnabled:(BOOL)enabled
{
  v3 = enabled;
  self->_enabled = enabled;
  _interfaceActionRepresentation = [(UIAlertAction *)self _interfaceActionRepresentation];
  [_interfaceActionRepresentation _action:self changedToEnabled:v3];

  _representer = [(UIAlertAction *)self _representer];
  [_representer _action:self changedToEnabled:self->_titleTextAlignment != 0];
}

- (void)_setChecked:(BOOL)checked
{
  self->_checked = checked;
  _interfaceActionRepresentation = [(UIAlertAction *)self _interfaceActionRepresentation];
  [_interfaceActionRepresentation _action:self changedToChecked:self->_checked];

  _representer = [(UIAlertAction *)self _representer];
  [_representer _action:self changedToChecked:self->_checked];
}

- (void)_setIsPreferred:(BOOL)preferred
{
  if (self->_isPreferred != preferred)
  {
    self->_isPreferred = preferred;
    _interfaceActionRepresentation = [(UIAlertAction *)self _interfaceActionRepresentation];
    [_interfaceActionRepresentation _action:self changedToBePreferred:self->_isPreferred];

    _representer = [(UIAlertAction *)self _representer];
    [_representer _action:self changedToBePreferred:self->_isPreferred];
  }
}

- (void)_setImageTintColor:(id)color
{
  colorCopy = color;
  if (self->_imageTintColor != colorCopy)
  {
    v8 = colorCopy;
    objc_storeStrong(&self->_imageTintColor, color);
    _interfaceActionRepresentation = [(UIAlertAction *)self _interfaceActionRepresentation];
    [_interfaceActionRepresentation _action:self updatedImageTintColor:v8];

    _representer = [(UIAlertAction *)self _representer];
    [_representer _action:self updatedImageTintColor:v8];

    colorCopy = v8;
  }
}

- (void)_setTitleTextColor:(id)color
{
  colorCopy = color;
  if (self->_titleTextColor != colorCopy)
  {
    v8 = colorCopy;
    objc_storeStrong(&self->_titleTextColor, color);
    _interfaceActionRepresentation = [(UIAlertAction *)self _interfaceActionRepresentation];
    [_interfaceActionRepresentation _action:self updatedTitleTextColor:v8];

    _representer = [(UIAlertAction *)self _representer];
    [_representer _action:self updatedTitleTextColor:v8];

    colorCopy = v8;
  }
}

- (void)_willAddContentViewController
{
  _contentViewController = [(UIAlertAction *)self _contentViewController];
  _alertController = [(UIAlertAction *)self _alertController];
  [_contentViewController willMoveToParentViewController:_alertController];
  [_alertController addChildViewController:_contentViewController];
}

- (void)_didAddContentViewController
{
  _contentViewController = [(UIAlertAction *)self _contentViewController];
  _alertController = [(UIAlertAction *)self _alertController];
  [_contentViewController didMoveToParentViewController:_alertController];
}

- (void)_setKeyCommandInput:(id)input modifierFlags:(int64_t)flags
{
  inputCopy = input;
  if ([inputCopy length])
  {
    [(UIAlertAction *)self _setKeyCommandInput:inputCopy];
    [(UIAlertAction *)self _setKeyCommandModifierFlags:flags];
    _alertController = [(UIAlertAction *)self _alertController];
    [_alertController _action:self changedToKeyCommandWithInput:inputCopy modifierFlags:flags];
  }
}

@end