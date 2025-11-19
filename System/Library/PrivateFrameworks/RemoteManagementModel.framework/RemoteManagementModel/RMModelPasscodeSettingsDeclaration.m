@interface RMModelPasscodeSettingsDeclaration
+ (NSSet)allowedPayloadKeys;
+ (id)assetTypes;
+ (id)buildRequiredOnlyWithIdentifier:(id)a3;
+ (id)buildWithIdentifier:(id)a3 requirePasscode:(id)a4 requireAlphanumericPasscode:(id)a5 requireComplexPasscode:(id)a6 minimumLength:(id)a7 minimumComplexCharacters:(id)a8 maximumFailedAttempts:(id)a9 failedAttemptsResetInMinutes:(id)a10 maximumGracePeriodInMinutes:(id)a11 maximumInactivityInMinutes:(id)a12 maximumPasscodeAgeInDays:(id)a13 passcodeReuseLimit:(id)a14 changeAtNextAuth:(id)a15 customRegex:(id)a16;
+ (id)combineConfigurations:(id)a3;
+ (id)supportedOS;
- (BOOL)loadPayloadFromDictionary:(id)a3 serializationType:(signed __int16)a4 error:(id *)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (id)serializePayloadWithType:(signed __int16)a3;
- (void)combineWithOther:(id)a3;
@end

@implementation RMModelPasscodeSettingsDeclaration

+ (NSSet)allowedPayloadKeys
{
  v7[13] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CBEB98];
  v7[0] = @"RequirePasscode";
  v7[1] = @"RequireAlphanumericPasscode";
  v7[2] = @"RequireComplexPasscode";
  v7[3] = @"MinimumLength";
  v7[4] = @"MinimumComplexCharacters";
  v7[5] = @"MaximumFailedAttempts";
  v7[6] = @"FailedAttemptsResetInMinutes";
  v7[7] = @"MaximumGracePeriodInMinutes";
  v7[8] = @"MaximumInactivityInMinutes";
  v7[9] = @"MaximumPasscodeAgeInDays";
  v7[10] = @"PasscodeReuseLimit";
  v7[11] = @"ChangeAtNextAuth";
  v7[12] = @"CustomRegex";
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:13];
  v4 = [v2 setWithArray:v3];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

+ (id)assetTypes
{
  v2 = objc_opt_new();

  return v2;
}

+ (id)buildWithIdentifier:(id)a3 requirePasscode:(id)a4 requireAlphanumericPasscode:(id)a5 requireComplexPasscode:(id)a6 minimumLength:(id)a7 minimumComplexCharacters:(id)a8 maximumFailedAttempts:(id)a9 failedAttemptsResetInMinutes:(id)a10 maximumGracePeriodInMinutes:(id)a11 maximumInactivityInMinutes:(id)a12 maximumPasscodeAgeInDays:(id)a13 passcodeReuseLimit:(id)a14 changeAtNextAuth:(id)a15 customRegex:(id)a16
{
  v17 = a3;
  v46 = a16;
  v45 = a15;
  v44 = a14;
  v43 = a13;
  v42 = a12;
  v18 = a11;
  v41 = a10;
  v19 = a9;
  v20 = a8;
  v21 = a7;
  v22 = a6;
  v23 = a5;
  v24 = a4;
  v25 = objc_opt_new();
  [v25 setDeclarationType:@"com.apple.configuration.passcode.settings"];
  if (v17)
  {
    [v25 setDeclarationIdentifier:v17];
  }

  else
  {
    v26 = [MEMORY[0x277CCAD78] UUID];
    v27 = [v26 UUIDString];
    [v25 setDeclarationIdentifier:v27];

    v17 = 0;
  }

  v28 = MEMORY[0x277CBEC28];
  if (v24)
  {
    v29 = v24;
  }

  else
  {
    v29 = MEMORY[0x277CBEC28];
  }

  [v25 setPayloadRequirePasscode:v29];

  if (v23)
  {
    v30 = v23;
  }

  else
  {
    v30 = v28;
  }

  [v25 setPayloadRequireAlphanumericPasscode:v30];

  if (v22)
  {
    v31 = v22;
  }

  else
  {
    v31 = v28;
  }

  [v25 setPayloadRequireComplexPasscode:v31];

  if (v21)
  {
    v32 = v21;
  }

  else
  {
    v32 = &unk_28746B798;
  }

  [v25 setPayloadMinimumLength:v32];

  if (v20)
  {
    v33 = v20;
  }

  else
  {
    v33 = &unk_28746B798;
  }

  [v25 setPayloadMinimumComplexCharacters:v33];

  if (v19)
  {
    v34 = v19;
  }

  else
  {
    v34 = &unk_28746B7B0;
  }

  [v25 setPayloadMaximumFailedAttempts:v34];

  [v25 setPayloadFailedAttemptsResetInMinutes:v41];
  [v25 setPayloadMaximumGracePeriodInMinutes:v18];

  [v25 setPayloadMaximumInactivityInMinutes:v42];
  [v25 setPayloadMaximumPasscodeAgeInDays:v43];

  [v25 setPayloadPasscodeReuseLimit:v44];
  if (v45)
  {
    v35 = v45;
  }

  else
  {
    v35 = v28;
  }

  [v25 setPayloadChangeAtNextAuth:v35];

  [v25 setPayloadCustomRegex:v46];
  [v25 updateServerToken];

  return v25;
}

+ (id)buildRequiredOnlyWithIdentifier:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  [v4 setDeclarationType:@"com.apple.configuration.passcode.settings"];
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
  v22[4] = *MEMORY[0x277D85DE8];
  v21[0] = &unk_28746B7C8;
  v16 = [MEMORY[0x277CBEB98] setWithArray:&unk_287467868];
  v20[0] = v16;
  v15 = [MEMORY[0x277CBEB98] setWithArray:&unk_287467880];
  v20[1] = v15;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:2];
  v22[0] = v14;
  v21[1] = &unk_28746B7E0;
  v2 = [MEMORY[0x277CBEB98] setWithArray:&unk_287467898];
  v19[0] = v2;
  v3 = [MEMORY[0x277CBEB98] setWithArray:&unk_2874678B0];
  v19[1] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:2];
  v22[1] = v4;
  v21[2] = &unk_28746B828;
  v5 = [MEMORY[0x277CBEB98] setWithArray:&unk_2874678C8];
  v18[0] = v5;
  v6 = [MEMORY[0x277CBEB98] setWithArray:&unk_2874678E0];
  v18[1] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:2];
  v22[2] = v7;
  v21[3] = &unk_28746B840;
  v8 = [MEMORY[0x277CBEB98] setWithArray:&unk_2874678F8];
  v17[0] = v8;
  v9 = [MEMORY[0x277CBEB98] setWithArray:&unk_287467910];
  v17[1] = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:2];
  v22[3] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:v21 count:4];

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

- (BOOL)loadPayloadFromDictionary:(id)a3 serializationType:(signed __int16)a4 error:(id *)a5
{
  v8 = a3;
  v9 = MEMORY[0x277CBEB58];
  v10 = [v8 allKeys];
  v11 = [v9 setWithArray:v10];

  v12 = +[RMModelPasscodeSettingsDeclaration allowedPayloadKeys];
  [v11 minusSet:v12];

  v13 = [v11 copy];
  [(RMModelPayloadBase *)self setUnknownPayloadKeys:v13];

  if ([(RMModelPayloadBase *)self loadBooleanFromDictionary:v8 usingKey:@"RequirePasscode" forKeyPath:@"payloadRequirePasscode" isRequired:0 defaultValue:MEMORY[0x277CBEC28] error:a5]&& [(RMModelPayloadBase *)self loadBooleanFromDictionary:v8 usingKey:@"RequireAlphanumericPasscode" forKeyPath:@"payloadRequireAlphanumericPasscode" isRequired:0 defaultValue:MEMORY[0x277CBEC28] error:a5]&& [(RMModelPayloadBase *)self loadBooleanFromDictionary:v8 usingKey:@"RequireComplexPasscode" forKeyPath:@"payloadRequireComplexPasscode" isRequired:0 defaultValue:MEMORY[0x277CBEC28] error:a5]&& [(RMModelPayloadBase *)self loadIntegerFromDictionary:v8 usingKey:@"MinimumLength" forKeyPath:@"payloadMinimumLength" isRequired:0 defaultValue:&unk_28746B798 error:a5]&& [(RMModelPayloadBase *)self loadIntegerFromDictionary:v8 usingKey:@"MinimumComplexCharacters" forKeyPath:@"payloadMinimumComplexCharacters" isRequired:0 defaultValue:&unk_28746B798 error:a5]&& [(RMModelPayloadBase *)self loadIntegerFromDictionary:v8 usingKey:@"MaximumFailedAttempts" forKeyPath:@"payloadMaximumFailedAttempts" isRequired:0 defaultValue:&unk_28746B7B0 error:a5]&& [(RMModelPayloadBase *)self loadIntegerFromDictionary:v8 usingKey:@"FailedAttemptsResetInMinutes" forKeyPath:@"payloadFailedAttemptsResetInMinutes" isRequired:0 defaultValue:0 error:a5]&& [(RMModelPayloadBase *)self loadIntegerFromDictionary:v8 usingKey:@"MaximumGracePeriodInMinutes" forKeyPath:@"payloadMaximumGracePeriodInMinutes" isRequired:0 defaultValue:0 error:a5]&& [(RMModelPayloadBase *)self loadIntegerFromDictionary:v8 usingKey:@"MaximumInactivityInMinutes" forKeyPath:@"payloadMaximumInactivityInMinutes" isRequired:0 defaultValue:0 error:a5]&& [(RMModelPayloadBase *)self loadIntegerFromDictionary:v8 usingKey:@"MaximumPasscodeAgeInDays" forKeyPath:@"payloadMaximumPasscodeAgeInDays" isRequired:0 defaultValue:0 error:a5]&& [(RMModelPayloadBase *)self loadIntegerFromDictionary:v8 usingKey:@"PasscodeReuseLimit" forKeyPath:@"payloadPasscodeReuseLimit" isRequired:0 defaultValue:0 error:a5]&& [(RMModelPayloadBase *)self loadBooleanFromDictionary:v8 usingKey:@"ChangeAtNextAuth" forKeyPath:@"payloadChangeAtNextAuth" isRequired:0 defaultValue:MEMORY[0x277CBEC28] error:a5])
  {
    LOWORD(v16) = a4;
    v14 = [(RMModelPayloadBase *)self loadDictionaryFromDictionary:v8 usingKey:@"CustomRegex" forKeyPath:@"payloadCustomRegex" classType:objc_opt_class() isRequired:0 defaultValue:0 serializationType:v16 error:a5];
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
  v6 = [(RMModelPasscodeSettingsDeclaration *)self payloadRequirePasscode];
  v7 = MEMORY[0x277CBEC28];
  [(RMModelPayloadBase *)self serializeBooleanIntoDictionary:v5 usingKey:@"RequirePasscode" value:v6 isRequired:0 defaultValue:MEMORY[0x277CBEC28]];

  v8 = [(RMModelPasscodeSettingsDeclaration *)self payloadRequireAlphanumericPasscode];
  [(RMModelPayloadBase *)self serializeBooleanIntoDictionary:v5 usingKey:@"RequireAlphanumericPasscode" value:v8 isRequired:0 defaultValue:v7];

  v9 = [(RMModelPasscodeSettingsDeclaration *)self payloadRequireComplexPasscode];
  [(RMModelPayloadBase *)self serializeBooleanIntoDictionary:v5 usingKey:@"RequireComplexPasscode" value:v9 isRequired:0 defaultValue:v7];

  v10 = [(RMModelPasscodeSettingsDeclaration *)self payloadMinimumLength];
  [(RMModelPayloadBase *)self serializeIntegerIntoDictionary:v5 usingKey:@"MinimumLength" value:v10 isRequired:0 defaultValue:&unk_28746B798];

  v11 = [(RMModelPasscodeSettingsDeclaration *)self payloadMinimumComplexCharacters];
  [(RMModelPayloadBase *)self serializeIntegerIntoDictionary:v5 usingKey:@"MinimumComplexCharacters" value:v11 isRequired:0 defaultValue:&unk_28746B798];

  v12 = [(RMModelPasscodeSettingsDeclaration *)self payloadMaximumFailedAttempts];
  [(RMModelPayloadBase *)self serializeIntegerIntoDictionary:v5 usingKey:@"MaximumFailedAttempts" value:v12 isRequired:0 defaultValue:&unk_28746B7B0];

  v13 = [(RMModelPasscodeSettingsDeclaration *)self payloadFailedAttemptsResetInMinutes];
  [(RMModelPayloadBase *)self serializeIntegerIntoDictionary:v5 usingKey:@"FailedAttemptsResetInMinutes" value:v13 isRequired:0 defaultValue:0];

  v14 = [(RMModelPasscodeSettingsDeclaration *)self payloadMaximumGracePeriodInMinutes];
  [(RMModelPayloadBase *)self serializeIntegerIntoDictionary:v5 usingKey:@"MaximumGracePeriodInMinutes" value:v14 isRequired:0 defaultValue:0];

  v15 = [(RMModelPasscodeSettingsDeclaration *)self payloadMaximumInactivityInMinutes];
  [(RMModelPayloadBase *)self serializeIntegerIntoDictionary:v5 usingKey:@"MaximumInactivityInMinutes" value:v15 isRequired:0 defaultValue:0];

  v16 = [(RMModelPasscodeSettingsDeclaration *)self payloadMaximumPasscodeAgeInDays];
  [(RMModelPayloadBase *)self serializeIntegerIntoDictionary:v5 usingKey:@"MaximumPasscodeAgeInDays" value:v16 isRequired:0 defaultValue:0];

  v17 = [(RMModelPasscodeSettingsDeclaration *)self payloadPasscodeReuseLimit];
  [(RMModelPayloadBase *)self serializeIntegerIntoDictionary:v5 usingKey:@"PasscodeReuseLimit" value:v17 isRequired:0 defaultValue:0];

  v18 = [(RMModelPasscodeSettingsDeclaration *)self payloadChangeAtNextAuth];
  [(RMModelPayloadBase *)self serializeBooleanIntoDictionary:v5 usingKey:@"ChangeAtNextAuth" value:v18 isRequired:0 defaultValue:v7];

  v19 = [(RMModelPasscodeSettingsDeclaration *)self payloadCustomRegex];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __63__RMModelPasscodeSettingsDeclaration_serializePayloadWithType___block_invoke;
  v22[3] = &__block_descriptor_34_e42___NSDictionary_16__0__RMModelPayloadBase_8l;
  v23 = a3;
  [(RMModelPayloadBase *)self serializeDictionaryIntoDictionary:v5 usingKey:@"CustomRegex" value:v19 dictSerializer:v22 isRequired:0 defaultValue:0];

  v20 = [v5 copy];

  return v20;
}

- (void)combineWithOther:(id)a3
{
  v4 = a3;
  v5 = [(RMModelPasscodeSettingsDeclaration *)self payloadRequirePasscode];
  v6 = [v4 payloadRequirePasscode];
  v7 = [RMModelConfigurationBase combineBooleanOr:v5 other:v6];
  [(RMModelPasscodeSettingsDeclaration *)self setPayloadRequirePasscode:v7];

  v8 = [(RMModelPasscodeSettingsDeclaration *)self payloadRequireAlphanumericPasscode];
  v9 = [v4 payloadRequireAlphanumericPasscode];
  v10 = [RMModelConfigurationBase combineBooleanOr:v8 other:v9];
  [(RMModelPasscodeSettingsDeclaration *)self setPayloadRequireAlphanumericPasscode:v10];

  v11 = [(RMModelPasscodeSettingsDeclaration *)self payloadRequireComplexPasscode];
  v12 = [v4 payloadRequireComplexPasscode];
  v13 = [RMModelConfigurationBase combineBooleanOr:v11 other:v12];
  [(RMModelPasscodeSettingsDeclaration *)self setPayloadRequireComplexPasscode:v13];

  v14 = [(RMModelPasscodeSettingsDeclaration *)self payloadMinimumLength];
  v15 = [v4 payloadMinimumLength];
  v16 = [RMModelConfigurationBase combineNumberMax:v14 other:v15];
  [(RMModelPasscodeSettingsDeclaration *)self setPayloadMinimumLength:v16];

  v17 = [(RMModelPasscodeSettingsDeclaration *)self payloadMinimumComplexCharacters];
  v18 = [v4 payloadMinimumComplexCharacters];
  v19 = [RMModelConfigurationBase combineNumberMax:v17 other:v18];
  [(RMModelPasscodeSettingsDeclaration *)self setPayloadMinimumComplexCharacters:v19];

  v20 = [(RMModelPasscodeSettingsDeclaration *)self payloadMaximumFailedAttempts];
  v21 = [v4 payloadMaximumFailedAttempts];
  v22 = [RMModelConfigurationBase combineNumberMin:v20 other:v21];
  [(RMModelPasscodeSettingsDeclaration *)self setPayloadMaximumFailedAttempts:v22];

  v23 = [(RMModelPasscodeSettingsDeclaration *)self payloadFailedAttemptsResetInMinutes];
  v24 = [v4 payloadFailedAttemptsResetInMinutes];
  v25 = [RMModelConfigurationBase combineNumberMin:v23 other:v24];
  [(RMModelPasscodeSettingsDeclaration *)self setPayloadFailedAttemptsResetInMinutes:v25];

  v26 = [(RMModelPasscodeSettingsDeclaration *)self payloadMaximumGracePeriodInMinutes];
  v27 = [v4 payloadMaximumGracePeriodInMinutes];
  v28 = [RMModelConfigurationBase combineNumberMin:v26 other:v27];
  [(RMModelPasscodeSettingsDeclaration *)self setPayloadMaximumGracePeriodInMinutes:v28];

  v29 = [(RMModelPasscodeSettingsDeclaration *)self payloadMaximumInactivityInMinutes];
  v30 = [v4 payloadMaximumInactivityInMinutes];
  v31 = [RMModelConfigurationBase combineNumberMin:v29 other:v30];
  [(RMModelPasscodeSettingsDeclaration *)self setPayloadMaximumInactivityInMinutes:v31];

  v32 = [(RMModelPasscodeSettingsDeclaration *)self payloadMaximumPasscodeAgeInDays];
  v33 = [v4 payloadMaximumPasscodeAgeInDays];
  v34 = [RMModelConfigurationBase combineNumberMin:v32 other:v33];
  [(RMModelPasscodeSettingsDeclaration *)self setPayloadMaximumPasscodeAgeInDays:v34];

  v35 = [(RMModelPasscodeSettingsDeclaration *)self payloadPasscodeReuseLimit];
  v36 = [v4 payloadPasscodeReuseLimit];
  v37 = [RMModelConfigurationBase combineNumberMin:v35 other:v36];
  [(RMModelPasscodeSettingsDeclaration *)self setPayloadPasscodeReuseLimit:v37];

  v38 = [(RMModelPasscodeSettingsDeclaration *)self payloadChangeAtNextAuth];
  v39 = [v4 payloadChangeAtNextAuth];
  v40 = [RMModelConfigurationBase combineBooleanOr:v38 other:v39];
  [(RMModelPasscodeSettingsDeclaration *)self setPayloadChangeAtNextAuth:v40];

  v43 = [(RMModelPasscodeSettingsDeclaration *)self payloadCustomRegex];
  v41 = [v4 payloadCustomRegex];

  v42 = [RMModelConfigurationBase combineDictionary:v43 other:v41];
  [(RMModelPasscodeSettingsDeclaration *)self setPayloadCustomRegex:v42];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v32.receiver = self;
  v32.super_class = RMModelPasscodeSettingsDeclaration;
  v4 = [(RMModelDeclarationBase *)&v32 copyWithZone:a3];
  v5 = [(NSNumber *)self->_payloadRequirePasscode copy];
  v6 = v4[6];
  v4[6] = v5;

  v7 = [(NSNumber *)self->_payloadRequireAlphanumericPasscode copy];
  v8 = v4[7];
  v4[7] = v7;

  v9 = [(NSNumber *)self->_payloadRequireComplexPasscode copy];
  v10 = v4[8];
  v4[8] = v9;

  v11 = [(NSNumber *)self->_payloadMinimumLength copy];
  v12 = v4[9];
  v4[9] = v11;

  v13 = [(NSNumber *)self->_payloadMinimumComplexCharacters copy];
  v14 = v4[10];
  v4[10] = v13;

  v15 = [(NSNumber *)self->_payloadMaximumFailedAttempts copy];
  v16 = v4[11];
  v4[11] = v15;

  v17 = [(NSNumber *)self->_payloadFailedAttemptsResetInMinutes copy];
  v18 = v4[12];
  v4[12] = v17;

  v19 = [(NSNumber *)self->_payloadMaximumGracePeriodInMinutes copy];
  v20 = v4[13];
  v4[13] = v19;

  v21 = [(NSNumber *)self->_payloadMaximumInactivityInMinutes copy];
  v22 = v4[14];
  v4[14] = v21;

  v23 = [(NSNumber *)self->_payloadMaximumPasscodeAgeInDays copy];
  v24 = v4[15];
  v4[15] = v23;

  v25 = [(NSNumber *)self->_payloadPasscodeReuseLimit copy];
  v26 = v4[16];
  v4[16] = v25;

  v27 = [(NSNumber *)self->_payloadChangeAtNextAuth copy];
  v28 = v4[17];
  v4[17] = v27;

  v29 = [(RMModelPasscodeSettingsDeclaration_CustomRegex *)self->_payloadCustomRegex copy];
  v30 = v4[18];
  v4[18] = v29;

  return v4;
}

@end