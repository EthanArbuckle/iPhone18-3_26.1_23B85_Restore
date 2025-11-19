@interface UIHomeAffordanceObserverProxyInteraction
@end

@implementation UIHomeAffordanceObserverProxyInteraction

uint64_t __71___UIHomeAffordanceObserverProxyInteraction_appendDescriptionToStream___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = objc_loadWeakRetained((*(a1 + 40) + 32));
  if (v3)
  {
    v4 = MEMORY[0x1E696AEC0];
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    v7 = [v4 stringWithFormat:@"<%@: %p>", v6, v3];
  }

  else
  {
    v7 = @"(nil)";
  }

  v8 = [v2 appendObject:v7 withName:@"view"];
  result = [*(a1 + 32) hasDebugStyle];
  if ((result & 1) == 0)
  {
    return [*(a1 + 32) appendBool:*(*(a1 + 40) + 56) != 0 withName:@"hasRegistered"];
  }

  return result;
}

id __71___UIHomeAffordanceObserverProxyInteraction_appendDescriptionToStream___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  WeakRetained = objc_loadWeakRetained((*(a1 + 40) + 48));
  v4 = [WeakRetained succinctDescription];
  v5 = [v2 appendObject:v4 withName:@"homeAffordanceNotifier"];

  v6 = [*(a1 + 32) appendObject:*(*(a1 + 40) + 56) withName:@"registrationToken"];
  return [*(a1 + 32) appendRect:@"lastNotifiedHomeAffordanceFrameIntersection" withName:{*(*(a1 + 40) + 72), *(*(a1 + 40) + 80), *(*(a1 + 40) + 88), *(*(a1 + 40) + 96)}];
}

@end