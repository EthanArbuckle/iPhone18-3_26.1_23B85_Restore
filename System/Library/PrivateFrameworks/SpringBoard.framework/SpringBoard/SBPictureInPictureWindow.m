@interface SBPictureInPictureWindow
- (SBPictureInPictureWindow)initWithWindowScene:(id)a3;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
- (void)setRootViewController:(id)a3;
- (void)setWindowScene:(id)a3;
@end

@implementation SBPictureInPictureWindow

- (SBPictureInPictureWindow)initWithWindowScene:(id)a3
{
  v7.receiver = self;
  v7.super_class = SBPictureInPictureWindow;
  v3 = [(SBPictureInPictureWindow *)&v7 initWithWindowScene:a3];
  v4 = v3;
  if (v3)
  {
    v5 = [(SBPictureInPictureWindow *)v3 layer];
    [v5 setDisableUpdateMask:32];
  }

  return v4;
}

- (void)setWindowScene:(id)a3
{
  v5.receiver = self;
  v5.super_class = SBPictureInPictureWindow;
  [(SBPictureInPictureWindow *)&v5 setWindowScene:a3];
  v4 = [(SBPictureInPictureWindow *)self rootViewController];
  [v4 noteWindowSceneDidChange];
}

- (void)setRootViewController:(id)a3
{
  v5 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [(SBPictureInPictureWindow *)a2 setRootViewController:?];
  }

  v6.receiver = self;
  v6.super_class = SBPictureInPictureWindow;
  [(SBPictureInPictureWindow *)&v6 setRootViewController:v5];
}

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  v9.receiver = self;
  v9.super_class = SBPictureInPictureWindow;
  v5 = [(SBPictureInPictureWindow *)&v9 hitTest:a4 withEvent:a3.x, a3.y];
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