@interface STAttributedEntityResolverProvider
- (STAttributedEntityResolverProvider)init;
- (STAttributedEntityResolverProvider)initWithIdentityResolver:(id)a3;
- (id)resolverForPreferredLocalizations:(id)a3;
- (void)setDynamicAttributions:(id)a3;
@end

@implementation STAttributedEntityResolverProvider

- (STAttributedEntityResolverProvider)init
{
  v3 = objc_alloc_init(STExecutableIdentityResolver);
  v4 = [(STAttributedEntityResolverProvider *)self initWithIdentityResolver:v3];

  return v4;
}

- (STAttributedEntityResolverProvider)initWithIdentityResolver:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = STAttributedEntityResolverProvider;
  v6 = [(STAttributedEntityResolverProvider *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_identityResolver, a3);
    v8 = [MEMORY[0x277CBEB38] dictionary];
    entityResolversByLocalization = v7->_entityResolversByLocalization;
    v7->_entityResolversByLocalization = v8;
  }

  return v7;
}

- (void)setDynamicAttributions:(id)a3
{
  v4 = a3;
  if (![(NSArray *)self->_dynamicAttributions isEqualToArray:v4])
  {
    v5 = [v4 copy];
    dynamicAttributions = self->_dynamicAttributions;
    self->_dynamicAttributions = v5;

    entityResolversByLocalization = self->_entityResolversByLocalization;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __61__STAttributedEntityResolverProvider_setDynamicAttributions___block_invoke;
    v8[3] = &unk_279D35570;
    v9 = v4;
    [(NSMutableDictionary *)entityResolversByLocalization enumerateKeysAndObjectsUsingBlock:v8];
  }
}

- (id)resolverForPreferredLocalizations:(id)a3
{
  v4 = a3;
  if (self)
  {
    entityResolversByLocalization = self->_entityResolversByLocalization;
  }

  else
  {
    entityResolversByLocalization = 0;
  }

  v6 = entityResolversByLocalization;
  v7 = [(NSMutableDictionary *)v6 objectForKey:v4];
  if (!v7)
  {
    v8 = [STAttributedEntityResolver alloc];
    if (self)
    {
      identityResolver = self->_identityResolver;
    }

    else
    {
      identityResolver = 0;
    }

    v7 = [(STAttributedEntityResolver *)v8 initWithPreferredLocalizations:v4 identityResolver:identityResolver];
    v10 = [(STAttributedEntityResolverProvider *)self dynamicAttributions];
    [(STAttributedEntityResolver *)v7 setDynamicAttributions:v10];

    if (self)
    {
      v11 = self->_entityResolversByLocalization;
    }

    else
    {
      v11 = 0;
    }

    [(NSMutableDictionary *)v11 setObject:v7 forKey:v4];
  }

  return v7;
}

@end