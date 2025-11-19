@interface WLKCanonicalContainerRequestOperation
- (void)processResponse;
@end

@implementation WLKCanonicalContainerRequestOperation

- (void)processResponse
{
  v6 = objc_alloc_init(WLKDictionaryResponseProcessor);
  [(WLKDictionaryResponseProcessor *)v6 setObjectClass:objc_opt_class()];
  v3 = [(WLKNetworkRequestOperation *)self data];
  v4 = [(WLKDictionaryResponseProcessor *)v6 processResponseData:v3 error:0];
  containerResponse = self->_containerResponse;
  self->_containerResponse = v4;
}

@end