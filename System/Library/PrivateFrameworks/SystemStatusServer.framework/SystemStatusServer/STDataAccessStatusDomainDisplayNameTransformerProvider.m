@interface STDataAccessStatusDomainDisplayNameTransformerProvider
- (STDataAccessStatusDomainDisplayNameTransformerProvider)init;
- (STDataAccessStatusDomainDisplayNameTransformerProvider)initWithEntityResolverProvider:(id)a3;
- (id)dataTransformerForClient:(id)a3;
@end

@implementation STDataAccessStatusDomainDisplayNameTransformerProvider

- (STDataAccessStatusDomainDisplayNameTransformerProvider)init
{
  v3 = objc_alloc_init(STAttributedEntityResolverProvider);
  v4 = [(STDataAccessStatusDomainDisplayNameTransformerProvider *)self initWithEntityResolverProvider:v3];

  return v4;
}

- (STDataAccessStatusDomainDisplayNameTransformerProvider)initWithEntityResolverProvider:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = STDataAccessStatusDomainDisplayNameTransformerProvider;
  v6 = [(STDataAccessStatusDomainDisplayNameTransformerProvider *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_entityResolverProvider, a3);
    v8 = [MEMORY[0x277CBEB38] dictionary];
    transformersByLocalization = v7->_transformersByLocalization;
    v7->_transformersByLocalization = v8;
  }

  return v7;
}

- (id)dataTransformerForClient:(id)a3
{
  v4 = [a3 preferredLocalizations];
  if (self)
  {
    transformersByLocalization = self->_transformersByLocalization;
  }

  else
  {
    transformersByLocalization = 0;
  }

  v6 = transformersByLocalization;
  v7 = [(NSMutableDictionary *)v6 objectForKey:v4];
  if (!v7)
  {
    if (self)
    {
      entityResolverProvider = self->_entityResolverProvider;
    }

    else
    {
      entityResolverProvider = 0;
    }

    v9 = [(STAttributedEntityResolverProviding *)entityResolverProvider resolverForPreferredLocalizations:v4];
    v10 = [STDataAccessStatusDomainDisplayNameTransformer alloc];
    v11 = [v9 beginBatchResolutionSession];
    v7 = [(STDataAccessStatusDomainDisplayNameTransformer *)v10 initWithEntityResolver:v11];

    if (self)
    {
      v12 = self->_transformersByLocalization;
    }

    else
    {
      v12 = 0;
    }

    [(NSMutableDictionary *)v12 setObject:v7 forKey:v4];
  }

  return v7;
}

@end