@interface _UIScrollViewRefreshControlHost
- (UIScrollView)scrollView;
- (_UIScrollViewRefreshControlHost)initWithScrollView:(id)a3;
- (void)decrementInsetHeight:(double)a3;
- (void)incrementInsetHeight:(double)a3;
- (void)refreshControl:(id)a3 didChangeToState:(int64_t)a4 fromState:(int64_t)a5;
@end

@implementation _UIScrollViewRefreshControlHost

- (UIScrollView)scrollView
{
  WeakRetained = objc_loadWeakRetained(&self->_scrollView);

  return WeakRetained;
}

- (_UIScrollViewRefreshControlHost)initWithScrollView:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = _UIScrollViewRefreshControlHost;
  v5 = [(_UIScrollViewRefreshControlHost *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_scrollView, v4);
  }

  return v6;
}

- (void)decrementInsetHeight:(double)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_scrollView);
  [WeakRetained _removeRefreshInset:a3];
}

- (void)incrementInsetHeight:(double)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_scrollView);
  [WeakRetained _addRefreshInset:a3];
}

- (void)refreshControl:(id)a3 didChangeToState:(int64_t)a4 fromState:(int64_t)a5
{
  v8 = a3;
  if (!a5)
  {
    v15 = v8;
    WeakRetained = objc_loadWeakRetained(&self->_scrollView);
    v10 = [WeakRetained isTracking];

    v8 = v15;
    if (v10)
    {
      self->_refreshControlAutomaticContentOffsetAdjustmentEnabledNeedsReset = 1;
      v11 = objc_loadWeakRetained(&self->_scrollView);
      self->_refreshControlAutomaticContentOffsetAdjustmentEnabledWhenLastIdle = [v11 _isAutomaticContentOffsetAdjustmentEnabled];

      v12 = objc_loadWeakRetained(&self->_scrollView);
      v13 = v12;
      refreshControlAutomaticContentOffsetAdjustmentEnabledWhenLastIdle = 0;
LABEL_7:
      [v12 _setAutomaticContentOffsetAdjustmentEnabled:refreshControlAutomaticContentOffsetAdjustmentEnabledWhenLastIdle];

      v8 = v15;
      goto LABEL_8;
    }
  }

  if (!a4 && self->_refreshControlAutomaticContentOffsetAdjustmentEnabledNeedsReset)
  {
    v15 = v8;
    self->_refreshControlAutomaticContentOffsetAdjustmentEnabledNeedsReset = 0;
    v12 = objc_loadWeakRetained(&self->_scrollView);
    v13 = v12;
    refreshControlAutomaticContentOffsetAdjustmentEnabledWhenLastIdle = self->_refreshControlAutomaticContentOffsetAdjustmentEnabledWhenLastIdle;
    goto LABEL_7;
  }

LABEL_8:
}

@end