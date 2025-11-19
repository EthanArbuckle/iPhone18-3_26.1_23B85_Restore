@interface RMModelPackageDeclaration
+ (NSSet)allowedPayloadKeys;
+ (id)assetTypes;
+ (id)buildRequiredOnlyWithIdentifier:(id)a3 manifestURL:(id)a4;
+ (id)buildWithIdentifier:(id)a3 manifestURL:(id)a4 installBehavior:(id)a5 repairBehavior:(id)a6 uninstallBehavior:(id)a7;
+ (id)supportedOS;
- (BOOL)loadPayloadFromDictionary:(id)a3 serializationType:(signed __int16)a4 error:(id *)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (id)serializePayloadWithType:(signed __int16)a3;
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

+ (id)buildWithIdentifier:(id)a3 manifestURL:(id)a4 installBehavior:(id)a5 repairBehavior:(id)a6 uninstallBehavior:(id)a7
{
  v11 = a3;
  v12 = a7;
  v13 = a6;
  v14 = a5;
  v15 = a4;
  v16 = objc_opt_new();
  [v16 setDeclarationType:@"com.apple.configuration.package"];
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

  [v16 setPayloadManifestURL:v15];

  [v16 setPayloadInstallBehavior:v14];
  [v16 setPayloadRepairBehavior:v13];

  [v16 setPayloadUninstallBehavior:v12];
  [v16 updateServerToken];

  return v16;
}

+ (id)buildRequiredOnlyWithIdentifier:(id)a3 manifestURL:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = objc_opt_new();
  [v7 setDeclarationType:@"com.apple.configuration.package"];
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

  [v7 setPayloadManifestURL:v6];

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

- (BOOL)loadPayloadFromDictionary:(id)a3 serializationType:(signed __int16)a4 error:(id *)a5
{
  v8 = a3;
  v9 = MEMORY[0x277CBEB58];
  v10 = [v8 allKeys];
  v11 = [v9 setWithArray:v10];

  v12 = +[RMModelPackageDeclaration allowedPayloadKeys];
  [v11 minusSet:v12];

  v13 = [v11 copy];
  [(RMModelPayloadBase *)self setUnknownPayloadKeys:v13];

  if ([(RMModelPayloadBase *)self loadStringFromDictionary:v8 usingKey:@"ManifestURL" forKeyPath:@"payloadManifestURL" isRequired:1 defaultValue:0 error:a5]&& (LOWORD(v16) = a4, [(RMModelPayloadBase *)self loadDictionaryFromDictionary:v8 usingKey:@"InstallBehavior" forKeyPath:@"payloadInstallBehavior" classType:objc_opt_class() isRequired:0 defaultValue:0 serializationType:v16 error:a5]) && (LOWORD(v17) = a4, [(RMModelPayloadBase *)self loadDictionaryFromDictionary:v8 usingKey:@"RepairBehavior" forKeyPath:@"payloadRepairBehavior" classType:objc_opt_class() isRequired:0 defaultValue:0 serializationType:v17 error:a5]))
  {
    LOWORD(v18) = a4;
    v14 = [(RMModelPayloadBase *)self loadDictionaryFromDictionary:v8 usingKey:@"UninstallBehavior" forKeyPath:@"payloadUninstallBehavior" classType:objc_opt_class() isRequired:0 defaultValue:0 serializationType:v18 error:a5];
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
  v6 = [(RMModelPackageDeclaration *)self payloadManifestURL];
  [(RMModelPayloadBase *)self serializeStringIntoDictionary:v5 usingKey:@"ManifestURL" value:v6 isRequired:1 defaultValue:0];

  v7 = [(RMModelPackageDeclaration *)self payloadInstallBehavior];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __54__RMModelPackageDeclaration_serializePayloadWithType___block_invoke;
  v16[3] = &__block_descriptor_34_e42___NSDictionary_16__0__RMModelPayloadBase_8l;
  v17 = a3;
  [(RMModelPayloadBase *)self serializeDictionaryIntoDictionary:v5 usingKey:@"InstallBehavior" value:v7 dictSerializer:v16 isRequired:0 defaultValue:0];

  v8 = [(RMModelPackageDeclaration *)self payloadRepairBehavior];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __54__RMModelPackageDeclaration_serializePayloadWithType___block_invoke_2;
  v14[3] = &__block_descriptor_34_e42___NSDictionary_16__0__RMModelPayloadBase_8l;
  v15 = a3;
  [(RMModelPayloadBase *)self serializeDictionaryIntoDictionary:v5 usingKey:@"RepairBehavior" value:v8 dictSerializer:v14 isRequired:0 defaultValue:0];

  v9 = [(RMModelPackageDeclaration *)self payloadUninstallBehavior];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __54__RMModelPackageDeclaration_serializePayloadWithType___block_invoke_3;
  v12[3] = &__block_descriptor_34_e42___NSDictionary_16__0__RMModelPayloadBase_8l;
  v13 = a3;
  [(RMModelPayloadBase *)self serializeDictionaryIntoDictionary:v5 usingKey:@"UninstallBehavior" value:v9 dictSerializer:v12 isRequired:0 defaultValue:0];

  v10 = [v5 copy];

  return v10;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v14.receiver = self;
  v14.super_class = RMModelPackageDeclaration;
  v4 = [(RMModelDeclarationBase *)&v14 copyWithZone:a3];
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