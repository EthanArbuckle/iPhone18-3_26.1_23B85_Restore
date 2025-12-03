@interface TBPreferLocalFetchDataSource
- (TBPreferLocalFetchDataSource)initWithLocalDataSource:(id)source remoteDataSource:(id)dataSource cacheProvider:(id)provider;
@end

@implementation TBPreferLocalFetchDataSource

- (TBPreferLocalFetchDataSource)initWithLocalDataSource:(id)source remoteDataSource:(id)dataSource cacheProvider:(id)provider
{
  sourceCopy = source;
  dataSourceCopy = dataSource;
  providerCopy = provider;
  v18.receiver = self;
  v18.super_class = TBPreferLocalFetchDataSource;
  v11 = [(TBPreferLocalFetchDataSource *)&v18 init];
  localDataSource = v11->_localDataSource;
  v11->_localDataSource = sourceCopy;
  v13 = sourceCopy;

  remoteDataSource = v11->_remoteDataSource;
  v11->_remoteDataSource = dataSourceCopy;
  v15 = dataSourceCopy;

  cacheProvider = v11->_cacheProvider;
  v11->_cacheProvider = providerCopy;

  return v11;
}

@end