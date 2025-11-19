@interface UIKeyWindowSceneObserver
@end

@implementation UIKeyWindowSceneObserver

void __61___UIKeyWindowSceneObserver_observerDeliveryPolicyDidChange___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [(_UIKeyWindowSceneObserver *)WeakRetained evaluateTargetOfEventDeferringEnvironments];
}

@end