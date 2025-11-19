@interface RMModelStatusManagementDeclarations
+ (NSSet)allowedStatusKeys;
+ (id)buildRequiredOnlyWithActivations:(id)a3 configurations:(id)a4 assets:(id)a5 management:(id)a6;
+ (id)buildWithActivations:(id)a3 configurations:(id)a4 assets:(id)a5 management:(id)a6;
+ (id)supportedOS;
- (BOOL)loadPayloadFromDictionary:(id)a3 serializationType:(signed __int16)a4 error:(id *)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (id)serializePayloadWithType:(signed __int16)a3;
@end

@implementation RMModelStatusManagementDeclarations

+ (NSSet)allowedStatusKeys
{
  v7[4] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CBEB98];
  v7[0] = @"activations";
  v7[1] = @"configurations";
  v7[2] = @"assets";
  v7[3] = @"management";
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
  [v13 setStatusActivations:v12];

  [v13 setStatusConfigurations:v11];
  [v13 setStatusAssets:v10];

  [v13 setStatusManagement:v9];

  return v13;
}

+ (id)buildRequiredOnlyWithActivations:(id)a3 configurations:(id)a4 assets:(id)a5 management:(id)a6
{
  v9 = a6;
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v13 = objc_opt_new();
  [v13 setStatusActivations:v12];

  [v13 setStatusConfigurations:v11];
  [v13 setStatusAssets:v10];

  [v13 setStatusManagement:v9];

  return v13;
}

+ (id)supportedOS
{
  v30[6] = *MEMORY[0x277D85DE8];
  v29[0] = &unk_28746C920;
  v22 = [MEMORY[0x277CBEB98] setWithArray:&unk_2874695F0];
  v28[0] = v22;
  v21 = [MEMORY[0x277CBEB98] setWithArray:&unk_287469608];
  v28[1] = v21;
  v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:2];
  v30[0] = v20;
  v29[1] = &unk_28746C938;
  v19 = [MEMORY[0x277CBEB98] setWithArray:&unk_287469620];
  v27[0] = v19;
  v18 = [MEMORY[0x277CBEB98] setWithArray:&unk_287469638];
  v27[1] = v18;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v27 count:2];
  v30[1] = v17;
  v29[2] = &unk_28746C968;
  v16 = [MEMORY[0x277CBEB98] setWithArray:&unk_287469650];
  v26[0] = v16;
  v15 = [MEMORY[0x277CBEB98] setWithArray:&unk_287469668];
  v26[1] = v15;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:2];
  v30[2] = v14;
  v29[3] = &unk_28746C950;
  v2 = [MEMORY[0x277CBEB98] setWithArray:&unk_287469680];
  v25[0] = v2;
  v3 = [MEMORY[0x277CBEB98] setWithArray:&unk_287469698];
  v25[1] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:2];
  v30[3] = v4;
  v29[4] = &unk_28746C980;
  v5 = [MEMORY[0x277CBEB98] setWithArray:&unk_2874696B0];
  v24[0] = v5;
  v6 = [MEMORY[0x277CBEB98] setWithArray:&unk_2874696C8];
  v24[1] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:2];
  v30[4] = v7;
  v29[5] = &unk_28746C998;
  v8 = [MEMORY[0x277CBEB98] setWithArray:&unk_2874696E0];
  v23[0] = v8;
  v9 = [MEMORY[0x277CBEB98] setWithArray:&unk_2874696F8];
  v23[1] = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:2];
  v30[5] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v30 forKeys:v29 count:6];

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

- (BOOL)loadPayloadFromDictionary:(id)a3 serializationType:(signed __int16)a4 error:(id *)a5
{
  v8 = a3;
  v9 = MEMORY[0x277CBEB58];
  v10 = [v8 allKeys];
  v11 = [v9 setWithArray:v10];

  v12 = +[RMModelStatusManagementDeclarations allowedStatusKeys];
  [v11 minusSet:v12];

  v13 = [v11 copy];
  [(RMModelPayloadBase *)self setUnknownPayloadKeys:v13];

  LOWORD(v16) = a4;
  if ([(RMModelPayloadBase *)self loadArrayFromDictionary:v8 usingKey:@"activations" forKeyPath:@"statusActivations" classType:objc_opt_class() nested:0 isRequired:1 defaultValue:0 serializationType:v16 error:a5]&& (LOWORD(v17) = a4, [(RMModelPayloadBase *)self loadArrayFromDictionary:v8 usingKey:@"configurations" forKeyPath:@"statusConfigurations" classType:objc_opt_class() nested:0 isRequired:1 defaultValue:0 serializationType:v17 error:a5]) && (LOWORD(v18) = a4, [(RMModelPayloadBase *)self loadArrayFromDictionary:v8 usingKey:@"assets" forKeyPath:@"statusAssets" classType:objc_opt_class() nested:0 isRequired:1 defaultValue:0 serializationType:v18 error:a5]))
  {
    LOWORD(v19) = a4;
    v14 = [(RMModelPayloadBase *)self loadArrayFromDictionary:v8 usingKey:@"management" forKeyPath:@"statusManagement" classType:objc_opt_class() nested:0 isRequired:1 defaultValue:0 serializationType:v19 error:a5];
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
  v6 = [(RMModelStatusManagementDeclarations *)self statusActivations];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __64__RMModelStatusManagementDeclarations_serializePayloadWithType___block_invoke;
  v18[3] = &__block_descriptor_34_e71___NSDictionary_16__0__RMModelStatusManagementDeclarations_Declaration_8l;
  v19 = a3;
  [(RMModelPayloadBase *)self serializeArrayIntoDictionary:v5 usingKey:@"activations" value:v6 itemSerializer:v18 isRequired:1 defaultValue:0];

  v7 = [(RMModelStatusManagementDeclarations *)self statusConfigurations];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __64__RMModelStatusManagementDeclarations_serializePayloadWithType___block_invoke_2;
  v16[3] = &__block_descriptor_34_e71___NSDictionary_16__0__RMModelStatusManagementDeclarations_Declaration_8l;
  v17 = a3;
  [(RMModelPayloadBase *)self serializeArrayIntoDictionary:v5 usingKey:@"configurations" value:v7 itemSerializer:v16 isRequired:1 defaultValue:0];

  v8 = [(RMModelStatusManagementDeclarations *)self statusAssets];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __64__RMModelStatusManagementDeclarations_serializePayloadWithType___block_invoke_3;
  v14[3] = &__block_descriptor_34_e71___NSDictionary_16__0__RMModelStatusManagementDeclarations_Declaration_8l;
  v15 = a3;
  [(RMModelPayloadBase *)self serializeArrayIntoDictionary:v5 usingKey:@"assets" value:v8 itemSerializer:v14 isRequired:1 defaultValue:0];

  v9 = [(RMModelStatusManagementDeclarations *)self statusManagement];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __64__RMModelStatusManagementDeclarations_serializePayloadWithType___block_invoke_4;
  v12[3] = &__block_descriptor_34_e71___NSDictionary_16__0__RMModelStatusManagementDeclarations_Declaration_8l;
  v13 = a3;
  [(RMModelPayloadBase *)self serializeArrayIntoDictionary:v5 usingKey:@"management" value:v9 itemSerializer:v12 isRequired:1 defaultValue:0];

  v10 = [v5 copy];

  return v10;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v14.receiver = self;
  v14.super_class = RMModelStatusManagementDeclarations;
  v4 = [(RMModelPayloadBase *)&v14 copyWithZone:a3];
  v5 = [(NSArray *)self->_statusActivations copy];
  v6 = v4[2];
  v4[2] = v5;

  v7 = [(NSArray *)self->_statusConfigurations copy];
  v8 = v4[3];
  v4[3] = v7;

  v9 = [(NSArray *)self->_statusAssets copy];
  v10 = v4[4];
  v4[4] = v9;

  v11 = [(NSArray *)self->_statusManagement copy];
  v12 = v4[5];
  v4[5] = v11;

  return v4;
}

@end