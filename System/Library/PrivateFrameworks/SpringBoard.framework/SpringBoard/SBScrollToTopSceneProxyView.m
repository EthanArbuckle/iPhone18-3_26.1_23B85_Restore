@interface SBScrollToTopSceneProxyView
- (SBScrollToTopSceneProxyViewDelegate)delegate;
- (void)_scrollToTopFromTouchAtScreenLocation:(CGPoint)a3 resultHandler:(id)a4;
- (void)didMoveToWindow;
- (void)willMoveToWindow:(id)a3;
@end

@implementation SBScrollToTopSceneProxyView

- (void)willMoveToWindow:(id)a3
{
  v4 = a3;
  v5 = [(SBScrollToTopSceneProxyView *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v6 = [(SBScrollToTopSceneProxyView *)self window];
    [v5 scrollToTopSceneProxyViewWillExitViewHierarchy:self rootedAtWindow:v6];
  }

  v7.receiver = self;
  v7.super_class = SBScrollToTopSceneProxyView;
  [(SBScrollToTopSceneProxyView *)&v7 willMoveToWindow:v4];
}

- (void)didMoveToWindow
{
  v3 = [(SBScrollToTopSceneProxyView *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v4 = [(SBScrollToTopSceneProxyView *)self window];
    [v3 scrollToTopSceneProxyViewDidEnterViewHierarchy:self rootedAtWindow:v4];
  }

  v5.receiver = self;
  v5.super_class = SBScrollToTopSceneProxyView;
  [(SBScrollToTopSceneProxyView *)&v5 didMoveToWindow];
}

- (void)_scrollToTopFromTouchAtScreenLocation:(CGPoint)a3 resultHandler:(id)a4
{
  x = a3.x;
  v10 = a4;
  v6 = [objc_alloc(MEMORY[0x277D75AB0]) initWithType:0 xPosition:x];
  v7 = [(SBScrollToTopSceneProxyView *)self sceneHandle];
  v8 = [v7 sceneIfExists];
  v9 = [MEMORY[0x277CBEB98] setWithObject:v6];
  [v8 sendActions:v9];

  if (v10)
  {
    v10[2](v10, 1);
  }
}

- (SBScrollToTopSceneProxyViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end