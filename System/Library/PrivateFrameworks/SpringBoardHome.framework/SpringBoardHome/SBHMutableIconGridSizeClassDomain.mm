@interface SBHMutableIconGridSizeClassDomain
- (SBHIconGridSizeClassDomain)fallbackDomain;
- (SBHMutableIconGridSizeClassDomain)initWithGridSizeClasses:(id)a3 order:(id)a4 fallbackDomain:(id)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (void)registerIconGridSizeClass:(id)a3 info:(id)a4;
- (void)registerIconGridSizeClasses:(id)a3;
@end

@implementation SBHMutableIconGridSizeClassDomain

- (SBHIconGridSizeClassDomain)fallbackDomain
{
  WeakRetained = objc_loadWeakRetained(&self->_fallbackDomain);

  return WeakRetained;
}

- (SBHMutableIconGridSizeClassDomain)initWithGridSizeClasses:(id)a3 order:(id)a4 fallbackDomain:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v17.receiver = self;
  v17.super_class = SBHMutableIconGridSizeClassDomain;
  v11 = [(SBHIconGridSizeClassDomain *)&v17 initWithGridSizeClasses:v8 order:v9 fallbackDomain:v10];
  if (v11)
  {
    v12 = [v8 mutableCopy];
    registeredClasses = v11->_registeredClasses;
    v11->_registeredClasses = v12;

    v14 = [v9 mutableCopy];
    registeredOrder = v11->_registeredOrder;
    v11->_registeredOrder = v14;

    objc_storeWeak(&v11->_fallbackDomain, v10);
  }

  return v11;
}

- (void)registerIconGridSizeClass:(id)a3 info:(id)a4
{
  registeredClasses = self->_registeredClasses;
  v8 = a3;
  v7 = [a4 copy];
  [(NSMutableDictionary *)registeredClasses setObject:v7 forKey:v8];

  [(NSMutableArray *)self->_registeredOrder addObject:v8];
}

- (void)registerIconGridSizeClasses:(id)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __65__SBHMutableIconGridSizeClassDomain_registerIconGridSizeClasses___block_invoke;
  v3[3] = &unk_1E808CA10;
  v3[4] = self;
  [a3 enumerateKeysAndObjectsUsingBlock:v3];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [SBHImmutableIconGridSizeClassDomain alloc];

  return [(SBHIconGridSizeClassDomain *)v4 initWithIconGridSizeClassDomain:self];
}

@end