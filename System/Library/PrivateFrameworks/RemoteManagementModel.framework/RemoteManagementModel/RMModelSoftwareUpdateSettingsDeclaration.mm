@interface RMModelSoftwareUpdateSettingsDeclaration
+ (NSSet)allowedPayloadKeys;
+ (id)assetTypes;
+ (id)buildRequiredOnlyWithIdentifier:(id)identifier;
+ (id)buildWithIdentifier:(id)identifier notifications:(id)notifications deferrals:(id)deferrals recommendedCadence:(id)cadence automaticActions:(id)actions rapidSecurityResponse:(id)response allowStandardUserOSUpdates:(id)updates beta:(id)self0;
+ (id)combineConfigurations:(id)configurations;
+ (id)supportedOS;
- (BOOL)loadPayloadFromDictionary:(id)dictionary serializationType:(signed __int16)type error:(id *)error;
- (id)copyWithZone:(_NSZone *)zone;
- (id)serializePayloadWithType:(signed __int16)type;
- (void)combineWithOther:(id)other;
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

+ (id)buildWithIdentifier:(id)identifier notifications:(id)notifications deferrals:(id)deferrals recommendedCadence:(id)cadence automaticActions:(id)actions rapidSecurityResponse:(id)response allowStandardUserOSUpdates:(id)updates beta:(id)self0
{
  identifierCopy = identifier;
  betaCopy = beta;
  updatesCopy = updates;
  responseCopy = response;
  actionsCopy = actions;
  cadenceCopy = cadence;
  deferralsCopy = deferrals;
  notificationsCopy = notifications;
  v22 = objc_opt_new();
  [v22 setDeclarationType:@"com.apple.configuration.softwareupdate.settings"];
  if (identifierCopy)
  {
    [v22 setDeclarationIdentifier:identifierCopy];
  }

  else
  {
    uUID = [MEMORY[0x277CCAD78] UUID];
    uUIDString = [uUID UUIDString];
    [v22 setDeclarationIdentifier:uUIDString];
  }

  v25 = MEMORY[0x277CBEC38];
  if (notificationsCopy)
  {
    v26 = notificationsCopy;
  }

  else
  {
    v26 = MEMORY[0x277CBEC38];
  }

  [v22 setPayloadNotifications:v26];

  [v22 setPayloadDeferrals:deferralsCopy];
  [v22 setPayloadRecommendedCadence:cadenceCopy];

  [v22 setPayloadAutomaticActions:actionsCopy];
  [v22 setPayloadRapidSecurityResponse:responseCopy];

  if (updatesCopy)
  {
    v27 = updatesCopy;
  }

  else
  {
    v27 = v25;
  }

  [v22 setPayloadAllowStandardUserOSUpdates:v27];

  [v22 setPayloadBeta:betaCopy];
  [v22 updateServerToken];

  return v22;
}

+ (id)buildRequiredOnlyWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = objc_opt_new();
  [v4 setDeclarationType:@"com.apple.configuration.softwareupdate.settings"];
  if (identifierCopy)
  {
    [v4 setDeclarationIdentifier:identifierCopy];
  }

  else
  {
    uUID = [MEMORY[0x277CCAD78] UUID];
    uUIDString = [uUID UUIDString];
    [v4 setDeclarationIdentifier:uUIDString];
  }

  [v4 updateServerToken];

  return v4;
}

+ (id)combineConfigurations:(id)configurations
{
  v17 = *MEMORY[0x277D85DE8];
  configurationsCopy = configurations;
  v4 = objc_opt_new();
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = configurationsCopy;
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

- (BOOL)loadPayloadFromDictionary:(id)dictionary serializationType:(signed __int16)type error:(id *)error
{
  dictionaryCopy = dictionary;
  v9 = MEMORY[0x277CBEB58];
  allKeys = [dictionaryCopy allKeys];
  v11 = [v9 setWithArray:allKeys];

  v12 = +[RMModelSoftwareUpdateSettingsDeclaration allowedPayloadKeys];
  [v11 minusSet:v12];

  v13 = [v11 copy];
  [(RMModelPayloadBase *)self setUnknownPayloadKeys:v13];

  if ([(RMModelPayloadBase *)self loadBooleanFromDictionary:dictionaryCopy usingKey:@"Notifications" forKeyPath:@"payloadNotifications" isRequired:0 defaultValue:MEMORY[0x277CBEC38] error:error]&& (LOWORD(v16) = type, [(RMModelPayloadBase *)self loadDictionaryFromDictionary:dictionaryCopy usingKey:@"Deferrals" forKeyPath:@"payloadDeferrals" classType:objc_opt_class() isRequired:0 defaultValue:0 serializationType:v16 error:error]) && [(RMModelPayloadBase *)self loadStringFromDictionary:dictionaryCopy usingKey:@"RecommendedCadence" forKeyPath:@"payloadRecommendedCadence" isRequired:0 defaultValue:0 error:error]&& (LOWORD(v17) = type, [(RMModelPayloadBase *)self loadDictionaryFromDictionary:dictionaryCopy usingKey:@"AutomaticActions" forKeyPath:@"payloadAutomaticActions" classType:objc_opt_class() isRequired:0 defaultValue:0 serializationType:v17 error:error]) && (LOWORD(v18) = type, [(RMModelPayloadBase *)self loadDictionaryFromDictionary:dictionaryCopy usingKey:@"RapidSecurityResponse" forKeyPath:@"payloadRapidSecurityResponse" classType:objc_opt_class() isRequired:0 defaultValue:0 serializationType:v18 error:error]) && [(RMModelPayloadBase *)self loadBooleanFromDictionary:dictionaryCopy usingKey:@"AllowStandardUserOSUpdates" forKeyPath:@"payloadAllowStandardUserOSUpdates" isRequired:0 defaultValue:MEMORY[0x277CBEC38] error:error])
  {
    LOWORD(v19) = type;
    v14 = [(RMModelPayloadBase *)self loadDictionaryFromDictionary:dictionaryCopy usingKey:@"Beta" forKeyPath:@"payloadBeta" classType:objc_opt_class() isRequired:0 defaultValue:0 serializationType:v19 error:error];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (id)serializePayloadWithType:(signed __int16)type
{
  v5 = objc_opt_new();
  payloadNotifications = [(RMModelSoftwareUpdateSettingsDeclaration *)self payloadNotifications];
  v7 = MEMORY[0x277CBEC38];
  [(RMModelPayloadBase *)self serializeBooleanIntoDictionary:v5 usingKey:@"Notifications" value:payloadNotifications isRequired:0 defaultValue:MEMORY[0x277CBEC38]];

  payloadDeferrals = [(RMModelSoftwareUpdateSettingsDeclaration *)self payloadDeferrals];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __69__RMModelSoftwareUpdateSettingsDeclaration_serializePayloadWithType___block_invoke;
  v22[3] = &__block_descriptor_34_e42___NSDictionary_16__0__RMModelPayloadBase_8l;
  typeCopy = type;
  [(RMModelPayloadBase *)self serializeDictionaryIntoDictionary:v5 usingKey:@"Deferrals" value:payloadDeferrals dictSerializer:v22 isRequired:0 defaultValue:0];

  payloadRecommendedCadence = [(RMModelSoftwareUpdateSettingsDeclaration *)self payloadRecommendedCadence];
  [(RMModelPayloadBase *)self serializeStringIntoDictionary:v5 usingKey:@"RecommendedCadence" value:payloadRecommendedCadence isRequired:0 defaultValue:0];

  payloadAutomaticActions = [(RMModelSoftwareUpdateSettingsDeclaration *)self payloadAutomaticActions];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __69__RMModelSoftwareUpdateSettingsDeclaration_serializePayloadWithType___block_invoke_2;
  v20[3] = &__block_descriptor_34_e42___NSDictionary_16__0__RMModelPayloadBase_8l;
  typeCopy2 = type;
  [(RMModelPayloadBase *)self serializeDictionaryIntoDictionary:v5 usingKey:@"AutomaticActions" value:payloadAutomaticActions dictSerializer:v20 isRequired:0 defaultValue:0];

  payloadRapidSecurityResponse = [(RMModelSoftwareUpdateSettingsDeclaration *)self payloadRapidSecurityResponse];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __69__RMModelSoftwareUpdateSettingsDeclaration_serializePayloadWithType___block_invoke_3;
  v18[3] = &__block_descriptor_34_e42___NSDictionary_16__0__RMModelPayloadBase_8l;
  typeCopy3 = type;
  [(RMModelPayloadBase *)self serializeDictionaryIntoDictionary:v5 usingKey:@"RapidSecurityResponse" value:payloadRapidSecurityResponse dictSerializer:v18 isRequired:0 defaultValue:0];

  payloadAllowStandardUserOSUpdates = [(RMModelSoftwareUpdateSettingsDeclaration *)self payloadAllowStandardUserOSUpdates];
  [(RMModelPayloadBase *)self serializeBooleanIntoDictionary:v5 usingKey:@"AllowStandardUserOSUpdates" value:payloadAllowStandardUserOSUpdates isRequired:0 defaultValue:v7];

  payloadBeta = [(RMModelSoftwareUpdateSettingsDeclaration *)self payloadBeta];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __69__RMModelSoftwareUpdateSettingsDeclaration_serializePayloadWithType___block_invoke_4;
  v16[3] = &__block_descriptor_34_e42___NSDictionary_16__0__RMModelPayloadBase_8l;
  typeCopy4 = type;
  [(RMModelPayloadBase *)self serializeDictionaryIntoDictionary:v5 usingKey:@"Beta" value:payloadBeta dictSerializer:v16 isRequired:0 defaultValue:0];

  v14 = [v5 copy];

  return v14;
}

- (void)combineWithOther:(id)other
{
  v28[3] = *MEMORY[0x277D85DE8];
  otherCopy = other;
  payloadNotifications = [(RMModelSoftwareUpdateSettingsDeclaration *)self payloadNotifications];
  payloadNotifications2 = [otherCopy payloadNotifications];
  v7 = [RMModelConfigurationBase combineBooleanAnd:payloadNotifications other:payloadNotifications2];
  [(RMModelSoftwareUpdateSettingsDeclaration *)self setPayloadNotifications:v7];

  payloadDeferrals = [(RMModelSoftwareUpdateSettingsDeclaration *)self payloadDeferrals];
  payloadDeferrals2 = [otherCopy payloadDeferrals];
  v10 = [RMModelConfigurationBase combineDictionary:payloadDeferrals other:payloadDeferrals2];
  [(RMModelSoftwareUpdateSettingsDeclaration *)self setPayloadDeferrals:v10];

  payloadRecommendedCadence = [(RMModelSoftwareUpdateSettingsDeclaration *)self payloadRecommendedCadence];
  payloadRecommendedCadence2 = [otherCopy payloadRecommendedCadence];
  v28[0] = @"All";
  v28[1] = @"Oldest";
  v28[2] = @"Newest";
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:3];
  v14 = [RMModelConfigurationBase combineEnumLast:payloadRecommendedCadence other:payloadRecommendedCadence2 enums:v13];
  [(RMModelSoftwareUpdateSettingsDeclaration *)self setPayloadRecommendedCadence:v14];

  payloadAutomaticActions = [(RMModelSoftwareUpdateSettingsDeclaration *)self payloadAutomaticActions];
  payloadAutomaticActions2 = [otherCopy payloadAutomaticActions];
  v17 = [RMModelConfigurationBase combineDictionary:payloadAutomaticActions other:payloadAutomaticActions2];
  [(RMModelSoftwareUpdateSettingsDeclaration *)self setPayloadAutomaticActions:v17];

  payloadRapidSecurityResponse = [(RMModelSoftwareUpdateSettingsDeclaration *)self payloadRapidSecurityResponse];
  payloadRapidSecurityResponse2 = [otherCopy payloadRapidSecurityResponse];
  v20 = [RMModelConfigurationBase combineDictionary:payloadRapidSecurityResponse other:payloadRapidSecurityResponse2];
  [(RMModelSoftwareUpdateSettingsDeclaration *)self setPayloadRapidSecurityResponse:v20];

  payloadAllowStandardUserOSUpdates = [(RMModelSoftwareUpdateSettingsDeclaration *)self payloadAllowStandardUserOSUpdates];
  payloadAllowStandardUserOSUpdates2 = [otherCopy payloadAllowStandardUserOSUpdates];
  v23 = [RMModelConfigurationBase combineBooleanAnd:payloadAllowStandardUserOSUpdates other:payloadAllowStandardUserOSUpdates2];
  [(RMModelSoftwareUpdateSettingsDeclaration *)self setPayloadAllowStandardUserOSUpdates:v23];

  payloadBeta = [(RMModelSoftwareUpdateSettingsDeclaration *)self payloadBeta];
  payloadBeta2 = [otherCopy payloadBeta];

  v26 = [RMModelConfigurationBase combineDictionary:payloadBeta other:payloadBeta2];
  [(RMModelSoftwareUpdateSettingsDeclaration *)self setPayloadBeta:v26];

  v27 = *MEMORY[0x277D85DE8];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v20.receiver = self;
  v20.super_class = RMModelSoftwareUpdateSettingsDeclaration;
  v4 = [(RMModelDeclarationBase *)&v20 copyWithZone:zone];
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