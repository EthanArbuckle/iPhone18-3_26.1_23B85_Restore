@interface RMModelServicesConfigurationFilesDeclaration
+ (NSSet)allowedPayloadKeys;
+ (id)buildRequiredOnlyWithIdentifier:(id)identifier serviceType:(id)type dataAssetReference:(id)reference;
+ (id)buildWithIdentifier:(id)identifier serviceType:(id)type dataAssetReference:(id)reference;
+ (id)supportedOS;
- (BOOL)loadPayloadFromDictionary:(id)dictionary serializationType:(signed __int16)type error:(id *)error;
- (id)assetReferences;
- (id)copyWithZone:(_NSZone *)zone;
- (id)serializePayloadWithType:(signed __int16)type;
@end

@implementation RMModelServicesConfigurationFilesDeclaration

+ (NSSet)allowedPayloadKeys
{
  v7[2] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CBEB98];
  v7[0] = @"ServiceType";
  v7[1] = @"DataAssetReference";
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:2];
  v4 = [v2 setWithArray:v3];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

- (id)assetReferences
{
  if (assetReferences_onceToken_15 != -1)
  {
    [RMModelServicesConfigurationFilesDeclaration assetReferences];
  }

  v3 = assetReferences_assetPaths_15;

  return [(RMModelConfigurationBase *)self assetReferencesFromKeyPaths:v3 payloadObject:self];
}

void __63__RMModelServicesConfigurationFilesDeclaration_assetReferences__block_invoke()
{
  v4[1] = *MEMORY[0x277D85DE8];
  v0 = [[RMModelConfigurationSchemaAssetReference alloc] initWithAssetTypes:&unk_287467DA8 keyPath:@"$.payloadDataAssetReference"];
  v4[0] = v0;
  v1 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:1];
  v2 = assetReferences_assetPaths_15;
  assetReferences_assetPaths_15 = v1;

  v3 = *MEMORY[0x277D85DE8];
}

+ (id)buildWithIdentifier:(id)identifier serviceType:(id)type dataAssetReference:(id)reference
{
  identifierCopy = identifier;
  referenceCopy = reference;
  typeCopy = type;
  v10 = objc_opt_new();
  [v10 setDeclarationType:@"com.apple.configuration.services.configuration-files"];
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

  [v10 setPayloadServiceType:typeCopy];

  [v10 setPayloadDataAssetReference:referenceCopy];
  [v10 updateServerToken];

  return v10;
}

+ (id)buildRequiredOnlyWithIdentifier:(id)identifier serviceType:(id)type dataAssetReference:(id)reference
{
  identifierCopy = identifier;
  referenceCopy = reference;
  typeCopy = type;
  v10 = objc_opt_new();
  [v10 setDeclarationType:@"com.apple.configuration.services.configuration-files"];
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

  [v10 setPayloadServiceType:typeCopy];

  [v10 setPayloadDataAssetReference:referenceCopy];
  [v10 updateServerToken];

  return v10;
}

+ (id)supportedOS
{
  v10[1] = *MEMORY[0x277D85DE8];
  v9 = &unk_28746BBA0;
  v2 = [MEMORY[0x277CBEB98] setWithArray:&unk_287467DC0];
  v8[0] = v2;
  v3 = [MEMORY[0x277CBEB98] setWithArray:&unk_287467DD8];
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

  v11 = +[RMModelServicesConfigurationFilesDeclaration allowedPayloadKeys];
  [v10 minusSet:v11];

  v12 = [v10 copy];
  [(RMModelPayloadBase *)self setUnknownPayloadKeys:v12];

  if ([(RMModelPayloadBase *)self loadStringFromDictionary:dictionaryCopy usingKey:@"ServiceType" forKeyPath:@"payloadServiceType" isRequired:1 defaultValue:0 error:error])
  {
    v13 = [(RMModelPayloadBase *)self loadStringFromDictionary:dictionaryCopy usingKey:@"DataAssetReference" forKeyPath:@"payloadDataAssetReference" isRequired:1 defaultValue:0 error:error];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)serializePayloadWithType:(signed __int16)type
{
  v4 = objc_opt_new();
  payloadServiceType = [(RMModelServicesConfigurationFilesDeclaration *)self payloadServiceType];
  [(RMModelPayloadBase *)self serializeStringIntoDictionary:v4 usingKey:@"ServiceType" value:payloadServiceType isRequired:1 defaultValue:0];

  payloadDataAssetReference = [(RMModelServicesConfigurationFilesDeclaration *)self payloadDataAssetReference];
  [(RMModelPayloadBase *)self serializeStringIntoDictionary:v4 usingKey:@"DataAssetReference" value:payloadDataAssetReference isRequired:1 defaultValue:0];

  v7 = [v4 copy];

  return v7;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v10.receiver = self;
  v10.super_class = RMModelServicesConfigurationFilesDeclaration;
  v4 = [(RMModelDeclarationBase *)&v10 copyWithZone:zone];
  v5 = [(NSString *)self->_payloadServiceType copy];
  v6 = v4[6];
  v4[6] = v5;

  v7 = [(NSString *)self->_payloadDataAssetReference copy];
  v8 = v4[7];
  v4[7] = v7;

  return v4;
}

@end