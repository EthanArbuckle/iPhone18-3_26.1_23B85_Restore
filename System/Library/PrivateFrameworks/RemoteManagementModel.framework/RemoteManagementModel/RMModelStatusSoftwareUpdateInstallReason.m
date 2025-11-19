@interface RMModelStatusSoftwareUpdateInstallReason
+ (NSSet)allowedStatusKeys;
+ (id)buildRequiredOnlyWithReason:(id)a3;
+ (id)buildWithReason:(id)a3 declarationId:(id)a4;
+ (id)supportedOS;
- (BOOL)loadPayloadFromDictionary:(id)a3 serializationType:(signed __int16)a4 error:(id *)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (id)serializePayloadWithType:(signed __int16)a3;
@end

@implementation RMModelStatusSoftwareUpdateInstallReason

+ (NSSet)allowedStatusKeys
{
  v7[2] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CBEB98];
  v7[0] = @"reason";
  v7[1] = @"declaration-id";
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:2];
  v4 = [v2 setWithArray:v3];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

+ (id)buildWithReason:(id)a3 declarationId:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = objc_opt_new();
  [v7 setStatusReason:v6];

  [v7 setStatusDeclarationId:v5];

  return v7;
}

+ (id)buildRequiredOnlyWithReason:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  [v4 setStatusReason:v3];

  return v4;
}

+ (id)supportedOS
{
  v26[5] = *MEMORY[0x277D85DE8];
  v25[0] = &unk_28746CE00;
  v19 = [MEMORY[0x277CBEB98] setWithArray:&unk_287469DD0];
  v24[0] = v19;
  v18 = [MEMORY[0x277CBEB98] setWithArray:&unk_287469DE8];
  v24[1] = v18;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:2];
  v26[0] = v17;
  v25[1] = &unk_28746CE18;
  v16 = [MEMORY[0x277CBEB98] setWithArray:&unk_287469E00];
  v23[0] = v16;
  v15 = [MEMORY[0x277CBEB98] setWithArray:&unk_287469E18];
  v23[1] = v15;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:2];
  v26[1] = v14;
  v25[2] = &unk_28746CE48;
  v2 = [MEMORY[0x277CBEB98] setWithArray:&unk_287469E30];
  v22[0] = v2;
  v3 = [MEMORY[0x277CBEB98] setWithArray:&unk_287469E48];
  v22[1] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:2];
  v26[2] = v4;
  v25[3] = &unk_28746CE30;
  v5 = [MEMORY[0x277CBEB98] setWithArray:&unk_287469E60];
  v21[0] = v5;
  v6 = [MEMORY[0x277CBEB98] setWithArray:&unk_287469E78];
  v21[1] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:2];
  v26[3] = v7;
  v25[4] = &unk_28746CE60;
  v8 = [MEMORY[0x277CBEB98] setWithArray:&unk_287469E90];
  v20[0] = v8;
  v9 = [MEMORY[0x277CBEB98] setWithArray:&unk_287469EA8];
  v20[1] = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:2];
  v26[4] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:v25 count:5];

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

- (BOOL)loadPayloadFromDictionary:(id)a3 serializationType:(signed __int16)a4 error:(id *)a5
{
  v7 = a3;
  v8 = MEMORY[0x277CBEB58];
  v9 = [v7 allKeys];
  v10 = [v8 setWithArray:v9];

  v11 = +[RMModelStatusSoftwareUpdateInstallReason allowedStatusKeys];
  [v10 minusSet:v11];

  v12 = [v10 copy];
  [(RMModelPayloadBase *)self setUnknownPayloadKeys:v12];

  if ([(RMModelPayloadBase *)self loadArrayFromDictionary:v7 usingKey:@"reason" forKeyPath:@"statusReason" validator:&__block_literal_global_27 isRequired:1 defaultValue:0 error:a5])
  {
    v13 = [(RMModelPayloadBase *)self loadStringFromDictionary:v7 usingKey:@"declaration-id" forKeyPath:@"statusDeclarationId" isRequired:0 defaultValue:0 error:a5];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

uint64_t __94__RMModelStatusSoftwareUpdateInstallReason_loadPayloadFromDictionary_serializationType_error___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (id)serializePayloadWithType:(signed __int16)a3
{
  v4 = objc_opt_new();
  v5 = [(RMModelStatusSoftwareUpdateInstallReason *)self statusReason];
  [(RMModelPayloadBase *)self serializeArrayIntoDictionary:v4 usingKey:@"reason" value:v5 itemSerializer:&__block_literal_global_58 isRequired:1 defaultValue:0];

  v6 = [(RMModelStatusSoftwareUpdateInstallReason *)self statusDeclarationId];
  [(RMModelPayloadBase *)self serializeStringIntoDictionary:v4 usingKey:@"declaration-id" value:v6 isRequired:0 defaultValue:0];

  v7 = [v4 copy];

  return v7;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v10.receiver = self;
  v10.super_class = RMModelStatusSoftwareUpdateInstallReason;
  v4 = [(RMModelPayloadBase *)&v10 copyWithZone:a3];
  v5 = [(NSArray *)self->_statusReason copy];
  v6 = v4[2];
  v4[2] = v5;

  v7 = [(NSString *)self->_statusDeclarationId copy];
  v8 = v4[3];
  v4[3] = v7;

  return v4;
}

@end