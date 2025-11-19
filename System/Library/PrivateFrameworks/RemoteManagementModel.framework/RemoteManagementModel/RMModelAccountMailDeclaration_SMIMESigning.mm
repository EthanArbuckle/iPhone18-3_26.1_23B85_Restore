@interface RMModelAccountMailDeclaration_SMIMESigning
+ (NSSet)allowedPayloadKeys;
+ (id)buildRequiredOnlyWithEnabled:(id)a3;
+ (id)buildWithEnabled:(id)a3 identityAssetReference:(id)a4 userOverrideable:(id)a5 identityUserOverrideable:(id)a6;
- (BOOL)loadFromDictionary:(id)a3 serializationType:(signed __int16)a4 error:(id *)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (id)serializeWithType:(signed __int16)a3;
@end

@implementation RMModelAccountMailDeclaration_SMIMESigning

+ (NSSet)allowedPayloadKeys
{
  v7[4] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CBEB98];
  v7[0] = @"Enabled";
  v7[1] = @"IdentityAssetReference";
  v7[2] = @"UserOverrideable";
  v7[3] = @"IdentityUserOverrideable";
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:4];
  v4 = [v2 setWithArray:v3];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

+ (id)buildWithEnabled:(id)a3 identityAssetReference:(id)a4 userOverrideable:(id)a5 identityUserOverrideable:(id)a6
{
  v9 = a6;
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v13 = objc_opt_new();
  [v13 setPayloadEnabled:v12];

  [v13 setPayloadIdentityAssetReference:v11];
  v14 = MEMORY[0x277CBEC28];
  if (v10)
  {
    v15 = v10;
  }

  else
  {
    v15 = MEMORY[0x277CBEC28];
  }

  [v13 setPayloadUserOverrideable:v15];

  if (v9)
  {
    v16 = v9;
  }

  else
  {
    v16 = v14;
  }

  [v13 setPayloadIdentityUserOverrideable:v16];

  return v13;
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

  v11 = +[RMModelAccountMailDeclaration_SMIMESigning allowedPayloadKeys];
  [v10 minusSet:v11];

  v12 = [v10 copy];
  [(RMModelPayloadBase *)self setUnknownPayloadKeys:v12];

  v13 = [(RMModelPayloadBase *)self loadBooleanFromDictionary:v7 usingKey:@"Enabled" forKeyPath:@"payloadEnabled" isRequired:1 defaultValue:0 error:a5]&& [(RMModelPayloadBase *)self loadStringFromDictionary:v7 usingKey:@"IdentityAssetReference" forKeyPath:@"payloadIdentityAssetReference" isRequired:0 defaultValue:0 error:a5]&& [(RMModelPayloadBase *)self loadBooleanFromDictionary:v7 usingKey:@"UserOverrideable" forKeyPath:@"payloadUserOverrideable" isRequired:0 defaultValue:MEMORY[0x277CBEC28] error:a5]&& [(RMModelPayloadBase *)self loadBooleanFromDictionary:v7 usingKey:@"IdentityUserOverrideable" forKeyPath:@"payloadIdentityUserOverrideable" isRequired:0 defaultValue:MEMORY[0x277CBEC28] error:a5];
  return v13;
}

- (id)serializeWithType:(signed __int16)a3
{
  v4 = objc_opt_new();
  v5 = [(RMModelAccountMailDeclaration_SMIMESigning *)self payloadEnabled];
  [(RMModelPayloadBase *)self serializeBooleanIntoDictionary:v4 usingKey:@"Enabled" value:v5 isRequired:1 defaultValue:0];

  v6 = [(RMModelAccountMailDeclaration_SMIMESigning *)self payloadIdentityAssetReference];
  [(RMModelPayloadBase *)self serializeStringIntoDictionary:v4 usingKey:@"IdentityAssetReference" value:v6 isRequired:0 defaultValue:0];

  v7 = [(RMModelAccountMailDeclaration_SMIMESigning *)self payloadUserOverrideable];
  v8 = MEMORY[0x277CBEC28];
  [(RMModelPayloadBase *)self serializeBooleanIntoDictionary:v4 usingKey:@"UserOverrideable" value:v7 isRequired:0 defaultValue:MEMORY[0x277CBEC28]];

  v9 = [(RMModelAccountMailDeclaration_SMIMESigning *)self payloadIdentityUserOverrideable];
  [(RMModelPayloadBase *)self serializeBooleanIntoDictionary:v4 usingKey:@"IdentityUserOverrideable" value:v9 isRequired:0 defaultValue:v8];

  v10 = [v4 copy];

  return v10;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v14.receiver = self;
  v14.super_class = RMModelAccountMailDeclaration_SMIMESigning;
  v4 = [(RMModelPayloadBase *)&v14 copyWithZone:a3];
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

  return v4;
}

@end