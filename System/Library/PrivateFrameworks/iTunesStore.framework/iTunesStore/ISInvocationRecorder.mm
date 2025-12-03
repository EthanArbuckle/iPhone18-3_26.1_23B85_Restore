@interface ISInvocationRecorder
- (ISInvocationRecorder)init;
- (ISInvocationRecorder)initWithTarget:(id)target;
- (id)methodSignatureForSelector:(SEL)selector;
- (void)dealloc;
- (void)forwardInvocation:(id)invocation;
@end

@implementation ISInvocationRecorder

- (ISInvocationRecorder)init
{
  __ISRecordSPIClassUsage(self);
  v4.receiver = self;
  v4.super_class = ISInvocationRecorder;
  return [(ISInvocationRecorder *)&v4 init];
}

- (ISInvocationRecorder)initWithTarget:(id)target
{
  v4 = [(ISInvocationRecorder *)self init];
  if (v4)
  {
    v4->_target = target;
  }

  return v4;
}

- (void)dealloc
{
  self->_target = 0;
  v3.receiver = self;
  v3.super_class = ISInvocationRecorder;
  [(ISInvocationRecorder *)&v3 dealloc];
}

- (void)forwardInvocation:(id)invocation
{
  [invocation setTarget:{-[ISInvocationRecorder adjustedTargetForSelector:](self, "adjustedTargetForSelector:", objc_msgSend(invocation, "selector"))}];

  [(ISInvocationRecorder *)self invokeInvocation:invocation];
}

- (id)methodSignatureForSelector:(SEL)selector
{
  v6.receiver = self;
  v6.super_class = ISInvocationRecorder;
  result = [(ISInvocationRecorder *)&v6 methodSignatureForSelector:?];
  if (!result)
  {
    return [-[ISInvocationRecorder adjustedTargetForSelector:](self adjustedTargetForSelector:{selector), "methodSignatureForSelector:", selector}];
  }

  return result;
}

@end