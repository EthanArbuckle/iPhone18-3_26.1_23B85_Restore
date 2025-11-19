@interface ISMainThreadInvocationRecorder
- (void)invokeInvocation:(id)a3;
@end

@implementation ISMainThreadInvocationRecorder

- (void)invokeInvocation:(id)a3
{
  [a3 retainArguments];
  waitUntilDone = self->_waitUntilDone;

  [a3 performSelectorOnMainThread:sel_invoke withObject:0 waitUntilDone:waitUntilDone];
}

@end