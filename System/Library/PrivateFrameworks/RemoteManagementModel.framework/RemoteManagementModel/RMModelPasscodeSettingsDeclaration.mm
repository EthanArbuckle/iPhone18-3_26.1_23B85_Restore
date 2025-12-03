@interface RMModelPasscodeSettingsDeclaration
+ (NSSet)allowedPayloadKeys;
+ (id)assetTypes;
+ (id)buildRequiredOnlyWithIdentifier:(id)identifier;
+ (id)buildWithIdentifier:(id)identifier requirePasscode:(id)passcode requireAlphanumericPasscode:(id)alphanumericPasscode requireComplexPasscode:(id)complexPasscode minimumLength:(id)length minimumComplexCharacters:(id)characters maximumFailedAttempts:(id)attempts failedAttemptsResetInMinutes:(id)self0 maximumGracePeriodInMinutes:(id)self1 maximumInactivityInMinutes:(id)self2 maximumPasscodeAgeInDays:(id)self3 passcodeReuseLimit:(id)self4 changeAtNextAuth:(id)self5 customRegex:(id)self6;
+ (id)combineConfigurations:(id)configurations;
+ (id)supportedOS;
- (BOOL)loadPayloadFromDictionary:(id)dictionary serializationType:(signed __int16)type error:(id *)error;
- (id)copyWithZone:(_NSZone *)zone;
- (id)serializePayloadWithType:(signed __int16)type;
- (void)combineWithOther:(id)other;
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

+ (id)buildWithIdentifier:(id)identifier requirePasscode:(id)passcode requireAlphanumericPasscode:(id)alphanumericPasscode requireComplexPasscode:(id)complexPasscode minimumLength:(id)length minimumComplexCharacters:(id)characters maximumFailedAttempts:(id)attempts failedAttemptsResetInMinutes:(id)self0 maximumGracePeriodInMinutes:(id)self1 maximumInactivityInMinutes:(id)self2 maximumPasscodeAgeInDays:(id)self3 passcodeReuseLimit:(id)self4 changeAtNextAuth:(id)self5 customRegex:(id)self6
{
  identifierCopy = identifier;
  regexCopy = regex;
  authCopy = auth;
  limitCopy = limit;
  daysCopy = days;
  inactivityInMinutesCopy = inactivityInMinutes;
  inMinutesCopy = inMinutes;
  minutesCopy = minutes;
  attemptsCopy = attempts;
  charactersCopy = characters;
  lengthCopy = length;
  complexPasscodeCopy = complexPasscode;
  alphanumericPasscodeCopy = alphanumericPasscode;
  passcodeCopy = passcode;
  v25 = objc_opt_new();
  [v25 setDeclarationType:@"com.apple.configuration.passcode.settings"];
  if (identifierCopy)
  {
    [v25 setDeclarationIdentifier:identifierCopy];
  }

  else
  {
    uUID = [MEMORY[0x277CCAD78] UUID];
    uUIDString = [uUID UUIDString];
    [v25 setDeclarationIdentifier:uUIDString];

    identifierCopy = 0;
  }

  v28 = MEMORY[0x277CBEC28];
  if (passcodeCopy)
  {
    v29 = passcodeCopy;
  }

  else
  {
    v29 = MEMORY[0x277CBEC28];
  }

  [v25 setPayloadRequirePasscode:v29];

  if (alphanumericPasscodeCopy)
  {
    v30 = alphanumericPasscodeCopy;
  }

  else
  {
    v30 = v28;
  }

  [v25 setPayloadRequireAlphanumericPasscode:v30];

  if (complexPasscodeCopy)
  {
    v31 = complexPasscodeCopy;
  }

  else
  {
    v31 = v28;
  }

  [v25 setPayloadRequireComplexPasscode:v31];

  if (lengthCopy)
  {
    v32 = lengthCopy;
  }

  else
  {
    v32 = &unk_28746B798;
  }

  [v25 setPayloadMinimumLength:v32];

  if (charactersCopy)
  {
    v33 = charactersCopy;
  }

  else
  {
    v33 = &unk_28746B798;
  }

  [v25 setPayloadMinimumComplexCharacters:v33];

  if (attemptsCopy)
  {
    v34 = attemptsCopy;
  }

  else
  {
    v34 = &unk_28746B7B0;
  }

  [v25 setPayloadMaximumFailedAttempts:v34];

  [v25 setPayloadFailedAttemptsResetInMinutes:minutesCopy];
  [v25 setPayloadMaximumGracePeriodInMinutes:inMinutesCopy];

  [v25 setPayloadMaximumInactivityInMinutes:inactivityInMinutesCopy];
  [v25 setPayloadMaximumPasscodeAgeInDays:daysCopy];

  [v25 setPayloadPasscodeReuseLimit:limitCopy];
  if (authCopy)
  {
    v35 = authCopy;
  }

  else
  {
    v35 = v28;
  }

  [v25 setPayloadChangeAtNextAuth:v35];

  [v25 setPayloadCustomRegex:regexCopy];
  [v25 updateServerToken];

  return v25;
}

+ (id)buildRequiredOnlyWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = objc_opt_new();
  [v4 setDeclarationType:@"com.apple.configuration.passcode.settings"];
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

- (BOOL)loadPayloadFromDictionary:(id)dictionary serializationType:(signed __int16)type error:(id *)error
{
  dictionaryCopy = dictionary;
  v9 = MEMORY[0x277CBEB58];
  allKeys = [dictionaryCopy allKeys];
  v11 = [v9 setWithArray:allKeys];

  v12 = +[RMModelPasscodeSettingsDeclaration allowedPayloadKeys];
  [v11 minusSet:v12];

  v13 = [v11 copy];
  [(RMModelPayloadBase *)self setUnknownPayloadKeys:v13];

  if ([(RMModelPayloadBase *)self loadBooleanFromDictionary:dictionaryCopy usingKey:@"RequirePasscode" forKeyPath:@"payloadRequirePasscode" isRequired:0 defaultValue:MEMORY[0x277CBEC28] error:error]&& [(RMModelPayloadBase *)self loadBooleanFromDictionary:dictionaryCopy usingKey:@"RequireAlphanumericPasscode" forKeyPath:@"payloadRequireAlphanumericPasscode" isRequired:0 defaultValue:MEMORY[0x277CBEC28] error:error]&& [(RMModelPayloadBase *)self loadBooleanFromDictionary:dictionaryCopy usingKey:@"RequireComplexPasscode" forKeyPath:@"payloadRequireComplexPasscode" isRequired:0 defaultValue:MEMORY[0x277CBEC28] error:error]&& [(RMModelPayloadBase *)self loadIntegerFromDictionary:dictionaryCopy usingKey:@"MinimumLength" forKeyPath:@"payloadMinimumLength" isRequired:0 defaultValue:&unk_28746B798 error:error]&& [(RMModelPayloadBase *)self loadIntegerFromDictionary:dictionaryCopy usingKey:@"MinimumComplexCharacters" forKeyPath:@"payloadMinimumComplexCharacters" isRequired:0 defaultValue:&unk_28746B798 error:error]&& [(RMModelPayloadBase *)self loadIntegerFromDictionary:dictionaryCopy usingKey:@"MaximumFailedAttempts" forKeyPath:@"payloadMaximumFailedAttempts" isRequired:0 defaultValue:&unk_28746B7B0 error:error]&& [(RMModelPayloadBase *)self loadIntegerFromDictionary:dictionaryCopy usingKey:@"FailedAttemptsResetInMinutes" forKeyPath:@"payloadFailedAttemptsResetInMinutes" isRequired:0 defaultValue:0 error:error]&& [(RMModelPayloadBase *)self loadIntegerFromDictionary:dictionaryCopy usingKey:@"MaximumGracePeriodInMinutes" forKeyPath:@"payloadMaximumGracePeriodInMinutes" isRequired:0 defaultValue:0 error:error]&& [(RMModelPayloadBase *)self loadIntegerFromDictionary:dictionaryCopy usingKey:@"MaximumInactivityInMinutes" forKeyPath:@"payloadMaximumInactivityInMinutes" isRequired:0 defaultValue:0 error:error]&& [(RMModelPayloadBase *)self loadIntegerFromDictionary:dictionaryCopy usingKey:@"MaximumPasscodeAgeInDays" forKeyPath:@"payloadMaximumPasscodeAgeInDays" isRequired:0 defaultValue:0 error:error]&& [(RMModelPayloadBase *)self loadIntegerFromDictionary:dictionaryCopy usingKey:@"PasscodeReuseLimit" forKeyPath:@"payloadPasscodeReuseLimit" isRequired:0 defaultValue:0 error:error]&& [(RMModelPayloadBase *)self loadBooleanFromDictionary:dictionaryCopy usingKey:@"ChangeAtNextAuth" forKeyPath:@"payloadChangeAtNextAuth" isRequired:0 defaultValue:MEMORY[0x277CBEC28] error:error])
  {
    LOWORD(v16) = type;
    v14 = [(RMModelPayloadBase *)self loadDictionaryFromDictionary:dictionaryCopy usingKey:@"CustomRegex" forKeyPath:@"payloadCustomRegex" classType:objc_opt_class() isRequired:0 defaultValue:0 serializationType:v16 error:error];
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
  payloadRequirePasscode = [(RMModelPasscodeSettingsDeclaration *)self payloadRequirePasscode];
  v7 = MEMORY[0x277CBEC28];
  [(RMModelPayloadBase *)self serializeBooleanIntoDictionary:v5 usingKey:@"RequirePasscode" value:payloadRequirePasscode isRequired:0 defaultValue:MEMORY[0x277CBEC28]];

  payloadRequireAlphanumericPasscode = [(RMModelPasscodeSettingsDeclaration *)self payloadRequireAlphanumericPasscode];
  [(RMModelPayloadBase *)self serializeBooleanIntoDictionary:v5 usingKey:@"RequireAlphanumericPasscode" value:payloadRequireAlphanumericPasscode isRequired:0 defaultValue:v7];

  payloadRequireComplexPasscode = [(RMModelPasscodeSettingsDeclaration *)self payloadRequireComplexPasscode];
  [(RMModelPayloadBase *)self serializeBooleanIntoDictionary:v5 usingKey:@"RequireComplexPasscode" value:payloadRequireComplexPasscode isRequired:0 defaultValue:v7];

  payloadMinimumLength = [(RMModelPasscodeSettingsDeclaration *)self payloadMinimumLength];
  [(RMModelPayloadBase *)self serializeIntegerIntoDictionary:v5 usingKey:@"MinimumLength" value:payloadMinimumLength isRequired:0 defaultValue:&unk_28746B798];

  payloadMinimumComplexCharacters = [(RMModelPasscodeSettingsDeclaration *)self payloadMinimumComplexCharacters];
  [(RMModelPayloadBase *)self serializeIntegerIntoDictionary:v5 usingKey:@"MinimumComplexCharacters" value:payloadMinimumComplexCharacters isRequired:0 defaultValue:&unk_28746B798];

  payloadMaximumFailedAttempts = [(RMModelPasscodeSettingsDeclaration *)self payloadMaximumFailedAttempts];
  [(RMModelPayloadBase *)self serializeIntegerIntoDictionary:v5 usingKey:@"MaximumFailedAttempts" value:payloadMaximumFailedAttempts isRequired:0 defaultValue:&unk_28746B7B0];

  payloadFailedAttemptsResetInMinutes = [(RMModelPasscodeSettingsDeclaration *)self payloadFailedAttemptsResetInMinutes];
  [(RMModelPayloadBase *)self serializeIntegerIntoDictionary:v5 usingKey:@"FailedAttemptsResetInMinutes" value:payloadFailedAttemptsResetInMinutes isRequired:0 defaultValue:0];

  payloadMaximumGracePeriodInMinutes = [(RMModelPasscodeSettingsDeclaration *)self payloadMaximumGracePeriodInMinutes];
  [(RMModelPayloadBase *)self serializeIntegerIntoDictionary:v5 usingKey:@"MaximumGracePeriodInMinutes" value:payloadMaximumGracePeriodInMinutes isRequired:0 defaultValue:0];

  payloadMaximumInactivityInMinutes = [(RMModelPasscodeSettingsDeclaration *)self payloadMaximumInactivityInMinutes];
  [(RMModelPayloadBase *)self serializeIntegerIntoDictionary:v5 usingKey:@"MaximumInactivityInMinutes" value:payloadMaximumInactivityInMinutes isRequired:0 defaultValue:0];

  payloadMaximumPasscodeAgeInDays = [(RMModelPasscodeSettingsDeclaration *)self payloadMaximumPasscodeAgeInDays];
  [(RMModelPayloadBase *)self serializeIntegerIntoDictionary:v5 usingKey:@"MaximumPasscodeAgeInDays" value:payloadMaximumPasscodeAgeInDays isRequired:0 defaultValue:0];

  payloadPasscodeReuseLimit = [(RMModelPasscodeSettingsDeclaration *)self payloadPasscodeReuseLimit];
  [(RMModelPayloadBase *)self serializeIntegerIntoDictionary:v5 usingKey:@"PasscodeReuseLimit" value:payloadPasscodeReuseLimit isRequired:0 defaultValue:0];

  payloadChangeAtNextAuth = [(RMModelPasscodeSettingsDeclaration *)self payloadChangeAtNextAuth];
  [(RMModelPayloadBase *)self serializeBooleanIntoDictionary:v5 usingKey:@"ChangeAtNextAuth" value:payloadChangeAtNextAuth isRequired:0 defaultValue:v7];

  payloadCustomRegex = [(RMModelPasscodeSettingsDeclaration *)self payloadCustomRegex];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __63__RMModelPasscodeSettingsDeclaration_serializePayloadWithType___block_invoke;
  v22[3] = &__block_descriptor_34_e42___NSDictionary_16__0__RMModelPayloadBase_8l;
  typeCopy = type;
  [(RMModelPayloadBase *)self serializeDictionaryIntoDictionary:v5 usingKey:@"CustomRegex" value:payloadCustomRegex dictSerializer:v22 isRequired:0 defaultValue:0];

  v20 = [v5 copy];

  return v20;
}

- (void)combineWithOther:(id)other
{
  otherCopy = other;
  payloadRequirePasscode = [(RMModelPasscodeSettingsDeclaration *)self payloadRequirePasscode];
  payloadRequirePasscode2 = [otherCopy payloadRequirePasscode];
  v7 = [RMModelConfigurationBase combineBooleanOr:payloadRequirePasscode other:payloadRequirePasscode2];
  [(RMModelPasscodeSettingsDeclaration *)self setPayloadRequirePasscode:v7];

  payloadRequireAlphanumericPasscode = [(RMModelPasscodeSettingsDeclaration *)self payloadRequireAlphanumericPasscode];
  payloadRequireAlphanumericPasscode2 = [otherCopy payloadRequireAlphanumericPasscode];
  v10 = [RMModelConfigurationBase combineBooleanOr:payloadRequireAlphanumericPasscode other:payloadRequireAlphanumericPasscode2];
  [(RMModelPasscodeSettingsDeclaration *)self setPayloadRequireAlphanumericPasscode:v10];

  payloadRequireComplexPasscode = [(RMModelPasscodeSettingsDeclaration *)self payloadRequireComplexPasscode];
  payloadRequireComplexPasscode2 = [otherCopy payloadRequireComplexPasscode];
  v13 = [RMModelConfigurationBase combineBooleanOr:payloadRequireComplexPasscode other:payloadRequireComplexPasscode2];
  [(RMModelPasscodeSettingsDeclaration *)self setPayloadRequireComplexPasscode:v13];

  payloadMinimumLength = [(RMModelPasscodeSettingsDeclaration *)self payloadMinimumLength];
  payloadMinimumLength2 = [otherCopy payloadMinimumLength];
  v16 = [RMModelConfigurationBase combineNumberMax:payloadMinimumLength other:payloadMinimumLength2];
  [(RMModelPasscodeSettingsDeclaration *)self setPayloadMinimumLength:v16];

  payloadMinimumComplexCharacters = [(RMModelPasscodeSettingsDeclaration *)self payloadMinimumComplexCharacters];
  payloadMinimumComplexCharacters2 = [otherCopy payloadMinimumComplexCharacters];
  v19 = [RMModelConfigurationBase combineNumberMax:payloadMinimumComplexCharacters other:payloadMinimumComplexCharacters2];
  [(RMModelPasscodeSettingsDeclaration *)self setPayloadMinimumComplexCharacters:v19];

  payloadMaximumFailedAttempts = [(RMModelPasscodeSettingsDeclaration *)self payloadMaximumFailedAttempts];
  payloadMaximumFailedAttempts2 = [otherCopy payloadMaximumFailedAttempts];
  v22 = [RMModelConfigurationBase combineNumberMin:payloadMaximumFailedAttempts other:payloadMaximumFailedAttempts2];
  [(RMModelPasscodeSettingsDeclaration *)self setPayloadMaximumFailedAttempts:v22];

  payloadFailedAttemptsResetInMinutes = [(RMModelPasscodeSettingsDeclaration *)self payloadFailedAttemptsResetInMinutes];
  payloadFailedAttemptsResetInMinutes2 = [otherCopy payloadFailedAttemptsResetInMinutes];
  v25 = [RMModelConfigurationBase combineNumberMin:payloadFailedAttemptsResetInMinutes other:payloadFailedAttemptsResetInMinutes2];
  [(RMModelPasscodeSettingsDeclaration *)self setPayloadFailedAttemptsResetInMinutes:v25];

  payloadMaximumGracePeriodInMinutes = [(RMModelPasscodeSettingsDeclaration *)self payloadMaximumGracePeriodInMinutes];
  payloadMaximumGracePeriodInMinutes2 = [otherCopy payloadMaximumGracePeriodInMinutes];
  v28 = [RMModelConfigurationBase combineNumberMin:payloadMaximumGracePeriodInMinutes other:payloadMaximumGracePeriodInMinutes2];
  [(RMModelPasscodeSettingsDeclaration *)self setPayloadMaximumGracePeriodInMinutes:v28];

  payloadMaximumInactivityInMinutes = [(RMModelPasscodeSettingsDeclaration *)self payloadMaximumInactivityInMinutes];
  payloadMaximumInactivityInMinutes2 = [otherCopy payloadMaximumInactivityInMinutes];
  v31 = [RMModelConfigurationBase combineNumberMin:payloadMaximumInactivityInMinutes other:payloadMaximumInactivityInMinutes2];
  [(RMModelPasscodeSettingsDeclaration *)self setPayloadMaximumInactivityInMinutes:v31];

  payloadMaximumPasscodeAgeInDays = [(RMModelPasscodeSettingsDeclaration *)self payloadMaximumPasscodeAgeInDays];
  payloadMaximumPasscodeAgeInDays2 = [otherCopy payloadMaximumPasscodeAgeInDays];
  v34 = [RMModelConfigurationBase combineNumberMin:payloadMaximumPasscodeAgeInDays other:payloadMaximumPasscodeAgeInDays2];
  [(RMModelPasscodeSettingsDeclaration *)self setPayloadMaximumPasscodeAgeInDays:v34];

  payloadPasscodeReuseLimit = [(RMModelPasscodeSettingsDeclaration *)self payloadPasscodeReuseLimit];
  payloadPasscodeReuseLimit2 = [otherCopy payloadPasscodeReuseLimit];
  v37 = [RMModelConfigurationBase combineNumberMin:payloadPasscodeReuseLimit other:payloadPasscodeReuseLimit2];
  [(RMModelPasscodeSettingsDeclaration *)self setPayloadPasscodeReuseLimit:v37];

  payloadChangeAtNextAuth = [(RMModelPasscodeSettingsDeclaration *)self payloadChangeAtNextAuth];
  payloadChangeAtNextAuth2 = [otherCopy payloadChangeAtNextAuth];
  v40 = [RMModelConfigurationBase combineBooleanOr:payloadChangeAtNextAuth other:payloadChangeAtNextAuth2];
  [(RMModelPasscodeSettingsDeclaration *)self setPayloadChangeAtNextAuth:v40];

  payloadCustomRegex = [(RMModelPasscodeSettingsDeclaration *)self payloadCustomRegex];
  payloadCustomRegex2 = [otherCopy payloadCustomRegex];

  v42 = [RMModelConfigurationBase combineDictionary:payloadCustomRegex other:payloadCustomRegex2];
  [(RMModelPasscodeSettingsDeclaration *)self setPayloadCustomRegex:v42];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v32.receiver = self;
  v32.super_class = RMModelPasscodeSettingsDeclaration;
  v4 = [(RMModelDeclarationBase *)&v32 copyWithZone:zone];
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