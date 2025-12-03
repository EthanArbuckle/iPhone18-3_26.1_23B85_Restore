@interface SXSpringyComponentBehaviorHandler
- (CGPoint)originalCenter;
- (SXSpringyComponentBehaviorHandler)initWithComponentView:(id)view withBehavior:(id)behavior;
- (void)dealloc;
- (void)destroyWithBehaviorController:(id)controller;
- (void)setupWithBehaviorController:(id)controller;
- (void)updateWithBehaviorController:(id)controller;
@end

@implementation SXSpringyComponentBehaviorHandler

- (SXSpringyComponentBehaviorHandler)initWithComponentView:(id)view withBehavior:(id)behavior
{
  v13.receiver = self;
  v13.super_class = SXSpringyComponentBehaviorHandler;
  v4 = [(SXComponentBehaviorHandler *)&v13 initWithComponentView:view withBehavior:behavior];
  v5 = v4;
  if (v4)
  {
    behavior = [(SXComponentBehaviorHandler *)v4 behavior];
    [behavior frequency];
    v5->_frequency = v7;

    behavior2 = [(SXComponentBehaviorHandler *)v5 behavior];
    [behavior2 damping];
    v5->_damping = v9;

    behavior3 = [(SXComponentBehaviorHandler *)v5 behavior];
    [behavior3 delta];
    v5->_delta = v11;
  }

  return v5;
}

- (void)setupWithBehaviorController:(id)controller
{
  v20.receiver = self;
  v20.super_class = SXSpringyComponentBehaviorHandler;
  controllerCopy = controller;
  [(SXComponentBehaviorHandler *)&v20 setupWithBehaviorController:controllerCopy];
  v5 = [(SXComponentBehaviorHandler *)self behaviorView:v20.receiver];
  animator = [controllerCopy animator];

  [(SXSpringyComponentBehaviorHandler *)self setDynamicAnimator:animator];
  [v5 center];
  [(SXSpringyComponentBehaviorHandler *)self setOriginalCenter:?];
  superview = [v5 superview];
  [v5 center];
  v9 = v8;
  v11 = v10;
  dynamicAnimator = [(SXSpringyComponentBehaviorHandler *)self dynamicAnimator];
  referenceView = [dynamicAnimator referenceView];
  [superview convertPoint:referenceView toView:{v9, v11}];
  v15 = v14;
  v17 = v16;

  v18 = [objc_alloc(MEMORY[0x1E69DC6C8]) initWithItem:v5 attachedToAnchor:{v15, v17}];
  [v18 setLength:0.0];
  [(SXSpringyComponentBehaviorHandler *)self frequency];
  [v18 setFrequency:?];
  [(SXSpringyComponentBehaviorHandler *)self damping];
  [v18 setDamping:?];
  dynamicAnimator2 = [(SXSpringyComponentBehaviorHandler *)self dynamicAnimator];
  [dynamicAnimator2 addBehavior:v18];

  [(SXSpringyComponentBehaviorHandler *)self setDynamicBehavior:v18];
}

- (void)updateWithBehaviorController:(id)controller
{
  v18.receiver = self;
  v18.super_class = SXSpringyComponentBehaviorHandler;
  controllerCopy = controller;
  [(SXComponentBehaviorHandler *)&v18 updateWithBehaviorController:controllerCopy];
  v5 = [(SXComponentBehaviorHandler *)self behaviorView:v18.receiver];
  viewport = [controllerCopy viewport];

  [viewport dynamicBounds];
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
  dynamicAnimator = [(SXSpringyComponentBehaviorHandler *)self dynamicAnimator];
  [dynamicAnimator updateItemUsingCurrentState:v5];

  [(SXSpringyComponentBehaviorHandler *)self setLastYOffset:v8];
}

- (void)destroyWithBehaviorController:(id)controller
{
  v6.receiver = self;
  v6.super_class = SXSpringyComponentBehaviorHandler;
  [(SXComponentBehaviorHandler *)&v6 destroyWithBehaviorController:controller];
  dynamicAnimator = [(SXSpringyComponentBehaviorHandler *)self dynamicAnimator];
  dynamicBehavior = [(SXSpringyComponentBehaviorHandler *)self dynamicBehavior];
  [dynamicAnimator removeBehavior:dynamicBehavior];

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