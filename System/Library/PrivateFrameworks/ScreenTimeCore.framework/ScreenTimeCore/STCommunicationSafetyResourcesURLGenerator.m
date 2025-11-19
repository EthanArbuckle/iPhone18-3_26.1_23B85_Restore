@interface STCommunicationSafetyResourcesURLGenerator
+ (id)communicationSafetySupportedCountryLanguagePairs;
+ (id)resourcesURL;
+ (id)resourcesURLForCountryCode:(id)a3 languageCode:(id)a4;
@end

@implementation STCommunicationSafetyResourcesURLGenerator

+ (id)communicationSafetySupportedCountryLanguagePairs
{
  if (communicationSafetySupportedCountryLanguagePairs_onceToken != -1)
  {
    +[STCommunicationSafetyResourcesURLGenerator communicationSafetySupportedCountryLanguagePairs];
  }

  v3 = communicationSafetySupportedCountryLanguagePairs_communicationSafetySupportedCountryLanguagePairs;

  return v3;
}

void __94__STCommunicationSafetyResourcesURLGenerator_communicationSafetySupportedCountryLanguagePairs__block_invoke()
{
  v0 = communicationSafetySupportedCountryLanguagePairs_communicationSafetySupportedCountryLanguagePairs;
  communicationSafetySupportedCountryLanguagePairs_communicationSafetySupportedCountryLanguagePairs = &unk_1F3059E30;
}

+ (id)resourcesURL
{
  v2 = [MEMORY[0x1E698DC80] sharedInstance];
  v3 = [v2 primaryAuthKitAccount];
  if (v3)
  {
    v4 = [v2 appleIDCountryCodeForAccount:v3];
    if (v4)
    {
      goto LABEL_8;
    }

    v5 = +[STLog communicationSafety];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      +[(STCommunicationSafetyResourcesURLGenerator *)v5];
    }
  }

  else
  {
    v5 = +[STLog communicationSafety];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      +[(STCommunicationSafetyResourcesURLGenerator *)v5];
    }
  }

  v4 = 0;
LABEL_8:
  v6 = [MEMORY[0x1E695DF58] currentLocale];
  v7 = [v6 languageCode];

  v8 = [objc_opt_class() resourcesURLForCountryCode:v4 languageCode:v7];

  return v8;
}

+ (id)resourcesURLForCountryCode:(id)a3 languageCode:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (v5)
  {
    v7 = [objc_opt_class() communicationSafetySupportedCountryLanguagePairs];
    v8 = [v7 objectForKey:v5];

    if (v8)
    {
      v9 = [v8 containsObject:v6];
      v10 = MEMORY[0x1E696AEC0];
      if (v9)
      {
        v11 = [v5 lowercaseString];
        v12 = [v10 stringWithFormat:@"%@-%@", v6, v11];
      }

      else
      {
        v11 = [v8 firstObject];
        v14 = [v5 lowercaseString];
        v12 = [v10 stringWithFormat:@"%@-%@", v11, v14];
      }

      v13 = [@"https://www.apple.com/go/child-safety/rp/" stringByAppendingString:v12];
    }

    else
    {
      v13 = @"https://www.apple.com/go/child-safety/rp/";
    }
  }

  else
  {
    v13 = @"https://www.apple.com/go/child-safety/rp/";
  }

  v15 = [MEMORY[0x1E695DFF8] URLWithString:v13];

  return v15;
}

@end