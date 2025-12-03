@interface _UIScrollViewRefreshControlHost
- (UIScrollView)scrollView;
- (_UIScrollViewRefreshControlHost)initWithScrollView:(id)view;
- (void)decrementInsetHeight:(double)height;
- (void)incrementInsetHeight:(double)height;
- (void)refreshControl:(id)control didChangeToState:(int64_t)state fromState:(int64_t)fromState;
@end

@implementation _UIScrollViewRefreshControlHost

- (UIScrollView)scrollView
{
  WeakRetained = objc_loadWeakRetained(&self->_scrollView);

  return WeakRetained;
}

- (_UIScrollViewRefreshControlHost)initWithScrollView:(id)view
{
  viewCopy = view;
  v8.receiver = self;
  v8.super_class = _UIScrollViewRefreshControlHost;
  v5 = [(_UIScrollViewRefreshControlHost *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_scrollView, viewCopy);
  }

  return v6;
}

- (void)decrementInsetHeight:(double)height
{
  WeakRetained = objc_loadWeakRetained(&self->_scrollView);
  [WeakRetained _removeRefreshInset:height];
}

- (void)incrementInsetHeight:(double)height
{
  WeakRetained = objc_loadWeakRetained(&self->_scrollView);
  [WeakRetained _addRefreshInset:height];
}

- (void)refreshControl:(id)control didChangeToState:(int64_t)state fromState:(int64_t)fromState
{
  controlCopy = control;
  if (!fromState)
  {
    v15 = controlCopy;
    WeakRetained = objc_loadWeakRetained(&self->_scrollView);
    isTracking = [WeakRetained isTracking];

    controlCopy = v15;
    if (isTracking)
    {
      self->_refreshControlAutomaticContentOffsetAdjustmentEnabledNeedsReset = 1;
      v11 = objc_loadWeakRetained(&self->_scrollView);
      self->_refreshControlAutomaticContentOffsetAdjustmentEnabledWhenLastIdle = [v11 _isAutomaticContentOffsetAdjustmentEnabled];

      v12 = objc_loadWeakRetained(&self->_scrollView);
      v13 = v12;
      refreshControlAutomaticContentOffsetAdjustmentEnabledWhenLastIdle = 0;
LABEL_7:
      [v12 _setAutomaticContentOffsetAdjustmentEnabled:refreshControlAutomaticContentOffsetAdjustmentEnabledWhenLastIdle];

      controlCopy = v15;
      goto LABEL_8;
    }
  }

  if (!state && self->_refreshControlAutomaticContentOffsetAdjustmentEnabledNeedsReset)
  {
    v15 = controlCopy;
    self->_refreshControlAutomaticContentOffsetAdjustmentEnabledNeedsReset = 0;
    v12 = objc_loadWeakRetained(&self->_scrollView);
    v13 = v12;
    refreshControlAutomaticContentOffsetAdjustmentEnabledWhenLastIdle = self->_refreshControlAutomaticContentOffsetAdjustmentEnabledWhenLastIdle;
    goto LABEL_7;
  }

LABEL_8:
}

@end