@interface RMProtocolDeclarationItemsResponse_Declarations
+ (NSSet)allowedResponseKeys;
+ (id)buildRequiredOnlyWithActivations:(id)a3 configurations:(id)a4 assets:(id)a5 management:(id)a6;
+ (id)buildWithActivations:(id)a3 configurations:(id)a4 assets:(id)a5 management:(id)a6;
- (BOOL)loadFromDictionary:(id)a3 serializationType:(signed __int16)a4 error:(id *)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (id)serializeWithType:(signed __int16)a3;
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

+ (id)buildWithActivations:(id)a3 configurations:(id)a4 assets:(id)a5 management:(id)a6
{
  v9 = a6;
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v13 = objc_opt_new();
  [v13 setResponseActivations:v12];

  [v13 setResponseConfigurations:v11];
  [v13 setResponseAssets:v10];

  [v13 setResponseManagement:v9];

  return v13;
}

+ (id)buildRequiredOnlyWithActivations:(id)a3 configurations:(id)a4 assets:(id)a5 management:(id)a6
{
  v9 = a6;
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v13 = objc_opt_new();
  [v13 setResponseActivations:v12];

  [v13 setResponseConfigurations:v11];
  [v13 setResponseAssets:v10];

  [v13 setResponseManagement:v9];

  return v13;
}

- (BOOL)loadFromDictionary:(id)a3 serializationType:(signed __int16)a4 error:(id *)a5
{
  v23[1] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = MEMORY[0x277CBEB58];
  v10 = [v8 allKeys];
  v11 = [v9 setWithArray:v10];

  v12 = +[RMProtocolDeclarationItemsResponse_Declarations allowedResponseKeys];
  [v11 minusSet:v12];

  if ([v11 count])
  {
    if (a5)
    {
      v13 = MEMORY[0x277CCA9B8];
      v22 = *MEMORY[0x277CCA450];
      v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unexpected payload keys: %@", v11];
      v23[0] = v14;
      v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:&v22 count:1];
      *a5 = [v13 errorWithDomain:@"error" code:1 userInfo:v15];

LABEL_8:
      LOBYTE(a5) = 0;
    }
  }

  else
  {
    LOWORD(v18) = a4;
    if (![(RMModelPayloadBase *)self loadArrayFromDictionary:v8 usingKey:@"Activations" forKeyPath:@"responseActivations" classType:objc_opt_class() nested:0 isRequired:1 defaultValue:0 serializationType:v18 error:a5])
    {
      goto LABEL_8;
    }

    LOWORD(v19) = a4;
    if (![(RMModelPayloadBase *)self loadArrayFromDictionary:v8 usingKey:@"Configurations" forKeyPath:@"responseConfigurations" classType:objc_opt_class() nested:0 isRequired:1 defaultValue:0 serializationType:v19 error:a5])
    {
      goto LABEL_8;
    }

    LOWORD(v20) = a4;
    if (![(RMModelPayloadBase *)self loadArrayFromDictionary:v8 usingKey:@"Assets" forKeyPath:@"responseAssets" classType:objc_opt_class() nested:0 isRequired:1 defaultValue:0 serializationType:v20 error:a5])
    {
      goto LABEL_8;
    }

    LOWORD(v21) = a4;
    LOBYTE(a5) = [(RMModelPayloadBase *)self loadArrayFromDictionary:v8 usingKey:@"Management" forKeyPath:@"responseManagement" classType:objc_opt_class() nested:0 isRequired:1 defaultValue:0 serializationType:v21 error:a5];
  }

  v16 = *MEMORY[0x277D85DE8];
  return a5;
}

- (id)serializeWithType:(signed __int16)a3
{
  v5 = objc_opt_new();
  v6 = [(RMProtocolDeclarationItemsResponse_Declarations *)self responseActivations];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __69__RMProtocolDeclarationItemsResponse_Declarations_serializeWithType___block_invoke;
  v18[3] = &__block_descriptor_34_e74___NSDictionary_16__0__RMProtocolDeclarationItemsResponse_DeclarationItem_8l;
  v19 = a3;
  [(RMModelPayloadBase *)self serializeArrayIntoDictionary:v5 usingKey:@"Activations" value:v6 itemSerializer:v18 isRequired:1 defaultValue:0];

  v7 = [(RMProtocolDeclarationItemsResponse_Declarations *)self responseConfigurations];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __69__RMProtocolDeclarationItemsResponse_Declarations_serializeWithType___block_invoke_2;
  v16[3] = &__block_descriptor_34_e74___NSDictionary_16__0__RMProtocolDeclarationItemsResponse_DeclarationItem_8l;
  v17 = a3;
  [(RMModelPayloadBase *)self serializeArrayIntoDictionary:v5 usingKey:@"Configurations" value:v7 itemSerializer:v16 isRequired:1 defaultValue:0];

  v8 = [(RMProtocolDeclarationItemsResponse_Declarations *)self responseAssets];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __69__RMProtocolDeclarationItemsResponse_Declarations_serializeWithType___block_invoke_3;
  v14[3] = &__block_descriptor_34_e74___NSDictionary_16__0__RMProtocolDeclarationItemsResponse_DeclarationItem_8l;
  v15 = a3;
  [(RMModelPayloadBase *)self serializeArrayIntoDictionary:v5 usingKey:@"Assets" value:v8 itemSerializer:v14 isRequired:1 defaultValue:0];

  v9 = [(RMProtocolDeclarationItemsResponse_Declarations *)self responseManagement];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __69__RMProtocolDeclarationItemsResponse_Declarations_serializeWithType___block_invoke_4;
  v12[3] = &__block_descriptor_34_e74___NSDictionary_16__0__RMProtocolDeclarationItemsResponse_DeclarationItem_8l;
  v13 = a3;
  [(RMModelPayloadBase *)self serializeArrayIntoDictionary:v5 usingKey:@"Management" value:v9 itemSerializer:v12 isRequired:1 defaultValue:0];

  v10 = [v5 copy];

  return v10;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v14.receiver = self;
  v14.super_class = RMProtocolDeclarationItemsResponse_Declarations;
  v4 = [(RMModelPayloadBase *)&v14 copyWithZone:a3];
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