@interface RMModelStatusManagementClientCapabilities
+ (NSSet)allowedStatusKeys;
+ (id)buildRequiredOnlyWithSupportedVersions:(id)a3 supportedFeatures:(id)a4 supportedPayloads:(id)a5;
+ (id)buildWithSupportedVersions:(id)a3 supportedFeatures:(id)a4 supportedPayloads:(id)a5;
+ (id)supportedOS;
- (BOOL)loadPayloadFromDictionary:(id)a3 serializationType:(signed __int16)a4 error:(id *)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (id)serializePayloadWithType:(signed __int16)a3;
@end

@implementation RMModelStatusManagementClientCapabilities

+ (NSSet)allowedStatusKeys
{
  v7[3] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CBEB98];
  v7[0] = @"supported-versions";
  v7[1] = @"supported-features";
  v7[2] = @"supported-payloads";
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:3];
  v4 = [v2 setWithArray:v3];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

+ (id)buildWithSupportedVersions:(id)a3 supportedFeatures:(id)a4 supportedPayloads:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = objc_opt_new();
  [v10 setStatusSupportedVersions:v9];

  [v10 setStatusSupportedFeatures:v8];
  [v10 setStatusSupportedPayloads:v7];

  return v10;
}

+ (id)buildRequiredOnlyWithSupportedVersions:(id)a3 supportedFeatures:(id)a4 supportedPayloads:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = objc_opt_new();
  [v10 setStatusSupportedVersions:v9];

  [v10 setStatusSupportedFeatures:v8];
  [v10 setStatusSupportedPayloads:v7];

  return v10;
}

+ (id)supportedOS
{
  v30[6] = *MEMORY[0x277D85DE8];
  v29[0] = &unk_28746C890;
  v22 = [MEMORY[0x277CBEB98] setWithArray:&unk_2874694D0];
  v28[0] = v22;
  v21 = [MEMORY[0x277CBEB98] setWithArray:&unk_2874694E8];
  v28[1] = v21;
  v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:2];
  v30[0] = v20;
  v29[1] = &unk_28746C8A8;
  v19 = [MEMORY[0x277CBEB98] setWithArray:&unk_287469500];
  v27[0] = v19;
  v18 = [MEMORY[0x277CBEB98] setWithArray:&unk_287469518];
  v27[1] = v18;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v27 count:2];
  v30[1] = v17;
  v29[2] = &unk_28746C8D8;
  v16 = [MEMORY[0x277CBEB98] setWithArray:&unk_287469530];
  v26[0] = v16;
  v15 = [MEMORY[0x277CBEB98] setWithArray:&unk_287469548];
  v26[1] = v15;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:2];
  v30[2] = v14;
  v29[3] = &unk_28746C8C0;
  v2 = [MEMORY[0x277CBEB98] setWithArray:&unk_287469560];
  v25[0] = v2;
  v3 = [MEMORY[0x277CBEB98] setWithArray:&unk_287469578];
  v25[1] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:2];
  v30[3] = v4;
  v29[4] = &unk_28746C8F0;
  v5 = [MEMORY[0x277CBEB98] setWithArray:&unk_287469590];
  v24[0] = v5;
  v6 = [MEMORY[0x277CBEB98] setWithArray:&unk_2874695A8];
  v24[1] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:2];
  v30[4] = v7;
  v29[5] = &unk_28746C908;
  v8 = [MEMORY[0x277CBEB98] setWithArray:&unk_2874695C0];
  v23[0] = v8;
  v9 = [MEMORY[0x277CBEB98] setWithArray:&unk_2874695D8];
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

  v12 = +[RMModelStatusManagementClientCapabilities allowedStatusKeys];
  [v11 minusSet:v12];

  v13 = [v11 copy];
  [(RMModelPayloadBase *)self setUnknownPayloadKeys:v13];

  if ([(RMModelPayloadBase *)self loadArrayFromDictionary:v8 usingKey:@"supported-versions" forKeyPath:@"statusSupportedVersions" validator:&__block_literal_global_24 isRequired:1 defaultValue:0 error:a5]&& (LOWORD(v16) = a4, [(RMModelPayloadBase *)self loadDictionaryFromDictionary:v8 usingKey:@"supported-features" forKeyPath:@"statusSupportedFeatures" classType:objc_opt_class() isRequired:1 defaultValue:0 serializationType:v16 error:a5]))
  {
    LOWORD(v17) = a4;
    v14 = [(RMModelPayloadBase *)self loadDictionaryFromDictionary:v8 usingKey:@"supported-payloads" forKeyPath:@"statusSupportedPayloads" classType:objc_opt_class() isRequired:1 defaultValue:0 serializationType:v17 error:a5];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

uint64_t __95__RMModelStatusManagementClientCapabilities_loadPayloadFromDictionary_serializationType_error___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (id)serializePayloadWithType:(signed __int16)a3
{
  v5 = objc_opt_new();
  v6 = [(RMModelStatusManagementClientCapabilities *)self statusSupportedVersions];
  [(RMModelPayloadBase *)self serializeArrayIntoDictionary:v5 usingKey:@"supported-versions" value:v6 itemSerializer:&__block_literal_global_74 isRequired:1 defaultValue:0];

  v7 = [(RMModelStatusManagementClientCapabilities *)self statusSupportedFeatures];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __70__RMModelStatusManagementClientCapabilities_serializePayloadWithType___block_invoke_2;
  v13[3] = &__block_descriptor_34_e42___NSDictionary_16__0__RMModelPayloadBase_8l;
  v14 = a3;
  [(RMModelPayloadBase *)self serializeDictionaryIntoDictionary:v5 usingKey:@"supported-features" value:v7 dictSerializer:v13 isRequired:1 defaultValue:0];

  v8 = [(RMModelStatusManagementClientCapabilities *)self statusSupportedPayloads];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __70__RMModelStatusManagementClientCapabilities_serializePayloadWithType___block_invoke_3;
  v11[3] = &__block_descriptor_34_e42___NSDictionary_16__0__RMModelPayloadBase_8l;
  v12 = a3;
  [(RMModelPayloadBase *)self serializeDictionaryIntoDictionary:v5 usingKey:@"supported-payloads" value:v8 dictSerializer:v11 isRequired:1 defaultValue:0];

  v9 = [v5 copy];

  return v9;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v12.receiver = self;
  v12.super_class = RMModelStatusManagementClientCapabilities;
  v4 = [(RMModelPayloadBase *)&v12 copyWithZone:a3];
  v5 = [(NSArray *)self->_statusSupportedVersions copy];
  v6 = v4[2];
  v4[2] = v5;

  v7 = [(RMModelAnyPayload *)self->_statusSupportedFeatures copy];
  v8 = v4[3];
  v4[3] = v7;

  v9 = [(RMModelStatusManagementClientCapabilities_SupportedPayloads *)self->_statusSupportedPayloads copy];
  v10 = v4[4];
  v4[4] = v9;

  return v4;
}

uint64_t __106__RMModelStatusManagementClientCapabilities_SupportedPayloads_loadFromDictionary_serializationType_error___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

uint64_t __118__RMModelStatusManagementClientCapabilities_SupportedPayloadsDeclarations_loadFromDictionary_serializationType_error___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

uint64_t __118__RMModelStatusManagementClientCapabilities_SupportedPayloadsDeclarations_loadFromDictionary_serializationType_error___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

uint64_t __118__RMModelStatusManagementClientCapabilities_SupportedPayloadsDeclarations_loadFromDictionary_serializationType_error___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

uint64_t __118__RMModelStatusManagementClientCapabilities_SupportedPayloadsDeclarations_loadFromDictionary_serializationType_error___block_invoke_4(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

@end