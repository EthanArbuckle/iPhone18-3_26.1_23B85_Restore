@interface RMModelAccountMailDeclaration
+ (NSSet)allowedPayloadKeys;
+ (id)buildRequiredOnlyWithIdentifier:(id)a3 incomingServer:(id)a4 outgoingServer:(id)a5;
+ (id)buildWithIdentifier:(id)a3 visibleName:(id)a4 userIdentityAssetReference:(id)a5 incomingServer:(id)a6 outgoingServer:(id)a7 SMIME:(id)a8;
+ (id)supportedOS;
- (BOOL)loadPayloadFromDictionary:(id)a3 serializationType:(signed __int16)a4 error:(id *)a5;
- (id)assetReferences;
- (id)copyWithZone:(_NSZone *)a3;
- (id)serializePayloadWithType:(signed __int16)a3;
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

+ (id)buildWithIdentifier:(id)a3 visibleName:(id)a4 userIdentityAssetReference:(id)a5 incomingServer:(id)a6 outgoingServer:(id)a7 SMIME:(id)a8
{
  v13 = a3;
  v14 = a8;
  v15 = a7;
  v16 = a6;
  v17 = a5;
  v18 = a4;
  v19 = objc_opt_new();
  [v19 setDeclarationType:@"com.apple.configuration.account.mail"];
  if (v13)
  {
    [v19 setDeclarationIdentifier:v13];
  }

  else
  {
    v20 = [MEMORY[0x277CCAD78] UUID];
    v21 = [v20 UUIDString];
    [v19 setDeclarationIdentifier:v21];
  }

  [v19 setPayloadVisibleName:v18];

  [v19 setPayloadUserIdentityAssetReference:v17];
  [v19 setPayloadIncomingServer:v16];

  [v19 setPayloadOutgoingServer:v15];
  [v19 setPayloadSMIME:v14];

  [v19 updateServerToken];

  return v19;
}

+ (id)buildRequiredOnlyWithIdentifier:(id)a3 incomingServer:(id)a4 outgoingServer:(id)a5
{
  v7 = a3;
  v8 = a5;
  v9 = a4;
  v10 = objc_opt_new();
  [v10 setDeclarationType:@"com.apple.configuration.account.mail"];
  if (v7)
  {
    [v10 setDeclarationIdentifier:v7];
  }

  else
  {
    v11 = [MEMORY[0x277CCAD78] UUID];
    v12 = [v11 UUIDString];
    [v10 setDeclarationIdentifier:v12];
  }

  [v10 setPayloadIncomingServer:v9];

  [v10 setPayloadOutgoingServer:v8];
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

- (BOOL)loadPayloadFromDictionary:(id)a3 serializationType:(signed __int16)a4 error:(id *)a5
{
  v8 = a3;
  v9 = MEMORY[0x277CBEB58];
  v10 = [v8 allKeys];
  v11 = [v9 setWithArray:v10];

  v12 = +[RMModelAccountMailDeclaration allowedPayloadKeys];
  [v11 minusSet:v12];

  v13 = [v11 copy];
  [(RMModelPayloadBase *)self setUnknownPayloadKeys:v13];

  if ([(RMModelPayloadBase *)self loadStringFromDictionary:v8 usingKey:@"VisibleName" forKeyPath:@"payloadVisibleName" isRequired:0 defaultValue:0 error:a5]&& [(RMModelPayloadBase *)self loadStringFromDictionary:v8 usingKey:@"UserIdentityAssetReference" forKeyPath:@"payloadUserIdentityAssetReference" isRequired:0 defaultValue:0 error:a5]&& (LOWORD(v16) = a4, [(RMModelPayloadBase *)self loadDictionaryFromDictionary:v8 usingKey:@"IncomingServer" forKeyPath:@"payloadIncomingServer" classType:objc_opt_class() isRequired:1 defaultValue:0 serializationType:v16 error:a5]) && (LOWORD(v17) = a4, [(RMModelPayloadBase *)self loadDictionaryFromDictionary:v8 usingKey:@"OutgoingServer" forKeyPath:@"payloadOutgoingServer" classType:objc_opt_class() isRequired:1 defaultValue:0 serializationType:v17 error:a5]))
  {
    LOWORD(v18) = a4;
    v14 = [(RMModelPayloadBase *)self loadDictionaryFromDictionary:v8 usingKey:@"SMIME" forKeyPath:@"payloadSMIME" classType:objc_opt_class() isRequired:0 defaultValue:0 serializationType:v18 error:a5];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (id)serializePayloadWithType:(signed __int16)a3
{
  v5 = objc_opt_new();
  v6 = [(RMModelAccountMailDeclaration *)self payloadVisibleName];
  [(RMModelPayloadBase *)self serializeStringIntoDictionary:v5 usingKey:@"VisibleName" value:v6 isRequired:0 defaultValue:0];

  v7 = [(RMModelAccountMailDeclaration *)self payloadUserIdentityAssetReference];
  [(RMModelPayloadBase *)self serializeStringIntoDictionary:v5 usingKey:@"UserIdentityAssetReference" value:v7 isRequired:0 defaultValue:0];

  v8 = [(RMModelAccountMailDeclaration *)self payloadIncomingServer];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __58__RMModelAccountMailDeclaration_serializePayloadWithType___block_invoke;
  v17[3] = &__block_descriptor_34_e42___NSDictionary_16__0__RMModelPayloadBase_8l;
  v18 = a3;
  [(RMModelPayloadBase *)self serializeDictionaryIntoDictionary:v5 usingKey:@"IncomingServer" value:v8 dictSerializer:v17 isRequired:1 defaultValue:0];

  v9 = [(RMModelAccountMailDeclaration *)self payloadOutgoingServer];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __58__RMModelAccountMailDeclaration_serializePayloadWithType___block_invoke_2;
  v15[3] = &__block_descriptor_34_e42___NSDictionary_16__0__RMModelPayloadBase_8l;
  v16 = a3;
  [(RMModelPayloadBase *)self serializeDictionaryIntoDictionary:v5 usingKey:@"OutgoingServer" value:v9 dictSerializer:v15 isRequired:1 defaultValue:0];

  v10 = [(RMModelAccountMailDeclaration *)self payloadSMIME];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __58__RMModelAccountMailDeclaration_serializePayloadWithType___block_invoke_3;
  v13[3] = &__block_descriptor_34_e42___NSDictionary_16__0__RMModelPayloadBase_8l;
  v14 = a3;
  [(RMModelPayloadBase *)self serializeDictionaryIntoDictionary:v5 usingKey:@"SMIME" value:v10 dictSerializer:v13 isRequired:0 defaultValue:0];

  v11 = [v5 copy];

  return v11;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v16.receiver = self;
  v16.super_class = RMModelAccountMailDeclaration;
  v4 = [(RMModelDeclarationBase *)&v16 copyWithZone:a3];
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