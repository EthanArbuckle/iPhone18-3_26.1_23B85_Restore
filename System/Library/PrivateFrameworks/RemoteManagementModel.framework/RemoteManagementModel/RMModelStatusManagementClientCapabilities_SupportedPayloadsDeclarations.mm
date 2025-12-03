@interface RMModelStatusManagementClientCapabilities_SupportedPayloadsDeclarations
+ (NSSet)allowedStatusKeys;
+ (id)buildRequiredOnly;
+ (id)buildWithActivations:(id)activations assets:(id)assets configurations:(id)configurations management:(id)management;
- (BOOL)loadFromDictionary:(id)dictionary serializationType:(signed __int16)type error:(id *)error;
- (id)copyWithZone:(_NSZone *)zone;
- (id)serializeWithType:(signed __int16)type;
@end

@implementation RMModelStatusManagementClientCapabilities_SupportedPayloadsDeclarations

+ (NSSet)allowedStatusKeys
{
  v7[4] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CBEB98];
  v7[0] = @"activations";
  v7[1] = @"assets";
  v7[2] = @"configurations";
  v7[3] = @"management";
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:4];
  v4 = [v2 setWithArray:v3];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

+ (id)buildWithActivations:(id)activations assets:(id)assets configurations:(id)configurations management:(id)management
{
  managementCopy = management;
  configurationsCopy = configurations;
  assetsCopy = assets;
  activationsCopy = activations;
  v13 = objc_opt_new();
  [v13 setStatusActivations:activationsCopy];

  [v13 setStatusAssets:assetsCopy];
  [v13 setStatusConfigurations:configurationsCopy];

  [v13 setStatusManagement:managementCopy];

  return v13;
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

  v11 = +[RMModelStatusManagementClientCapabilities_SupportedPayloadsDeclarations allowedStatusKeys];
  [v10 minusSet:v11];

  v12 = [v10 copy];
  [(RMModelPayloadBase *)self setUnknownPayloadKeys:v12];

  v13 = [(RMModelPayloadBase *)self loadArrayFromDictionary:dictionaryCopy usingKey:@"activations" forKeyPath:@"statusActivations" validator:&__block_literal_global_166_0 isRequired:0 defaultValue:0 error:error]&& [(RMModelPayloadBase *)self loadArrayFromDictionary:dictionaryCopy usingKey:@"assets" forKeyPath:@"statusAssets" validator:&__block_literal_global_171 isRequired:0 defaultValue:0 error:error]&& [(RMModelPayloadBase *)self loadArrayFromDictionary:dictionaryCopy usingKey:@"configurations" forKeyPath:@"statusConfigurations" validator:&__block_literal_global_176 isRequired:0 defaultValue:0 error:error]&& [(RMModelPayloadBase *)self loadArrayFromDictionary:dictionaryCopy usingKey:@"management" forKeyPath:@"statusManagement" validator:&__block_literal_global_181 isRequired:0 defaultValue:0 error:error];
  return v13;
}

- (id)serializeWithType:(signed __int16)type
{
  v4 = objc_opt_new();
  statusActivations = [(RMModelStatusManagementClientCapabilities_SupportedPayloadsDeclarations *)self statusActivations];
  [(RMModelPayloadBase *)self serializeArrayIntoDictionary:v4 usingKey:@"activations" value:statusActivations itemSerializer:&__block_literal_global_183 isRequired:0 defaultValue:0];

  statusAssets = [(RMModelStatusManagementClientCapabilities_SupportedPayloadsDeclarations *)self statusAssets];
  [(RMModelPayloadBase *)self serializeArrayIntoDictionary:v4 usingKey:@"assets" value:statusAssets itemSerializer:&__block_literal_global_185 isRequired:0 defaultValue:0];

  statusConfigurations = [(RMModelStatusManagementClientCapabilities_SupportedPayloadsDeclarations *)self statusConfigurations];
  [(RMModelPayloadBase *)self serializeArrayIntoDictionary:v4 usingKey:@"configurations" value:statusConfigurations itemSerializer:&__block_literal_global_187 isRequired:0 defaultValue:0];

  statusManagement = [(RMModelStatusManagementClientCapabilities_SupportedPayloadsDeclarations *)self statusManagement];
  [(RMModelPayloadBase *)self serializeArrayIntoDictionary:v4 usingKey:@"management" value:statusManagement itemSerializer:&__block_literal_global_189 isRequired:0 defaultValue:0];

  v9 = [v4 copy];

  return v9;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v14.receiver = self;
  v14.super_class = RMModelStatusManagementClientCapabilities_SupportedPayloadsDeclarations;
  v4 = [(RMModelPayloadBase *)&v14 copyWithZone:zone];
  v5 = [(NSArray *)self->_statusActivations copy];
  v6 = v4[2];
  v4[2] = v5;

  v7 = [(NSArray *)self->_statusAssets copy];
  v8 = v4[3];
  v4[3] = v7;

  v9 = [(NSArray *)self->_statusConfigurations copy];
  v10 = v4[4];
  v4[4] = v9;

  v11 = [(NSArray *)self->_statusManagement copy];
  v12 = v4[5];
  v4[5] = v11;

  return v4;
}

@end