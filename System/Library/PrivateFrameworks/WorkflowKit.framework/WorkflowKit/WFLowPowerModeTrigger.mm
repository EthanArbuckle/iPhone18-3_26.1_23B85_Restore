@interface WFLowPowerModeTrigger
+ (id)localizedDisplayNameWithContext:(id)context;
+ (id)offIcon;
+ (id)onIcon;
+ (id)yellowBatteryHierarchicalColors;
- (BOOL)hasValidConfiguration;
- (WFLowPowerModeTrigger)init;
- (WFLowPowerModeTrigger)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)localizedDescriptionWithConfigurationSummary;
- (id)localizedPastTenseDescription;
- (id)suggestedActions;
- (void)encodeWithCoder:(id)coder;
@end

@implementation WFLowPowerModeTrigger

- (id)suggestedActions
{
  v2 = +[WFActionRegistry sharedRegistry];
  v3 = [v2 createActionsWithIdentifiers:&unk_1F4A9B7A0 serializedParameterArray:0];

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v6.receiver = self;
  v6.super_class = WFLowPowerModeTrigger;
  v4 = [(WFTrigger *)&v6 copyWithZone:zone];
  [v4 setOnEnable:{-[WFLowPowerModeTrigger onEnable](self, "onEnable")}];
  [v4 setOnDisable:{-[WFLowPowerModeTrigger onDisable](self, "onDisable")}];
  return v4;
}

- (WFLowPowerModeTrigger)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = WFLowPowerModeTrigger;
  v5 = [(WFTrigger *)&v10 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"onEnable"];
    v5->_onEnable = [v6 BOOLValue];

    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"onDisable"];
    v5->_onDisable = [v7 BOOLValue];

    v8 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = WFLowPowerModeTrigger;
  coderCopy = coder;
  [(WFTrigger *)&v7 encodeWithCoder:coderCopy];
  v5 = [MEMORY[0x1E696AD98] numberWithBool:{-[WFLowPowerModeTrigger onEnable](self, "onEnable", v7.receiver, v7.super_class)}];
  [coderCopy encodeObject:v5 forKey:@"onEnable"];

  v6 = [MEMORY[0x1E696AD98] numberWithBool:{-[WFLowPowerModeTrigger onDisable](self, "onDisable")}];
  [coderCopy encodeObject:v6 forKey:@"onDisable"];
}

- (id)localizedPastTenseDescription
{
  v12 = *MEMORY[0x1E69E9840];
  if ([(WFLowPowerModeTrigger *)self onEnable]&& [(WFLowPowerModeTrigger *)self onDisable])
  {
    v3 = @"Low Power Mode turned on or off";
LABEL_8:
    v4 = WFLocalizedString(v3);
    goto LABEL_9;
  }

  if ([(WFLowPowerModeTrigger *)self onEnable])
  {
    v3 = @"Low Power Mode turned on";
    goto LABEL_8;
  }

  if ([(WFLowPowerModeTrigger *)self onDisable])
  {
    v3 = @"Low Power Mode turned off";
    goto LABEL_8;
  }

  v7 = getWFTriggersLogObject();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
  {
    v8 = 136315394;
    v9 = "[WFLowPowerModeTrigger localizedPastTenseDescription]";
    v10 = 2114;
    selfCopy = self;
    _os_log_impl(&dword_1CA256000, v7, OS_LOG_TYPE_FAULT, "%s Invalid config for %{public}@", &v8, 0x16u);
  }

  v4 = &stru_1F4A1C408;
LABEL_9:
  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

- (id)localizedDescriptionWithConfigurationSummary
{
  v12 = *MEMORY[0x1E69E9840];
  if ([(WFLowPowerModeTrigger *)self onEnable]&& [(WFLowPowerModeTrigger *)self onDisable])
  {
    v3 = @"When Low Power Mode is turned on or off";
LABEL_8:
    v4 = WFLocalizedString(v3);
    goto LABEL_9;
  }

  if ([(WFLowPowerModeTrigger *)self onEnable])
  {
    v3 = @"When Low Power Mode is turned on";
    goto LABEL_8;
  }

  if ([(WFLowPowerModeTrigger *)self onDisable])
  {
    v3 = @"When Low Power Mode is turned off";
    goto LABEL_8;
  }

  v7 = getWFTriggersLogObject();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
  {
    v8 = 136315394;
    v9 = "[WFLowPowerModeTrigger localizedDescriptionWithConfigurationSummary]";
    v10 = 2114;
    selfCopy = self;
    _os_log_impl(&dword_1CA256000, v7, OS_LOG_TYPE_FAULT, "%s Invalid config for %{public}@", &v8, 0x16u);
  }

  v4 = &stru_1F4A1C408;
LABEL_9:
  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

- (BOOL)hasValidConfiguration
{
  if ([(WFLowPowerModeTrigger *)self onEnable])
  {
    return 1;
  }

  return [(WFLowPowerModeTrigger *)self onDisable];
}

- (WFLowPowerModeTrigger)init
{
  v6.receiver = self;
  v6.super_class = WFLowPowerModeTrigger;
  v2 = [(WFTrigger *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->_onEnable = 1;
    v2->_onDisable = 0;
    v4 = v2;
  }

  return v3;
}

+ (id)yellowBatteryHierarchicalColors
{
  v7[2] = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E69E09E0] colorWithRed:1.0 green:0.792156875 blue:0.0 alpha:1.0];
  v7[0] = v2;
  batteryOutlineColor = [MEMORY[0x1E69E09E0] batteryOutlineColor];
  v7[1] = batteryOutlineColor;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:2];

  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

+ (id)offIcon
{
  v9[2] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E69E0B58];
  v3 = [MEMORY[0x1E69E09E0] colorWithSystemColor:1];
  v9[0] = v3;
  batteryOutlineColor = [MEMORY[0x1E69E09E0] batteryOutlineColor];
  v9[1] = batteryOutlineColor;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:2];
  v6 = [v2 triggerConfigurationSymbolNamed:@"battery.25" hierarchicalColors:v5];

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

+ (id)onIcon
{
  v2 = MEMORY[0x1E69E0B58];
  yellowBatteryHierarchicalColors = [self yellowBatteryHierarchicalColors];
  v4 = [v2 triggerConfigurationSymbolNamed:@"battery.25" hierarchicalColors:yellowBatteryHierarchicalColors];

  return v4;
}

+ (id)localizedDisplayNameWithContext:(id)context
{
  contextCopy = context;
  v4 = WFLocalizedStringResourceWithKey(@"Low Power Mode", @"Low Power Mode");
  v5 = [contextCopy localize:v4];

  return v5;
}

@end