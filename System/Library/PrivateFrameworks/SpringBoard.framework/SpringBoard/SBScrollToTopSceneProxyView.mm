@interface SBScrollToTopSceneProxyView
- (SBScrollToTopSceneProxyViewDelegate)delegate;
- (void)_scrollToTopFromTouchAtScreenLocation:(CGPoint)location resultHandler:(id)handler;
- (void)didMoveToWindow;
- (void)willMoveToWindow:(id)window;
@end

@implementation SBScrollToTopSceneProxyView

- (void)willMoveToWindow:(id)window
{
  windowCopy = window;
  delegate = [(SBScrollToTopSceneProxyView *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    window = [(SBScrollToTopSceneProxyView *)self window];
    [delegate scrollToTopSceneProxyViewWillExitViewHierarchy:self rootedAtWindow:window];
  }

  v7.receiver = self;
  v7.super_class = SBScrollToTopSceneProxyView;
  [(SBScrollToTopSceneProxyView *)&v7 willMoveToWindow:windowCopy];
}

- (void)didMoveToWindow
{
  delegate = [(SBScrollToTopSceneProxyView *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    window = [(SBScrollToTopSceneProxyView *)self window];
    [delegate scrollToTopSceneProxyViewDidEnterViewHierarchy:self rootedAtWindow:window];
  }

  v5.receiver = self;
  v5.super_class = SBScrollToTopSceneProxyView;
  [(SBScrollToTopSceneProxyView *)&v5 didMoveToWindow];
}

- (void)_scrollToTopFromTouchAtScreenLocation:(CGPoint)location resultHandler:(id)handler
{
  x = location.x;
  handlerCopy = handler;
  v6 = [objc_alloc(MEMORY[0x277D75AB0]) initWithType:0 xPosition:x];
  sceneHandle = [(SBScrollToTopSceneProxyView *)self sceneHandle];
  sceneIfExists = [sceneHandle sceneIfExists];
  v9 = [MEMORY[0x277CBEB98] setWithObject:v6];
  [sceneIfExists sendActions:v9];

  if (handlerCopy)
  {
    handlerCopy[2](handlerCopy, 1);
  }
}

- (SBScrollToTopSceneProxyViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end