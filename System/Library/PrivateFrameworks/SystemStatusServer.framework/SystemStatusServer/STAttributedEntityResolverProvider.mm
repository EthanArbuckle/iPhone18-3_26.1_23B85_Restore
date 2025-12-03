@interface STAttributedEntityResolverProvider
- (STAttributedEntityResolverProvider)init;
- (STAttributedEntityResolverProvider)initWithIdentityResolver:(id)resolver;
- (id)resolverForPreferredLocalizations:(id)localizations;
- (void)setDynamicAttributions:(id)attributions;
@end

@implementation STAttributedEntityResolverProvider

- (STAttributedEntityResolverProvider)init
{
  v3 = objc_alloc_init(STExecutableIdentityResolver);
  v4 = [(STAttributedEntityResolverProvider *)self initWithIdentityResolver:v3];

  return v4;
}

- (STAttributedEntityResolverProvider)initWithIdentityResolver:(id)resolver
{
  resolverCopy = resolver;
  v11.receiver = self;
  v11.super_class = STAttributedEntityResolverProvider;
  v6 = [(STAttributedEntityResolverProvider *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_identityResolver, resolver);
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    entityResolversByLocalization = v7->_entityResolversByLocalization;
    v7->_entityResolversByLocalization = dictionary;
  }

  return v7;
}

- (void)setDynamicAttributions:(id)attributions
{
  attributionsCopy = attributions;
  if (![(NSArray *)self->_dynamicAttributions isEqualToArray:attributionsCopy])
  {
    v5 = [attributionsCopy copy];
    dynamicAttributions = self->_dynamicAttributions;
    self->_dynamicAttributions = v5;

    entityResolversByLocalization = self->_entityResolversByLocalization;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __61__STAttributedEntityResolverProvider_setDynamicAttributions___block_invoke;
    v8[3] = &unk_279D35570;
    v9 = attributionsCopy;
    [(NSMutableDictionary *)entityResolversByLocalization enumerateKeysAndObjectsUsingBlock:v8];
  }
}

- (id)resolverForPreferredLocalizations:(id)localizations
{
  localizationsCopy = localizations;
  if (self)
  {
    entityResolversByLocalization = self->_entityResolversByLocalization;
  }

  else
  {
    entityResolversByLocalization = 0;
  }

  v6 = entityResolversByLocalization;
  v7 = [(NSMutableDictionary *)v6 objectForKey:localizationsCopy];
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

    v7 = [(STAttributedEntityResolver *)v8 initWithPreferredLocalizations:localizationsCopy identityResolver:identityResolver];
    dynamicAttributions = [(STAttributedEntityResolverProvider *)self dynamicAttributions];
    [(STAttributedEntityResolver *)v7 setDynamicAttributions:dynamicAttributions];

    if (self)
    {
      v11 = self->_entityResolversByLocalization;
    }

    else
    {
      v11 = 0;
    }

    [(NSMutableDictionary *)v11 setObject:v7 forKey:localizationsCopy];
  }

  return v7;
}

@end