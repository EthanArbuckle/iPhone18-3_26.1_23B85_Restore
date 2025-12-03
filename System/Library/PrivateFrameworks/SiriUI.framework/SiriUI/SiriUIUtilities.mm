@interface SiriUIUtilities
+ (BOOL)string:(id)string isSameAsUserUtterance:(id)utterance;
+ (id)_normalizeTextString:(id)string;
+ (id)defaultBrowserBundleIdentifier;
+ (id)deviceSpecificKeyForDefaultKey:(id)key;
+ (id)stringForDeviceType;
+ (id)stringForSiriUIBackgroundBlurReason:(int64_t)reason;
@end

@implementation SiriUIUtilities

+ (id)stringForSiriUIBackgroundBlurReason:(int64_t)reason
{
  if ((reason - 1) > 4)
  {
    return @"SiriUIBackgroundBlurReasonForceDismissal";
  }

  else
  {
    return off_279C5A790[reason - 1];
  }
}

+ (id)stringForDeviceType
{
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  model = [currentDevice model];

  return model;
}

+ (id)deviceSpecificKeyForDefaultKey:(id)key
{
  keyCopy = key;
  v4 = +[SiriUIUtilities stringForDeviceType];
  if ([v4 containsString:@"iPhone"])
  {
    v5 = @"_IPHONE";
LABEL_7:
    v6 = [keyCopy stringByAppendingString:v5];
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

  v6 = keyCopy;
LABEL_8:
  v7 = v6;

  return v7;
}

+ (BOOL)string:(id)string isSameAsUserUtterance:(id)utterance
{
  utteranceCopy = utterance;
  v7 = [self _normalizeTextString:string];
  bestTextInterpretation = [utteranceCopy bestTextInterpretation];

  v9 = [self _normalizeTextString:bestTextInterpretation];
  LOBYTE(utteranceCopy) = [v7 localizedStandardCompare:v9] == 0;

  return utteranceCopy;
}

+ (id)_normalizeTextString:(id)string
{
  v3 = MEMORY[0x277CCA900];
  stringCopy = string;
  whitespaceCharacterSet = [v3 whitespaceCharacterSet];
  v6 = [stringCopy stringByTrimmingCharactersInSet:whitespaceCharacterSet];

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
  defaultBrowserBundleIdentifier = [v2 defaultBrowserBundleIdentifier];

  return defaultBrowserBundleIdentifier;
}

@end