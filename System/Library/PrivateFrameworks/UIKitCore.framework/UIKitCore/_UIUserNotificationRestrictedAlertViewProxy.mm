@interface _UIUserNotificationRestrictedAlertViewProxy
+ (id)restrictedProxyForAlertView:(id)view;
- (BOOL)respondsToSelector:(SEL)selector;
- (id)methodSignatureForSelector:(SEL)selector;
- (void)forwardInvocation:(id)invocation;
- (void)setDelegate:(id)delegate;
@end

@implementation _UIUserNotificationRestrictedAlertViewProxy

+ (id)restrictedProxyForAlertView:(id)view
{
  v5.receiver = self;
  v5.super_class = &OBJC_METACLASS____UIUserNotificationRestrictedAlertViewProxy;
  v3 = objc_msgSendSuper2(&v5, sel_proxyWithTarget_, view);

  return v3;
}

- (void)setDelegate:(id)delegate
{
  delegateCopy = delegate;
  _target = [(_UITargetedProxy *)self _target];
  [_target setDelegate:0];

  delegate = self->_delegate;
  self->_delegate = delegateCopy;

  _target2 = [(_UITargetedProxy *)self _target];
  [_target2 setDelegate:self];
}

- (id)methodSignatureForSelector:(SEL)selector
{
  if (isAlertViewDelegateMethod(selector))
  {
    v5 = [self->_delegate methodSignatureForSelector:selector];
  }

  else
  {
    _target = [(_UITargetedProxy *)self _target];
    v5 = [_target methodSignatureForSelector:selector];
  }

  return v5;
}

- (BOOL)respondsToSelector:(SEL)selector
{
  if (isAlertViewDelegateMethod(selector))
  {
    v4 = objc_opt_respondsToSelector();
  }

  else
  {
    _target = [(_UITargetedProxy *)self _target];
    v4 = objc_opt_respondsToSelector();
  }

  return v4 & 1;
}

- (void)forwardInvocation:(id)invocation
{
  invocationCopy = invocation;
  if (isAlertViewDelegateMethod([invocationCopy selector]))
  {
    selfCopy = self;
    v12 = selfCopy;
    [invocationCopy setArgument:&v12 atIndex:2];
    [invocationCopy invokeWithTarget:selfCopy->_delegate];
  }

  else
  {
    selector = [invocationCopy selector];
    if (!+[UIView instancesRespondToSelector:](UIView, "instancesRespondToSelector:", selector) || ([MEMORY[0x1E69E58C0] instancesRespondToSelector:selector] & 1) != 0 || selector == sel_resignFirstResponder)
    {
      v11.receiver = self;
      v11.super_class = _UIUserNotificationRestrictedAlertViewProxy;
      [(_UITargetedProxy *)&v11 forwardInvocation:invocationCopy];
    }

    else
    {
      v7 = MEMORY[0x1E695DF30];
      v8 = *MEMORY[0x1E695D920];
      v9 = NSStringFromSelector([invocationCopy selector]);
      _target = [(_UITargetedProxy *)self _target];
      [v7 raise:v8 format:{@"UIView API (%@) is not supported for UIAlertViews presented from view services: %@", v9, _target}];
    }
  }
}

@end