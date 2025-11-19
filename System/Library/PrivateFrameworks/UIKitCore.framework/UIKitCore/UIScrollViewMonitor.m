@interface UIScrollViewMonitor
- (UIScrollViewMonitor)initWithScrollView:(id)a3;
- (UIScrollViewMonitorDelegate)delegate;
- (void)_monitoredView:(id)a3 didMoveFromSuperview:(id)a4 toSuperview:(id)a5;
- (void)_observeScrollViewDidScroll:(id)a3;
- (void)setDelegate:(id)a3;
- (void)stopMonitoring;
@end

@implementation UIScrollViewMonitor

- (UIScrollViewMonitor)initWithScrollView:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = UIScrollViewMonitor;
  v6 = [(UIScrollViewMonitor *)&v11 init];
  if (v6)
  {
    v7 = [v5 window];

    if (v7)
    {
      objc_storeStrong(&v6->_scrollView, a3);
      v8 = [v5 window];
      objc_storeWeak(&v6->_window, v8);

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

- (void)setDelegate:(id)a3
{
  obj = a3;
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

- (void)_observeScrollViewDidScroll:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained scrollViewMonitorScrollDidScrolled:v4];
}

- (void)_monitoredView:(id)a3 didMoveFromSuperview:(id)a4 toSuperview:(id)a5
{
  v13 = a3;
  if ([v13 isDescendantOfView:self->_scrollView])
  {
    if (a5)
    {
      if (a4)
      {
        goto LABEL_7;
      }

      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      v9 = WeakRetained;
      scrollView = self->_scrollView;
      v11 = v13;
      v12 = 0;
    }

    else
    {
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      v9 = WeakRetained;
      scrollView = self->_scrollView;
      v11 = 0;
      v12 = v13;
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