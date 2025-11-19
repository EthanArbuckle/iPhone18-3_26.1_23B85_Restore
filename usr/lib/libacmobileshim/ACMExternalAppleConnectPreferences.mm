@interface ACMExternalAppleConnectPreferences
- (NSData)secret;
- (void)setSecret:(id)a3;
@end

@implementation ACMExternalAppleConnectPreferences

- (NSData)secret
{
  v2 = [(ACMPreferences *)self preferencesStore];

  return [(ACMPreferencesStore *)v2 preferencesValueForKey:@"com.apple.ist.appleconnect.tgt" withOptions:2];
}

- (void)setSecret:(id)a3
{
  v4 = [(ACMPreferences *)self preferencesStore];

  [(ACMPreferencesStore *)v4 setPreferencesValue:a3 forKey:@"com.apple.ist.appleconnect.tgt" withOptions:2];
}

@end