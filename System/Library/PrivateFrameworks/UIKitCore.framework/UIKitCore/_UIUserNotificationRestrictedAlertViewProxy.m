@interface _UIUserNotificationRestrictedAlertViewProxy
+ (id)restrictedProxyForAlertView:(id)a3;
- (BOOL)respondsToSelector:(SEL)a3;
- (id)methodSignatureForSelector:(SEL)a3;
- (void)forwardInvocation:(id)a3;
- (void)setDelegate:(id)a3;
@end

@implementation _UIUserNotificationRestrictedAlertViewProxy

+ (id)restrictedProxyForAlertView:(id)a3
{
  v5.receiver = a1;
  v5.super_class = &OBJC_METACLASS____UIUserNotificationRestrictedAlertViewProxy;
  v3 = objc_msgSendSuper2(&v5, sel_proxyWithTarget_, a3);

  return v3;
}

- (void)setDelegate:(id)a3
{
  v4 = a3;
  v5 = [(_UITargetedProxy *)self _target];
  [v5 setDelegate:0];

  delegate = self->_delegate;
  self->_delegate = v4;

  v7 = [(_UITargetedProxy *)self _target];
  [v7 setDelegate:self];
}

- (id)methodSignatureForSelector:(SEL)a3
{
  if (isAlertViewDelegateMethod(a3))
  {
    v5 = [self->_delegate methodSignatureForSelector:a3];
  }

  else
  {
    v6 = [(_UITargetedProxy *)self _target];
    v5 = [v6 methodSignatureForSelector:a3];
  }

  return v5;
}

- (BOOL)respondsToSelector:(SEL)a3
{
  if (isAlertViewDelegateMethod(a3))
  {
    v4 = objc_opt_respondsToSelector();
  }

  else
  {
    v5 = [(_UITargetedProxy *)self _target];
    v4 = objc_opt_respondsToSelector();
  }

  return v4 & 1;
}

- (void)forwardInvocation:(id)a3
{
  v4 = a3;
  if (isAlertViewDelegateMethod([v4 selector]))
  {
    v5 = self;
    v12 = v5;
    [v4 setArgument:&v12 atIndex:2];
    [v4 invokeWithTarget:v5->_delegate];
  }

  else
  {
    v6 = [v4 selector];
    if (!+[UIView instancesRespondToSelector:](UIView, "instancesRespondToSelector:", v6) || ([MEMORY[0x1E69E58C0] instancesRespondToSelector:v6] & 1) != 0 || v6 == sel_resignFirstResponder)
    {
      v11.receiver = self;
      v11.super_class = _UIUserNotificationRestrictedAlertViewProxy;
      [(_UITargetedProxy *)&v11 forwardInvocation:v4];
    }

    else
    {
      v7 = MEMORY[0x1E695DF30];
      v8 = *MEMORY[0x1E695D920];
      v9 = NSStringFromSelector([v4 selector]);
      v10 = [(_UITargetedProxy *)self _target];
      [v7 raise:v8 format:{@"UIView API (%@) is not supported for UIAlertViews presented from view services: %@", v9, v10}];
    }
  }
}

@end