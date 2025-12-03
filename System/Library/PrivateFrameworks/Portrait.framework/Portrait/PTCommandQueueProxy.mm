@interface PTCommandQueueProxy
- (PTCommandQueueProxy)initWithInitializerCommandQueue:(id)queue;
- (id)methodSignatureForSelector:(SEL)selector;
- (void)forwardInvocation:(id)invocation;
@end

@implementation PTCommandQueueProxy

- (PTCommandQueueProxy)initWithInitializerCommandQueue:(id)queue
{
  queueCopy = queue;
  v8.receiver = self;
  v8.super_class = PTCommandQueueProxy;
  v5 = [(PTCommandQueueProxy *)&v8 init];
  commandQueue = v5->_commandQueue;
  v5->_commandQueue = queueCopy;

  return v5;
}

- (void)forwardInvocation:(id)invocation
{
  invocationCopy = invocation;
  [invocationCopy selector];
  if (objc_opt_respondsToSelector())
  {
    [invocationCopy invokeWithTarget:self->_commandQueue];
  }

  else
  {
    v5.receiver = self;
    v5.super_class = PTCommandQueueProxy;
    [(PTCommandQueueProxy *)&v5 forwardInvocation:invocationCopy];
  }
}

- (id)methodSignatureForSelector:(SEL)selector
{
  v6.receiver = self;
  v6.super_class = PTCommandQueueProxy;
  v4 = [(PTCommandQueueProxy *)&v6 methodSignatureForSelector:?];
  if (!v4)
  {
    v4 = [objc_opt_class() instanceMethodSignatureForSelector:selector];
  }

  return v4;
}

@end