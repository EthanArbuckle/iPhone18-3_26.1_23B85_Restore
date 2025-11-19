@interface WLKSiriBestPlayableForStatsIDsOperation
- (WLKSiriBestPlayableForStatsIDsOperation)initWithStatsIDs:(id)a3 caller:(id)a4;
- (void)processResponse;
@end

@implementation WLKSiriBestPlayableForStatsIDsOperation

- (WLKSiriBestPlayableForStatsIDsOperation)initWithStatsIDs:(id)a3 caller:(id)a4
{
  v38 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = MEMORY[0x277CBE660];
  if (!v5)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The statsIDs parameter must not be nil."];
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [MEMORY[0x277CBEAD8] raise:*v7 format:@"The statsIDs parameter must be an array."];
  }

  if (![v5 count])
  {
    [MEMORY[0x277CBEAD8] raise:*v7 format:@"The statsIDs parameter must not be an empty array."];
  }

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v8 = v5;
  v9 = [v8 countByEnumeratingWithState:&v30 objects:v37 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v31;
    v12 = *v7;
    do
    {
      v13 = 0;
      do
      {
        if (*v31 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v14 = *(*(&v30 + 1) + 8 * v13);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          [MEMORY[0x277CBEAD8] raise:v12 format:@"The statsIDs values must all be strings."];
        }

        ++v13;
      }

      while (v10 != v13);
      v10 = [v8 countByEnumeratingWithState:&v30 objects:v37 count:16];
    }

    while (v10);
  }

  v15 = MEMORY[0x277CCAC98];
  v16 = NSStringFromSelector(sel_self);
  v17 = [v15 sortDescriptorWithKey:v16 ascending:1];

  v36 = v17;
  v18 = [MEMORY[0x277CBEA60] arrayWithObjects:&v36 count:1];
  v19 = [v8 sortedArrayUsingDescriptors:v18];

  v34 = @"ids";
  v20 = [v19 componentsJoinedByString:{@", "}];
  v35 = v20;
  v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v35 forKeys:&v34 count:1];
  v22 = [WLKURLRequestProperties requestPropertiesWithEndpoint:@"siri/bestPlayableForStatsIds" queryParameters:v21 httpMethod:0 caller:v6];

  v29.receiver = self;
  v29.super_class = WLKSiriBestPlayableForStatsIDsOperation;
  v23 = [(WLKUTSNetworkRequestOperation *)&v29 initWithRequestProperties:v22];
  if (v23)
  {
    v24 = [v8 copy];
    statsIDs = v23->_statsIDs;
    v23->_statsIDs = v24;
  }

  v26 = *MEMORY[0x277D85DE8];
  return v23;
}

- (void)processResponse
{
  v6 = objc_alloc_init(WLKDictionaryResponseProcessor);
  [(WLKDictionaryResponseProcessor *)v6 setObjectClass:objc_opt_class()];
  v3 = [(WLKNetworkRequestOperation *)self data];
  v4 = [(WLKDictionaryResponseProcessor *)v6 processResponseData:v3 error:0];
  response = self->_response;
  self->_response = v4;
}

@end