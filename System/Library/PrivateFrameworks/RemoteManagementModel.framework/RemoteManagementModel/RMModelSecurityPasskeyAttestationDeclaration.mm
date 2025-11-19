@interface RMModelSecurityPasskeyAttestationDeclaration
+ (NSSet)allowedPayloadKeys;
+ (id)buildRequiredOnlyWithIdentifier:(id)a3 attestationIdentityAssetReference:(id)a4 relyingParties:(id)a5;
+ (id)buildWithIdentifier:(id)a3 attestationIdentityAssetReference:(id)a4 attestationIdentityKeyIsExtractable:(id)a5 relyingParties:(id)a6;
+ (id)supportedOS;
- (BOOL)loadPayloadFromDictionary:(id)a3 serializationType:(signed __int16)a4 error:(id *)a5;
- (id)assetReferences;
- (id)copyWithZone:(_NSZone *)a3;
- (id)serializePayloadWithType:(signed __int16)a3;
@end

@implementation RMModelSecurityPasskeyAttestationDeclaration

+ (NSSet)allowedPayloadKeys
{
  v7[3] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CBEB98];
  v7[0] = @"AttestationIdentityAssetReference";
  v7[1] = @"AttestationIdentityKeyIsExtractable";
  v7[2] = @"RelyingParties";
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:3];
  v4 = [v2 setWithArray:v3];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

- (id)assetReferences
{
  if (assetReferences_onceToken_13 != -1)
  {
    [RMModelSecurityPasskeyAttestationDeclaration assetReferences];
  }

  v3 = assetReferences_assetPaths_13;

  return [(RMModelConfigurationBase *)self assetReferencesFromKeyPaths:v3 payloadObject:self];
}

void __63__RMModelSecurityPasskeyAttestationDeclaration_assetReferences__block_invoke()
{
  v4[1] = *MEMORY[0x277D85DE8];
  v0 = [[RMModelConfigurationSchemaAssetReference alloc] initWithAssetTypes:&unk_287467CA0 keyPath:@"$.payloadAttestationIdentityAssetReference"];
  v4[0] = v0;
  v1 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:1];
  v2 = assetReferences_assetPaths_13;
  assetReferences_assetPaths_13 = v1;

  v3 = *MEMORY[0x277D85DE8];
}

+ (id)buildWithIdentifier:(id)a3 attestationIdentityAssetReference:(id)a4 attestationIdentityKeyIsExtractable:(id)a5 relyingParties:(id)a6
{
  v9 = a3;
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = objc_opt_new();
  [v13 setDeclarationType:@"com.apple.configuration.security.passkey.attestation"];
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

  [v13 setPayloadAttestationIdentityAssetReference:v12];

  if (v11)
  {
    v16 = v11;
  }

  else
  {
    v16 = MEMORY[0x277CBEC38];
  }

  [v13 setPayloadAttestationIdentityKeyIsExtractable:v16];

  [v13 setPayloadRelyingParties:v10];
  [v13 updateServerToken];

  return v13;
}

+ (id)buildRequiredOnlyWithIdentifier:(id)a3 attestationIdentityAssetReference:(id)a4 relyingParties:(id)a5
{
  v7 = a3;
  v8 = a5;
  v9 = a4;
  v10 = objc_opt_new();
  [v10 setDeclarationType:@"com.apple.configuration.security.passkey.attestation"];
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

  [v10 setPayloadAttestationIdentityAssetReference:v9];

  [v10 setPayloadRelyingParties:v8];
  [v10 updateServerToken];

  return v10;
}

+ (id)supportedOS
{
  v14[2] = *MEMORY[0x277D85DE8];
  v13[0] = &unk_28746BB10;
  v2 = [MEMORY[0x277CBEB98] setWithArray:&unk_287467CB8];
  v12[0] = v2;
  v3 = [MEMORY[0x277CBEB98] setWithArray:&unk_287467CD0];
  v12[1] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:2];
  v13[1] = &unk_28746BB40;
  v14[0] = v4;
  v5 = [MEMORY[0x277CBEB98] setWithArray:&unk_287467CE8];
  v11[0] = v5;
  v6 = [MEMORY[0x277CBEB98] setWithArray:&unk_287467D00];
  v11[1] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:2];
  v14[1] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:2];

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

- (BOOL)loadPayloadFromDictionary:(id)a3 serializationType:(signed __int16)a4 error:(id *)a5
{
  v7 = a3;
  v8 = MEMORY[0x277CBEB58];
  v9 = [v7 allKeys];
  v10 = [v8 setWithArray:v9];

  v11 = +[RMModelSecurityPasskeyAttestationDeclaration allowedPayloadKeys];
  [v10 minusSet:v11];

  v12 = [v10 copy];
  [(RMModelPayloadBase *)self setUnknownPayloadKeys:v12];

  v13 = [(RMModelPayloadBase *)self loadStringFromDictionary:v7 usingKey:@"AttestationIdentityAssetReference" forKeyPath:@"payloadAttestationIdentityAssetReference" isRequired:1 defaultValue:0 error:a5]&& [(RMModelPayloadBase *)self loadBooleanFromDictionary:v7 usingKey:@"AttestationIdentityKeyIsExtractable" forKeyPath:@"payloadAttestationIdentityKeyIsExtractable" isRequired:0 defaultValue:MEMORY[0x277CBEC38] error:a5]&& [(RMModelPayloadBase *)self loadArrayFromDictionary:v7 usingKey:@"RelyingParties" forKeyPath:@"payloadRelyingParties" validator:&__block_literal_global_63 isRequired:1 defaultValue:0 error:a5];
  return v13;
}

uint64_t __98__RMModelSecurityPasskeyAttestationDeclaration_loadPayloadFromDictionary_serializationType_error___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (id)serializePayloadWithType:(signed __int16)a3
{
  v4 = objc_opt_new();
  v5 = [(RMModelSecurityPasskeyAttestationDeclaration *)self payloadAttestationIdentityAssetReference];
  [(RMModelPayloadBase *)self serializeStringIntoDictionary:v4 usingKey:@"AttestationIdentityAssetReference" value:v5 isRequired:1 defaultValue:0];

  v6 = [(RMModelSecurityPasskeyAttestationDeclaration *)self payloadAttestationIdentityKeyIsExtractable];
  [(RMModelPayloadBase *)self serializeBooleanIntoDictionary:v4 usingKey:@"AttestationIdentityKeyIsExtractable" value:v6 isRequired:0 defaultValue:MEMORY[0x277CBEC38]];

  v7 = [(RMModelSecurityPasskeyAttestationDeclaration *)self payloadRelyingParties];
  [(RMModelPayloadBase *)self serializeArrayIntoDictionary:v4 usingKey:@"RelyingParties" value:v7 itemSerializer:&__block_literal_global_68 isRequired:1 defaultValue:0];

  v8 = [v4 copy];

  return v8;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v12.receiver = self;
  v12.super_class = RMModelSecurityPasskeyAttestationDeclaration;
  v4 = [(RMModelDeclarationBase *)&v12 copyWithZone:a3];
  v5 = [(NSString *)self->_payloadAttestationIdentityAssetReference copy];
  v6 = v4[6];
  v4[6] = v5;

  v7 = [(NSNumber *)self->_payloadAttestationIdentityKeyIsExtractable copy];
  v8 = v4[7];
  v4[7] = v7;

  v9 = [(NSArray *)self->_payloadRelyingParties copy];
  v10 = v4[8];
  v4[8] = v9;

  return v4;
}

@end