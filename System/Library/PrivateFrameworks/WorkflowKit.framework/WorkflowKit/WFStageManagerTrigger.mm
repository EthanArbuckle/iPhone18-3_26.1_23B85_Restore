@interface WFStageManagerTrigger
+ (BOOL)isSupportedOnThisDevice;
+ (id)localizedDisplayNameWithContext:(id)context;
+ (id)tintColor;
- (BOOL)hasValidConfiguration;
- (WFStageManagerTrigger)init;
- (WFStageManagerTrigger)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)localizedDescriptionWithConfigurationSummary;
- (id)localizedPastTenseDescription;
- (void)encodeWithCoder:(id)coder;
@end

@implementation WFStageManagerTrigger

- (id)copyWithZone:(_NSZone *)zone
{
  v6.receiver = self;
  v6.super_class = WFStageManagerTrigger;
  v4 = [(WFTrigger *)&v6 copyWithZone:zone];
  [v4 setOnEnable:{-[WFStageManagerTrigger onEnable](self, "onEnable")}];
  [v4 setOnDisable:{-[WFStageManagerTrigger onDisable](self, "onDisable")}];
  return v4;
}

- (WFStageManagerTrigger)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = WFStageManagerTrigger;
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
  v7.super_class = WFStageManagerTrigger;
  coderCopy = coder;
  [(WFTrigger *)&v7 encodeWithCoder:coderCopy];
  v5 = [MEMORY[0x1E696AD98] numberWithBool:{-[WFStageManagerTrigger onEnable](self, "onEnable", v7.receiver, v7.super_class)}];
  [coderCopy encodeObject:v5 forKey:@"onEnable"];

  v6 = [MEMORY[0x1E696AD98] numberWithBool:{-[WFStageManagerTrigger onDisable](self, "onDisable")}];
  [coderCopy encodeObject:v6 forKey:@"onDisable"];
}

- (id)localizedPastTenseDescription
{
  v12 = *MEMORY[0x1E69E9840];
  if ([(WFStageManagerTrigger *)self onEnable]&& [(WFStageManagerTrigger *)self onDisable])
  {
    v3 = @"Stage Manager turned on or off";
LABEL_8:
    v4 = WFLocalizedString(v3);
    goto LABEL_9;
  }

  if ([(WFStageManagerTrigger *)self onEnable])
  {
    v3 = @"Stage Manager turned on";
    goto LABEL_8;
  }

  if ([(WFStageManagerTrigger *)self onDisable])
  {
    v3 = @"Stage Manager turned off";
    goto LABEL_8;
  }

  v7 = getWFTriggersLogObject();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
  {
    v8 = 136315394;
    v9 = "[WFStageManagerTrigger localizedPastTenseDescription]";
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
  if ([(WFStageManagerTrigger *)self onEnable]&& [(WFStageManagerTrigger *)self onDisable])
  {
    v3 = @"When Stage Manager is turned on or off";
LABEL_8:
    v4 = WFLocalizedString(v3);
    goto LABEL_9;
  }

  if ([(WFStageManagerTrigger *)self onEnable])
  {
    v3 = @"When Stage Manager is turned on";
    goto LABEL_8;
  }

  if ([(WFStageManagerTrigger *)self onDisable])
  {
    v3 = @"When Stage Manager is turned off";
    goto LABEL_8;
  }

  v7 = getWFTriggersLogObject();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
  {
    v8 = 136315394;
    v9 = "[WFStageManagerTrigger localizedDescriptionWithConfigurationSummary]";
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
  if ([(WFStageManagerTrigger *)self onEnable])
  {
    return 1;
  }

  return [(WFStageManagerTrigger *)self onDisable];
}

- (WFStageManagerTrigger)init
{
  v6.receiver = self;
  v6.super_class = WFStageManagerTrigger;
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

+ (id)tintColor
{
  v2 = [objc_alloc(MEMORY[0x1E69E09E0]) initWithSystemColor:4];

  return v2;
}

+ (id)localizedDisplayNameWithContext:(id)context
{
  contextCopy = context;
  v4 = WFLocalizedStringResourceWithKey(@"Stage Manager", @"Stage Manager");
  v5 = [contextCopy localize:v4];

  return v5;
}

+ (BOOL)isSupportedOnThisDevice
{
  currentDevice = [MEMORY[0x1E69E0A90] currentDevice];
  v3 = [currentDevice hasCapability:*MEMORY[0x1E69E1050]];

  return v3;
}

@end