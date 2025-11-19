@interface RMModelSecurityIdentityDeclaration
+ (NSSet)allowedPayloadKeys;
+ (id)buildRequiredOnlyWithIdentifier:(id)a3 credentialAssetReference:(id)a4;
+ (id)buildWithIdentifier:(id)a3 credentialAssetReference:(id)a4 allowAllAppsAccess:(id)a5 keyIsExtractable:(id)a6;
+ (id)supportedOS;
- (BOOL)loadPayloadFromDictionary:(id)a3 serializationType:(signed __int16)a4 error:(id *)a5;
- (id)assetReferences;
- (id)copyWithZone:(_NSZone *)a3;
- (id)serializePayloadWithType:(signed __int16)a3;
@end

@implementation RMModelSecurityIdentityDeclaration

+ (NSSet)allowedPayloadKeys
{
  v7[3] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CBEB98];
  v7[0] = @"CredentialAssetReference";
  v7[1] = @"AllowAllAppsAccess";
  v7[2] = @"KeyIsExtractable";
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:3];
  v4 = [v2 setWithArray:v3];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

- (id)assetReferences
{
  if (assetReferences_onceToken_12 != -1)
  {
    [RMModelSecurityIdentityDeclaration assetReferences];
  }

  v3 = assetReferences_assetPaths_12;

  return [(RMModelConfigurationBase *)self assetReferencesFromKeyPaths:v3 payloadObject:self];
}

void __53__RMModelSecurityIdentityDeclaration_assetReferences__block_invoke()
{
  v4[1] = *MEMORY[0x277D85DE8];
  v0 = [[RMModelConfigurationSchemaAssetReference alloc] initWithAssetTypes:&unk_287467B50 keyPath:@"$.payloadCredentialAssetReference"];
  v4[0] = v0;
  v1 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:1];
  v2 = assetReferences_assetPaths_12;
  assetReferences_assetPaths_12 = v1;

  v3 = *MEMORY[0x277D85DE8];
}

+ (id)buildWithIdentifier:(id)a3 credentialAssetReference:(id)a4 allowAllAppsAccess:(id)a5 keyIsExtractable:(id)a6
{
  v9 = a3;
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = objc_opt_new();
  [v13 setDeclarationType:@"com.apple.configuration.security.identity"];
  if (v9)
  {
    [v13 setDeclarationIdentifier:v9];
  }

  else
  {
    v14 = [MEMORY[0x277CCAD78] UUID];
    v15 = [v14 UUIDString];
    [v13 setDeclarationIdentifier:v15];
  }

  [v13 setPayloadCredentialAssetReference:v12];

  if (v11)
  {
    v16 = v11;
  }

  else
  {
    v16 = MEMORY[0x277CBEC28];
  }

  [v13 setPayloadAllowAllAppsAccess:v16];

  if (v10)
  {
    v17 = v10;
  }

  else
  {
    v17 = MEMORY[0x277CBEC38];
  }

  [v13 setPayloadKeyIsExtractable:v17];

  [v13 updateServerToken];

  return v13;
}

+ (id)buildRequiredOnlyWithIdentifier:(id)a3 credentialAssetReference:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = objc_opt_new();
  [v7 setDeclarationType:@"com.apple.configuration.security.identity"];
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

  [v7 setPayloadCredentialAssetReference:v6];

  [v7 updateServerToken];

  return v7;
}

+ (id)supportedOS
{
  v30[6] = *MEMORY[0x277D85DE8];
  v29[0] = &unk_28746BA80;
  v22 = [MEMORY[0x277CBEB98] setWithArray:&unk_287467B68];
  v28[0] = v22;
  v21 = [MEMORY[0x277CBEB98] setWithArray:&unk_287467B80];
  v28[1] = v21;
  v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:2];
  v30[0] = v20;
  v29[1] = &unk_28746BA98;
  v19 = [MEMORY[0x277CBEB98] setWithArray:&unk_287467B98];
  v27[0] = v19;
  v18 = [MEMORY[0x277CBEB98] setWithArray:&unk_287467BB0];
  v27[1] = v18;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v27 count:2];
  v30[1] = v17;
  v29[2] = &unk_28746BAB0;
  v16 = [MEMORY[0x277CBEB98] setWithArray:&unk_287467BC8];
  v26[0] = v16;
  v15 = [MEMORY[0x277CBEB98] setWithArray:&unk_287467BE0];
  v26[1] = v15;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:2];
  v30[2] = v14;
  v29[3] = &unk_28746BAC8;
  v2 = [MEMORY[0x277CBEB98] setWithArray:&unk_287467BF8];
  v25[0] = v2;
  v3 = [MEMORY[0x277CBEB98] setWithArray:&unk_287467C10];
  v25[1] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:2];
  v30[3] = v4;
  v29[4] = &unk_28746BAE0;
  v5 = [MEMORY[0x277CBEB98] setWithArray:&unk_287467C28];
  v24[0] = v5;
  v6 = [MEMORY[0x277CBEB98] setWithArray:&unk_287467C40];
  v24[1] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:2];
  v30[4] = v7;
  v29[5] = &unk_28746BAF8;
  v8 = [MEMORY[0x277CBEB98] setWithArray:&unk_287467C58];
  v23[0] = v8;
  v9 = [MEMORY[0x277CBEB98] setWithArray:&unk_287467C70];
  v23[1] = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:2];
  v30[5] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v30 forKeys:v29 count:6];

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

- (BOOL)loadPayloadFromDictionary:(id)a3 serializationType:(signed __int16)a4 error:(id *)a5
{
  v7 = a3;
  v8 = MEMORY[0x277CBEB58];
  v9 = [v7 allKeys];
  v10 = [v8 setWithArray:v9];

  v11 = +[RMModelSecurityIdentityDeclaration allowedPayloadKeys];
  [v10 minusSet:v11];

  v12 = [v10 copy];
  [(RMModelPayloadBase *)self setUnknownPayloadKeys:v12];

  v13 = [(RMModelPayloadBase *)self loadStringFromDictionary:v7 usingKey:@"CredentialAssetReference" forKeyPath:@"payloadCredentialAssetReference" isRequired:1 defaultValue:0 error:a5]&& [(RMModelPayloadBase *)self loadBooleanFromDictionary:v7 usingKey:@"AllowAllAppsAccess" forKeyPath:@"payloadAllowAllAppsAccess" isRequired:0 defaultValue:MEMORY[0x277CBEC28] error:a5]&& [(RMModelPayloadBase *)self loadBooleanFromDictionary:v7 usingKey:@"KeyIsExtractable" forKeyPath:@"payloadKeyIsExtractable" isRequired:0 defaultValue:MEMORY[0x277CBEC38] error:a5];
  return v13;
}

- (id)serializePayloadWithType:(signed __int16)a3
{
  v4 = objc_opt_new();
  v5 = [(RMModelSecurityIdentityDeclaration *)self payloadCredentialAssetReference];
  [(RMModelPayloadBase *)self serializeStringIntoDictionary:v4 usingKey:@"CredentialAssetReference" value:v5 isRequired:1 defaultValue:0];

  v6 = [(RMModelSecurityIdentityDeclaration *)self payloadAllowAllAppsAccess];
  [(RMModelPayloadBase *)self serializeBooleanIntoDictionary:v4 usingKey:@"AllowAllAppsAccess" value:v6 isRequired:0 defaultValue:MEMORY[0x277CBEC28]];

  v7 = [(RMModelSecurityIdentityDeclaration *)self payloadKeyIsExtractable];
  [(RMModelPayloadBase *)self serializeBooleanIntoDictionary:v4 usingKey:@"KeyIsExtractable" value:v7 isRequired:0 defaultValue:MEMORY[0x277CBEC38]];

  v8 = [v4 copy];

  return v8;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v12.receiver = self;
  v12.super_class = RMModelSecurityIdentityDeclaration;
  v4 = [(RMModelDeclarationBase *)&v12 copyWithZone:a3];
  v5 = [(NSString *)self->_payloadCredentialAssetReference copy];
  v6 = v4[6];
  v4[6] = v5;

  v7 = [(NSNumber *)self->_payloadAllowAllAppsAccess copy];
  v8 = v4[7];
  v4[7] = v7;

  v9 = [(NSNumber *)self->_payloadKeyIsExtractable copy];
  v10 = v4[8];
  v4[8] = v9;

  return v4;
}

@end