@interface WFSleepTrigger
+ (BOOL)isSupportedOnThisDevice;
+ (id)localizedDisplayNameWithContext:(id)a3;
- (BOOL)hasValidConfiguration;
- (WFSleepTrigger)init;
- (WFSleepTrigger)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)localizedDescriptionWithConfigurationSummary;
- (id)localizedPastTenseDescription;
- (void)encodeWithCoder:(id)a3;
@end

@implementation WFSleepTrigger

- (id)copyWithZone:(_NSZone *)a3
{
  v6.receiver = self;
  v6.super_class = WFSleepTrigger;
  v4 = [(WFTrigger *)&v6 copyWithZone:a3];
  [v4 setSelection:{-[WFSleepTrigger selection](self, "selection")}];
  return v4;
}

- (WFSleepTrigger)initWithCoder:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = WFSleepTrigger;
  v5 = [(WFTrigger *)&v8 initWithCoder:v4];
  if (v5)
  {
    -[WFSleepTrigger setSelection:](v5, "setSelection:", [v4 decodeIntForKey:@"selection"]);
    v6 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = WFSleepTrigger;
  v4 = a3;
  [(WFTrigger *)&v5 encodeWithCoder:v4];
  [v4 encodeInteger:-[WFSleepTrigger selection](self forKey:{"selection", v5.receiver, v5.super_class), @"selection"}];
}

- (id)localizedPastTenseDescription
{
  v12 = *MEMORY[0x1E69E9840];
  if (![(WFSleepTrigger *)self selection])
  {
    v3 = @"Wind Down started";
    goto LABEL_7;
  }

  if ([(WFSleepTrigger *)self selection]== 1)
  {
    v3 = @"Bedtime started";
LABEL_7:
    v4 = WFLocalizedString(v3);
    goto LABEL_8;
  }

  if ([(WFSleepTrigger *)self selection]== 2)
  {
    v3 = @"Woke Up";
    goto LABEL_7;
  }

  v7 = getWFTriggersLogObject();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
  {
    v8 = 136315394;
    v9 = "[WFSleepTrigger localizedPastTenseDescription]";
    v10 = 2114;
    v11 = self;
    _os_log_impl(&dword_1CA256000, v7, OS_LOG_TYPE_FAULT, "%s Invalid config for %{public}@", &v8, 0x16u);
  }

  v4 = &stru_1F4A1C408;
LABEL_8:
  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

- (id)localizedDescriptionWithConfigurationSummary
{
  v12 = *MEMORY[0x1E69E9840];
  if (![(WFSleepTrigger *)self selection])
  {
    v3 = @"When Wind Down starts";
    goto LABEL_7;
  }

  if ([(WFSleepTrigger *)self selection]== 1)
  {
    v3 = @"When Bedtime starts";
LABEL_7:
    v4 = WFLocalizedString(v3);
    goto LABEL_8;
  }

  if ([(WFSleepTrigger *)self selection]== 2)
  {
    v3 = @"When Waking Up";
    goto LABEL_7;
  }

  v7 = getWFTriggersLogObject();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
  {
    v8 = 136315394;
    v9 = "[WFSleepTrigger localizedDescriptionWithConfigurationSummary]";
    v10 = 2114;
    v11 = self;
    _os_log_impl(&dword_1CA256000, v7, OS_LOG_TYPE_FAULT, "%s Invalid config for %{public}@", &v8, 0x16u);
  }

  v4 = &stru_1F4A1C408;
LABEL_8:
  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

- (BOOL)hasValidConfiguration
{
  if ([(WFSleepTrigger *)self selection])
  {
    v3 = [(WFSleepTrigger *)self selection];
    if (v3 != 1)
    {
      LOBYTE(v3) = [(WFSleepTrigger *)self selection]== 2;
    }
  }

  else
  {
    LOBYTE(v3) = 1;
  }

  return v3;
}

- (WFSleepTrigger)init
{
  v6.receiver = self;
  v6.super_class = WFSleepTrigger;
  v2 = [(WFTrigger *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  return v3;
}

+ (id)localizedDisplayNameWithContext:(id)a3
{
  v3 = a3;
  v4 = WFLocalizedStringResourceWithKey(@"Sleep trigger name", @"Sleep");
  v5 = [v3 localize:v4];

  return v5;
}

+ (BOOL)isSupportedOnThisDevice
{
  v2 = [MEMORY[0x1E69E0A90] currentDevice];
  v3 = [v2 idiom] != 1;

  return v3;
}

@end