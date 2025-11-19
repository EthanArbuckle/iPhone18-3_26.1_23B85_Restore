@interface RMModelAppSettingsDeclaration_Marketplaces
+ (NSSet)allowedPayloadKeys;
+ (id)buildRequiredOnly;
+ (id)buildWithEnabled:(id)a3 allowedMarketplaceApps:(id)a4 deniedMarketplaceApps:(id)a5;
- (BOOL)loadFromDictionary:(id)a3 serializationType:(signed __int16)a4 error:(id *)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (id)serializeWithType:(signed __int16)a3;
- (void)combineWithOther:(id)a3;
@end

@implementation RMModelAppSettingsDeclaration_Marketplaces

+ (NSSet)allowedPayloadKeys
{
  v7[3] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CBEB98];
  v7[0] = @"Enabled";
  v7[1] = @"AllowedMarketplaceApps";
  v7[2] = @"DeniedMarketplaceApps";
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:3];
  v4 = [v2 setWithArray:v3];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

+ (id)buildWithEnabled:(id)a3 allowedMarketplaceApps:(id)a4 deniedMarketplaceApps:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = objc_opt_new();
  v11 = v10;
  if (v9)
  {
    v12 = v9;
  }

  else
  {
    v12 = MEMORY[0x277CBEC38];
  }

  [v10 setPayloadEnabled:v12];

  [v11 setPayloadAllowedMarketplaceApps:v8];
  [v11 setPayloadDeniedMarketplaceApps:v7];

  return v11;
}

+ (id)buildRequiredOnly
{
  v2 = objc_opt_new();

  return v2;
}

- (BOOL)loadFromDictionary:(id)a3 serializationType:(signed __int16)a4 error:(id *)a5
{
  v7 = a3;
  v8 = MEMORY[0x277CBEB58];
  v9 = [v7 allKeys];
  v10 = [v8 setWithArray:v9];

  v11 = +[RMModelAppSettingsDeclaration_Marketplaces allowedPayloadKeys];
  [v10 minusSet:v11];

  v12 = [v10 copy];
  [(RMModelPayloadBase *)self setUnknownPayloadKeys:v12];

  v13 = [(RMModelPayloadBase *)self loadBooleanFromDictionary:v7 usingKey:@"Enabled" forKeyPath:@"payloadEnabled" isRequired:0 defaultValue:MEMORY[0x277CBEC38] error:a5]&& [(RMModelPayloadBase *)self loadArrayFromDictionary:v7 usingKey:@"AllowedMarketplaceApps" forKeyPath:@"payloadAllowedMarketplaceApps" validator:&__block_literal_global_9 isRequired:0 defaultValue:0 error:a5]&& [(RMModelPayloadBase *)self loadArrayFromDictionary:v7 usingKey:@"DeniedMarketplaceApps" forKeyPath:@"payloadDeniedMarketplaceApps" validator:&__block_literal_global_136 isRequired:0 defaultValue:0 error:a5];
  return v13;
}

- (id)serializeWithType:(signed __int16)a3
{
  v4 = objc_opt_new();
  v5 = [(RMModelAppSettingsDeclaration_Marketplaces *)self payloadEnabled];
  [(RMModelPayloadBase *)self serializeBooleanIntoDictionary:v4 usingKey:@"Enabled" value:v5 isRequired:0 defaultValue:MEMORY[0x277CBEC38]];

  v6 = [(RMModelAppSettingsDeclaration_Marketplaces *)self payloadAllowedMarketplaceApps];
  [(RMModelPayloadBase *)self serializeArrayIntoDictionary:v4 usingKey:@"AllowedMarketplaceApps" value:v6 itemSerializer:&__block_literal_global_139 isRequired:0 defaultValue:0];

  v7 = [(RMModelAppSettingsDeclaration_Marketplaces *)self payloadDeniedMarketplaceApps];
  [(RMModelPayloadBase *)self serializeArrayIntoDictionary:v4 usingKey:@"DeniedMarketplaceApps" value:v7 itemSerializer:&__block_literal_global_141 isRequired:0 defaultValue:0];

  v8 = [v4 copy];

  return v8;
}

- (void)combineWithOther:(id)a3
{
  v4 = a3;
  v5 = [(RMModelAppSettingsDeclaration_Marketplaces *)self payloadEnabled];
  v6 = [v4 payloadEnabled];
  v7 = [RMModelConfigurationBase combineFirst:v5 other:v6];
  [(RMModelAppSettingsDeclaration_Marketplaces *)self setPayloadEnabled:v7];

  v8 = [(RMModelAppSettingsDeclaration_Marketplaces *)self payloadAllowedMarketplaceApps];
  v9 = [v4 payloadAllowedMarketplaceApps];
  v10 = [RMModelConfigurationBase combineSetIntersection:v8 other:v9];
  [(RMModelAppSettingsDeclaration_Marketplaces *)self setPayloadAllowedMarketplaceApps:v10];

  v13 = [(RMModelAppSettingsDeclaration_Marketplaces *)self payloadDeniedMarketplaceApps];
  v11 = [v4 payloadDeniedMarketplaceApps];

  v12 = [RMModelConfigurationBase combineSetUnion:v13 other:v11];
  [(RMModelAppSettingsDeclaration_Marketplaces *)self setPayloadDeniedMarketplaceApps:v12];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v12.receiver = self;
  v12.super_class = RMModelAppSettingsDeclaration_Marketplaces;
  v4 = [(RMModelPayloadBase *)&v12 copyWithZone:a3];
  v5 = [(NSNumber *)self->_payloadEnabled copy];
  v6 = v4[2];
  v4[2] = v5;

  v7 = [(NSArray *)self->_payloadAllowedMarketplaceApps copy];
  v8 = v4[3];
  v4[3] = v7;

  v9 = [(NSArray *)self->_payloadDeniedMarketplaceApps copy];
  v10 = v4[4];
  v4[4] = v9;

  return v4;
}

@end