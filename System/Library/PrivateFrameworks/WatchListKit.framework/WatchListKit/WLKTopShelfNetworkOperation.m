@interface WLKTopShelfNetworkOperation
- (WLKTopShelfNetworkOperation)initWithEndPoint:(id)a3 queryParameters:(id)a4 ignoreCache:(BOOL)a5;
- (void)processResponse;
@end

@implementation WLKTopShelfNetworkOperation

- (WLKTopShelfNetworkOperation)initWithEndPoint:(id)a3 queryParameters:(id)a4 ignoreCache:(BOOL)a5
{
  if (a5)
  {
    v7 = 9;
  }

  else
  {
    v7 = 1;
  }

  v8 = MEMORY[0x277CCABB0];
  v9 = a4;
  v10 = a3;
  v11 = [v8 numberWithDouble:15.0];
  v12 = [WLKURLRequestProperties requestPropertiesWithEndpoint:v10 queryParameters:v9 httpMethod:0 headers:0 caller:0 timeout:v11 apiVersion:&unk_288222BA8 options:v7];

  v15.receiver = self;
  v15.super_class = WLKTopShelfNetworkOperation;
  v13 = [(WLKUTSNetworkRequestOperation *)&v15 initWithRequestProperties:v12];

  return v13;
}

- (void)processResponse
{
  v3 = [(WLKUTSNetworkRequestOperation *)self responseDictionary];
  payload = self->_payload;
  self->_payload = v3;

  MEMORY[0x2821F96F8]();
}

@end