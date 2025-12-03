@interface _TIInputModePreferenceProvider
- (id)defaultEnabledInputModesForCurrentLocale;
- (id)enabledInputModeIdentifiers;
@end

@implementation _TIInputModePreferenceProvider

- (id)defaultEnabledInputModesForCurrentLocale
{
  mEMORY[0x277D6F380] = [MEMORY[0x277D6F380] sharedInputModeController];
  defaultEnabledInputModesForCurrentLocale = [mEMORY[0x277D6F380] defaultEnabledInputModesForCurrentLocale];

  v4 = [defaultEnabledInputModesForCurrentLocale copy];

  return v4;
}

- (id)enabledInputModeIdentifiers
{
  mEMORY[0x277D6F380] = [MEMORY[0x277D6F380] sharedInputModeController];
  enabledInputModeIdentifiers = [mEMORY[0x277D6F380] enabledInputModeIdentifiers];

  v4 = [enabledInputModeIdentifiers copy];

  return v4;
}

@end