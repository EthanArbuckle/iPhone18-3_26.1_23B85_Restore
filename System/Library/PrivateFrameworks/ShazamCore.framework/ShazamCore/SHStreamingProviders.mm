@interface SHStreamingProviders
- (SHStreamingProviders)initWithResponse:(id)response;
- (id)availableBundleIdentifiers;
- (id)buildStreamingProvidersFromResponseArray:(id)array;
- (id)providerNameForBundleID:(id)d;
- (id)searchURLForBundleID:(id)d title:(id)title artist:(id)artist;
- (id)songURIForBundleID:(id)d;
- (id)streamingProviderForBundleID:(id)d;
- (int64_t)availableStreamingProviders;
@end

@implementation SHStreamingProviders

- (SHStreamingProviders)initWithResponse:(id)response
{
  responseCopy = response;
  v10.receiver = self;
  v10.super_class = SHStreamingProviders;
  v5 = [(SHStreamingProviders *)&v10 init];
  v6 = v5;
  if (v5)
  {
    v7 = [(SHStreamingProviders *)v5 buildStreamingProvidersFromResponseArray:responseCopy];
    providersKeyedByBundleID = v6->_providersKeyedByBundleID;
    v6->_providersKeyedByBundleID = v7;
  }

  return v6;
}

- (id)buildStreamingProvidersFromResponseArray:(id)array
{
  v20 = *MEMORY[0x277D85DE8];
  arrayCopy = array;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = arrayCopy;
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
        [dictionary setValue:v10 forKey:v11];
      }

      v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  v12 = [dictionary copy];
  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

- (id)availableBundleIdentifiers
{
  v2 = MEMORY[0x277CBEB98];
  providersKeyedByBundleID = [(SHStreamingProviders *)self providersKeyedByBundleID];
  allKeys = [providersKeyedByBundleID allKeys];
  v5 = [v2 setWithArray:allKeys];

  return v5;
}

- (int64_t)availableStreamingProviders
{
  providersKeyedByBundleID = [(SHStreamingProviders *)self providersKeyedByBundleID];
  v3 = [providersKeyedByBundleID count];

  return v3;
}

- (id)streamingProviderForBundleID:(id)d
{
  dCopy = d;
  providersKeyedByBundleID = [(SHStreamingProviders *)self providersKeyedByBundleID];
  v6 = [providersKeyedByBundleID objectForKeyedSubscript:dCopy];

  return v6;
}

- (id)providerNameForBundleID:(id)d
{
  v3 = [(SHStreamingProviders *)self streamingProviderForBundleID:d];
  v4 = [v3 objectForKeyedSubscript:@"providerName"];

  return v4;
}

- (id)songURIForBundleID:(id)d
{
  v3 = [(SHStreamingProviders *)self streamingProviderForBundleID:d];
  v4 = [v3 objectForKeyedSubscript:@"songURI"];

  return v4;
}

- (id)searchURLForBundleID:(id)d title:(id)title artist:(id)artist
{
  artistCopy = artist;
  titleCopy = title;
  v10 = [(SHStreamingProviders *)self songURIForBundleID:d];
  v11 = [[SHTokenizedURL alloc] initWithString:v10];
  [(SHTokenizedURL *)v11 updateToken:12 withValue:titleCopy];

  [(SHTokenizedURL *)v11 updateToken:13 withValue:artistCopy];
  uRLRepresentation = [(SHTokenizedURL *)v11 URLRepresentation];

  return uRLRepresentation;
}

@end