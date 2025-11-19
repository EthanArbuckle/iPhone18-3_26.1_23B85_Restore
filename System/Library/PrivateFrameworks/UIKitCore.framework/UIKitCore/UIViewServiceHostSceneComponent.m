@interface UIViewServiceHostSceneComponent
@end

@implementation UIViewServiceHostSceneComponent

void __81___UIViewServiceHostSceneComponent_activateOnMainDisplayWithClientProcessHandle___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v4 = [objc_opt_self() mainScreen];
  v3 = [v4 displayConfiguration];
  [v2 setDisplayConfiguration:v3];

  [v2 setInterfaceOrientation:{objc_msgSend(v4, "_interfaceOrientation")}];
  [v4 _referenceBounds];
  [v2 setFrame:?];
  [v2 setForeground:1];
}

void __57___UIViewServiceHostSceneComponent_evaluateClientIsReady__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [(_UIViewServiceHostSceneComponent *)WeakRetained delegate];
  [v1 viewServiceClientIsReady];
}

@end