@interface WFIntentDynamicResolutionRequest
- (WFIntentDynamicResolutionRequest)init;
@end

@implementation WFIntentDynamicResolutionRequest

- (WFIntentDynamicResolutionRequest)init
{
  v6.receiver = self;
  v6.super_class = WFIntentDynamicResolutionRequest;
  v2 = [(WFIntentDynamicResolutionRequest *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->_cancelled = 0;
    v4 = v2;
  }

  return v3;
}

@end