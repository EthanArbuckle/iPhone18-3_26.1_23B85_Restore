@interface WFRequestFormattingRules
+ (BOOL)aqiEnabledByRules:(id)rules forLocation:(id)location;
- (BOOL)aqiEnabledForCountryCode:(id)code;
- (WFRequestFormattingRules)initWithSettings:(id)settings;
@end

@implementation WFRequestFormattingRules

+ (BOOL)aqiEnabledByRules:(id)rules forLocation:(id)location
{
  if (!rules)
  {
    return 1;
  }

  rulesCopy = rules;
  countryAbbreviation = [location countryAbbreviation];
  v7 = [rulesCopy aqiEnabledForCountryCode:countryAbbreviation];

  return v7;
}

- (WFRequestFormattingRules)initWithSettings:(id)settings
{
  settingsCopy = settings;
  v9.receiver = self;
  v9.super_class = WFRequestFormattingRules;
  v6 = [(WFRequestFormattingRules *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_settings, settings);
  }

  return v7;
}

- (BOOL)aqiEnabledForCountryCode:(id)code
{
  codeCopy = code;
  settings = [(WFRequestFormattingRules *)self settings];
  aqiEnabledCountryCodes = [settings aqiEnabledCountryCodes];

  if (aqiEnabledCountryCodes)
  {
    allObjects = [aqiEnabledCountryCodes allObjects];
  }

  else
  {
    allObjects = &unk_288254B68;
  }

  v8 = [allObjects containsObject:codeCopy];

  return v8;
}

@end