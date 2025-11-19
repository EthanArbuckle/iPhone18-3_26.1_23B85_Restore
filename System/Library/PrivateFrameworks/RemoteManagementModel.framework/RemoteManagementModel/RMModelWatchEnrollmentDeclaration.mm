@interface RMModelWatchEnrollmentDeclaration
+ (NSSet)allowedPayloadKeys;
+ (id)buildRequiredOnlyWithIdentifier:(id)a3 enrollmentProfileURL:(id)a4;
+ (id)buildWithIdentifier:(id)a3 enrollmentProfileURL:(id)a4 anchorCertificateAssetReferences:(id)a5;
+ (id)supportedOS;
- (BOOL)loadPayloadFromDictionary:(id)a3 serializationType:(signed __int16)a4 error:(id *)a5;
- (id)assetReferences;
- (id)copyWithZone:(_NSZone *)a3;
- (id)serializePayloadWithType:(signed __int16)a3;
@end

@implementation RMModelWatchEnrollmentDeclaration

+ (NSSet)allowedPayloadKeys
{
  v7[2] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CBEB98];
  v7[0] = @"EnrollmentProfileURL";
  v7[1] = @"AnchorCertificateAssetReferences";
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:2];
  v4 = [v2 setWithArray:v3];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

- (id)assetReferences
{
  if (assetReferences_onceToken_16 != -1)
  {
    [RMModelWatchEnrollmentDeclaration assetReferences];
  }

  v3 = assetReferences_assetPaths_16;

  return [(RMModelConfigurationBase *)self assetReferencesFromKeyPaths:v3 payloadObject:self];
}

void __52__RMModelWatchEnrollmentDeclaration_assetReferences__block_invoke()
{
  v4[1] = *MEMORY[0x277D85DE8];
  v0 = [[RMModelConfigurationSchemaAssetReference alloc] initWithAssetTypes:&unk_28746A898 keyPath:@"$.payloadAnchorCertificateAssetReferences.*"];
  v4[0] = v0;
  v1 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:1];
  v2 = assetReferences_assetPaths_16;
  assetReferences_assetPaths_16 = v1;

  v3 = *MEMORY[0x277D85DE8];
}

+ (id)buildWithIdentifier:(id)a3 enrollmentProfileURL:(id)a4 anchorCertificateAssetReferences:(id)a5
{
  v7 = a3;
  v8 = a5;
  v9 = a4;
  v10 = objc_opt_new();
  [v10 setDeclarationType:@"com.apple.configuration.watch.enrollment"];
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

  [v10 setPayloadEnrollmentProfileURL:v9];

  [v10 setPayloadAnchorCertificateAssetReferences:v8];
  [v10 updateServerToken];

  return v10;
}

+ (id)buildRequiredOnlyWithIdentifier:(id)a3 enrollmentProfileURL:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = objc_opt_new();
  [v7 setDeclarationType:@"com.apple.configuration.watch.enrollment"];
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

  [v7 setPayloadEnrollmentProfileURL:v6];

  [v7 updateServerToken];

  return v7;
}

+ (id)supportedOS
{
  v10[1] = *MEMORY[0x277D85DE8];
  v9 = &unk_28746D358;
  v2 = [MEMORY[0x277CBEB98] setWithArray:&unk_28746A8B0];
  v8[0] = v2;
  v3 = [MEMORY[0x277CBEB98] setWithArray:&unk_28746A8C8];
  v8[1] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:2];
  v10[0] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

- (BOOL)loadPayloadFromDictionary:(id)a3 serializationType:(signed __int16)a4 error:(id *)a5
{
  v7 = a3;
  v8 = MEMORY[0x277CBEB58];
  v9 = [v7 allKeys];
  v10 = [v8 setWithArray:v9];

  v11 = +[RMModelWatchEnrollmentDeclaration allowedPayloadKeys];
  [v10 minusSet:v11];

  v12 = [v10 copy];
  [(RMModelPayloadBase *)self setUnknownPayloadKeys:v12];

  if ([(RMModelPayloadBase *)self loadStringFromDictionary:v7 usingKey:@"EnrollmentProfileURL" forKeyPath:@"payloadEnrollmentProfileURL" isRequired:1 defaultValue:0 error:a5])
  {
    v13 = [(RMModelPayloadBase *)self loadArrayFromDictionary:v7 usingKey:@"AnchorCertificateAssetReferences" forKeyPath:@"payloadAnchorCertificateAssetReferences" validator:&__block_literal_global_43 isRequired:0 defaultValue:0 error:a5];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

uint64_t __87__RMModelWatchEnrollmentDeclaration_loadPayloadFromDictionary_serializationType_error___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (id)serializePayloadWithType:(signed __int16)a3
{
  v4 = objc_opt_new();
  v5 = [(RMModelWatchEnrollmentDeclaration *)self payloadEnrollmentProfileURL];
  [(RMModelPayloadBase *)self serializeStringIntoDictionary:v4 usingKey:@"EnrollmentProfileURL" value:v5 isRequired:1 defaultValue:0];

  v6 = [(RMModelWatchEnrollmentDeclaration *)self payloadAnchorCertificateAssetReferences];
  [(RMModelPayloadBase *)self serializeArrayIntoDictionary:v4 usingKey:@"AnchorCertificateAssetReferences" value:v6 itemSerializer:&__block_literal_global_48_0 isRequired:0 defaultValue:0];

  v7 = [v4 copy];

  return v7;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v10.receiver = self;
  v10.super_class = RMModelWatchEnrollmentDeclaration;
  v4 = [(RMModelDeclarationBase *)&v10 copyWithZone:a3];
  v5 = [(NSString *)self->_payloadEnrollmentProfileURL copy];
  v6 = v4[6];
  v4[6] = v5;

  v7 = [(NSArray *)self->_payloadAnchorCertificateAssetReferences copy];
  v8 = v4[7];
  v4[7] = v7;

  return v4;
}

@end