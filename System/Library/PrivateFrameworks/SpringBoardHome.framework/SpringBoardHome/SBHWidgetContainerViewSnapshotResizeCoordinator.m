@interface SBHWidgetContainerViewSnapshotResizeCoordinator
- (SBHViewResizeCoordinatorDelegate)delegate;
- (SBHWidgetContainerViewSnapshotResizeCoordinator)initWithResizableView:(id)a3 multiplexingView:(id)a4 newSize:(CGSize)a5 hideMultiplexingViewInitially:(BOOL)a6 showMultiplexingViewWhenFinished:(BOOL)a7;
- (void)finishResize;
- (void)resize;
- (void)setUpResize;
@end

@implementation SBHWidgetContainerViewSnapshotResizeCoordinator

- (SBHWidgetContainerViewSnapshotResizeCoordinator)initWithResizableView:(id)a3 multiplexingView:(id)a4 newSize:(CGSize)a5 hideMultiplexingViewInitially:(BOOL)a6 showMultiplexingViewWhenFinished:(BOOL)a7
{
  height = a5.height;
  width = a5.width;
  v14 = a3;
  v15 = a4;
  v25.receiver = self;
  v25.super_class = SBHWidgetContainerViewSnapshotResizeCoordinator;
  v16 = [(SBHWidgetContainerViewSnapshotResizeCoordinator *)&v25 init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_resizableView, a3);
    objc_storeStrong(&v17->_multiplexingView, a4);
    v17->_newSize.width = width;
    v17->_newSize.height = height;
    [v14 bounds];
    v17->_currentSize.width = v18;
    v17->_currentSize.height = v19;
    v17->_shouldHideMultiplexingViewInitially = a6;
    v17->_shouldShowMultiplexingViewWhenFinished = a7;
    v20 = v14;
    v21 = v20;
    if (v20)
    {
      v22 = [v20 backgroundView];
      backgroundView = v17->_backgroundView;
      v17->_backgroundView = v22;
    }
  }

  return v17;
}

- (void)resize
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained coordinatorWillResize:self];
  }

  height = self->_currentSize.height;
  [(SBHWidgetContainerViewSnapshotResizeCoordinator *)self _deltaHeight];
  [(UIView *)self->_resizableView setFrame:0.0, height + v4, self->_currentSize.width, self->_currentSize.height];
  [(UIView *)self->_resizableView setNeedsLayout];
}

- (void)setUpResize
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained coordinatorWillSetUpResize:self];
  }

  [(UIView *)self->_resizableView frame];
  v4 = v3;
  v6 = v5;
  [(SBHWidgetContainerViewSnapshotResizeCoordinator *)self _deltaWidth];
  v8 = v7 * -0.5;
  [(SBHWidgetContainerViewSnapshotResizeCoordinator *)self _deltaHeight];
  [(UIView *)self->_resizableView setFrame:v8, v6 + v9 * -0.5, v4, v6];
  [(UIView *)self->_resizableView setNeedsLayout];
  backgroundView = self->_backgroundView;
  if (backgroundView)
  {
    self->_backgroundViewAutoresizing = [(UIView *)backgroundView autoresizingMask];
    [(UIView *)self->_backgroundView setAutoresizingMask:18];
  }

  if (self->_shouldHideMultiplexingViewInitially)
  {
    [(UIView *)self->_multiplexingView setAlpha:0.0];
  }
}

- (void)finishResize
{
  backgroundView = self->_backgroundView;
  if (backgroundView)
  {
    [(UIView *)backgroundView setAutoresizingMask:self->_backgroundViewAutoresizing];
  }

  if (self->_shouldShowMultiplexingViewWhenFinished)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    if (objc_opt_respondsToSelector())
    {
      [WeakRetained coordinatorWillFinishResize:self];
    }

    [(UIView *)self->_multiplexingView setAlpha:1.0];
  }
}

- (SBHViewResizeCoordinatorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end