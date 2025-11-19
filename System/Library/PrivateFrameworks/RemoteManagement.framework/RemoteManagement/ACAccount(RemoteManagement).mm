@interface ACAccount(RemoteManagement)
+ (id)rm_createBearerAccountWithStore:()RemoteManagement username:description:enrollmentURL:authToken:;
+ (id)rm_createMAIDAccountWithStore:()RemoteManagement username:description:dsid:altDSID:personaIdentifier:enrollmentURL:;
+ (id)rm_createTestAccountWithStore:()RemoteManagement username:description:enrollmentURL:;
- (uint64_t)rm_isAccountSchemeBearer;
- (uint64_t)rm_isAccountSchemeMAID;
- (uint64_t)rm_isAccountSchemeTest;
- (uint64_t)rm_managedByOlympus;
@end

@implementation ACAccount(RemoteManagement)

+ (id)rm_createTestAccountWithStore:()RemoteManagement username:description:enrollmentURL:
{
  v9 = MEMORY[0x1E6959A28];
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = [v9 alloc];
  v15 = [v13 rm_RemoteManagementAccountType];

  v16 = [v14 initWithAccountType:v15];
  [v16 rm_setAccountScheme:@"Test"];
  [v16 setUsername:v12];

  [v16 setAccountDescription:v11];
  [v16 rm_setEnrollmentURL:v10];

  [v16 setAuthenticated:1];

  return v16;
}

+ (id)rm_createBearerAccountWithStore:()RemoteManagement username:description:enrollmentURL:authToken:
{
  v11 = MEMORY[0x1E6959A28];
  v12 = a7;
  v13 = a6;
  v14 = a5;
  v15 = a4;
  v16 = a3;
  v17 = [v11 alloc];
  v18 = [v16 rm_RemoteManagementAccountType];

  v19 = [v17 initWithAccountType:v18];
  [v19 rm_setAccountScheme:@"Bearer"];
  [v19 setUsername:v15];

  [v19 setAccountDescription:v14];
  [v19 rm_setEnrollmentURL:v13];

  [v19 rm_setBearerToken:v12];
  [v19 setAuthenticated:1];

  return v19;
}

+ (id)rm_createMAIDAccountWithStore:()RemoteManagement username:description:dsid:altDSID:personaIdentifier:enrollmentURL:
{
  v15 = MEMORY[0x1E6959A28];
  v16 = a9;
  v17 = a8;
  v18 = a7;
  v19 = a6;
  v20 = a5;
  v21 = a4;
  v22 = a3;
  v23 = [v15 alloc];
  v24 = [v22 rm_RemoteManagementAccountType];

  v25 = [v23 initWithAccountType:v24];
  [v25 rm_setAccountScheme:@"MAID"];
  [v25 setUsername:v21];

  [v25 setAccountDescription:v20];
  [v25 rm_setDSID:v19];

  [v25 rm_setAltDSID:v18];
  [v25 rm_setPersonaIdentifier:v17];

  [v25 rm_setEnrollmentURL:v16];
  [v25 setAuthenticated:1];

  return v25;
}

- (uint64_t)rm_managedByOlympus
{
  v1 = [a1 objectForKeyedSubscript:@"additionalInfo"];
  v2 = [v1 objectForKeyedSubscript:@"managedByMDM"];
  v3 = [v2 BOOLValue];

  return v3;
}

- (uint64_t)rm_isAccountSchemeTest
{
  v1 = [a1 rm_accountScheme];
  v2 = [v1 isEqualToString:@"Test"];

  return v2;
}

- (uint64_t)rm_isAccountSchemeBearer
{
  v1 = [a1 rm_accountScheme];
  v2 = [v1 isEqualToString:@"Bearer"];

  return v2;
}

- (uint64_t)rm_isAccountSchemeMAID
{
  v1 = [a1 rm_accountScheme];
  v2 = [v1 isEqualToString:@"MAID"];

  return v2;
}

@end