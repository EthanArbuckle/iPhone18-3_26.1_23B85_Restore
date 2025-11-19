@interface SXOfferUpsellScenarioAssembly
- (void)loadInRegistry:(id)a3;
@end

@implementation SXOfferUpsellScenarioAssembly

- (void)loadInRegistry:(id)a3
{
  v4 = [a3 publicContainer];
  v3 = [v4 registerProtocol:&unk_1F53AA1E8 factory:&__block_literal_global_38];
}

SXOfferUpsellScenarioProvider *__48__SXOfferUpsellScenarioAssembly_loadInRegistry___block_invoke()
{
  v0 = [[SXOfferUpsellScenarioProvider alloc] initWithOfferUpsellScenario:0];

  return v0;
}

@end