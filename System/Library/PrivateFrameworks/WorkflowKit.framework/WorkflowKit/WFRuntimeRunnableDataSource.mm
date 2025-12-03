@interface WFRuntimeRunnableDataSource
+ (id)sharedDataSource;
- (WFRuntimeRunnableDataSource)init;
- (void)loadEntriesFor:(Class)for parameterKey:(id)key limit:(int64_t)limit collectionIdentifier:(id)identifier completionHandler:(id)handler;
@end

@implementation WFRuntimeRunnableDataSource

- (void)loadEntriesFor:(Class)for parameterKey:(id)key limit:(int64_t)limit collectionIdentifier:(id)identifier completionHandler:(id)handler
{
  handlerCopy = handler;
  identifierCopy = identifier;
  keyCopy = key;
  impl = [(WFRuntimeRunnableDataSource *)self impl];
  [impl loadEntriesFor:for parameterKey:keyCopy collectionIdentifier:identifierCopy limit:limit completionHandler:handlerCopy];
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