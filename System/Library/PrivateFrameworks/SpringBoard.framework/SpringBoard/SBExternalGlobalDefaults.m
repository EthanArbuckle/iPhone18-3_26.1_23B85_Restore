@interface SBExternalGlobalDefaults
- (NSArray)keyboards;
- (NSArray)languages;
- (NSString)locale;
- (void)removeFormattedPhoneNumberFromGlobalPreferences;
@end

@implementation SBExternalGlobalDefaults

- (NSString)locale
{
  v2 = CFPreferencesCopyValue(@"AppleLocale", *MEMORY[0x277CBF008], *MEMORY[0x277CBF040], *MEMORY[0x277CBF010]);

  return v2;
}

- (NSArray)languages
{
  v2 = CFPreferencesCopyValue(@"AppleLanguages", *MEMORY[0x277CBF008], *MEMORY[0x277CBF040], *MEMORY[0x277CBF010]);

  return v2;
}

- (NSArray)keyboards
{
  v2 = CFPreferencesCopyValue(@"AppleKeyboards", *MEMORY[0x277CBF008], *MEMORY[0x277CBF040], *MEMORY[0x277CBF010]);

  return v2;
}

- (void)removeFormattedPhoneNumberFromGlobalPreferences
{
  v2 = *MEMORY[0x277CBF008];
  v3 = *MEMORY[0x277CBF040];
  v4 = *MEMORY[0x277CBF030];
  CFPreferencesSetValue(@"SBFormattedPhoneNumber", 0, *MEMORY[0x277CBF008], *MEMORY[0x277CBF040], *MEMORY[0x277CBF030]);

  CFPreferencesSynchronize(v2, v3, v4);
}

@end