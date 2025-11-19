@interface PXGScrollViewContainerConfiguration
- (BOOL)isEqual:(id)a3;
- (PXGScrollViewContainerDelegate)delegate;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation PXGScrollViewContainerConfiguration

- (PXGScrollViewContainerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [v5 scrollViewModel];
    v7 = [(PXGScrollViewContainerConfiguration *)self scrollViewModel];
    if (v6 == v7 || [v6 isEqual:v7])
    {
      v8 = [v5 delegate];
      v9 = [(PXGScrollViewContainerConfiguration *)self delegate];
      if (v8 == v9)
      {
        v10 = 1;
      }

      else
      {
        v10 = [v8 isEqual:v9];
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

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(objc_opt_class());
  objc_storeStrong(v4 + 1, self->_scrollViewModel);
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  objc_storeWeak(v4 + 2, WeakRetained);

  return v4;
}

@end