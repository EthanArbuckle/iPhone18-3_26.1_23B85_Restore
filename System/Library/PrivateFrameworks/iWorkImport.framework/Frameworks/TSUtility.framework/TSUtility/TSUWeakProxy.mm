@interface TSUWeakProxy
- (BOOL)respondsToSelector:(SEL)selector;
- (TSUWeakProxy)initWithTarget:(id)target;
- (id)forwardingTargetForSelector:(SEL)selector;
- (id)methodSignatureForSelector:(SEL)selector;
- (id)target;
- (void)forwardInvocation:(id)invocation;
@end

@implementation TSUWeakProxy

- (TSUWeakProxy)initWithTarget:(id)target
{
  targetCopy = target;
  objc_storeWeak(&self->_target, targetCopy);
  v5 = objc_opt_class();

  targetClass = self->_targetClass;
  self->_targetClass = v5;

  return self;
}

- (BOOL)respondsToSelector:(SEL)selector
{
  target = [(TSUWeakProxy *)self target];
  v4 = objc_opt_respondsToSelector();

  return v4 & 1;
}

- (id)methodSignatureForSelector:(SEL)selector
{
  target = [(TSUWeakProxy *)self target];
  v6 = [target methodSignatureForSelector:selector];
  if (!target)
  {
    v7 = [(objc_class *)[(TSUWeakProxy *)self targetClass] instanceMethodSignatureForSelector:selector];

    v6 = v7;
  }

  return v6;
}

- (id)forwardingTargetForSelector:(SEL)selector
{
  target = [(TSUWeakProxy *)self target];
  if (objc_opt_respondsToSelector())
  {
    selfCopy = target;
  }

  else
  {
    selfCopy = self;
  }

  v6 = selfCopy;

  return selfCopy;
}

- (void)forwardInvocation:(id)invocation
{
  invocationCopy = invocation;
  target = [(TSUWeakProxy *)self target];
  if (target)
  {
    [invocationCopy invokeWithTarget:target];
  }
}

- (id)target
{
  WeakRetained = objc_loadWeakRetained(&self->_target);

  return WeakRetained;
}

@end