@interface WFDNDTrigger
+ (id)localizedDisplayNameWithContext:(id)context;
+ (id)tintColor;
- (BOOL)hasValidConfiguration;
- (WFDNDTrigger)init;
- (WFDNDTrigger)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)localizedDescriptionWithConfigurationSummary;
- (id)localizedPastTenseDescription;
- (void)encodeWithCoder:(id)coder;
@end

@implementation WFDNDTrigger

- (id)copyWithZone:(_NSZone *)zone
{
  v6.receiver = self;
  v6.super_class = WFDNDTrigger;
  v4 = [(WFTrigger *)&v6 copyWithZone:zone];
  [v4 setOnEnable:{-[WFDNDTrigger onEnable](self, "onEnable")}];
  [v4 setOnDisable:{-[WFDNDTrigger onDisable](self, "onDisable")}];
  return v4;
}

- (WFDNDTrigger)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = WFDNDTrigger;
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
  v7.super_class = WFDNDTrigger;
  coderCopy = coder;
  [(WFTrigger *)&v7 encodeWithCoder:coderCopy];
  v5 = [MEMORY[0x1E696AD98] numberWithBool:{-[WFDNDTrigger onEnable](self, "onEnable", v7.receiver, v7.super_class)}];
  [coderCopy encodeObject:v5 forKey:@"onEnable"];

  v6 = [MEMORY[0x1E696AD98] numberWithBool:{-[WFDNDTrigger onDisable](self, "onDisable")}];
  [coderCopy encodeObject:v6 forKey:@"onDisable"];
}

- (id)localizedPastTenseDescription
{
  v12 = *MEMORY[0x1E69E9840];
  if ([(WFDNDTrigger *)self onEnable]&& [(WFDNDTrigger *)self onDisable])
  {
    v3 = @"Do Not Disturb turned on or off";
LABEL_8:
    v4 = WFLocalizedString(v3);
    goto LABEL_9;
  }

  if ([(WFDNDTrigger *)self onEnable])
  {
    v3 = @"Do Not Disturb turned on";
    goto LABEL_8;
  }

  if ([(WFDNDTrigger *)self onDisable])
  {
    v3 = @"Do Not Disturb turned off";
    goto LABEL_8;
  }

  v7 = getWFTriggersLogObject();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
  {
    v8 = 136315394;
    v9 = "[WFDNDTrigger localizedPastTenseDescription]";
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
  if ([(WFDNDTrigger *)self onEnable]&& [(WFDNDTrigger *)self onDisable])
  {
    v3 = @"When Do Not Disturb is turned on or off";
LABEL_8:
    v4 = WFLocalizedString(v3);
    goto LABEL_9;
  }

  if ([(WFDNDTrigger *)self onEnable])
  {
    v3 = @"When Do Not Disturb is turned on";
    goto LABEL_8;
  }

  if ([(WFDNDTrigger *)self onDisable])
  {
    v3 = @"When Do Not Disturb is turned off";
    goto LABEL_8;
  }

  v7 = getWFTriggersLogObject();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
  {
    v8 = 136315394;
    v9 = "[WFDNDTrigger localizedDescriptionWithConfigurationSummary]";
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
  if ([(WFDNDTrigger *)self onEnable])
  {
    return 1;
  }

  return [(WFDNDTrigger *)self onDisable];
}

- (WFDNDTrigger)init
{
  v6.receiver = self;
  v6.super_class = WFDNDTrigger;
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
  v2 = [objc_alloc(MEMORY[0x1E69E09E0]) initWithRed:0.345098039 green:0.337254902 blue:0.839215686 alpha:1.0];

  return v2;
}

+ (id)localizedDisplayNameWithContext:(id)context
{
  contextCopy = context;
  v4 = WFLocalizedStringResourceWithKey(@"Do Not Disturb", @"Do Not Disturb");
  v5 = [contextCopy localize:v4];

  return v5;
}

@end