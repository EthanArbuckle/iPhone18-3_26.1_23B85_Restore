@interface RMProtocolDeclarationItemsResponse_Declarations
+ (NSSet)allowedResponseKeys;
+ (id)buildRequiredOnlyWithActivations:(id)activations configurations:(id)configurations assets:(id)assets management:(id)management;
+ (id)buildWithActivations:(id)activations configurations:(id)configurations assets:(id)assets management:(id)management;
- (BOOL)loadFromDictionary:(id)dictionary serializationType:(signed __int16)type error:(id *)error;
- (id)copyWithZone:(_NSZone *)zone;
- (id)serializeWithType:(signed __int16)type;
@end

@implementation RMProtocolDeclarationItemsResponse_Declarations

+ (NSSet)allowedResponseKeys
{
  v7[4] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CBEB98];
  v7[0] = @"Activations";
  v7[1] = @"Configurations";
  v7[2] = @"Assets";
  v7[3] = @"Management";
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:4];
  v4 = [v2 setWithArray:v3];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

+ (id)buildWithActivations:(id)activations configurations:(id)configurations assets:(id)assets management:(id)management
{
  managementCopy = management;
  assetsCopy = assets;
  configurationsCopy = configurations;
  activationsCopy = activations;
  v13 = objc_opt_new();
  [v13 setResponseActivations:activationsCopy];

  [v13 setResponseConfigurations:configurationsCopy];
  [v13 setResponseAssets:assetsCopy];

  [v13 setResponseManagement:managementCopy];

  return v13;
}

+ (id)buildRequiredOnlyWithActivations:(id)activations configurations:(id)configurations assets:(id)assets management:(id)management
{
  managementCopy = management;
  assetsCopy = assets;
  configurationsCopy = configurations;
  activationsCopy = activations;
  v13 = objc_opt_new();
  [v13 setResponseActivations:activationsCopy];

  [v13 setResponseConfigurations:configurationsCopy];
  [v13 setResponseAssets:assetsCopy];

  [v13 setResponseManagement:managementCopy];

  return v13;
}

- (BOOL)loadFromDictionary:(id)dictionary serializationType:(signed __int16)type error:(id *)error
{
  v23[1] = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  v9 = MEMORY[0x277CBEB58];
  allKeys = [dictionaryCopy allKeys];
  v11 = [v9 setWithArray:allKeys];

  v12 = +[RMProtocolDeclarationItemsResponse_Declarations allowedResponseKeys];
  [v11 minusSet:v12];

  if ([v11 count])
  {
    if (error)
    {
      v13 = MEMORY[0x277CCA9B8];
      v22 = *MEMORY[0x277CCA450];
      v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unexpected payload keys: %@", v11];
      v23[0] = v14;
      v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:&v22 count:1];
      *error = [v13 errorWithDomain:@"error" code:1 userInfo:v15];

LABEL_8:
      LOBYTE(error) = 0;
    }
  }

  else
  {
    LOWORD(v18) = type;
    if (![(RMModelPayloadBase *)self loadArrayFromDictionary:dictionaryCopy usingKey:@"Activations" forKeyPath:@"responseActivations" classType:objc_opt_class() nested:0 isRequired:1 defaultValue:0 serializationType:v18 error:error])
    {
      goto LABEL_8;
    }

    LOWORD(v19) = type;
    if (![(RMModelPayloadBase *)self loadArrayFromDictionary:dictionaryCopy usingKey:@"Configurations" forKeyPath:@"responseConfigurations" classType:objc_opt_class() nested:0 isRequired:1 defaultValue:0 serializationType:v19 error:error])
    {
      goto LABEL_8;
    }

    LOWORD(v20) = type;
    if (![(RMModelPayloadBase *)self loadArrayFromDictionary:dictionaryCopy usingKey:@"Assets" forKeyPath:@"responseAssets" classType:objc_opt_class() nested:0 isRequired:1 defaultValue:0 serializationType:v20 error:error])
    {
      goto LABEL_8;
    }

    LOWORD(v21) = type;
    LOBYTE(error) = [(RMModelPayloadBase *)self loadArrayFromDictionary:dictionaryCopy usingKey:@"Management" forKeyPath:@"responseManagement" classType:objc_opt_class() nested:0 isRequired:1 defaultValue:0 serializationType:v21 error:error];
  }

  v16 = *MEMORY[0x277D85DE8];
  return error;
}

- (id)serializeWithType:(signed __int16)type
{
  v5 = objc_opt_new();
  responseActivations = [(RMProtocolDeclarationItemsResponse_Declarations *)self responseActivations];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __69__RMProtocolDeclarationItemsResponse_Declarations_serializeWithType___block_invoke;
  v18[3] = &__block_descriptor_34_e74___NSDictionary_16__0__RMProtocolDeclarationItemsResponse_DeclarationItem_8l;
  typeCopy = type;
  [(RMModelPayloadBase *)self serializeArrayIntoDictionary:v5 usingKey:@"Activations" value:responseActivations itemSerializer:v18 isRequired:1 defaultValue:0];

  responseConfigurations = [(RMProtocolDeclarationItemsResponse_Declarations *)self responseConfigurations];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __69__RMProtocolDeclarationItemsResponse_Declarations_serializeWithType___block_invoke_2;
  v16[3] = &__block_descriptor_34_e74___NSDictionary_16__0__RMProtocolDeclarationItemsResponse_DeclarationItem_8l;
  typeCopy2 = type;
  [(RMModelPayloadBase *)self serializeArrayIntoDictionary:v5 usingKey:@"Configurations" value:responseConfigurations itemSerializer:v16 isRequired:1 defaultValue:0];

  responseAssets = [(RMProtocolDeclarationItemsResponse_Declarations *)self responseAssets];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __69__RMProtocolDeclarationItemsResponse_Declarations_serializeWithType___block_invoke_3;
  v14[3] = &__block_descriptor_34_e74___NSDictionary_16__0__RMProtocolDeclarationItemsResponse_DeclarationItem_8l;
  typeCopy3 = type;
  [(RMModelPayloadBase *)self serializeArrayIntoDictionary:v5 usingKey:@"Assets" value:responseAssets itemSerializer:v14 isRequired:1 defaultValue:0];

  responseManagement = [(RMProtocolDeclarationItemsResponse_Declarations *)self responseManagement];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __69__RMProtocolDeclarationItemsResponse_Declarations_serializeWithType___block_invoke_4;
  v12[3] = &__block_descriptor_34_e74___NSDictionary_16__0__RMProtocolDeclarationItemsResponse_DeclarationItem_8l;
  typeCopy4 = type;
  [(RMModelPayloadBase *)self serializeArrayIntoDictionary:v5 usingKey:@"Management" value:responseManagement itemSerializer:v12 isRequired:1 defaultValue:0];

  v10 = [v5 copy];

  return v10;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v14.receiver = self;
  v14.super_class = RMProtocolDeclarationItemsResponse_Declarations;
  v4 = [(RMModelPayloadBase *)&v14 copyWithZone:zone];
  v5 = [(NSArray *)self->_responseActivations copy];
  v6 = v4[2];
  v4[2] = v5;

  v7 = [(NSArray *)self->_responseConfigurations copy];
  v8 = v4[3];
  v4[3] = v7;

  v9 = [(NSArray *)self->_responseAssets copy];
  v10 = v4[4];
  v4[4] = v9;

  v11 = [(NSArray *)self->_responseManagement copy];
  v12 = v4[5];
  v4[5] = v11;

  return v4;
}

@end