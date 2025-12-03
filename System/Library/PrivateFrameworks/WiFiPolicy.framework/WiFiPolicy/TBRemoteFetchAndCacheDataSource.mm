@interface TBRemoteFetchAndCacheDataSource
- (TBRemoteFetchAndCacheDataSource)initWithFetchDataSource:(id)source cacheProvider:(id)provider;
@end

@implementation TBRemoteFetchAndCacheDataSource

- (TBRemoteFetchAndCacheDataSource)initWithFetchDataSource:(id)source cacheProvider:(id)provider
{
  sourceCopy = source;
  providerCopy = provider;
  v13.receiver = self;
  v13.super_class = TBRemoteFetchAndCacheDataSource;
  v8 = [(TBRemoteFetchAndCacheDataSource *)&v13 init];
  fetchDataSource = v8->_fetchDataSource;
  v8->_fetchDataSource = sourceCopy;
  v10 = sourceCopy;

  cacheProvider = v8->_cacheProvider;
  v8->_cacheProvider = providerCopy;

  return v8;
}

@end