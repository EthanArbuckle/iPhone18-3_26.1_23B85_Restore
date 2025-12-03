@interface RMModelAccountExchangeDeclaration_SMIMESigning
+ (NSSet)allowedPayloadKeys;
+ (id)buildRequiredOnlyWithEnabled:(id)enabled;
+ (id)buildWithEnabled:(id)enabled identityAssetReference:(id)reference userOverrideable:(id)overrideable identityUserOverrideable:(id)userOverrideable;
- (BOOL)loadFromDictionary:(id)dictionary serializationType:(signed __int16)type error:(id *)error;
- (id)copyWithZone:(_NSZone *)zone;
- (id)serializeWithType:(signed __int16)type;
@end

@implementation RMModelAccountExchangeDeclaration_SMIMESigning

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

+ (id)buildWithEnabled:(id)enabled identityAssetReference:(id)reference userOverrideable:(id)overrideable identityUserOverrideable:(id)userOverrideable
{
  userOverrideableCopy = userOverrideable;
  overrideableCopy = overrideable;
  referenceCopy = reference;
  enabledCopy = enabled;
  v13 = objc_opt_new();
  [v13 setPayloadEnabled:enabledCopy];

  [v13 setPayloadIdentityAssetReference:referenceCopy];
  v14 = MEMORY[0x277CBEC28];
  if (overrideableCopy)
  {
    v15 = overrideableCopy;
  }

  else
  {
    v15 = MEMORY[0x277CBEC28];
  }

  [v13 setPayloadUserOverrideable:v15];

  if (userOverrideableCopy)
  {
    v16 = userOverrideableCopy;
  }

  else
  {
    v16 = v14;
  }

  [v13 setPayloadIdentityUserOverrideable:v16];

  return v13;
}

+ (id)buildRequiredOnlyWithEnabled:(id)enabled
{
  enabledCopy = enabled;
  v4 = objc_opt_new();
  [v4 setPayloadEnabled:enabledCopy];

  return v4;
}

- (BOOL)loadFromDictionary:(id)dictionary serializationType:(signed __int16)type error:(id *)error
{
  dictionaryCopy = dictionary;
  v8 = MEMORY[0x277CBEB58];
  allKeys = [dictionaryCopy allKeys];
  v10 = [v8 setWithArray:allKeys];

  v11 = +[RMModelAccountExchangeDeclaration_SMIMESigning allowedPayloadKeys];
  [v10 minusSet:v11];

  v12 = [v10 copy];
  [(RMModelPayloadBase *)self setUnknownPayloadKeys:v12];

  v13 = [(RMModelPayloadBase *)self loadBooleanFromDictionary:dictionaryCopy usingKey:@"Enabled" forKeyPath:@"payloadEnabled" isRequired:1 defaultValue:0 error:error]&& [(RMModelPayloadBase *)self loadStringFromDictionary:dictionaryCopy usingKey:@"IdentityAssetReference" forKeyPath:@"payloadIdentityAssetReference" isRequired:0 defaultValue:0 error:error]&& [(RMModelPayloadBase *)self loadBooleanFromDictionary:dictionaryCopy usingKey:@"UserOverrideable" forKeyPath:@"payloadUserOverrideable" isRequired:0 defaultValue:MEMORY[0x277CBEC28] error:error]&& [(RMModelPayloadBase *)self loadBooleanFromDictionary:dictionaryCopy usingKey:@"IdentityUserOverrideable" forKeyPath:@"payloadIdentityUserOverrideable" isRequired:0 defaultValue:MEMORY[0x277CBEC28] error:error];
  return v13;
}

- (id)serializeWithType:(signed __int16)type
{
  v4 = objc_opt_new();
  payloadEnabled = [(RMModelAccountExchangeDeclaration_SMIMESigning *)self payloadEnabled];
  [(RMModelPayloadBase *)self serializeBooleanIntoDictionary:v4 usingKey:@"Enabled" value:payloadEnabled isRequired:1 defaultValue:0];

  payloadIdentityAssetReference = [(RMModelAccountExchangeDeclaration_SMIMESigning *)self payloadIdentityAssetReference];
  [(RMModelPayloadBase *)self serializeStringIntoDictionary:v4 usingKey:@"IdentityAssetReference" value:payloadIdentityAssetReference isRequired:0 defaultValue:0];

  payloadUserOverrideable = [(RMModelAccountExchangeDeclaration_SMIMESigning *)self payloadUserOverrideable];
  v8 = MEMORY[0x277CBEC28];
  [(RMModelPayloadBase *)self serializeBooleanIntoDictionary:v4 usingKey:@"UserOverrideable" value:payloadUserOverrideable isRequired:0 defaultValue:MEMORY[0x277CBEC28]];

  payloadIdentityUserOverrideable = [(RMModelAccountExchangeDeclaration_SMIMESigning *)self payloadIdentityUserOverrideable];
  [(RMModelPayloadBase *)self serializeBooleanIntoDictionary:v4 usingKey:@"IdentityUserOverrideable" value:payloadIdentityUserOverrideable isRequired:0 defaultValue:v8];

  v10 = [v4 copy];

  return v10;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v14.receiver = self;
  v14.super_class = RMModelAccountExchangeDeclaration_SMIMESigning;
  v4 = [(RMModelPayloadBase *)&v14 copyWithZone:zone];
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