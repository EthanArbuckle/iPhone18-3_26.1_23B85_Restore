@interface ACMEnvironmentPreferences
+ (id)environmentPreferencesWithRealm:(id)realm;
+ (id)environmentSpecifications;
+ (id)supportedRealms;
- (ACMEnvironmentPreferences)initWithRealm:(id)realm;
- (NSString)realm;
- (id)createPrincipalPreferencesWithUserName:(id)name;
- (id)environmentSpecificationForRealm:(id)realm;
- (id)iForgotURL;
- (id)principalPreferencesWithUserName:(id)name;
- (id)publicKeyCertificateName;
- (id)publicKeyVersion;
- (id)realmName;
- (id)realmShortName;
- (void)dealloc;
- (void)setPublicKeyCertificateName:(id)name;
- (void)setPublicKeyVersion:(id)version;
@end

@implementation ACMEnvironmentPreferences

+ (id)supportedRealms
{
  v3[3] = *MEMORY[0x29EDCA608];
  v3[0] = @"APPLECONNECT.APPLE.COM";
  v3[1] = @"APPLECONNECT-UAT.APPLE.COM";
  v3[2] = @"AC-AT.APPLE.COM";
  return [MEMORY[0x29EDB8D80] arrayWithObjects:v3 count:3];
}

+ (id)environmentSpecifications
{
  v10[3] = *MEMORY[0x29EDCA608];
  v9[0] = @"APPLECONNECT.APPLE.COM";
  v7[0] = @"ACMEnvironmentRealmKey";
  v7[1] = @"ACMEnvironmentRealmNameKey";
  v8[0] = @"APPLECONNECT.APPLE.COM";
  v8[1] = @"Production";
  v7[2] = @"ACMEnvironmentRealmShortNameKey";
  v7[3] = @"ACMEnvironmentIForgotLinkKey";
  v8[2] = @"Production";
  v8[3] = @"https://iforgot.apple.com/";
  v10[0] = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v8 forKeys:v7 count:4];
  v9[1] = @"APPLECONNECT-UAT.APPLE.COM";
  v5[0] = @"ACMEnvironmentRealmKey";
  v5[1] = @"ACMEnvironmentRealmNameKey";
  v6[0] = @"APPLECONNECT-UAT.APPLE.COM";
  v6[1] = @"User Acceptance Test";
  v5[2] = @"ACMEnvironmentRealmShortNameKey";
  v5[3] = @"ACMEnvironmentIForgotLinkKey";
  v6[2] = @"UAT";
  v6[3] = @"https://iforgot-uat.apple.com/";
  v10[1] = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v6 forKeys:v5 count:4];
  v9[2] = @"AC-AT.APPLE.COM";
  v3[0] = @"ACMEnvironmentRealmKey";
  v3[1] = @"ACMEnvironmentRealmNameKey";
  v4[0] = @"AC-AT.APPLE.COM";
  v4[1] = @"Acceptance Test (Old)";
  v3[2] = @"ACMEnvironmentRealmShortNameKey";
  v3[3] = @"ACMEnvironmentIForgotLinkKey";
  v4[2] = @"UAT Old";
  v4[3] = @"https://iforgott.apple.com/";
  v10[2] = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v4 forKeys:v3 count:4];
  return [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v10 forKeys:v9 count:3];
}

+ (id)environmentPreferencesWithRealm:(id)realm
{
  if (![ACMEnvironmentPreferences isSupportedRealm:?])
  {
    return 0;
  }

  v5 = [[self alloc] initWithRealm:realm];

  return v5;
}

- (ACMEnvironmentPreferences)initWithRealm:(id)realm
{
  v7.receiver = self;
  v7.super_class = ACMEnvironmentPreferences;
  v4 = [(ACMEnvironmentPreferences *)&v7 init];
  v5 = v4;
  if (v4)
  {
    [(ACMEnvironmentPreferences *)v4 setEnvironmentSpecification:[(ACMEnvironmentPreferences *)v4 environmentSpecificationForRealm:realm]];
  }

  return v5;
}

- (void)dealloc
{
  [(ACMEnvironmentPreferences *)self setEnvironmentSpecification:0];
  [(ACMEnvironmentPreferences *)self setPrincipalPreferences:0];
  v3.receiver = self;
  v3.super_class = ACMEnvironmentPreferences;
  [(ACMPreferences *)&v3 dealloc];
}

- (id)principalPreferencesWithUserName:(id)name
{
  objc_sync_enter(self);
  if (([name isEqualToString:{-[ACMPrincipalPreferences userName](-[ACMEnvironmentPreferences principalPreferences](self, "principalPreferences"), "userName")}] & 1) == 0)
  {
    [(ACMEnvironmentPreferences *)self setPrincipalPreferences:[(ACMEnvironmentPreferences *)self createPrincipalPreferencesWithUserName:name]];
    [(ACMPreferences *)[(ACMEnvironmentPreferences *)self principalPreferences] setPreferencesStore:[(ACMPreferences *)self preferencesStore]];
  }

  principalPreferences = [(ACMEnvironmentPreferences *)self principalPreferences];
  objc_sync_exit(self);
  return principalPreferences;
}

- (id)createPrincipalPreferencesWithUserName:(id)name
{
  v3 = [ACFPrincipal principalWithUserName:name realm:[(ACMEnvironmentPreferences *)self realm]];

  return [ACMPrincipalPreferences preferencesForPrincipal:v3];
}

- (id)environmentSpecificationForRealm:(id)realm
{
  v4 = +[ACMEnvironmentPreferences environmentSpecifications];

  return [v4 objectForKey:realm];
}

- (NSString)realm
{
  environmentSpecification = [(ACMEnvironmentPreferences *)self environmentSpecification];

  return [(NSDictionary *)environmentSpecification objectForKeyedSubscript:@"ACMEnvironmentRealmKey"];
}

- (id)realmName
{
  environmentSpecification = [(ACMEnvironmentPreferences *)self environmentSpecification];

  return [(NSDictionary *)environmentSpecification objectForKeyedSubscript:@"ACMEnvironmentRealmNameKey"];
}

- (id)realmShortName
{
  environmentSpecification = [(ACMEnvironmentPreferences *)self environmentSpecification];

  return [(NSDictionary *)environmentSpecification objectForKeyedSubscript:@"ACMEnvironmentRealmShortNameKey"];
}

- (id)publicKeyCertificateName
{
  v3 = [@"PublicKeyCertificateNameKey" stringByAppendingFormat:@"-%@", -[ACMEnvironmentPreferences realm](self, "realm"), 0];

  return [(ACMPreferences *)self preferencesValueForKey:v3];
}

- (void)setPublicKeyCertificateName:(id)name
{
  v5 = [@"PublicKeyCertificateNameKey" stringByAppendingFormat:@"-%@", -[ACMEnvironmentPreferences realm](self, "realm"), 0];

  [(ACMPreferences *)self setPreferencesValue:name forKey:v5];
}

- (id)publicKeyVersion
{
  v3 = [@"ACMDSKeyVersionKey" stringByAppendingFormat:@"-%@", -[ACMEnvironmentPreferences realm](self, "realm"), 0];

  return [(ACMPreferences *)self preferencesValueForKey:v3];
}

- (void)setPublicKeyVersion:(id)version
{
  v5 = [@"ACMDSKeyVersionKey" stringByAppendingFormat:@"-%@", -[ACMEnvironmentPreferences realm](self, "realm"), 0];

  [(ACMPreferences *)self setPreferencesValue:version forKey:v5];
}

- (id)iForgotURL
{
  environmentSpecification = [(ACMEnvironmentPreferences *)self environmentSpecification];

  return [(NSDictionary *)environmentSpecification objectForKeyedSubscript:@"ACMEnvironmentIForgotLinkKey"];
}

@end