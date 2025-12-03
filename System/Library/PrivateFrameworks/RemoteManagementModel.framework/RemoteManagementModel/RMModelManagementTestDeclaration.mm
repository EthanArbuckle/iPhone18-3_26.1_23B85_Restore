@interface RMModelManagementTestDeclaration
+ (NSSet)allowedPayloadKeys;
+ (id)buildRequiredOnlyWithIdentifier:(id)identifier echo:(id)echo;
+ (id)buildWithIdentifier:(id)identifier echo:(id)echo echoDataAssetReference:(id)reference returnStatus:(id)status;
+ (id)supportedOS;
- (BOOL)loadPayloadFromDictionary:(id)dictionary serializationType:(signed __int16)type error:(id *)error;
- (id)assetReferences;
- (id)copyWithZone:(_NSZone *)zone;
- (id)serializePayloadWithType:(signed __int16)type;
@end

@implementation RMModelManagementTestDeclaration

+ (NSSet)allowedPayloadKeys
{
  v7[3] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CBEB98];
  v7[0] = @"Echo";
  v7[1] = @"EchoDataAssetReference";
  v7[2] = @"ReturnStatus";
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:3];
  v4 = [v2 setWithArray:v3];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

- (id)assetReferences
{
  if (assetReferences_onceToken_7 != -1)
  {
    [RMModelManagementTestDeclaration assetReferences];
  }

  v3 = assetReferences_assetPaths_7;

  return [(RMModelConfigurationBase *)self assetReferencesFromKeyPaths:v3 payloadObject:self];
}

void __51__RMModelManagementTestDeclaration_assetReferences__block_invoke()
{
  v4[1] = *MEMORY[0x277D85DE8];
  v0 = [[RMModelConfigurationSchemaAssetReference alloc] initWithAssetTypes:&unk_2874672E0 keyPath:@"$.payloadEchoDataAssetReference"];
  v4[0] = v0;
  v1 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:1];
  v2 = assetReferences_assetPaths_7;
  assetReferences_assetPaths_7 = v1;

  v3 = *MEMORY[0x277D85DE8];
}

+ (id)buildWithIdentifier:(id)identifier echo:(id)echo echoDataAssetReference:(id)reference returnStatus:(id)status
{
  identifierCopy = identifier;
  statusCopy = status;
  referenceCopy = reference;
  echoCopy = echo;
  v13 = objc_opt_new();
  [v13 setDeclarationType:@"com.apple.configuration.management.test"];
  if (identifierCopy)
  {
    [v13 setDeclarationIdentifier:identifierCopy];
  }

  else
  {
    uUID = [MEMORY[0x277CCAD78] UUID];
    uUIDString = [uUID UUIDString];
    [v13 setDeclarationIdentifier:uUIDString];
  }

  [v13 setPayloadEcho:echoCopy];

  [v13 setPayloadEchoDataAssetReference:referenceCopy];
  if (statusCopy)
  {
    v16 = statusCopy;
  }

  else
  {
    v16 = @"Installed";
  }

  [v13 setPayloadReturnStatus:v16];

  [v13 updateServerToken];

  return v13;
}

+ (id)buildRequiredOnlyWithIdentifier:(id)identifier echo:(id)echo
{
  identifierCopy = identifier;
  echoCopy = echo;
  v7 = objc_opt_new();
  [v7 setDeclarationType:@"com.apple.configuration.management.test"];
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

  [v7 setPayloadEcho:echoCopy];

  [v7 updateServerToken];

  return v7;
}

+ (id)supportedOS
{
  v30[6] = *MEMORY[0x277D85DE8];
  v29[0] = &unk_28746B570;
  v22 = [MEMORY[0x277CBEB98] setWithArray:&unk_2874672F8];
  v28[0] = v22;
  v21 = [MEMORY[0x277CBEB98] setWithArray:&unk_287467310];
  v28[1] = v21;
  v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:2];
  v30[0] = v20;
  v29[1] = &unk_28746B588;
  v19 = [MEMORY[0x277CBEB98] setWithArray:&unk_287467328];
  v27[0] = v19;
  v18 = [MEMORY[0x277CBEB98] setWithArray:&unk_287467340];
  v27[1] = v18;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v27 count:2];
  v30[1] = v17;
  v29[2] = &unk_28746B5A0;
  v16 = [MEMORY[0x277CBEB98] setWithArray:&unk_287467358];
  v26[0] = v16;
  v15 = [MEMORY[0x277CBEB98] setWithArray:&unk_287467370];
  v26[1] = v15;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:2];
  v30[2] = v14;
  v29[3] = &unk_28746B5B8;
  v2 = [MEMORY[0x277CBEB98] setWithArray:&unk_287467388];
  v25[0] = v2;
  v3 = [MEMORY[0x277CBEB98] setWithArray:&unk_2874673A0];
  v25[1] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:2];
  v30[3] = v4;
  v29[4] = &unk_28746B5D0;
  v5 = [MEMORY[0x277CBEB98] setWithArray:&unk_2874673B8];
  v24[0] = v5;
  v6 = [MEMORY[0x277CBEB98] setWithArray:&unk_2874673D0];
  v24[1] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:2];
  v30[4] = v7;
  v29[5] = &unk_28746B5E8;
  v8 = [MEMORY[0x277CBEB98] setWithArray:&unk_2874673E8];
  v23[0] = v8;
  v9 = [MEMORY[0x277CBEB98] setWithArray:&unk_287467400];
  v23[1] = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:2];
  v30[5] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v30 forKeys:v29 count:6];

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

- (BOOL)loadPayloadFromDictionary:(id)dictionary serializationType:(signed __int16)type error:(id *)error
{
  dictionaryCopy = dictionary;
  v8 = MEMORY[0x277CBEB58];
  allKeys = [dictionaryCopy allKeys];
  v10 = [v8 setWithArray:allKeys];

  v11 = +[RMModelManagementTestDeclaration allowedPayloadKeys];
  [v10 minusSet:v11];

  v12 = [v10 copy];
  [(RMModelPayloadBase *)self setUnknownPayloadKeys:v12];

  v13 = [(RMModelPayloadBase *)self loadStringFromDictionary:dictionaryCopy usingKey:@"Echo" forKeyPath:@"payloadEcho" isRequired:1 defaultValue:0 error:error]&& [(RMModelPayloadBase *)self loadStringFromDictionary:dictionaryCopy usingKey:@"EchoDataAssetReference" forKeyPath:@"payloadEchoDataAssetReference" isRequired:0 defaultValue:0 error:error]&& [(RMModelPayloadBase *)self loadStringFromDictionary:dictionaryCopy usingKey:@"ReturnStatus" forKeyPath:@"payloadReturnStatus" isRequired:0 defaultValue:@"Installed" error:error];
  return v13;
}

- (id)serializePayloadWithType:(signed __int16)type
{
  v4 = objc_opt_new();
  payloadEcho = [(RMModelManagementTestDeclaration *)self payloadEcho];
  [(RMModelPayloadBase *)self serializeStringIntoDictionary:v4 usingKey:@"Echo" value:payloadEcho isRequired:1 defaultValue:0];

  payloadEchoDataAssetReference = [(RMModelManagementTestDeclaration *)self payloadEchoDataAssetReference];
  [(RMModelPayloadBase *)self serializeStringIntoDictionary:v4 usingKey:@"EchoDataAssetReference" value:payloadEchoDataAssetReference isRequired:0 defaultValue:0];

  payloadReturnStatus = [(RMModelManagementTestDeclaration *)self payloadReturnStatus];
  [(RMModelPayloadBase *)self serializeStringIntoDictionary:v4 usingKey:@"ReturnStatus" value:payloadReturnStatus isRequired:0 defaultValue:@"Installed"];

  v8 = [v4 copy];

  return v8;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v12.receiver = self;
  v12.super_class = RMModelManagementTestDeclaration;
  v4 = [(RMModelDeclarationBase *)&v12 copyWithZone:zone];
  v5 = [(NSString *)self->_payloadEcho copy];
  v6 = v4[6];
  v4[6] = v5;

  v7 = [(NSString *)self->_payloadEchoDataAssetReference copy];
  v8 = v4[7];
  v4[7] = v7;

  v9 = [(NSString *)self->_payloadReturnStatus copy];
  v10 = v4[8];
  v4[8] = v9;

  return v4;
}

@end