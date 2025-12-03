@interface STContentPrivacyViewModel
+ (id)defaultValueForRestriction:(id)restriction;
+ (id)visibleRestrictionWithConfiguration:(id)configuration key:(id)key isLocalDevice:(BOOL)device;
- (BOOL)isEligibleForAppDistribution;
- (BOOL)shouldEnableRestriction:(id)restriction;
- (STContentPrivacyViewModel)init;
- (id)defaultValueForRestriction:(id)restriction;
- (id)visibleRestrictionWithConfiguration:(id)configuration key:(id)key;
@end

@implementation STContentPrivacyViewModel

- (STContentPrivacyViewModel)init
{
  v9.receiver = self;
  v9.super_class = STContentPrivacyViewModel;
  v2 = [(STContentPrivacyViewModel *)&v9 init];
  v3 = v2;
  if (v2)
  {
    v2->_isLocalDevice = 0;
    v2->_restrictionsEnabled = 0;
    v4 = objc_opt_new();
    visibleRestrictions = v3->_visibleRestrictions;
    v3->_visibleRestrictions = v4;

    v6 = objc_opt_new();
    valuesByRestriction = v3->_valuesByRestriction;
    v3->_valuesByRestriction = v6;

    v3->_isSiriImageGenerationAllowed = 1;
  }

  return v3;
}

- (id)visibleRestrictionWithConfiguration:(id)configuration key:(id)key
{
  keyCopy = key;
  configurationCopy = configuration;
  v8 = [objc_opt_class() visibleRestrictionWithConfiguration:configurationCopy key:keyCopy isLocalDevice:{-[STContentPrivacyViewModel isLocalDevice](self, "isLocalDevice")}];

  return v8;
}

+ (id)visibleRestrictionWithConfiguration:(id)configuration key:(id)key isLocalDevice:(BOOL)device
{
  deviceCopy = device;
  configurationCopy = configuration;
  keyCopy = key;
  v9 = STSupportedConfigurations();
  v10 = [v9 objectForKeyedSubscript:configurationCopy];

  if (!v10)
  {
    +[STContentPrivacyViewModel visibleRestrictionWithConfiguration:key:isLocalDevice:];
  }

  v11 = [STContentPrivacyViewModelCoordinator visibleRestrictionsForIsLocalDevice:deviceCopy];
  v12 = [[STRestrictionItem alloc] initWithConfiguration:configurationCopy restrictionKey:keyCopy labelName:&stru_28766E5A8 type:3 restrictionValue:0];

  v13 = [v11 member:v12];

  return v13;
}

- (id)defaultValueForRestriction:(id)restriction
{
  restrictionCopy = restriction;
  v4 = [objc_opt_class() defaultValueForRestriction:restrictionCopy];

  return v4;
}

+ (id)defaultValueForRestriction:(id)restriction
{
  restrictionCopy = restriction;
  restrictionType = [restrictionCopy restrictionType];
  v7 = restrictionType;
  if (restrictionType > 1)
  {
    if (restrictionType != 2)
    {
      if (restrictionType == 3)
      {
        otherInfo = [restrictionCopy otherInfo];
        goto LABEL_11;
      }

      goto LABEL_8;
    }

    otherInfo = MEMORY[0x277CBEBF8];
  }

  else
  {
    if (restrictionType)
    {
      if (restrictionType == 1)
      {
        otherInfo = MEMORY[0x277CBEC28];
        goto LABEL_11;
      }

LABEL_8:
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"STContentPrivacyViewModel.m" lineNumber:279 description:{@"Unimplemented type %d", v7}];

      otherInfo = 0;
      goto LABEL_11;
    }

    otherInfo = MEMORY[0x277CBEC38];
  }

LABEL_11:

  return otherInfo;
}

- (BOOL)shouldEnableRestriction:(id)restriction
{
  payloadKey = [restriction payloadKey];
  v5 = [payloadKey isEqualToString:@"allowGameCenterNearbyMultiplayer"];

  if (v5)
  {
    v6 = [[STRestrictionItem alloc] initWithConfiguration:@"system.gamecenter" restrictionKey:@"allowedGameCenterOtherPlayerTypes" labelName:&stru_28766E5A8 type:3 restrictionValue:0];
    valuesByRestriction = [(STContentPrivacyViewModel *)self valuesByRestriction];
    v8 = [valuesByRestriction objectForKeyedSubscript:v6];

    if (v8)
    {
      integerValue = [v8 integerValue];
      integerValue2 = [&unk_28769D1A8 integerValue];
      restrictionsEnabled = [(STContentPrivacyViewModel *)self restrictionsEnabled];
      restrictionsEnabled2 = integerValue != integerValue2 && restrictionsEnabled;
    }

    else
    {
      restrictionsEnabled2 = [(STContentPrivacyViewModel *)self restrictionsEnabled];
    }

    return restrictionsEnabled2;
  }

  else
  {

    return [(STContentPrivacyViewModel *)self restrictionsEnabled];
  }
}

- (BOOL)isEligibleForAppDistribution
{
  v3 = +[STContentPrivacyViewModelCoordinator appRatingsRestrictionItem];
  valuesByRestriction = [(STContentPrivacyViewModel *)self valuesByRestriction];
  v5 = [valuesByRestriction objectForKeyedSubscript:v3];
  v6 = [v5 isEqualToNumber:&unk_28769D1C0];

  LOBYTE(valuesByRestriction) = v6 | +[STDistributionEligibility evaluateEligibilityForAppDistribution];
  return valuesByRestriction & 1;
}

+ (void)visibleRestrictionWithConfiguration:key:isLocalDevice:.cold.1()
{
  OUTLINED_FUNCTION_1_1();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

@end