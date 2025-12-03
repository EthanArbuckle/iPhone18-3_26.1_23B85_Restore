@interface SBHImmutableIconGridSizeClassDomain
- (SBHImmutableIconGridSizeClassDomain)initWithGridSizeClasses:(id)classes order:(id)order fallbackDomain:(id)domain;
- (id)fallbackDomain;
@end

@implementation SBHImmutableIconGridSizeClassDomain

- (id)fallbackDomain
{
  WeakRetained = objc_loadWeakRetained(&self->_fallbackDomain);

  return WeakRetained;
}

- (SBHImmutableIconGridSizeClassDomain)initWithGridSizeClasses:(id)classes order:(id)order fallbackDomain:(id)domain
{
  classesCopy = classes;
  orderCopy = order;
  domainCopy = domain;
  v17.receiver = self;
  v17.super_class = SBHImmutableIconGridSizeClassDomain;
  v11 = [(SBHIconGridSizeClassDomain *)&v17 initWithGridSizeClasses:classesCopy order:orderCopy fallbackDomain:domainCopy];
  if (v11)
  {
    v12 = [classesCopy copy];
    registeredClasses = v11->_registeredClasses;
    v11->_registeredClasses = v12;

    v14 = [orderCopy copy];
    registeredOrder = v11->_registeredOrder;
    v11->_registeredOrder = v14;

    objc_storeWeak(&v11->_fallbackDomain, domainCopy);
  }

  return v11;
}

@end