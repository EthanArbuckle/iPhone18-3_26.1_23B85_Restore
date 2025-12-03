@interface STLocationStatusDomainDisplayNameTransformer
- (STLocationStatusDomainDisplayNameTransformer)initWithEntityResolver:(id)resolver;
- (id)transformedDataForData:(id)data domain:(unint64_t)domain;
@end

@implementation STLocationStatusDomainDisplayNameTransformer

- (STLocationStatusDomainDisplayNameTransformer)initWithEntityResolver:(id)resolver
{
  resolverCopy = resolver;
  v9.receiver = self;
  v9.super_class = STLocationStatusDomainDisplayNameTransformer;
  v6 = [(STLocationStatusDomainDisplayNameTransformer *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_entityResolver, resolver);
  }

  return v7;
}

- (id)transformedDataForData:(id)data domain:(unint64_t)domain
{
  dataCopy = data;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v7 = dataCopy;
  v8 = v7;
  v9 = v7;
  if (isKindOfClass)
  {
    attributions = [v7 attributions];
    v11 = [attributions bs_map:&__block_literal_global_2];
    if (self)
    {
      entityResolver = self->_entityResolver;
    }

    else
    {
      entityResolver = 0;
    }

    v13 = entityResolver;
    [(STAttributedEntityBatchResolving *)v13 resolveEntities:v11];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __78__STLocationStatusDomainDisplayNameTransformer_transformedDataForData_domain___block_invoke_2;
    v18[3] = &unk_279D35008;
    v19 = v13;
    v14 = v13;
    v15 = [attributions bs_map:v18];
    v9 = objc_alloc_init(MEMORY[0x277D6BA10]);
    activeDisplayModes = [v8 activeDisplayModes];

    [v9 setActiveDisplayModes:activeDisplayModes];
    [v9 setAttributions:v15];
  }

  return v9;
}

id __78__STLocationStatusDomainDisplayNameTransformer_transformedDataForData_domain___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 activityAttribution];
  v3 = [v2 attributedEntity];

  return v3;
}

id __78__STLocationStatusDomainDisplayNameTransformer_transformedDataForData_domain___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 activityAttribution];
  v5 = [v4 attributedEntity];
  v6 = [*(a1 + 32) resolveEntity:v5];
  v7 = [v6 attributedEntity];
  v8 = [v6 activeEntity];
  v9 = [v4 copyReplacingAttributedEntity:v7 activeEntity:v8];

  v10 = objc_alloc(MEMORY[0x277D6B9A8]);
  v11 = [v3 locationState];
  v12 = [v3 eligibleDisplayModes];

  v13 = [v10 initWithLocationState:v11 activityAttribution:v9 eligibleDisplayModes:v12];

  return v13;
}

@end