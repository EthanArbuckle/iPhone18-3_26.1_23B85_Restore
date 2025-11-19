@interface WFRequestFormattingRules
+ (BOOL)aqiEnabledByRules:(id)a3 forLocation:(id)a4;
- (BOOL)aqiEnabledForCountryCode:(id)a3;
- (WFRequestFormattingRules)initWithSettings:(id)a3;
@end

@implementation WFRequestFormattingRules

+ (BOOL)aqiEnabledByRules:(id)a3 forLocation:(id)a4
{
  if (!a3)
  {
    return 1;
  }

  v5 = a3;
  v6 = [a4 countryAbbreviation];
  v7 = [v5 aqiEnabledForCountryCode:v6];

  return v7;
}

- (WFRequestFormattingRules)initWithSettings:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = WFRequestFormattingRules;
  v6 = [(WFRequestFormattingRules *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_settings, a3);
  }

  return v7;
}

- (BOOL)aqiEnabledForCountryCode:(id)a3
{
  v4 = a3;
  v5 = [(WFRequestFormattingRules *)self settings];
  v6 = [v5 aqiEnabledCountryCodes];

  if (v6)
  {
    v7 = [v6 allObjects];
  }

  else
  {
    v7 = &unk_288254B68;
  }

  v8 = [v7 containsObject:v4];

  return v8;
}

@end