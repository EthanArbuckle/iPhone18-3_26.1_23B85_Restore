@interface WFRuntimeRunnableDataSource
+ (id)sharedDataSource;
- (WFRuntimeRunnableDataSource)init;
- (void)loadEntriesFor:(Class)a3 parameterKey:(id)a4 limit:(int64_t)a5 collectionIdentifier:(id)a6 completionHandler:(id)a7;
@end

@implementation WFRuntimeRunnableDataSource

- (void)loadEntriesFor:(Class)a3 parameterKey:(id)a4 limit:(int64_t)a5 collectionIdentifier:(id)a6 completionHandler:(id)a7
{
  v12 = a7;
  v13 = a6;
  v14 = a4;
  v15 = [(WFRuntimeRunnableDataSource *)self impl];
  [v15 loadEntriesFor:a3 parameterKey:v14 collectionIdentifier:v13 limit:a5 completionHandler:v12];
}

- (WFRuntimeRunnableDataSource)init
{
  v7.receiver = self;
  v7.super_class = WFRuntimeRunnableDataSource;
  v2 = [(WFRuntimeRunnableDataSource *)&v7 init];
  if (v2)
  {
    v3 = objc_alloc_init(WFRuntimeRunnableDataSourceImpl);
    impl = v2->_impl;
    v2->_impl = v3;

    v5 = v2;
  }

  return v2;
}

+ (id)sharedDataSource
{
  if (sharedDataSource_onceToken != -1)
  {
    dispatch_once(&sharedDataSource_onceToken, &__block_literal_global_47232);
  }

  v3 = sharedDataSource_dataSource;

  return v3;
}

void __47__WFRuntimeRunnableDataSource_sharedDataSource__block_invoke()
{
  v0 = objc_alloc_init(WFRuntimeRunnableDataSource);
  v1 = sharedDataSource_dataSource;
  sharedDataSource_dataSource = v0;
}

@end