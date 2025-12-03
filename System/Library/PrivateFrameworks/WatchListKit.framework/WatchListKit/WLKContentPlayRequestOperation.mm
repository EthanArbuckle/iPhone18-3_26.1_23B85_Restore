@interface WLKContentPlayRequestOperation
- (WLKContentPlayRequestOperation)initWithCanonicalID:(id)d caller:(id)caller;
- (void)processResponse;
@end

@implementation WLKContentPlayRequestOperation

- (WLKContentPlayRequestOperation)initWithCanonicalID:(id)d caller:(id)caller
{
  dCopy = d;
  callerCopy = caller;
  v8 = [@"content/{id}/play" stringByReplacingOccurrencesOfString:@"{id}" withString:dCopy];
  v9 = [WLKURLRequestProperties requestPropertiesWithEndpoint:v8 queryParameters:0 httpMethod:0 headers:0 caller:callerCopy timeout:0 options:0];

  v14.receiver = self;
  v14.super_class = WLKContentPlayRequestOperation;
  v10 = [(WLKUTSNetworkRequestOperation *)&v14 initWithRequestProperties:v9];
  if (v10)
  {
    v11 = [dCopy copy];
    canonicalID = v10->_canonicalID;
    v10->_canonicalID = v11;
  }

  return v10;
}

- (void)processResponse
{
  v5 = objc_alloc_init(WLKDictionaryResponseProcessor);
  [(WLKDictionaryResponseProcessor *)v5 setObjectClass:objc_opt_class()];
  data = [(WLKNetworkRequestOperation *)self data];
  v4 = [(WLKDictionaryResponseProcessor *)v5 processResponseData:data error:0];

  [(WLKContentPlayRequestOperation *)self setResponse:v4];
}

@end