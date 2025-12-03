@interface ACMPrincipalPreferences
+ (id)preferencesForPrincipal:(id)principal;
- (ACMPrincipalPreferences)initWithPrincipal:(id)principal;
- (NSNumber)clientSecretCreateDate;
- (NSNumber)personID;
- (NSString)clientSecret;
- (id)realm;
- (id)userName;
- (void)dealloc;
- (void)setClientSecret:(id)secret;
- (void)setClientSecretCreateDate:(id)date;
- (void)setPersonID:(id)d;
@end

@implementation ACMPrincipalPreferences

+ (id)preferencesForPrincipal:(id)principal
{
  v3 = [[self alloc] initWithPrincipal:principal];

  return v3;
}

- (ACMPrincipalPreferences)initWithPrincipal:(id)principal
{
  v7.receiver = self;
  v7.super_class = ACMPrincipalPreferences;
  v4 = [(ACMPrincipalPreferences *)&v7 init];
  v5 = v4;
  if (v4)
  {
    [(ACMPrincipalPreferences *)v4 setPrincipal:principal];
  }

  return v5;
}

- (void)dealloc
{
  [(ACMPrincipalPreferences *)self setPrincipal:0];
  v3.receiver = self;
  v3.super_class = ACMPrincipalPreferences;
  [(ACMPreferences *)&v3 dealloc];
}

- (id)userName
{
  principal = [(ACMPrincipalPreferences *)self principal];

  return [(ACFPrincipal *)principal userName];
}

- (id)realm
{
  principal = [(ACMPrincipalPreferences *)self principal];

  return [(ACFPrincipal *)principal realm];
}

- (NSString)clientSecret
{
  preferencesStore = [(ACMPreferences *)self preferencesStore];

  return [(ACMPreferencesStore *)preferencesStore preferencesValueForKey:@"ACM2SVClientSecret"];
}

- (void)setClientSecret:(id)secret
{
  preferencesStore = [(ACMPreferences *)self preferencesStore];

  [(ACMPreferencesStore *)preferencesStore setPreferencesValue:secret forKey:@"ACM2SVClientSecret"];
}

- (NSNumber)clientSecretCreateDate
{
  preferencesStore = [(ACMPreferences *)self preferencesStore];

  return [(ACMPreferencesStore *)preferencesStore preferencesValueForKey:@"ACM2SVClientSecretCreateDate"];
}

- (void)setClientSecretCreateDate:(id)date
{
  preferencesStore = [(ACMPreferences *)self preferencesStore];

  [(ACMPreferencesStore *)preferencesStore setPreferencesValue:date forKey:@"ACM2SVClientSecretCreateDate"];
}

- (NSNumber)personID
{
  preferencesStore = [(ACMPreferences *)self preferencesStore];

  return [(ACMPreferencesStore *)preferencesStore preferencesValueForKey:@"ACMPersonID"];
}

- (void)setPersonID:(id)d
{
  preferencesStore = [(ACMPreferences *)self preferencesStore];

  [(ACMPreferencesStore *)preferencesStore setPreferencesValue:d forKey:@"ACMPersonID"];
}

@end