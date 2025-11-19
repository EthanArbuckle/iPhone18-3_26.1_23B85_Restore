@interface WLKCanonicalPlayablesSiriRequestOperation
- (WLKCanonicalPlayablesSiriRequestOperation)initWithSportsEventID:(id)a3 caller:(id)a4;
- (WLKCanonicalPlayablesSiriRequestOperation)initWithStatsID:(id)a3 caller:(id)a4;
- (void)processResponse;
@end

@implementation WLKCanonicalPlayablesSiriRequestOperation

- (WLKCanonicalPlayablesSiriRequestOperation)initWithStatsID:(id)a3 caller:(id)a4
{
  v21[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v21[0] = v6;
  v7 = MEMORY[0x277CBEA60];
  v8 = a4;
  v9 = [v7 arrayWithObjects:v21 count:1];
  v10 = [v9 componentsJoinedByString:{@", "}];

  v19 = @"statsIds";
  v20 = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v20 forKeys:&v19 count:1];
  v12 = [WLKURLRequestProperties requestPropertiesWithEndpoint:@"/siri/sports-tune-in" queryParameters:v11 httpMethod:@"GET" httpBody:0 headers:0 caller:v8 timeout:0 apiVersion:&unk_288222D10 options:0];

  v18.receiver = self;
  v18.super_class = WLKCanonicalPlayablesSiriRequestOperation;
  v13 = [(WLKUTSNetworkRequestOperation *)&v18 initWithRequestProperties:v12];
  if (v13)
  {
    v14 = [v6 copy];
    statsID = v13->_statsID;
    v13->_statsID = v14;
  }

  v16 = *MEMORY[0x277D85DE8];
  return v13;
}

- (WLKCanonicalPlayablesSiriRequestOperation)initWithSportsEventID:(id)a3 caller:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [@"/sporting-events/{sportingEventId}" stringByReplacingOccurrencesOfString:@"{sportingEventId}" withString:v6];
  v9 = [WLKURLRequestProperties requestPropertiesWithEndpoint:v8 queryParameters:0 httpMethod:@"GET" httpBody:0 headers:0 caller:v7 timeout:0 apiVersion:&unk_288222D10 options:0];

  v14.receiver = self;
  v14.super_class = WLKCanonicalPlayablesSiriRequestOperation;
  v10 = [(WLKUTSNetworkRequestOperation *)&v14 initWithRequestProperties:v9];
  if (v10)
  {
    v11 = [v6 copy];
    sportsEventID = v10->_sportsEventID;
    v10->_sportsEventID = v11;
  }

  return v10;
}

- (void)processResponse
{
  v10 = objc_alloc_init(WLKDictionaryResponseProcessor);
  if (self->_statsID)
  {
    [(WLKDictionaryResponseProcessor *)v10 setObjectClass:objc_opt_class()];
    v3 = [(WLKNetworkRequestOperation *)self data];
    v4 = [(WLKDictionaryResponseProcessor *)v10 processResponseData:v3 error:0];

    v5 = [WLKCanonicalPlayablesResponse alloc];
    v6 = [v4 dictionary];
    v7 = [(WLKCanonicalPlayablesResponse *)v5 initWithSiriResponse:v6 statsID:self->_statsID];
    response = self->_response;
    self->_response = v7;
  }

  else
  {
    [(WLKDictionaryResponseProcessor *)v10 setObjectClass:objc_opt_class()];
    v4 = [(WLKNetworkRequestOperation *)self data];
    v9 = [(WLKDictionaryResponseProcessor *)v10 processResponseData:v4 error:0];
    v6 = self->_response;
    self->_response = v9;
  }
}

@end