@interface PXGScrollViewContainerConfiguration
- (BOOL)isEqual:(id)equal;
- (PXGScrollViewContainerDelegate)delegate;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation PXGScrollViewContainerConfiguration

- (PXGScrollViewContainerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    scrollViewModel = [v5 scrollViewModel];
    scrollViewModel2 = [(PXGScrollViewContainerConfiguration *)self scrollViewModel];
    if (scrollViewModel == scrollViewModel2 || [scrollViewModel isEqual:scrollViewModel2])
    {
      delegate = [v5 delegate];
      delegate2 = [(PXGScrollViewContainerConfiguration *)self delegate];
      if (delegate == delegate2)
      {
        v10 = 1;
      }

      else
      {
        v10 = [delegate isEqual:delegate2];
      }
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(objc_opt_class());
  objc_storeStrong(v4 + 1, self->_scrollViewModel);
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  objc_storeWeak(v4 + 2, WeakRetained);

  return v4;
}

@end