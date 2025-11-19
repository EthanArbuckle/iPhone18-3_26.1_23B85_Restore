@interface RMModelAccountMailDeclaration_SMIMEEncryption
+ (NSSet)allowedPayloadKeys;
+ (id)buildRequiredOnlyWithEnabled:(id)a3;
+ (id)buildWithEnabled:(id)a3 identityAssetReference:(id)a4 userOverrideable:(id)a5 identityUserOverrideable:(id)a6 perMessageSwitchEnabled:(id)a7;
- (BOOL)loadFromDictionary:(id)a3 serializationType:(signed __int16)a4 error:(id *)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (id)serializeWithType:(signed __int16)a3;
@end

@implementation RMModelAccountMailDeclaration_SMIMEEncryption

+ (NSSet)allowedPayloadKeys
{
  v7[5] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CBEB98];
  v7[0] = @"Enabled";
  v7[1] = @"IdentityAssetReference";
  v7[2] = @"UserOverrideable";
  v7[3] = @"IdentityUserOverrideable";
  v7[4] = @"PerMessageSwitchEnabled";
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:5];
  v4 = [v2 setWithArray:v3];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

+ (id)buildWithEnabled:(id)a3 identityAssetReference:(id)a4 userOverrideable:(id)a5 identityUserOverrideable:(id)a6 perMessageSwitchEnabled:(id)a7
{
  v11 = a7;
  v12 = a6;
  v13 = a5;
  v14 = a4;
  v15 = a3;
  v16 = objc_opt_new();
  [v16 setPayloadEnabled:v15];

  [v16 setPayloadIdentityAssetReference:v14];
  v17 = MEMORY[0x277CBEC28];
  if (v13)
  {
    v18 = v13;
  }

  else
  {
    v18 = MEMORY[0x277CBEC28];
  }

  [v16 setPayloadUserOverrideable:v18];

  if (v12)
  {
    v19 = v12;
  }

  else
  {
    v19 = v17;
  }

  [v16 setPayloadIdentityUserOverrideable:v19];

  if (v11)
  {
    v20 = v11;
  }

  else
  {
    v20 = v17;
  }

  [v16 setPayloadPerMessageSwitchEnabled:v20];

  return v16;
}

+ (id)buildRequiredOnlyWithEnabled:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  [v4 setPayloadEnabled:v3];

  return v4;
}

- (BOOL)loadFromDictionary:(id)a3 serializationType:(signed __int16)a4 error:(id *)a5
{
  v7 = a3;
  v8 = MEMORY[0x277CBEB58];
  v9 = [v7 allKeys];
  v10 = [v8 setWithArray:v9];

  v11 = +[RMModelAccountMailDeclaration_SMIMEEncryption allowedPayloadKeys];
  [v10 minusSet:v11];

  v12 = [v10 copy];
  [(RMModelPayloadBase *)self setUnknownPayloadKeys:v12];

  v13 = [(RMModelPayloadBase *)self loadBooleanFromDictionary:v7 usingKey:@"Enabled" forKeyPath:@"payloadEnabled" isRequired:1 defaultValue:0 error:a5]&& [(RMModelPayloadBase *)self loadStringFromDictionary:v7 usingKey:@"IdentityAssetReference" forKeyPath:@"payloadIdentityAssetReference" isRequired:0 defaultValue:0 error:a5]&& [(RMModelPayloadBase *)self loadBooleanFromDictionary:v7 usingKey:@"UserOverrideable" forKeyPath:@"payloadUserOverrideable" isRequired:0 defaultValue:MEMORY[0x277CBEC28] error:a5]&& [(RMModelPayloadBase *)self loadBooleanFromDictionary:v7 usingKey:@"IdentityUserOverrideable" forKeyPath:@"payloadIdentityUserOverrideable" isRequired:0 defaultValue:MEMORY[0x277CBEC28] error:a5]&& [(RMModelPayloadBase *)self loadBooleanFromDictionary:v7 usingKey:@"PerMessageSwitchEnabled" forKeyPath:@"payloadPerMessageSwitchEnabled" isRequired:0 defaultValue:MEMORY[0x277CBEC28] error:a5];
  return v13;
}

- (id)serializeWithType:(signed __int16)a3
{
  v4 = objc_opt_new();
  v5 = [(RMModelAccountMailDeclaration_SMIMEEncryption *)self payloadEnabled];
  [(RMModelPayloadBase *)self serializeBooleanIntoDictionary:v4 usingKey:@"Enabled" value:v5 isRequired:1 defaultValue:0];

  v6 = [(RMModelAccountMailDeclaration_SMIMEEncryption *)self payloadIdentityAssetReference];
  [(RMModelPayloadBase *)self serializeStringIntoDictionary:v4 usingKey:@"IdentityAssetReference" value:v6 isRequired:0 defaultValue:0];

  v7 = [(RMModelAccountMailDeclaration_SMIMEEncryption *)self payloadUserOverrideable];
  v8 = MEMORY[0x277CBEC28];
  [(RMModelPayloadBase *)self serializeBooleanIntoDictionary:v4 usingKey:@"UserOverrideable" value:v7 isRequired:0 defaultValue:MEMORY[0x277CBEC28]];

  v9 = [(RMModelAccountMailDeclaration_SMIMEEncryption *)self payloadIdentityUserOverrideable];
  [(RMModelPayloadBase *)self serializeBooleanIntoDictionary:v4 usingKey:@"IdentityUserOverrideable" value:v9 isRequired:0 defaultValue:v8];

  v10 = [(RMModelAccountMailDeclaration_SMIMEEncryption *)self payloadPerMessageSwitchEnabled];
  [(RMModelPayloadBase *)self serializeBooleanIntoDictionary:v4 usingKey:@"PerMessageSwitchEnabled" value:v10 isRequired:0 defaultValue:v8];

  v11 = [v4 copy];

  return v11;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v16.receiver = self;
  v16.super_class = RMModelAccountMailDeclaration_SMIMEEncryption;
  v4 = [(RMModelPayloadBase *)&v16 copyWithZone:a3];
  v5 = [(NSNumber *)self->_payloadEnabled copy];
  v6 = v4[2];
  v4[2] = v5;

  v7 = [(NSString *)self->_payloadIdentityAssetReference copy];
  v8 = v4[3];
  v4[3] = v7;

  v9 = [(NSNumber *)self->_payloadUserOverrideable copy];
  v10 = v4[4];
  v4[4] = v9;

  v11 = [(NSNumber *)self->_payloadIdentityUserOverrideable copy];
  v12 = v4[5];
  v4[5] = v11;

  v13 = [(NSNumber *)self->_payloadPerMessageSwitchEnabled copy];
  v14 = v4[6];
  v4[6] = v13;

  return v4;
}

@end