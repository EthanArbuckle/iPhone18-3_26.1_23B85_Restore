@interface RMModelNetworkEAPDeclaration
+ (NSSet)allowedPayloadKeys;
+ (id)buildRequiredOnlyWithIdentifier:(id)a3 EAPUUID:(id)a4;
+ (id)buildWithIdentifier:(id)a3 EAPUUID:(id)a4 acceptEAPTypes:(id)a5 useOneTimePassword:(id)a6 userPasswordAssetReference:(id)a7 privateAccessToken:(id)a8 EAPFAST:(id)a9 TLS:(id)a10 outerIdentity:(id)a11 ttlsInnerAuthentication:(id)a12 systemModeCredentialsSource:(id)a13 extensibleSSOProvider:(id)a14 EAPSIMAKA:(id)a15;
+ (id)supportedOS;
- (BOOL)loadPayloadFromDictionary:(id)a3 serializationType:(signed __int16)a4 error:(id *)a5;
- (id)assetReferences;
- (id)copyWithZone:(_NSZone *)a3;
- (id)serializePayloadWithType:(signed __int16)a3;
@end

@implementation RMModelNetworkEAPDeclaration

+ (NSSet)allowedPayloadKeys
{
  v7[12] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CBEB98];
  v7[0] = @"EAPUUID";
  v7[1] = @"AcceptEAPTypes";
  v7[2] = @"UseOneTimePassword";
  v7[3] = @"UserPasswordAssetReference";
  v7[4] = @"PrivateAccessToken";
  v7[5] = @"EAPFAST";
  v7[6] = @"TLS";
  v7[7] = @"OuterIdentity";
  v7[8] = @"TTLSInnerAuthentication";
  v7[9] = @"SystemModeCredentialsSource";
  v7[10] = @"ExtensibleSSOProvider";
  v7[11] = @"EAPSIMAKA";
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:12];
  v4 = [v2 setWithArray:v3];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

- (id)assetReferences
{
  if (assetReferences_onceToken_8 != -1)
  {
    [RMModelNetworkEAPDeclaration assetReferences];
  }

  v3 = assetReferences_assetPaths_8;

  return [(RMModelConfigurationBase *)self assetReferencesFromKeyPaths:v3 payloadObject:self];
}

void __47__RMModelNetworkEAPDeclaration_assetReferences__block_invoke()
{
  v6[3] = *MEMORY[0x277D85DE8];
  v0 = [[RMModelConfigurationSchemaAssetReference alloc] initWithAssetTypes:&unk_287467430 keyPath:@"$.payloadUserPasswordAssetReference"];
  v1 = [[RMModelConfigurationSchemaAssetReference alloc] initWithAssetTypes:&unk_287467448 keyPath:@"$.payloadTLS.payloadIdentityAssetReference", v0];
  v6[1] = v1;
  v2 = [[RMModelConfigurationSchemaAssetReference alloc] initWithAssetTypes:&unk_287467460 keyPath:@"$.payloadTLS.payloadAnchorCertificateAssetReferences.*"];
  v6[2] = v2;
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:3];
  v4 = assetReferences_assetPaths_8;
  assetReferences_assetPaths_8 = v3;

  v5 = *MEMORY[0x277D85DE8];
}

+ (id)buildWithIdentifier:(id)a3 EAPUUID:(id)a4 acceptEAPTypes:(id)a5 useOneTimePassword:(id)a6 userPasswordAssetReference:(id)a7 privateAccessToken:(id)a8 EAPFAST:(id)a9 TLS:(id)a10 outerIdentity:(id)a11 ttlsInnerAuthentication:(id)a12 systemModeCredentialsSource:(id)a13 extensibleSSOProvider:(id)a14 EAPSIMAKA:(id)a15
{
  v43 = a3;
  v42 = a15;
  v41 = a14;
  v40 = a13;
  v17 = a12;
  v39 = a11;
  v18 = a10;
  v19 = a9;
  v20 = a8;
  v21 = a7;
  v22 = a6;
  v23 = a5;
  v24 = a4;
  v25 = v43;
  v26 = objc_opt_new();
  [v26 setDeclarationType:@"com.apple.configuration.network.eap"];
  if (v43)
  {
    [v26 setDeclarationIdentifier:v43];
  }

  else
  {
    v27 = [MEMORY[0x277CCAD78] UUID];
    [v27 UUIDString];
    v38 = v20;
    v28 = v17;
    v29 = v19;
    v31 = v30 = v18;
    [v26 setDeclarationIdentifier:v31];

    v18 = v30;
    v19 = v29;
    v17 = v28;
    v20 = v38;

    v25 = 0;
  }

  [v26 setPayloadEAPUUID:{v24, a6}];

  [v26 setPayloadAcceptEAPTypes:v23];
  if (v22)
  {
    v32 = v22;
  }

  else
  {
    v32 = MEMORY[0x277CBEC28];
  }

  [v26 setPayloadUseOneTimePassword:v32];

  [v26 setPayloadUserPasswordAssetReference:v21];
  [v26 setPayloadPrivateAccessToken:v20];

  [v26 setPayloadEAPFAST:v19];
  [v26 setPayloadTLS:v18];

  [v26 setPayloadOuterIdentity:v39];
  if (v17)
  {
    v33 = v17;
  }

  else
  {
    v33 = @"MSCHAPv2";
  }

  [v26 setPayloadTTLSInnerAuthentication:v33];

  [v26 setPayloadSystemModeCredentialsSource:v40];
  [v26 setPayloadExtensibleSSOProvider:v41];

  [v26 setPayloadEAPSIMAKA:v42];
  [v26 updateServerToken];

  return v26;
}

+ (id)buildRequiredOnlyWithIdentifier:(id)a3 EAPUUID:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = objc_opt_new();
  [v7 setDeclarationType:@"com.apple.configuration.network.eap"];
  if (v5)
  {
    [v7 setDeclarationIdentifier:v5];
  }

  else
  {
    v8 = [MEMORY[0x277CCAD78] UUID];
    v9 = [v8 UUIDString];
    [v7 setDeclarationIdentifier:v9];
  }

  [v7 setPayloadEAPUUID:v6];

  [v7 updateServerToken];

  return v7;
}

+ (id)supportedOS
{
  v36[6] = *MEMORY[0x277D85DE8];
  v35[0] = &unk_28746B600;
  v28 = [MEMORY[0x277CBEB98] setWithArray:&unk_287467478];
  v34[0] = v28;
  v27 = [MEMORY[0x277CBEB98] setWithArray:&unk_287467490];
  v34[1] = v27;
  v26 = [MEMORY[0x277CBEB98] setWithArray:&unk_2874674A8];
  v34[2] = v26;
  v25 = [MEMORY[0x277CBEA60] arrayWithObjects:v34 count:3];
  v36[0] = v25;
  v35[1] = &unk_28746B618;
  v24 = [MEMORY[0x277CBEB98] setWithArray:&unk_2874674C0];
  v33[0] = v24;
  v23 = [MEMORY[0x277CBEB98] setWithArray:&unk_2874674D8];
  v33[1] = v23;
  v22 = [MEMORY[0x277CBEB98] setWithArray:&unk_2874674F0];
  v33[2] = v22;
  v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v33 count:3];
  v36[1] = v21;
  v35[2] = &unk_28746B630;
  v20 = [MEMORY[0x277CBEB98] setWithArray:&unk_287467508];
  v32[0] = v20;
  v19 = [MEMORY[0x277CBEB98] setWithArray:&unk_287467520];
  v32[1] = v19;
  v18 = [MEMORY[0x277CBEB98] setWithArray:&unk_287467538];
  v32[2] = v18;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v32 count:3];
  v36[2] = v17;
  v35[3] = &unk_28746B648;
  v16 = [MEMORY[0x277CBEB98] setWithArray:&unk_287467550];
  v31[0] = v16;
  v15 = [MEMORY[0x277CBEB98] setWithArray:&unk_287467568];
  v31[1] = v15;
  v2 = [MEMORY[0x277CBEB98] setWithArray:&unk_287467580];
  v31[2] = v2;
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v31 count:3];
  v36[3] = v3;
  v35[4] = &unk_28746B660;
  v4 = [MEMORY[0x277CBEB98] setWithArray:&unk_287467598];
  v30[0] = v4;
  v5 = [MEMORY[0x277CBEB98] setWithArray:&unk_2874675B0];
  v30[1] = v5;
  v6 = [MEMORY[0x277CBEB98] setWithArray:&unk_2874675C8];
  v30[2] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v30 count:3];
  v36[4] = v7;
  v35[5] = &unk_28746B678;
  v8 = [MEMORY[0x277CBEB98] setWithArray:&unk_2874675E0];
  v29[0] = v8;
  v9 = [MEMORY[0x277CBEB98] setWithArray:&unk_2874675F8];
  v29[1] = v9;
  v10 = [MEMORY[0x277CBEB98] setWithArray:&unk_287467610];
  v29[2] = v10;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v29 count:3];
  v36[5] = v11;
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v36 forKeys:v35 count:6];

  v12 = *MEMORY[0x277D85DE8];

  return v14;
}

- (BOOL)loadPayloadFromDictionary:(id)a3 serializationType:(signed __int16)a4 error:(id *)a5
{
  v8 = a3;
  v9 = MEMORY[0x277CBEB58];
  v10 = [v8 allKeys];
  v11 = [v9 setWithArray:v10];

  v12 = +[RMModelNetworkEAPDeclaration allowedPayloadKeys];
  [v11 minusSet:v12];

  v13 = [v11 copy];
  [(RMModelPayloadBase *)self setUnknownPayloadKeys:v13];

  if ([(RMModelPayloadBase *)self loadStringFromDictionary:v8 usingKey:@"EAPUUID" forKeyPath:@"payloadEAPUUID" isRequired:1 defaultValue:0 error:a5]&& [(RMModelPayloadBase *)self loadArrayFromDictionary:v8 usingKey:@"AcceptEAPTypes" forKeyPath:@"payloadAcceptEAPTypes" validator:&__block_literal_global_174 isRequired:0 defaultValue:0 error:a5]&& [(RMModelPayloadBase *)self loadBooleanFromDictionary:v8 usingKey:@"UseOneTimePassword" forKeyPath:@"payloadUseOneTimePassword" isRequired:0 defaultValue:MEMORY[0x277CBEC28] error:a5]&& [(RMModelPayloadBase *)self loadStringFromDictionary:v8 usingKey:@"UserPasswordAssetReference" forKeyPath:@"payloadUserPasswordAssetReference" isRequired:0 defaultValue:0 error:a5]&& (LOWORD(v16) = a4, [(RMModelPayloadBase *)self loadDictionaryFromDictionary:v8 usingKey:@"PrivateAccessToken" forKeyPath:@"payloadPrivateAccessToken" classType:objc_opt_class() isRequired:0 defaultValue:0 serializationType:v16 error:a5]) && (LOWORD(v17) = a4, [(RMModelPayloadBase *)self loadDictionaryFromDictionary:v8 usingKey:@"EAPFAST" forKeyPath:@"payloadEAPFAST" classType:objc_opt_class() isRequired:0 defaultValue:0 serializationType:v17 error:a5]) && (LOWORD(v18) = a4, [(RMModelPayloadBase *)self loadDictionaryFromDictionary:v8 usingKey:@"TLS" forKeyPath:@"payloadTLS" classType:objc_opt_class() isRequired:0 defaultValue:0 serializationType:v18 error:a5]) && [(RMModelPayloadBase *)self loadStringFromDictionary:v8 usingKey:@"OuterIdentity" forKeyPath:@"payloadOuterIdentity" isRequired:0 defaultValue:0 error:a5]&& [(RMModelPayloadBase *)self loadStringFromDictionary:v8 usingKey:@"TTLSInnerAuthentication" forKeyPath:@"payloadTTLSInnerAuthentication" isRequired:0 defaultValue:@"MSCHAPv2" error:a5]&& [(RMModelPayloadBase *)self loadStringFromDictionary:v8 usingKey:@"SystemModeCredentialsSource" forKeyPath:@"payloadSystemModeCredentialsSource" isRequired:0 defaultValue:0 error:a5]&& [(RMModelPayloadBase *)self loadStringFromDictionary:v8 usingKey:@"ExtensibleSSOProvider" forKeyPath:@"payloadExtensibleSSOProvider" isRequired:0 defaultValue:0 error:a5])
  {
    LOWORD(v19) = a4;
    v14 = [(RMModelPayloadBase *)self loadDictionaryFromDictionary:v8 usingKey:@"EAPSIMAKA" forKeyPath:@"payloadEAPSIMAKA" classType:objc_opt_class() isRequired:0 defaultValue:0 serializationType:v19 error:a5];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

uint64_t __82__RMModelNetworkEAPDeclaration_loadPayloadFromDictionary_serializationType_error___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (id)serializePayloadWithType:(signed __int16)a3
{
  v5 = objc_opt_new();
  v6 = [(RMModelNetworkEAPDeclaration *)self payloadEAPUUID];
  [(RMModelPayloadBase *)self serializeStringIntoDictionary:v5 usingKey:@"EAPUUID" value:v6 isRequired:1 defaultValue:0];

  v7 = [(RMModelNetworkEAPDeclaration *)self payloadAcceptEAPTypes];
  [(RMModelPayloadBase *)self serializeArrayIntoDictionary:v5 usingKey:@"AcceptEAPTypes" value:v7 itemSerializer:&__block_literal_global_213 isRequired:0 defaultValue:0];

  v8 = [(RMModelNetworkEAPDeclaration *)self payloadUseOneTimePassword];
  [(RMModelPayloadBase *)self serializeBooleanIntoDictionary:v5 usingKey:@"UseOneTimePassword" value:v8 isRequired:0 defaultValue:MEMORY[0x277CBEC28]];

  v9 = [(RMModelNetworkEAPDeclaration *)self payloadUserPasswordAssetReference];
  [(RMModelPayloadBase *)self serializeStringIntoDictionary:v5 usingKey:@"UserPasswordAssetReference" value:v9 isRequired:0 defaultValue:0];

  v10 = [(RMModelNetworkEAPDeclaration *)self payloadPrivateAccessToken];
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __57__RMModelNetworkEAPDeclaration_serializePayloadWithType___block_invoke_2;
  v26[3] = &__block_descriptor_34_e42___NSDictionary_16__0__RMModelPayloadBase_8l;
  v27 = a3;
  [(RMModelPayloadBase *)self serializeDictionaryIntoDictionary:v5 usingKey:@"PrivateAccessToken" value:v10 dictSerializer:v26 isRequired:0 defaultValue:0];

  v11 = [(RMModelNetworkEAPDeclaration *)self payloadEAPFAST];
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __57__RMModelNetworkEAPDeclaration_serializePayloadWithType___block_invoke_3;
  v24[3] = &__block_descriptor_34_e42___NSDictionary_16__0__RMModelPayloadBase_8l;
  v25 = a3;
  [(RMModelPayloadBase *)self serializeDictionaryIntoDictionary:v5 usingKey:@"EAPFAST" value:v11 dictSerializer:v24 isRequired:0 defaultValue:0];

  v12 = [(RMModelNetworkEAPDeclaration *)self payloadTLS];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __57__RMModelNetworkEAPDeclaration_serializePayloadWithType___block_invoke_4;
  v22[3] = &__block_descriptor_34_e42___NSDictionary_16__0__RMModelPayloadBase_8l;
  v23 = a3;
  [(RMModelPayloadBase *)self serializeDictionaryIntoDictionary:v5 usingKey:@"TLS" value:v12 dictSerializer:v22 isRequired:0 defaultValue:0];

  v13 = [(RMModelNetworkEAPDeclaration *)self payloadOuterIdentity];
  [(RMModelPayloadBase *)self serializeStringIntoDictionary:v5 usingKey:@"OuterIdentity" value:v13 isRequired:0 defaultValue:0];

  v14 = [(RMModelNetworkEAPDeclaration *)self payloadTTLSInnerAuthentication];
  [(RMModelPayloadBase *)self serializeStringIntoDictionary:v5 usingKey:@"TTLSInnerAuthentication" value:v14 isRequired:0 defaultValue:@"MSCHAPv2"];

  v15 = [(RMModelNetworkEAPDeclaration *)self payloadSystemModeCredentialsSource];
  [(RMModelPayloadBase *)self serializeStringIntoDictionary:v5 usingKey:@"SystemModeCredentialsSource" value:v15 isRequired:0 defaultValue:0];

  v16 = [(RMModelNetworkEAPDeclaration *)self payloadExtensibleSSOProvider];
  [(RMModelPayloadBase *)self serializeStringIntoDictionary:v5 usingKey:@"ExtensibleSSOProvider" value:v16 isRequired:0 defaultValue:0];

  v17 = [(RMModelNetworkEAPDeclaration *)self payloadEAPSIMAKA];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __57__RMModelNetworkEAPDeclaration_serializePayloadWithType___block_invoke_5;
  v20[3] = &__block_descriptor_34_e42___NSDictionary_16__0__RMModelPayloadBase_8l;
  v21 = a3;
  [(RMModelPayloadBase *)self serializeDictionaryIntoDictionary:v5 usingKey:@"EAPSIMAKA" value:v17 dictSerializer:v20 isRequired:0 defaultValue:0];

  v18 = [v5 copy];

  return v18;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v30.receiver = self;
  v30.super_class = RMModelNetworkEAPDeclaration;
  v4 = [(RMModelDeclarationBase *)&v30 copyWithZone:a3];
  v5 = [(NSString *)self->_payloadEAPUUID copy];
  v6 = v4[6];
  v4[6] = v5;

  v7 = [(NSArray *)self->_payloadAcceptEAPTypes copy];
  v8 = v4[7];
  v4[7] = v7;

  v9 = [(NSNumber *)self->_payloadUseOneTimePassword copy];
  v10 = v4[8];
  v4[8] = v9;

  v11 = [(NSString *)self->_payloadUserPasswordAssetReference copy];
  v12 = v4[9];
  v4[9] = v11;

  v13 = [(RMModelNetworkEAPDeclaration_PrivateAccessToken *)self->_payloadPrivateAccessToken copy];
  v14 = v4[10];
  v4[10] = v13;

  v15 = [(RMModelNetworkEAPDeclaration_EAPFAST *)self->_payloadEAPFAST copy];
  v16 = v4[11];
  v4[11] = v15;

  v17 = [(RMModelNetworkEAPDeclaration_TLS *)self->_payloadTLS copy];
  v18 = v4[12];
  v4[12] = v17;

  v19 = [(NSString *)self->_payloadOuterIdentity copy];
  v20 = v4[13];
  v4[13] = v19;

  v21 = [(NSString *)self->_payloadTTLSInnerAuthentication copy];
  v22 = v4[14];
  v4[14] = v21;

  v23 = [(NSString *)self->_payloadSystemModeCredentialsSource copy];
  v24 = v4[15];
  v4[15] = v23;

  v25 = [(NSString *)self->_payloadExtensibleSSOProvider copy];
  v26 = v4[16];
  v4[16] = v25;

  v27 = [(RMModelNetworkEAPDeclaration_EAPSIMAKA *)self->_payloadEAPSIMAKA copy];
  v28 = v4[17];
  v4[17] = v27;

  return v4;
}

uint64_t __79__RMModelNetworkEAPDeclaration_TLS_loadFromDictionary_serializationType_error___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

uint64_t __79__RMModelNetworkEAPDeclaration_TLS_loadFromDictionary_serializationType_error___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

@end