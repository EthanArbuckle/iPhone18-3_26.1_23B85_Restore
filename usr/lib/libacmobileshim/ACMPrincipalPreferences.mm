@interface ACMPrincipalPreferences
+ (id)preferencesForPrincipal:(id)a3;
- (ACMPrincipalPreferences)initWithPrincipal:(id)a3;
- (NSNumber)clientSecretCreateDate;
- (NSNumber)personID;
- (NSString)clientSecret;
- (id)realm;
- (id)userName;
- (void)dealloc;
- (void)setClientSecret:(id)a3;
- (void)setClientSecretCreateDate:(id)a3;
- (void)setPersonID:(id)a3;
@end

@implementation ACMPrincipalPreferences

+ (id)preferencesForPrincipal:(id)a3
{
  v3 = [[a1 alloc] initWithPrincipal:a3];

  return v3;
}

- (ACMPrincipalPreferences)initWithPrincipal:(id)a3
{
  v7.receiver = self;
  v7.super_class = ACMPrincipalPreferences;
  v4 = [(ACMPrincipalPreferences *)&v7 init];
  v5 = v4;
  if (v4)
  {
    [(ACMPrincipalPreferences *)v4 setPrincipal:a3];
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
  v2 = [(ACMPrincipalPreferences *)self principal];

  return [(ACFPrincipal *)v2 userName];
}

- (id)realm
{
  v2 = [(ACMPrincipalPreferences *)self principal];

  return [(ACFPrincipal *)v2 realm];
}

- (NSString)clientSecret
{
  v2 = [(ACMPreferences *)self preferencesStore];

  return [(ACMPreferencesStore *)v2 preferencesValueForKey:@"ACM2SVClientSecret"];
}

- (void)setClientSecret:(id)a3
{
  v4 = [(ACMPreferences *)self preferencesStore];

  [(ACMPreferencesStore *)v4 setPreferencesValue:a3 forKey:@"ACM2SVClientSecret"];
}

- (NSNumber)clientSecretCreateDate
{
  v2 = [(ACMPreferences *)self preferencesStore];

  return [(ACMPreferencesStore *)v2 preferencesValueForKey:@"ACM2SVClientSecretCreateDate"];
}

- (void)setClientSecretCreateDate:(id)a3
{
  v4 = [(ACMPreferences *)self preferencesStore];

  [(ACMPreferencesStore *)v4 setPreferencesValue:a3 forKey:@"ACM2SVClientSecretCreateDate"];
}

- (NSNumber)personID
{
  v2 = [(ACMPreferences *)self preferencesStore];

  return [(ACMPreferencesStore *)v2 preferencesValueForKey:@"ACMPersonID"];
}

- (void)setPersonID:(id)a3
{
  v4 = [(ACMPreferences *)self preferencesStore];

  [(ACMPreferencesStore *)v4 setPreferencesValue:a3 forKey:@"ACMPersonID"];
}

@end