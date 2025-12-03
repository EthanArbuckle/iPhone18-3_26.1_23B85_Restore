@interface WFAskLLMAvailabilityProvider
+ (id)shared;
- (BOOL)isActionVisible;
@end

@implementation WFAskLLMAvailabilityProvider

+ (id)shared
{
  v2 = static WFAskLLMAvailabilityProvider.shared()();

  return v2;
}

- (BOOL)isActionVisible
{
  selfCopy = self;
  v3 = WFAskLLMAvailabilityProvider.isActionVisible()();

  return v3;
}

@end