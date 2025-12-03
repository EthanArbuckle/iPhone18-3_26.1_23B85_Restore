@interface ISDelayedInvocationRecorder
- (void)invokeInvocation:(id)invocation;
@end

@implementation ISDelayedInvocationRecorder

- (void)invokeInvocation:(id)invocation
{
  [invocation retainArguments];
  delayInterval = self->_delayInterval;

  [invocation performSelector:sel_invoke withObject:0 afterDelay:delayInterval];
}

@end