@interface TBRemoteFetchAndCacheDataSource
- (TBRemoteFetchAndCacheDataSource)initWithFetchDataSource:(id)a3 cacheProvider:(id)a4;
@end

@implementation TBRemoteFetchAndCacheDataSource

- (TBRemoteFetchAndCacheDataSource)initWithFetchDataSource:(id)a3 cacheProvider:(id)a4
{
  v6 = a3;
  v7 = a4;
  v13.receiver = self;
  v13.super_class = TBRemoteFetchAndCacheDataSource;
  v8 = [(TBRemoteFetchAndCacheDataSource *)&v13 init];
  fetchDataSource = v8->_fetchDataSource;
  v8->_fetchDataSource = v6;
  v10 = v6;

  cacheProvider = v8->_cacheProvider;
  v8->_cacheProvider = v7;

  return v8;
}

@end