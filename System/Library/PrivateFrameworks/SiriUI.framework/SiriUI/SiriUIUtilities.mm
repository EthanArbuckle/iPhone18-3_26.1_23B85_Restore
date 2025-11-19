@interface SiriUIUtilities
+ (BOOL)string:(id)a3 isSameAsUserUtterance:(id)a4;
+ (id)_normalizeTextString:(id)a3;
+ (id)defaultBrowserBundleIdentifier;
+ (id)deviceSpecificKeyForDefaultKey:(id)a3;
+ (id)stringForDeviceType;
+ (id)stringForSiriUIBackgroundBlurReason:(int64_t)a3;
@end

@implementation SiriUIUtilities

+ (id)stringForSiriUIBackgroundBlurReason:(int64_t)a3
{
  if ((a3 - 1) > 4)
  {
    return @"SiriUIBackgroundBlurReasonForceDismissal";
  }

  else
  {
    return off_279C5A790[a3 - 1];
  }
}

+ (id)stringForDeviceType
{
  v2 = [MEMORY[0x277D75418] currentDevice];
  v3 = [v2 model];

  return v3;
}

+ (id)deviceSpecificKeyForDefaultKey:(id)a3
{
  v3 = a3;
  v4 = +[SiriUIUtilities stringForDeviceType];
  if ([v4 containsString:@"iPhone"])
  {
    v5 = @"_IPHONE";
LABEL_7:
    v6 = [v3 stringByAppendingString:v5];
    goto LABEL_8;
  }

  if ([v4 containsString:@"iPad"])
  {
    v5 = @"_IPAD";
    goto LABEL_7;
  }

  if ([v4 containsString:@"iPod"])
  {
    v5 = @"_IPOD";
    goto LABEL_7;
  }

  v6 = v3;
LABEL_8:
  v7 = v6;

  return v7;
}

+ (BOOL)string:(id)a3 isSameAsUserUtterance:(id)a4
{
  v6 = a4;
  v7 = [a1 _normalizeTextString:a3];
  v8 = [v6 bestTextInterpretation];

  v9 = [a1 _normalizeTextString:v8];
  LOBYTE(v6) = [v7 localizedStandardCompare:v9] == 0;

  return v6;
}

+ (id)_normalizeTextString:(id)a3
{
  v3 = MEMORY[0x277CCA900];
  v4 = a3;
  v5 = [v3 whitespaceCharacterSet];
  v6 = [v4 stringByTrimmingCharactersInSet:v5];

  v7 = [v6 stringByReplacingOccurrencesOfString:@"’" withString:@"'"];
  v8 = [v7 stringByReplacingOccurrencesOfString:@"“" withString:@""];

  return v8;
}

+ (id)defaultBrowserBundleIdentifier
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2050000000;
  v2 = getSearchUIDefaultBrowserAppIconImageClass_softClass;
  v10 = getSearchUIDefaultBrowserAppIconImageClass_softClass;
  if (!getSearchUIDefaultBrowserAppIconImageClass_softClass)
  {
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __getSearchUIDefaultBrowserAppIconImageClass_block_invoke;
    v6[3] = &unk_279C59F40;
    v6[4] = &v7;
    __getSearchUIDefaultBrowserAppIconImageClass_block_invoke(v6);
    v2 = v8[3];
  }

  v3 = v2;
  _Block_object_dispose(&v7, 8);
  v4 = [v2 defaultBrowserBundleIdentifier];

  return v4;
}

@end