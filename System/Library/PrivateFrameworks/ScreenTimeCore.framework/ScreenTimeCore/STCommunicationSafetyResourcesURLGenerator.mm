@interface STCommunicationSafetyResourcesURLGenerator
+ (id)communicationSafetySupportedCountryLanguagePairs;
+ (id)resourcesURL;
+ (id)resourcesURLForCountryCode:(id)code languageCode:(id)languageCode;
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
  mEMORY[0x1E698DC80] = [MEMORY[0x1E698DC80] sharedInstance];
  primaryAuthKitAccount = [mEMORY[0x1E698DC80] primaryAuthKitAccount];
  if (primaryAuthKitAccount)
  {
    v4 = [mEMORY[0x1E698DC80] appleIDCountryCodeForAccount:primaryAuthKitAccount];
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
  currentLocale = [MEMORY[0x1E695DF58] currentLocale];
  languageCode = [currentLocale languageCode];

  v8 = [objc_opt_class() resourcesURLForCountryCode:v4 languageCode:languageCode];

  return v8;
}

+ (id)resourcesURLForCountryCode:(id)code languageCode:(id)languageCode
{
  codeCopy = code;
  languageCodeCopy = languageCode;
  if (codeCopy)
  {
    communicationSafetySupportedCountryLanguagePairs = [objc_opt_class() communicationSafetySupportedCountryLanguagePairs];
    v8 = [communicationSafetySupportedCountryLanguagePairs objectForKey:codeCopy];

    if (v8)
    {
      v9 = [v8 containsObject:languageCodeCopy];
      v10 = MEMORY[0x1E696AEC0];
      if (v9)
      {
        lowercaseString = [codeCopy lowercaseString];
        v12 = [v10 stringWithFormat:@"%@-%@", languageCodeCopy, lowercaseString];
      }

      else
      {
        lowercaseString = [v8 firstObject];
        lowercaseString2 = [codeCopy lowercaseString];
        v12 = [v10 stringWithFormat:@"%@-%@", lowercaseString, lowercaseString2];
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