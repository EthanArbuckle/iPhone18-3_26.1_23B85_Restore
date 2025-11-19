@interface UISceneHostingGraph
@end

@implementation UISceneHostingGraph

void __38___UISceneHostingGraph_sharedInstance__block_invoke()
{
  v0 = [[_UISceneHostingGraph alloc] _init];
  v1 = _MergedGlobals_1_13;
  _MergedGlobals_1_13 = v0;
}

void __76___UISceneHostingGraph_observeLocalWindowGraphHostingContextID_withHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = WeakRetained;
    v7 = v3;
    BSDispatchMain();
  }
}

@end