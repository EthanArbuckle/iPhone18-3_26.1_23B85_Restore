@interface RMModelNetworkEAPDeclaration
+ (NSSet)allowedPayloadKeys;
+ (id)buildRequiredOnlyWithIdentifier:(id)identifier EAPUUID:(id)d;
+ (id)buildWithIdentifier:(id)identifier EAPUUID:(id)d acceptEAPTypes:(id)types useOneTimePassword:(id)password userPasswordAssetReference:(id)reference privateAccessToken:(id)token EAPFAST:(id)t TLS:(id)self0 outerIdentity:(id)self1 ttlsInnerAuthentication:(id)self2 systemModeCredentialsSource:(id)self3 extensibleSSOProvider:(id)self4 EAPSIMAKA:(id)self5;
+ (id)supportedOS;
- (BOOL)loadPayloadFromDictionary:(id)dictionary serializationType:(signed __int16)type error:(id *)error;
- (id)assetReferences;
- (id)copyWithZone:(_NSZone *)zone;
- (id)serializePayloadWithType:(signed __int16)type;
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

+ (id)buildWithIdentifier:(id)identifier EAPUUID:(id)d acceptEAPTypes:(id)types useOneTimePassword:(id)password userPasswordAssetReference:(id)reference privateAccessToken:(id)token EAPFAST:(id)t TLS:(id)self0 outerIdentity:(id)self1 ttlsInnerAuthentication:(id)self2 systemModeCredentialsSource:(id)self3 extensibleSSOProvider:(id)self4 EAPSIMAKA:(id)self5
{
  identifierCopy = identifier;
  aCopy = a;
  providerCopy = provider;
  sourceCopy = source;
  authenticationCopy = authentication;
  identityCopy = identity;
  sCopy = s;
  tCopy = t;
  tokenCopy = token;
  referenceCopy = reference;
  passwordCopy = password;
  typesCopy = types;
  dCopy = d;
  v25 = identifierCopy;
  v26 = objc_opt_new();
  [v26 setDeclarationType:@"com.apple.configuration.network.eap"];
  if (identifierCopy)
  {
    [v26 setDeclarationIdentifier:identifierCopy];
  }

  else
  {
    uUID = [MEMORY[0x277CCAD78] UUID];
    [uUID UUIDString];
    v38 = tokenCopy;
    v28 = authenticationCopy;
    v29 = tCopy;
    v31 = v30 = sCopy;
    [v26 setDeclarationIdentifier:v31];

    sCopy = v30;
    tCopy = v29;
    authenticationCopy = v28;
    tokenCopy = v38;

    v25 = 0;
  }

  [v26 setPayloadEAPUUID:{dCopy, password}];

  [v26 setPayloadAcceptEAPTypes:typesCopy];
  if (passwordCopy)
  {
    v32 = passwordCopy;
  }

  else
  {
    v32 = MEMORY[0x277CBEC28];
  }

  [v26 setPayloadUseOneTimePassword:v32];

  [v26 setPayloadUserPasswordAssetReference:referenceCopy];
  [v26 setPayloadPrivateAccessToken:tokenCopy];

  [v26 setPayloadEAPFAST:tCopy];
  [v26 setPayloadTLS:sCopy];

  [v26 setPayloadOuterIdentity:identityCopy];
  if (authenticationCopy)
  {
    v33 = authenticationCopy;
  }

  else
  {
    v33 = @"MSCHAPv2";
  }

  [v26 setPayloadTTLSInnerAuthentication:v33];

  [v26 setPayloadSystemModeCredentialsSource:sourceCopy];
  [v26 setPayloadExtensibleSSOProvider:providerCopy];

  [v26 setPayloadEAPSIMAKA:aCopy];
  [v26 updateServerToken];

  return v26;
}

+ (id)buildRequiredOnlyWithIdentifier:(id)identifier EAPUUID:(id)d
{
  identifierCopy = identifier;
  dCopy = d;
  v7 = objc_opt_new();
  [v7 setDeclarationType:@"com.apple.configuration.network.eap"];
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

  [v7 setPayloadEAPUUID:dCopy];

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

- (BOOL)loadPayloadFromDictionary:(id)dictionary serializationType:(signed __int16)type error:(id *)error
{
  dictionaryCopy = dictionary;
  v9 = MEMORY[0x277CBEB58];
  allKeys = [dictionaryCopy allKeys];
  v11 = [v9 setWithArray:allKeys];

  v12 = +[RMModelNetworkEAPDeclaration allowedPayloadKeys];
  [v11 minusSet:v12];

  v13 = [v11 copy];
  [(RMModelPayloadBase *)self setUnknownPayloadKeys:v13];

  if ([(RMModelPayloadBase *)self loadStringFromDictionary:dictionaryCopy usingKey:@"EAPUUID" forKeyPath:@"payloadEAPUUID" isRequired:1 defaultValue:0 error:error]&& [(RMModelPayloadBase *)self loadArrayFromDictionary:dictionaryCopy usingKey:@"AcceptEAPTypes" forKeyPath:@"payloadAcceptEAPTypes" validator:&__block_literal_global_174 isRequired:0 defaultValue:0 error:error]&& [(RMModelPayloadBase *)self loadBooleanFromDictionary:dictionaryCopy usingKey:@"UseOneTimePassword" forKeyPath:@"payloadUseOneTimePassword" isRequired:0 defaultValue:MEMORY[0x277CBEC28] error:error]&& [(RMModelPayloadBase *)self loadStringFromDictionary:dictionaryCopy usingKey:@"UserPasswordAssetReference" forKeyPath:@"payloadUserPasswordAssetReference" isRequired:0 defaultValue:0 error:error]&& (LOWORD(v16) = type, [(RMModelPayloadBase *)self loadDictionaryFromDictionary:dictionaryCopy usingKey:@"PrivateAccessToken" forKeyPath:@"payloadPrivateAccessToken" classType:objc_opt_class() isRequired:0 defaultValue:0 serializationType:v16 error:error]) && (LOWORD(v17) = type, [(RMModelPayloadBase *)self loadDictionaryFromDictionary:dictionaryCopy usingKey:@"EAPFAST" forKeyPath:@"payloadEAPFAST" classType:objc_opt_class() isRequired:0 defaultValue:0 serializationType:v17 error:error]) && (LOWORD(v18) = type, [(RMModelPayloadBase *)self loadDictionaryFromDictionary:dictionaryCopy usingKey:@"TLS" forKeyPath:@"payloadTLS" classType:objc_opt_class() isRequired:0 defaultValue:0 serializationType:v18 error:error]) && [(RMModelPayloadBase *)self loadStringFromDictionary:dictionaryCopy usingKey:@"OuterIdentity" forKeyPath:@"payloadOuterIdentity" isRequired:0 defaultValue:0 error:error]&& [(RMModelPayloadBase *)self loadStringFromDictionary:dictionaryCopy usingKey:@"TTLSInnerAuthentication" forKeyPath:@"payloadTTLSInnerAuthentication" isRequired:0 defaultValue:@"MSCHAPv2" error:error]&& [(RMModelPayloadBase *)self loadStringFromDictionary:dictionaryCopy usingKey:@"SystemModeCredentialsSource" forKeyPath:@"payloadSystemModeCredentialsSource" isRequired:0 defaultValue:0 error:error]&& [(RMModelPayloadBase *)self loadStringFromDictionary:dictionaryCopy usingKey:@"ExtensibleSSOProvider" forKeyPath:@"payloadExtensibleSSOProvider" isRequired:0 defaultValue:0 error:error])
  {
    LOWORD(v19) = type;
    v14 = [(RMModelPayloadBase *)self loadDictionaryFromDictionary:dictionaryCopy usingKey:@"EAPSIMAKA" forKeyPath:@"payloadEAPSIMAKA" classType:objc_opt_class() isRequired:0 defaultValue:0 serializationType:v19 error:error];
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

- (id)serializePayloadWithType:(signed __int16)type
{
  v5 = objc_opt_new();
  payloadEAPUUID = [(RMModelNetworkEAPDeclaration *)self payloadEAPUUID];
  [(RMModelPayloadBase *)self serializeStringIntoDictionary:v5 usingKey:@"EAPUUID" value:payloadEAPUUID isRequired:1 defaultValue:0];

  payloadAcceptEAPTypes = [(RMModelNetworkEAPDeclaration *)self payloadAcceptEAPTypes];
  [(RMModelPayloadBase *)self serializeArrayIntoDictionary:v5 usingKey:@"AcceptEAPTypes" value:payloadAcceptEAPTypes itemSerializer:&__block_literal_global_213 isRequired:0 defaultValue:0];

  payloadUseOneTimePassword = [(RMModelNetworkEAPDeclaration *)self payloadUseOneTimePassword];
  [(RMModelPayloadBase *)self serializeBooleanIntoDictionary:v5 usingKey:@"UseOneTimePassword" value:payloadUseOneTimePassword isRequired:0 defaultValue:MEMORY[0x277CBEC28]];

  payloadUserPasswordAssetReference = [(RMModelNetworkEAPDeclaration *)self payloadUserPasswordAssetReference];
  [(RMModelPayloadBase *)self serializeStringIntoDictionary:v5 usingKey:@"UserPasswordAssetReference" value:payloadUserPasswordAssetReference isRequired:0 defaultValue:0];

  payloadPrivateAccessToken = [(RMModelNetworkEAPDeclaration *)self payloadPrivateAccessToken];
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __57__RMModelNetworkEAPDeclaration_serializePayloadWithType___block_invoke_2;
  v26[3] = &__block_descriptor_34_e42___NSDictionary_16__0__RMModelPayloadBase_8l;
  typeCopy = type;
  [(RMModelPayloadBase *)self serializeDictionaryIntoDictionary:v5 usingKey:@"PrivateAccessToken" value:payloadPrivateAccessToken dictSerializer:v26 isRequired:0 defaultValue:0];

  payloadEAPFAST = [(RMModelNetworkEAPDeclaration *)self payloadEAPFAST];
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __57__RMModelNetworkEAPDeclaration_serializePayloadWithType___block_invoke_3;
  v24[3] = &__block_descriptor_34_e42___NSDictionary_16__0__RMModelPayloadBase_8l;
  typeCopy2 = type;
  [(RMModelPayloadBase *)self serializeDictionaryIntoDictionary:v5 usingKey:@"EAPFAST" value:payloadEAPFAST dictSerializer:v24 isRequired:0 defaultValue:0];

  payloadTLS = [(RMModelNetworkEAPDeclaration *)self payloadTLS];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __57__RMModelNetworkEAPDeclaration_serializePayloadWithType___block_invoke_4;
  v22[3] = &__block_descriptor_34_e42___NSDictionary_16__0__RMModelPayloadBase_8l;
  typeCopy3 = type;
  [(RMModelPayloadBase *)self serializeDictionaryIntoDictionary:v5 usingKey:@"TLS" value:payloadTLS dictSerializer:v22 isRequired:0 defaultValue:0];

  payloadOuterIdentity = [(RMModelNetworkEAPDeclaration *)self payloadOuterIdentity];
  [(RMModelPayloadBase *)self serializeStringIntoDictionary:v5 usingKey:@"OuterIdentity" value:payloadOuterIdentity isRequired:0 defaultValue:0];

  payloadTTLSInnerAuthentication = [(RMModelNetworkEAPDeclaration *)self payloadTTLSInnerAuthentication];
  [(RMModelPayloadBase *)self serializeStringIntoDictionary:v5 usingKey:@"TTLSInnerAuthentication" value:payloadTTLSInnerAuthentication isRequired:0 defaultValue:@"MSCHAPv2"];

  payloadSystemModeCredentialsSource = [(RMModelNetworkEAPDeclaration *)self payloadSystemModeCredentialsSource];
  [(RMModelPayloadBase *)self serializeStringIntoDictionary:v5 usingKey:@"SystemModeCredentialsSource" value:payloadSystemModeCredentialsSource isRequired:0 defaultValue:0];

  payloadExtensibleSSOProvider = [(RMModelNetworkEAPDeclaration *)self payloadExtensibleSSOProvider];
  [(RMModelPayloadBase *)self serializeStringIntoDictionary:v5 usingKey:@"ExtensibleSSOProvider" value:payloadExtensibleSSOProvider isRequired:0 defaultValue:0];

  payloadEAPSIMAKA = [(RMModelNetworkEAPDeclaration *)self payloadEAPSIMAKA];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __57__RMModelNetworkEAPDeclaration_serializePayloadWithType___block_invoke_5;
  v20[3] = &__block_descriptor_34_e42___NSDictionary_16__0__RMModelPayloadBase_8l;
  typeCopy4 = type;
  [(RMModelPayloadBase *)self serializeDictionaryIntoDictionary:v5 usingKey:@"EAPSIMAKA" value:payloadEAPSIMAKA dictSerializer:v20 isRequired:0 defaultValue:0];

  v18 = [v5 copy];

  return v18;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v30.receiver = self;
  v30.super_class = RMModelNetworkEAPDeclaration;
  v4 = [(RMModelDeclarationBase *)&v30 copyWithZone:zone];
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