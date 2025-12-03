@interface WFCarPlayConnectionTrigger
+ (id)localizedDisplayNameWithContext:(id)context;
- (BOOL)hasValidConfiguration;
- (WFCarPlayConnectionTrigger)init;
- (WFCarPlayConnectionTrigger)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)localizedDescriptionWithConfigurationSummary;
- (id)localizedPastTenseDescription;
- (id)suggestedActions;
- (void)encodeWithCoder:(id)coder;
@end

@implementation WFCarPlayConnectionTrigger

- (id)suggestedActions
{
  v2 = +[WFActionRegistry sharedRegistry];
  v3 = [v2 createActionsWithIdentifiers:&unk_1F4A9B878 serializedParameterArray:0];

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v6.receiver = self;
  v6.super_class = WFCarPlayConnectionTrigger;
  v4 = [(WFTrigger *)&v6 copyWithZone:zone];
  [v4 setOnConnect:{-[WFCarPlayConnectionTrigger onConnect](self, "onConnect")}];
  [v4 setOnDisconnect:{-[WFCarPlayConnectionTrigger onDisconnect](self, "onDisconnect")}];
  return v4;
}

- (WFCarPlayConnectionTrigger)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = WFCarPlayConnectionTrigger;
  v5 = [(WFTrigger *)&v10 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"onConnect"];
    v5->_onConnect = [v6 BOOLValue];

    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"onDisconnect"];
    v5->_onDisconnect = [v7 BOOLValue];

    v8 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = WFCarPlayConnectionTrigger;
  coderCopy = coder;
  [(WFTrigger *)&v7 encodeWithCoder:coderCopy];
  v5 = [MEMORY[0x1E696AD98] numberWithBool:{-[WFCarPlayConnectionTrigger onConnect](self, "onConnect", v7.receiver, v7.super_class)}];
  [coderCopy encodeObject:v5 forKey:@"onConnect"];

  v6 = [MEMORY[0x1E696AD98] numberWithBool:{-[WFCarPlayConnectionTrigger onDisconnect](self, "onDisconnect")}];
  [coderCopy encodeObject:v6 forKey:@"onDisconnect"];
}

- (id)localizedPastTenseDescription
{
  v12 = *MEMORY[0x1E69E9840];
  if ([(WFCarPlayConnectionTrigger *)self onConnect]&& [(WFCarPlayConnectionTrigger *)self onDisconnect])
  {
    v3 = @"CarPlay connected or disconnected";
LABEL_8:
    v4 = WFLocalizedString(v3);
    goto LABEL_9;
  }

  if ([(WFCarPlayConnectionTrigger *)self onConnect])
  {
    v3 = @"CarPlay connected";
    goto LABEL_8;
  }

  if ([(WFCarPlayConnectionTrigger *)self onDisconnect])
  {
    v3 = @"CarPlay disconnected";
    goto LABEL_8;
  }

  v7 = getWFTriggersLogObject();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
  {
    v8 = 136315394;
    v9 = "[WFCarPlayConnectionTrigger localizedPastTenseDescription]";
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
  if ([(WFCarPlayConnectionTrigger *)self onConnect]&& [(WFCarPlayConnectionTrigger *)self onDisconnect])
  {
    v3 = @"When CarPlay connects or disconnects";
LABEL_8:
    v4 = WFLocalizedString(v3);
    goto LABEL_9;
  }

  if ([(WFCarPlayConnectionTrigger *)self onConnect])
  {
    v3 = @"When CarPlay connects";
    goto LABEL_8;
  }

  if ([(WFCarPlayConnectionTrigger *)self onDisconnect])
  {
    v3 = @"When CarPlay disconnects";
    goto LABEL_8;
  }

  v7 = getWFTriggersLogObject();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
  {
    v8 = 136315394;
    v9 = "[WFCarPlayConnectionTrigger localizedDescriptionWithConfigurationSummary]";
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
  if ([(WFCarPlayConnectionTrigger *)self onConnect])
  {
    return 1;
  }

  return [(WFCarPlayConnectionTrigger *)self onDisconnect];
}

- (WFCarPlayConnectionTrigger)init
{
  v6.receiver = self;
  v6.super_class = WFCarPlayConnectionTrigger;
  v2 = [(WFTrigger *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->_onConnect = 1;
    v2->_onDisconnect = 0;
    v4 = v2;
  }

  return v3;
}

+ (id)localizedDisplayNameWithContext:(id)context
{
  contextCopy = context;
  v4 = WFLocalizedStringResourceWithKey(@"CarPlay", @"CarPlay");
  v5 = [contextCopy localize:v4];

  return v5;
}

@end