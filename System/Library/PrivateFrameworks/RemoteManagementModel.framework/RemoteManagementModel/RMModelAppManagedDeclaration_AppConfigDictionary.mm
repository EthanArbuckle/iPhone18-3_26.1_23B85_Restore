@interface RMModelAppManagedDeclaration_AppConfigDictionary
+ (NSSet)allowedPayloadKeys;
+ (id)buildRequiredOnly;
+ (id)buildWithDataAssetReference:(id)reference passwords:(id)passwords identities:(id)identities certificates:(id)certificates;
- (BOOL)loadFromDictionary:(id)dictionary serializationType:(signed __int16)type error:(id *)error;
- (id)copyWithZone:(_NSZone *)zone;
- (id)serializeWithType:(signed __int16)type;
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

+ (id)buildWithDataAssetReference:(id)reference passwords:(id)passwords identities:(id)identities certificates:(id)certificates
{
  certificatesCopy = certificates;
  identitiesCopy = identities;
  passwordsCopy = passwords;
  referenceCopy = reference;
  v13 = objc_opt_new();
  [v13 setPayloadDataAssetReference:referenceCopy];

  [v13 setPayloadPasswords:passwordsCopy];
  [v13 setPayloadIdentities:identitiesCopy];

  [v13 setPayloadCertificates:certificatesCopy];

  return v13;
}

+ (id)buildRequiredOnly
{
  v2 = objc_opt_new();

  return v2;
}

- (BOOL)loadFromDictionary:(id)dictionary serializationType:(signed __int16)type error:(id *)error
{
  dictionaryCopy = dictionary;
  v9 = MEMORY[0x277CBEB58];
  allKeys = [dictionaryCopy allKeys];
  v11 = [v9 setWithArray:allKeys];

  v12 = +[RMModelAppManagedDeclaration_AppConfigDictionary allowedPayloadKeys];
  [v11 minusSet:v12];

  v13 = [v11 copy];
  [(RMModelPayloadBase *)self setUnknownPayloadKeys:v13];

  if ([(RMModelPayloadBase *)self loadStringFromDictionary:dictionaryCopy usingKey:@"DataAssetReference" forKeyPath:@"payloadDataAssetReference" isRequired:0 defaultValue:0 error:error]&& (LOWORD(v16) = type, [(RMModelPayloadBase *)self loadArrayFromDictionary:dictionaryCopy usingKey:@"Passwords" forKeyPath:@"payloadPasswords" classType:objc_opt_class() nested:0 isRequired:0 defaultValue:0 serializationType:v16 error:error]) && (LOWORD(v17) = type, [(RMModelPayloadBase *)self loadArrayFromDictionary:dictionaryCopy usingKey:@"Identities" forKeyPath:@"payloadIdentities" classType:objc_opt_class() nested:0 isRequired:0 defaultValue:0 serializationType:v17 error:error]))
  {
    LOWORD(v18) = type;
    v14 = [(RMModelPayloadBase *)self loadArrayFromDictionary:dictionaryCopy usingKey:@"Certificates" forKeyPath:@"payloadCertificates" classType:objc_opt_class() nested:0 isRequired:0 defaultValue:0 serializationType:v18 error:error];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (id)serializeWithType:(signed __int16)type
{
  v5 = objc_opt_new();
  payloadDataAssetReference = [(RMModelAppManagedDeclaration_AppConfigDictionary *)self payloadDataAssetReference];
  [(RMModelPayloadBase *)self serializeStringIntoDictionary:v5 usingKey:@"DataAssetReference" value:payloadDataAssetReference isRequired:0 defaultValue:0];

  payloadPasswords = [(RMModelAppManagedDeclaration_AppConfigDictionary *)self payloadPasswords];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __70__RMModelAppManagedDeclaration_AppConfigDictionary_serializeWithType___block_invoke;
  v16[3] = &__block_descriptor_34_e69___NSDictionary_16__0__RMModelAppManagedDeclaration_CredentialConfig_8l;
  typeCopy = type;
  [(RMModelPayloadBase *)self serializeArrayIntoDictionary:v5 usingKey:@"Passwords" value:payloadPasswords itemSerializer:v16 isRequired:0 defaultValue:0];

  payloadIdentities = [(RMModelAppManagedDeclaration_AppConfigDictionary *)self payloadIdentities];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __70__RMModelAppManagedDeclaration_AppConfigDictionary_serializeWithType___block_invoke_2;
  v14[3] = &__block_descriptor_34_e69___NSDictionary_16__0__RMModelAppManagedDeclaration_CredentialConfig_8l;
  typeCopy2 = type;
  [(RMModelPayloadBase *)self serializeArrayIntoDictionary:v5 usingKey:@"Identities" value:payloadIdentities itemSerializer:v14 isRequired:0 defaultValue:0];

  payloadCertificates = [(RMModelAppManagedDeclaration_AppConfigDictionary *)self payloadCertificates];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __70__RMModelAppManagedDeclaration_AppConfigDictionary_serializeWithType___block_invoke_3;
  v12[3] = &__block_descriptor_34_e69___NSDictionary_16__0__RMModelAppManagedDeclaration_CredentialConfig_8l;
  typeCopy3 = type;
  [(RMModelPayloadBase *)self serializeArrayIntoDictionary:v5 usingKey:@"Certificates" value:payloadCertificates itemSerializer:v12 isRequired:0 defaultValue:0];

  v10 = [v5 copy];

  return v10;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v14.receiver = self;
  v14.super_class = RMModelAppManagedDeclaration_AppConfigDictionary;
  v4 = [(RMModelPayloadBase *)&v14 copyWithZone:zone];
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