@interface SUTransitionSafetyInvocationRecorder
- (void)invokeInvocation:(id)invocation;
@end

@implementation SUTransitionSafetyInvocationRecorder

- (void)invokeInvocation:(id)invocation
{
  [invocation retainArguments];
  v4 = MEMORY[0x1E69DD258];

  [v4 _iTunesStoreUI_enqueueTransitionSafeInvocation:invocation];
}

@end