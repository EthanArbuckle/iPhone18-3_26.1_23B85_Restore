@interface SBTraitsSingleSceneWindow
- (SBTraitsSingleSceneWindow)initWithWindowScene:(id)scene;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (id)rootViewController;
- (void)setRootViewController:(id)controller;
@end

@implementation SBTraitsSingleSceneWindow

- (SBTraitsSingleSceneWindow)initWithWindowScene:(id)scene
{
  v6.receiver = self;
  v6.super_class = SBTraitsSingleSceneWindow;
  v3 = [(SBTraitsSingleSceneWindow *)&v6 initWithWindowScene:scene];
  v4 = v3;
  if (v3)
  {
    v3->_sceneContentVisible = 1;
    [(SBTraitsSingleSceneWindow *)v3 setAutorotates:0 forceUpdateInterfaceOrientation:1];
    [(SBTraitsSingleSceneWindow *)v4 beginDisablingInterfaceAutorotation];
  }

  return v4;
}

- (void)setRootViewController:(id)controller
{
  controllerCopy = controller;
  if (controllerCopy)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [(SBTraitsSingleSceneWindow *)a2 setRootViewController:?];
    }
  }

  v6.receiver = self;
  v6.super_class = SBTraitsSingleSceneWindow;
  [(SBTraitsSingleSceneWindow *)&v6 setRootViewController:controllerCopy];
}

- (id)rootViewController
{
  v4.receiver = self;
  v4.super_class = SBTraitsSingleSceneWindow;
  rootViewController = [(SBTraitsSingleSceneWindow *)&v4 rootViewController];

  return rootViewController;
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  v9.receiver = self;
  v9.super_class = SBTraitsSingleSceneWindow;
  v5 = [(SBTraitsSingleSceneWindow *)&v9 hitTest:event withEvent:test.x, test.y];
  v6 = v5;
  if (v5 == self)
  {
    v7 = 0;
  }

  else
  {
    v7 = v5;
  }

  return v7;
}

- (void)setRootViewController:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBTraitsSingleSceneWindow.m" lineNumber:25 description:{@"Invalid parameter not satisfying: %@", @"rootViewController == nil || [rootViewController isKindOfClass:[SBTraitsOrientedContentViewController class]]"}];
}

@end