@interface PNRUtils
+ (BOOL)_isValidPhoneNumber:(id)a3;
+ (id)_currentCountry;
+ (id)_preferredLanguages;
+ (id)_stringByStrippingFormattingAndNotVisiblyAllowable:(id)a3;
+ (void)_countryCodeFromInternationalCode:(id)a3 result:(id)a4;
+ (void)_localizedCountryNameForISOCountryCode:(id)a3 result:(id)a4;
@end

@implementation PNRUtils

+ (void)_localizedCountryNameForISOCountryCode:(id)a3 result:(id)a4
{
  v10 = a4;
  v5 = MEMORY[0x277CBEAF8];
  v6 = a3;
  v7 = [v5 currentLocale];
  v8 = [v7 displayNameForKey:*MEMORY[0x277CBE690] value:v6];

  if (v8)
  {
    v9 = 0;
  }

  else
  {
    v9 = [MEMORY[0x277CCA9B8] _PNRNotFoundErrorWithUserInfo:&unk_28703BA70];
  }

  v10[2](v10, v8, v9);
}

+ (void)_countryCodeFromInternationalCode:(id)a3 result:(id)a4
{
  v4 = a4;
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
  v4[2](v4);
}

+ (id)_stringByStrippingFormattingAndNotVisiblyAllowable:(id)a3
{
  v3 = _PNCreateStringByStrippingFormattingAndNotVisiblyAllowable();

  return CFAutorelease(v3);
}

+ (BOOL)_isValidPhoneNumber:(id)a3
{
  v3 = MEMORY[0x277CCAC30];
  v4 = a3;
  v5 = [v3 predicateWithFormat:@"SELF MATCHES %@", @"\\+?[0-9]+"];
  v6 = [v5 evaluateWithObject:v4];

  return v6;
}

+ (id)_currentCountry
{
  v2 = [MEMORY[0x277D0EB00] sharedConfiguration];
  v3 = [v2 countryCode];

  return v3;
}

+ (id)_preferredLanguages
{
  v2 = [MEMORY[0x277CBEAF8] preferredLanguages];
  if (![v2 count])
  {

    v2 = &unk_28703B968;
  }

  return v2;
}

@end