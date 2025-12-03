@interface RMModelServicesBackgroundTasksDeclaration
+ (NSSet)allowedPayloadKeys;
+ (id)buildRequiredOnlyWithIdentifier:(id)identifier taskType:(id)type;
+ (id)buildWithIdentifier:(id)identifier taskType:(id)type taskDescription:(id)description executableAssetReference:(id)reference launchdConfigurations:(id)configurations;
+ (id)supportedOS;
- (BOOL)loadPayloadFromDictionary:(id)dictionary serializationType:(signed __int16)type error:(id *)error;
- (id)assetReferences;
- (id)copyWithZone:(_NSZone *)zone;
- (id)serializePayloadWithType:(signed __int16)type;
@end

@implementation RMModelServicesBackgroundTasksDeclaration

+ (NSSet)allowedPayloadKeys
{
  v7[4] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CBEB98];
  v7[0] = @"TaskType";
  v7[1] = @"TaskDescription";
  v7[2] = @"ExecutableAssetReference";
  v7[3] = @"LaunchdConfigurations";
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:4];
  v4 = [v2 setWithArray:v3];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

- (id)assetReferences
{
  if (assetReferences_onceToken_14 != -1)
  {
    [RMModelServicesBackgroundTasksDeclaration assetReferences];
  }

  v3 = assetReferences_assetPaths_14;

  return [(RMModelConfigurationBase *)self assetReferencesFromKeyPaths:v3 payloadObject:self];
}

void __60__RMModelServicesBackgroundTasksDeclaration_assetReferences__block_invoke()
{
  v5[2] = *MEMORY[0x277D85DE8];
  v0 = [[RMModelConfigurationSchemaAssetReference alloc] initWithAssetTypes:&unk_287467D30 keyPath:@"$.payloadExecutableAssetReference"];
  v5[0] = v0;
  v1 = [[RMModelConfigurationSchemaAssetReference alloc] initWithAssetTypes:&unk_287467D48 keyPath:@"$.payloadLaunchdConfigurations.*.payloadFileAssetReference"];
  v5[1] = v1;
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:2];
  v3 = assetReferences_assetPaths_14;
  assetReferences_assetPaths_14 = v2;

  v4 = *MEMORY[0x277D85DE8];
}

+ (id)buildWithIdentifier:(id)identifier taskType:(id)type taskDescription:(id)description executableAssetReference:(id)reference launchdConfigurations:(id)configurations
{
  identifierCopy = identifier;
  configurationsCopy = configurations;
  referenceCopy = reference;
  descriptionCopy = description;
  typeCopy = type;
  v16 = objc_opt_new();
  [v16 setDeclarationType:@"com.apple.configuration.services.background-tasks"];
  if (identifierCopy)
  {
    [v16 setDeclarationIdentifier:identifierCopy];
  }

  else
  {
    uUID = [MEMORY[0x277CCAD78] UUID];
    uUIDString = [uUID UUIDString];
    [v16 setDeclarationIdentifier:uUIDString];
  }

  [v16 setPayloadTaskType:typeCopy];

  [v16 setPayloadTaskDescription:descriptionCopy];
  [v16 setPayloadExecutableAssetReference:referenceCopy];

  [v16 setPayloadLaunchdConfigurations:configurationsCopy];
  [v16 updateServerToken];

  return v16;
}

+ (id)buildRequiredOnlyWithIdentifier:(id)identifier taskType:(id)type
{
  identifierCopy = identifier;
  typeCopy = type;
  v7 = objc_opt_new();
  [v7 setDeclarationType:@"com.apple.configuration.services.background-tasks"];
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

  [v7 setPayloadTaskType:typeCopy];

  [v7 updateServerToken];

  return v7;
}

+ (id)supportedOS
{
  v10[1] = *MEMORY[0x277D85DE8];
  v9 = &unk_28746BB58;
  v2 = [MEMORY[0x277CBEB98] setWithArray:&unk_287467D60];
  v8[0] = v2;
  v3 = [MEMORY[0x277CBEB98] setWithArray:&unk_287467D78];
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
  v9 = MEMORY[0x277CBEB58];
  allKeys = [dictionaryCopy allKeys];
  v11 = [v9 setWithArray:allKeys];

  v12 = +[RMModelServicesBackgroundTasksDeclaration allowedPayloadKeys];
  [v11 minusSet:v12];

  v13 = [v11 copy];
  [(RMModelPayloadBase *)self setUnknownPayloadKeys:v13];

  if ([(RMModelPayloadBase *)self loadStringFromDictionary:dictionaryCopy usingKey:@"TaskType" forKeyPath:@"payloadTaskType" isRequired:1 defaultValue:0 error:error]&& [(RMModelPayloadBase *)self loadStringFromDictionary:dictionaryCopy usingKey:@"TaskDescription" forKeyPath:@"payloadTaskDescription" isRequired:0 defaultValue:0 error:error]&& [(RMModelPayloadBase *)self loadStringFromDictionary:dictionaryCopy usingKey:@"ExecutableAssetReference" forKeyPath:@"payloadExecutableAssetReference" isRequired:0 defaultValue:0 error:error])
  {
    LOWORD(v16) = type;
    v14 = [(RMModelPayloadBase *)self loadArrayFromDictionary:dictionaryCopy usingKey:@"LaunchdConfigurations" forKeyPath:@"payloadLaunchdConfigurations" classType:objc_opt_class() nested:0 isRequired:0 defaultValue:0 serializationType:v16 error:error];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (id)serializePayloadWithType:(signed __int16)type
{
  v5 = objc_opt_new();
  payloadTaskType = [(RMModelServicesBackgroundTasksDeclaration *)self payloadTaskType];
  [(RMModelPayloadBase *)self serializeStringIntoDictionary:v5 usingKey:@"TaskType" value:payloadTaskType isRequired:1 defaultValue:0];

  payloadTaskDescription = [(RMModelServicesBackgroundTasksDeclaration *)self payloadTaskDescription];
  [(RMModelPayloadBase *)self serializeStringIntoDictionary:v5 usingKey:@"TaskDescription" value:payloadTaskDescription isRequired:0 defaultValue:0];

  payloadExecutableAssetReference = [(RMModelServicesBackgroundTasksDeclaration *)self payloadExecutableAssetReference];
  [(RMModelPayloadBase *)self serializeStringIntoDictionary:v5 usingKey:@"ExecutableAssetReference" value:payloadExecutableAssetReference isRequired:0 defaultValue:0];

  payloadLaunchdConfigurations = [(RMModelServicesBackgroundTasksDeclaration *)self payloadLaunchdConfigurations];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __70__RMModelServicesBackgroundTasksDeclaration_serializePayloadWithType___block_invoke;
  v12[3] = &__block_descriptor_34_e77___NSDictionary_16__0__RMModelServicesBackgroundTasksDeclaration_LaunchdItem_8l;
  typeCopy = type;
  [(RMModelPayloadBase *)self serializeArrayIntoDictionary:v5 usingKey:@"LaunchdConfigurations" value:payloadLaunchdConfigurations itemSerializer:v12 isRequired:0 defaultValue:0];

  v10 = [v5 copy];

  return v10;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v14.receiver = self;
  v14.super_class = RMModelServicesBackgroundTasksDeclaration;
  v4 = [(RMModelDeclarationBase *)&v14 copyWithZone:zone];
  v5 = [(NSString *)self->_payloadTaskType copy];
  v6 = v4[6];
  v4[6] = v5;

  v7 = [(NSString *)self->_payloadTaskDescription copy];
  v8 = v4[7];
  v4[7] = v7;

  v9 = [(NSString *)self->_payloadExecutableAssetReference copy];
  v10 = v4[8];
  v4[8] = v9;

  v11 = [(NSArray *)self->_payloadLaunchdConfigurations copy];
  v12 = v4[9];
  v4[9] = v11;

  return v4;
}

@end