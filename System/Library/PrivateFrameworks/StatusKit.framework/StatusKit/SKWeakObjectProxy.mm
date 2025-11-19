@interface SKWeakObjectProxy
- (NSObject)target;
- (SKWeakObjectProxy)initWithForwardingTarget:(id)a3;
- (id)forwardingTargetForSelector:(SEL)a3;
- (id)methodSignatureForSelector:(SEL)a3;
- (void)forwardInvocation:(id)a3;
@end

@implementation SKWeakObjectProxy

- (SKWeakObjectProxy)initWithForwardingTarget:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = SKWeakObjectProxy;
  v5 = [(SKWeakObjectProxy *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_target, v4);
  }

  return v6;
}

- (id)forwardingTargetForSelector:(SEL)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_target);

  return WeakRetained;
}

- (id)methodSignatureForSelector:(SEL)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_target);
  v6 = [WeakRetained methodSignatureForSelector:a3];

  if (!v6)
  {
    v8.receiver = self;
    v8.super_class = SKWeakObjectProxy;
    v6 = [(SKWeakObjectProxy *)&v8 methodSignatureForSelector:sel_self];
  }

  return v6;
}

- (void)forwardInvocation:(id)a3
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_target);
  [v5 selector];
  if (objc_opt_respondsToSelector())
  {
    [v5 invokeWithTarget:WeakRetained];
  }
}

- (NSObject)target
{
  WeakRetained = objc_loadWeakRetained(&self->_target);

  return WeakRetained;
}

@end