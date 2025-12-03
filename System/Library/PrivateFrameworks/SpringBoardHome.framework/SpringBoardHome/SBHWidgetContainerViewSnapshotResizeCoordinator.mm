@interface SBHWidgetContainerViewSnapshotResizeCoordinator
- (SBHViewResizeCoordinatorDelegate)delegate;
- (SBHWidgetContainerViewSnapshotResizeCoordinator)initWithResizableView:(id)view multiplexingView:(id)multiplexingView newSize:(CGSize)size hideMultiplexingViewInitially:(BOOL)initially showMultiplexingViewWhenFinished:(BOOL)finished;
- (void)finishResize;
- (void)resize;
- (void)setUpResize;
@end

@implementation SBHWidgetContainerViewSnapshotResizeCoordinator

- (SBHWidgetContainerViewSnapshotResizeCoordinator)initWithResizableView:(id)view multiplexingView:(id)multiplexingView newSize:(CGSize)size hideMultiplexingViewInitially:(BOOL)initially showMultiplexingViewWhenFinished:(BOOL)finished
{
  height = size.height;
  width = size.width;
  viewCopy = view;
  multiplexingViewCopy = multiplexingView;
  v25.receiver = self;
  v25.super_class = SBHWidgetContainerViewSnapshotResizeCoordinator;
  v16 = [(SBHWidgetContainerViewSnapshotResizeCoordinator *)&v25 init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_resizableView, view);
    objc_storeStrong(&v17->_multiplexingView, multiplexingView);
    v17->_newSize.width = width;
    v17->_newSize.height = height;
    [viewCopy bounds];
    v17->_currentSize.width = v18;
    v17->_currentSize.height = v19;
    v17->_shouldHideMultiplexingViewInitially = initially;
    v17->_shouldShowMultiplexingViewWhenFinished = finished;
    v20 = viewCopy;
    v21 = v20;
    if (v20)
    {
      backgroundView = [v20 backgroundView];
      backgroundView = v17->_backgroundView;
      v17->_backgroundView = backgroundView;
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