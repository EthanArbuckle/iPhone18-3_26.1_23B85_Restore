@interface RMModelAppManagedDeclaration
+ (NSSet)allowedPayloadKeys;
+ (id)buildRequiredOnlyWithIdentifier:(id)a3;
+ (id)buildWithIdentifier:(id)a3 appStoreID:(id)a4 bundleID:(id)a5 manifestURL:(id)a6 appComposedIdentifier:(id)a7 iosApp:(id)a8 installBehavior:(id)a9 updateBehavior:(id)a10 includeInBackup:(id)a11 attributes:(id)a12 appConfig:(id)a13 extensionConfigs:(id)a14 legacyAppConfigAssetReference:(id)a15;
+ (id)supportedOS;
- (BOOL)loadPayloadFromDictionary:(id)a3 serializationType:(signed __int16)a4 error:(id *)a5;
- (id)assetReferences;
- (id)copyWithZone:(_NSZone *)a3;
- (id)serializePayloadWithType:(signed __int16)a3;
@end

@implementation RMModelAppManagedDeclaration

+ (NSSet)allowedPayloadKeys
{
  v7[12] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CBEB98];
  v7[0] = @"AppStoreID";
  v7[1] = @"BundleID";
  v7[2] = @"ManifestURL";
  v7[3] = @"AppComposedIdentifier";
  v7[4] = @"iOSApp";
  v7[5] = @"InstallBehavior";
  v7[6] = @"UpdateBehavior";
  v7[7] = @"IncludeInBackup";
  v7[8] = @"Attributes";
  v7[9] = @"AppConfig";
  v7[10] = @"ExtensionConfigs";
  v7[11] = @"LegacyAppConfigAssetReference";
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:12];
  v4 = [v2 setWithArray:v3];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

- (id)assetReferences
{
  if (assetReferences_onceToken_6 != -1)
  {
    [RMModelAppManagedDeclaration assetReferences];
  }

  v3 = assetReferences_assetPaths_6;

  return [(RMModelConfigurationBase *)self assetReferencesFromKeyPaths:v3 payloadObject:self];
}

void __47__RMModelAppManagedDeclaration_assetReferences__block_invoke()
{
  v12[9] = *MEMORY[0x277D85DE8];
  v0 = [[RMModelConfigurationSchemaAssetReference alloc] initWithAssetTypes:&unk_287466188 keyPath:@"$.payloadAppConfig.payloadDataAssetReference"];
  v1 = [[RMModelConfigurationSchemaAssetReference alloc] initWithAssetTypes:&unk_2874661A0 keyPath:@"$.payloadAppConfig.payloadPasswords.*.payloadAssetReference", v0];
  v12[1] = v1;
  v2 = [[RMModelConfigurationSchemaAssetReference alloc] initWithAssetTypes:&unk_2874661B8 keyPath:@"$.payloadAppConfig.payloadIdentities.*.payloadAssetReference"];
  v12[2] = v2;
  v3 = [[RMModelConfigurationSchemaAssetReference alloc] initWithAssetTypes:&unk_2874661D0 keyPath:@"$.payloadAppConfig.payloadCertificates.*.payloadAssetReference"];
  v12[3] = v3;
  v4 = [[RMModelConfigurationSchemaAssetReference alloc] initWithAssetTypes:&unk_2874661E8 keyPath:@"$.payloadExtensionConfigs.payloadDictionary.*.payloadDataAssetReference"];
  v12[4] = v4;
  v5 = [[RMModelConfigurationSchemaAssetReference alloc] initWithAssetTypes:&unk_287466200 keyPath:@"$.payloadExtensionConfigs.payloadDictionary.*.payloadPasswords.*.payloadAssetReference"];
  v12[5] = v5;
  v6 = [[RMModelConfigurationSchemaAssetReference alloc] initWithAssetTypes:&unk_287466218 keyPath:@"$.payloadExtensionConfigs.payloadDictionary.*.payloadIdentities.*.payloadAssetReference"];
  v12[6] = v6;
  v7 = [[RMModelConfigurationSchemaAssetReference alloc] initWithAssetTypes:&unk_287466230 keyPath:@"$.payloadExtensionConfigs.payloadDictionary.*.payloadCertificates.*.payloadAssetReference"];
  v12[7] = v7;
  v8 = [[RMModelConfigurationSchemaAssetReference alloc] initWithAssetTypes:&unk_287466248 keyPath:@"$.payloadLegacyAppConfigAssetReference"];
  v12[8] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:9];
  v10 = assetReferences_assetPaths_6;
  assetReferences_assetPaths_6 = v9;

  v11 = *MEMORY[0x277D85DE8];
}

+ (id)buildWithIdentifier:(id)a3 appStoreID:(id)a4 bundleID:(id)a5 manifestURL:(id)a6 appComposedIdentifier:(id)a7 iosApp:(id)a8 installBehavior:(id)a9 updateBehavior:(id)a10 includeInBackup:(id)a11 attributes:(id)a12 appConfig:(id)a13 extensionConfigs:(id)a14 legacyAppConfigAssetReference:(id)a15
{
  v42 = a3;
  v41 = a15;
  v40 = a14;
  v39 = a13;
  v38 = a12;
  v17 = a11;
  v18 = a10;
  v19 = a9;
  v20 = a8;
  v21 = a7;
  v22 = a6;
  v23 = a5;
  v24 = a4;
  v25 = v42;
  v26 = objc_opt_new();
  [v26 setDeclarationType:@"com.apple.configuration.app.managed"];
  if (v42)
  {
    [v26 setDeclarationIdentifier:v42];
  }

  else
  {
    v27 = [MEMORY[0x277CCAD78] UUID];
    [v27 UUIDString];
    v37 = v17;
    v28 = v19;
    v30 = v29 = v18;
    [v26 setDeclarationIdentifier:v30];

    v18 = v29;
    v19 = v28;
    v17 = v37;

    v25 = 0;
  }

  [v26 setPayloadAppStoreID:{v24, a6}];

  [v26 setPayloadBundleID:v23];
  [v26 setPayloadManifestURL:v22];

  [v26 setPayloadAppComposedIdentifier:v21];
  if (v20)
  {
    v31 = v20;
  }

  else
  {
    v31 = MEMORY[0x277CBEC28];
  }

  [v26 setPayloadIOSApp:v31];

  [v26 setPayloadInstallBehavior:v19];
  [v26 setPayloadUpdateBehavior:v18];

  if (v17)
  {
    v32 = v17;
  }

  else
  {
    v32 = MEMORY[0x277CBEC38];
  }

  [v26 setPayloadIncludeInBackup:v32];

  [v26 setPayloadAttributes:v38];
  [v26 setPayloadAppConfig:v39];

  [v26 setPayloadExtensionConfigs:v40];
  [v26 setPayloadLegacyAppConfigAssetReference:v41];

  [v26 updateServerToken];

  return v26;
}

+ (id)buildRequiredOnlyWithIdentifier:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  [v4 setDeclarationType:@"com.apple.configuration.app.managed"];
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
  v22[4] = *MEMORY[0x277D85DE8];
  v21[0] = &unk_28746ACB8;
  v16 = [MEMORY[0x277CBEB98] setWithArray:&unk_287466260];
  v20[0] = v16;
  v15 = [MEMORY[0x277CBEB98] setWithArray:&unk_287466278];
  v20[1] = v15;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:2];
  v22[0] = v14;
  v21[1] = &unk_28746ACD0;
  v2 = [MEMORY[0x277CBEB98] setWithArray:&unk_287466290];
  v19[0] = v2;
  v3 = [MEMORY[0x277CBEB98] setWithArray:&unk_2874662A8];
  v19[1] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:2];
  v22[1] = v4;
  v21[2] = &unk_28746AD00;
  v5 = [MEMORY[0x277CBEB98] setWithArray:&unk_2874662C0];
  v18[0] = v5;
  v6 = [MEMORY[0x277CBEB98] setWithArray:&unk_2874662D8];
  v18[1] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:2];
  v22[2] = v7;
  v21[3] = &unk_28746AD18;
  v8 = [MEMORY[0x277CBEB98] setWithArray:&unk_2874662F0];
  v17[0] = v8;
  v9 = [MEMORY[0x277CBEB98] setWithArray:&unk_287466308];
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

  v12 = +[RMModelAppManagedDeclaration allowedPayloadKeys];
  [v11 minusSet:v12];

  v13 = [v11 copy];
  [(RMModelPayloadBase *)self setUnknownPayloadKeys:v13];

  v14 = [(RMModelPayloadBase *)self loadStringFromDictionary:v8 usingKey:@"AppStoreID" forKeyPath:@"payloadAppStoreID" isRequired:0 defaultValue:0 error:a5]&& [(RMModelPayloadBase *)self loadStringFromDictionary:v8 usingKey:@"BundleID" forKeyPath:@"payloadBundleID" isRequired:0 defaultValue:0 error:a5]&& [(RMModelPayloadBase *)self loadStringFromDictionary:v8 usingKey:@"ManifestURL" forKeyPath:@"payloadManifestURL" isRequired:0 defaultValue:0 error:a5]&& [(RMModelPayloadBase *)self loadStringFromDictionary:v8 usingKey:@"AppComposedIdentifier" forKeyPath:@"payloadAppComposedIdentifier" isRequired:0 defaultValue:0 error:a5]&& [(RMModelPayloadBase *)self loadBooleanFromDictionary:v8 usingKey:@"iOSApp" forKeyPath:@"payloadIOSApp" isRequired:0 defaultValue:MEMORY[0x277CBEC28] error:a5]&& (LOWORD(v16) = a4, [(RMModelPayloadBase *)self loadDictionaryFromDictionary:v8 usingKey:@"InstallBehavior" forKeyPath:@"payloadInstallBehavior" classType:objc_opt_class() isRequired:0 defaultValue:0 serializationType:v16 error:a5]) && (LOWORD(v17) = a4, [(RMModelPayloadBase *)self loadDictionaryFromDictionary:v8 usingKey:@"UpdateBehavior" forKeyPath:@"payloadUpdateBehavior" classType:objc_opt_class() isRequired:0 defaultValue:0 serializationType:v17 error:a5]) && [(RMModelPayloadBase *)self loadBooleanFromDictionary:v8 usingKey:@"IncludeInBackup" forKeyPath:@"payloadIncludeInBackup" isRequired:0 defaultValue:MEMORY[0x277CBEC38] error:a5]&& (LOWORD(v18) = a4, [(RMModelPayloadBase *)self loadDictionaryFromDictionary:v8 usingKey:@"Attributes" forKeyPath:@"payloadAttributes" classType:objc_opt_class() isRequired:0 defaultValue:0 serializationType:v18 error:a5]) && (LOWORD(v19) = a4, [(RMModelPayloadBase *)self loadDictionaryFromDictionary:v8 usingKey:@"AppConfig" forKeyPath:@"payloadAppConfig" classType:objc_opt_class() isRequired:0 defaultValue:0 serializationType:v19 error:a5]) && (LOWORD(v20) = a4, [(RMModelPayloadBase *)self loadDictionaryFromDictionary:v8 usingKey:@"ExtensionConfigs" forKeyPath:@"payloadExtensionConfigs" classType:objc_opt_class() isRequired:0 defaultValue:0 serializationType:v20 error:a5]) && [(RMModelPayloadBase *)self loadStringFromDictionary:v8 usingKey:@"LegacyAppConfigAssetReference" forKeyPath:@"payloadLegacyAppConfigAssetReference" isRequired:0 defaultValue:0 error:a5];
  return v14;
}

- (id)serializePayloadWithType:(signed __int16)a3
{
  v5 = objc_opt_new();
  v6 = [(RMModelAppManagedDeclaration *)self payloadAppStoreID];
  [(RMModelPayloadBase *)self serializeStringIntoDictionary:v5 usingKey:@"AppStoreID" value:v6 isRequired:0 defaultValue:0];

  v7 = [(RMModelAppManagedDeclaration *)self payloadBundleID];
  [(RMModelPayloadBase *)self serializeStringIntoDictionary:v5 usingKey:@"BundleID" value:v7 isRequired:0 defaultValue:0];

  v8 = [(RMModelAppManagedDeclaration *)self payloadManifestURL];
  [(RMModelPayloadBase *)self serializeStringIntoDictionary:v5 usingKey:@"ManifestURL" value:v8 isRequired:0 defaultValue:0];

  v9 = [(RMModelAppManagedDeclaration *)self payloadAppComposedIdentifier];
  [(RMModelPayloadBase *)self serializeStringIntoDictionary:v5 usingKey:@"AppComposedIdentifier" value:v9 isRequired:0 defaultValue:0];

  v10 = [(RMModelAppManagedDeclaration *)self payloadIOSApp];
  [(RMModelPayloadBase *)self serializeBooleanIntoDictionary:v5 usingKey:@"iOSApp" value:v10 isRequired:0 defaultValue:MEMORY[0x277CBEC28]];

  v11 = [(RMModelAppManagedDeclaration *)self payloadInstallBehavior];
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __57__RMModelAppManagedDeclaration_serializePayloadWithType___block_invoke;
  v28[3] = &__block_descriptor_34_e42___NSDictionary_16__0__RMModelPayloadBase_8l;
  v29 = a3;
  [(RMModelPayloadBase *)self serializeDictionaryIntoDictionary:v5 usingKey:@"InstallBehavior" value:v11 dictSerializer:v28 isRequired:0 defaultValue:0];

  v12 = [(RMModelAppManagedDeclaration *)self payloadUpdateBehavior];
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __57__RMModelAppManagedDeclaration_serializePayloadWithType___block_invoke_2;
  v26[3] = &__block_descriptor_34_e42___NSDictionary_16__0__RMModelPayloadBase_8l;
  v27 = a3;
  [(RMModelPayloadBase *)self serializeDictionaryIntoDictionary:v5 usingKey:@"UpdateBehavior" value:v12 dictSerializer:v26 isRequired:0 defaultValue:0];

  v13 = [(RMModelAppManagedDeclaration *)self payloadIncludeInBackup];
  [(RMModelPayloadBase *)self serializeBooleanIntoDictionary:v5 usingKey:@"IncludeInBackup" value:v13 isRequired:0 defaultValue:MEMORY[0x277CBEC38]];

  v14 = [(RMModelAppManagedDeclaration *)self payloadAttributes];
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __57__RMModelAppManagedDeclaration_serializePayloadWithType___block_invoke_3;
  v24[3] = &__block_descriptor_34_e42___NSDictionary_16__0__RMModelPayloadBase_8l;
  v25 = a3;
  [(RMModelPayloadBase *)self serializeDictionaryIntoDictionary:v5 usingKey:@"Attributes" value:v14 dictSerializer:v24 isRequired:0 defaultValue:0];

  v15 = [(RMModelAppManagedDeclaration *)self payloadAppConfig];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __57__RMModelAppManagedDeclaration_serializePayloadWithType___block_invoke_4;
  v22[3] = &__block_descriptor_34_e42___NSDictionary_16__0__RMModelPayloadBase_8l;
  v23 = a3;
  [(RMModelPayloadBase *)self serializeDictionaryIntoDictionary:v5 usingKey:@"AppConfig" value:v15 dictSerializer:v22 isRequired:0 defaultValue:0];

  v16 = [(RMModelAppManagedDeclaration *)self payloadExtensionConfigs];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __57__RMModelAppManagedDeclaration_serializePayloadWithType___block_invoke_5;
  v20[3] = &__block_descriptor_34_e42___NSDictionary_16__0__RMModelPayloadBase_8l;
  v21 = a3;
  [(RMModelPayloadBase *)self serializeDictionaryIntoDictionary:v5 usingKey:@"ExtensionConfigs" value:v16 dictSerializer:v20 isRequired:0 defaultValue:0];

  v17 = [(RMModelAppManagedDeclaration *)self payloadLegacyAppConfigAssetReference];
  [(RMModelPayloadBase *)self serializeStringIntoDictionary:v5 usingKey:@"LegacyAppConfigAssetReference" value:v17 isRequired:0 defaultValue:0];

  v18 = [v5 copy];

  return v18;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v30.receiver = self;
  v30.super_class = RMModelAppManagedDeclaration;
  v4 = [(RMModelDeclarationBase *)&v30 copyWithZone:a3];
  v5 = [(NSString *)self->_payloadAppStoreID copy];
  v6 = v4[6];
  v4[6] = v5;

  v7 = [(NSString *)self->_payloadBundleID copy];
  v8 = v4[7];
  v4[7] = v7;

  v9 = [(NSString *)self->_payloadManifestURL copy];
  v10 = v4[8];
  v4[8] = v9;

  v11 = [(NSString *)self->_payloadAppComposedIdentifier copy];
  v12 = v4[9];
  v4[9] = v11;

  v13 = [(NSNumber *)self->_payloadIOSApp copy];
  v14 = v4[10];
  v4[10] = v13;

  v15 = [(RMModelAppManagedDeclaration_InstallBehavior *)self->_payloadInstallBehavior copy];
  v16 = v4[11];
  v4[11] = v15;

  v17 = [(RMModelAppManagedDeclaration_UpdateBehavior *)self->_payloadUpdateBehavior copy];
  v18 = v4[12];
  v4[12] = v17;

  v19 = [(NSNumber *)self->_payloadIncludeInBackup copy];
  v20 = v4[13];
  v4[13] = v19;

  v21 = [(RMModelAppManagedDeclaration_Attributes *)self->_payloadAttributes copy];
  v22 = v4[14];
  v4[14] = v21;

  v23 = [(RMModelAppManagedDeclaration_AppConfigDictionary *)self->_payloadAppConfig copy];
  v24 = v4[15];
  v4[15] = v23;

  v25 = [(RMModelAppManagedDeclaration_ExtensionConfigs *)self->_payloadExtensionConfigs copy];
  v26 = v4[16];
  v4[16] = v25;

  v27 = [(NSString *)self->_payloadLegacyAppConfigAssetReference copy];
  v28 = v4[17];
  v4[17] = v27;

  return v4;
}

uint64_t __86__RMModelAppManagedDeclaration_Attributes_loadFromDictionary_serializationType_error___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

@end