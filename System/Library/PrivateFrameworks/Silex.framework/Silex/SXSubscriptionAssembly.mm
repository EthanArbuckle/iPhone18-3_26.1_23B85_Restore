@interface SXSubscriptionAssembly
- (void)loadInRegistry:(id)registry;
@end

@implementation SXSubscriptionAssembly

- (void)loadInRegistry:(id)registry
{
  registryCopy = registry;
  publicContainer = [registryCopy publicContainer];
  v5 = [publicContainer registerProtocol:&unk_1F5422C40 factory:&__block_literal_global_94];

  publicContainer2 = [registryCopy publicContainer];
  v7 = [publicContainer2 registerProtocol:&unk_1F53EA938 factory:&__block_literal_global_60_0];

  publicContainer3 = [registryCopy publicContainer];
  v9 = [publicContainer3 registerProtocol:&unk_1F53AD270 factory:&__block_literal_global_68];

  publicContainer4 = [registryCopy publicContainer];

  v10 = [publicContainer4 registerProtocol:&unk_1F53A85F0 factory:&__block_literal_global_77];
}

SXSubscribeActionHandler *__41__SXSubscriptionAssembly_loadInRegistry___block_invoke()
{
  v0 = objc_alloc_init(SXSubscribeActionHandler);

  return v0;
}

SXSubscriptionStatusProvider *__41__SXSubscriptionAssembly_loadInRegistry___block_invoke_2()
{
  v0 = [[SXSubscriptionStatusProvider alloc] initWithBundleSubscriptionStatus:0 channelSubscriptionStatus:0];

  return v0;
}

SXSubscriptionActivationEligibilityDefaultProvider *__41__SXSubscriptionAssembly_loadInRegistry___block_invoke_3()
{
  v0 = objc_alloc_init(SXSubscriptionActivationEligibilityDefaultProvider);

  return v0;
}

SXOfferIdentifierDefaultProvider *__41__SXSubscriptionAssembly_loadInRegistry___block_invoke_4()
{
  v0 = objc_alloc_init(SXOfferIdentifierDefaultProvider);

  return v0;
}

@end