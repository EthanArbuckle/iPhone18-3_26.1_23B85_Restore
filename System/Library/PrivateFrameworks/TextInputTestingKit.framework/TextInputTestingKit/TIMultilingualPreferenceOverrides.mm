@interface TIMultilingualPreferenceOverrides
- (TIMultilingualPreferenceOverrides)initWithPreferredSecondaryInputMode:(id)mode userEnabledInputModes:(id)modes userPreferredLanguages:(id)languages;
@end

@implementation TIMultilingualPreferenceOverrides

- (TIMultilingualPreferenceOverrides)initWithPreferredSecondaryInputMode:(id)mode userEnabledInputModes:(id)modes userPreferredLanguages:(id)languages
{
  modeCopy = mode;
  modesCopy = modes;
  languagesCopy = languages;
  v15.receiver = self;
  v15.super_class = TIMultilingualPreferenceOverrides;
  v12 = [(TIMultilingualPreferenceOverrides *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_preferredSecondaryInputMode, mode);
    objc_storeStrong(&v13->_userEnabledInputModes, modes);
    objc_storeStrong(&v13->_userPreferredLanguages, languages);
  }

  return v13;
}

@end