@interface SXNewsletterAssembly
- (void)loadInRegistry:(id)registry;
@end

@implementation SXNewsletterAssembly

- (void)loadInRegistry:(id)registry
{
  publicContainer = [registry publicContainer];
  v3 = [publicContainer registerProtocol:&unk_1F53A0D50 factory:&__block_literal_global_47];
}

SXNewsletterSubscriptionStatusProvider *__39__SXNewsletterAssembly_loadInRegistry___block_invoke()
{
  v0 = objc_alloc_init(SXNewsletterSubscriptionStatusProvider);

  return v0;
}

@end