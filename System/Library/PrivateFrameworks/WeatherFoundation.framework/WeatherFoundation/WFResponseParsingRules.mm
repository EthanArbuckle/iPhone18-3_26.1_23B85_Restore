@interface WFResponseParsingRules
+ (BOOL)aqiEnabledByRules:(id)rules forLocation:(id)location;
- (BOOL)aqiEnabledForCountryCode:(id)code;
- (WFResponseParsingRules)initWithSettings:(id)settings;
@end

@implementation WFResponseParsingRules

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

- (WFResponseParsingRules)initWithSettings:(id)settings
{
  settingsCopy = settings;
  v9.receiver = self;
  v9.super_class = WFResponseParsingRules;
  v6 = [(WFResponseParsingRules *)&v9 init];
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
  settings = [(WFResponseParsingRules *)self settings];
  aqiEnabledCountryCodes = [settings aqiEnabledCountryCodes];

  if (aqiEnabledCountryCodes)
  {
    allObjects = [aqiEnabledCountryCodes allObjects];
  }

  else
  {
    allObjects = &unk_288254F10;
  }

  v8 = [allObjects containsObject:codeCopy];

  return v8;
}

@end