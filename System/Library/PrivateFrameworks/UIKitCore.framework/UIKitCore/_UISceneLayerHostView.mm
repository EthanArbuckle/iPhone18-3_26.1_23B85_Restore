@interface _UISceneLayerHostView
- (_UISceneLayerHostView)initWithFrame:(CGRect)frame;
- (_UISceneLayerHostView)initWithSceneLayer:(id)layer;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
@end

@implementation _UISceneLayerHostView

- (_UISceneLayerHostView)initWithFrame:(CGRect)frame
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"_UISceneLayerHostView.m" lineNumber:32 description:@"initWithFrame is unavailable."];

  return 0;
}

- (_UISceneLayerHostView)initWithSceneLayer:(id)layer
{
  layerCopy = layer;
  if (!layerCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UISceneLayerHostView.m" lineNumber:37 description:{@"Invalid parameter not satisfying: %@", @"sceneLayer"}];
  }

  v12.receiver = self;
  v12.super_class = _UISceneLayerHostView;
  v7 = [(UIView *)&v12 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_sceneLayer, layer);
    [(UIView *)v8 setClipsToBounds:1];
    layer = [(UIView *)v8 layer];
    [layer setEdgeAntialiasingMask:0];
  }

  return v8;
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  v10.receiver = self;
  v10.super_class = _UISceneLayerHostView;
  v5 = [(UIView *)&v10 hitTest:event withEvent:test.x, test.y];
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