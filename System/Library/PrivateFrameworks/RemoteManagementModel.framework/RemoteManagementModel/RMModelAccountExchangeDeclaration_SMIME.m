@interface RMModelAccountExchangeDeclaration_SMIME
+ (NSSet)allowedPayloadKeys;
+ (id)buildRequiredOnly;
+ (id)buildWithSigning:(id)a3 encryption:(id)a4;
- (BOOL)loadFromDictionary:(id)a3 serializationType:(signed __int16)a4 error:(id *)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (id)serializeWithType:(signed __int16)a3;
@end

@implementation RMModelAccountExchangeDeclaration_SMIME

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

+ (id)buildWithSigning:(id)a3 encryption:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = objc_opt_new();
  [v7 setPayloadSigning:v6];

  [v7 setPayloadEncryption:v5];

  return v7;
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

  v12 = +[RMModelAccountExchangeDeclaration_SMIME allowedPayloadKeys];
  [v11 minusSet:v12];

  v13 = [v11 copy];
  [(RMModelPayloadBase *)self setUnknownPayloadKeys:v13];

  LOWORD(v16) = a4;
  v14 = 0;
  if ([(RMModelPayloadBase *)self loadDictionaryFromDictionary:v8 usingKey:@"Signing" forKeyPath:@"payloadSigning" classType:objc_opt_class() isRequired:0 defaultValue:0 serializationType:v16 error:a5])
  {
    LOWORD(v17) = a4;
    v14 = [(RMModelPayloadBase *)self loadDictionaryFromDictionary:v8 usingKey:@"Encryption" forKeyPath:@"payloadEncryption" classType:objc_opt_class() isRequired:0 defaultValue:0 serializationType:v17 error:a5];
  }

  return v14;
}

- (id)serializeWithType:(signed __int16)a3
{
  v5 = objc_opt_new();
  v6 = [(RMModelAccountExchangeDeclaration_SMIME *)self payloadSigning];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __61__RMModelAccountExchangeDeclaration_SMIME_serializeWithType___block_invoke;
  v12[3] = &__block_descriptor_34_e42___NSDictionary_16__0__RMModelPayloadBase_8l;
  v13 = a3;
  [(RMModelPayloadBase *)self serializeDictionaryIntoDictionary:v5 usingKey:@"Signing" value:v6 dictSerializer:v12 isRequired:0 defaultValue:0];

  v7 = [(RMModelAccountExchangeDeclaration_SMIME *)self payloadEncryption];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __61__RMModelAccountExchangeDeclaration_SMIME_serializeWithType___block_invoke_2;
  v10[3] = &__block_descriptor_34_e42___NSDictionary_16__0__RMModelPayloadBase_8l;
  v11 = a3;
  [(RMModelPayloadBase *)self serializeDictionaryIntoDictionary:v5 usingKey:@"Encryption" value:v7 dictSerializer:v10 isRequired:0 defaultValue:0];

  v8 = [v5 copy];

  return v8;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v10.receiver = self;
  v10.super_class = RMModelAccountExchangeDeclaration_SMIME;
  v4 = [(RMModelPayloadBase *)&v10 copyWithZone:a3];
  v5 = [(RMModelAccountExchangeDeclaration_SMIMESigning *)self->_payloadSigning copy];
  v6 = v4[2];
  v4[2] = v5;

  v7 = [(RMModelAccountExchangeDeclaration_SMIMEEncryption *)self->_payloadEncryption copy];
  v8 = v4[3];
  v4[3] = v7;

  return v4;
}

@end