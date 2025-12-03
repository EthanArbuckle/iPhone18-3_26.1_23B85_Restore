@interface PXMemoriesFeedScrollFilter
- (PXMemoriesFeedScrollFilter)initWithScrollViewController:(id)controller;
- (PXMemoriesFeedScrollFilterDelegate)delegate;
- (void)scrollViewControllerDidScroll:(id)scroll;
- (void)setDelegate:(id)delegate;
- (void)setSpec:(id)spec;
@end

@implementation PXMemoriesFeedScrollFilter

- (PXMemoriesFeedScrollFilterDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)scrollViewControllerDidScroll:(id)scroll
{
  if (self->_delegateFlags.respondsToShouldRequestAdditionalContent)
  {
    scrollCopy = scroll;
    [scrollCopy visibleRect];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;
    [scrollCopy scrollViewContentSize];
    v14 = v13;

    v23.origin.x = v6;
    v23.origin.y = v8;
    v23.size.width = v10;
    v23.size.height = v12;
    if (v14 - CGRectGetMaxY(v23) < self->_additionalContentThreshold)
    {
      date = [MEMORY[0x1E695DF00] date];
      _lastAdditionalContentRequestDate = [(PXMemoriesFeedScrollFilter *)self _lastAdditionalContentRequestDate];
      if (!_lastAdditionalContentRequestDate || (v16 = _lastAdditionalContentRequestDate, -[PXMemoriesFeedScrollFilter _lastAdditionalContentRequestDate](self, "_lastAdditionalContentRequestDate"), v17 = objc_claimAutoreleasedReturnValue(), [date timeIntervalSinceDate:v17], v19 = v18, v17, v16, v19 > 1.0))
      {
        [(PXMemoriesFeedScrollFilter *)self _setLastAdditionalContentRequestDate:date];
        delegate = [(PXMemoriesFeedScrollFilter *)self delegate];
        [delegate scrollFilterShouldRequestAdditionalContent:self];
      }
    }
  }
}

- (void)setSpec:(id)spec
{
  specCopy = spec;
  if (self->_spec != specCopy)
  {
    v7 = specCopy;
    objc_storeStrong(&self->_spec, spec);
    [(PXMemoriesSpec *)v7 feedAdditionalContentThreshold];
    specCopy = v7;
    self->_additionalContentThreshold = v6;
  }
}

- (void)setDelegate:(id)delegate
{
  obj = delegate;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_delegate, obj);
    self->_delegateFlags.respondsToShouldRequestAdditionalContent = objc_opt_respondsToSelector() & 1;
  }
}

- (PXMemoriesFeedScrollFilter)initWithScrollViewController:(id)controller
{
  controllerCopy = controller;
  v9.receiver = self;
  v9.super_class = PXMemoriesFeedScrollFilter;
  v6 = [(PXMemoriesFeedScrollFilter *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_scrollViewController, controller);
    [(PXScrollViewController *)v7->_scrollViewController registerObserver:v7];
  }

  return v7;
}

@end