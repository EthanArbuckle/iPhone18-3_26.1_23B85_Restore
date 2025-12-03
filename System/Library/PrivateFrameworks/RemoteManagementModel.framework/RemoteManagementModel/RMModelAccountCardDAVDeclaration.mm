@interface RMModelAccountCardDAVDeclaration
+ (NSSet)allowedPayloadKeys;
+ (id)buildRequiredOnlyWithIdentifier:(id)identifier hostName:(id)name;
+ (id)buildWithIdentifier:(id)identifier visibleName:(id)name hostName:(id)hostName port:(id)port path:(id)path authenticationCredentialsAssetReference:(id)reference;
+ (id)supportedOS;
- (BOOL)loadPayloadFromDictionary:(id)dictionary serializationType:(signed __int16)type error:(id *)error;
- (id)assetReferences;
- (id)copyWithZone:(_NSZone *)zone;
- (id)serializePayloadWithType:(signed __int16)type;
@end

@implementation RMModelAccountCardDAVDeclaration

+ (NSSet)allowedPayloadKeys
{
  v7[5] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CBEB98];
  v7[0] = @"VisibleName";
  v7[1] = @"HostName";
  v7[2] = @"Port";
  v7[3] = @"Path";
  v7[4] = @"AuthenticationCredentialsAssetReference";
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:5];
  v4 = [v2 setWithArray:v3];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

- (id)assetReferences
{
  if (assetReferences_onceToken_0 != -1)
  {
    [RMModelAccountCardDAVDeclaration assetReferences];
  }

  v3 = assetReferences_assetPaths_0;

  return [(RMModelConfigurationBase *)self assetReferencesFromKeyPaths:v3 payloadObject:self];
}

void __51__RMModelAccountCardDAVDeclaration_assetReferences__block_invoke()
{
  v4[1] = *MEMORY[0x277D85DE8];
  v0 = [[RMModelConfigurationSchemaAssetReference alloc] initWithAssetTypes:&unk_287465A08 keyPath:@"$.payloadAuthenticationCredentialsAssetReference"];
  v4[0] = v0;
  v1 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:1];
  v2 = assetReferences_assetPaths_0;
  assetReferences_assetPaths_0 = v1;

  v3 = *MEMORY[0x277D85DE8];
}

+ (id)buildWithIdentifier:(id)identifier visibleName:(id)name hostName:(id)hostName port:(id)port path:(id)path authenticationCredentialsAssetReference:(id)reference
{
  identifierCopy = identifier;
  referenceCopy = reference;
  pathCopy = path;
  portCopy = port;
  hostNameCopy = hostName;
  nameCopy = name;
  v19 = objc_opt_new();
  [v19 setDeclarationType:@"com.apple.configuration.account.carddav"];
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

  [v19 setPayloadPath:pathCopy];
  [v19 setPayloadAuthenticationCredentialsAssetReference:referenceCopy];

  [v19 updateServerToken];

  return v19;
}

+ (id)buildRequiredOnlyWithIdentifier:(id)identifier hostName:(id)name
{
  identifierCopy = identifier;
  nameCopy = name;
  v7 = objc_opt_new();
  [v7 setDeclarationType:@"com.apple.configuration.account.carddav"];
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
  v21[0] = &unk_28746A958;
  v16 = [MEMORY[0x277CBEB98] setWithArray:&unk_287465A20];
  v20[0] = v16;
  v15 = [MEMORY[0x277CBEB98] setWithArray:&unk_287465A38];
  v20[1] = v15;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:2];
  v22[0] = v14;
  v21[1] = &unk_28746A9A0;
  v2 = [MEMORY[0x277CBEB98] setWithArray:&unk_287465A50];
  v19[0] = v2;
  v3 = [MEMORY[0x277CBEB98] setWithArray:&unk_287465A68];
  v19[1] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:2];
  v22[1] = v4;
  v21[2] = &unk_28746A970;
  v5 = [MEMORY[0x277CBEB98] setWithArray:&unk_287465A80];
  v18[0] = v5;
  v6 = [MEMORY[0x277CBEB98] setWithArray:&unk_287465A98];
  v18[1] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:2];
  v22[2] = v7;
  v21[3] = &unk_28746A9B8;
  v8 = [MEMORY[0x277CBEB98] setWithArray:&unk_287465AB0];
  v17[0] = v8;
  v9 = [MEMORY[0x277CBEB98] setWithArray:&unk_287465AC8];
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
  v8 = MEMORY[0x277CBEB58];
  allKeys = [dictionaryCopy allKeys];
  v10 = [v8 setWithArray:allKeys];

  v11 = +[RMModelAccountCardDAVDeclaration allowedPayloadKeys];
  [v10 minusSet:v11];

  v12 = [v10 copy];
  [(RMModelPayloadBase *)self setUnknownPayloadKeys:v12];

  v13 = [(RMModelPayloadBase *)self loadStringFromDictionary:dictionaryCopy usingKey:@"VisibleName" forKeyPath:@"payloadVisibleName" isRequired:0 defaultValue:0 error:error]&& [(RMModelPayloadBase *)self loadStringFromDictionary:dictionaryCopy usingKey:@"HostName" forKeyPath:@"payloadHostName" isRequired:1 defaultValue:0 error:error]&& [(RMModelPayloadBase *)self loadIntegerFromDictionary:dictionaryCopy usingKey:@"Port" forKeyPath:@"payloadPort" isRequired:0 defaultValue:0 error:error]&& [(RMModelPayloadBase *)self loadStringFromDictionary:dictionaryCopy usingKey:@"Path" forKeyPath:@"payloadPath" isRequired:0 defaultValue:0 error:error]&& [(RMModelPayloadBase *)self loadStringFromDictionary:dictionaryCopy usingKey:@"AuthenticationCredentialsAssetReference" forKeyPath:@"payloadAuthenticationCredentialsAssetReference" isRequired:0 defaultValue:0 error:error];
  return v13;
}

- (id)serializePayloadWithType:(signed __int16)type
{
  v4 = objc_opt_new();
  payloadVisibleName = [(RMModelAccountCardDAVDeclaration *)self payloadVisibleName];
  [(RMModelPayloadBase *)self serializeStringIntoDictionary:v4 usingKey:@"VisibleName" value:payloadVisibleName isRequired:0 defaultValue:0];

  payloadHostName = [(RMModelAccountCardDAVDeclaration *)self payloadHostName];
  [(RMModelPayloadBase *)self serializeStringIntoDictionary:v4 usingKey:@"HostName" value:payloadHostName isRequired:1 defaultValue:0];

  payloadPort = [(RMModelAccountCardDAVDeclaration *)self payloadPort];
  [(RMModelPayloadBase *)self serializeIntegerIntoDictionary:v4 usingKey:@"Port" value:payloadPort isRequired:0 defaultValue:0];

  payloadPath = [(RMModelAccountCardDAVDeclaration *)self payloadPath];
  [(RMModelPayloadBase *)self serializeStringIntoDictionary:v4 usingKey:@"Path" value:payloadPath isRequired:0 defaultValue:0];

  payloadAuthenticationCredentialsAssetReference = [(RMModelAccountCardDAVDeclaration *)self payloadAuthenticationCredentialsAssetReference];
  [(RMModelPayloadBase *)self serializeStringIntoDictionary:v4 usingKey:@"AuthenticationCredentialsAssetReference" value:payloadAuthenticationCredentialsAssetReference isRequired:0 defaultValue:0];

  v10 = [v4 copy];

  return v10;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v16.receiver = self;
  v16.super_class = RMModelAccountCardDAVDeclaration;
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

  v11 = [(NSString *)self->_payloadPath copy];
  v12 = v4[9];
  v4[9] = v11;

  v13 = [(NSString *)self->_payloadAuthenticationCredentialsAssetReference copy];
  v14 = v4[10];
  v4[10] = v13;

  return v4;
}

@end