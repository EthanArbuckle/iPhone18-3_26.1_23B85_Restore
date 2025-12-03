@interface WFPlugInTrigger
+ (id)localizedDisplayExplanation;
+ (id)localizedDisplayNameWithContext:(id)context;
+ (id)offIcon;
+ (id)onIcon;
+ (id)pluggedInHierarchicalColors;
- (BOOL)hasValidConfiguration;
- (WFPlugInTrigger)init;
- (WFPlugInTrigger)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)localizedDescriptionWithConfigurationSummary;
- (id)localizedPastTenseDescription;
- (id)suggestedActions;
- (void)encodeWithCoder:(id)coder;
@end

@implementation WFPlugInTrigger

- (id)suggestedActions
{
  v2 = +[WFActionRegistry sharedRegistry];
  v3 = [v2 createActionsWithIdentifiers:&unk_1F4A9B578 serializedParameterArray:0];

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v6.receiver = self;
  v6.super_class = WFPlugInTrigger;
  v4 = [(WFTrigger *)&v6 copyWithZone:zone];
  [v4 setOnEnable:{-[WFPlugInTrigger onEnable](self, "onEnable")}];
  [v4 setOnDisable:{-[WFPlugInTrigger onDisable](self, "onDisable")}];
  return v4;
}

- (WFPlugInTrigger)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = WFPlugInTrigger;
  v5 = [(WFTrigger *)&v11 initWithCoder:coderCopy];
  if (v5)
  {
    if ([coderCopy containsValueForKey:@"selection"])
    {
      v6 = [coderCopy decodeIntForKey:@"selection"];
      if (v6 == 2)
      {
        [(WFPlugInTrigger *)v5 setOnEnable:1];
      }

      else if (v6 != 1)
      {
        [(WFPlugInTrigger *)v5 setOnEnable:1];
LABEL_10:
        v9 = v5;
        goto LABEL_11;
      }

      v8 = v5;
      v7 = 1;
    }

    else
    {
      -[WFPlugInTrigger setOnEnable:](v5, "setOnEnable:", [coderCopy decodeBoolForKey:@"onEnable"]);
      v7 = [coderCopy decodeBoolForKey:@"onDisable"];
      v8 = v5;
    }

    [(WFPlugInTrigger *)v8 setOnDisable:v7];
    goto LABEL_10;
  }

LABEL_11:

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = WFPlugInTrigger;
  coderCopy = coder;
  [(WFTrigger *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeBool:-[WFPlugInTrigger onEnable](self forKey:{"onEnable", v5.receiver, v5.super_class), @"onEnable"}];
  [coderCopy encodeBool:-[WFPlugInTrigger onDisable](self forKey:{"onDisable"), @"onDisable"}];
}

- (id)localizedPastTenseDescription
{
  v16 = *MEMORY[0x1E69E9840];
  currentDevice = [MEMORY[0x1E69E0A90] currentDevice];
  name = [currentDevice name];

  if ([(WFPlugInTrigger *)self onEnable]&& [(WFPlugInTrigger *)self onDisable])
  {
    v5 = MEMORY[0x1E696AEC0];
    v6 = @"%@ connected or disconnected from power";
LABEL_8:
    v7 = WFLocalizedString(v6);
    v8 = [v5 localizedStringWithFormat:v7, name];

    goto LABEL_9;
  }

  if ([(WFPlugInTrigger *)self onEnable])
  {
    v5 = MEMORY[0x1E696AEC0];
    v6 = @"%@ connected to power";
    goto LABEL_8;
  }

  if ([(WFPlugInTrigger *)self onDisable])
  {
    v5 = MEMORY[0x1E696AEC0];
    v6 = @"%@ disconnected from power";
    goto LABEL_8;
  }

  v11 = getWFTriggersLogObject();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
  {
    *buf = 136315394;
    v13 = "[WFPlugInTrigger localizedPastTenseDescription]";
    v14 = 2114;
    selfCopy = self;
    _os_log_impl(&dword_1CA256000, v11, OS_LOG_TYPE_FAULT, "%s Invalid config for %{public}@", buf, 0x16u);
  }

  v8 = &stru_1F4A1C408;
LABEL_9:

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

- (id)localizedDescriptionWithConfigurationSummary
{
  v16 = *MEMORY[0x1E69E9840];
  currentDevice = [MEMORY[0x1E69E0A90] currentDevice];
  name = [currentDevice name];

  if ([(WFPlugInTrigger *)self onEnable]&& [(WFPlugInTrigger *)self onDisable])
  {
    v5 = MEMORY[0x1E696AEC0];
    v6 = @"When %@ is connected or disconnected from power";
LABEL_8:
    v7 = WFLocalizedString(v6);
    v8 = [v5 localizedStringWithFormat:v7, name];

    goto LABEL_9;
  }

  if ([(WFPlugInTrigger *)self onEnable])
  {
    v5 = MEMORY[0x1E696AEC0];
    v6 = @"When %@ is connected to power";
    goto LABEL_8;
  }

  if ([(WFPlugInTrigger *)self onDisable])
  {
    v5 = MEMORY[0x1E696AEC0];
    v6 = @"When %@ is disconnected from power";
    goto LABEL_8;
  }

  v11 = getWFTriggersLogObject();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
  {
    *buf = 136315394;
    v13 = "[WFPlugInTrigger localizedDescriptionWithConfigurationSummary]";
    v14 = 2114;
    selfCopy = self;
    _os_log_impl(&dword_1CA256000, v11, OS_LOG_TYPE_FAULT, "%s Invalid config for %{public}@", buf, 0x16u);
  }

  v8 = &stru_1F4A1C408;
LABEL_9:

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

- (BOOL)hasValidConfiguration
{
  if ([(WFPlugInTrigger *)self onEnable])
  {
    return 1;
  }

  return [(WFPlugInTrigger *)self onDisable];
}

- (WFPlugInTrigger)init
{
  v6.receiver = self;
  v6.super_class = WFPlugInTrigger;
  v2 = [(WFTrigger *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->_onEnable = 1;
    v4 = v2;
  }

  return v3;
}

+ (id)pluggedInHierarchicalColors
{
  v8[3] = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E69E09E0] colorWithSystemColor:1];
  batteryOutlineColor = [MEMORY[0x1E69E09E0] batteryOutlineColor];
  v8[1] = batteryOutlineColor;
  v4 = [MEMORY[0x1E69E09E0] colorWithRed:0.298039228 green:0.843137264 blue:0.392156869 alpha:1.0];
  v8[2] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:3];

  v6 = *MEMORY[0x1E69E9840];

  return v5;
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
  v6 = [v2 triggerConfigurationSymbolNamed:@"battery.100" hierarchicalColors:v5];

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

+ (id)onIcon
{
  v2 = MEMORY[0x1E69E0B58];
  pluggedInHierarchicalColors = [self pluggedInHierarchicalColors];
  v4 = [v2 triggerConfigurationSymbolNamed:@"battery.100.bolt" hierarchicalColors:pluggedInHierarchicalColors];

  return v4;
}

+ (id)localizedDisplayExplanation
{
  currentDevice = [MEMORY[0x1E69E0A90] currentDevice];
  localizedModel = [currentDevice localizedModel];

  v4 = MEMORY[0x1E696AEC0];
  v5 = WFLocalizedString(@"“When my %@ connects to power”");
  v6 = [v4 localizedStringWithFormat:v5, localizedModel];

  return v6;
}

+ (id)localizedDisplayNameWithContext:(id)context
{
  contextCopy = context;
  v4 = WFLocalizedStringResourceWithKey(@"Charger", @"Charger");
  v5 = [contextCopy localize:v4];

  return v5;
}

@end