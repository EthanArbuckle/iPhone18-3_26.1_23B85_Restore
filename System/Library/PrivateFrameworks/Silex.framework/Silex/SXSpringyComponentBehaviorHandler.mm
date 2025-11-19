@interface SXSpringyComponentBehaviorHandler
- (CGPoint)originalCenter;
- (SXSpringyComponentBehaviorHandler)initWithComponentView:(id)a3 withBehavior:(id)a4;
- (void)dealloc;
- (void)destroyWithBehaviorController:(id)a3;
- (void)setupWithBehaviorController:(id)a3;
- (void)updateWithBehaviorController:(id)a3;
@end

@implementation SXSpringyComponentBehaviorHandler

- (SXSpringyComponentBehaviorHandler)initWithComponentView:(id)a3 withBehavior:(id)a4
{
  v13.receiver = self;
  v13.super_class = SXSpringyComponentBehaviorHandler;
  v4 = [(SXComponentBehaviorHandler *)&v13 initWithComponentView:a3 withBehavior:a4];
  v5 = v4;
  if (v4)
  {
    v6 = [(SXComponentBehaviorHandler *)v4 behavior];
    [v6 frequency];
    v5->_frequency = v7;

    v8 = [(SXComponentBehaviorHandler *)v5 behavior];
    [v8 damping];
    v5->_damping = v9;

    v10 = [(SXComponentBehaviorHandler *)v5 behavior];
    [v10 delta];
    v5->_delta = v11;
  }

  return v5;
}

- (void)setupWithBehaviorController:(id)a3
{
  v20.receiver = self;
  v20.super_class = SXSpringyComponentBehaviorHandler;
  v4 = a3;
  [(SXComponentBehaviorHandler *)&v20 setupWithBehaviorController:v4];
  v5 = [(SXComponentBehaviorHandler *)self behaviorView:v20.receiver];
  v6 = [v4 animator];

  [(SXSpringyComponentBehaviorHandler *)self setDynamicAnimator:v6];
  [v5 center];
  [(SXSpringyComponentBehaviorHandler *)self setOriginalCenter:?];
  v7 = [v5 superview];
  [v5 center];
  v9 = v8;
  v11 = v10;
  v12 = [(SXSpringyComponentBehaviorHandler *)self dynamicAnimator];
  v13 = [v12 referenceView];
  [v7 convertPoint:v13 toView:{v9, v11}];
  v15 = v14;
  v17 = v16;

  v18 = [objc_alloc(MEMORY[0x1E69DC6C8]) initWithItem:v5 attachedToAnchor:{v15, v17}];
  [v18 setLength:0.0];
  [(SXSpringyComponentBehaviorHandler *)self frequency];
  [v18 setFrequency:?];
  [(SXSpringyComponentBehaviorHandler *)self damping];
  [v18 setDamping:?];
  v19 = [(SXSpringyComponentBehaviorHandler *)self dynamicAnimator];
  [v19 addBehavior:v18];

  [(SXSpringyComponentBehaviorHandler *)self setDynamicBehavior:v18];
}

- (void)updateWithBehaviorController:(id)a3
{
  v18.receiver = self;
  v18.super_class = SXSpringyComponentBehaviorHandler;
  v4 = a3;
  [(SXComponentBehaviorHandler *)&v18 updateWithBehaviorController:v4];
  v5 = [(SXComponentBehaviorHandler *)self behaviorView:v18.receiver];
  v6 = [v4 viewport];

  [v6 dynamicBounds];
  v8 = v7;

  [(SXSpringyComponentBehaviorHandler *)self lastYOffset];
  v10 = v8 - v9;
  [v5 center];
  v12 = v11;
  [(SXSpringyComponentBehaviorHandler *)self originalCenter];
  v14 = v13;
  [(SXSpringyComponentBehaviorHandler *)self delta];
  v16 = v10 * v15;
  if (v10 < v16 != v10 < 0.0)
  {
    v16 = v10;
  }

  [v5 setCenter:{v14, v12 + v16}];
  v17 = [(SXSpringyComponentBehaviorHandler *)self dynamicAnimator];
  [v17 updateItemUsingCurrentState:v5];

  [(SXSpringyComponentBehaviorHandler *)self setLastYOffset:v8];
}

- (void)destroyWithBehaviorController:(id)a3
{
  v6.receiver = self;
  v6.super_class = SXSpringyComponentBehaviorHandler;
  [(SXComponentBehaviorHandler *)&v6 destroyWithBehaviorController:a3];
  v4 = [(SXSpringyComponentBehaviorHandler *)self dynamicAnimator];
  v5 = [(SXSpringyComponentBehaviorHandler *)self dynamicBehavior];
  [v4 removeBehavior:v5];

  [(SXSpringyComponentBehaviorHandler *)self setDynamicBehavior:0];
  [(SXSpringyComponentBehaviorHandler *)self setDynamicAnimator:0];
}

- (void)dealloc
{
  [(SXSpringyComponentBehaviorHandler *)self destroyWithBehaviorController:0];
  v3.receiver = self;
  v3.super_class = SXSpringyComponentBehaviorHandler;
  [(SXSpringyComponentBehaviorHandler *)&v3 dealloc];
}

- (CGPoint)originalCenter
{
  x = self->_originalCenter.x;
  y = self->_originalCenter.y;
  result.y = y;
  result.x = x;
  return result;
}

@end