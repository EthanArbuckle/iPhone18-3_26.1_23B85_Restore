@interface WPLinkFilteringData
- (NSDictionary)scopedQueryParameters;
- (WPLinkFilteringData)initWithQueryParameters:(id)parameters;
- (WPLinkFilteringData)initWithQueryParameters:(id)parameters domains:(id)domains paths:(id)paths;
- (WPLinkFilteringData)initWithRules:(id)rules;
@end

@implementation WPLinkFilteringData

- (WPLinkFilteringData)initWithQueryParameters:(id)parameters
{
  v24 = *MEMORY[0x277D85DE8];
  parametersCopy = parameters;
  v22.receiver = self;
  v22.super_class = WPLinkFilteringData;
  v5 = [(WPLinkFilteringData *)&v22 init];
  if (v5)
  {
    v6 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(parametersCopy, "count")}];
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v7 = parametersCopy;
    v8 = [v7 countByEnumeratingWithState:&v18 objects:v23 count:16];
    if (v8)
    {
      v9 = *v19;
      do
      {
        v10 = 0;
        do
        {
          if (*v19 != v9)
          {
            objc_enumerationMutation(v7);
          }

          v11 = *(*(&v18 + 1) + 8 * v10);
          v12 = [WPLinkFilteringRule alloc];
          v13 = [(WPLinkFilteringRule *)v12 initWithQueryParameter:v11 domain:&stru_2882BDF38 path:&stru_2882BDF38, v18];
          [(NSArray *)v6 addObject:v13];

          ++v10;
        }

        while (v8 != v10);
        v8 = [v7 countByEnumeratingWithState:&v18 objects:v23 count:16];
      }

      while (v8);
    }

    rules = v5->_rules;
    v5->_rules = v6;

    v15 = v5;
  }

  v16 = *MEMORY[0x277D85DE8];
  return v5;
}

- (WPLinkFilteringData)initWithQueryParameters:(id)parameters domains:(id)domains paths:(id)paths
{
  parametersCopy = parameters;
  domainsCopy = domains;
  pathsCopy = paths;
  v25.receiver = self;
  v25.super_class = WPLinkFilteringData;
  v11 = [(WPLinkFilteringData *)&v25 init];
  if (v11)
  {
    v12 = [parametersCopy count];
    if (v12 != [domainsCopy count] || (v13 = objc_msgSend(parametersCopy, "count"), v13 != objc_msgSend(pathsCopy, "count")))
    {
      __assert_rtn("[WPLinkFilteringData initWithQueryParameters:domains:paths:]", "WPLinkFilteringData.mm", 72, "queryParameters.count == domains.count && queryParameters.count == paths.count");
    }

    v14 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(parametersCopy, "count")}];
    for (i = 0; ; i = v16 + 1)
    {
      v16 = i;
      if ([parametersCopy count] <= i)
      {
        break;
      }

      v17 = [WPLinkFilteringRule alloc];
      v18 = [parametersCopy objectAtIndexedSubscript:i];
      v19 = [domainsCopy objectAtIndexedSubscript:v16];
      v20 = [pathsCopy objectAtIndexedSubscript:v16];
      v21 = [(WPLinkFilteringRule *)v17 initWithQueryParameter:v18 domain:v19 path:v20];
      [(NSArray *)v14 addObject:v21];
    }

    rules = v11->_rules;
    v11->_rules = v14;

    v23 = v11;
  }

  return v11;
}

- (WPLinkFilteringData)initWithRules:(id)rules
{
  rulesCopy = rules;
  v10.receiver = self;
  v10.super_class = WPLinkFilteringData;
  v6 = [(WPLinkFilteringData *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_rules, rules);
    v8 = v7;
  }

  return v7;
}

- (NSDictionary)scopedQueryParameters
{
  v31 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v4 = self->_rules;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v5)
  {
    v6 = *v27;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v27 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v26 + 1) + 8 * i);
        queryParameter = [v8 queryParameter];
        v10 = [v3 objectForKey:queryParameter];
        v11 = v10 == 0;

        if (v11)
        {
          v12 = objc_alloc_init(WPLinkFilteringConditionals);
          queryParameter2 = [v8 queryParameter];
          [v3 setObject:v12 forKey:queryParameter2];
        }

        queryParameter3 = [v8 queryParameter];
        v15 = [v3 objectForKey:queryParameter3];

        domain = [v8 domain];
        v17 = [domain length] == 0;

        if (!v17)
        {
          domains = [v15 domains];
          domain2 = [v8 domain];
          [domains addObject:domain2];
        }

        path = [v8 path];
        v21 = [path length] == 0;

        if (!v21)
        {
          paths = [v15 paths];
          path2 = [v8 path];
          [paths addObject:path2];
        }
      }

      v5 = [(NSArray *)v4 countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v5);
  }

  v24 = *MEMORY[0x277D85DE8];

  return v3;
}

@end