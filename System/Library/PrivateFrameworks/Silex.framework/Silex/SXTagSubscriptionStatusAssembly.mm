@interface SXTagSubscriptionStatusAssembly
- (void)loadInRegistry:(id)a3;
@end

@implementation SXTagSubscriptionStatusAssembly

- (void)loadInRegistry:(id)a3
{
  v4 = [a3 publicContainer];
  v3 = [v4 registerProtocol:&unk_1F53BD2A8 factory:&__block_literal_global_20];
}

SXTagSubscriptionStatusProvider *__50__SXTagSubscriptionStatusAssembly_loadInRegistry___block_invoke()
{
  v0 = objc_alloc_init(SXTagSubscriptionStatusProvider);

  return v0;
}

@end