@interface PXBasicGadgetDataSourceManager
- (PXBasicGadgetDataSourceManager)initWithProviders:(id)a3;
@end

@implementation PXBasicGadgetDataSourceManager

- (PXBasicGadgetDataSourceManager)initWithProviders:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = PXBasicGadgetDataSourceManager;
  v6 = [(PXGadgetDataSourceManager *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_providers, a3);
  }

  return v7;
}

@end