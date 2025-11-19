@interface WFLimitedNetworkIssue
+ (id)limitedNetwork;
+ (id)limitedNetwork_CH;
- (id)_RecommendationForChinaDevice:(BOOL)a3;
@end

@implementation WFLimitedNetworkIssue

+ (id)limitedNetwork
{
  v2 = [[WFLimitedNetworkIssue alloc] initWithChinaDevice:0];

  return v2;
}

+ (id)limitedNetwork_CH
{
  v2 = [[WFLimitedNetworkIssue alloc] initWithChinaDevice:1];

  return v2;
}

- (id)_RecommendationForChinaDevice:(BOOL)a3
{
  v3 = @"kWFLocLimitNetworkRecommendation";
  if (a3)
  {
    v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@_CH", @"kWFLocLimitNetworkRecommendation"];
  }

  v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v5 = [v4 localizedStringForKey:v3 value:&stru_288308678 table:@"WiFiKitUILocalizableStrings-WIFI_6E"];

  return v5;
}

@end