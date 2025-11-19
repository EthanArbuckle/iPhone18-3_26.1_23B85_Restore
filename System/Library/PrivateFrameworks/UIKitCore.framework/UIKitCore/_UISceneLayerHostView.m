@interface _UISceneLayerHostView
- (_UISceneLayerHostView)initWithFrame:(CGRect)a3;
- (_UISceneLayerHostView)initWithSceneLayer:(id)a3;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
@end

@implementation _UISceneLayerHostView

- (_UISceneLayerHostView)initWithFrame:(CGRect)a3
{
  v5 = [MEMORY[0x1E696AAA8] currentHandler];
  [v5 handleFailureInMethod:a2 object:self file:@"_UISceneLayerHostView.m" lineNumber:32 description:@"initWithFrame is unavailable."];

  return 0;
}

- (_UISceneLayerHostView)initWithSceneLayer:(id)a3
{
  v6 = a3;
  if (!v6)
  {
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"_UISceneLayerHostView.m" lineNumber:37 description:{@"Invalid parameter not satisfying: %@", @"sceneLayer"}];
  }

  v12.receiver = self;
  v12.super_class = _UISceneLayerHostView;
  v7 = [(UIView *)&v12 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_sceneLayer, a3);
    [(UIView *)v8 setClipsToBounds:1];
    v9 = [(UIView *)v8 layer];
    [v9 setEdgeAntialiasingMask:0];
  }

  return v8;
}

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  v10.receiver = self;
  v10.super_class = _UISceneLayerHostView;
  v5 = [(UIView *)&v10 hitTest:a4 withEvent:a3.x, a3.y];
  v6 = v5;
  if (v5 == self)
  {
    v7 = 0;
  }

  else
  {
    v7 = v5;
  }

  v8 = v7;

  return v7;
}

@end