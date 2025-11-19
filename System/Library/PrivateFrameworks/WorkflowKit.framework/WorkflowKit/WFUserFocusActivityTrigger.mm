@interface WFUserFocusActivityTrigger
+ (id)localizedDisplayNameWithContext:(id)a3;
+ (id)tintColor;
- (BOOL)hasValidConfiguration;
- (NSString)description;
- (WFUserFocusActivityTrigger)init;
- (WFUserFocusActivityTrigger)initWithActivity:(id)a3;
- (WFUserFocusActivityTrigger)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)displayGlyph;
- (id)displayGlyphTintColor;
- (id)localizedDescriptionWithConfigurationSummary;
- (id)localizedDisplayExplanation;
- (id)localizedPastTenseDescription;
- (id)offIcon;
- (id)onIcon;
- (id)suggestedActions;
- (id)uniqueIdentifier;
- (void)encodeWithCoder:(id)a3;
@end

@implementation WFUserFocusActivityTrigger

- (id)copyWithZone:(_NSZone *)a3
{
  v11.receiver = self;
  v11.super_class = WFUserFocusActivityTrigger;
  v4 = [(WFTrigger *)&v11 copyWithZone:a3];
  [v4 setOnEnable:{-[WFUserFocusActivityTrigger onEnable](self, "onEnable")}];
  [v4 setOnDisable:{-[WFUserFocusActivityTrigger onDisable](self, "onDisable")}];
  v5 = [(WFUserFocusActivityTrigger *)self activityName];
  [v4 setActivityName:v5];

  v6 = [(WFUserFocusActivityTrigger *)self activityUniqueIdentifier];
  [v4 setActivityUniqueIdentifier:v6];

  v7 = [(WFUserFocusActivityTrigger *)self activitySemanticIdentifier];
  [v4 setActivitySemanticIdentifier:v7];

  v8 = [(WFUserFocusActivityTrigger *)self activityGlyphName];
  [v4 setActivityGlyphName:v8];

  v9 = [(WFUserFocusActivityTrigger *)self activityTintColor];
  [v4 setActivityTintColor:v9];

  return v4;
}

- (id)suggestedActions
{
  v2 = +[WFActionRegistry sharedRegistry];
  v3 = [v2 createActionsWithIdentifiers:&unk_1F4A9B5A8 serializedParameterArray:0];

  return v3;
}

- (WFUserFocusActivityTrigger)initWithCoder:(id)a3
{
  v4 = a3;
  v24.receiver = self;
  v24.super_class = WFUserFocusActivityTrigger;
  v5 = [(WFTrigger *)&v24 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"onEnable"];
    v5->_onEnable = [v6 BOOLValue];

    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"onDisable"];
    v5->_onDisable = [v7 BOOLValue];

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"activityGlyphName"];
    activityGlyphName = v5->_activityGlyphName;
    v5->_activityGlyphName = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"activityTintColor"];
    activityTintColor = v5->_activityTintColor;
    v5->_activityTintColor = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"activitySemanticIdentifier"];
    activitySemanticIdentifier = v5->_activitySemanticIdentifier;
    v5->_activitySemanticIdentifier = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"activityName"];
    activityName = v5->_activityName;
    v5->_activityName = v14;

    if (![(NSString *)v5->_activityName length])
    {
      v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"selectedMode"];
      v17 = v5->_activityName;
      v5->_activityName = v16;
    }

    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"activityIdentifier"];
    activityUniqueIdentifier = v5->_activityUniqueIdentifier;
    v5->_activityUniqueIdentifier = v18;

    if (![(NSString *)v5->_activityUniqueIdentifier length])
    {
      v20 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"selectedModeIdentifier"];
      v21 = v5->_activityUniqueIdentifier;
      v5->_activityUniqueIdentifier = v20;
    }

    v22 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v12.receiver = self;
  v12.super_class = WFUserFocusActivityTrigger;
  v4 = a3;
  [(WFTrigger *)&v12 encodeWithCoder:v4];
  v5 = [MEMORY[0x1E696AD98] numberWithBool:{-[WFUserFocusActivityTrigger onEnable](self, "onEnable", v12.receiver, v12.super_class)}];
  [v4 encodeObject:v5 forKey:@"onEnable"];

  v6 = [MEMORY[0x1E696AD98] numberWithBool:{-[WFUserFocusActivityTrigger onDisable](self, "onDisable")}];
  [v4 encodeObject:v6 forKey:@"onDisable"];

  v7 = [(WFUserFocusActivityTrigger *)self activityName];
  [v4 encodeObject:v7 forKey:@"activityName"];

  v8 = [(WFUserFocusActivityTrigger *)self activitySemanticIdentifier];
  [v4 encodeObject:v8 forKey:@"activitySemanticIdentifier"];

  v9 = [(WFUserFocusActivityTrigger *)self activityUniqueIdentifier];
  [v4 encodeObject:v9 forKey:@"activityIdentifier"];

  v10 = [(WFUserFocusActivityTrigger *)self activityGlyphName];
  [v4 encodeObject:v10 forKey:@"activityGlyphName"];

  v11 = [(WFUserFocusActivityTrigger *)self activityTintColor];
  [v4 encodeObject:v11 forKey:@"activityTintColor"];
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
    v6 = [(WFUserFocusActivityTrigger *)self activityName];
    v7 = [v3 localizedStringWithFormat:v5, v6];

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
    v14 = self;
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
    v6 = [(WFUserFocusActivityTrigger *)self activityName];
    v7 = [v3 localizedStringWithFormat:v5, v6];

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
    v14 = self;
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

  v3 = [(WFUserFocusActivityTrigger *)self activityName];
  v4 = v3 != 0;

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
  v5 = [(WFUserFocusActivityTrigger *)self activityName];
  v6 = [(WFUserFocusActivityTrigger *)self activitySemanticIdentifier];
  v7 = [(WFUserFocusActivityTrigger *)self activityUniqueIdentifier];
  v8 = [v3 stringWithFormat:@"<%@, name: %@, id: %@, unique id: %@, onEnable: %i, onDisable: %i>", v4, v5, v6, v7, -[WFUserFocusActivityTrigger onEnable](self, "onEnable"), -[WFUserFocusActivityTrigger onDisable](self, "onDisable")];

  return v8;
}

- (id)offIcon
{
  v2 = [(WFUserFocusActivityTrigger *)self activityGlyphName];
  v3 = [WFFocusModesManager exitingSymbolForSymbolName:v2];

  v4 = [MEMORY[0x1E69E0B58] triggerConfigurationSymbolNamed:v3 renderingMode:2];

  return v4;
}

- (id)onIcon
{
  v2 = [(WFUserFocusActivityTrigger *)self activityGlyphName];
  v3 = [WFFocusModesManager enteringSymbolForSymbolName:v2];

  v4 = [MEMORY[0x1E69E0B58] triggerConfigurationSymbolNamed:v3 renderingMode:2];

  return v4;
}

- (id)uniqueIdentifier
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = WFUserFocusActivityTrigger;
  v4 = [(WFTrigger *)&v8 uniqueIdentifier];
  v5 = [(WFUserFocusActivityTrigger *)self activitySemanticIdentifier];
  v6 = [v3 stringWithFormat:@"%@.%@", v4, v5];

  return v6;
}

- (id)displayGlyphTintColor
{
  v2 = [(WFUserFocusActivityTrigger *)self activityTintColor];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
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
    v8 = [v6 systemIndigoColor];
    v4 = [v5 initWithPlatformColor:v8];
  }

  return v4;
}

- (id)displayGlyph
{
  v2 = MEMORY[0x1E69E0B58];
  v3 = [(WFUserFocusActivityTrigger *)self displayGlyphName];
  v4 = [v2 triggerDisplaySymbolNamed:v3 renderingMode:2];

  return v4;
}

- (id)localizedDisplayExplanation
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = WFLocalizedString(@"“When turning %@ on”");
  v5 = [(WFUserFocusActivityTrigger *)self activityName];
  v6 = [v3 localizedStringWithFormat:v4, v5];

  return v6;
}

- (WFUserFocusActivityTrigger)initWithActivity:(id)a3
{
  v4 = a3;
  v21.receiver = self;
  v21.super_class = WFUserFocusActivityTrigger;
  v5 = [(WFTrigger *)&v21 init];
  if (v5)
  {
    v6 = [v4 activityDisplayName];
    activityName = v5->_activityName;
    v5->_activityName = v6;

    v8 = [v4 activityUniqueIdentifier];
    v9 = [v8 UUIDString];
    activityUniqueIdentifier = v5->_activityUniqueIdentifier;
    v5->_activityUniqueIdentifier = v9;

    v11 = [v4 activityIdentifier];
    activitySemanticIdentifier = v5->_activitySemanticIdentifier;
    v5->_activitySemanticIdentifier = v11;

    v13 = [v4 activitySymbolImageName];
    activityGlyphName = v5->_activityGlyphName;
    v5->_activityGlyphName = v13;

    v5->_onEnable = 1;
    v5->_onDisable = 0;
    v15 = MEMORY[0x1E69E09E0];
    v16 = [v4 activityColorName];
    v17 = [v15 colorWithFocusColorName:v16];
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

+ (id)localizedDisplayNameWithContext:(id)a3
{
  v3 = a3;
  v4 = WFLocalizedStringResourceWithKey(@"Focus", @"Focus");
  v5 = [v3 localize:v4];

  return v5;
}

@end