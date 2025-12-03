@interface TRIActiveSysctlFactorsProvider
- (TRIActiveSysctlFactorsProvider)initWithActiveNamespacesProvider:(id)provider factorLevelsRetriever:(id)retriever;
- (id)activeSysctlFactorLevels;
@end

@implementation TRIActiveSysctlFactorsProvider

- (TRIActiveSysctlFactorsProvider)initWithActiveNamespacesProvider:(id)provider factorLevelsRetriever:(id)retriever
{
  providerCopy = provider;
  retrieverCopy = retriever;
  v12.receiver = self;
  v12.super_class = TRIActiveSysctlFactorsProvider;
  v9 = [(TRIActiveSysctlFactorsProvider *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_namespacesProvider, provider);
    objc_storeStrong(&v10->_factorLevelsRetriever, retriever);
  }

  return v10;
}

- (id)activeSysctlFactorLevels
{
  v20 = *MEMORY[0x277D85DE8];
  activeSysctlNamespaces = [(TRIActiveSysctlNamespacesProviding *)self->_namespacesProvider activeSysctlNamespaces];
  v4 = objc_opt_new();
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = activeSysctlNamespaces;
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [(TRINamespaceFactorLevelsRetrieving *)self->_factorLevelsRetriever factorLevelsForNamespaceName:*(*(&v15 + 1) + 8 * i), v15];
        [v4 addObjectsFromArray:v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  v11 = [v4 copy];
  v12 = [v11 _pas_mappedArrayWithTransform:&__block_literal_global_25];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

TRISysctlFactorLevel *__58__TRIActiveSysctlFactorsProvider_activeSysctlFactorLevels__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 level];
  v4 = [v3 levelOneOfCase];

  if (v4 == 13)
  {
    v5 = [TRISysctlFactorLevel alloc];
    v6 = [v2 factor];
    v7 = [v6 name];
    v8 = [v2 level];
    v9 = -[TRISysctlFactorLevel initWithSysctlName:level:](v5, "initWithSysctlName:level:", v7, [v8 longValue]);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

@end