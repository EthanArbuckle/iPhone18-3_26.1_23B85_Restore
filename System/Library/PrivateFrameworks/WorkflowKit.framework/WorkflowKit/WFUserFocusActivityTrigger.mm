@interface WFUserFocusActivityTrigger
+ (id)localizedDisplayNameWithContext:(id)context;
+ (id)tintColor;
- (BOOL)hasValidConfiguration;
- (NSString)description;
- (WFUserFocusActivityTrigger)init;
- (WFUserFocusActivityTrigger)initWithActivity:(id)activity;
- (WFUserFocusActivityTrigger)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)displayGlyph;
- (id)displayGlyphTintColor;
- (id)localizedDescriptionWithConfigurationSummary;
- (id)localizedDisplayExplanation;
- (id)localizedPastTenseDescription;
- (id)offIcon;
- (id)onIcon;
- (id)suggestedActions;
- (id)uniqueIdentifier;
- (void)encodeWithCoder:(id)coder;
@end

@implementation WFUserFocusActivityTrigger

- (id)copyWithZone:(_NSZone *)zone
{
  v11.receiver = self;
  v11.super_class = WFUserFocusActivityTrigger;
  v4 = [(WFTrigger *)&v11 copyWithZone:zone];
  [v4 setOnEnable:{-[WFUserFocusActivityTrigger onEnable](self, "onEnable")}];
  [v4 setOnDisable:{-[WFUserFocusActivityTrigger onDisable](self, "onDisable")}];
  activityName = [(WFUserFocusActivityTrigger *)self activityName];
  [v4 setActivityName:activityName];

  activityUniqueIdentifier = [(WFUserFocusActivityTrigger *)self activityUniqueIdentifier];
  [v4 setActivityUniqueIdentifier:activityUniqueIdentifier];

  activitySemanticIdentifier = [(WFUserFocusActivityTrigger *)self activitySemanticIdentifier];
  [v4 setActivitySemanticIdentifier:activitySemanticIdentifier];

  activityGlyphName = [(WFUserFocusActivityTrigger *)self activityGlyphName];
  [v4 setActivityGlyphName:activityGlyphName];

  activityTintColor = [(WFUserFocusActivityTrigger *)self activityTintColor];
  [v4 setActivityTintColor:activityTintColor];

  return v4;
}

- (id)suggestedActions
{
  v2 = +[WFActionRegistry sharedRegistry];
  v3 = [v2 createActionsWithIdentifiers:&unk_1F4A9B5A8 serializedParameterArray:0];

  return v3;
}

- (WFUserFocusActivityTrigger)initWithCoder:(id)coder
{
  coderCopy = coder;
  v24.receiver = self;
  v24.super_class = WFUserFocusActivityTrigger;
  v5 = [(WFTrigger *)&v24 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"onEnable"];
    v5->_onEnable = [v6 BOOLValue];

    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"onDisable"];
    v5->_onDisable = [v7 BOOLValue];

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"activityGlyphName"];
    activityGlyphName = v5->_activityGlyphName;
    v5->_activityGlyphName = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"activityTintColor"];
    activityTintColor = v5->_activityTintColor;
    v5->_activityTintColor = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"activitySemanticIdentifier"];
    activitySemanticIdentifier = v5->_activitySemanticIdentifier;
    v5->_activitySemanticIdentifier = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"activityName"];
    activityName = v5->_activityName;
    v5->_activityName = v14;

    if (![(NSString *)v5->_activityName length])
    {
      v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"selectedMode"];
      v17 = v5->_activityName;
      v5->_activityName = v16;
    }

    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"activityIdentifier"];
    activityUniqueIdentifier = v5->_activityUniqueIdentifier;
    v5->_activityUniqueIdentifier = v18;

    if (![(NSString *)v5->_activityUniqueIdentifier length])
    {
      v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"selectedModeIdentifier"];
      v21 = v5->_activityUniqueIdentifier;
      v5->_activityUniqueIdentifier = v20;
    }

    v22 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v12.receiver = self;
  v12.super_class = WFUserFocusActivityTrigger;
  coderCopy = coder;
  [(WFTrigger *)&v12 encodeWithCoder:coderCopy];
  v5 = [MEMORY[0x1E696AD98] numberWithBool:{-[WFUserFocusActivityTrigger onEnable](self, "onEnable", v12.receiver, v12.super_class)}];
  [coderCopy encodeObject:v5 forKey:@"onEnable"];

  v6 = [MEMORY[0x1E696AD98] numberWithBool:{-[WFUserFocusActivityTrigger onDisable](self, "onDisable")}];
  [coderCopy encodeObject:v6 forKey:@"onDisable"];

  activityName = [(WFUserFocusActivityTrigger *)self activityName];
  [coderCopy encodeObject:activityName forKey:@"activityName"];

  activitySemanticIdentifier = [(WFUserFocusActivityTrigger *)self activitySemanticIdentifier];
  [coderCopy encodeObject:activitySemanticIdentifier forKey:@"activitySemanticIdentifier"];

  activityUniqueIdentifier = [(WFUserFocusActivityTrigger *)self activityUniqueIdentifier];
  [coderCopy encodeObject:activityUniqueIdentifier forKey:@"activityIdentifier"];

  activityGlyphName = [(WFUserFocusActivityTrigger *)self activityGlyphName];
  [coderCopy encodeObject:activityGlyphName forKey:@"activityGlyphName"];

  activityTintColor = [(WFUserFocusActivityTrigger *)self activityTintColor];
  [coderCopy encodeObject:activityTintColor forKey:@"activityTintColor"];
}

- (id)localizedPastTenseDescription
{
  v15 = *MEMORY[0x1E69E9840];
  if ([(WFUserFocusActivityTrigger *)self onEnable]&& [(WFUserFocusActivityTrigger *)self onDisable])
  {
    v3 = MEMORY[0x1E696AEC0];
    v4 = @"Turned %@ on or off";
LABEL_8:
    v5 = WFLocalizedString(v4);
    activityName = [(WFUserFocusActivityTrigger *)self activityName];
    v7 = [v3 localizedStringWithFormat:v5, activityName];

    goto LABEL_9;
  }

  if ([(WFUserFocusActivityTrigger *)self onEnable])
  {
    v3 = MEMORY[0x1E696AEC0];
    v4 = @"Turned %@ on";
    goto LABEL_8;
  }

  if ([(WFUserFocusActivityTrigger *)self onDisable])
  {
    v3 = MEMORY[0x1E696AEC0];
    v4 = @"Turned %@ off";
    goto LABEL_8;
  }

  v10 = getWFTriggersLogObject();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
  {
    *buf = 136315394;
    v12 = "[WFUserFocusActivityTrigger localizedPastTenseDescription]";
    v13 = 2114;
    selfCopy = self;
    _os_log_impl(&dword_1CA256000, v10, OS_LOG_TYPE_FAULT, "%s Invalid config for %{public}@", buf, 0x16u);
  }

  v7 = &stru_1F4A1C408;
LABEL_9:
  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

- (id)localizedDescriptionWithConfigurationSummary
{
  v15 = *MEMORY[0x1E69E9840];
  if ([(WFUserFocusActivityTrigger *)self onEnable]&& [(WFUserFocusActivityTrigger *)self onDisable])
  {
    v3 = MEMORY[0x1E696AEC0];
    v4 = @"When %@  is turned on or off";
LABEL_8:
    v5 = WFLocalizedString(v4);
    activityName = [(WFUserFocusActivityTrigger *)self activityName];
    v7 = [v3 localizedStringWithFormat:v5, activityName];

    goto LABEL_9;
  }

  if ([(WFUserFocusActivityTrigger *)self onEnable])
  {
    v3 = MEMORY[0x1E696AEC0];
    v4 = @"When %@ is turned on";
    goto LABEL_8;
  }

  if ([(WFUserFocusActivityTrigger *)self onDisable])
  {
    v3 = MEMORY[0x1E696AEC0];
    v4 = @"When %@ is turned off";
    goto LABEL_8;
  }

  v10 = getWFTriggersLogObject();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
  {
    *buf = 136315394;
    v12 = "[WFUserFocusActivityTrigger localizedDescriptionWithConfigurationSummary]";
    v13 = 2114;
    selfCopy = self;
    _os_log_impl(&dword_1CA256000, v10, OS_LOG_TYPE_FAULT, "%s Invalid config for %{public}@", buf, 0x16u);
  }

  v7 = &stru_1F4A1C408;
LABEL_9:
  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

- (BOOL)hasValidConfiguration
{
  if (![(WFUserFocusActivityTrigger *)self onEnable]&& ![(WFUserFocusActivityTrigger *)self onDisable])
  {
    return 0;
  }

  activityName = [(WFUserFocusActivityTrigger *)self activityName];
  v4 = activityName != 0;

  return v4;
}

- (WFUserFocusActivityTrigger)init
{
  v6.receiver = self;
  v6.super_class = WFUserFocusActivityTrigger;
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

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v10.receiver = self;
  v10.super_class = WFUserFocusActivityTrigger;
  v4 = [(WFTrigger *)&v10 description];
  activityName = [(WFUserFocusActivityTrigger *)self activityName];
  activitySemanticIdentifier = [(WFUserFocusActivityTrigger *)self activitySemanticIdentifier];
  activityUniqueIdentifier = [(WFUserFocusActivityTrigger *)self activityUniqueIdentifier];
  v8 = [v3 stringWithFormat:@"<%@, name: %@, id: %@, unique id: %@, onEnable: %i, onDisable: %i>", v4, activityName, activitySemanticIdentifier, activityUniqueIdentifier, -[WFUserFocusActivityTrigger onEnable](self, "onEnable"), -[WFUserFocusActivityTrigger onDisable](self, "onDisable")];

  return v8;
}

- (id)offIcon
{
  activityGlyphName = [(WFUserFocusActivityTrigger *)self activityGlyphName];
  v3 = [WFFocusModesManager exitingSymbolForSymbolName:activityGlyphName];

  v4 = [MEMORY[0x1E69E0B58] triggerConfigurationSymbolNamed:v3 renderingMode:2];

  return v4;
}

- (id)onIcon
{
  activityGlyphName = [(WFUserFocusActivityTrigger *)self activityGlyphName];
  v3 = [WFFocusModesManager enteringSymbolForSymbolName:activityGlyphName];

  v4 = [MEMORY[0x1E69E0B58] triggerConfigurationSymbolNamed:v3 renderingMode:2];

  return v4;
}

- (id)uniqueIdentifier
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = WFUserFocusActivityTrigger;
  uniqueIdentifier = [(WFTrigger *)&v8 uniqueIdentifier];
  activitySemanticIdentifier = [(WFUserFocusActivityTrigger *)self activitySemanticIdentifier];
  v6 = [v3 stringWithFormat:@"%@.%@", uniqueIdentifier, activitySemanticIdentifier];

  return v6;
}

- (id)displayGlyphTintColor
{
  activityTintColor = [(WFUserFocusActivityTrigger *)self activityTintColor];
  v3 = activityTintColor;
  if (activityTintColor)
  {
    v4 = activityTintColor;
  }

  else
  {
    v5 = objc_alloc(MEMORY[0x1E69E09E0]);
    v11 = 0;
    v12 = &v11;
    v13 = 0x2050000000;
    v6 = getUIColorClass_softClass;
    v14 = getUIColorClass_softClass;
    if (!getUIColorClass_softClass)
    {
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __getUIColorClass_block_invoke;
      v10[3] = &unk_1E837FAC0;
      v10[4] = &v11;
      __getUIColorClass_block_invoke(v10);
      v6 = v12[3];
    }

    v7 = v6;
    _Block_object_dispose(&v11, 8);
    systemIndigoColor = [v6 systemIndigoColor];
    v4 = [v5 initWithPlatformColor:systemIndigoColor];
  }

  return v4;
}

- (id)displayGlyph
{
  v2 = MEMORY[0x1E69E0B58];
  displayGlyphName = [(WFUserFocusActivityTrigger *)self displayGlyphName];
  v4 = [v2 triggerDisplaySymbolNamed:displayGlyphName renderingMode:2];

  return v4;
}

- (id)localizedDisplayExplanation
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = WFLocalizedString(@"“When turning %@ on”");
  activityName = [(WFUserFocusActivityTrigger *)self activityName];
  v6 = [v3 localizedStringWithFormat:v4, activityName];

  return v6;
}

- (WFUserFocusActivityTrigger)initWithActivity:(id)activity
{
  activityCopy = activity;
  v21.receiver = self;
  v21.super_class = WFUserFocusActivityTrigger;
  v5 = [(WFTrigger *)&v21 init];
  if (v5)
  {
    activityDisplayName = [activityCopy activityDisplayName];
    activityName = v5->_activityName;
    v5->_activityName = activityDisplayName;

    activityUniqueIdentifier = [activityCopy activityUniqueIdentifier];
    uUIDString = [activityUniqueIdentifier UUIDString];
    activityUniqueIdentifier = v5->_activityUniqueIdentifier;
    v5->_activityUniqueIdentifier = uUIDString;

    activityIdentifier = [activityCopy activityIdentifier];
    activitySemanticIdentifier = v5->_activitySemanticIdentifier;
    v5->_activitySemanticIdentifier = activityIdentifier;

    activitySymbolImageName = [activityCopy activitySymbolImageName];
    activityGlyphName = v5->_activityGlyphName;
    v5->_activityGlyphName = activitySymbolImageName;

    v5->_onEnable = 1;
    v5->_onDisable = 0;
    v15 = MEMORY[0x1E69E09E0];
    activityColorName = [activityCopy activityColorName];
    v17 = [v15 colorWithFocusColorName:activityColorName];
    activityTintColor = v5->_activityTintColor;
    v5->_activityTintColor = v17;

    v19 = v5;
  }

  return v5;
}

+ (id)tintColor
{
  v2 = [objc_alloc(MEMORY[0x1E69E09E0]) initWithRed:0.345098039 green:0.337254902 blue:0.839215686 alpha:1.0];

  return v2;
}

+ (id)localizedDisplayNameWithContext:(id)context
{
  contextCopy = context;
  v4 = WFLocalizedStringResourceWithKey(@"Focus", @"Focus");
  v5 = [contextCopy localize:v4];

  return v5;
}

@end