@interface SXComponentBehaviorHandler
- (SXComponentBehaviorHandler)initWithComponentView:(id)view withBehavior:(id)behavior;
- (UIView)behaviorView;
- (void)destroyWithBehaviorController:(id)controller;
- (void)setupWithBehaviorController:(id)controller;
@end

@implementation SXComponentBehaviorHandler

- (SXComponentBehaviorHandler)initWithComponentView:(id)view withBehavior:(id)behavior
{
  viewCopy = view;
  behaviorCopy = behavior;
  v12.receiver = self;
  v12.super_class = SXComponentBehaviorHandler;
  v9 = [(SXComponentBehaviorHandler *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_componentView, view);
    objc_storeStrong(&v10->_behavior, behavior);
  }

  return v10;
}

- (void)setupWithBehaviorController:(id)controller
{
  self->_isSetup = 1;
  componentView = self->_componentView;
  behavior = [(SXComponentBehaviorHandler *)self behavior];
  [(SXComponentView *)componentView didApplyBehavior:behavior];
}

- (void)destroyWithBehaviorController:(id)controller
{
  componentView = [(SXComponentBehaviorHandler *)self componentView];
  [componentView didApplyBehavior:0];

  self->_isSetup = 0;
}

- (UIView)behaviorView
{
  componentView = [(SXComponentBehaviorHandler *)self componentView];
  behavior = [(SXComponentBehaviorHandler *)self behavior];
  v5 = [componentView contentViewForBehavior:behavior];

  return v5;
}

@end