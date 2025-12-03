@interface RMModelAccountLDAPDeclaration
+ (NSSet)allowedPayloadKeys;
+ (id)buildRequiredOnlyWithIdentifier:(id)identifier hostName:(id)name;
+ (id)buildWithIdentifier:(id)identifier visibleName:(id)name hostName:(id)hostName port:(id)port authenticationCredentialsAssetReference:(id)reference searchSettings:(id)settings;
+ (id)supportedOS;
- (BOOL)loadPayloadFromDictionary:(id)dictionary serializationType:(signed __int16)type error:(id *)error;
- (id)assetReferences;
- (id)copyWithZone:(_NSZone *)zone;
- (id)serializePayloadWithType:(signed __int16)type;
@end

@implementation RMModelAccountLDAPDeclaration

+ (NSSet)allowedPayloadKeys
{
  v7[5] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CBEB98];
  v7[0] = @"VisibleName";
  v7[1] = @"HostName";
  v7[2] = @"Port";
  v7[3] = @"AuthenticationCredentialsAssetReference";
  v7[4] = @"SearchSettings";
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:5];
  v4 = [v2 setWithArray:v3];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

- (id)assetReferences
{
  if (assetReferences_onceToken_3 != -1)
  {
    [RMModelAccountLDAPDeclaration assetReferences];
  }

  v3 = assetReferences_assetPaths_3;

  return [(RMModelConfigurationBase *)self assetReferencesFromKeyPaths:v3 payloadObject:self];
}

void __48__RMModelAccountLDAPDeclaration_assetReferences__block_invoke()
{
  v4[1] = *MEMORY[0x277D85DE8];
  v0 = [[RMModelConfigurationSchemaAssetReference alloc] initWithAssetTypes:&unk_287465D38 keyPath:@"$.payloadAuthenticationCredentialsAssetReference"];
  v4[0] = v0;
  v1 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:1];
  v2 = assetReferences_assetPaths_3;
  assetReferences_assetPaths_3 = v1;

  v3 = *MEMORY[0x277D85DE8];
}

+ (id)buildWithIdentifier:(id)identifier visibleName:(id)name hostName:(id)hostName port:(id)port authenticationCredentialsAssetReference:(id)reference searchSettings:(id)settings
{
  identifierCopy = identifier;
  settingsCopy = settings;
  referenceCopy = reference;
  portCopy = port;
  hostNameCopy = hostName;
  nameCopy = name;
  v19 = objc_opt_new();
  [v19 setDeclarationType:@"com.apple.configuration.account.ldap"];
  if (identifierCopy)
  {
    [v19 setDeclarationIdentifier:identifierCopy];
  }

  else
  {
    uUID = [MEMORY[0x277CCAD78] UUID];
    uUIDString = [uUID UUIDString];
    [v19 setDeclarationIdentifier:uUIDString];
  }

  [v19 setPayloadVisibleName:nameCopy];

  [v19 setPayloadHostName:hostNameCopy];
  [v19 setPayloadPort:portCopy];

  [v19 setPayloadAuthenticationCredentialsAssetReference:referenceCopy];
  [v19 setPayloadSearchSettings:settingsCopy];

  [v19 updateServerToken];

  return v19;
}

+ (id)buildRequiredOnlyWithIdentifier:(id)identifier hostName:(id)name
{
  identifierCopy = identifier;
  nameCopy = name;
  v7 = objc_opt_new();
  [v7 setDeclarationType:@"com.apple.configuration.account.ldap"];
  if (identifierCopy)
  {
    [v7 setDeclarationIdentifier:identifierCopy];
  }

  else
  {
    uUID = [MEMORY[0x277CCAD78] UUID];
    uUIDString = [uUID UUIDString];
    [v7 setDeclarationIdentifier:uUIDString];
  }

  [v7 setPayloadHostName:nameCopy];

  [v7 updateServerToken];

  return v7;
}

+ (id)supportedOS
{
  v22[4] = *MEMORY[0x277D85DE8];
  v21[0] = &unk_28746AAC0;
  v16 = [MEMORY[0x277CBEB98] setWithArray:&unk_287465D50];
  v20[0] = v16;
  v15 = [MEMORY[0x277CBEB98] setWithArray:&unk_287465D68];
  v20[1] = v15;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:2];
  v22[0] = v14;
  v21[1] = &unk_28746AB08;
  v2 = [MEMORY[0x277CBEB98] setWithArray:&unk_287465D80];
  v19[0] = v2;
  v3 = [MEMORY[0x277CBEB98] setWithArray:&unk_287465D98];
  v19[1] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:2];
  v22[1] = v4;
  v21[2] = &unk_28746AAD8;
  v5 = [MEMORY[0x277CBEB98] setWithArray:&unk_287465DB0];
  v18[0] = v5;
  v6 = [MEMORY[0x277CBEB98] setWithArray:&unk_287465DC8];
  v18[1] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:2];
  v22[2] = v7;
  v21[3] = &unk_28746AB20;
  v8 = [MEMORY[0x277CBEB98] setWithArray:&unk_287465DE0];
  v17[0] = v8;
  v9 = [MEMORY[0x277CBEB98] setWithArray:&unk_287465DF8];
  v17[1] = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:2];
  v22[3] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:v21 count:4];

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

- (BOOL)loadPayloadFromDictionary:(id)dictionary serializationType:(signed __int16)type error:(id *)error
{
  dictionaryCopy = dictionary;
  v9 = MEMORY[0x277CBEB58];
  allKeys = [dictionaryCopy allKeys];
  v11 = [v9 setWithArray:allKeys];

  v12 = +[RMModelAccountLDAPDeclaration allowedPayloadKeys];
  [v11 minusSet:v12];

  v13 = [v11 copy];
  [(RMModelPayloadBase *)self setUnknownPayloadKeys:v13];

  if ([(RMModelPayloadBase *)self loadStringFromDictionary:dictionaryCopy usingKey:@"VisibleName" forKeyPath:@"payloadVisibleName" isRequired:0 defaultValue:0 error:error]&& [(RMModelPayloadBase *)self loadStringFromDictionary:dictionaryCopy usingKey:@"HostName" forKeyPath:@"payloadHostName" isRequired:1 defaultValue:0 error:error]&& [(RMModelPayloadBase *)self loadIntegerFromDictionary:dictionaryCopy usingKey:@"Port" forKeyPath:@"payloadPort" isRequired:0 defaultValue:0 error:error]&& [(RMModelPayloadBase *)self loadStringFromDictionary:dictionaryCopy usingKey:@"AuthenticationCredentialsAssetReference" forKeyPath:@"payloadAuthenticationCredentialsAssetReference" isRequired:0 defaultValue:0 error:error])
  {
    LOWORD(v16) = type;
    v14 = [(RMModelPayloadBase *)self loadArrayFromDictionary:dictionaryCopy usingKey:@"SearchSettings" forKeyPath:@"payloadSearchSettings" classType:objc_opt_class() nested:0 isRequired:0 defaultValue:0 serializationType:v16 error:error];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (id)serializePayloadWithType:(signed __int16)type
{
  v5 = objc_opt_new();
  payloadVisibleName = [(RMModelAccountLDAPDeclaration *)self payloadVisibleName];
  [(RMModelPayloadBase *)self serializeStringIntoDictionary:v5 usingKey:@"VisibleName" value:payloadVisibleName isRequired:0 defaultValue:0];

  payloadHostName = [(RMModelAccountLDAPDeclaration *)self payloadHostName];
  [(RMModelPayloadBase *)self serializeStringIntoDictionary:v5 usingKey:@"HostName" value:payloadHostName isRequired:1 defaultValue:0];

  payloadPort = [(RMModelAccountLDAPDeclaration *)self payloadPort];
  [(RMModelPayloadBase *)self serializeIntegerIntoDictionary:v5 usingKey:@"Port" value:payloadPort isRequired:0 defaultValue:0];

  payloadAuthenticationCredentialsAssetReference = [(RMModelAccountLDAPDeclaration *)self payloadAuthenticationCredentialsAssetReference];
  [(RMModelPayloadBase *)self serializeStringIntoDictionary:v5 usingKey:@"AuthenticationCredentialsAssetReference" value:payloadAuthenticationCredentialsAssetReference isRequired:0 defaultValue:0];

  payloadSearchSettings = [(RMModelAccountLDAPDeclaration *)self payloadSearchSettings];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __58__RMModelAccountLDAPDeclaration_serializePayloadWithType___block_invoke;
  v13[3] = &__block_descriptor_34_e72___NSDictionary_16__0__RMModelAccountLDAPDeclaration_SearchSettingsItem_8l;
  typeCopy = type;
  [(RMModelPayloadBase *)self serializeArrayIntoDictionary:v5 usingKey:@"SearchSettings" value:payloadSearchSettings itemSerializer:v13 isRequired:0 defaultValue:0];

  v11 = [v5 copy];

  return v11;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v16.receiver = self;
  v16.super_class = RMModelAccountLDAPDeclaration;
  v4 = [(RMModelDeclarationBase *)&v16 copyWithZone:zone];
  v5 = [(NSString *)self->_payloadVisibleName copy];
  v6 = v4[6];
  v4[6] = v5;

  v7 = [(NSString *)self->_payloadHostName copy];
  v8 = v4[7];
  v4[7] = v7;

  v9 = [(NSNumber *)self->_payloadPort copy];
  v10 = v4[8];
  v4[8] = v9;

  v11 = [(NSString *)self->_payloadAuthenticationCredentialsAssetReference copy];
  v12 = v4[9];
  v4[9] = v11;

  v13 = [(NSArray *)self->_payloadSearchSettings copy];
  v14 = v4[10];
  v4[10] = v13;

  return v4;
}

@end