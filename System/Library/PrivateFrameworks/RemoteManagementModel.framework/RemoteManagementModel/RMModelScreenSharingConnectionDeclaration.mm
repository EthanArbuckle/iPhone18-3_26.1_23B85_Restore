@interface RMModelScreenSharingConnectionDeclaration
+ (NSSet)allowedPayloadKeys;
+ (id)buildRequiredOnlyWithIdentifier:(id)identifier connectionUUID:(id)d displayName:(id)name hostName:(id)hostName displayConfiguration:(id)configuration;
+ (id)buildWithIdentifier:(id)identifier connectionUUID:(id)d displayName:(id)name hostName:(id)hostName port:(id)port displayConfiguration:(id)configuration authenticationCredentialsAssetReference:(id)reference;
+ (id)supportedOS;
- (BOOL)loadPayloadFromDictionary:(id)dictionary serializationType:(signed __int16)type error:(id *)error;
- (id)assetReferences;
- (id)copyWithZone:(_NSZone *)zone;
- (id)serializePayloadWithType:(signed __int16)type;
@end

@implementation RMModelScreenSharingConnectionDeclaration

+ (NSSet)allowedPayloadKeys
{
  v7[6] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CBEB98];
  v7[0] = @"ConnectionUUID";
  v7[1] = @"DisplayName";
  v7[2] = @"HostName";
  v7[3] = @"Port";
  v7[4] = @"DisplayConfiguration";
  v7[5] = @"AuthenticationCredentialsAssetReference";
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:6];
  v4 = [v2 setWithArray:v3];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

- (id)assetReferences
{
  if (assetReferences_onceToken_10 != -1)
  {
    [RMModelScreenSharingConnectionDeclaration assetReferences];
  }

  v3 = assetReferences_assetPaths_10;

  return [(RMModelConfigurationBase *)self assetReferencesFromKeyPaths:v3 payloadObject:self];
}

void __60__RMModelScreenSharingConnectionDeclaration_assetReferences__block_invoke()
{
  v4[1] = *MEMORY[0x277D85DE8];
  v0 = [[RMModelConfigurationSchemaAssetReference alloc] initWithAssetTypes:&unk_287467940 keyPath:@"$.payloadAuthenticationCredentialsAssetReference"];
  v4[0] = v0;
  v1 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:1];
  v2 = assetReferences_assetPaths_10;
  assetReferences_assetPaths_10 = v1;

  v3 = *MEMORY[0x277D85DE8];
}

+ (id)buildWithIdentifier:(id)identifier connectionUUID:(id)d displayName:(id)name hostName:(id)hostName port:(id)port displayConfiguration:(id)configuration authenticationCredentialsAssetReference:(id)reference
{
  identifierCopy = identifier;
  referenceCopy = reference;
  configurationCopy = configuration;
  portCopy = port;
  hostNameCopy = hostName;
  nameCopy = name;
  dCopy = d;
  v21 = objc_opt_new();
  [v21 setDeclarationType:@"com.apple.configuration.screensharing.connection"];
  if (identifierCopy)
  {
    [v21 setDeclarationIdentifier:identifierCopy];
  }

  else
  {
    uUID = [MEMORY[0x277CCAD78] UUID];
    uUIDString = [uUID UUIDString];
    [v21 setDeclarationIdentifier:uUIDString];
  }

  [v21 setPayloadConnectionUUID:dCopy];

  [v21 setPayloadDisplayName:nameCopy];
  [v21 setPayloadHostName:hostNameCopy];

  [v21 setPayloadPort:portCopy];
  [v21 setPayloadDisplayConfiguration:configurationCopy];

  [v21 setPayloadAuthenticationCredentialsAssetReference:referenceCopy];
  [v21 updateServerToken];

  return v21;
}

+ (id)buildRequiredOnlyWithIdentifier:(id)identifier connectionUUID:(id)d displayName:(id)name hostName:(id)hostName displayConfiguration:(id)configuration
{
  identifierCopy = identifier;
  configurationCopy = configuration;
  hostNameCopy = hostName;
  nameCopy = name;
  dCopy = d;
  v16 = objc_opt_new();
  [v16 setDeclarationType:@"com.apple.configuration.screensharing.connection"];
  if (identifierCopy)
  {
    [v16 setDeclarationIdentifier:identifierCopy];
  }

  else
  {
    uUID = [MEMORY[0x277CCAD78] UUID];
    uUIDString = [uUID UUIDString];
    [v16 setDeclarationIdentifier:uUIDString];
  }

  [v16 setPayloadConnectionUUID:dCopy];

  [v16 setPayloadDisplayName:nameCopy];
  [v16 setPayloadHostName:hostNameCopy];

  [v16 setPayloadDisplayConfiguration:configurationCopy];
  [v16 updateServerToken];

  return v16;
}

+ (id)supportedOS
{
  v10[1] = *MEMORY[0x277D85DE8];
  v9 = &unk_28746B8D0;
  v2 = [MEMORY[0x277CBEB98] setWithArray:&unk_287467958];
  v8[0] = v2;
  v3 = [MEMORY[0x277CBEB98] setWithArray:&unk_287467970];
  v8[1] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:2];
  v10[0] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

- (BOOL)loadPayloadFromDictionary:(id)dictionary serializationType:(signed __int16)type error:(id *)error
{
  dictionaryCopy = dictionary;
  v9 = MEMORY[0x277CBEB58];
  allKeys = [dictionaryCopy allKeys];
  v11 = [v9 setWithArray:allKeys];

  v12 = +[RMModelScreenSharingConnectionDeclaration allowedPayloadKeys];
  [v11 minusSet:v12];

  v13 = [v11 copy];
  [(RMModelPayloadBase *)self setUnknownPayloadKeys:v13];

  v14 = [(RMModelPayloadBase *)self loadStringFromDictionary:dictionaryCopy usingKey:@"ConnectionUUID" forKeyPath:@"payloadConnectionUUID" isRequired:1 defaultValue:0 error:error]&& [(RMModelPayloadBase *)self loadStringFromDictionary:dictionaryCopy usingKey:@"DisplayName" forKeyPath:@"payloadDisplayName" isRequired:1 defaultValue:0 error:error]&& [(RMModelPayloadBase *)self loadStringFromDictionary:dictionaryCopy usingKey:@"HostName" forKeyPath:@"payloadHostName" isRequired:1 defaultValue:0 error:error]&& [(RMModelPayloadBase *)self loadIntegerFromDictionary:dictionaryCopy usingKey:@"Port" forKeyPath:@"payloadPort" isRequired:0 defaultValue:0 error:error]&& (LOWORD(v16) = type, [(RMModelPayloadBase *)self loadDictionaryFromDictionary:dictionaryCopy usingKey:@"DisplayConfiguration" forKeyPath:@"payloadDisplayConfiguration" classType:objc_opt_class() isRequired:1 defaultValue:0 serializationType:v16 error:error]) && [(RMModelPayloadBase *)self loadStringFromDictionary:dictionaryCopy usingKey:@"AuthenticationCredentialsAssetReference" forKeyPath:@"payloadAuthenticationCredentialsAssetReference" isRequired:0 defaultValue:0 error:error];
  return v14;
}

- (id)serializePayloadWithType:(signed __int16)type
{
  v5 = objc_opt_new();
  payloadConnectionUUID = [(RMModelScreenSharingConnectionDeclaration *)self payloadConnectionUUID];
  [(RMModelPayloadBase *)self serializeStringIntoDictionary:v5 usingKey:@"ConnectionUUID" value:payloadConnectionUUID isRequired:1 defaultValue:0];

  payloadDisplayName = [(RMModelScreenSharingConnectionDeclaration *)self payloadDisplayName];
  [(RMModelPayloadBase *)self serializeStringIntoDictionary:v5 usingKey:@"DisplayName" value:payloadDisplayName isRequired:1 defaultValue:0];

  payloadHostName = [(RMModelScreenSharingConnectionDeclaration *)self payloadHostName];
  [(RMModelPayloadBase *)self serializeStringIntoDictionary:v5 usingKey:@"HostName" value:payloadHostName isRequired:1 defaultValue:0];

  payloadPort = [(RMModelScreenSharingConnectionDeclaration *)self payloadPort];
  [(RMModelPayloadBase *)self serializeIntegerIntoDictionary:v5 usingKey:@"Port" value:payloadPort isRequired:0 defaultValue:0];

  payloadDisplayConfiguration = [(RMModelScreenSharingConnectionDeclaration *)self payloadDisplayConfiguration];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __70__RMModelScreenSharingConnectionDeclaration_serializePayloadWithType___block_invoke;
  v14[3] = &__block_descriptor_34_e42___NSDictionary_16__0__RMModelPayloadBase_8l;
  typeCopy = type;
  [(RMModelPayloadBase *)self serializeDictionaryIntoDictionary:v5 usingKey:@"DisplayConfiguration" value:payloadDisplayConfiguration dictSerializer:v14 isRequired:1 defaultValue:0];

  payloadAuthenticationCredentialsAssetReference = [(RMModelScreenSharingConnectionDeclaration *)self payloadAuthenticationCredentialsAssetReference];
  [(RMModelPayloadBase *)self serializeStringIntoDictionary:v5 usingKey:@"AuthenticationCredentialsAssetReference" value:payloadAuthenticationCredentialsAssetReference isRequired:0 defaultValue:0];

  v12 = [v5 copy];

  return v12;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v18.receiver = self;
  v18.super_class = RMModelScreenSharingConnectionDeclaration;
  v4 = [(RMModelDeclarationBase *)&v18 copyWithZone:zone];
  v5 = [(NSString *)self->_payloadConnectionUUID copy];
  v6 = v4[6];
  v4[6] = v5;

  v7 = [(NSString *)self->_payloadDisplayName copy];
  v8 = v4[7];
  v4[7] = v7;

  v9 = [(NSString *)self->_payloadHostName copy];
  v10 = v4[8];
  v4[8] = v9;

  v11 = [(NSNumber *)self->_payloadPort copy];
  v12 = v4[9];
  v4[9] = v11;

  v13 = [(RMModelScreenSharingConnectionDeclaration_DisplayConfiguration *)self->_payloadDisplayConfiguration copy];
  v14 = v4[10];
  v4[10] = v13;

  v15 = [(NSString *)self->_payloadAuthenticationCredentialsAssetReference copy];
  v16 = v4[11];
  v4[11] = v15;

  return v4;
}

@end