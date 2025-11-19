@interface RMModelAppManagedDeclaration_AppConfigDictionary
+ (NSSet)allowedPayloadKeys;
+ (id)buildRequiredOnly;
+ (id)buildWithDataAssetReference:(id)a3 passwords:(id)a4 identities:(id)a5 certificates:(id)a6;
- (BOOL)loadFromDictionary:(id)a3 serializationType:(signed __int16)a4 error:(id *)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (id)serializeWithType:(signed __int16)a3;
@end

@implementation RMModelAppManagedDeclaration_AppConfigDictionary

+ (NSSet)allowedPayloadKeys
{
  v7[4] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CBEB98];
  v7[0] = @"DataAssetReference";
  v7[1] = @"Passwords";
  v7[2] = @"Identities";
  v7[3] = @"Certificates";
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:4];
  v4 = [v2 setWithArray:v3];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

+ (id)buildWithDataAssetReference:(id)a3 passwords:(id)a4 identities:(id)a5 certificates:(id)a6
{
  v9 = a6;
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v13 = objc_opt_new();
  [v13 setPayloadDataAssetReference:v12];

  [v13 setPayloadPasswords:v11];
  [v13 setPayloadIdentities:v10];

  [v13 setPayloadCertificates:v9];

  return v13;
}

+ (id)buildRequiredOnly
{
  v2 = objc_opt_new();

  return v2;
}

- (BOOL)loadFromDictionary:(id)a3 serializationType:(signed __int16)a4 error:(id *)a5
{
  v8 = a3;
  v9 = MEMORY[0x277CBEB58];
  v10 = [v8 allKeys];
  v11 = [v9 setWithArray:v10];

  v12 = +[RMModelAppManagedDeclaration_AppConfigDictionary allowedPayloadKeys];
  [v11 minusSet:v12];

  v13 = [v11 copy];
  [(RMModelPayloadBase *)self setUnknownPayloadKeys:v13];

  if ([(RMModelPayloadBase *)self loadStringFromDictionary:v8 usingKey:@"DataAssetReference" forKeyPath:@"payloadDataAssetReference" isRequired:0 defaultValue:0 error:a5]&& (LOWORD(v16) = a4, [(RMModelPayloadBase *)self loadArrayFromDictionary:v8 usingKey:@"Passwords" forKeyPath:@"payloadPasswords" classType:objc_opt_class() nested:0 isRequired:0 defaultValue:0 serializationType:v16 error:a5]) && (LOWORD(v17) = a4, [(RMModelPayloadBase *)self loadArrayFromDictionary:v8 usingKey:@"Identities" forKeyPath:@"payloadIdentities" classType:objc_opt_class() nested:0 isRequired:0 defaultValue:0 serializationType:v17 error:a5]))
  {
    LOWORD(v18) = a4;
    v14 = [(RMModelPayloadBase *)self loadArrayFromDictionary:v8 usingKey:@"Certificates" forKeyPath:@"payloadCertificates" classType:objc_opt_class() nested:0 isRequired:0 defaultValue:0 serializationType:v18 error:a5];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (id)serializeWithType:(signed __int16)a3
{
  v5 = objc_opt_new();
  v6 = [(RMModelAppManagedDeclaration_AppConfigDictionary *)self payloadDataAssetReference];
  [(RMModelPayloadBase *)self serializeStringIntoDictionary:v5 usingKey:@"DataAssetReference" value:v6 isRequired:0 defaultValue:0];

  v7 = [(RMModelAppManagedDeclaration_AppConfigDictionary *)self payloadPasswords];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __70__RMModelAppManagedDeclaration_AppConfigDictionary_serializeWithType___block_invoke;
  v16[3] = &__block_descriptor_34_e69___NSDictionary_16__0__RMModelAppManagedDeclaration_CredentialConfig_8l;
  v17 = a3;
  [(RMModelPayloadBase *)self serializeArrayIntoDictionary:v5 usingKey:@"Passwords" value:v7 itemSerializer:v16 isRequired:0 defaultValue:0];

  v8 = [(RMModelAppManagedDeclaration_AppConfigDictionary *)self payloadIdentities];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __70__RMModelAppManagedDeclaration_AppConfigDictionary_serializeWithType___block_invoke_2;
  v14[3] = &__block_descriptor_34_e69___NSDictionary_16__0__RMModelAppManagedDeclaration_CredentialConfig_8l;
  v15 = a3;
  [(RMModelPayloadBase *)self serializeArrayIntoDictionary:v5 usingKey:@"Identities" value:v8 itemSerializer:v14 isRequired:0 defaultValue:0];

  v9 = [(RMModelAppManagedDeclaration_AppConfigDictionary *)self payloadCertificates];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __70__RMModelAppManagedDeclaration_AppConfigDictionary_serializeWithType___block_invoke_3;
  v12[3] = &__block_descriptor_34_e69___NSDictionary_16__0__RMModelAppManagedDeclaration_CredentialConfig_8l;
  v13 = a3;
  [(RMModelPayloadBase *)self serializeArrayIntoDictionary:v5 usingKey:@"Certificates" value:v9 itemSerializer:v12 isRequired:0 defaultValue:0];

  v10 = [v5 copy];

  return v10;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v14.receiver = self;
  v14.super_class = RMModelAppManagedDeclaration_AppConfigDictionary;
  v4 = [(RMModelPayloadBase *)&v14 copyWithZone:a3];
  v5 = [(NSString *)self->_payloadDataAssetReference copy];
  v6 = v4[2];
  v4[2] = v5;

  v7 = [(NSArray *)self->_payloadPasswords copy];
  v8 = v4[3];
  v4[3] = v7;

  v9 = [(NSArray *)self->_payloadIdentities copy];
  v10 = v4[4];
  v4[4] = v9;

  v11 = [(NSArray *)self->_payloadCertificates copy];
  v12 = v4[5];
  v4[5] = v11;

  return v4;
}

@end