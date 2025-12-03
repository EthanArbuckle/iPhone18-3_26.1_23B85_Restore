@interface WFAttribution
+ (id)platformSpecializedWeatherSourceAttributionURLForTrafficParameter:(id)parameter;
+ (id)sharedAttribution;
+ (id)weatherSourceAttributionURLForTrafficParameter:(id)parameter;
- (NSString)localizedSourceAttribution;
- (NSString)sourceName;
- (NSURL)sourceAttributionURL;
- (id)sourceAttributionImageForStyle:(unint64_t)style;
@end

@implementation WFAttribution

+ (id)sharedAttribution
{
  if (sharedAttribution_onceToken != -1)
  {
    +[WFAttribution sharedAttribution];
  }

  v3 = sharedAttribution_attribution;

  return v3;
}

uint64_t __34__WFAttribution_sharedAttribution__block_invoke()
{
  v0 = objc_opt_new();
  v1 = sharedAttribution_attribution;
  sharedAttribution_attribution = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

- (NSURL)sourceAttributionURL
{
  v2 = objc_opt_class();

  return [v2 platformSpecializedWeatherSourceAttributionURLForTrafficParameter:0];
}

- (NSString)localizedSourceAttribution
{
  v2 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"WFAttributionSourceLocalizedAttributionString" value:@"Weather Foundation Unlocalized Source Attribution String" table:0];

  return v3;
}

- (NSString)sourceName
{
  v2 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"WFAttributionSourceName" value:@"Weather Foundation Unlocalized Source Name" table:0];

  return v3;
}

- (id)sourceAttributionImageForStyle:(unint64_t)style
{
  if (style > 2)
  {
    v7 = 0;
  }

  else
  {
    v3 = off_279E6FA18[style];
    v10 = 0;
    v11 = &v10;
    v12 = 0x2050000000;
    v4 = getUIImageClass_softClass_0;
    v13 = getUIImageClass_softClass_0;
    if (!getUIImageClass_softClass_0)
    {
      v9[0] = MEMORY[0x277D85DD0];
      v9[1] = 3221225472;
      v9[2] = __getUIImageClass_block_invoke_0;
      v9[3] = &unk_279E6EA68;
      v9[4] = &v10;
      __getUIImageClass_block_invoke_0(v9);
      v4 = v11[3];
    }

    v5 = v4;
    _Block_object_dispose(&v10, 8);
    v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v7 = [v4 imageNamed:v3 inBundle:v6];
  }

  return v7;
}

+ (id)weatherSourceAttributionURLForTrafficParameter:(id)parameter
{
  v23[2] = *MEMORY[0x277D85DE8];
  parameterCopy = parameter;
  v4 = [MEMORY[0x277CCACE0] componentsWithString:@"http://www.weather.com/wx/today/"];
  if (![(__CFString *)parameterCopy length])
  {

    parameterCopy = @"TWC";
  }

  v22 = parameterCopy;
  v5 = MEMORY[0x277CCAD18];
  v6 = [@"apple_" stringByAppendingString:parameterCopy];
  v7 = [v5 queryItemWithName:@"par" value:v6];

  currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
  v9 = [currentLocale objectForKey:*MEMORY[0x277CBE690]];
  uppercaseString = [v9 uppercaseString];

  v11 = [currentLocale objectForKey:*MEMORY[0x277CBE6C8]];
  lowercaseString = [v11 lowercaseString];

  v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@_%@", lowercaseString, uppercaseString];
  v14 = [MEMORY[0x277CCAD18] queryItemWithName:@"locale" value:v13];
  queryItems = [v4 queryItems];
  v16 = queryItems;
  if (queryItems)
  {
    v17 = queryItems;
  }

  else
  {
    v17 = MEMORY[0x277CBEBF8];
  }

  v23[0] = v7;
  v23[1] = v14;
  v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:2];
  v19 = [v17 arrayByAddingObjectsFromArray:v18];
  [v4 setQueryItems:v19];

  v20 = [v4 URL];

  return v20;
}

+ (id)platformSpecializedWeatherSourceAttributionURLForTrafficParameter:(id)parameter
{
  parameterCopy = parameter;
  if (platformSpecializedWeatherSourceAttributionURLForTrafficParameter__onceToken != -1)
  {
    +[WFAttribution platformSpecializedWeatherSourceAttributionURLForTrafficParameter:];
  }

  sharedApplication = [getUIApplicationClass() sharedApplication];
  v6 = [sharedApplication canOpenURL:platformSpecializedWeatherSourceAttributionURLForTrafficParameter__sTWCAppiPadURL];

  if (v6)
  {
    v7 = platformSpecializedWeatherSourceAttributionURLForTrafficParameter__sTWCAppiPadURL;
LABEL_7:
    v10 = v7;
    goto LABEL_9;
  }

  sharedApplication2 = [getUIApplicationClass() sharedApplication];
  v9 = [sharedApplication2 canOpenURL:platformSpecializedWeatherSourceAttributionURLForTrafficParameter__sTWCAppiPhoneURL];

  if (v9)
  {
    v7 = platformSpecializedWeatherSourceAttributionURLForTrafficParameter__sTWCAppiPhoneURL;
    goto LABEL_7;
  }

  v10 = [self weatherSourceAttributionURLForTrafficParameter:parameterCopy];
LABEL_9:
  v11 = v10;

  return v11;
}

uint64_t __83__WFAttribution_platformSpecializedWeatherSourceAttributionURLForTrafficParameter___block_invoke()
{
  v0 = [MEMORY[0x277CBEBC0] URLWithString:@"twcweather://now"];
  v1 = platformSpecializedWeatherSourceAttributionURLForTrafficParameter__sTWCAppiPhoneURL;
  platformSpecializedWeatherSourceAttributionURLForTrafficParameter__sTWCAppiPhoneURL = v0;

  v2 = [MEMORY[0x277CBEBC0] URLWithString:@"twc://now"];
  v3 = platformSpecializedWeatherSourceAttributionURLForTrafficParameter__sTWCAppiPadURL;
  platformSpecializedWeatherSourceAttributionURLForTrafficParameter__sTWCAppiPadURL = v2;

  return MEMORY[0x2821F96F8](v2, v3);
}

@end