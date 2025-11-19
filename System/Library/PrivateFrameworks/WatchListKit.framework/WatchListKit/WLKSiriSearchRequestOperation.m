@interface WLKSiriSearchRequestOperation
- (WLKSiriSearchRequestOperation)initWithQuery:(id)a3 caller:(id)a4;
- (void)processResponse;
@end

@implementation WLKSiriSearchRequestOperation

- (WLKSiriSearchRequestOperation)initWithQuery:(id)a3 caller:(id)a4
{
  v5 = [WLKURLRequestProperties requestPropertiesWithEndpoint:@"siri/play" queryParameters:a3 httpMethod:0 caller:a4];
  v8.receiver = self;
  v8.super_class = WLKSiriSearchRequestOperation;
  v6 = [(WLKUTSNetworkRequestOperation *)&v8 initWithRequestProperties:v5];

  return v6;
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