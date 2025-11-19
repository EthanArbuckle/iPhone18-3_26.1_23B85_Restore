@interface PXGPageControlConfiguration
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)target;
@end

@implementation PXGPageControlConfiguration

- (id)target
{
  WeakRetained = objc_loadWeakRetained(&self->_target);

  return WeakRetained;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = v5;
      v9 = v5->_numberOfPages == self->_numberOfPages && v5->_currentPage == self->_currentPage && (WeakRetained = objc_loadWeakRetained(&v5->_target), v8 = objc_loadWeakRetained(&self->_target), v8, WeakRetained, WeakRetained == v8) && v6[5] == self->_action;
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(objc_opt_class());
  *(v4 + 2) = self->_numberOfPages;
  *(v4 + 3) = self->_currentPage;
  WeakRetained = objc_loadWeakRetained(&self->_target);
  objc_storeWeak(v4 + 4, WeakRetained);

  *(v4 + 5) = self->_action;
  return v4;
}

@end