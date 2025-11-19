@interface SXFormatAssembly
- (void)loadInRegistry:(id)a3;
@end

@implementation SXFormatAssembly

- (void)loadInRegistry:(id)a3
{
  v3 = a3;
  v4 = [v3 publicContainer];
  v5 = [v4 registerProtocol:&unk_1F53D02B8 factory:&__block_literal_global_26];

  v6 = [v3 publicContainer];
  v7 = [v6 registerProtocol:&unk_1F53D6B20 factory:&__block_literal_global_55_3];

  v9 = [v3 privateContainer];

  v8 = [v9 registerProtocol:&unk_1F53AF000 factory:&__block_literal_global_128_0];
}

SXFormatModule *__35__SXFormatAssembly_loadInRegistry___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[SXFormatModule alloc] initWithResolver:v2];

  return v3;
}

SXFormatInteractor *__35__SXFormatAssembly_loadInRegistry___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [SXFormatInteractor alloc];
  v4 = [v2 resolveProtocol:&unk_1F53FD888];
  v5 = [v2 resolveProtocol:&unk_1F53AF000];
  v6 = [v2 resolveProtocol:&unk_1F53E2118];
  v16 = [v2 resolveProtocol:&unk_1F53EA938];
  v15 = [v2 resolveProtocol:&unk_1F53BCFB0];
  v14 = [v2 resolveProtocol:&unk_1F53A0D50];
  v12 = [v2 resolveProtocol:&unk_1F53AA1E8];
  v7 = [v2 resolveProtocol:&unk_1F53AD270];
  v8 = [v2 resolveProtocol:&unk_1F53A85F0];
  v9 = [v2 resolveProtocol:&unk_1F5438A00];
  v10 = [v2 resolveProtocol:&unk_1F53BD2A8];

  v13 = [(SXFormatInteractor *)v3 initWithLayoutCoordinator:v4 layoutOptionsFactory:v5 presentationAttributesProvider:v6 subscriptionStatusProvider:v16 debugLayoutOptionsProvider:v15 newsletterSubscriptionStatusProvider:v14 offerUpsellScenarioProvider:v12 subscriptionActivationEligibilityProvider:v7 offerIdentifierProvider:v8 renderingConfigurationProvider:v9 tagSubscriptionStatusProvider:v10];

  return v13;
}

SXLayoutOptionsFactory *__35__SXFormatAssembly_loadInRegistry___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [SXLayoutOptionsFactory alloc];
  v4 = [v2 resolveProtocol:&unk_1F53D0C40];
  v5 = [v2 resolveProtocol:&unk_1F53E7F88];

  v6 = [(SXLayoutOptionsFactory *)v3 initWithColumnCalculator:v4 documentProvider:v5];

  return v6;
}

@end