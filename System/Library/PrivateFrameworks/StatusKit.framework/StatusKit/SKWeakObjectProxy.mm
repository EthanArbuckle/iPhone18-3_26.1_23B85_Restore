@interface SKWeakObjectProxy
- (NSObject)target;
- (SKWeakObjectProxy)initWithForwardingTarget:(id)target;
- (id)forwardingTargetForSelector:(SEL)selector;
- (id)methodSignatureForSelector:(SEL)selector;
- (void)forwardInvocation:(id)invocation;
@end

@implementation SKWeakObjectProxy

- (SKWeakObjectProxy)initWithForwardingTarget:(id)target
{
  targetCopy = target;
  v8.receiver = self;
  v8.super_class = SKWeakObjectProxy;
  v5 = [(SKWeakObjectProxy *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_target, targetCopy);
  }

  return v6;
}

- (id)forwardingTargetForSelector:(SEL)selector
{
  WeakRetained = objc_loadWeakRetained(&self->_target);

  return WeakRetained;
}

- (id)methodSignatureForSelector:(SEL)selector
{
  WeakRetained = objc_loadWeakRetained(&self->_target);
  v6 = [WeakRetained methodSignatureForSelector:selector];

  if (!v6)
  {
    v8.receiver = self;
    v8.super_class = SKWeakObjectProxy;
    v6 = [(SKWeakObjectProxy *)&v8 methodSignatureForSelector:sel_self];
  }

  return v6;
}

- (void)forwardInvocation:(id)invocation
{
  invocationCopy = invocation;
  WeakRetained = objc_loadWeakRetained(&self->_target);
  [invocationCopy selector];
  if (objc_opt_respondsToSelector())
  {
    [invocationCopy invokeWithTarget:WeakRetained];
  }
}

- (NSObject)target
{
  WeakRetained = objc_loadWeakRetained(&self->_target);

  return WeakRetained;
}

@end