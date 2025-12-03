@interface RMModelWatchEnrollmentDeclaration
+ (NSSet)allowedPayloadKeys;
+ (id)buildRequiredOnlyWithIdentifier:(id)identifier enrollmentProfileURL:(id)l;
+ (id)buildWithIdentifier:(id)identifier enrollmentProfileURL:(id)l anchorCertificateAssetReferences:(id)references;
+ (id)supportedOS;
- (BOOL)loadPayloadFromDictionary:(id)dictionary serializationType:(signed __int16)type error:(id *)error;
- (id)assetReferences;
- (id)copyWithZone:(_NSZone *)zone;
- (id)serializePayloadWithType:(signed __int16)type;
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

+ (id)buildWithIdentifier:(id)identifier enrollmentProfileURL:(id)l anchorCertificateAssetReferences:(id)references
{
  identifierCopy = identifier;
  referencesCopy = references;
  lCopy = l;
  v10 = objc_opt_new();
  [v10 setDeclarationType:@"com.apple.configuration.watch.enrollment"];
  if (identifierCopy)
  {
    [v10 setDeclarationIdentifier:identifierCopy];
  }

  else
  {
    uUID = [MEMORY[0x277CCAD78] UUID];
    uUIDString = [uUID UUIDString];
    [v10 setDeclarationIdentifier:uUIDString];
  }

  [v10 setPayloadEnrollmentProfileURL:lCopy];

  [v10 setPayloadAnchorCertificateAssetReferences:referencesCopy];
  [v10 updateServerToken];

  return v10;
}

+ (id)buildRequiredOnlyWithIdentifier:(id)identifier enrollmentProfileURL:(id)l
{
  identifierCopy = identifier;
  lCopy = l;
  v7 = objc_opt_new();
  [v7 setDeclarationType:@"com.apple.configuration.watch.enrollment"];
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

  [v7 setPayloadEnrollmentProfileURL:lCopy];

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

- (BOOL)loadPayloadFromDictionary:(id)dictionary serializationType:(signed __int16)type error:(id *)error
{
  dictionaryCopy = dictionary;
  v8 = MEMORY[0x277CBEB58];
  allKeys = [dictionaryCopy allKeys];
  v10 = [v8 setWithArray:allKeys];

  v11 = +[RMModelWatchEnrollmentDeclaration allowedPayloadKeys];
  [v10 minusSet:v11];

  v12 = [v10 copy];
  [(RMModelPayloadBase *)self setUnknownPayloadKeys:v12];

  if ([(RMModelPayloadBase *)self loadStringFromDictionary:dictionaryCopy usingKey:@"EnrollmentProfileURL" forKeyPath:@"payloadEnrollmentProfileURL" isRequired:1 defaultValue:0 error:error])
  {
    v13 = [(RMModelPayloadBase *)self loadArrayFromDictionary:dictionaryCopy usingKey:@"AnchorCertificateAssetReferences" forKeyPath:@"payloadAnchorCertificateAssetReferences" validator:&__block_literal_global_43 isRequired:0 defaultValue:0 error:error];
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

- (id)serializePayloadWithType:(signed __int16)type
{
  v4 = objc_opt_new();
  payloadEnrollmentProfileURL = [(RMModelWatchEnrollmentDeclaration *)self payloadEnrollmentProfileURL];
  [(RMModelPayloadBase *)self serializeStringIntoDictionary:v4 usingKey:@"EnrollmentProfileURL" value:payloadEnrollmentProfileURL isRequired:1 defaultValue:0];

  payloadAnchorCertificateAssetReferences = [(RMModelWatchEnrollmentDeclaration *)self payloadAnchorCertificateAssetReferences];
  [(RMModelPayloadBase *)self serializeArrayIntoDictionary:v4 usingKey:@"AnchorCertificateAssetReferences" value:payloadAnchorCertificateAssetReferences itemSerializer:&__block_literal_global_48_0 isRequired:0 defaultValue:0];

  v7 = [v4 copy];

  return v7;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v10.receiver = self;
  v10.super_class = RMModelWatchEnrollmentDeclaration;
  v4 = [(RMModelDeclarationBase *)&v10 copyWithZone:zone];
  v5 = [(NSString *)self->_payloadEnrollmentProfileURL copy];
  v6 = v4[6];
  v4[6] = v5;

  v7 = [(NSArray *)self->_payloadAnchorCertificateAssetReferences copy];
  v8 = v4[7];
  v4[7] = v7;

  return v4;
}

@end