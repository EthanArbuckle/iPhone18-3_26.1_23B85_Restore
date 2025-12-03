@interface WFBatteryLevelTrigger
+ (id)displayGlyphHierarchicalColors;
+ (id)localizedDisplayNameWithContext:(id)context;
- (BOOL)hasValidConfiguration;
- (WFBatteryLevelTrigger)init;
- (WFBatteryLevelTrigger)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)localizedDescriptionWithConfigurationSummary;
- (id)localizedPastTenseDescription;
- (id)suggestedActions;
- (void)encodeWithCoder:(id)coder;
@end

@implementation WFBatteryLevelTrigger

- (id)suggestedActions
{
  v2 = +[WFActionRegistry sharedRegistry];
  v3 = [v2 createActionsWithIdentifiers:&unk_1F4A9B608 serializedParameterArray:0];

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v6.receiver = self;
  v6.super_class = WFBatteryLevelTrigger;
  v4 = [(WFTrigger *)&v6 copyWithZone:zone];
  [v4 setLevel:{-[WFBatteryLevelTrigger level](self, "level")}];
  [v4 setSelection:{-[WFBatteryLevelTrigger selection](self, "selection")}];
  return v4;
}

- (WFBatteryLevelTrigger)initWithCoder:(id)coder
{
  coderCopy = coder;
  v12.receiver = self;
  v12.super_class = WFBatteryLevelTrigger;
  v5 = [(WFTrigger *)&v12 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"level"];
    v7 = v6;
    if (v6)
    {
      unsignedIntegerValue = [v6 unsignedIntegerValue];
    }

    else
    {
      unsignedIntegerValue = 50;
    }

    [(WFBatteryLevelTrigger *)v5 setLevel:unsignedIntegerValue];
    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"selection"];
    -[WFBatteryLevelTrigger setSelection:](v5, "setSelection:", [v9 unsignedIntegerValue]);
    v10 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = WFBatteryLevelTrigger;
  coderCopy = coder;
  [(WFTrigger *)&v7 encodeWithCoder:coderCopy];
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[WFBatteryLevelTrigger level](self, "level", v7.receiver, v7.super_class)}];
  [coderCopy encodeObject:v5 forKey:@"level"];

  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[WFBatteryLevelTrigger selection](self, "selection")}];
  [coderCopy encodeObject:v6 forKey:@"selection"];
}

- (id)localizedPastTenseDescription
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E696ADA0];
  v4 = MEMORY[0x1E696AD98];
  *&v5 = [(WFBatteryLevelTrigger *)self level]/ 100.0;
  v6 = [v4 numberWithFloat:v5];
  v7 = [v3 localizedStringFromNumber:v6 numberStyle:3];

  selection = [(WFBatteryLevelTrigger *)self selection];
  switch(selection)
  {
    case 2uLL:
      v9 = MEMORY[0x1E696AEC0];
      v10 = @"Battery level fell below %@";
      goto LABEL_7;
    case 1uLL:
      v9 = MEMORY[0x1E696AEC0];
      v10 = @"Battery level rose above %@";
      goto LABEL_7;
    case 0uLL:
      v9 = MEMORY[0x1E696AEC0];
      v10 = @"Battery level reached %@";
LABEL_7:
      v11 = WFLocalizedString(v10);
      v12 = [v9 localizedStringWithFormat:v11, v7];

      goto LABEL_11;
  }

  v13 = getWFTriggersLogObject();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
  {
    *buf = 136315394;
    v17 = "[WFBatteryLevelTrigger localizedPastTenseDescription]";
    v18 = 2114;
    selfCopy = self;
    _os_log_impl(&dword_1CA256000, v13, OS_LOG_TYPE_FAULT, "%s Invalid config for %{public}@", buf, 0x16u);
  }

  v12 = &stru_1F4A1C408;
LABEL_11:

  v14 = *MEMORY[0x1E69E9840];

  return v12;
}

- (id)localizedDescriptionWithConfigurationSummary
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E696ADA0];
  v4 = MEMORY[0x1E696AD98];
  *&v5 = [(WFBatteryLevelTrigger *)self level]/ 100.0;
  v6 = [v4 numberWithFloat:v5];
  v7 = [v3 localizedStringFromNumber:v6 numberStyle:3];

  selection = [(WFBatteryLevelTrigger *)self selection];
  switch(selection)
  {
    case 2uLL:
      v9 = MEMORY[0x1E696AEC0];
      v10 = @"When battery level falls below %@";
      goto LABEL_7;
    case 1uLL:
      v9 = MEMORY[0x1E696AEC0];
      v10 = @"When battery level rises above %@";
      goto LABEL_7;
    case 0uLL:
      v9 = MEMORY[0x1E696AEC0];
      v10 = @"When battery level is %@";
LABEL_7:
      v11 = WFLocalizedString(v10);
      v12 = [v9 localizedStringWithFormat:v11, v7];

      goto LABEL_11;
  }

  v13 = getWFTriggersLogObject();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
  {
    *buf = 136315394;
    v17 = "[WFBatteryLevelTrigger localizedDescriptionWithConfigurationSummary]";
    v18 = 2114;
    selfCopy = self;
    _os_log_impl(&dword_1CA256000, v13, OS_LOG_TYPE_FAULT, "%s Invalid config for %{public}@", buf, 0x16u);
  }

  v12 = &stru_1F4A1C408;
LABEL_11:

  v14 = *MEMORY[0x1E69E9840];

  return v12;
}

- (BOOL)hasValidConfiguration
{
  if ([(WFBatteryLevelTrigger *)self level])
  {
    if ([(WFBatteryLevelTrigger *)self level]!= 100)
    {
      [(WFBatteryLevelTrigger *)self level];
      return [(WFBatteryLevelTrigger *)self level]< 0x65;
    }

    v3 = [(WFBatteryLevelTrigger *)self selection]== 1;
  }

  else
  {
    v3 = [(WFBatteryLevelTrigger *)self selection]== 2;
  }

  return !v3;
}

- (WFBatteryLevelTrigger)init
{
  v6.receiver = self;
  v6.super_class = WFBatteryLevelTrigger;
  v2 = [(WFTrigger *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->_level = 50;
    v2->_selection = 0;
    v4 = v2;
  }

  return v3;
}

+ (id)displayGlyphHierarchicalColors
{
  v7[2] = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E69E09E0] colorWithSystemColor:1];
  v7[0] = v2;
  batteryOutlineColor = [MEMORY[0x1E69E09E0] batteryOutlineColor];
  v7[1] = batteryOutlineColor;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:2];

  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

+ (id)localizedDisplayNameWithContext:(id)context
{
  contextCopy = context;
  v4 = WFLocalizedStringResourceWithKey(@"Battery Level", @"Battery Level");
  v5 = [contextCopy localize:v4];

  return v5;
}

@end