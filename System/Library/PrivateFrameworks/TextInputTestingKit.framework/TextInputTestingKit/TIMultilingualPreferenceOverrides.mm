@interface TIMultilingualPreferenceOverrides
- (TIMultilingualPreferenceOverrides)initWithPreferredSecondaryInputMode:(id)a3 userEnabledInputModes:(id)a4 userPreferredLanguages:(id)a5;
@end

@implementation TIMultilingualPreferenceOverrides

- (TIMultilingualPreferenceOverrides)initWithPreferredSecondaryInputMode:(id)a3 userEnabledInputModes:(id)a4 userPreferredLanguages:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = TIMultilingualPreferenceOverrides;
  v12 = [(TIMultilingualPreferenceOverrides *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_preferredSecondaryInputMode, a3);
    objc_storeStrong(&v13->_userEnabledInputModes, a4);
    objc_storeStrong(&v13->_userPreferredLanguages, a5);
  }

  return v13;
}

@end