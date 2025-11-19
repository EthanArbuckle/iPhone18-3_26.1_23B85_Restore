@interface SXSubscriptionAssembly
- (void)loadInRegistry:(id)a3;
@end

@implementation SXSubscriptionAssembly

- (void)loadInRegistry:(id)a3
{
  v3 = a3;
  v4 = [v3 publicContainer];
  v5 = [v4 registerProtocol:&unk_1F5422C40 factory:&__block_literal_global_94];

  v6 = [v3 publicContainer];
  v7 = [v6 registerProtocol:&unk_1F53EA938 factory:&__block_literal_global_60_0];

  v8 = [v3 publicContainer];
  v9 = [v8 registerProtocol:&unk_1F53AD270 factory:&__block_literal_global_68];

  v11 = [v3 publicContainer];

  v10 = [v11 registerProtocol:&unk_1F53A85F0 factory:&__block_literal_global_77];
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