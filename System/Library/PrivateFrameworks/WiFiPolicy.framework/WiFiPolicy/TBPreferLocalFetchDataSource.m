@interface TBPreferLocalFetchDataSource
- (TBPreferLocalFetchDataSource)initWithLocalDataSource:(id)a3 remoteDataSource:(id)a4 cacheProvider:(id)a5;
@end

@implementation TBPreferLocalFetchDataSource

- (TBPreferLocalFetchDataSource)initWithLocalDataSource:(id)a3 remoteDataSource:(id)a4 cacheProvider:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v18.receiver = self;
  v18.super_class = TBPreferLocalFetchDataSource;
  v11 = [(TBPreferLocalFetchDataSource *)&v18 init];
  localDataSource = v11->_localDataSource;
  v11->_localDataSource = v8;
  v13 = v8;

  remoteDataSource = v11->_remoteDataSource;
  v11->_remoteDataSource = v9;
  v15 = v9;

  cacheProvider = v11->_cacheProvider;
  v11->_cacheProvider = v10;

  return v11;
}

@end