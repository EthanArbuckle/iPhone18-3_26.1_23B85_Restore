@interface RMModelServicesBackgroundTasksDeclaration
+ (NSSet)allowedPayloadKeys;
+ (id)buildRequiredOnlyWithIdentifier:(id)a3 taskType:(id)a4;
+ (id)buildWithIdentifier:(id)a3 taskType:(id)a4 taskDescription:(id)a5 executableAssetReference:(id)a6 launchdConfigurations:(id)a7;
+ (id)supportedOS;
- (BOOL)loadPayloadFromDictionary:(id)a3 serializationType:(signed __int16)a4 error:(id *)a5;
- (id)assetReferences;
- (id)copyWithZone:(_NSZone *)a3;
- (id)serializePayloadWithType:(signed __int16)a3;
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

+ (id)buildWithIdentifier:(id)a3 taskType:(id)a4 taskDescription:(id)a5 executableAssetReference:(id)a6 launchdConfigurations:(id)a7
{
  v11 = a3;
  v12 = a7;
  v13 = a6;
  v14 = a5;
  v15 = a4;
  v16 = objc_opt_new();
  [v16 setDeclarationType:@"com.apple.configuration.services.background-tasks"];
  if (v11)
  {
    [v16 setDeclarationIdentifier:v11];
  }

  else
  {
    v17 = [MEMORY[0x277CCAD78] UUID];
    v18 = [v17 UUIDString];
    [v16 setDeclarationIdentifier:v18];
  }

  [v16 setPayloadTaskType:v15];

  [v16 setPayloadTaskDescription:v14];
  [v16 setPayloadExecutableAssetReference:v13];

  [v16 setPayloadLaunchdConfigurations:v12];
  [v16 updateServerToken];

  return v16;
}

+ (id)buildRequiredOnlyWithIdentifier:(id)a3 taskType:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = objc_opt_new();
  [v7 setDeclarationType:@"com.apple.configuration.services.background-tasks"];
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

  [v7 setPayloadTaskType:v6];

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

- (BOOL)loadPayloadFromDictionary:(id)a3 serializationType:(signed __int16)a4 error:(id *)a5
{
  v8 = a3;
  v9 = MEMORY[0x277CBEB58];
  v10 = [v8 allKeys];
  v11 = [v9 setWithArray:v10];

  v12 = +[RMModelServicesBackgroundTasksDeclaration allowedPayloadKeys];
  [v11 minusSet:v12];

  v13 = [v11 copy];
  [(RMModelPayloadBase *)self setUnknownPayloadKeys:v13];

  if ([(RMModelPayloadBase *)self loadStringFromDictionary:v8 usingKey:@"TaskType" forKeyPath:@"payloadTaskType" isRequired:1 defaultValue:0 error:a5]&& [(RMModelPayloadBase *)self loadStringFromDictionary:v8 usingKey:@"TaskDescription" forKeyPath:@"payloadTaskDescription" isRequired:0 defaultValue:0 error:a5]&& [(RMModelPayloadBase *)self loadStringFromDictionary:v8 usingKey:@"ExecutableAssetReference" forKeyPath:@"payloadExecutableAssetReference" isRequired:0 defaultValue:0 error:a5])
  {
    LOWORD(v16) = a4;
    v14 = [(RMModelPayloadBase *)self loadArrayFromDictionary:v8 usingKey:@"LaunchdConfigurations" forKeyPath:@"payloadLaunchdConfigurations" classType:objc_opt_class() nested:0 isRequired:0 defaultValue:0 serializationType:v16 error:a5];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (id)serializePayloadWithType:(signed __int16)a3
{
  v5 = objc_opt_new();
  v6 = [(RMModelServicesBackgroundTasksDeclaration *)self payloadTaskType];
  [(RMModelPayloadBase *)self serializeStringIntoDictionary:v5 usingKey:@"TaskType" value:v6 isRequired:1 defaultValue:0];

  v7 = [(RMModelServicesBackgroundTasksDeclaration *)self payloadTaskDescription];
  [(RMModelPayloadBase *)self serializeStringIntoDictionary:v5 usingKey:@"TaskDescription" value:v7 isRequired:0 defaultValue:0];

  v8 = [(RMModelServicesBackgroundTasksDeclaration *)self payloadExecutableAssetReference];
  [(RMModelPayloadBase *)self serializeStringIntoDictionary:v5 usingKey:@"ExecutableAssetReference" value:v8 isRequired:0 defaultValue:0];

  v9 = [(RMModelServicesBackgroundTasksDeclaration *)self payloadLaunchdConfigurations];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __70__RMModelServicesBackgroundTasksDeclaration_serializePayloadWithType___block_invoke;
  v12[3] = &__block_descriptor_34_e77___NSDictionary_16__0__RMModelServicesBackgroundTasksDeclaration_LaunchdItem_8l;
  v13 = a3;
  [(RMModelPayloadBase *)self serializeArrayIntoDictionary:v5 usingKey:@"LaunchdConfigurations" value:v9 itemSerializer:v12 isRequired:0 defaultValue:0];

  v10 = [v5 copy];

  return v10;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v14.receiver = self;
  v14.super_class = RMModelServicesBackgroundTasksDeclaration;
  v4 = [(RMModelDeclarationBase *)&v14 copyWithZone:a3];
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