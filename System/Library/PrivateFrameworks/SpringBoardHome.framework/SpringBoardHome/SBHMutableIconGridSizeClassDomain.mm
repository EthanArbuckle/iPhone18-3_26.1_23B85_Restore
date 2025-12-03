@interface SBHMutableIconGridSizeClassDomain
- (SBHIconGridSizeClassDomain)fallbackDomain;
- (SBHMutableIconGridSizeClassDomain)initWithGridSizeClasses:(id)classes order:(id)order fallbackDomain:(id)domain;
- (id)copyWithZone:(_NSZone *)zone;
- (void)registerIconGridSizeClass:(id)class info:(id)info;
- (void)registerIconGridSizeClasses:(id)classes;
@end

@implementation SBHMutableIconGridSizeClassDomain

- (SBHIconGridSizeClassDomain)fallbackDomain
{
  WeakRetained = objc_loadWeakRetained(&self->_fallbackDomain);

  return WeakRetained;
}

- (SBHMutableIconGridSizeClassDomain)initWithGridSizeClasses:(id)classes order:(id)order fallbackDomain:(id)domain
{
  classesCopy = classes;
  orderCopy = order;
  domainCopy = domain;
  v17.receiver = self;
  v17.super_class = SBHMutableIconGridSizeClassDomain;
  v11 = [(SBHIconGridSizeClassDomain *)&v17 initWithGridSizeClasses:classesCopy order:orderCopy fallbackDomain:domainCopy];
  if (v11)
  {
    v12 = [classesCopy mutableCopy];
    registeredClasses = v11->_registeredClasses;
    v11->_registeredClasses = v12;

    v14 = [orderCopy mutableCopy];
    registeredOrder = v11->_registeredOrder;
    v11->_registeredOrder = v14;

    objc_storeWeak(&v11->_fallbackDomain, domainCopy);
  }

  return v11;
}

- (void)registerIconGridSizeClass:(id)class info:(id)info
{
  registeredClasses = self->_registeredClasses;
  classCopy = class;
  v7 = [info copy];
  [(NSMutableDictionary *)registeredClasses setObject:v7 forKey:classCopy];

  [(NSMutableArray *)self->_registeredOrder addObject:classCopy];
}

- (void)registerIconGridSizeClasses:(id)classes
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __65__SBHMutableIconGridSizeClassDomain_registerIconGridSizeClasses___block_invoke;
  v3[3] = &unk_1E808CA10;
  v3[4] = self;
  [classes enumerateKeysAndObjectsUsingBlock:v3];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [SBHImmutableIconGridSizeClassDomain alloc];

  return [(SBHIconGridSizeClassDomain *)v4 initWithIconGridSizeClassDomain:self];
}

@end