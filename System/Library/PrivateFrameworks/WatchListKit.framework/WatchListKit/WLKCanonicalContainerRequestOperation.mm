@interface WLKCanonicalContainerRequestOperation
- (void)processResponse;
@end

@implementation WLKCanonicalContainerRequestOperation

- (void)processResponse
{
  v6 = objc_alloc_init(WLKDictionaryResponseProcessor);
  [(WLKDictionaryResponseProcessor *)v6 setObjectClass:objc_opt_class()];
  data = [(WLKNetworkRequestOperation *)self data];
  v4 = [(WLKDictionaryResponseProcessor *)v6 processResponseData:data error:0];
  containerResponse = self->_containerResponse;
  self->_containerResponse = v4;
}

@end