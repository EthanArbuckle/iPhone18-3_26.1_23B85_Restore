@interface RMModelAppManagedDeclaration
+ (NSSet)allowedPayloadKeys;
+ (id)buildRequiredOnlyWithIdentifier:(id)identifier;
+ (id)buildWithIdentifier:(id)identifier appStoreID:(id)d bundleID:(id)iD manifestURL:(id)l appComposedIdentifier:(id)composedIdentifier iosApp:(id)app installBehavior:(id)behavior updateBehavior:(id)self0 includeInBackup:(id)self1 attributes:(id)self2 appConfig:(id)self3 extensionConfigs:(id)self4 legacyAppConfigAssetReference:(id)self5;
+ (id)supportedOS;
- (BOOL)loadPayloadFromDictionary:(id)dictionary serializationType:(signed __int16)type error:(id *)error;
- (id)assetReferences;
- (id)copyWithZone:(_NSZone *)zone;
- (id)serializePayloadWithType:(signed __int16)type;
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

+ (id)buildWithIdentifier:(id)identifier appStoreID:(id)d bundleID:(id)iD manifestURL:(id)l appComposedIdentifier:(id)composedIdentifier iosApp:(id)app installBehavior:(id)behavior updateBehavior:(id)self0 includeInBackup:(id)self1 attributes:(id)self2 appConfig:(id)self3 extensionConfigs:(id)self4 legacyAppConfigAssetReference:(id)self5
{
  identifierCopy = identifier;
  referenceCopy = reference;
  configsCopy = configs;
  configCopy = config;
  attributesCopy = attributes;
  backupCopy = backup;
  updateBehaviorCopy = updateBehavior;
  behaviorCopy = behavior;
  appCopy = app;
  composedIdentifierCopy = composedIdentifier;
  lCopy = l;
  iDCopy = iD;
  dCopy = d;
  v25 = identifierCopy;
  v26 = objc_opt_new();
  [v26 setDeclarationType:@"com.apple.configuration.app.managed"];
  if (identifierCopy)
  {
    [v26 setDeclarationIdentifier:identifierCopy];
  }

  else
  {
    uUID = [MEMORY[0x277CCAD78] UUID];
    [uUID UUIDString];
    v37 = backupCopy;
    v28 = behaviorCopy;
    v30 = v29 = updateBehaviorCopy;
    [v26 setDeclarationIdentifier:v30];

    updateBehaviorCopy = v29;
    behaviorCopy = v28;
    backupCopy = v37;

    v25 = 0;
  }

  [v26 setPayloadAppStoreID:{dCopy, l}];

  [v26 setPayloadBundleID:iDCopy];
  [v26 setPayloadManifestURL:lCopy];

  [v26 setPayloadAppComposedIdentifier:composedIdentifierCopy];
  if (appCopy)
  {
    v31 = appCopy;
  }

  else
  {
    v31 = MEMORY[0x277CBEC28];
  }

  [v26 setPayloadIOSApp:v31];

  [v26 setPayloadInstallBehavior:behaviorCopy];
  [v26 setPayloadUpdateBehavior:updateBehaviorCopy];

  if (backupCopy)
  {
    v32 = backupCopy;
  }

  else
  {
    v32 = MEMORY[0x277CBEC38];
  }

  [v26 setPayloadIncludeInBackup:v32];

  [v26 setPayloadAttributes:attributesCopy];
  [v26 setPayloadAppConfig:configCopy];

  [v26 setPayloadExtensionConfigs:configsCopy];
  [v26 setPayloadLegacyAppConfigAssetReference:referenceCopy];

  [v26 updateServerToken];

  return v26;
}

+ (id)buildRequiredOnlyWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = objc_opt_new();
  [v4 setDeclarationType:@"com.apple.configuration.app.managed"];
  if (identifierCopy)
  {
    [v4 setDeclarationIdentifier:identifierCopy];
  }

  else
  {
    uUID = [MEMORY[0x277CCAD78] UUID];
    uUIDString = [uUID UUIDString];
    [v4 setDeclarationIdentifier:uUIDString];
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

- (BOOL)loadPayloadFromDictionary:(id)dictionary serializationType:(signed __int16)type error:(id *)error
{
  dictionaryCopy = dictionary;
  v9 = MEMORY[0x277CBEB58];
  allKeys = [dictionaryCopy allKeys];
  v11 = [v9 setWithArray:allKeys];

  v12 = +[RMModelAppManagedDeclaration allowedPayloadKeys];
  [v11 minusSet:v12];

  v13 = [v11 copy];
  [(RMModelPayloadBase *)self setUnknownPayloadKeys:v13];

  v14 = [(RMModelPayloadBase *)self loadStringFromDictionary:dictionaryCopy usingKey:@"AppStoreID" forKeyPath:@"payloadAppStoreID" isRequired:0 defaultValue:0 error:error]&& [(RMModelPayloadBase *)self loadStringFromDictionary:dictionaryCopy usingKey:@"BundleID" forKeyPath:@"payloadBundleID" isRequired:0 defaultValue:0 error:error]&& [(RMModelPayloadBase *)self loadStringFromDictionary:dictionaryCopy usingKey:@"ManifestURL" forKeyPath:@"payloadManifestURL" isRequired:0 defaultValue:0 error:error]&& [(RMModelPayloadBase *)self loadStringFromDictionary:dictionaryCopy usingKey:@"AppComposedIdentifier" forKeyPath:@"payloadAppComposedIdentifier" isRequired:0 defaultValue:0 error:error]&& [(RMModelPayloadBase *)self loadBooleanFromDictionary:dictionaryCopy usingKey:@"iOSApp" forKeyPath:@"payloadIOSApp" isRequired:0 defaultValue:MEMORY[0x277CBEC28] error:error]&& (LOWORD(v16) = type, [(RMModelPayloadBase *)self loadDictionaryFromDictionary:dictionaryCopy usingKey:@"InstallBehavior" forKeyPath:@"payloadInstallBehavior" classType:objc_opt_class() isRequired:0 defaultValue:0 serializationType:v16 error:error]) && (LOWORD(v17) = type, [(RMModelPayloadBase *)self loadDictionaryFromDictionary:dictionaryCopy usingKey:@"UpdateBehavior" forKeyPath:@"payloadUpdateBehavior" classType:objc_opt_class() isRequired:0 defaultValue:0 serializationType:v17 error:error]) && [(RMModelPayloadBase *)self loadBooleanFromDictionary:dictionaryCopy usingKey:@"IncludeInBackup" forKeyPath:@"payloadIncludeInBackup" isRequired:0 defaultValue:MEMORY[0x277CBEC38] error:error]&& (LOWORD(v18) = type, [(RMModelPayloadBase *)self loadDictionaryFromDictionary:dictionaryCopy usingKey:@"Attributes" forKeyPath:@"payloadAttributes" classType:objc_opt_class() isRequired:0 defaultValue:0 serializationType:v18 error:error]) && (LOWORD(v19) = type, [(RMModelPayloadBase *)self loadDictionaryFromDictionary:dictionaryCopy usingKey:@"AppConfig" forKeyPath:@"payloadAppConfig" classType:objc_opt_class() isRequired:0 defaultValue:0 serializationType:v19 error:error]) && (LOWORD(v20) = type, [(RMModelPayloadBase *)self loadDictionaryFromDictionary:dictionaryCopy usingKey:@"ExtensionConfigs" forKeyPath:@"payloadExtensionConfigs" classType:objc_opt_class() isRequired:0 defaultValue:0 serializationType:v20 error:error]) && [(RMModelPayloadBase *)self loadStringFromDictionary:dictionaryCopy usingKey:@"LegacyAppConfigAssetReference" forKeyPath:@"payloadLegacyAppConfigAssetReference" isRequired:0 defaultValue:0 error:error];
  return v14;
}

- (id)serializePayloadWithType:(signed __int16)type
{
  v5 = objc_opt_new();
  payloadAppStoreID = [(RMModelAppManagedDeclaration *)self payloadAppStoreID];
  [(RMModelPayloadBase *)self serializeStringIntoDictionary:v5 usingKey:@"AppStoreID" value:payloadAppStoreID isRequired:0 defaultValue:0];

  payloadBundleID = [(RMModelAppManagedDeclaration *)self payloadBundleID];
  [(RMModelPayloadBase *)self serializeStringIntoDictionary:v5 usingKey:@"BundleID" value:payloadBundleID isRequired:0 defaultValue:0];

  payloadManifestURL = [(RMModelAppManagedDeclaration *)self payloadManifestURL];
  [(RMModelPayloadBase *)self serializeStringIntoDictionary:v5 usingKey:@"ManifestURL" value:payloadManifestURL isRequired:0 defaultValue:0];

  payloadAppComposedIdentifier = [(RMModelAppManagedDeclaration *)self payloadAppComposedIdentifier];
  [(RMModelPayloadBase *)self serializeStringIntoDictionary:v5 usingKey:@"AppComposedIdentifier" value:payloadAppComposedIdentifier isRequired:0 defaultValue:0];

  payloadIOSApp = [(RMModelAppManagedDeclaration *)self payloadIOSApp];
  [(RMModelPayloadBase *)self serializeBooleanIntoDictionary:v5 usingKey:@"iOSApp" value:payloadIOSApp isRequired:0 defaultValue:MEMORY[0x277CBEC28]];

  payloadInstallBehavior = [(RMModelAppManagedDeclaration *)self payloadInstallBehavior];
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __57__RMModelAppManagedDeclaration_serializePayloadWithType___block_invoke;
  v28[3] = &__block_descriptor_34_e42___NSDictionary_16__0__RMModelPayloadBase_8l;
  typeCopy = type;
  [(RMModelPayloadBase *)self serializeDictionaryIntoDictionary:v5 usingKey:@"InstallBehavior" value:payloadInstallBehavior dictSerializer:v28 isRequired:0 defaultValue:0];

  payloadUpdateBehavior = [(RMModelAppManagedDeclaration *)self payloadUpdateBehavior];
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __57__RMModelAppManagedDeclaration_serializePayloadWithType___block_invoke_2;
  v26[3] = &__block_descriptor_34_e42___NSDictionary_16__0__RMModelPayloadBase_8l;
  typeCopy2 = type;
  [(RMModelPayloadBase *)self serializeDictionaryIntoDictionary:v5 usingKey:@"UpdateBehavior" value:payloadUpdateBehavior dictSerializer:v26 isRequired:0 defaultValue:0];

  payloadIncludeInBackup = [(RMModelAppManagedDeclaration *)self payloadIncludeInBackup];
  [(RMModelPayloadBase *)self serializeBooleanIntoDictionary:v5 usingKey:@"IncludeInBackup" value:payloadIncludeInBackup isRequired:0 defaultValue:MEMORY[0x277CBEC38]];

  payloadAttributes = [(RMModelAppManagedDeclaration *)self payloadAttributes];
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __57__RMModelAppManagedDeclaration_serializePayloadWithType___block_invoke_3;
  v24[3] = &__block_descriptor_34_e42___NSDictionary_16__0__RMModelPayloadBase_8l;
  typeCopy3 = type;
  [(RMModelPayloadBase *)self serializeDictionaryIntoDictionary:v5 usingKey:@"Attributes" value:payloadAttributes dictSerializer:v24 isRequired:0 defaultValue:0];

  payloadAppConfig = [(RMModelAppManagedDeclaration *)self payloadAppConfig];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __57__RMModelAppManagedDeclaration_serializePayloadWithType___block_invoke_4;
  v22[3] = &__block_descriptor_34_e42___NSDictionary_16__0__RMModelPayloadBase_8l;
  typeCopy4 = type;
  [(RMModelPayloadBase *)self serializeDictionaryIntoDictionary:v5 usingKey:@"AppConfig" value:payloadAppConfig dictSerializer:v22 isRequired:0 defaultValue:0];

  payloadExtensionConfigs = [(RMModelAppManagedDeclaration *)self payloadExtensionConfigs];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __57__RMModelAppManagedDeclaration_serializePayloadWithType___block_invoke_5;
  v20[3] = &__block_descriptor_34_e42___NSDictionary_16__0__RMModelPayloadBase_8l;
  typeCopy5 = type;
  [(RMModelPayloadBase *)self serializeDictionaryIntoDictionary:v5 usingKey:@"ExtensionConfigs" value:payloadExtensionConfigs dictSerializer:v20 isRequired:0 defaultValue:0];

  payloadLegacyAppConfigAssetReference = [(RMModelAppManagedDeclaration *)self payloadLegacyAppConfigAssetReference];
  [(RMModelPayloadBase *)self serializeStringIntoDictionary:v5 usingKey:@"LegacyAppConfigAssetReference" value:payloadLegacyAppConfigAssetReference isRequired:0 defaultValue:0];

  v18 = [v5 copy];

  return v18;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v30.receiver = self;
  v30.super_class = RMModelAppManagedDeclaration;
  v4 = [(RMModelDeclarationBase *)&v30 copyWithZone:zone];
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