@interface SXComponentBehaviorHandler
- (SXComponentBehaviorHandler)initWithComponentView:(id)a3 withBehavior:(id)a4;
- (UIView)behaviorView;
- (void)destroyWithBehaviorController:(id)a3;
- (void)setupWithBehaviorController:(id)a3;
@end

@implementation SXComponentBehaviorHandler

- (SXComponentBehaviorHandler)initWithComponentView:(id)a3 withBehavior:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = SXComponentBehaviorHandler;
  v9 = [(SXComponentBehaviorHandler *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_componentView, a3);
    objc_storeStrong(&v10->_behavior, a4);
  }

  return v10;
}

- (void)setupWithBehaviorController:(id)a3
{
  self->_isSetup = 1;
  componentView = self->_componentView;
  v4 = [(SXComponentBehaviorHandler *)self behavior];
  [(SXComponentView *)componentView didApplyBehavior:v4];
}

- (void)destroyWithBehaviorController:(id)a3
{
  v4 = [(SXComponentBehaviorHandler *)self componentView];
  [v4 didApplyBehavior:0];

  self->_isSetup = 0;
}

- (UIView)behaviorView
{
  v3 = [(SXComponentBehaviorHandler *)self componentView];
  v4 = [(SXComponentBehaviorHandler *)self behavior];
  v5 = [v3 contentViewForBehavior:v4];

  return v5;
}

@end