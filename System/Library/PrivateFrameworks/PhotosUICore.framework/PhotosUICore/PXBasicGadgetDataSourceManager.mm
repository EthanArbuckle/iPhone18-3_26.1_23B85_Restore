@interface PXBasicGadgetDataSourceManager
- (PXBasicGadgetDataSourceManager)initWithProviders:(id)providers;
@end

@implementation PXBasicGadgetDataSourceManager

- (PXBasicGadgetDataSourceManager)initWithProviders:(id)providers
{
  providersCopy = providers;
  v9.receiver = self;
  v9.super_class = PXBasicGadgetDataSourceManager;
  v6 = [(PXGadgetDataSourceManager *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_providers, providers);
  }

  return v7;
}

@end