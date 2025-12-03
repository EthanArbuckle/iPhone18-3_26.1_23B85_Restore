@interface WLKSiriSearchRequestOperation
- (WLKSiriSearchRequestOperation)initWithQuery:(id)query caller:(id)caller;
- (void)processResponse;
@end

@implementation WLKSiriSearchRequestOperation

- (WLKSiriSearchRequestOperation)initWithQuery:(id)query caller:(id)caller
{
  v5 = [WLKURLRequestProperties requestPropertiesWithEndpoint:@"siri/play" queryParameters:query httpMethod:0 caller:caller];
  v8.receiver = self;
  v8.super_class = WLKSiriSearchRequestOperation;
  v6 = [(WLKUTSNetworkRequestOperation *)&v8 initWithRequestProperties:v5];

  return v6;
}

- (void)processResponse
{
  v6 = objc_alloc_init(WLKDictionaryResponseProcessor);
  [(WLKDictionaryResponseProcessor *)v6 setObjectClass:objc_opt_class()];
  data = [(WLKNetworkRequestOperation *)self data];
  v4 = [(WLKDictionaryResponseProcessor *)v6 processResponseData:data error:0];
  response = self->_response;
  self->_response = v4;
}

@end