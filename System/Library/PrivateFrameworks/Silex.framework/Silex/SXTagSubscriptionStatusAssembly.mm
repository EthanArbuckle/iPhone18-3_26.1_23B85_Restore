@interface SXTagSubscriptionStatusAssembly
- (void)loadInRegistry:(id)registry;
@end

@implementation SXTagSubscriptionStatusAssembly

- (void)loadInRegistry:(id)registry
{
  publicContainer = [registry publicContainer];
  v3 = [publicContainer registerProtocol:&unk_1F53BD2A8 factory:&__block_literal_global_20];
}

SXTagSubscriptionStatusProvider *__50__SXTagSubscriptionStatusAssembly_loadInRegistry___block_invoke()
{
  v0 = objc_alloc_init(SXTagSubscriptionStatusProvider);

  return v0;
}

@end