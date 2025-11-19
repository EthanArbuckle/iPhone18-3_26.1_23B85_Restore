@interface _UITextCursorAssertion
- (NSString)description;
- (UITextCursorAssertionController)controller;
- (id)_initWithReason:(id)a3 options:(unint64_t)a4 controller:(id)a5 userInfo:(id)a6;
- (void)dealloc;
- (void)invalidate;
@end

@implementation _UITextCursorAssertion

- (id)_initWithReason:(id)a3 options:(unint64_t)a4 controller:(id)a5 userInfo:(id)a6
{
  v11 = a3;
  v12 = a5;
  v13 = a6;
  v17.receiver = self;
  v17.super_class = _UITextCursorAssertion;
  v14 = [(_UITextCursorAssertion *)&v17 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_reason, a3);
    v15->_options = a4;
    objc_storeWeak(&v15->_controller, v12);
    objc_storeStrong(&v15->_userInfo, a6);
  }

  return v15;
}

- (void)dealloc
{
  [(_UITextCursorAssertion *)self invalidate];
  v3.receiver = self;
  v3.super_class = _UITextCursorAssertion;
  [(_UITextCursorAssertion *)&v3 dealloc];
}

- (void)invalidate
{
  WeakRetained = objc_loadWeakRetained(&self->_controller);
  [WeakRetained _endTrackingAssertion:self];
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@:%p %lux %@>", v5, self, self->_options, self->_reason];

  return v6;
}

- (UITextCursorAssertionController)controller
{
  WeakRetained = objc_loadWeakRetained(&self->_controller);

  return WeakRetained;
}

@end