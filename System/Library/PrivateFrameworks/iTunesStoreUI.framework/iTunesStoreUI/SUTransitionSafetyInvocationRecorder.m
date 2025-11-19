@interface SUTransitionSafetyInvocationRecorder
- (void)invokeInvocation:(id)a3;
@end

@implementation SUTransitionSafetyInvocationRecorder

- (void)invokeInvocation:(id)a3
{
  [a3 retainArguments];
  v4 = MEMORY[0x1E69DD258];

  [v4 _iTunesStoreUI_enqueueTransitionSafeInvocation:a3];
}

@end