@interface _UIAlertControllerActionViewInterfaceAction
+ (id)actionWithAlertControllerActionView:(id)a3;
- (id)classificationTitle;
- (id)leadingImage;
- (int64_t)type;
- (void)_initializeStateFromUnderlyingAlertAction;
- (void)dealloc;
- (void)invalidate;
@end

@implementation _UIAlertControllerActionViewInterfaceAction

+ (id)actionWithAlertControllerActionView:(id)a3
{
  v5.receiver = a1;
  v5.super_class = &OBJC_METACLASS____UIAlertControllerActionViewInterfaceAction;
  v3 = objc_msgSendSuper2(&v5, sel_actionWithCustomContentView_handler_, a3, 0);
  [v3 _initializeStateFromUnderlyingAlertAction];

  return v3;
}

- (void)_initializeStateFromUnderlyingAlertAction
{
  v8 = [(_UIAlertControllerActionViewInterfaceAction *)self alertControllerActionView];
  v3 = [v8 action];
  underlyingAlertAction = self->_underlyingAlertAction;
  self->_underlyingAlertAction = v3;

  [(UIAlertAction *)self->_underlyingAlertAction _setInterfaceActionRepresentation:self];
  [(UIInterfaceAction *)self setEnabled:[(UIAlertAction *)self->_underlyingAlertAction isEnabled]];
  v5 = [(UIAlertAction *)self->_underlyingAlertAction title];
  [(UIInterfaceAction *)self setTitle:v5];

  [(UIInterfaceAction *)self setTitleAlignment:[(UIAlertAction *)self->_underlyingAlertAction _titleTextAlignment]];
  v6 = [(UIAlertAction *)self->_underlyingAlertAction _titleTextColor];
  [(UIInterfaceAction *)self _setTitleTextColor:v6];

  v7 = [(UIAlertAction *)self->_underlyingAlertAction _imageTintColor];
  [(UIInterfaceAction *)self _setImageTintColor:v7];

  [(UIInterfaceAction *)self _setIsPreferred:[(UIAlertAction *)self->_underlyingAlertAction _isPreferred]];
  [v8 underlyingInterfaceActionRepresentationDidChange];
  self->_valid = 1;
}

- (void)invalidate
{
  self->_valid = 0;
  v5 = [(_UIAlertControllerActionViewInterfaceAction *)self underlyingAlertAction];
  v3 = [v5 _interfaceActionRepresentation];

  if (v3 == self)
  {
    [v5 _setInterfaceActionRepresentation:0];
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
  v2 = [(_UIAlertControllerActionViewInterfaceAction *)self underlyingAlertAction];
  v3 = [v2 _descriptiveText];

  return v3;
}

- (id)leadingImage
{
  v2 = [(_UIAlertControllerActionViewInterfaceAction *)self underlyingAlertAction];
  v3 = [v2 image];

  return v3;
}

- (int64_t)type
{
  v2 = [(_UIAlertControllerActionViewInterfaceAction *)self underlyingAlertAction];
  v3 = [v2 style];

  if (v3 == 1)
  {
    return 1;
  }

  else
  {
    return 2 * (v3 == 2);
  }
}

@end