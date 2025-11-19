@interface WFAppleIntelligenceAvailabilityProvider
+ (id)shared;
- (BOOL)isAppleIntelligenceAvailable;
- (BOOL)isAppleIntelligenceEnabled;
- (BOOL)isAppleIntelligenceOptedIn;
@end

@implementation WFAppleIntelligenceAvailabilityProvider

+ (id)shared
{
  v2 = static WFAppleIntelligenceAvailabilityProvider.shared()();

  return v2;
}

- (BOOL)isAppleIntelligenceEnabled
{
  v2 = self;
  v3 = sub_1CA26A4C8();

  return v3 & 1;
}

- (BOOL)isAppleIntelligenceOptedIn
{
  v2 = self;
  v3 = sub_1CA648868();

  return v3 & 1;
}

- (BOOL)isAppleIntelligenceAvailable
{
  v2 = self;
  v3 = sub_1CA648A00();

  return v3 & 1;
}

@end