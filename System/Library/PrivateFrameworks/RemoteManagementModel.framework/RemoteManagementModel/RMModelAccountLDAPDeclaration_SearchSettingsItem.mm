@interface RMModelAccountLDAPDeclaration_SearchSettingsItem
+ (NSSet)allowedPayloadKeys;
+ (id)buildRequiredOnlyWithSearchBase:(id)a3;
+ (id)buildWithVisibleDescription:(id)a3 searchBase:(id)a4 scope:(id)a5;
- (BOOL)loadFromDictionary:(id)a3 serializationType:(signed __int16)a4 error:(id *)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (id)serializeWithType:(signed __int16)a3;
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

+ (id)buildWithVisibleDescription:(id)a3 searchBase:(id)a4 scope:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = objc_opt_new();
  [v10 setPayloadVisibleDescription:v9];

  [v10 setPayloadSearchBase:v8];
  if (v7)
  {
    v11 = v7;
  }

  else
  {
    v11 = @"Subtree";
  }

  [v10 setPayloadScope:v11];

  return v10;
}

+ (id)buildRequiredOnlyWithSearchBase:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  [v4 setPayloadSearchBase:v3];

  return v4;
}

- (BOOL)loadFromDictionary:(id)a3 serializationType:(signed __int16)a4 error:(id *)a5
{
  v7 = a3;
  v8 = MEMORY[0x277CBEB58];
  v9 = [v7 allKeys];
  v10 = [v8 setWithArray:v9];

  v11 = +[RMModelAccountLDAPDeclaration_SearchSettingsItem allowedPayloadKeys];
  [v10 minusSet:v11];

  v12 = [v10 copy];
  [(RMModelPayloadBase *)self setUnknownPayloadKeys:v12];

  v13 = [(RMModelPayloadBase *)self loadStringFromDictionary:v7 usingKey:@"VisibleDescription" forKeyPath:@"payloadVisibleDescription" isRequired:0 defaultValue:0 error:a5]&& [(RMModelPayloadBase *)self loadStringFromDictionary:v7 usingKey:@"SearchBase" forKeyPath:@"payloadSearchBase" isRequired:1 defaultValue:0 error:a5]&& [(RMModelPayloadBase *)self loadStringFromDictionary:v7 usingKey:@"Scope" forKeyPath:@"payloadScope" isRequired:0 defaultValue:@"Subtree" error:a5];
  return v13;
}

- (id)serializeWithType:(signed __int16)a3
{
  v4 = objc_opt_new();
  v5 = [(RMModelAccountLDAPDeclaration_SearchSettingsItem *)self payloadVisibleDescription];
  [(RMModelPayloadBase *)self serializeStringIntoDictionary:v4 usingKey:@"VisibleDescription" value:v5 isRequired:0 defaultValue:0];

  v6 = [(RMModelAccountLDAPDeclaration_SearchSettingsItem *)self payloadSearchBase];
  [(RMModelPayloadBase *)self serializeStringIntoDictionary:v4 usingKey:@"SearchBase" value:v6 isRequired:1 defaultValue:0];

  v7 = [(RMModelAccountLDAPDeclaration_SearchSettingsItem *)self payloadScope];
  [(RMModelPayloadBase *)self serializeStringIntoDictionary:v4 usingKey:@"Scope" value:v7 isRequired:0 defaultValue:@"Subtree"];

  v8 = [v4 copy];

  return v8;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v12.receiver = self;
  v12.super_class = RMModelAccountLDAPDeclaration_SearchSettingsItem;
  v4 = [(RMModelPayloadBase *)&v12 copyWithZone:a3];
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