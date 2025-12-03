@interface RMModelAccountMailDeclaration
+ (NSSet)allowedPayloadKeys;
+ (id)buildRequiredOnlyWithIdentifier:(id)identifier incomingServer:(id)server outgoingServer:(id)outgoingServer;
+ (id)buildWithIdentifier:(id)identifier visibleName:(id)name userIdentityAssetReference:(id)reference incomingServer:(id)server outgoingServer:(id)outgoingServer SMIME:(id)e;
+ (id)supportedOS;
- (BOOL)loadPayloadFromDictionary:(id)dictionary serializationType:(signed __int16)type error:(id *)error;
- (id)assetReferences;
- (id)copyWithZone:(_NSZone *)zone;
- (id)serializePayloadWithType:(signed __int16)type;
@end

@implementation RMModelAccountMailDeclaration

+ (NSSet)allowedPayloadKeys
{
  v7[5] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CBEB98];
  v7[0] = @"VisibleName";
  v7[1] = @"UserIdentityAssetReference";
  v7[2] = @"IncomingServer";
  v7[3] = @"OutgoingServer";
  v7[4] = @"SMIME";
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:5];
  v4 = [v2 setWithArray:v3];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

- (id)assetReferences
{
  if (assetReferences_onceToken_4 != -1)
  {
    [RMModelAccountMailDeclaration assetReferences];
  }

  v3 = assetReferences_assetPaths_4;

  return [(RMModelConfigurationBase *)self assetReferencesFromKeyPaths:v3 payloadObject:self];
}

void __48__RMModelAccountMailDeclaration_assetReferences__block_invoke()
{
  v8[5] = *MEMORY[0x277D85DE8];
  v0 = [[RMModelConfigurationSchemaAssetReference alloc] initWithAssetTypes:&unk_287465E28 keyPath:@"$.payloadUserIdentityAssetReference"];
  v1 = [[RMModelConfigurationSchemaAssetReference alloc] initWithAssetTypes:&unk_287465E40 keyPath:@"$.payloadIncomingServer.payloadAuthenticationCredentialsAssetReference", v0];
  v8[1] = v1;
  v2 = [[RMModelConfigurationSchemaAssetReference alloc] initWithAssetTypes:&unk_287465E58 keyPath:@"$.payloadOutgoingServer.payloadAuthenticationCredentialsAssetReference"];
  v8[2] = v2;
  v3 = [[RMModelConfigurationSchemaAssetReference alloc] initWithAssetTypes:&unk_287465E70 keyPath:@"$.payloadSMIME.payloadSigning.payloadIdentityAssetReference"];
  v8[3] = v3;
  v4 = [[RMModelConfigurationSchemaAssetReference alloc] initWithAssetTypes:&unk_287465E88 keyPath:@"$.payloadSMIME.payloadEncryption.payloadIdentityAssetReference"];
  v8[4] = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:5];
  v6 = assetReferences_assetPaths_4;
  assetReferences_assetPaths_4 = v5;

  v7 = *MEMORY[0x277D85DE8];
}

+ (id)buildWithIdentifier:(id)identifier visibleName:(id)name userIdentityAssetReference:(id)reference incomingServer:(id)server outgoingServer:(id)outgoingServer SMIME:(id)e
{
  identifierCopy = identifier;
  eCopy = e;
  outgoingServerCopy = outgoingServer;
  serverCopy = server;
  referenceCopy = reference;
  nameCopy = name;
  v19 = objc_opt_new();
  [v19 setDeclarationType:@"com.apple.configuration.account.mail"];
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

  [v19 setPayloadUserIdentityAssetReference:referenceCopy];
  [v19 setPayloadIncomingServer:serverCopy];

  [v19 setPayloadOutgoingServer:outgoingServerCopy];
  [v19 setPayloadSMIME:eCopy];

  [v19 updateServerToken];

  return v19;
}

+ (id)buildRequiredOnlyWithIdentifier:(id)identifier incomingServer:(id)server outgoingServer:(id)outgoingServer
{
  identifierCopy = identifier;
  outgoingServerCopy = outgoingServer;
  serverCopy = server;
  v10 = objc_opt_new();
  [v10 setDeclarationType:@"com.apple.configuration.account.mail"];
  if (identifierCopy)
  {
    [v10 setDeclarationIdentifier:identifierCopy];
  }

  else
  {
    uUID = [MEMORY[0x277CCAD78] UUID];
    uUIDString = [uUID UUIDString];
    [v10 setDeclarationIdentifier:uUIDString];
  }

  [v10 setPayloadIncomingServer:serverCopy];

  [v10 setPayloadOutgoingServer:outgoingServerCopy];
  [v10 updateServerToken];

  return v10;
}

+ (id)supportedOS
{
  v22[4] = *MEMORY[0x277D85DE8];
  v21[0] = &unk_28746AB38;
  v16 = [MEMORY[0x277CBEB98] setWithArray:&unk_287465EA0];
  v20[0] = v16;
  v15 = [MEMORY[0x277CBEB98] setWithArray:&unk_287465EB8];
  v20[1] = v15;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:2];
  v22[0] = v14;
  v21[1] = &unk_28746AB80;
  v2 = [MEMORY[0x277CBEB98] setWithArray:&unk_287465ED0];
  v19[0] = v2;
  v3 = [MEMORY[0x277CBEB98] setWithArray:&unk_287465EE8];
  v19[1] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:2];
  v22[1] = v4;
  v21[2] = &unk_28746AB50;
  v5 = [MEMORY[0x277CBEB98] setWithArray:&unk_287465F00];
  v18[0] = v5;
  v6 = [MEMORY[0x277CBEB98] setWithArray:&unk_287465F18];
  v18[1] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:2];
  v22[2] = v7;
  v21[3] = &unk_28746AB98;
  v8 = [MEMORY[0x277CBEB98] setWithArray:&unk_287465F30];
  v17[0] = v8;
  v9 = [MEMORY[0x277CBEB98] setWithArray:&unk_287465F48];
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

  v12 = +[RMModelAccountMailDeclaration allowedPayloadKeys];
  [v11 minusSet:v12];

  v13 = [v11 copy];
  [(RMModelPayloadBase *)self setUnknownPayloadKeys:v13];

  if ([(RMModelPayloadBase *)self loadStringFromDictionary:dictionaryCopy usingKey:@"VisibleName" forKeyPath:@"payloadVisibleName" isRequired:0 defaultValue:0 error:error]&& [(RMModelPayloadBase *)self loadStringFromDictionary:dictionaryCopy usingKey:@"UserIdentityAssetReference" forKeyPath:@"payloadUserIdentityAssetReference" isRequired:0 defaultValue:0 error:error]&& (LOWORD(v16) = type, [(RMModelPayloadBase *)self loadDictionaryFromDictionary:dictionaryCopy usingKey:@"IncomingServer" forKeyPath:@"payloadIncomingServer" classType:objc_opt_class() isRequired:1 defaultValue:0 serializationType:v16 error:error]) && (LOWORD(v17) = type, [(RMModelPayloadBase *)self loadDictionaryFromDictionary:dictionaryCopy usingKey:@"OutgoingServer" forKeyPath:@"payloadOutgoingServer" classType:objc_opt_class() isRequired:1 defaultValue:0 serializationType:v17 error:error]))
  {
    LOWORD(v18) = type;
    v14 = [(RMModelPayloadBase *)self loadDictionaryFromDictionary:dictionaryCopy usingKey:@"SMIME" forKeyPath:@"payloadSMIME" classType:objc_opt_class() isRequired:0 defaultValue:0 serializationType:v18 error:error];
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
  payloadVisibleName = [(RMModelAccountMailDeclaration *)self payloadVisibleName];
  [(RMModelPayloadBase *)self serializeStringIntoDictionary:v5 usingKey:@"VisibleName" value:payloadVisibleName isRequired:0 defaultValue:0];

  payloadUserIdentityAssetReference = [(RMModelAccountMailDeclaration *)self payloadUserIdentityAssetReference];
  [(RMModelPayloadBase *)self serializeStringIntoDictionary:v5 usingKey:@"UserIdentityAssetReference" value:payloadUserIdentityAssetReference isRequired:0 defaultValue:0];

  payloadIncomingServer = [(RMModelAccountMailDeclaration *)self payloadIncomingServer];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __58__RMModelAccountMailDeclaration_serializePayloadWithType___block_invoke;
  v17[3] = &__block_descriptor_34_e42___NSDictionary_16__0__RMModelPayloadBase_8l;
  typeCopy = type;
  [(RMModelPayloadBase *)self serializeDictionaryIntoDictionary:v5 usingKey:@"IncomingServer" value:payloadIncomingServer dictSerializer:v17 isRequired:1 defaultValue:0];

  payloadOutgoingServer = [(RMModelAccountMailDeclaration *)self payloadOutgoingServer];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __58__RMModelAccountMailDeclaration_serializePayloadWithType___block_invoke_2;
  v15[3] = &__block_descriptor_34_e42___NSDictionary_16__0__RMModelPayloadBase_8l;
  typeCopy2 = type;
  [(RMModelPayloadBase *)self serializeDictionaryIntoDictionary:v5 usingKey:@"OutgoingServer" value:payloadOutgoingServer dictSerializer:v15 isRequired:1 defaultValue:0];

  payloadSMIME = [(RMModelAccountMailDeclaration *)self payloadSMIME];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __58__RMModelAccountMailDeclaration_serializePayloadWithType___block_invoke_3;
  v13[3] = &__block_descriptor_34_e42___NSDictionary_16__0__RMModelPayloadBase_8l;
  typeCopy3 = type;
  [(RMModelPayloadBase *)self serializeDictionaryIntoDictionary:v5 usingKey:@"SMIME" value:payloadSMIME dictSerializer:v13 isRequired:0 defaultValue:0];

  v11 = [v5 copy];

  return v11;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v16.receiver = self;
  v16.super_class = RMModelAccountMailDeclaration;
  v4 = [(RMModelDeclarationBase *)&v16 copyWithZone:zone];
  v5 = [(NSString *)self->_payloadVisibleName copy];
  v6 = v4[6];
  v4[6] = v5;

  v7 = [(NSString *)self->_payloadUserIdentityAssetReference copy];
  v8 = v4[7];
  v4[7] = v7;

  v9 = [(RMModelAccountMailDeclaration_IncomingServer *)self->_payloadIncomingServer copy];
  v10 = v4[8];
  v4[8] = v9;

  v11 = [(RMModelAccountMailDeclaration_OutgoingServer *)self->_payloadOutgoingServer copy];
  v12 = v4[9];
  v4[9] = v11;

  v13 = [(RMModelAccountMailDeclaration_SMIME *)self->_payloadSMIME copy];
  v14 = v4[10];
  v4[10] = v13;

  return v4;
}

@end