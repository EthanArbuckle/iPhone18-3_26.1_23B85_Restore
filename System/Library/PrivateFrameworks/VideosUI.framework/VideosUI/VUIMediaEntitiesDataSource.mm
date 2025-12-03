@interface VUIMediaEntitiesDataSource
- (VUIMediaEntitiesDataSource)initWithFetchRequest:(id)request;
@end

@implementation VUIMediaEntitiesDataSource

- (VUIMediaEntitiesDataSource)initWithFetchRequest:(id)request
{
  requestCopy = request;
  v9.receiver = self;
  v9.super_class = VUIMediaEntitiesDataSource;
  v6 = [(VUIMediaEntitiesDataSource *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_fetchRequest, request);
    v7->_shouldAutoFetchArtworkInfoDictionaries = 0;
    v7->_shouldPauseAutoFetchingArtworkInfoDictionaries = 0;
  }

  return v7;
}

@end