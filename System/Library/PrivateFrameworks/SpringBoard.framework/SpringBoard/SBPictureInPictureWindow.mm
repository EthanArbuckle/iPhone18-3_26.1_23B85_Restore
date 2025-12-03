@interface SBPictureInPictureWindow
- (SBPictureInPictureWindow)initWithWindowScene:(id)scene;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (void)setRootViewController:(id)controller;
- (void)setWindowScene:(id)scene;
@end

@implementation SBPictureInPictureWindow

- (SBPictureInPictureWindow)initWithWindowScene:(id)scene
{
  v7.receiver = self;
  v7.super_class = SBPictureInPictureWindow;
  v3 = [(SBPictureInPictureWindow *)&v7 initWithWindowScene:scene];
  v4 = v3;
  if (v3)
  {
    layer = [(SBPictureInPictureWindow *)v3 layer];
    [layer setDisableUpdateMask:32];
  }

  return v4;
}

- (void)setWindowScene:(id)scene
{
  v5.receiver = self;
  v5.super_class = SBPictureInPictureWindow;
  [(SBPictureInPictureWindow *)&v5 setWindowScene:scene];
  rootViewController = [(SBPictureInPictureWindow *)self rootViewController];
  [rootViewController noteWindowSceneDidChange];
}

- (void)setRootViewController:(id)controller
{
  controllerCopy = controller;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [(SBPictureInPictureWindow *)a2 setRootViewController:?];
  }

  v6.receiver = self;
  v6.super_class = SBPictureInPictureWindow;
  [(SBPictureInPictureWindow *)&v6 setRootViewController:controllerCopy];
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  v9.receiver = self;
  v9.super_class = SBPictureInPictureWindow;
  v5 = [(SBPictureInPictureWindow *)&v9 hitTest:event withEvent:test.x, test.y];
  if (v5 == self || (-[SBPictureInPictureWindow rootViewController](self, "rootViewController"), v6 = objc_claimAutoreleasedReturnValue(), [v6 view], v7 = objc_claimAutoreleasedReturnValue(), v7, v6, v5 == v7))
  {

    v5 = 0;
  }

  return v5;
}

- (void)setRootViewController:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
}

@end