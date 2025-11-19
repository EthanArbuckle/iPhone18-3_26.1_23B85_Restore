@interface NSLocale(PhoneNumbers)
+ (id)nationalDirectDialingPrefixForISOCountryCode:()PhoneNumbers;
+ (uint64_t)ITUCountryCodeForISOCountryCode:()PhoneNumbers;
- (id)nationalDirectDialingPrefix;
- (uint64_t)ITUCountryCode;
@end

@implementation NSLocale(PhoneNumbers)

+ (uint64_t)ITUCountryCodeForISOCountryCode:()PhoneNumbers
{
  v0 = _PNCopyInternationalCodeForCountry();
  v1 = v0;
  if (v0 && [v0 integerValue] >= 1)
  {
    v2 = [v1 integerValue];
  }

  else
  {
    v2 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v2;
}

+ (id)nationalDirectDialingPrefixForISOCountryCode:()PhoneNumbers
{
  v0 = *MEMORY[0x277CBECE8];
  v1 = _PNCopyNationalDirectDialingPrefixForCountry();

  return v1;
}

- (uint64_t)ITUCountryCode
{
  v1 = [a1 countryCode];
  if (v1)
  {
    v2 = [objc_opt_class() ITUCountryCodeForISOCountryCode:v1];
  }

  else
  {
    v2 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v2;
}

- (id)nationalDirectDialingPrefix
{
  v1 = [a1 countryCode];
  if (v1)
  {
    v2 = [objc_opt_class() nationalDirectDialingPrefixForISOCountryCode:v1];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

@end