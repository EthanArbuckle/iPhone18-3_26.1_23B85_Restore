@interface VUIRouterDataSource
- (VUIRouterDataSource)initWithLibraryMediaEntity:(id)entity;
- (VUIRouterDataSource)initWithRouterData:(id)data appContext:(id)context;
- (VUIRouterDataSource)initWithRouterData:(id)data prefetchedData:(id)prefetchedData;
@end

@implementation VUIRouterDataSource

- (VUIRouterDataSource)initWithRouterData:(id)data appContext:(id)context
{
  dataCopy = data;
  contextCopy = context;
  v19.receiver = self;
  v19.super_class = VUIRouterDataSource;
  v8 = [(VUIRouterDataSource *)&v19 init];
  if (v8 && [dataCopy count])
  {
    v9 = [dataCopy vui_dictionaryForKey:@"selectEventDataSource"];
    v10 = [VUIEventDataSource eventDataSourceWithEventDict:v9 appContext:contextCopy];
    selectEventDataSource = v8->_selectEventDataSource;
    v8->_selectEventDataSource = v10;

    v12 = [dataCopy vui_dictionaryForKey:@"playEventDataSource"];
    v13 = [VUIEventDataSource eventDataSourceWithEventDict:v12 appContext:contextCopy];
    playEventDataSource = v8->_playEventDataSource;
    v8->_playEventDataSource = v13;

    v15 = [dataCopy vui_dictionaryForKey:@"contextMenuEventDataSource"];
    v16 = [VUIEventDataSource eventDataSourceWithEventDict:v15 appContext:contextCopy];
    contextMenuEventDataSource = v8->_contextMenuEventDataSource;
    v8->_contextMenuEventDataSource = v16;
  }

  return v8;
}

- (VUIRouterDataSource)initWithRouterData:(id)data prefetchedData:(id)prefetchedData
{
  prefetchedDataCopy = prefetchedData;
  dataCopy = data;
  v8 = [dataCopy mutableCopy];
  v9 = [dataCopy vui_dictionaryForKey:@"selectEventDataSource"];

  v10 = [VUIEventDataSource attachPrefetchedDict:prefetchedDataCopy eventDict:v9];

  [v8 setValue:v10 forKey:@"selectEventDataSource"];
  v11 = [v8 copy];
  v12 = [[VUIRouterDataSource alloc] initWithRouterData:v11 appContext:0];

  return v12;
}

- (VUIRouterDataSource)initWithLibraryMediaEntity:(id)entity
{
  entityCopy = entity;
  v9.receiver = self;
  v9.super_class = VUIRouterDataSource;
  v5 = [(VUIRouterDataSource *)&v9 init];
  if (v5)
  {
    v6 = [VUIEventDataSource selectEventDataSourceWithLibraryMediaEntity:entityCopy];
    selectEventDataSource = v5->_selectEventDataSource;
    v5->_selectEventDataSource = v6;
  }

  return v5;
}

@end