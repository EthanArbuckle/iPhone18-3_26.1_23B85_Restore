@interface WLKTopShelfUpNextRequestOperation
- (WLKTopShelfUpNextRequestOperation)initWithQueryParameters:(id)parameters options:(int64_t)options;
- (void)processResponse;
@end

@implementation WLKTopShelfUpNextRequestOperation

- (WLKTopShelfUpNextRequestOperation)initWithQueryParameters:(id)parameters options:(int64_t)options
{
  v6 = MEMORY[0x277CCABB0];
  parametersCopy = parameters;
  v8 = [v6 numberWithDouble:15.0];
  v9 = [WLKURLRequestProperties requestPropertiesWithEndpoint:@"watchlist/topShelf" queryParameters:parametersCopy httpMethod:0 headers:0 caller:0 timeout:v8 options:options clientProtocolVersion:&unk_288222BF0];

  v12.receiver = self;
  v12.super_class = WLKTopShelfUpNextRequestOperation;
  v10 = [(WLKUTSNetworkRequestOperation *)&v12 initWithRequestProperties:v9];

  return v10;
}

- (void)processResponse
{
  v5 = objc_alloc_init(WLKDictionaryResponseProcessor);
  [(WLKDictionaryResponseProcessor *)v5 setObjectClass:objc_opt_class()];
  data = [(WLKNetworkRequestOperation *)self data];
  v4 = [(WLKDictionaryResponseProcessor *)v5 processResponseData:data error:0];
  [(WLKTopShelfUpNextRequestOperation *)self setResponse:v4];
}

@end