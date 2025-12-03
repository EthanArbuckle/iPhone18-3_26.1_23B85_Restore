@interface RMModelAccountMailDeclaration_SMIMEEncryption
+ (NSSet)allowedPayloadKeys;
+ (id)buildRequiredOnlyWithEnabled:(id)enabled;
+ (id)buildWithEnabled:(id)enabled identityAssetReference:(id)reference userOverrideable:(id)overrideable identityUserOverrideable:(id)userOverrideable perMessageSwitchEnabled:(id)switchEnabled;
- (BOOL)loadFromDictionary:(id)dictionary serializationType:(signed __int16)type error:(id *)error;
- (id)copyWithZone:(_NSZone *)zone;
- (id)serializeWithType:(signed __int16)type;
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

+ (id)buildWithEnabled:(id)enabled identityAssetReference:(id)reference userOverrideable:(id)overrideable identityUserOverrideable:(id)userOverrideable perMessageSwitchEnabled:(id)switchEnabled
{
  switchEnabledCopy = switchEnabled;
  userOverrideableCopy = userOverrideable;
  overrideableCopy = overrideable;
  referenceCopy = reference;
  enabledCopy = enabled;
  v16 = objc_opt_new();
  [v16 setPayloadEnabled:enabledCopy];

  [v16 setPayloadIdentityAssetReference:referenceCopy];
  v17 = MEMORY[0x277CBEC28];
  if (overrideableCopy)
  {
    v18 = overrideableCopy;
  }

  else
  {
    v18 = MEMORY[0x277CBEC28];
  }

  [v16 setPayloadUserOverrideable:v18];

  if (userOverrideableCopy)
  {
    v19 = userOverrideableCopy;
  }

  else
  {
    v19 = v17;
  }

  [v16 setPayloadIdentityUserOverrideable:v19];

  if (switchEnabledCopy)
  {
    v20 = switchEnabledCopy;
  }

  else
  {
    v20 = v17;
  }

  [v16 setPayloadPerMessageSwitchEnabled:v20];

  return v16;
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

  v11 = +[RMModelAccountMailDeclaration_SMIMEEncryption allowedPayloadKeys];
  [v10 minusSet:v11];

  v12 = [v10 copy];
  [(RMModelPayloadBase *)self setUnknownPayloadKeys:v12];

  v13 = [(RMModelPayloadBase *)self loadBooleanFromDictionary:dictionaryCopy usingKey:@"Enabled" forKeyPath:@"payloadEnabled" isRequired:1 defaultValue:0 error:error]&& [(RMModelPayloadBase *)self loadStringFromDictionary:dictionaryCopy usingKey:@"IdentityAssetReference" forKeyPath:@"payloadIdentityAssetReference" isRequired:0 defaultValue:0 error:error]&& [(RMModelPayloadBase *)self loadBooleanFromDictionary:dictionaryCopy usingKey:@"UserOverrideable" forKeyPath:@"payloadUserOverrideable" isRequired:0 defaultValue:MEMORY[0x277CBEC28] error:error]&& [(RMModelPayloadBase *)self loadBooleanFromDictionary:dictionaryCopy usingKey:@"IdentityUserOverrideable" forKeyPath:@"payloadIdentityUserOverrideable" isRequired:0 defaultValue:MEMORY[0x277CBEC28] error:error]&& [(RMModelPayloadBase *)self loadBooleanFromDictionary:dictionaryCopy usingKey:@"PerMessageSwitchEnabled" forKeyPath:@"payloadPerMessageSwitchEnabled" isRequired:0 defaultValue:MEMORY[0x277CBEC28] error:error];
  return v13;
}

- (id)serializeWithType:(signed __int16)type
{
  v4 = objc_opt_new();
  payloadEnabled = [(RMModelAccountMailDeclaration_SMIMEEncryption *)self payloadEnabled];
  [(RMModelPayloadBase *)self serializeBooleanIntoDictionary:v4 usingKey:@"Enabled" value:payloadEnabled isRequired:1 defaultValue:0];

  payloadIdentityAssetReference = [(RMModelAccountMailDeclaration_SMIMEEncryption *)self payloadIdentityAssetReference];
  [(RMModelPayloadBase *)self serializeStringIntoDictionary:v4 usingKey:@"IdentityAssetReference" value:payloadIdentityAssetReference isRequired:0 defaultValue:0];

  payloadUserOverrideable = [(RMModelAccountMailDeclaration_SMIMEEncryption *)self payloadUserOverrideable];
  v8 = MEMORY[0x277CBEC28];
  [(RMModelPayloadBase *)self serializeBooleanIntoDictionary:v4 usingKey:@"UserOverrideable" value:payloadUserOverrideable isRequired:0 defaultValue:MEMORY[0x277CBEC28]];

  payloadIdentityUserOverrideable = [(RMModelAccountMailDeclaration_SMIMEEncryption *)self payloadIdentityUserOverrideable];
  [(RMModelPayloadBase *)self serializeBooleanIntoDictionary:v4 usingKey:@"IdentityUserOverrideable" value:payloadIdentityUserOverrideable isRequired:0 defaultValue:v8];

  payloadPerMessageSwitchEnabled = [(RMModelAccountMailDeclaration_SMIMEEncryption *)self payloadPerMessageSwitchEnabled];
  [(RMModelPayloadBase *)self serializeBooleanIntoDictionary:v4 usingKey:@"PerMessageSwitchEnabled" value:payloadPerMessageSwitchEnabled isRequired:0 defaultValue:v8];

  v11 = [v4 copy];

  return v11;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v16.receiver = self;
  v16.super_class = RMModelAccountMailDeclaration_SMIMEEncryption;
  v4 = [(RMModelPayloadBase *)&v16 copyWithZone:zone];
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