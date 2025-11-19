@interface RMModelStatusManagementClientCapabilities_SupportedPayloadsDeclarations
+ (NSSet)allowedStatusKeys;
+ (id)buildRequiredOnly;
+ (id)buildWithActivations:(id)a3 assets:(id)a4 configurations:(id)a5 management:(id)a6;
- (BOOL)loadFromDictionary:(id)a3 serializationType:(signed __int16)a4 error:(id *)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (id)serializeWithType:(signed __int16)a3;
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

+ (id)buildWithActivations:(id)a3 assets:(id)a4 configurations:(id)a5 management:(id)a6
{
  v9 = a6;
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v13 = objc_opt_new();
  [v13 setStatusActivations:v12];

  [v13 setStatusAssets:v11];
  [v13 setStatusConfigurations:v10];

  [v13 setStatusManagement:v9];

  return v13;
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

  v11 = +[RMModelStatusManagementClientCapabilities_SupportedPayloadsDeclarations allowedStatusKeys];
  [v10 minusSet:v11];

  v12 = [v10 copy];
  [(RMModelPayloadBase *)self setUnknownPayloadKeys:v12];

  v13 = [(RMModelPayloadBase *)self loadArrayFromDictionary:v7 usingKey:@"activations" forKeyPath:@"statusActivations" validator:&__block_literal_global_166_0 isRequired:0 defaultValue:0 error:a5]&& [(RMModelPayloadBase *)self loadArrayFromDictionary:v7 usingKey:@"assets" forKeyPath:@"statusAssets" validator:&__block_literal_global_171 isRequired:0 defaultValue:0 error:a5]&& [(RMModelPayloadBase *)self loadArrayFromDictionary:v7 usingKey:@"configurations" forKeyPath:@"statusConfigurations" validator:&__block_literal_global_176 isRequired:0 defaultValue:0 error:a5]&& [(RMModelPayloadBase *)self loadArrayFromDictionary:v7 usingKey:@"management" forKeyPath:@"statusManagement" validator:&__block_literal_global_181 isRequired:0 defaultValue:0 error:a5];
  return v13;
}

- (id)serializeWithType:(signed __int16)a3
{
  v4 = objc_opt_new();
  v5 = [(RMModelStatusManagementClientCapabilities_SupportedPayloadsDeclarations *)self statusActivations];
  [(RMModelPayloadBase *)self serializeArrayIntoDictionary:v4 usingKey:@"activations" value:v5 itemSerializer:&__block_literal_global_183 isRequired:0 defaultValue:0];

  v6 = [(RMModelStatusManagementClientCapabilities_SupportedPayloadsDeclarations *)self statusAssets];
  [(RMModelPayloadBase *)self serializeArrayIntoDictionary:v4 usingKey:@"assets" value:v6 itemSerializer:&__block_literal_global_185 isRequired:0 defaultValue:0];

  v7 = [(RMModelStatusManagementClientCapabilities_SupportedPayloadsDeclarations *)self statusConfigurations];
  [(RMModelPayloadBase *)self serializeArrayIntoDictionary:v4 usingKey:@"configurations" value:v7 itemSerializer:&__block_literal_global_187 isRequired:0 defaultValue:0];

  v8 = [(RMModelStatusManagementClientCapabilities_SupportedPayloadsDeclarations *)self statusManagement];
  [(RMModelPayloadBase *)self serializeArrayIntoDictionary:v4 usingKey:@"management" value:v8 itemSerializer:&__block_literal_global_189 isRequired:0 defaultValue:0];

  v9 = [v4 copy];

  return v9;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v14.receiver = self;
  v14.super_class = RMModelStatusManagementClientCapabilities_SupportedPayloadsDeclarations;
  v4 = [(RMModelPayloadBase *)&v14 copyWithZone:a3];
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