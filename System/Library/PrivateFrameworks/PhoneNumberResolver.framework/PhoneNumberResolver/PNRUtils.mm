@interface PNRUtils
+ (BOOL)_isValidPhoneNumber:(id)number;
+ (id)_currentCountry;
+ (id)_preferredLanguages;
+ (id)_stringByStrippingFormattingAndNotVisiblyAllowable:(id)allowable;
+ (void)_countryCodeFromInternationalCode:(id)code result:(id)result;
+ (void)_localizedCountryNameForISOCountryCode:(id)code result:(id)result;
@end

@implementation PNRUtils

+ (void)_localizedCountryNameForISOCountryCode:(id)code result:(id)result
{
  resultCopy = result;
  v5 = MEMORY[0x277CBEAF8];
  codeCopy = code;
  currentLocale = [v5 currentLocale];
  v8 = [currentLocale displayNameForKey:*MEMORY[0x277CBE690] value:codeCopy];

  if (v8)
  {
    v9 = 0;
  }

  else
  {
    v9 = [MEMORY[0x277CCA9B8] _PNRNotFoundErrorWithUserInfo:&unk_28703BA70];
  }

  resultCopy[2](resultCopy, v8, v9);
}

+ (void)_countryCodeFromInternationalCode:(id)code result:(id)result
{
  resultCopy = result;
  v5 = _PNCopyCountryCodeForInternationalCode();
  if (v5)
  {
    v6 = CFAutorelease(v5);
    v7 = 0;
  }

  else
  {
    v7 = [MEMORY[0x277CCA9B8] _PNRNotFoundErrorWithUserInfo:&unk_28703BA98];
    v6 = 0;
  }

  v8 = v6;
  resultCopy[2](resultCopy);
}

+ (id)_stringByStrippingFormattingAndNotVisiblyAllowable:(id)allowable
{
  v3 = _PNCreateStringByStrippingFormattingAndNotVisiblyAllowable();

  return CFAutorelease(v3);
}

+ (BOOL)_isValidPhoneNumber:(id)number
{
  v3 = MEMORY[0x277CCAC30];
  numberCopy = number;
  v5 = [v3 predicateWithFormat:@"SELF MATCHES %@", @"\\+?[0-9]+"];
  v6 = [v5 evaluateWithObject:numberCopy];

  return v6;
}

+ (id)_currentCountry
{
  mEMORY[0x277D0EB00] = [MEMORY[0x277D0EB00] sharedConfiguration];
  countryCode = [mEMORY[0x277D0EB00] countryCode];

  return countryCode;
}

+ (id)_preferredLanguages
{
  preferredLanguages = [MEMORY[0x277CBEAF8] preferredLanguages];
  if (![preferredLanguages count])
  {

    preferredLanguages = &unk_28703B968;
  }

  return preferredLanguages;
}

@end