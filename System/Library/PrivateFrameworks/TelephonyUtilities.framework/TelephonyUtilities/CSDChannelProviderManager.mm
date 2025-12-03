@interface CSDChannelProviderManager
- (CSDChannelProviderManager)init;
- (CSDChannelProviderManager)initWithDataSource:(id)source;
- (id)providerForIdentifier:(id)identifier;
- (void)addDelegate:(id)delegate queue:(id)queue;
- (void)channelProviderManagerDataSource:(id)source didChangeProviderByIdentifier:(id)identifier;
- (void)registerProvider:(id)provider;
- (void)removeDelegate:(id)delegate;
- (void)unregisterProvider:(id)provider;
- (void)updateProviderByIdentifier;
@end

@implementation CSDChannelProviderManager

- (CSDChannelProviderManager)init
{
  v3 = objc_alloc_init(CSDChannelProviderManagerDataSource);
  v4 = [(CSDChannelProviderManager *)self initWithDataSource:v3];

  return v4;
}

- (CSDChannelProviderManager)initWithDataSource:(id)source
{
  sourceCopy = source;
  v11.receiver = self;
  v11.super_class = CSDChannelProviderManager;
  v6 = [(CSDChannelProviderManager *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_dataSource, source);
    [(CSDChannelProviderManagerDataSource *)v7->_dataSource setDelegate:v7];
    v8 = objc_alloc_init(TUDelegateController);
    delegateController = v7->_delegateController;
    v7->_delegateController = v8;
  }

  return v7;
}

- (void)addDelegate:(id)delegate queue:(id)queue
{
  queueCopy = queue;
  delegateCopy = delegate;
  delegateController = [(CSDChannelProviderManager *)self delegateController];
  [delegateController addDelegate:delegateCopy queue:queueCopy];
}

- (void)removeDelegate:(id)delegate
{
  delegateCopy = delegate;
  delegateController = [(CSDChannelProviderManager *)self delegateController];
  [delegateController removeDelegate:delegateCopy];
}

- (void)registerProvider:(id)provider
{
  providerCopy = provider;
  dataSource = [(CSDChannelProviderManager *)self dataSource];
  identifier = [providerCopy identifier];
  [dataSource setProvider:providerCopy forIdentifier:identifier];
}

- (void)unregisterProvider:(id)provider
{
  providerCopy = provider;
  dataSource = [(CSDChannelProviderManager *)self dataSource];
  identifier = [providerCopy identifier];

  [dataSource setProvider:0 forIdentifier:identifier];
}

- (id)providerForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  dataSource = [(CSDChannelProviderManager *)self dataSource];
  v6 = [dataSource providerForIdentifier:identifierCopy];

  return v6;
}

- (void)updateProviderByIdentifier
{
  dataSource = [(CSDChannelProviderManager *)self dataSource];
  [dataSource updateProviderByIdentifier];
}

- (void)channelProviderManagerDataSource:(id)source didChangeProviderByIdentifier:(id)identifier
{
  v5 = [(CSDChannelProviderManager *)self delegateController:source];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100229BA8;
  v6[3] = &unk_10061F038;
  v6[4] = self;
  [v5 enumerateDelegatesUsingBlock:v6];
}

@end