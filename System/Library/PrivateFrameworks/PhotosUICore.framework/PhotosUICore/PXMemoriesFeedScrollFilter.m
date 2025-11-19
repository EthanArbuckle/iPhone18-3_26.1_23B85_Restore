@interface PXMemoriesFeedScrollFilter
- (PXMemoriesFeedScrollFilter)initWithScrollViewController:(id)a3;
- (PXMemoriesFeedScrollFilterDelegate)delegate;
- (void)scrollViewControllerDidScroll:(id)a3;
- (void)setDelegate:(id)a3;
- (void)setSpec:(id)a3;
@end

@implementation PXMemoriesFeedScrollFilter

- (PXMemoriesFeedScrollFilterDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)scrollViewControllerDidScroll:(id)a3
{
  if (self->_delegateFlags.respondsToShouldRequestAdditionalContent)
  {
    v4 = a3;
    [v4 visibleRect];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;
    [v4 scrollViewContentSize];
    v14 = v13;

    v23.origin.x = v6;
    v23.origin.y = v8;
    v23.size.width = v10;
    v23.size.height = v12;
    if (v14 - CGRectGetMaxY(v23) < self->_additionalContentThreshold)
    {
      v21 = [MEMORY[0x1E695DF00] date];
      v15 = [(PXMemoriesFeedScrollFilter *)self _lastAdditionalContentRequestDate];
      if (!v15 || (v16 = v15, -[PXMemoriesFeedScrollFilter _lastAdditionalContentRequestDate](self, "_lastAdditionalContentRequestDate"), v17 = objc_claimAutoreleasedReturnValue(), [v21 timeIntervalSinceDate:v17], v19 = v18, v17, v16, v19 > 1.0))
      {
        [(PXMemoriesFeedScrollFilter *)self _setLastAdditionalContentRequestDate:v21];
        v20 = [(PXMemoriesFeedScrollFilter *)self delegate];
        [v20 scrollFilterShouldRequestAdditionalContent:self];
      }
    }
  }
}

- (void)setSpec:(id)a3
{
  v5 = a3;
  if (self->_spec != v5)
  {
    v7 = v5;
    objc_storeStrong(&self->_spec, a3);
    [(PXMemoriesSpec *)v7 feedAdditionalContentThreshold];
    v5 = v7;
    self->_additionalContentThreshold = v6;
  }
}

- (void)setDelegate:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_delegate, obj);
    self->_delegateFlags.respondsToShouldRequestAdditionalContent = objc_opt_respondsToSelector() & 1;
  }
}

- (PXMemoriesFeedScrollFilter)initWithScrollViewController:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = PXMemoriesFeedScrollFilter;
  v6 = [(PXMemoriesFeedScrollFilter *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_scrollViewController, a3);
    [(PXScrollViewController *)v7->_scrollViewController registerObserver:v7];
  }

  return v7;
}

@end