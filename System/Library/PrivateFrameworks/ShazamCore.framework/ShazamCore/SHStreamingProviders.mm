@interface SHStreamingProviders
- (SHStreamingProviders)initWithResponse:(id)a3;
- (id)availableBundleIdentifiers;
- (id)buildStreamingProvidersFromResponseArray:(id)a3;
- (id)providerNameForBundleID:(id)a3;
- (id)searchURLForBundleID:(id)a3 title:(id)a4 artist:(id)a5;
- (id)songURIForBundleID:(id)a3;
- (id)streamingProviderForBundleID:(id)a3;
- (int64_t)availableStreamingProviders;
@end

@implementation SHStreamingProviders

- (SHStreamingProviders)initWithResponse:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = SHStreamingProviders;
  v5 = [(SHStreamingProviders *)&v10 init];
  v6 = v5;
  if (v5)
  {
    v7 = [(SHStreamingProviders *)v5 buildStreamingProvidersFromResponseArray:v4];
    providersKeyedByBundleID = v6->_providersKeyedByBundleID;
    v6->_providersKeyedByBundleID = v7;
  }

  return v6;
}

- (id)buildStreamingProvidersFromResponseArray:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [MEMORY[0x277CBEB38] dictionary];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = v3;
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

        v10 = *(*(&v15 + 1) + 8 * i);
        v11 = [v10 objectForKeyedSubscript:{@"bundleIdentifier", v15}];
        [v4 setValue:v10 forKey:v11];
      }

      v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  v12 = [v4 copy];
  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

- (id)availableBundleIdentifiers
{
  v2 = MEMORY[0x277CBEB98];
  v3 = [(SHStreamingProviders *)self providersKeyedByBundleID];
  v4 = [v3 allKeys];
  v5 = [v2 setWithArray:v4];

  return v5;
}

- (int64_t)availableStreamingProviders
{
  v2 = [(SHStreamingProviders *)self providersKeyedByBundleID];
  v3 = [v2 count];

  return v3;
}

- (id)streamingProviderForBundleID:(id)a3
{
  v4 = a3;
  v5 = [(SHStreamingProviders *)self providersKeyedByBundleID];
  v6 = [v5 objectForKeyedSubscript:v4];

  return v6;
}

- (id)providerNameForBundleID:(id)a3
{
  v3 = [(SHStreamingProviders *)self streamingProviderForBundleID:a3];
  v4 = [v3 objectForKeyedSubscript:@"providerName"];

  return v4;
}

- (id)songURIForBundleID:(id)a3
{
  v3 = [(SHStreamingProviders *)self streamingProviderForBundleID:a3];
  v4 = [v3 objectForKeyedSubscript:@"songURI"];

  return v4;
}

- (id)searchURLForBundleID:(id)a3 title:(id)a4 artist:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = [(SHStreamingProviders *)self songURIForBundleID:a3];
  v11 = [[SHTokenizedURL alloc] initWithString:v10];
  [(SHTokenizedURL *)v11 updateToken:12 withValue:v9];

  [(SHTokenizedURL *)v11 updateToken:13 withValue:v8];
  v12 = [(SHTokenizedURL *)v11 URLRepresentation];

  return v12;
}

@end