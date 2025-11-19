@interface RMModelSecurityCertificateDeclaration
+ (NSSet)allowedPayloadKeys;
+ (id)buildRequiredOnlyWithIdentifier:(id)a3 credentialAssetReference:(id)a4;
+ (id)buildWithIdentifier:(id)a3 credentialAssetReference:(id)a4;
+ (id)supportedOS;
- (BOOL)loadPayloadFromDictionary:(id)a3 serializationType:(signed __int16)a4 error:(id *)a5;
- (id)assetReferences;
- (id)copyWithZone:(_NSZone *)a3;
- (id)serializePayloadWithType:(signed __int16)a3;
@end

@implementation RMModelSecurityCertificateDeclaration

+ (NSSet)allowedPayloadKeys
{
  v7[1] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CBEB98];
  v7[0] = @"CredentialAssetReference";
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:1];
  v4 = [v2 setWithArray:v3];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

- (id)assetReferences
{
  if (assetReferences_onceToken_11 != -1)
  {
    [RMModelSecurityCertificateDeclaration assetReferences];
  }

  v3 = assetReferences_assetPaths_11;

  return [(RMModelConfigurationBase *)self assetReferencesFromKeyPaths:v3 payloadObject:self];
}

void __56__RMModelSecurityCertificateDeclaration_assetReferences__block_invoke()
{
  v4[1] = *MEMORY[0x277D85DE8];
  v0 = [[RMModelConfigurationSchemaAssetReference alloc] initWithAssetTypes:&unk_287467A00 keyPath:@"$.payloadCredentialAssetReference"];
  v4[0] = v0;
  v1 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:1];
  v2 = assetReferences_assetPaths_11;
  assetReferences_assetPaths_11 = v1;

  v3 = *MEMORY[0x277D85DE8];
}

+ (id)buildWithIdentifier:(id)a3 credentialAssetReference:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = objc_opt_new();
  [v7 setDeclarationType:@"com.apple.configuration.security.certificate"];
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

+ (id)buildRequiredOnlyWithIdentifier:(id)a3 credentialAssetReference:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = objc_opt_new();
  [v7 setDeclarationType:@"com.apple.configuration.security.certificate"];
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
  v29[0] = &unk_28746B9F0;
  v22 = [MEMORY[0x277CBEB98] setWithArray:&unk_287467A18];
  v28[0] = v22;
  v21 = [MEMORY[0x277CBEB98] setWithArray:&unk_287467A30];
  v28[1] = v21;
  v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:2];
  v30[0] = v20;
  v29[1] = &unk_28746BA08;
  v19 = [MEMORY[0x277CBEB98] setWithArray:&unk_287467A48];
  v27[0] = v19;
  v18 = [MEMORY[0x277CBEB98] setWithArray:&unk_287467A60];
  v27[1] = v18;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v27 count:2];
  v30[1] = v17;
  v29[2] = &unk_28746BA20;
  v16 = [MEMORY[0x277CBEB98] setWithArray:&unk_287467A78];
  v26[0] = v16;
  v15 = [MEMORY[0x277CBEB98] setWithArray:&unk_287467A90];
  v26[1] = v15;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:2];
  v30[2] = v14;
  v29[3] = &unk_28746BA38;
  v2 = [MEMORY[0x277CBEB98] setWithArray:&unk_287467AA8];
  v25[0] = v2;
  v3 = [MEMORY[0x277CBEB98] setWithArray:&unk_287467AC0];
  v25[1] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:2];
  v30[3] = v4;
  v29[4] = &unk_28746BA50;
  v5 = [MEMORY[0x277CBEB98] setWithArray:&unk_287467AD8];
  v24[0] = v5;
  v6 = [MEMORY[0x277CBEB98] setWithArray:&unk_287467AF0];
  v24[1] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:2];
  v30[4] = v7;
  v29[5] = &unk_28746BA68;
  v8 = [MEMORY[0x277CBEB98] setWithArray:&unk_287467B08];
  v23[0] = v8;
  v9 = [MEMORY[0x277CBEB98] setWithArray:&unk_287467B20];
  v23[1] = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:2];
  v30[5] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v30 forKeys:v29 count:6];

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

- (BOOL)loadPayloadFromDictionary:(id)a3 serializationType:(signed __int16)a4 error:(id *)a5
{
  v7 = MEMORY[0x277CBEB58];
  v8 = a3;
  v9 = [v8 allKeys];
  v10 = [v7 setWithArray:v9];

  v11 = +[RMModelSecurityCertificateDeclaration allowedPayloadKeys];
  [v10 minusSet:v11];

  v12 = [v10 copy];
  [(RMModelPayloadBase *)self setUnknownPayloadKeys:v12];

  LOBYTE(a5) = [(RMModelPayloadBase *)self loadStringFromDictionary:v8 usingKey:@"CredentialAssetReference" forKeyPath:@"payloadCredentialAssetReference" isRequired:1 defaultValue:0 error:a5];
  return a5;
}

- (id)serializePayloadWithType:(signed __int16)a3
{
  v4 = objc_opt_new();
  v5 = [(RMModelSecurityCertificateDeclaration *)self payloadCredentialAssetReference];
  [(RMModelPayloadBase *)self serializeStringIntoDictionary:v4 usingKey:@"CredentialAssetReference" value:v5 isRequired:1 defaultValue:0];

  v6 = [v4 copy];

  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v8.receiver = self;
  v8.super_class = RMModelSecurityCertificateDeclaration;
  v4 = [(RMModelDeclarationBase *)&v8 copyWithZone:a3];
  v5 = [(NSString *)self->_payloadCredentialAssetReference copy];
  v6 = v4[6];
  v4[6] = v5;

  return v4;
}

@end