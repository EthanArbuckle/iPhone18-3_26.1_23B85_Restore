@interface RMModelActivationSimpleDeclaration
+ (NSSet)allowedPayloadKeys;
+ (id)buildRequiredOnlyWithIdentifier:(id)a3 standardConfigurations:(id)a4;
+ (id)buildWithIdentifier:(id)a3 standardConfigurations:(id)a4 predicate:(id)a5;
+ (id)supportedOS;
- (BOOL)loadPayloadFromDictionary:(id)a3 serializationType:(signed __int16)a4 error:(id *)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (id)serializePayloadWithType:(signed __int16)a3;
@end

@implementation RMModelActivationSimpleDeclaration

+ (NSSet)allowedPayloadKeys
{
  v7[2] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CBEB98];
  v7[0] = @"StandardConfigurations";
  v7[1] = @"Predicate";
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:2];
  v4 = [v2 setWithArray:v3];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

+ (id)buildWithIdentifier:(id)a3 standardConfigurations:(id)a4 predicate:(id)a5
{
  v7 = a3;
  v8 = a5;
  v9 = a4;
  v10 = objc_opt_new();
  [v10 setDeclarationType:@"com.apple.activation.simple"];
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

  [v10 setPayloadStandardConfigurations:v9];

  [v10 setPayloadPredicate:v8];
  [v10 updateServerToken];

  return v10;
}

+ (id)buildRequiredOnlyWithIdentifier:(id)a3 standardConfigurations:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = objc_opt_new();
  [v7 setDeclarationType:@"com.apple.activation.simple"];
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

  [v7 setPayloadStandardConfigurations:v6];

  [v7 updateServerToken];

  return v7;
}

+ (id)supportedOS
{
  v30[6] = *MEMORY[0x277D85DE8];
  v29[0] = &unk_28746AC28;
  v22 = [MEMORY[0x277CBEB98] setWithArray:&unk_287466050];
  v28[0] = v22;
  v21 = [MEMORY[0x277CBEB98] setWithArray:&unk_287466068];
  v28[1] = v21;
  v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:2];
  v30[0] = v20;
  v29[1] = &unk_28746AC40;
  v19 = [MEMORY[0x277CBEB98] setWithArray:&unk_287466080];
  v27[0] = v19;
  v18 = [MEMORY[0x277CBEB98] setWithArray:&unk_287466098];
  v27[1] = v18;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v27 count:2];
  v30[1] = v17;
  v29[2] = &unk_28746AC58;
  v16 = [MEMORY[0x277CBEB98] setWithArray:&unk_2874660B0];
  v26[0] = v16;
  v15 = [MEMORY[0x277CBEB98] setWithArray:&unk_2874660C8];
  v26[1] = v15;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:2];
  v30[2] = v14;
  v29[3] = &unk_28746AC70;
  v2 = [MEMORY[0x277CBEB98] setWithArray:&unk_2874660E0];
  v25[0] = v2;
  v3 = [MEMORY[0x277CBEB98] setWithArray:&unk_2874660F8];
  v25[1] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:2];
  v30[3] = v4;
  v29[4] = &unk_28746AC88;
  v5 = [MEMORY[0x277CBEB98] setWithArray:&unk_287466110];
  v24[0] = v5;
  v6 = [MEMORY[0x277CBEB98] setWithArray:&unk_287466128];
  v24[1] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:2];
  v30[4] = v7;
  v29[5] = &unk_28746ACA0;
  v8 = [MEMORY[0x277CBEB98] setWithArray:&unk_287466140];
  v23[0] = v8;
  v9 = [MEMORY[0x277CBEB98] setWithArray:&unk_287466158];
  v23[1] = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:2];
  v30[5] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v30 forKeys:v29 count:6];

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

- (BOOL)loadPayloadFromDictionary:(id)a3 serializationType:(signed __int16)a4 error:(id *)a5
{
  v7 = a3;
  v8 = MEMORY[0x277CBEB58];
  v9 = [v7 allKeys];
  v10 = [v8 setWithArray:v9];

  v11 = +[RMModelActivationSimpleDeclaration allowedPayloadKeys];
  [v10 minusSet:v11];

  v12 = [v10 copy];
  [(RMModelPayloadBase *)self setUnknownPayloadKeys:v12];

  if ([(RMModelPayloadBase *)self loadArrayFromDictionary:v7 usingKey:@"StandardConfigurations" forKeyPath:@"payloadStandardConfigurations" validator:&__block_literal_global_7 isRequired:1 defaultValue:0 error:a5])
  {
    v13 = [(RMModelPayloadBase *)self loadStringFromDictionary:v7 usingKey:@"Predicate" forKeyPath:@"payloadPredicate" isRequired:0 defaultValue:0 error:a5];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

uint64_t __88__RMModelActivationSimpleDeclaration_loadPayloadFromDictionary_serializationType_error___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (id)serializePayloadWithType:(signed __int16)a3
{
  v4 = objc_opt_new();
  v5 = [(RMModelActivationSimpleDeclaration *)self payloadStandardConfigurations];
  [(RMModelPayloadBase *)self serializeArrayIntoDictionary:v4 usingKey:@"StandardConfigurations" value:v5 itemSerializer:&__block_literal_global_70 isRequired:1 defaultValue:0];

  v6 = [(RMModelActivationSimpleDeclaration *)self payloadPredicate];
  [(RMModelPayloadBase *)self serializeStringIntoDictionary:v4 usingKey:@"Predicate" value:v6 isRequired:0 defaultValue:0];

  v7 = [v4 copy];

  return v7;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v10.receiver = self;
  v10.super_class = RMModelActivationSimpleDeclaration;
  v4 = [(RMModelDeclarationBase *)&v10 copyWithZone:a3];
  v5 = [(NSArray *)self->_payloadStandardConfigurations copy];
  v6 = v4[6];
  v4[6] = v5;

  v7 = [(NSString *)self->_payloadPredicate copy];
  v8 = v4[7];
  v4[7] = v7;

  return v4;
}

@end