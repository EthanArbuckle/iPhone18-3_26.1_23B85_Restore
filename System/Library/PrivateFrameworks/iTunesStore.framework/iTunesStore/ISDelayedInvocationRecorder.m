@interface ISDelayedInvocationRecorder
- (void)invokeInvocation:(id)a3;
@end

@implementation ISDelayedInvocationRecorder

- (void)invokeInvocation:(id)a3
{
  [a3 retainArguments];
  delayInterval = self->_delayInterval;

  [a3 performSelector:sel_invoke withObject:0 afterDelay:delayInterval];
}

@end