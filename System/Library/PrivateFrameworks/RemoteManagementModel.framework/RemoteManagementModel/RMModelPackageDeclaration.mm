@interface RMModelPackageDeclaration
+ (NSSet)allowedPayloadKeys;
+ (id)assetTypes;
+ (id)buildRequiredOnlyWithIdentifier:(id)identifier manifestURL:(id)l;
+ (id)buildWithIdentifier:(id)identifier manifestURL:(id)l installBehavior:(id)behavior repairBehavior:(id)repairBehavior uninstallBehavior:(id)uninstallBehavior;
+ (id)supportedOS;
- (BOOL)loadPayloadFromDictionary:(id)dictionary serializationType:(signed __int16)type error:(id *)error;
- (id)copyWithZone:(_NSZone *)zone;
- (id)serializePayloadWithType:(signed __int16)type;
@end

@implementation RMModelPackageDeclaration

+ (NSSet)allowedPayloadKeys
{
  v7[4] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CBEB98];
  v7[0] = @"ManifestURL";
  v7[1] = @"InstallBehavior";
  v7[2] = @"RepairBehavior";
  v7[3] = @"UninstallBehavior";
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:4];
  v4 = [v2 setWithArray:v3];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

+ (id)assetTypes
{
  v2 = objc_opt_new();

  return v2;
}

+ (id)buildWithIdentifier:(id)identifier manifestURL:(id)l installBehavior:(id)behavior repairBehavior:(id)repairBehavior uninstallBehavior:(id)uninstallBehavior
{
  identifierCopy = identifier;
  uninstallBehaviorCopy = uninstallBehavior;
  repairBehaviorCopy = repairBehavior;
  behaviorCopy = behavior;
  lCopy = l;
  v16 = objc_opt_new();
  [v16 setDeclarationType:@"com.apple.configuration.package"];
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

  [v16 setPayloadManifestURL:lCopy];

  [v16 setPayloadInstallBehavior:behaviorCopy];
  [v16 setPayloadRepairBehavior:repairBehaviorCopy];

  [v16 setPayloadUninstallBehavior:uninstallBehaviorCopy];
  [v16 updateServerToken];

  return v16;
}

+ (id)buildRequiredOnlyWithIdentifier:(id)identifier manifestURL:(id)l
{
  identifierCopy = identifier;
  lCopy = l;
  v7 = objc_opt_new();
  [v7 setDeclarationType:@"com.apple.configuration.package"];
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

  [v7 setPayloadManifestURL:lCopy];

  [v7 updateServerToken];

  return v7;
}

+ (id)supportedOS
{
  v10[1] = *MEMORY[0x277D85DE8];
  v9 = &unk_28746B750;
  v2 = [MEMORY[0x277CBEB98] setWithArray:&unk_287467838];
  v8[0] = v2;
  v3 = [MEMORY[0x277CBEB98] setWithArray:&unk_287467850];
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

  v12 = +[RMModelPackageDeclaration allowedPayloadKeys];
  [v11 minusSet:v12];

  v13 = [v11 copy];
  [(RMModelPayloadBase *)self setUnknownPayloadKeys:v13];

  if ([(RMModelPayloadBase *)self loadStringFromDictionary:dictionaryCopy usingKey:@"ManifestURL" forKeyPath:@"payloadManifestURL" isRequired:1 defaultValue:0 error:error]&& (LOWORD(v16) = type, [(RMModelPayloadBase *)self loadDictionaryFromDictionary:dictionaryCopy usingKey:@"InstallBehavior" forKeyPath:@"payloadInstallBehavior" classType:objc_opt_class() isRequired:0 defaultValue:0 serializationType:v16 error:error]) && (LOWORD(v17) = type, [(RMModelPayloadBase *)self loadDictionaryFromDictionary:dictionaryCopy usingKey:@"RepairBehavior" forKeyPath:@"payloadRepairBehavior" classType:objc_opt_class() isRequired:0 defaultValue:0 serializationType:v17 error:error]))
  {
    LOWORD(v18) = type;
    v14 = [(RMModelPayloadBase *)self loadDictionaryFromDictionary:dictionaryCopy usingKey:@"UninstallBehavior" forKeyPath:@"payloadUninstallBehavior" classType:objc_opt_class() isRequired:0 defaultValue:0 serializationType:v18 error:error];
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
  payloadManifestURL = [(RMModelPackageDeclaration *)self payloadManifestURL];
  [(RMModelPayloadBase *)self serializeStringIntoDictionary:v5 usingKey:@"ManifestURL" value:payloadManifestURL isRequired:1 defaultValue:0];

  payloadInstallBehavior = [(RMModelPackageDeclaration *)self payloadInstallBehavior];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __54__RMModelPackageDeclaration_serializePayloadWithType___block_invoke;
  v16[3] = &__block_descriptor_34_e42___NSDictionary_16__0__RMModelPayloadBase_8l;
  typeCopy = type;
  [(RMModelPayloadBase *)self serializeDictionaryIntoDictionary:v5 usingKey:@"InstallBehavior" value:payloadInstallBehavior dictSerializer:v16 isRequired:0 defaultValue:0];

  payloadRepairBehavior = [(RMModelPackageDeclaration *)self payloadRepairBehavior];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __54__RMModelPackageDeclaration_serializePayloadWithType___block_invoke_2;
  v14[3] = &__block_descriptor_34_e42___NSDictionary_16__0__RMModelPayloadBase_8l;
  typeCopy2 = type;
  [(RMModelPayloadBase *)self serializeDictionaryIntoDictionary:v5 usingKey:@"RepairBehavior" value:payloadRepairBehavior dictSerializer:v14 isRequired:0 defaultValue:0];

  payloadUninstallBehavior = [(RMModelPackageDeclaration *)self payloadUninstallBehavior];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __54__RMModelPackageDeclaration_serializePayloadWithType___block_invoke_3;
  v12[3] = &__block_descriptor_34_e42___NSDictionary_16__0__RMModelPayloadBase_8l;
  typeCopy3 = type;
  [(RMModelPayloadBase *)self serializeDictionaryIntoDictionary:v5 usingKey:@"UninstallBehavior" value:payloadUninstallBehavior dictSerializer:v12 isRequired:0 defaultValue:0];

  v10 = [v5 copy];

  return v10;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v14.receiver = self;
  v14.super_class = RMModelPackageDeclaration;
  v4 = [(RMModelDeclarationBase *)&v14 copyWithZone:zone];
  v5 = [(NSString *)self->_payloadManifestURL copy];
  v6 = v4[6];
  v4[6] = v5;

  v7 = [(RMModelPackageDeclaration_InstallBehavior *)self->_payloadInstallBehavior copy];
  v8 = v4[7];
  v4[7] = v7;

  v9 = [(RMModelPackageDeclaration_RepairBehavior *)self->_payloadRepairBehavior copy];
  v10 = v4[8];
  v4[8] = v9;

  v11 = [(RMModelPackageDeclaration_UninstallBehavior *)self->_payloadUninstallBehavior copy];
  v12 = v4[9];
  v4[9] = v11;

  return v4;
}

@end