@interface WFExternalDisplayTrigger
+ (BOOL)isSupportedOnThisDevice;
+ (id)localizedDisplayNameWithContext:(id)context;
+ (id)offIcon;
+ (id)onIcon;
+ (id)tintColor;
- (BOOL)hasValidConfiguration;
- (WFExternalDisplayTrigger)init;
- (WFExternalDisplayTrigger)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)localizedDescriptionWithConfigurationSummary;
- (id)localizedPastTenseDescription;
- (void)encodeWithCoder:(id)coder;
@end

@implementation WFExternalDisplayTrigger

- (id)copyWithZone:(_NSZone *)zone
{
  v6.receiver = self;
  v6.super_class = WFExternalDisplayTrigger;
  v4 = [(WFTrigger *)&v6 copyWithZone:zone];
  [v4 setOnConnect:{-[WFExternalDisplayTrigger onConnect](self, "onConnect")}];
  [v4 setOnDisconnect:{-[WFExternalDisplayTrigger onDisconnect](self, "onDisconnect")}];
  return v4;
}

- (WFExternalDisplayTrigger)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = WFExternalDisplayTrigger;
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
  v7.super_class = WFExternalDisplayTrigger;
  coderCopy = coder;
  [(WFTrigger *)&v7 encodeWithCoder:coderCopy];
  v5 = [MEMORY[0x1E696AD98] numberWithBool:{-[WFExternalDisplayTrigger onConnect](self, "onConnect", v7.receiver, v7.super_class)}];
  [coderCopy encodeObject:v5 forKey:@"onConnect"];

  v6 = [MEMORY[0x1E696AD98] numberWithBool:{-[WFExternalDisplayTrigger onDisconnect](self, "onDisconnect")}];
  [coderCopy encodeObject:v6 forKey:@"onDisconnect"];
}

- (id)localizedPastTenseDescription
{
  v12 = *MEMORY[0x1E69E9840];
  if ([(WFExternalDisplayTrigger *)self onConnect]&& [(WFExternalDisplayTrigger *)self onDisconnect])
  {
    v3 = @"Display connected or disconnected";
LABEL_8:
    v4 = WFLocalizedString(v3);
    goto LABEL_9;
  }

  if ([(WFExternalDisplayTrigger *)self onConnect])
  {
    v3 = @"Display connected";
    goto LABEL_8;
  }

  if ([(WFExternalDisplayTrigger *)self onDisconnect])
  {
    v3 = @"Display disconnected";
    goto LABEL_8;
  }

  v7 = getWFTriggersLogObject();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
  {
    v8 = 136315394;
    v9 = "[WFExternalDisplayTrigger localizedPastTenseDescription]";
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
  if ([(WFExternalDisplayTrigger *)self onConnect]&& [(WFExternalDisplayTrigger *)self onDisconnect])
  {
    v3 = @"When my display is connected or disconnected";
LABEL_8:
    v4 = WFLocalizedString(v3);
    goto LABEL_9;
  }

  if ([(WFExternalDisplayTrigger *)self onConnect])
  {
    v3 = @"When my display is connected";
    goto LABEL_8;
  }

  if ([(WFExternalDisplayTrigger *)self onDisconnect])
  {
    v3 = @"When my display is disconnected";
    goto LABEL_8;
  }

  v7 = getWFTriggersLogObject();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
  {
    v8 = 136315394;
    v9 = "[WFExternalDisplayTrigger localizedDescriptionWithConfigurationSummary]";
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
  if ([(WFExternalDisplayTrigger *)self onConnect])
  {
    return 1;
  }

  return [(WFExternalDisplayTrigger *)self onDisconnect];
}

- (WFExternalDisplayTrigger)init
{
  v6.receiver = self;
  v6.super_class = WFExternalDisplayTrigger;
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

+ (id)tintColor
{
  v2 = [objc_alloc(MEMORY[0x1E69E09E0]) initWithSystemColor:4];

  return v2;
}

+ (id)offIcon
{
  v17 = 0;
  v18 = &v17;
  v19 = 0x2050000000;
  v2 = getUIImageSymbolConfigurationClass_softClass;
  v20 = getUIImageSymbolConfigurationClass_softClass;
  if (!getUIImageSymbolConfigurationClass_softClass)
  {
    v12 = MEMORY[0x1E69E9820];
    v13 = 3221225472;
    v14 = __getUIImageSymbolConfigurationClass_block_invoke;
    v15 = &unk_1E837FAC0;
    v16 = &v17;
    __getUIImageSymbolConfigurationClass_block_invoke(&v12);
    v2 = v18[3];
  }

  v3 = v2;
  _Block_object_dispose(&v17, 8);
  v4 = [v2 configurationWithPointSize:54.0];
  v17 = 0;
  v18 = &v17;
  v19 = 0x2050000000;
  v5 = getUIImageClass_softClass;
  v20 = getUIImageClass_softClass;
  if (!getUIImageClass_softClass)
  {
    v12 = MEMORY[0x1E69E9820];
    v13 = 3221225472;
    v14 = __getUIImageClass_block_invoke;
    v15 = &unk_1E837FAC0;
    v16 = &v17;
    __getUIImageClass_block_invoke(&v12);
    v5 = v18[3];
  }

  v6 = v5;
  _Block_object_dispose(&v17, 8);
  v7 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v8 = [v5 imageNamed:@"custom.cable.connector.slash" inBundle:v7 withConfiguration:v4];

  v9 = [objc_alloc(MEMORY[0x1E69E0B58]) initWithPlatformImage:v8];
  v10 = [v9 imageWithRenderingMode:2];

  return v10;
}

+ (id)onIcon
{
  v10[2] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E69E0B58];
  tintColor = [self tintColor];
  v10[0] = tintColor;
  tintColor2 = [self tintColor];
  v10[1] = tintColor2;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:2];
  v7 = [v3 triggerConfigurationSymbolNamed:@"cable.connector" hierarchicalColors:v6];

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

+ (id)localizedDisplayNameWithContext:(id)context
{
  contextCopy = context;
  v4 = WFLocalizedStringResourceWithKey(@"Display", @"Display");
  v5 = [contextCopy localize:v4];

  return v5;
}

+ (BOOL)isSupportedOnThisDevice
{
  currentDevice = [MEMORY[0x1E69E0A90] currentDevice];
  if ([currentDevice idiom] == 1)
  {
    v3 = 1;
  }

  else
  {
    currentDevice2 = [MEMORY[0x1E69E0A90] currentDevice];
    v3 = [currentDevice2 idiom] == 2;
  }

  return v3;
}

@end