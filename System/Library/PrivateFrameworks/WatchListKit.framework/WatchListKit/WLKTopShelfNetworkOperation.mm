@interface WLKTopShelfNetworkOperation
- (WLKTopShelfNetworkOperation)initWithEndPoint:(id)point queryParameters:(id)parameters ignoreCache:(BOOL)cache;
- (void)processResponse;
@end

@implementation WLKTopShelfNetworkOperation

- (WLKTopShelfNetworkOperation)initWithEndPoint:(id)point queryParameters:(id)parameters ignoreCache:(BOOL)cache
{
  if (cache)
  {
    v7 = 9;
  }

  else
  {
    v7 = 1;
  }

  v8 = MEMORY[0x277CCABB0];
  parametersCopy = parameters;
  pointCopy = point;
  v11 = [v8 numberWithDouble:15.0];
  v12 = [WLKURLRequestProperties requestPropertiesWithEndpoint:pointCopy queryParameters:parametersCopy httpMethod:0 headers:0 caller:0 timeout:v11 apiVersion:&unk_288222BA8 options:v7];

  v15.receiver = self;
  v15.super_class = WLKTopShelfNetworkOperation;
  v13 = [(WLKUTSNetworkRequestOperation *)&v15 initWithRequestProperties:v12];

  return v13;
}

- (void)processResponse
{
  responseDictionary = [(WLKUTSNetworkRequestOperation *)self responseDictionary];
  payload = self->_payload;
  self->_payload = responseDictionary;

  MEMORY[0x2821F96F8]();
}

@end