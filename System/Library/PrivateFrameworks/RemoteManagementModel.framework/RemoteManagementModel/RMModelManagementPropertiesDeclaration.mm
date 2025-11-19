@interface RMModelManagementPropertiesDeclaration
+ (id)buildRequiredOnlyWithIdentifier:(id)a3;
+ (id)buildWithIdentifier:(id)a3;
+ (id)supportedOS;
- (BOOL)loadPayloadFromDictionary:(id)a3 serializationType:(signed __int16)a4 error:(id *)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (id)serializePayloadWithType:(signed __int16)a3;
@end

@implementation RMModelManagementPropertiesDeclaration

+ (id)buildWithIdentifier:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  [v4 setDeclarationType:@"com.apple.management.properties"];
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

+ (id)buildRequiredOnlyWithIdentifier:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  [v4 setDeclarationType:@"com.apple.management.properties"];
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

+ (id)supportedOS
{
  v30[6] = *MEMORY[0x277D85DE8];
  v29[0] = &unk_28746B3C0;
  v22 = [MEMORY[0x277CBEB98] setWithArray:&unk_287466F68];
  v28[0] = v22;
  v21 = [MEMORY[0x277CBEB98] setWithArray:&unk_287466F80];
  v28[1] = v21;
  v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:2];
  v30[0] = v20;
  v29[1] = &unk_28746B3D8;
  v19 = [MEMORY[0x277CBEB98] setWithArray:&unk_287466F98];
  v27[0] = v19;
  v18 = [MEMORY[0x277CBEB98] setWithArray:&unk_287466FB0];
  v27[1] = v18;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v27 count:2];
  v30[1] = v17;
  v29[2] = &unk_28746B3F0;
  v16 = [MEMORY[0x277CBEB98] setWithArray:&unk_287466FC8];
  v26[0] = v16;
  v15 = [MEMORY[0x277CBEB98] setWithArray:&unk_287466FE0];
  v26[1] = v15;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:2];
  v30[2] = v14;
  v29[3] = &unk_28746B408;
  v2 = [MEMORY[0x277CBEB98] setWithArray:&unk_287466FF8];
  v25[0] = v2;
  v3 = [MEMORY[0x277CBEB98] setWithArray:&unk_287467010];
  v25[1] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:2];
  v30[3] = v4;
  v29[4] = &unk_28746B420;
  v5 = [MEMORY[0x277CBEB98] setWithArray:&unk_287467028];
  v24[0] = v5;
  v6 = [MEMORY[0x277CBEB98] setWithArray:&unk_287467040];
  v24[1] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:2];
  v30[4] = v7;
  v29[5] = &unk_28746B438;
  v8 = [MEMORY[0x277CBEB98] setWithArray:&unk_287467058];
  v23[0] = v8;
  v9 = [MEMORY[0x277CBEB98] setWithArray:&unk_287467070];
  v23[1] = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:2];
  v30[5] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v30 forKeys:v29 count:6];

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

- (BOOL)loadPayloadFromDictionary:(id)a3 serializationType:(signed __int16)a4 error:(id *)a5
{
  v27 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = MEMORY[0x277CBEB58];
  v8 = [v6 allKeys];
  v9 = [v7 setWithArray:v8];

  v10 = +[RMModelManagementPropertiesDeclaration allowedPayloadKeys];
  [v9 minusSet:v10];

  v11 = objc_opt_new();
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v12 = v6;
  v13 = [v12 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v23;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v23 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v22 + 1) + 8 * i);
        if ([v9 containsObject:{v17, v22}])
        {
          v18 = [v12 objectForKeyedSubscript:v17];
          [v11 setObject:v18 forKeyedSubscript:v17];
        }
      }

      v14 = [v12 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v14);
  }

  if ([v11 count])
  {
    v19 = [v11 copy];
    [(RMModelManagementPropertiesDeclaration *)self setPayloadANY:v19];
  }

  v20 = *MEMORY[0x277D85DE8];
  return 1;
}

- (id)serializePayloadWithType:(signed __int16)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = objc_opt_new();
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = [(RMModelManagementPropertiesDeclaration *)self payloadANY];
  v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        v11 = [(RMModelManagementPropertiesDeclaration *)self payloadANY];
        v12 = [v11 objectForKeyedSubscript:v10];
        [v4 setObject:v12 forKeyedSubscript:v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v7);
  }

  v13 = [v4 copy];
  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v8.receiver = self;
  v8.super_class = RMModelManagementPropertiesDeclaration;
  v4 = [(RMModelDeclarationBase *)&v8 copyWithZone:a3];
  v5 = [(NSDictionary *)self->_payloadANY copy];
  v6 = v4[6];
  v4[6] = v5;

  return v4;
}

@end