@interface SXOfferUpsellScenarioProvider
- (SXOfferUpsellScenarioProvider)initWithOfferUpsellScenario:(int64_t)a3;
@end

@implementation SXOfferUpsellScenarioProvider

- (SXOfferUpsellScenarioProvider)initWithOfferUpsellScenario:(int64_t)a3
{
  v5.receiver = self;
  v5.super_class = SXOfferUpsellScenarioProvider;
  result = [(SXOfferUpsellScenarioProvider *)&v5 init];
  if (result)
  {
    result->_offerUpsellScenario = a3;
  }

  return result;
}

@end