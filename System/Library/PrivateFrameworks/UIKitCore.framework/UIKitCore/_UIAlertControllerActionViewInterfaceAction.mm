@interface _UIAlertControllerActionViewInterfaceAction
+ (id)actionWithAlertControllerActionView:(id)view;
- (id)classificationTitle;
- (id)leadingImage;
- (int64_t)type;
- (void)_initializeStateFromUnderlyingAlertAction;
- (void)dealloc;
- (void)invalidate;
@end

@implementation _UIAlertControllerActionViewInterfaceAction

+ (id)actionWithAlertControllerActionView:(id)view
{
  v5.receiver = self;
  v5.super_class = &OBJC_METACLASS____UIAlertControllerActionViewInterfaceAction;
  v3 = objc_msgSendSuper2(&v5, sel_actionWithCustomContentView_handler_, view, 0);
  [v3 _initializeStateFromUnderlyingAlertAction];

  return v3;
}

- (void)_initializeStateFromUnderlyingAlertAction
{
  alertControllerActionView = [(_UIAlertControllerActionViewInterfaceAction *)self alertControllerActionView];
  action = [alertControllerActionView action];
  underlyingAlertAction = self->_underlyingAlertAction;
  self->_underlyingAlertAction = action;

  [(UIAlertAction *)self->_underlyingAlertAction _setInterfaceActionRepresentation:self];
  [(UIInterfaceAction *)self setEnabled:[(UIAlertAction *)self->_underlyingAlertAction isEnabled]];
  title = [(UIAlertAction *)self->_underlyingAlertAction title];
  [(UIInterfaceAction *)self setTitle:title];

  [(UIInterfaceAction *)self setTitleAlignment:[(UIAlertAction *)self->_underlyingAlertAction _titleTextAlignment]];
  _titleTextColor = [(UIAlertAction *)self->_underlyingAlertAction _titleTextColor];
  [(UIInterfaceAction *)self _setTitleTextColor:_titleTextColor];

  _imageTintColor = [(UIAlertAction *)self->_underlyingAlertAction _imageTintColor];
  [(UIInterfaceAction *)self _setImageTintColor:_imageTintColor];

  [(UIInterfaceAction *)self _setIsPreferred:[(UIAlertAction *)self->_underlyingAlertAction _isPreferred]];
  [alertControllerActionView underlyingInterfaceActionRepresentationDidChange];
  self->_valid = 1;
}

- (void)invalidate
{
  self->_valid = 0;
  underlyingAlertAction = [(_UIAlertControllerActionViewInterfaceAction *)self underlyingAlertAction];
  _interfaceActionRepresentation = [underlyingAlertAction _interfaceActionRepresentation];

  if (_interfaceActionRepresentation == self)
  {
    [underlyingAlertAction _setInterfaceActionRepresentation:0];
  }

  underlyingAlertAction = self->_underlyingAlertAction;
  self->_underlyingAlertAction = 0;
}

- (void)dealloc
{
  [(_UIAlertControllerActionViewInterfaceAction *)self invalidate];
  v3.receiver = self;
  v3.super_class = _UIAlertControllerActionViewInterfaceAction;
  [(_UIAlertControllerActionViewInterfaceAction *)&v3 dealloc];
}

- (id)classificationTitle
{
  underlyingAlertAction = [(_UIAlertControllerActionViewInterfaceAction *)self underlyingAlertAction];
  _descriptiveText = [underlyingAlertAction _descriptiveText];

  return _descriptiveText;
}

- (id)leadingImage
{
  underlyingAlertAction = [(_UIAlertControllerActionViewInterfaceAction *)self underlyingAlertAction];
  image = [underlyingAlertAction image];

  return image;
}

- (int64_t)type
{
  underlyingAlertAction = [(_UIAlertControllerActionViewInterfaceAction *)self underlyingAlertAction];
  style = [underlyingAlertAction style];

  if (style == 1)
  {
    return 1;
  }

  else
  {
    return 2 * (style == 2);
  }
}

@end