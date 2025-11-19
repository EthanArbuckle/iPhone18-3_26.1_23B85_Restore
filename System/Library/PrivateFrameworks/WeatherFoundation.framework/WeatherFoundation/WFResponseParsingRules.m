@interface WFResponseParsingRules
+ (BOOL)aqiEnabledByRules:(id)a3 forLocation:(id)a4;
- (BOOL)aqiEnabledForCountryCode:(id)a3;
- (WFResponseParsingRules)initWithSettings:(id)a3;
@end

@implementation WFResponseParsingRules

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

- (WFResponseParsingRules)initWithSettings:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = WFResponseParsingRules;
  v6 = [(WFResponseParsingRules *)&v9 init];
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
  v5 = [(WFResponseParsingRules *)self settings];
  v6 = [v5 aqiEnabledCountryCodes];

  if (v6)
  {
    v7 = [v6 allObjects];
  }

  else
  {
    v7 = &unk_288254F10;
  }

  v8 = [v7 containsObject:v4];

  return v8;
}

@end