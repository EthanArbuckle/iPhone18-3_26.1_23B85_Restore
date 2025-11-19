@interface PKDUserPrefs
- (PKDUserPrefs)init;
- (id)exclusions;
@end

@implementation PKDUserPrefs

- (id)exclusions
{
  v2 = PKPreferenceDomain;
  CFPreferencesSynchronize(PKPreferenceDomain, kCFPreferencesCurrentUser, kCFPreferencesCurrentHost);
  v3 = CFPreferencesCopyValue(PKExclusionsPreferenceKey, v2, kCFPreferencesCurrentUser, kCFPreferencesCurrentHost);

  return v3;
}

- (PKDUserPrefs)init
{
  v4.receiver = self;
  v4.super_class = PKDUserPrefs;
  result = [(PKDUserPrefs *)&v4 init];
  if (result)
  {
    v3 = result;
    [(PKDUserPrefs *)result addSuiteNamed:PKPreferenceDomain];
    return v3;
  }

  return result;
}

@end