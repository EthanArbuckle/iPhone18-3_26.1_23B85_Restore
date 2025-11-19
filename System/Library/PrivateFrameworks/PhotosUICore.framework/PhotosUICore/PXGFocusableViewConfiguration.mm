@interface PXGFocusableViewConfiguration
- (BOOL)isEqual:(id)a3;
- (PXGFocusableViewConfiguration)initWithConfiguration:(id)a3;
- (PXGFocusableViewDelegate)delegate;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
@end

@implementation PXGFocusableViewConfiguration

- (PXGFocusableViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc(objc_opt_class());

  return [v4 initWithConfiguration:self];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v11 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(PXGFocusableViewConfiguration *)self delegate];
      v7 = [(PXGFocusableViewConfiguration *)v5 delegate];
      if (v6 == v7 && (v8 = [(PXGFocusableViewConfiguration *)self focusability], v8 == [(PXGFocusableViewConfiguration *)v5 focusability]))
      {
        v9 = [(PXGFocusableViewConfiguration *)self debugName];
        v10 = [(PXGFocusableViewConfiguration *)v5 debugName];
        if (v9 == v10)
        {
          v11 = 1;
        }

        else
        {
          v11 = [v9 isEqual:v10];
        }
      }

      else
      {
        v11 = 0;
      }
    }

    else
    {
      v11 = 0;
    }
  }

  return v11;
}

- (unint64_t)hash
{
  v3 = [(PXGFocusableViewConfiguration *)self delegate];

  v4 = v3 ^ (2 * [(PXGFocusableViewConfiguration *)self focusability]);
  v5 = [(PXGFocusableViewConfiguration *)self debugName];
  v6 = v4 ^ (4 * [v5 hash]);

  return v6;
}

- (PXGFocusableViewConfiguration)initWithConfiguration:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = PXGFocusableViewConfiguration;
  v5 = [(PXGFocusableViewConfiguration *)&v10 init];
  if (v5)
  {
    v6 = [v4 delegate];
    objc_storeWeak(&v5->_delegate, v6);

    v5->_focusability = [v4 focusability];
    v7 = [v4 debugName];
    debugName = v5->_debugName;
    v5->_debugName = v7;
  }

  return v5;
}

@end