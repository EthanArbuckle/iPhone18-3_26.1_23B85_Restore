@interface VUIRouterDataSource
- (VUIRouterDataSource)initWithLibraryMediaEntity:(id)a3;
- (VUIRouterDataSource)initWithRouterData:(id)a3 appContext:(id)a4;
- (VUIRouterDataSource)initWithRouterData:(id)a3 prefetchedData:(id)a4;
@end

@implementation VUIRouterDataSource

- (VUIRouterDataSource)initWithRouterData:(id)a3 appContext:(id)a4
{
  v6 = a3;
  v7 = a4;
  v19.receiver = self;
  v19.super_class = VUIRouterDataSource;
  v8 = [(VUIRouterDataSource *)&v19 init];
  if (v8 && [v6 count])
  {
    v9 = [v6 vui_dictionaryForKey:@"selectEventDataSource"];
    v10 = [VUIEventDataSource eventDataSourceWithEventDict:v9 appContext:v7];
    selectEventDataSource = v8->_selectEventDataSource;
    v8->_selectEventDataSource = v10;

    v12 = [v6 vui_dictionaryForKey:@"playEventDataSource"];
    v13 = [VUIEventDataSource eventDataSourceWithEventDict:v12 appContext:v7];
    playEventDataSource = v8->_playEventDataSource;
    v8->_playEventDataSource = v13;

    v15 = [v6 vui_dictionaryForKey:@"contextMenuEventDataSource"];
    v16 = [VUIEventDataSource eventDataSourceWithEventDict:v15 appContext:v7];
    contextMenuEventDataSource = v8->_contextMenuEventDataSource;
    v8->_contextMenuEventDataSource = v16;
  }

  return v8;
}

- (VUIRouterDataSource)initWithRouterData:(id)a3 prefetchedData:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [v7 mutableCopy];
  v9 = [v7 vui_dictionaryForKey:@"selectEventDataSource"];

  v10 = [VUIEventDataSource attachPrefetchedDict:v6 eventDict:v9];

  [v8 setValue:v10 forKey:@"selectEventDataSource"];
  v11 = [v8 copy];
  v12 = [[VUIRouterDataSource alloc] initWithRouterData:v11 appContext:0];

  return v12;
}

- (VUIRouterDataSource)initWithLibraryMediaEntity:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = VUIRouterDataSource;
  v5 = [(VUIRouterDataSource *)&v9 init];
  if (v5)
  {
    v6 = [VUIEventDataSource selectEventDataSourceWithLibraryMediaEntity:v4];
    selectEventDataSource = v5->_selectEventDataSource;
    v5->_selectEventDataSource = v6;
  }

  return v5;
}

@end