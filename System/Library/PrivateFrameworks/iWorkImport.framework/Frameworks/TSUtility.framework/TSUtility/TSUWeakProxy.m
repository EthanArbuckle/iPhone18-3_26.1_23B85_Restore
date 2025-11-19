@interface TSUWeakProxy
- (BOOL)respondsToSelector:(SEL)a3;
- (TSUWeakProxy)initWithTarget:(id)a3;
- (id)forwardingTargetForSelector:(SEL)a3;
- (id)methodSignatureForSelector:(SEL)a3;
- (id)target;
- (void)forwardInvocation:(id)a3;
@end

@implementation TSUWeakProxy

- (TSUWeakProxy)initWithTarget:(id)a3
{
  v4 = a3;
  objc_storeWeak(&self->_target, v4);
  v5 = objc_opt_class();

  targetClass = self->_targetClass;
  self->_targetClass = v5;

  return self;
}

- (BOOL)respondsToSelector:(SEL)a3
{
  v3 = [(TSUWeakProxy *)self target];
  v4 = objc_opt_respondsToSelector();

  return v4 & 1;
}

- (id)methodSignatureForSelector:(SEL)a3
{
  v5 = [(TSUWeakProxy *)self target];
  v6 = [v5 methodSignatureForSelector:a3];
  if (!v5)
  {
    v7 = [(objc_class *)[(TSUWeakProxy *)self targetClass] instanceMethodSignatureForSelector:a3];

    v6 = v7;
  }

  return v6;
}

- (id)forwardingTargetForSelector:(SEL)a3
{
  v4 = [(TSUWeakProxy *)self target];
  if (objc_opt_respondsToSelector())
  {
    v5 = v4;
  }

  else
  {
    v5 = self;
  }

  v6 = v5;

  return v5;
}

- (void)forwardInvocation:(id)a3
{
  v5 = a3;
  v4 = [(TSUWeakProxy *)self target];
  if (v4)
  {
    [v5 invokeWithTarget:v4];
  }
}

- (id)target
{
  WeakRetained = objc_loadWeakRetained(&self->_target);

  return WeakRetained;
}

@end