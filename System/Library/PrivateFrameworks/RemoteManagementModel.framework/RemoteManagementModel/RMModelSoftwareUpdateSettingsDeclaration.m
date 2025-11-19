@interface RMModelSoftwareUpdateSettingsDeclaration
+ (NSSet)allowedPayloadKeys;
+ (id)assetTypes;
+ (id)buildRequiredOnlyWithIdentifier:(id)a3;
+ (id)buildWithIdentifier:(id)a3 notifications:(id)a4 deferrals:(id)a5 recommendedCadence:(id)a6 automaticActions:(id)a7 rapidSecurityResponse:(id)a8 allowStandardUserOSUpdates:(id)a9 beta:(id)a10;
+ (id)combineConfigurations:(id)a3;
+ (id)supportedOS;
- (BOOL)loadPayloadFromDictionary:(id)a3 serializationType:(signed __int16)a4 error:(id *)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (id)serializePayloadWithType:(signed __int16)a3;
- (void)combineWithOther:(id)a3;
@end

@implementation RMModelSoftwareUpdateSettingsDeclaration

+ (NSSet)allowedPayloadKeys
{
  v7[7] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CBEB98];
  v7[0] = @"Notifications";
  v7[1] = @"Deferrals";
  v7[2] = @"RecommendedCadence";
  v7[3] = @"AutomaticActions";
  v7[4] = @"RapidSecurityResponse";
  v7[5] = @"AllowStandardUserOSUpdates";
  v7[6] = @"Beta";
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:7];
  v4 = [v2 setWithArray:v3];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

+ (id)assetTypes
{
  v2 = objc_opt_new();

  return v2;
}

+ (id)buildWithIdentifier:(id)a3 notifications:(id)a4 deferrals:(id)a5 recommendedCadence:(id)a6 automaticActions:(id)a7 rapidSecurityResponse:(id)a8 allowStandardUserOSUpdates:(id)a9 beta:(id)a10
{
  v15 = a3;
  v29 = a10;
  v16 = a9;
  v17 = a8;
  v18 = a7;
  v19 = a6;
  v20 = a5;
  v21 = a4;
  v22 = objc_opt_new();
  [v22 setDeclarationType:@"com.apple.configuration.softwareupdate.settings"];
  if (v15)
  {
    [v22 setDeclarationIdentifier:v15];
  }

  else
  {
    v23 = [MEMORY[0x277CCAD78] UUID];
    v24 = [v23 UUIDString];
    [v22 setDeclarationIdentifier:v24];
  }

  v25 = MEMORY[0x277CBEC38];
  if (v21)
  {
    v26 = v21;
  }

  else
  {
    v26 = MEMORY[0x277CBEC38];
  }

  [v22 setPayloadNotifications:v26];

  [v22 setPayloadDeferrals:v20];
  [v22 setPayloadRecommendedCadence:v19];

  [v22 setPayloadAutomaticActions:v18];
  [v22 setPayloadRapidSecurityResponse:v17];

  if (v16)
  {
    v27 = v16;
  }

  else
  {
    v27 = v25;
  }

  [v22 setPayloadAllowStandardUserOSUpdates:v27];

  [v22 setPayloadBeta:v29];
  [v22 updateServerToken];

  return v22;
}

+ (id)buildRequiredOnlyWithIdentifier:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  [v4 setDeclarationType:@"com.apple.configuration.softwareupdate.settings"];
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
  v26[5] = *MEMORY[0x277D85DE8];
  v25[0] = &unk_28746BC60;
  v19 = [MEMORY[0x277CBEB98] setWithArray:&unk_287467EE0];
  v24[0] = v19;
  v18 = [MEMORY[0x277CBEB98] setWithArray:&unk_287467EF8];
  v24[1] = v18;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:2];
  v26[0] = v17;
  v25[1] = &unk_28746BC78;
  v16 = [MEMORY[0x277CBEB98] setWithArray:&unk_287467F10];
  v23[0] = v16;
  v15 = [MEMORY[0x277CBEB98] setWithArray:&unk_287467F28];
  v23[1] = v15;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:2];
  v26[1] = v14;
  v25[2] = &unk_28746BCA8;
  v2 = [MEMORY[0x277CBEB98] setWithArray:&unk_287467F40];
  v22[0] = v2;
  v3 = [MEMORY[0x277CBEB98] setWithArray:&unk_287467F58];
  v22[1] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:2];
  v26[2] = v4;
  v25[3] = &unk_28746BC90;
  v5 = [MEMORY[0x277CBEB98] setWithArray:&unk_287467F70];
  v21[0] = v5;
  v6 = [MEMORY[0x277CBEB98] setWithArray:&unk_287467F88];
  v21[1] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:2];
  v26[3] = v7;
  v25[4] = &unk_28746BCC0;
  v8 = [MEMORY[0x277CBEB98] setWithArray:&unk_287467FA0];
  v20[0] = v8;
  v9 = [MEMORY[0x277CBEB98] setWithArray:&unk_287467FB8];
  v20[1] = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:2];
  v26[4] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:v25 count:5];

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

- (BOOL)loadPayloadFromDictionary:(id)a3 serializationType:(signed __int16)a4 error:(id *)a5
{
  v8 = a3;
  v9 = MEMORY[0x277CBEB58];
  v10 = [v8 allKeys];
  v11 = [v9 setWithArray:v10];

  v12 = +[RMModelSoftwareUpdateSettingsDeclaration allowedPayloadKeys];
  [v11 minusSet:v12];

  v13 = [v11 copy];
  [(RMModelPayloadBase *)self setUnknownPayloadKeys:v13];

  if ([(RMModelPayloadBase *)self loadBooleanFromDictionary:v8 usingKey:@"Notifications" forKeyPath:@"payloadNotifications" isRequired:0 defaultValue:MEMORY[0x277CBEC38] error:a5]&& (LOWORD(v16) = a4, [(RMModelPayloadBase *)self loadDictionaryFromDictionary:v8 usingKey:@"Deferrals" forKeyPath:@"payloadDeferrals" classType:objc_opt_class() isRequired:0 defaultValue:0 serializationType:v16 error:a5]) && [(RMModelPayloadBase *)self loadStringFromDictionary:v8 usingKey:@"RecommendedCadence" forKeyPath:@"payloadRecommendedCadence" isRequired:0 defaultValue:0 error:a5]&& (LOWORD(v17) = a4, [(RMModelPayloadBase *)self loadDictionaryFromDictionary:v8 usingKey:@"AutomaticActions" forKeyPath:@"payloadAutomaticActions" classType:objc_opt_class() isRequired:0 defaultValue:0 serializationType:v17 error:a5]) && (LOWORD(v18) = a4, [(RMModelPayloadBase *)self loadDictionaryFromDictionary:v8 usingKey:@"RapidSecurityResponse" forKeyPath:@"payloadRapidSecurityResponse" classType:objc_opt_class() isRequired:0 defaultValue:0 serializationType:v18 error:a5]) && [(RMModelPayloadBase *)self loadBooleanFromDictionary:v8 usingKey:@"AllowStandardUserOSUpdates" forKeyPath:@"payloadAllowStandardUserOSUpdates" isRequired:0 defaultValue:MEMORY[0x277CBEC38] error:a5])
  {
    LOWORD(v19) = a4;
    v14 = [(RMModelPayloadBase *)self loadDictionaryFromDictionary:v8 usingKey:@"Beta" forKeyPath:@"payloadBeta" classType:objc_opt_class() isRequired:0 defaultValue:0 serializationType:v19 error:a5];
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
  v6 = [(RMModelSoftwareUpdateSettingsDeclaration *)self payloadNotifications];
  v7 = MEMORY[0x277CBEC38];
  [(RMModelPayloadBase *)self serializeBooleanIntoDictionary:v5 usingKey:@"Notifications" value:v6 isRequired:0 defaultValue:MEMORY[0x277CBEC38]];

  v8 = [(RMModelSoftwareUpdateSettingsDeclaration *)self payloadDeferrals];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __69__RMModelSoftwareUpdateSettingsDeclaration_serializePayloadWithType___block_invoke;
  v22[3] = &__block_descriptor_34_e42___NSDictionary_16__0__RMModelPayloadBase_8l;
  v23 = a3;
  [(RMModelPayloadBase *)self serializeDictionaryIntoDictionary:v5 usingKey:@"Deferrals" value:v8 dictSerializer:v22 isRequired:0 defaultValue:0];

  v9 = [(RMModelSoftwareUpdateSettingsDeclaration *)self payloadRecommendedCadence];
  [(RMModelPayloadBase *)self serializeStringIntoDictionary:v5 usingKey:@"RecommendedCadence" value:v9 isRequired:0 defaultValue:0];

  v10 = [(RMModelSoftwareUpdateSettingsDeclaration *)self payloadAutomaticActions];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __69__RMModelSoftwareUpdateSettingsDeclaration_serializePayloadWithType___block_invoke_2;
  v20[3] = &__block_descriptor_34_e42___NSDictionary_16__0__RMModelPayloadBase_8l;
  v21 = a3;
  [(RMModelPayloadBase *)self serializeDictionaryIntoDictionary:v5 usingKey:@"AutomaticActions" value:v10 dictSerializer:v20 isRequired:0 defaultValue:0];

  v11 = [(RMModelSoftwareUpdateSettingsDeclaration *)self payloadRapidSecurityResponse];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __69__RMModelSoftwareUpdateSettingsDeclaration_serializePayloadWithType___block_invoke_3;
  v18[3] = &__block_descriptor_34_e42___NSDictionary_16__0__RMModelPayloadBase_8l;
  v19 = a3;
  [(RMModelPayloadBase *)self serializeDictionaryIntoDictionary:v5 usingKey:@"RapidSecurityResponse" value:v11 dictSerializer:v18 isRequired:0 defaultValue:0];

  v12 = [(RMModelSoftwareUpdateSettingsDeclaration *)self payloadAllowStandardUserOSUpdates];
  [(RMModelPayloadBase *)self serializeBooleanIntoDictionary:v5 usingKey:@"AllowStandardUserOSUpdates" value:v12 isRequired:0 defaultValue:v7];

  v13 = [(RMModelSoftwareUpdateSettingsDeclaration *)self payloadBeta];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __69__RMModelSoftwareUpdateSettingsDeclaration_serializePayloadWithType___block_invoke_4;
  v16[3] = &__block_descriptor_34_e42___NSDictionary_16__0__RMModelPayloadBase_8l;
  v17 = a3;
  [(RMModelPayloadBase *)self serializeDictionaryIntoDictionary:v5 usingKey:@"Beta" value:v13 dictSerializer:v16 isRequired:0 defaultValue:0];

  v14 = [v5 copy];

  return v14;
}

- (void)combineWithOther:(id)a3
{
  v28[3] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(RMModelSoftwareUpdateSettingsDeclaration *)self payloadNotifications];
  v6 = [v4 payloadNotifications];
  v7 = [RMModelConfigurationBase combineBooleanAnd:v5 other:v6];
  [(RMModelSoftwareUpdateSettingsDeclaration *)self setPayloadNotifications:v7];

  v8 = [(RMModelSoftwareUpdateSettingsDeclaration *)self payloadDeferrals];
  v9 = [v4 payloadDeferrals];
  v10 = [RMModelConfigurationBase combineDictionary:v8 other:v9];
  [(RMModelSoftwareUpdateSettingsDeclaration *)self setPayloadDeferrals:v10];

  v11 = [(RMModelSoftwareUpdateSettingsDeclaration *)self payloadRecommendedCadence];
  v12 = [v4 payloadRecommendedCadence];
  v28[0] = @"All";
  v28[1] = @"Oldest";
  v28[2] = @"Newest";
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:3];
  v14 = [RMModelConfigurationBase combineEnumLast:v11 other:v12 enums:v13];
  [(RMModelSoftwareUpdateSettingsDeclaration *)self setPayloadRecommendedCadence:v14];

  v15 = [(RMModelSoftwareUpdateSettingsDeclaration *)self payloadAutomaticActions];
  v16 = [v4 payloadAutomaticActions];
  v17 = [RMModelConfigurationBase combineDictionary:v15 other:v16];
  [(RMModelSoftwareUpdateSettingsDeclaration *)self setPayloadAutomaticActions:v17];

  v18 = [(RMModelSoftwareUpdateSettingsDeclaration *)self payloadRapidSecurityResponse];
  v19 = [v4 payloadRapidSecurityResponse];
  v20 = [RMModelConfigurationBase combineDictionary:v18 other:v19];
  [(RMModelSoftwareUpdateSettingsDeclaration *)self setPayloadRapidSecurityResponse:v20];

  v21 = [(RMModelSoftwareUpdateSettingsDeclaration *)self payloadAllowStandardUserOSUpdates];
  v22 = [v4 payloadAllowStandardUserOSUpdates];
  v23 = [RMModelConfigurationBase combineBooleanAnd:v21 other:v22];
  [(RMModelSoftwareUpdateSettingsDeclaration *)self setPayloadAllowStandardUserOSUpdates:v23];

  v24 = [(RMModelSoftwareUpdateSettingsDeclaration *)self payloadBeta];
  v25 = [v4 payloadBeta];

  v26 = [RMModelConfigurationBase combineDictionary:v24 other:v25];
  [(RMModelSoftwareUpdateSettingsDeclaration *)self setPayloadBeta:v26];

  v27 = *MEMORY[0x277D85DE8];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v20.receiver = self;
  v20.super_class = RMModelSoftwareUpdateSettingsDeclaration;
  v4 = [(RMModelDeclarationBase *)&v20 copyWithZone:a3];
  v5 = [(NSNumber *)self->_payloadNotifications copy];
  v6 = v4[6];
  v4[6] = v5;

  v7 = [(RMModelSoftwareUpdateSettingsDeclaration_Deferrals *)self->_payloadDeferrals copy];
  v8 = v4[7];
  v4[7] = v7;

  v9 = [(NSString *)self->_payloadRecommendedCadence copy];
  v10 = v4[8];
  v4[8] = v9;

  v11 = [(RMModelSoftwareUpdateSettingsDeclaration_AutomaticActions *)self->_payloadAutomaticActions copy];
  v12 = v4[9];
  v4[9] = v11;

  v13 = [(RMModelSoftwareUpdateSettingsDeclaration_RapidSecurityResponse *)self->_payloadRapidSecurityResponse copy];
  v14 = v4[10];
  v4[10] = v13;

  v15 = [(NSNumber *)self->_payloadAllowStandardUserOSUpdates copy];
  v16 = v4[11];
  v4[11] = v15;

  v17 = [(RMModelSoftwareUpdateSettingsDeclaration_Beta *)self->_payloadBeta copy];
  v18 = v4[12];
  v4[12] = v17;

  return v4;
}

@end