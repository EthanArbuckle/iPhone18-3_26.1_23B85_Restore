@interface SXOfferUpsellScenarioProvider
- (SXOfferUpsellScenarioProvider)initWithOfferUpsellScenario:(int64_t)scenario;
@end

@implementation SXOfferUpsellScenarioProvider

- (SXOfferUpsellScenarioProvider)initWithOfferUpsellScenario:(int64_t)scenario
{
  v5.receiver = self;
  v5.super_class = SXOfferUpsellScenarioProvider;
  result = [(SXOfferUpsellScenarioProvider *)&v5 init];
  if (result)
  {
    result->_offerUpsellScenario = scenario;
  }

  return result;
}

@end