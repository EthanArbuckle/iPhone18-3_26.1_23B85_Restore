@interface UIWindowSceneDragInteractionImpl
@end

@implementation UIWindowSceneDragInteractionImpl

void __55___UIWindowSceneDragInteractionImpl_iOS_didMoveToView___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v7 = WeakRetained;
    v2 = objc_loadWeakRetained(WeakRetained + 1);
    v3 = [v2 _window];
    v4 = [v3 windowScene];
    v5 = [v4 _FBSScene];
    v6 = [v5 _ui_layoutPreferencesController];
    [v6 didRecognizeDoubleTapInDraggableArea];

    WeakRetained = v7;
  }
}

void __55___UIWindowSceneDragInteractionImpl_iOS_didMoveToView___block_invoke_2(uint64_t a1, double a2, double a3)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v19 = WeakRetained;
    v6 = objc_loadWeakRetained(WeakRetained + 1);
    v7 = [v6 _window];
    v8 = [v7 windowScene];

    v9 = objc_loadWeakRetained(v19 + 1);
    v10 = [v8 effectiveGeometry];
    v11 = [v10 coordinateSpace];
    [v9 convertPoint:v11 toCoordinateSpace:{a2, a3}];
    v13 = v12;

    v14 = [[UIStatusBarTapAction alloc] initWithType:0 xPosition:v13];
    v15 = objc_loadWeakRetained(v19 + 1);
    v16 = [v15 _window];
    v17 = [v16 windowScene];
    v18 = [v17 statusBarManager];
    [v18 handleTapAction:v14];

    WeakRetained = v19;
  }
}

@end