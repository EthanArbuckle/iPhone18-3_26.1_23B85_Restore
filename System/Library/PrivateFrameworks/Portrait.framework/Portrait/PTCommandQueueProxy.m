@interface PTCommandQueueProxy
- (PTCommandQueueProxy)initWithInitializerCommandQueue:(id)a3;
- (id)methodSignatureForSelector:(SEL)a3;
- (void)forwardInvocation:(id)a3;
@end

@implementation PTCommandQueueProxy

- (PTCommandQueueProxy)initWithInitializerCommandQueue:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = PTCommandQueueProxy;
  v5 = [(PTCommandQueueProxy *)&v8 init];
  commandQueue = v5->_commandQueue;
  v5->_commandQueue = v4;

  return v5;
}

- (void)forwardInvocation:(id)a3
{
  v4 = a3;
  [v4 selector];
  if (objc_opt_respondsToSelector())
  {
    [v4 invokeWithTarget:self->_commandQueue];
  }

  else
  {
    v5.receiver = self;
    v5.super_class = PTCommandQueueProxy;
    [(PTCommandQueueProxy *)&v5 forwardInvocation:v4];
  }
}

- (id)methodSignatureForSelector:(SEL)a3
{
  v6.receiver = self;
  v6.super_class = PTCommandQueueProxy;
  v4 = [(PTCommandQueueProxy *)&v6 methodSignatureForSelector:?];
  if (!v4)
  {
    v4 = [objc_opt_class() instanceMethodSignatureForSelector:a3];
  }

  return v4;
}

@end