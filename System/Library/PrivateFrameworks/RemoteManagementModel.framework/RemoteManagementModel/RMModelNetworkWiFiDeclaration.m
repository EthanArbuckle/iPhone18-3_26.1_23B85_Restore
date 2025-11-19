@interface RMModelNetworkWiFiDeclaration
+ (NSSet)allowedPayloadKeys;
+ (id)buildRequiredOnlyWithIdentifier:(id)a3;
+ (id)buildWithIdentifier:(id)a3 autoJoin:(id)a4 SSID:(id)a5 isHiddenNetwork:(id)a6 encryptionType:(id)a7 passwordAssetReference:(id)a8 certificateIdentityAssetReference:(id)a9 hotSpot:(id)a10 captiveBypass:(id)a11 qoSMarkingPolicy:(id)a12 setupModes:(id)a13 tlsCertificateRequired:(id)a14 proxy:(id)a15 disableAssociationMACRandomization:(id)a16 eapClientConfigurationUUID:(id)a17;
+ (id)supportedOS;
- (BOOL)loadPayloadFromDictionary:(id)a3 serializationType:(signed __int16)a4 error:(id *)a5;
- (id)assetReferences;
- (id)copyWithZone:(_NSZone *)a3;
- (id)serializePayloadWithType:(signed __int16)a3;
@end

@implementation RMModelNetworkWiFiDeclaration

+ (NSSet)allowedPayloadKeys
{
  v7[14] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CBEB98];
  v7[0] = @"AutoJoin";
  v7[1] = @"SSID";
  v7[2] = @"IsHiddenNetwork";
  v7[3] = @"EncryptionType";
  v7[4] = @"PasswordAssetReference";
  v7[5] = @"CertificateIdentityAssetReference";
  v7[6] = @"HotSpot";
  v7[7] = @"CaptiveBypass";
  v7[8] = @"QoSMarkingPolicy";
  v7[9] = @"SetupModes";
  v7[10] = @"TLSCertificateRequired";
  v7[11] = @"Proxy";
  v7[12] = @"DisableAssociationMACRandomization";
  v7[13] = @"EAPClientConfigurationUUID";
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:14];
  v4 = [v2 setWithArray:v3];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

- (id)assetReferences
{
  if (assetReferences_onceToken_9 != -1)
  {
    [RMModelNetworkWiFiDeclaration assetReferences];
  }

  v3 = assetReferences_assetPaths_9;

  return [(RMModelConfigurationBase *)self assetReferencesFromKeyPaths:v3 payloadObject:self];
}

void __48__RMModelNetworkWiFiDeclaration_assetReferences__block_invoke()
{
  v6[3] = *MEMORY[0x277D85DE8];
  v0 = [[RMModelConfigurationSchemaAssetReference alloc] initWithAssetTypes:&unk_287467640 keyPath:@"$.payloadPasswordAssetReference"];
  v1 = [[RMModelConfigurationSchemaAssetReference alloc] initWithAssetTypes:&unk_287467658 keyPath:@"$.payloadCertificateIdentityAssetReference", v0];
  v6[1] = v1;
  v2 = [[RMModelConfigurationSchemaAssetReference alloc] initWithAssetTypes:&unk_287467670 keyPath:@"$.payloadProxy.payloadProxyAuthenticationCredentialsAssetReference"];
  v6[2] = v2;
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:3];
  v4 = assetReferences_assetPaths_9;
  assetReferences_assetPaths_9 = v3;

  v5 = *MEMORY[0x277D85DE8];
}

+ (id)buildWithIdentifier:(id)a3 autoJoin:(id)a4 SSID:(id)a5 isHiddenNetwork:(id)a6 encryptionType:(id)a7 passwordAssetReference:(id)a8 certificateIdentityAssetReference:(id)a9 hotSpot:(id)a10 captiveBypass:(id)a11 qoSMarkingPolicy:(id)a12 setupModes:(id)a13 tlsCertificateRequired:(id)a14 proxy:(id)a15 disableAssociationMACRandomization:(id)a16 eapClientConfigurationUUID:(id)a17
{
  v17 = a3;
  v47 = a17;
  v46 = a16;
  v45 = a15;
  v44 = a14;
  v43 = a13;
  v42 = a12;
  v18 = a11;
  v41 = a10;
  v19 = a9;
  v20 = a8;
  v21 = a7;
  v22 = a6;
  v23 = a5;
  v24 = a4;
  v25 = objc_opt_new();
  [v25 setDeclarationType:@"com.apple.configuration.network.wifi"];
  if (v17)
  {
    [v25 setDeclarationIdentifier:v17];
  }

  else
  {
    v26 = [MEMORY[0x277CCAD78] UUID];
    v27 = [v26 UUIDString];
    [v25 setDeclarationIdentifier:v27];

    v17 = 0;
  }

  if (v24)
  {
    v28 = v24;
  }

  else
  {
    v28 = MEMORY[0x277CBEC38];
  }

  [v25 setPayloadAutoJoin:{v28, a8}];

  [v25 setPayloadSSID:v23];
  v29 = MEMORY[0x277CBEC28];
  if (v22)
  {
    v30 = v22;
  }

  else
  {
    v30 = MEMORY[0x277CBEC28];
  }

  [v25 setPayloadIsHiddenNetwork:v30];

  if (v21)
  {
    v31 = v21;
  }

  else
  {
    v31 = @"Any";
  }

  [v25 setPayloadEncryptionType:v31];

  [v25 setPayloadPasswordAssetReference:v20];
  [v25 setPayloadCertificateIdentityAssetReference:v19];

  [v25 setPayloadHotSpot:v41];
  if (v18)
  {
    v32 = v18;
  }

  else
  {
    v32 = v29;
  }

  [v25 setPayloadCaptiveBypass:v32];

  [v25 setPayloadQoSMarkingPolicy:v42];
  [v25 setPayloadSetupModes:v43];

  if (v44)
  {
    v33 = v44;
  }

  else
  {
    v33 = v29;
  }

  [v25 setPayloadTLSCertificateRequired:v33];

  [v25 setPayloadProxy:v45];
  if (v46)
  {
    v34 = v46;
  }

  else
  {
    v34 = v29;
  }

  [v25 setPayloadDisableAssociationMACRandomization:v34];

  [v25 setPayloadEAPClientConfigurationUUID:v47];
  [v25 updateServerToken];

  return v25;
}

+ (id)buildRequiredOnlyWithIdentifier:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  [v4 setDeclarationType:@"com.apple.configuration.network.wifi"];
  if (v3)
  {
    [v4 setDeclarationIdentifier:v3];
  }

  else
  {
    v5 = [MEMORY[0x277CCAD78] UUID];
    v6 = [v5 UUIDString];
    [v4 setDeclarationIdentifier:v6];
  }

  [v4 updateServerToken];

  return v4;
}

+ (id)supportedOS
{
  v36[6] = *MEMORY[0x277D85DE8];
  v35[0] = &unk_28746B6C0;
  v28 = [MEMORY[0x277CBEB98] setWithArray:&unk_287467688];
  v34[0] = v28;
  v27 = [MEMORY[0x277CBEB98] setWithArray:&unk_2874676A0];
  v34[1] = v27;
  v26 = [MEMORY[0x277CBEB98] setWithArray:&unk_2874676B8];
  v34[2] = v26;
  v25 = [MEMORY[0x277CBEA60] arrayWithObjects:v34 count:3];
  v36[0] = v25;
  v35[1] = &unk_28746B6D8;
  v24 = [MEMORY[0x277CBEB98] setWithArray:&unk_2874676D0];
  v33[0] = v24;
  v23 = [MEMORY[0x277CBEB98] setWithArray:&unk_2874676E8];
  v33[1] = v23;
  v22 = [MEMORY[0x277CBEB98] setWithArray:&unk_287467700];
  v33[2] = v22;
  v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v33 count:3];
  v36[1] = v21;
  v35[2] = &unk_28746B6F0;
  v20 = [MEMORY[0x277CBEB98] setWithArray:&unk_287467718];
  v32[0] = v20;
  v19 = [MEMORY[0x277CBEB98] setWithArray:&unk_287467730];
  v32[1] = v19;
  v18 = [MEMORY[0x277CBEB98] setWithArray:&unk_287467748];
  v32[2] = v18;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v32 count:3];
  v36[2] = v17;
  v35[3] = &unk_28746B708;
  v16 = [MEMORY[0x277CBEB98] setWithArray:&unk_287467760];
  v31[0] = v16;
  v15 = [MEMORY[0x277CBEB98] setWithArray:&unk_287467778];
  v31[1] = v15;
  v2 = [MEMORY[0x277CBEB98] setWithArray:&unk_287467790];
  v31[2] = v2;
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v31 count:3];
  v36[3] = v3;
  v35[4] = &unk_28746B720;
  v4 = [MEMORY[0x277CBEB98] setWithArray:&unk_2874677A8];
  v30[0] = v4;
  v5 = [MEMORY[0x277CBEB98] setWithArray:&unk_2874677C0];
  v30[1] = v5;
  v6 = [MEMORY[0x277CBEB98] setWithArray:&unk_2874677D8];
  v30[2] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v30 count:3];
  v36[4] = v7;
  v35[5] = &unk_28746B738;
  v8 = [MEMORY[0x277CBEB98] setWithArray:&unk_2874677F0];
  v29[0] = v8;
  v9 = [MEMORY[0x277CBEB98] setWithArray:&unk_287467808];
  v29[1] = v9;
  v10 = [MEMORY[0x277CBEB98] setWithArray:&unk_287467820];
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

  v12 = +[RMModelNetworkWiFiDeclaration allowedPayloadKeys];
  [v11 minusSet:v12];

  v13 = [v11 copy];
  [(RMModelPayloadBase *)self setUnknownPayloadKeys:v13];

  v14 = [(RMModelPayloadBase *)self loadBooleanFromDictionary:v8 usingKey:@"AutoJoin" forKeyPath:@"payloadAutoJoin" isRequired:0 defaultValue:MEMORY[0x277CBEC38] error:a5]&& [(RMModelPayloadBase *)self loadStringFromDictionary:v8 usingKey:@"SSID" forKeyPath:@"payloadSSID" isRequired:0 defaultValue:0 error:a5]&& [(RMModelPayloadBase *)self loadBooleanFromDictionary:v8 usingKey:@"IsHiddenNetwork" forKeyPath:@"payloadIsHiddenNetwork" isRequired:0 defaultValue:MEMORY[0x277CBEC28] error:a5]&& [(RMModelPayloadBase *)self loadStringFromDictionary:v8 usingKey:@"EncryptionType" forKeyPath:@"payloadEncryptionType" isRequired:0 defaultValue:@"Any" error:a5]&& [(RMModelPayloadBase *)self loadStringFromDictionary:v8 usingKey:@"PasswordAssetReference" forKeyPath:@"payloadPasswordAssetReference" isRequired:0 defaultValue:0 error:a5]&& [(RMModelPayloadBase *)self loadStringFromDictionary:v8 usingKey:@"CertificateIdentityAssetReference" forKeyPath:@"payloadCertificateIdentityAssetReference" isRequired:0 defaultValue:0 error:a5]&& (LOWORD(v16) = a4, [(RMModelPayloadBase *)self loadDictionaryFromDictionary:v8 usingKey:@"HotSpot" forKeyPath:@"payloadHotSpot" classType:objc_opt_class() isRequired:0 defaultValue:0 serializationType:v16 error:a5]) && [(RMModelPayloadBase *)self loadBooleanFromDictionary:v8 usingKey:@"CaptiveBypass" forKeyPath:@"payloadCaptiveBypass" isRequired:0 defaultValue:MEMORY[0x277CBEC28] error:a5]&& (LOWORD(v17) = a4, [(RMModelPayloadBase *)self loadDictionaryFromDictionary:v8 usingKey:@"QoSMarkingPolicy" forKeyPath:@"payloadQoSMarkingPolicy" classType:objc_opt_class() isRequired:0 defaultValue:0 serializationType:v17 error:a5]) && [(RMModelPayloadBase *)self loadArrayFromDictionary:v8 usingKey:@"SetupModes" forKeyPath:@"payloadSetupModes" validator:&__block_literal_global_194 isRequired:0 defaultValue:0 error:a5]&& [(RMModelPayloadBase *)self loadBooleanFromDictionary:v8 usingKey:@"TLSCertificateRequired" forKeyPath:@"payloadTLSCertificateRequired" isRequired:0 defaultValue:MEMORY[0x277CBEC28] error:a5]&& (LOWORD(v18) = a4, [(RMModelPayloadBase *)self loadDictionaryFromDictionary:v8 usingKey:@"Proxy" forKeyPath:@"payloadProxy" classType:objc_opt_class() isRequired:0 defaultValue:0 serializationType:v18 error:a5]) && [(RMModelPayloadBase *)self loadBooleanFromDictionary:v8 usingKey:@"DisableAssociationMACRandomization" forKeyPath:@"payloadDisableAssociationMACRandomization" isRequired:0 defaultValue:MEMORY[0x277CBEC28] error:a5]&& [(RMModelPayloadBase *)self loadStringFromDictionary:v8 usingKey:@"EAPClientConfigurationUUID" forKeyPath:@"payloadEAPClientConfigurationUUID" isRequired:0 defaultValue:0 error:a5];
  return v14;
}

uint64_t __83__RMModelNetworkWiFiDeclaration_loadPayloadFromDictionary_serializationType_error___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (id)serializePayloadWithType:(signed __int16)a3
{
  v5 = objc_opt_new();
  v6 = [(RMModelNetworkWiFiDeclaration *)self payloadAutoJoin];
  [(RMModelPayloadBase *)self serializeBooleanIntoDictionary:v5 usingKey:@"AutoJoin" value:v6 isRequired:0 defaultValue:MEMORY[0x277CBEC38]];

  v7 = [(RMModelNetworkWiFiDeclaration *)self payloadSSID];
  [(RMModelPayloadBase *)self serializeStringIntoDictionary:v5 usingKey:@"SSID" value:v7 isRequired:0 defaultValue:0];

  v8 = [(RMModelNetworkWiFiDeclaration *)self payloadIsHiddenNetwork];
  v9 = MEMORY[0x277CBEC28];
  [(RMModelPayloadBase *)self serializeBooleanIntoDictionary:v5 usingKey:@"IsHiddenNetwork" value:v8 isRequired:0 defaultValue:MEMORY[0x277CBEC28]];

  v10 = [(RMModelNetworkWiFiDeclaration *)self payloadEncryptionType];
  [(RMModelPayloadBase *)self serializeStringIntoDictionary:v5 usingKey:@"EncryptionType" value:v10 isRequired:0 defaultValue:@"Any"];

  v11 = [(RMModelNetworkWiFiDeclaration *)self payloadPasswordAssetReference];
  [(RMModelPayloadBase *)self serializeStringIntoDictionary:v5 usingKey:@"PasswordAssetReference" value:v11 isRequired:0 defaultValue:0];

  v12 = [(RMModelNetworkWiFiDeclaration *)self payloadCertificateIdentityAssetReference];
  [(RMModelPayloadBase *)self serializeStringIntoDictionary:v5 usingKey:@"CertificateIdentityAssetReference" value:v12 isRequired:0 defaultValue:0];

  v13 = [(RMModelNetworkWiFiDeclaration *)self payloadHotSpot];
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __58__RMModelNetworkWiFiDeclaration_serializePayloadWithType___block_invoke;
  v27[3] = &__block_descriptor_34_e42___NSDictionary_16__0__RMModelPayloadBase_8l;
  v28 = a3;
  [(RMModelPayloadBase *)self serializeDictionaryIntoDictionary:v5 usingKey:@"HotSpot" value:v13 dictSerializer:v27 isRequired:0 defaultValue:0];

  v14 = [(RMModelNetworkWiFiDeclaration *)self payloadCaptiveBypass];
  [(RMModelPayloadBase *)self serializeBooleanIntoDictionary:v5 usingKey:@"CaptiveBypass" value:v14 isRequired:0 defaultValue:v9];

  v15 = [(RMModelNetworkWiFiDeclaration *)self payloadQoSMarkingPolicy];
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __58__RMModelNetworkWiFiDeclaration_serializePayloadWithType___block_invoke_2;
  v25[3] = &__block_descriptor_34_e42___NSDictionary_16__0__RMModelPayloadBase_8l;
  v26 = a3;
  [(RMModelPayloadBase *)self serializeDictionaryIntoDictionary:v5 usingKey:@"QoSMarkingPolicy" value:v15 dictSerializer:v25 isRequired:0 defaultValue:0];

  v16 = [(RMModelNetworkWiFiDeclaration *)self payloadSetupModes];
  [(RMModelPayloadBase *)self serializeArrayIntoDictionary:v5 usingKey:@"SetupModes" value:v16 itemSerializer:&__block_literal_global_213_0 isRequired:0 defaultValue:0];

  v17 = [(RMModelNetworkWiFiDeclaration *)self payloadTLSCertificateRequired];
  [(RMModelPayloadBase *)self serializeBooleanIntoDictionary:v5 usingKey:@"TLSCertificateRequired" value:v17 isRequired:0 defaultValue:v9];

  v18 = [(RMModelNetworkWiFiDeclaration *)self payloadProxy];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __58__RMModelNetworkWiFiDeclaration_serializePayloadWithType___block_invoke_4;
  v23[3] = &__block_descriptor_34_e42___NSDictionary_16__0__RMModelPayloadBase_8l;
  v24 = a3;
  [(RMModelPayloadBase *)self serializeDictionaryIntoDictionary:v5 usingKey:@"Proxy" value:v18 dictSerializer:v23 isRequired:0 defaultValue:0];

  v19 = [(RMModelNetworkWiFiDeclaration *)self payloadDisableAssociationMACRandomization];
  [(RMModelPayloadBase *)self serializeBooleanIntoDictionary:v5 usingKey:@"DisableAssociationMACRandomization" value:v19 isRequired:0 defaultValue:v9];

  v20 = [(RMModelNetworkWiFiDeclaration *)self payloadEAPClientConfigurationUUID];
  [(RMModelPayloadBase *)self serializeStringIntoDictionary:v5 usingKey:@"EAPClientConfigurationUUID" value:v20 isRequired:0 defaultValue:0];

  v21 = [v5 copy];

  return v21;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v34.receiver = self;
  v34.super_class = RMModelNetworkWiFiDeclaration;
  v4 = [(RMModelDeclarationBase *)&v34 copyWithZone:a3];
  v5 = [(NSNumber *)self->_payloadAutoJoin copy];
  v6 = v4[6];
  v4[6] = v5;

  v7 = [(NSString *)self->_payloadSSID copy];
  v8 = v4[7];
  v4[7] = v7;

  v9 = [(NSNumber *)self->_payloadIsHiddenNetwork copy];
  v10 = v4[8];
  v4[8] = v9;

  v11 = [(NSString *)self->_payloadEncryptionType copy];
  v12 = v4[9];
  v4[9] = v11;

  v13 = [(NSString *)self->_payloadPasswordAssetReference copy];
  v14 = v4[10];
  v4[10] = v13;

  v15 = [(NSString *)self->_payloadCertificateIdentityAssetReference copy];
  v16 = v4[11];
  v4[11] = v15;

  v17 = [(RMModelNetworkWiFiDeclaration_HotSpot *)self->_payloadHotSpot copy];
  v18 = v4[12];
  v4[12] = v17;

  v19 = [(NSNumber *)self->_payloadCaptiveBypass copy];
  v20 = v4[13];
  v4[13] = v19;

  v21 = [(RMModelNetworkWiFiDeclaration_QoSMarkingPolicy *)self->_payloadQoSMarkingPolicy copy];
  v22 = v4[14];
  v4[14] = v21;

  v23 = [(NSArray *)self->_payloadSetupModes copy];
  v24 = v4[15];
  v4[15] = v23;

  v25 = [(NSNumber *)self->_payloadTLSCertificateRequired copy];
  v26 = v4[16];
  v4[16] = v25;

  v27 = [(RMModelNetworkWiFiDeclaration_Proxy *)self->_payloadProxy copy];
  v28 = v4[17];
  v4[17] = v27;

  v29 = [(NSNumber *)self->_payloadDisableAssociationMACRandomization copy];
  v30 = v4[18];
  v4[18] = v29;

  v31 = [(NSString *)self->_payloadEAPClientConfigurationUUID copy];
  v32 = v4[19];
  v4[19] = v31;

  return v4;
}

uint64_t __84__RMModelNetworkWiFiDeclaration_HotSpot_loadFromDictionary_serializationType_error___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

uint64_t __84__RMModelNetworkWiFiDeclaration_HotSpot_loadFromDictionary_serializationType_error___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

uint64_t __84__RMModelNetworkWiFiDeclaration_HotSpot_loadFromDictionary_serializationType_error___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

uint64_t __93__RMModelNetworkWiFiDeclaration_QoSMarkingPolicy_loadFromDictionary_serializationType_error___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

@end