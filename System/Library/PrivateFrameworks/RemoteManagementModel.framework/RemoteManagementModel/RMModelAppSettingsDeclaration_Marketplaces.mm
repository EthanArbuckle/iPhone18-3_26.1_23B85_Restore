@interface RMModelAppSettingsDeclaration_Marketplaces
+ (NSSet)allowedPayloadKeys;
+ (id)buildRequiredOnly;
+ (id)buildWithEnabled:(id)enabled allowedMarketplaceApps:(id)apps deniedMarketplaceApps:(id)marketplaceApps;
- (BOOL)loadFromDictionary:(id)dictionary serializationType:(signed __int16)type error:(id *)error;
- (id)copyWithZone:(_NSZone *)zone;
- (id)serializeWithType:(signed __int16)type;
- (void)combineWithOther:(id)other;
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

+ (id)buildWithEnabled:(id)enabled allowedMarketplaceApps:(id)apps deniedMarketplaceApps:(id)marketplaceApps
{
  marketplaceAppsCopy = marketplaceApps;
  appsCopy = apps;
  enabledCopy = enabled;
  v10 = objc_opt_new();
  v11 = v10;
  if (enabledCopy)
  {
    v12 = enabledCopy;
  }

  else
  {
    v12 = MEMORY[0x277CBEC38];
  }

  [v10 setPayloadEnabled:v12];

  [v11 setPayloadAllowedMarketplaceApps:appsCopy];
  [v11 setPayloadDeniedMarketplaceApps:marketplaceAppsCopy];

  return v11;
}

+ (id)buildRequiredOnly
{
  v2 = objc_opt_new();

  return v2;
}

- (BOOL)loadFromDictionary:(id)dictionary serializationType:(signed __int16)type error:(id *)error
{
  dictionaryCopy = dictionary;
  v8 = MEMORY[0x277CBEB58];
  allKeys = [dictionaryCopy allKeys];
  v10 = [v8 setWithArray:allKeys];

  v11 = +[RMModelAppSettingsDeclaration_Marketplaces allowedPayloadKeys];
  [v10 minusSet:v11];

  v12 = [v10 copy];
  [(RMModelPayloadBase *)self setUnknownPayloadKeys:v12];

  v13 = [(RMModelPayloadBase *)self loadBooleanFromDictionary:dictionaryCopy usingKey:@"Enabled" forKeyPath:@"payloadEnabled" isRequired:0 defaultValue:MEMORY[0x277CBEC38] error:error]&& [(RMModelPayloadBase *)self loadArrayFromDictionary:dictionaryCopy usingKey:@"AllowedMarketplaceApps" forKeyPath:@"payloadAllowedMarketplaceApps" validator:&__block_literal_global_9 isRequired:0 defaultValue:0 error:error]&& [(RMModelPayloadBase *)self loadArrayFromDictionary:dictionaryCopy usingKey:@"DeniedMarketplaceApps" forKeyPath:@"payloadDeniedMarketplaceApps" validator:&__block_literal_global_136 isRequired:0 defaultValue:0 error:error];
  return v13;
}

- (id)serializeWithType:(signed __int16)type
{
  v4 = objc_opt_new();
  payloadEnabled = [(RMModelAppSettingsDeclaration_Marketplaces *)self payloadEnabled];
  [(RMModelPayloadBase *)self serializeBooleanIntoDictionary:v4 usingKey:@"Enabled" value:payloadEnabled isRequired:0 defaultValue:MEMORY[0x277CBEC38]];

  payloadAllowedMarketplaceApps = [(RMModelAppSettingsDeclaration_Marketplaces *)self payloadAllowedMarketplaceApps];
  [(RMModelPayloadBase *)self serializeArrayIntoDictionary:v4 usingKey:@"AllowedMarketplaceApps" value:payloadAllowedMarketplaceApps itemSerializer:&__block_literal_global_139 isRequired:0 defaultValue:0];

  payloadDeniedMarketplaceApps = [(RMModelAppSettingsDeclaration_Marketplaces *)self payloadDeniedMarketplaceApps];
  [(RMModelPayloadBase *)self serializeArrayIntoDictionary:v4 usingKey:@"DeniedMarketplaceApps" value:payloadDeniedMarketplaceApps itemSerializer:&__block_literal_global_141 isRequired:0 defaultValue:0];

  v8 = [v4 copy];

  return v8;
}

- (void)combineWithOther:(id)other
{
  otherCopy = other;
  payloadEnabled = [(RMModelAppSettingsDeclaration_Marketplaces *)self payloadEnabled];
  payloadEnabled2 = [otherCopy payloadEnabled];
  v7 = [RMModelConfigurationBase combineFirst:payloadEnabled other:payloadEnabled2];
  [(RMModelAppSettingsDeclaration_Marketplaces *)self setPayloadEnabled:v7];

  payloadAllowedMarketplaceApps = [(RMModelAppSettingsDeclaration_Marketplaces *)self payloadAllowedMarketplaceApps];
  payloadAllowedMarketplaceApps2 = [otherCopy payloadAllowedMarketplaceApps];
  v10 = [RMModelConfigurationBase combineSetIntersection:payloadAllowedMarketplaceApps other:payloadAllowedMarketplaceApps2];
  [(RMModelAppSettingsDeclaration_Marketplaces *)self setPayloadAllowedMarketplaceApps:v10];

  payloadDeniedMarketplaceApps = [(RMModelAppSettingsDeclaration_Marketplaces *)self payloadDeniedMarketplaceApps];
  payloadDeniedMarketplaceApps2 = [otherCopy payloadDeniedMarketplaceApps];

  v12 = [RMModelConfigurationBase combineSetUnion:payloadDeniedMarketplaceApps other:payloadDeniedMarketplaceApps2];
  [(RMModelAppSettingsDeclaration_Marketplaces *)self setPayloadDeniedMarketplaceApps:v12];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v12.receiver = self;
  v12.super_class = RMModelAppSettingsDeclaration_Marketplaces;
  v4 = [(RMModelPayloadBase *)&v12 copyWithZone:zone];
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