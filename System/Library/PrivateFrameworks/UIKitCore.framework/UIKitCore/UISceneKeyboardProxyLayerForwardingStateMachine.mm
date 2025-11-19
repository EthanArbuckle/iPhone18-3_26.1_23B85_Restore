@interface UISceneKeyboardProxyLayerForwardingStateMachine
@end

@implementation UISceneKeyboardProxyLayerForwardingStateMachine

id __78___UISceneKeyboardProxyLayerForwardingStateMachine_succinctDescriptionBuilder__block_invoke(uint64_t a1)
{
  v4 = *(a1 + 32);
  v5 = *(*(a1 + 40) + 24);
  if (v5 > 2)
  {
    v6 = @"(unknown)";
  }

  else
  {
    v6 = off_1E7105470[v5];
  }

  return [v4 appendObject:v6 withName:@"state" skipIfNil:{1, v1, v2}];
}

void __72___UISceneKeyboardProxyLayerForwardingStateMachine__noteHostedInWindow___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _noteHostedInWindow:WeakRetained[5]];
}

@end