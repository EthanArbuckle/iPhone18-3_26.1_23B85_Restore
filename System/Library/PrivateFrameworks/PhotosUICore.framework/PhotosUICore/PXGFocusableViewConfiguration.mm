@interface PXGFocusableViewConfiguration
- (BOOL)isEqual:(id)equal;
- (PXGFocusableViewConfiguration)initWithConfiguration:(id)configuration;
- (PXGFocusableViewDelegate)delegate;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
@end

@implementation PXGFocusableViewConfiguration

- (PXGFocusableViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());

  return [v4 initWithConfiguration:self];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v11 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      delegate = [(PXGFocusableViewConfiguration *)self delegate];
      delegate2 = [(PXGFocusableViewConfiguration *)v5 delegate];
      if (delegate == delegate2 && (v8 = [(PXGFocusableViewConfiguration *)self focusability], v8 == [(PXGFocusableViewConfiguration *)v5 focusability]))
      {
        debugName = [(PXGFocusableViewConfiguration *)self debugName];
        debugName2 = [(PXGFocusableViewConfiguration *)v5 debugName];
        if (debugName == debugName2)
        {
          v11 = 1;
        }

        else
        {
          v11 = [debugName isEqual:debugName2];
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
  delegate = [(PXGFocusableViewConfiguration *)self delegate];

  v4 = delegate ^ (2 * [(PXGFocusableViewConfiguration *)self focusability]);
  debugName = [(PXGFocusableViewConfiguration *)self debugName];
  v6 = v4 ^ (4 * [debugName hash]);

  return v6;
}

- (PXGFocusableViewConfiguration)initWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v10.receiver = self;
  v10.super_class = PXGFocusableViewConfiguration;
  v5 = [(PXGFocusableViewConfiguration *)&v10 init];
  if (v5)
  {
    delegate = [configurationCopy delegate];
    objc_storeWeak(&v5->_delegate, delegate);

    v5->_focusability = [configurationCopy focusability];
    debugName = [configurationCopy debugName];
    debugName = v5->_debugName;
    v5->_debugName = debugName;
  }

  return v5;
}

@end