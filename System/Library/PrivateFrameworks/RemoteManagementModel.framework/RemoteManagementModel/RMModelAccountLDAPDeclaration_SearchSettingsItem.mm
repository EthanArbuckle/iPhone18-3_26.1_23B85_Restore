@interface RMModelAccountLDAPDeclaration_SearchSettingsItem
+ (NSSet)allowedPayloadKeys;
+ (id)buildRequiredOnlyWithSearchBase:(id)base;
+ (id)buildWithVisibleDescription:(id)description searchBase:(id)base scope:(id)scope;
- (BOOL)loadFromDictionary:(id)dictionary serializationType:(signed __int16)type error:(id *)error;
- (id)copyWithZone:(_NSZone *)zone;
- (id)serializeWithType:(signed __int16)type;
@end

@implementation RMModelAccountLDAPDeclaration_SearchSettingsItem

+ (NSSet)allowedPayloadKeys
{
  v7[3] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CBEB98];
  v7[0] = @"VisibleDescription";
  v7[1] = @"SearchBase";
  v7[2] = @"Scope";
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:3];
  v4 = [v2 setWithArray:v3];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

+ (id)buildWithVisibleDescription:(id)description searchBase:(id)base scope:(id)scope
{
  scopeCopy = scope;
  baseCopy = base;
  descriptionCopy = description;
  v10 = objc_opt_new();
  [v10 setPayloadVisibleDescription:descriptionCopy];

  [v10 setPayloadSearchBase:baseCopy];
  if (scopeCopy)
  {
    v11 = scopeCopy;
  }

  else
  {
    v11 = @"Subtree";
  }

  [v10 setPayloadScope:v11];

  return v10;
}

+ (id)buildRequiredOnlyWithSearchBase:(id)base
{
  baseCopy = base;
  v4 = objc_opt_new();
  [v4 setPayloadSearchBase:baseCopy];

  return v4;
}

- (BOOL)loadFromDictionary:(id)dictionary serializationType:(signed __int16)type error:(id *)error
{
  dictionaryCopy = dictionary;
  v8 = MEMORY[0x277CBEB58];
  allKeys = [dictionaryCopy allKeys];
  v10 = [v8 setWithArray:allKeys];

  v11 = +[RMModelAccountLDAPDeclaration_SearchSettingsItem allowedPayloadKeys];
  [v10 minusSet:v11];

  v12 = [v10 copy];
  [(RMModelPayloadBase *)self setUnknownPayloadKeys:v12];

  v13 = [(RMModelPayloadBase *)self loadStringFromDictionary:dictionaryCopy usingKey:@"VisibleDescription" forKeyPath:@"payloadVisibleDescription" isRequired:0 defaultValue:0 error:error]&& [(RMModelPayloadBase *)self loadStringFromDictionary:dictionaryCopy usingKey:@"SearchBase" forKeyPath:@"payloadSearchBase" isRequired:1 defaultValue:0 error:error]&& [(RMModelPayloadBase *)self loadStringFromDictionary:dictionaryCopy usingKey:@"Scope" forKeyPath:@"payloadScope" isRequired:0 defaultValue:@"Subtree" error:error];
  return v13;
}

- (id)serializeWithType:(signed __int16)type
{
  v4 = objc_opt_new();
  payloadVisibleDescription = [(RMModelAccountLDAPDeclaration_SearchSettingsItem *)self payloadVisibleDescription];
  [(RMModelPayloadBase *)self serializeStringIntoDictionary:v4 usingKey:@"VisibleDescription" value:payloadVisibleDescription isRequired:0 defaultValue:0];

  payloadSearchBase = [(RMModelAccountLDAPDeclaration_SearchSettingsItem *)self payloadSearchBase];
  [(RMModelPayloadBase *)self serializeStringIntoDictionary:v4 usingKey:@"SearchBase" value:payloadSearchBase isRequired:1 defaultValue:0];

  payloadScope = [(RMModelAccountLDAPDeclaration_SearchSettingsItem *)self payloadScope];
  [(RMModelPayloadBase *)self serializeStringIntoDictionary:v4 usingKey:@"Scope" value:payloadScope isRequired:0 defaultValue:@"Subtree"];

  v8 = [v4 copy];

  return v8;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v12.receiver = self;
  v12.super_class = RMModelAccountLDAPDeclaration_SearchSettingsItem;
  v4 = [(RMModelPayloadBase *)&v12 copyWithZone:zone];
  v5 = [(NSString *)self->_payloadVisibleDescription copy];
  v6 = v4[2];
  v4[2] = v5;

  v7 = [(NSString *)self->_payloadSearchBase copy];
  v8 = v4[3];
  v4[3] = v7;

  v9 = [(NSString *)self->_payloadScope copy];
  v10 = v4[4];
  v4[4] = v9;

  return v4;
}

@end