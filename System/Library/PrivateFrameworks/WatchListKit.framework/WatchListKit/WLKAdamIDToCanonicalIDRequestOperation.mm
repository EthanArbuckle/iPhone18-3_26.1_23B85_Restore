@interface WLKAdamIDToCanonicalIDRequestOperation
- (WLKAdamIDToCanonicalIDRequestOperation)initWithAdamId:(id)a3;
- (void)processResponse;
@end

@implementation WLKAdamIDToCanonicalIDRequestOperation

- (WLKAdamIDToCanonicalIDRequestOperation)initWithAdamId:(id)a3
{
  v16[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v16[0] = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:1];
  v6 = [v5 componentsJoinedByString:{@", "}];

  v14 = @"ids";
  v15 = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v15 forKeys:&v14 count:1];
  v8 = [WLKURLRequestProperties requestPropertiesWithEndpoint:@"contents/lookup" queryParameters:v7 httpMethod:0 headers:0 caller:0 timeout:0 apiVersion:&unk_288222CF8 options:0];
  v13.receiver = self;
  v13.super_class = WLKAdamIDToCanonicalIDRequestOperation;
  v9 = [(WLKUTSNetworkRequestOperation *)&v13 initWithRequestProperties:v8];
  v10 = v9;
  if (v9)
  {
    [(WLKAdamIDToCanonicalIDRequestOperation *)v9 setAdamId:v4];
  }

  v11 = *MEMORY[0x277D85DE8];
  return v10;
}

- (void)processResponse
{
  v3 = [(WLKUTSNetworkRequestOperation *)self responseDictionary];
  if (v3)
  {
    v8 = v3;
    v4 = [v3 wlk_dictionaryForKey:@"content"];
    if (v4)
    {
      v5 = [(WLKAdamIDToCanonicalIDRequestOperation *)self adamId];
      v6 = [v4 wlk_dictionaryForKey:v5];

      if (v6)
      {
        v7 = [[WLKAdamIDToCanonicalIDResponse alloc] initWithDictionary:v6];
        [(WLKAdamIDToCanonicalIDRequestOperation *)self setResponse:v7];
      }
    }

    v3 = v8;
  }
}

@end