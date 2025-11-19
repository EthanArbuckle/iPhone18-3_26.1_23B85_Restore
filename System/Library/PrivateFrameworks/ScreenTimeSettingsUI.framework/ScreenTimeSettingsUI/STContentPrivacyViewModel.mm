@interface STContentPrivacyViewModel
+ (id)defaultValueForRestriction:(id)a3;
+ (id)visibleRestrictionWithConfiguration:(id)a3 key:(id)a4 isLocalDevice:(BOOL)a5;
- (BOOL)isEligibleForAppDistribution;
- (BOOL)shouldEnableRestriction:(id)a3;
- (STContentPrivacyViewModel)init;
- (id)defaultValueForRestriction:(id)a3;
- (id)visibleRestrictionWithConfiguration:(id)a3 key:(id)a4;
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

- (id)visibleRestrictionWithConfiguration:(id)a3 key:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [objc_opt_class() visibleRestrictionWithConfiguration:v7 key:v6 isLocalDevice:{-[STContentPrivacyViewModel isLocalDevice](self, "isLocalDevice")}];

  return v8;
}

+ (id)visibleRestrictionWithConfiguration:(id)a3 key:(id)a4 isLocalDevice:(BOOL)a5
{
  v5 = a5;
  v7 = a3;
  v8 = a4;
  v9 = STSupportedConfigurations();
  v10 = [v9 objectForKeyedSubscript:v7];

  if (!v10)
  {
    +[STContentPrivacyViewModel visibleRestrictionWithConfiguration:key:isLocalDevice:];
  }

  v11 = [STContentPrivacyViewModelCoordinator visibleRestrictionsForIsLocalDevice:v5];
  v12 = [[STRestrictionItem alloc] initWithConfiguration:v7 restrictionKey:v8 labelName:&stru_28766E5A8 type:3 restrictionValue:0];

  v13 = [v11 member:v12];

  return v13;
}

- (id)defaultValueForRestriction:(id)a3
{
  v3 = a3;
  v4 = [objc_opt_class() defaultValueForRestriction:v3];

  return v4;
}

+ (id)defaultValueForRestriction:(id)a3
{
  v5 = a3;
  v6 = [v5 restrictionType];
  v7 = v6;
  if (v6 > 1)
  {
    if (v6 != 2)
    {
      if (v6 == 3)
      {
        v8 = [v5 otherInfo];
        goto LABEL_11;
      }

      goto LABEL_8;
    }

    v8 = MEMORY[0x277CBEBF8];
  }

  else
  {
    if (v6)
    {
      if (v6 == 1)
      {
        v8 = MEMORY[0x277CBEC28];
        goto LABEL_11;
      }

LABEL_8:
      v9 = [MEMORY[0x277CCA890] currentHandler];
      [v9 handleFailureInMethod:a2 object:a1 file:@"STContentPrivacyViewModel.m" lineNumber:279 description:{@"Unimplemented type %d", v7}];

      v8 = 0;
      goto LABEL_11;
    }

    v8 = MEMORY[0x277CBEC38];
  }

LABEL_11:

  return v8;
}

- (BOOL)shouldEnableRestriction:(id)a3
{
  v4 = [a3 payloadKey];
  v5 = [v4 isEqualToString:@"allowGameCenterNearbyMultiplayer"];

  if (v5)
  {
    v6 = [[STRestrictionItem alloc] initWithConfiguration:@"system.gamecenter" restrictionKey:@"allowedGameCenterOtherPlayerTypes" labelName:&stru_28766E5A8 type:3 restrictionValue:0];
    v7 = [(STContentPrivacyViewModel *)self valuesByRestriction];
    v8 = [v7 objectForKeyedSubscript:v6];

    if (v8)
    {
      v9 = [v8 integerValue];
      v10 = [&unk_28769D1A8 integerValue];
      v11 = [(STContentPrivacyViewModel *)self restrictionsEnabled];
      v12 = v9 != v10 && v11;
    }

    else
    {
      v12 = [(STContentPrivacyViewModel *)self restrictionsEnabled];
    }

    return v12;
  }

  else
  {

    return [(STContentPrivacyViewModel *)self restrictionsEnabled];
  }
}

- (BOOL)isEligibleForAppDistribution
{
  v3 = +[STContentPrivacyViewModelCoordinator appRatingsRestrictionItem];
  v4 = [(STContentPrivacyViewModel *)self valuesByRestriction];
  v5 = [v4 objectForKeyedSubscript:v3];
  v6 = [v5 isEqualToNumber:&unk_28769D1C0];

  LOBYTE(v4) = v6 | +[STDistributionEligibility evaluateEligibilityForAppDistribution];
  return v4 & 1;
}

+ (void)visibleRestrictionWithConfiguration:key:isLocalDevice:.cold.1()
{
  OUTLINED_FUNCTION_1_1();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

@end