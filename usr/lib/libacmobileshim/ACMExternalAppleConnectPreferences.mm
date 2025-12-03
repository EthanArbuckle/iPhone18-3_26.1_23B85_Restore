@interface ACMExternalAppleConnectPreferences
- (NSData)secret;
- (void)setSecret:(id)secret;
@end

@implementation ACMExternalAppleConnectPreferences

- (NSData)secret
{
  preferencesStore = [(ACMPreferences *)self preferencesStore];

  return [(ACMPreferencesStore *)preferencesStore preferencesValueForKey:@"com.apple.ist.appleconnect.tgt" withOptions:2];
}

- (void)setSecret:(id)secret
{
  preferencesStore = [(ACMPreferences *)self preferencesStore];

  [(ACMPreferencesStore *)preferencesStore setPreferencesValue:secret forKey:@"com.apple.ist.appleconnect.tgt" withOptions:2];
}

@end