@interface RMModelAccountMailDeclaration_SMIME
+ (NSSet)allowedPayloadKeys;
+ (id)buildRequiredOnly;
+ (id)buildWithSigning:(id)signing encryption:(id)encryption;
- (BOOL)loadFromDictionary:(id)dictionary serializationType:(signed __int16)type error:(id *)error;
- (id)copyWithZone:(_NSZone *)zone;
- (id)serializeWithType:(signed __int16)type;
@end

@implementation RMModelAccountMailDeclaration_SMIME

+ (NSSet)allowedPayloadKeys
{
  v7[2] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CBEB98];
  v7[0] = @"Signing";
  v7[1] = @"Encryption";
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:2];
  v4 = [v2 setWithArray:v3];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

+ (id)buildWithSigning:(id)signing encryption:(id)encryption
{
  encryptionCopy = encryption;
  signingCopy = signing;
  v7 = objc_opt_new();
  [v7 setPayloadSigning:signingCopy];

  [v7 setPayloadEncryption:encryptionCopy];

  return v7;
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

  v12 = +[RMModelAccountMailDeclaration_SMIME allowedPayloadKeys];
  [v11 minusSet:v12];

  v13 = [v11 copy];
  [(RMModelPayloadBase *)self setUnknownPayloadKeys:v13];

  LOWORD(v16) = type;
  v14 = 0;
  if ([(RMModelPayloadBase *)self loadDictionaryFromDictionary:dictionaryCopy usingKey:@"Signing" forKeyPath:@"payloadSigning" classType:objc_opt_class() isRequired:0 defaultValue:0 serializationType:v16 error:error])
  {
    LOWORD(v17) = type;
    v14 = [(RMModelPayloadBase *)self loadDictionaryFromDictionary:dictionaryCopy usingKey:@"Encryption" forKeyPath:@"payloadEncryption" classType:objc_opt_class() isRequired:0 defaultValue:0 serializationType:v17 error:error];
  }

  return v14;
}

- (id)serializeWithType:(signed __int16)type
{
  v5 = objc_opt_new();
  payloadSigning = [(RMModelAccountMailDeclaration_SMIME *)self payloadSigning];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __57__RMModelAccountMailDeclaration_SMIME_serializeWithType___block_invoke;
  v12[3] = &__block_descriptor_34_e42___NSDictionary_16__0__RMModelPayloadBase_8l;
  typeCopy = type;
  [(RMModelPayloadBase *)self serializeDictionaryIntoDictionary:v5 usingKey:@"Signing" value:payloadSigning dictSerializer:v12 isRequired:0 defaultValue:0];

  payloadEncryption = [(RMModelAccountMailDeclaration_SMIME *)self payloadEncryption];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __57__RMModelAccountMailDeclaration_SMIME_serializeWithType___block_invoke_2;
  v10[3] = &__block_descriptor_34_e42___NSDictionary_16__0__RMModelPayloadBase_8l;
  typeCopy2 = type;
  [(RMModelPayloadBase *)self serializeDictionaryIntoDictionary:v5 usingKey:@"Encryption" value:payloadEncryption dictSerializer:v10 isRequired:0 defaultValue:0];

  v8 = [v5 copy];

  return v8;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v10.receiver = self;
  v10.super_class = RMModelAccountMailDeclaration_SMIME;
  v4 = [(RMModelPayloadBase *)&v10 copyWithZone:zone];
  v5 = [(RMModelAccountMailDeclaration_SMIMESigning *)self->_payloadSigning copy];
  v6 = v4[2];
  v4[2] = v5;

  v7 = [(RMModelAccountMailDeclaration_SMIMEEncryption *)self->_payloadEncryption copy];
  v8 = v4[3];
  v4[3] = v7;

  return v4;
}

@end