@interface WLKContentPlayRequestOperation
- (WLKContentPlayRequestOperation)initWithCanonicalID:(id)a3 caller:(id)a4;
- (void)processResponse;
@end

@implementation WLKContentPlayRequestOperation

- (WLKContentPlayRequestOperation)initWithCanonicalID:(id)a3 caller:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [@"content/{id}/play" stringByReplacingOccurrencesOfString:@"{id}" withString:v6];
  v9 = [WLKURLRequestProperties requestPropertiesWithEndpoint:v8 queryParameters:0 httpMethod:0 headers:0 caller:v7 timeout:0 options:0];

  v14.receiver = self;
  v14.super_class = WLKContentPlayRequestOperation;
  v10 = [(WLKUTSNetworkRequestOperation *)&v14 initWithRequestProperties:v9];
  if (v10)
  {
    v11 = [v6 copy];
    canonicalID = v10->_canonicalID;
    v10->_canonicalID = v11;
  }

  return v10;
}

- (void)processResponse
{
  v5 = objc_alloc_init(WLKDictionaryResponseProcessor);
  [(WLKDictionaryResponseProcessor *)v5 setObjectClass:objc_opt_class()];
  v3 = [(WLKNetworkRequestOperation *)self data];
  v4 = [(WLKDictionaryResponseProcessor *)v5 processResponseData:v3 error:0];

  [(WLKContentPlayRequestOperation *)self setResponse:v4];
}

@end