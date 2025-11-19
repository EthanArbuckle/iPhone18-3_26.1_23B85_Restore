@interface RMModelServicesConfigurationFilesDeclaration
+ (NSSet)allowedPayloadKeys;
+ (id)buildRequiredOnlyWithIdentifier:(id)a3 serviceType:(id)a4 dataAssetReference:(id)a5;
+ (id)buildWithIdentifier:(id)a3 serviceType:(id)a4 dataAssetReference:(id)a5;
+ (id)supportedOS;
- (BOOL)loadPayloadFromDictionary:(id)a3 serializationType:(signed __int16)a4 error:(id *)a5;
- (id)assetReferences;
- (id)copyWithZone:(_NSZone *)a3;
- (id)serializePayloadWithType:(signed __int16)a3;
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

+ (id)buildWithIdentifier:(id)a3 serviceType:(id)a4 dataAssetReference:(id)a5
{
  v7 = a3;
  v8 = a5;
  v9 = a4;
  v10 = objc_opt_new();
  [v10 setDeclarationType:@"com.apple.configuration.services.configuration-files"];
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

  [v10 setPayloadServiceType:v9];

  [v10 setPayloadDataAssetReference:v8];
  [v10 updateServerToken];

  return v10;
}

+ (id)buildRequiredOnlyWithIdentifier:(id)a3 serviceType:(id)a4 dataAssetReference:(id)a5
{
  v7 = a3;
  v8 = a5;
  v9 = a4;
  v10 = objc_opt_new();
  [v10 setDeclarationType:@"com.apple.configuration.services.configuration-files"];
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

  [v10 setPayloadServiceType:v9];

  [v10 setPayloadDataAssetReference:v8];
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

- (BOOL)loadPayloadFromDictionary:(id)a3 serializationType:(signed __int16)a4 error:(id *)a5
{
  v7 = a3;
  v8 = MEMORY[0x277CBEB58];
  v9 = [v7 allKeys];
  v10 = [v8 setWithArray:v9];

  v11 = +[RMModelServicesConfigurationFilesDeclaration allowedPayloadKeys];
  [v10 minusSet:v11];

  v12 = [v10 copy];
  [(RMModelPayloadBase *)self setUnknownPayloadKeys:v12];

  if ([(RMModelPayloadBase *)self loadStringFromDictionary:v7 usingKey:@"ServiceType" forKeyPath:@"payloadServiceType" isRequired:1 defaultValue:0 error:a5])
  {
    v13 = [(RMModelPayloadBase *)self loadStringFromDictionary:v7 usingKey:@"DataAssetReference" forKeyPath:@"payloadDataAssetReference" isRequired:1 defaultValue:0 error:a5];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)serializePayloadWithType:(signed __int16)a3
{
  v4 = objc_opt_new();
  v5 = [(RMModelServicesConfigurationFilesDeclaration *)self payloadServiceType];
  [(RMModelPayloadBase *)self serializeStringIntoDictionary:v4 usingKey:@"ServiceType" value:v5 isRequired:1 defaultValue:0];

  v6 = [(RMModelServicesConfigurationFilesDeclaration *)self payloadDataAssetReference];
  [(RMModelPayloadBase *)self serializeStringIntoDictionary:v4 usingKey:@"DataAssetReference" value:v6 isRequired:1 defaultValue:0];

  v7 = [v4 copy];

  return v7;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v10.receiver = self;
  v10.super_class = RMModelServicesConfigurationFilesDeclaration;
  v4 = [(RMModelDeclarationBase *)&v10 copyWithZone:a3];
  v5 = [(NSString *)self->_payloadServiceType copy];
  v6 = v4[6];
  v4[6] = v5;

  v7 = [(NSString *)self->_payloadDataAssetReference copy];
  v8 = v4[7];
  v4[7] = v7;

  return v4;
}

@end