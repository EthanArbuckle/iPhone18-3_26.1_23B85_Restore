@interface ISMainThreadInvocationRecorder
- (void)invokeInvocation:(id)invocation;
@end

@implementation ISMainThreadInvocationRecorder

- (void)invokeInvocation:(id)invocation
{
  [invocation retainArguments];
  waitUntilDone = self->_waitUntilDone;

  [invocation performSelectorOnMainThread:sel_invoke withObject:0 waitUntilDone:waitUntilDone];
}

@end