@interface RMModelAppSettingsDeclaration
+ (NSSet)allowedPayloadKeys;
+ (id)assetTypes;
+ (id)buildRequiredOnlyWithIdentifier:(id)a3;
+ (id)buildWithIdentifier:(id)a3 marketplaces:(id)a4;
+ (id)combineConfigurations:(id)a3;
+ (id)supportedOS;
- (BOOL)loadPayloadFromDictionary:(id)a3 serializationType:(signed __int16)a4 error:(id *)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (id)serializePayloadWithType:(signed __int16)a3;
- (void)combineWithOther:(id)a3;
@end

@implementation RMModelAppSettingsDeclaration

+ (NSSet)allowedPayloadKeys
{
  v7[1] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CBEB98];
  v7[0] = @"Marketplaces";
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:1];
  v4 = [v2 setWithArray:v3];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

+ (id)assetTypes
{
  v2 = objc_opt_new();

  return v2;
}

+ (id)buildWithIdentifier:(id)a3 marketplaces:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = objc_opt_new();
  [v7 setDeclarationType:@"com.apple.configuration.app.settings"];
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

  [v7 setPayloadMarketplaces:v6];

  [v7 updateServerToken];

  return v7;
}

+ (id)buildRequiredOnlyWithIdentifier:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  [v4 setDeclarationType:@"com.apple.configuration.app.settings"];
  if (v3)
  {
    [v4 setDeclarationIdentifier:v3];
  }

  else
  {
    v5 = [MEMORY[0x277CCAD78] UUID];
    v6 = [v5 UUIDString];
    [v4 setDeclarationIdentifier:v6];
  }

  [v4 updateServerToken];

  return v4;
}

+ (id)combineConfigurations:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = objc_opt_new();
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [v4 combineWithOther:{*(*(&v12 + 1) + 8 * i), v12}];
      }

      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  v10 = *MEMORY[0x277D85DE8];

  return v4;
}

+ (id)supportedOS
{
  v16[2] = *MEMORY[0x277D85DE8];
  v15[0] = &unk_28746AD90;
  v2 = [MEMORY[0x277CBEB98] setWithArray:&unk_2874663B0];
  v14[0] = v2;
  v3 = [MEMORY[0x277CBEB98] setWithArray:&unk_2874663C8];
  v14[1] = v3;
  v4 = [MEMORY[0x277CBEB98] setWithArray:&unk_2874663E0];
  v14[2] = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:3];
  v15[1] = &unk_28746ADD8;
  v16[0] = v5;
  v6 = [MEMORY[0x277CBEB98] setWithArray:&unk_2874663F8];
  v13[0] = v6;
  v7 = [MEMORY[0x277CBEB98] setWithArray:&unk_287466410];
  v13[1] = v7;
  v8 = [MEMORY[0x277CBEB98] setWithArray:&unk_287466428];
  v13[2] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:3];
  v16[1] = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:2];

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

- (BOOL)loadPayloadFromDictionary:(id)a3 serializationType:(signed __int16)a4 error:(id *)a5
{
  v8 = MEMORY[0x277CBEB58];
  v9 = a3;
  v10 = [v9 allKeys];
  v11 = [v8 setWithArray:v10];

  v12 = +[RMModelAppSettingsDeclaration allowedPayloadKeys];
  [v11 minusSet:v12];

  v13 = [v11 copy];
  [(RMModelPayloadBase *)self setUnknownPayloadKeys:v13];

  LOWORD(v15) = a4;
  LOBYTE(self) = [(RMModelPayloadBase *)self loadDictionaryFromDictionary:v9 usingKey:@"Marketplaces" forKeyPath:@"payloadMarketplaces" classType:objc_opt_class() isRequired:0 defaultValue:0 serializationType:v15 error:a5];

  return self;
}

- (id)serializePayloadWithType:(signed __int16)a3
{
  v5 = objc_opt_new();
  v6 = [(RMModelAppSettingsDeclaration *)self payloadMarketplaces];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __58__RMModelAppSettingsDeclaration_serializePayloadWithType___block_invoke;
  v9[3] = &__block_descriptor_34_e42___NSDictionary_16__0__RMModelPayloadBase_8l;
  v10 = a3;
  [(RMModelPayloadBase *)self serializeDictionaryIntoDictionary:v5 usingKey:@"Marketplaces" value:v6 dictSerializer:v9 isRequired:0 defaultValue:0];

  v7 = [v5 copy];

  return v7;
}

- (void)combineWithOther:(id)a3
{
  v4 = a3;
  v7 = [(RMModelAppSettingsDeclaration *)self payloadMarketplaces];
  v5 = [v4 payloadMarketplaces];

  v6 = [RMModelConfigurationBase combineDictionary:v7 other:v5];
  [(RMModelAppSettingsDeclaration *)self setPayloadMarketplaces:v6];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v8.receiver = self;
  v8.super_class = RMModelAppSettingsDeclaration;
  v4 = [(RMModelDeclarationBase *)&v8 copyWithZone:a3];
  v5 = [(RMModelAppSettingsDeclaration_Marketplaces *)self->_payloadMarketplaces copy];
  v6 = v4[6];
  v4[6] = v5;

  return v4;
}

uint64_t __89__RMModelAppSettingsDeclaration_Marketplaces_loadFromDictionary_serializationType_error___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

uint64_t __89__RMModelAppSettingsDeclaration_Marketplaces_loadFromDictionary_serializationType_error___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

@end