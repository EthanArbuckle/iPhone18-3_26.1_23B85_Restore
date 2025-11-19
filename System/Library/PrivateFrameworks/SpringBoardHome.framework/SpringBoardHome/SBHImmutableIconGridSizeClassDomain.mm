@interface SBHImmutableIconGridSizeClassDomain
- (SBHImmutableIconGridSizeClassDomain)initWithGridSizeClasses:(id)a3 order:(id)a4 fallbackDomain:(id)a5;
- (id)fallbackDomain;
@end

@implementation SBHImmutableIconGridSizeClassDomain

- (id)fallbackDomain
{
  WeakRetained = objc_loadWeakRetained(&self->_fallbackDomain);

  return WeakRetained;
}

- (SBHImmutableIconGridSizeClassDomain)initWithGridSizeClasses:(id)a3 order:(id)a4 fallbackDomain:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v17.receiver = self;
  v17.super_class = SBHImmutableIconGridSizeClassDomain;
  v11 = [(SBHIconGridSizeClassDomain *)&v17 initWithGridSizeClasses:v8 order:v9 fallbackDomain:v10];
  if (v11)
  {
    v12 = [v8 copy];
    registeredClasses = v11->_registeredClasses;
    v11->_registeredClasses = v12;

    v14 = [v9 copy];
    registeredOrder = v11->_registeredOrder;
    v11->_registeredOrder = v14;

    objc_storeWeak(&v11->_fallbackDomain, v10);
  }

  return v11;
}

@end