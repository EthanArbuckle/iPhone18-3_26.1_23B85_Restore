@interface RMModelAssetDataDeclaration
+ (NSSet)allowedPayloadKeys;
+ (id)buildRequiredOnlyWithIdentifier:(id)a3 reference:(id)a4;
+ (id)buildWithIdentifier:(id)a3 reference:(id)a4 authentication:(id)a5;
+ (id)supportedOS;
- (BOOL)loadPayloadFromDictionary:(id)a3 serializationType:(signed __int16)a4 error:(id *)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (id)serializePayloadWithType:(signed __int16)a3;
@end

@implementation RMModelAssetDataDeclaration

+ (NSSet)allowedPayloadKeys
{
  v7[2] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CBEB98];
  v7[0] = @"Reference";
  v7[1] = @"Authentication";
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:2];
  v4 = [v2 setWithArray:v3];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

+ (id)buildWithIdentifier:(id)a3 reference:(id)a4 authentication:(id)a5
{
  v7 = a3;
  v8 = a5;
  v9 = a4;
  v10 = objc_opt_new();
  [v10 setDeclarationType:@"com.apple.asset.data"];
  if (v7)
  {
    [v10 setDeclarationIdentifier:v7];
  }

  else
  {
    v11 = [MEMORY[0x277CCAD78] UUID];
    v12 = [v11 UUIDString];
    [v10 setDeclarationIdentifier:v12];
  }

  [v10 setPayloadReference:v9];

  [v10 setPayloadAuthentication:v8];
  [v10 updateServerToken];

  return v10;
}

+ (id)buildRequiredOnlyWithIdentifier:(id)a3 reference:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = objc_opt_new();
  [v7 setDeclarationType:@"com.apple.asset.data"];
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

  [v7 setPayloadReference:v6];

  [v7 updateServerToken];

  return v7;
}

+ (id)supportedOS
{
  v30[6] = *MEMORY[0x277D85DE8];
  v29[0] = &unk_28746B0C0;
  v22 = [MEMORY[0x277CBEB98] setWithArray:&unk_2874669E0];
  v28[0] = v22;
  v21 = [MEMORY[0x277CBEB98] setWithArray:&unk_2874669F8];
  v28[1] = v21;
  v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:2];
  v30[0] = v20;
  v29[1] = &unk_28746B0D8;
  v19 = [MEMORY[0x277CBEB98] setWithArray:&unk_287466A10];
  v27[0] = v19;
  v18 = [MEMORY[0x277CBEB98] setWithArray:&unk_287466A28];
  v27[1] = v18;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v27 count:2];
  v30[1] = v17;
  v29[2] = &unk_28746B0F0;
  v16 = [MEMORY[0x277CBEB98] setWithArray:&unk_287466A40];
  v26[0] = v16;
  v15 = [MEMORY[0x277CBEB98] setWithArray:&unk_287466A58];
  v26[1] = v15;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:2];
  v30[2] = v14;
  v29[3] = &unk_28746B108;
  v2 = [MEMORY[0x277CBEB98] setWithArray:&unk_287466A70];
  v25[0] = v2;
  v3 = [MEMORY[0x277CBEB98] setWithArray:&unk_287466A88];
  v25[1] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:2];
  v30[3] = v4;
  v29[4] = &unk_28746B120;
  v5 = [MEMORY[0x277CBEB98] setWithArray:&unk_287466AA0];
  v24[0] = v5;
  v6 = [MEMORY[0x277CBEB98] setWithArray:&unk_287466AB8];
  v24[1] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:2];
  v30[4] = v7;
  v29[5] = &unk_28746B138;
  v8 = [MEMORY[0x277CBEB98] setWithArray:&unk_287466AD0];
  v23[0] = v8;
  v9 = [MEMORY[0x277CBEB98] setWithArray:&unk_287466AE8];
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

  v12 = +[RMModelAssetDataDeclaration allowedPayloadKeys];
  [v11 minusSet:v12];

  v13 = [v11 copy];
  [(RMModelPayloadBase *)self setUnknownPayloadKeys:v13];

  LOWORD(v16) = a4;
  if ([(RMModelPayloadBase *)self loadDictionaryFromDictionary:v8 usingKey:@"Reference" forKeyPath:@"payloadReference" classType:objc_opt_class() isRequired:1 defaultValue:0 serializationType:v16 error:a5])
  {
    LOWORD(v17) = a4;
    v14 = [(RMModelPayloadBase *)self loadDictionaryFromDictionary:v8 usingKey:@"Authentication" forKeyPath:@"payloadAuthentication" classType:objc_opt_class() isRequired:0 defaultValue:0 serializationType:v17 error:a5];
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
  v6 = [(RMModelAssetDataDeclaration *)self payloadReference];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __56__RMModelAssetDataDeclaration_serializePayloadWithType___block_invoke;
  v12[3] = &__block_descriptor_34_e42___NSDictionary_16__0__RMModelPayloadBase_8l;
  v13 = a3;
  [(RMModelPayloadBase *)self serializeDictionaryIntoDictionary:v5 usingKey:@"Reference" value:v6 dictSerializer:v12 isRequired:1 defaultValue:0];

  v7 = [(RMModelAssetDataDeclaration *)self payloadAuthentication];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __56__RMModelAssetDataDeclaration_serializePayloadWithType___block_invoke_2;
  v10[3] = &__block_descriptor_34_e42___NSDictionary_16__0__RMModelPayloadBase_8l;
  v11 = a3;
  [(RMModelPayloadBase *)self serializeDictionaryIntoDictionary:v5 usingKey:@"Authentication" value:v7 dictSerializer:v10 isRequired:0 defaultValue:0];

  v8 = [v5 copy];

  return v8;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v10.receiver = self;
  v10.super_class = RMModelAssetDataDeclaration;
  v4 = [(RMModelDeclarationBase *)&v10 copyWithZone:a3];
  v5 = [(RMModelAssetBaseReference *)self->_payloadReference copy];
  v6 = v4[6];
  v4[6] = v5;

  v7 = [(RMModelAssetBaseAuthentication *)self->_payloadAuthentication copy];
  v8 = v4[7];
  v4[7] = v7;

  return v4;
}

@end