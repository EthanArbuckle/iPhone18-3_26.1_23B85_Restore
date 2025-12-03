@interface UIScrollViewMonitor
- (UIScrollViewMonitor)initWithScrollView:(id)view;
- (UIScrollViewMonitorDelegate)delegate;
- (void)_monitoredView:(id)view didMoveFromSuperview:(id)superview toSuperview:(id)toSuperview;
- (void)_observeScrollViewDidScroll:(id)scroll;
- (void)setDelegate:(id)delegate;
- (void)stopMonitoring;
@end

@implementation UIScrollViewMonitor

- (UIScrollViewMonitor)initWithScrollView:(id)view
{
  viewCopy = view;
  v11.receiver = self;
  v11.super_class = UIScrollViewMonitor;
  v6 = [(UIScrollViewMonitor *)&v11 init];
  if (v6)
  {
    window = [viewCopy window];

    if (window)
    {
      objc_storeStrong(&v6->_scrollView, view);
      window2 = [viewCopy window];
      objc_storeWeak(&v6->_window, window2);

      [(UIScrollView *)v6->_scrollView _addScrollViewScrollObserver:v6];
      WeakRetained = objc_loadWeakRetained(&v6->_window);
      [WeakRetained _registerSubtreeMonitor:v6];
    }

    else
    {
      WeakRetained = v6;
      v6 = 0;
    }
  }

  return v6;
}

- (void)setDelegate:(id)delegate
{
  obj = delegate;
  objc_setAssociatedObject(self, &_UIScrollViewDelegateAssociationKey, obj, 0x301);
  v4 = objc_storeWeak(&self->_delegate, obj);
  [obj scrollViewMonitorDidStartMonitoring:self->_scrollView];
}

- (void)stopMonitoring
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained scrollViewMonitorDidStopMonitoring:self->_scrollView];

  [(UIScrollView *)self->_scrollView _removeScrollViewScrollObserver:self];
  v4 = objc_loadWeakRetained(&self->_window);
  [v4 _unregisterSubtreeMonitor:self];
}

- (void)_observeScrollViewDidScroll:(id)scroll
{
  scrollCopy = scroll;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained scrollViewMonitorScrollDidScrolled:scrollCopy];
}

- (void)_monitoredView:(id)view didMoveFromSuperview:(id)superview toSuperview:(id)toSuperview
{
  viewCopy = view;
  if ([viewCopy isDescendantOfView:self->_scrollView])
  {
    if (toSuperview)
    {
      if (superview)
      {
        goto LABEL_7;
      }

      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      v9 = WeakRetained;
      scrollView = self->_scrollView;
      v11 = viewCopy;
      v12 = 0;
    }

    else
    {
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      v9 = WeakRetained;
      scrollView = self->_scrollView;
      v11 = 0;
      v12 = viewCopy;
    }

    [WeakRetained scrollViewMonitorScrollDid:scrollView addView:v11 removeView:v12];
  }

LABEL_7:
}

- (UIScrollViewMonitorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end