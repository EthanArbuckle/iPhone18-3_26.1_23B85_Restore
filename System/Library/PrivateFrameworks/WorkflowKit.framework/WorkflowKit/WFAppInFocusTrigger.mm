@interface WFAppInFocusTrigger
+ (id)localizedDisplayNameWithContext:(id)a3;
+ (id)tintColor;
- (BOOL)hasValidConfiguration;
- (WFAppInFocusTrigger)init;
- (WFAppInFocusTrigger)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)localizedDescriptionWithConfigurationSummary;
- (id)localizedPastTenseDescription;
- (id)suggestedActions;
- (void)encodeWithCoder:(id)a3;
@end

@implementation WFAppInFocusTrigger

- (id)suggestedActions
{
  v2 = +[WFActionRegistry sharedRegistry];
  v3 = [v2 createActionsWithIdentifiers:&unk_1F4A9AFA8 serializedParameterArray:0];

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v8.receiver = self;
  v8.super_class = WFAppInFocusTrigger;
  v4 = [(WFTrigger *)&v8 copyWithZone:a3];
  v5 = [(WFAppInFocusTrigger *)self selectedBundleIdentifiers];
  v6 = [v5 copy];
  [v4 setSelectedBundleIdentifiers:v6];

  return v4;
}

- (WFAppInFocusTrigger)initWithCoder:(id)a3
{
  v37[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v35.receiver = self;
  v35.super_class = WFAppInFocusTrigger;
  v5 = [(WFTrigger *)&v35 initWithCoder:v4];
  v6 = v5;
  if (!v5)
  {
    goto LABEL_17;
  }

  v7 = MEMORY[0x1E695E0F0];
  [(WFAppInFocusTrigger *)v5 setSelectedBundleIdentifiers:MEMORY[0x1E695E0F0]];
  if ([v4 containsValueForKey:@"appIdentifiers"])
  {
    v8 = MEMORY[0x1E695DFD8];
    v37[0] = objc_opt_class();
    v37[1] = objc_opt_class();
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v37 count:2];
    v10 = [v8 setWithArray:v9];
    v11 = [v4 decodeObjectOfClasses:v10 forKey:@"appIdentifiers"];
    v12 = v11;
    if (v11)
    {
      v13 = v11;
    }

    else
    {
      v13 = v7;
    }

    [(WFAppInFocusTrigger *)v6 setSelectedBundleIdentifiers:v13];

LABEL_12:
    goto LABEL_13;
  }

  if ([v4 containsValueForKey:@"apps"])
  {
    v14 = MEMORY[0x1E695DFD8];
    v36[0] = objc_opt_class();
    v36[1] = objc_opt_class();
    v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v36 count:2];
    v16 = [v14 setWithArray:v15];
    v17 = [v4 decodeObjectOfClasses:v16 forKey:@"apps"];
    v18 = v17;
    if (v17)
    {
      v19 = v17;
    }

    else
    {
      v19 = v7;
    }

    v20 = v19;

    v9 = [v20 if_compactMap:&__block_literal_global_11389];

    [(WFAppInFocusTrigger *)v6 setSelectedBundleIdentifiers:v9];
    goto LABEL_12;
  }

LABEL_13:
  if ([v4 containsValueForKey:@"onFocus"])
  {
    -[WFAppInFocusTrigger setOnFocus:](v6, "setOnFocus:", [v4 decodeBoolForKey:@"onFocus"]);
    v21 = [v4 decodeBoolForKey:@"onBackground"];
  }

  else
  {
    [(WFAppInFocusTrigger *)v6 setOnFocus:1];
    v21 = 0;
  }

  [(WFAppInFocusTrigger *)v6 setOnBackground:v21];
  v22 = [(WFAppInFocusTrigger *)v6 selectedBundleIdentifiers];
  v23 = [v22 if_objectsPassingTest:&__block_literal_global_283];

  v24 = objc_opt_new();
  v30 = MEMORY[0x1E69E9820];
  v31 = 3221225472;
  v32 = __37__WFAppInFocusTrigger_initWithCoder___block_invoke_3;
  v33 = &unk_1E83800A8;
  v34 = v24;
  v25 = v24;
  [v23 enumerateObjectsUsingBlock:&v30];
  v26 = [v25 allObjects];
  [(WFAppInFocusTrigger *)v6 setSelectedBundleIdentifiers:v26];

  v27 = v6;
LABEL_17:

  v28 = *MEMORY[0x1E69E9840];
  return v6;
}

void __37__WFAppInFocusTrigger_initWithCoder___block_invoke_3(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [objc_alloc(MEMORY[0x1E69635F8]) initWithBundleIdentifier:v6 allowPlaceholder:1 error:0];
  v4 = [v3 applicationState];
  v5 = [v4 isInstalled];

  if (v5)
  {
    [*(a1 + 32) addObject:v6];
  }
}

- (void)encodeWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = WFAppInFocusTrigger;
  v4 = a3;
  [(WFTrigger *)&v6 encodeWithCoder:v4];
  v5 = [(WFAppInFocusTrigger *)self selectedBundleIdentifiers:v6.receiver];
  [v4 encodeObject:v5 forKey:@"appIdentifiers"];

  [v4 encodeBool:-[WFAppInFocusTrigger onFocus](self forKey:{"onFocus"), @"onFocus"}];
  [v4 encodeBool:-[WFAppInFocusTrigger onBackground](self forKey:{"onBackground"), @"onBackground"}];
}

- (id)localizedPastTenseDescription
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = [(WFAppInFocusTrigger *)self selectedBundleIdentifiers];
  v4 = [v3 count];

  if (v4 == 1)
  {
    v5 = objc_alloc(MEMORY[0x1E69635F8]);
    v6 = [(WFAppInFocusTrigger *)self selectedBundleIdentifiers];
    v7 = [v6 objectAtIndexedSubscript:0];
    v8 = [v5 initWithBundleIdentifier:v7 allowPlaceholder:1 error:0];

    v9 = [v8 localizedName];
    if ([(WFAppInFocusTrigger *)self onFocus]&& [(WFAppInFocusTrigger *)self onBackground])
    {
      v10 = MEMORY[0x1E696AEC0];
      v11 = @"Opened or closed “%@”";
    }

    else if ([(WFAppInFocusTrigger *)self onFocus])
    {
      v10 = MEMORY[0x1E696AEC0];
      v11 = @"Opened “%@”";
    }

    else
    {
      if (![(WFAppInFocusTrigger *)self onBackground])
      {
        v20 = getWFTriggersLogObject();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
        {
          *buf = 136315394;
          v23 = "[WFAppInFocusTrigger localizedPastTenseDescription]";
          v24 = 2114;
          v25 = self;
          _os_log_impl(&dword_1CA256000, v20, OS_LOG_TYPE_FAULT, "%s Invalid config for %{public}@", buf, 0x16u);
        }

        v15 = &stru_1F4A1C408;
        goto LABEL_15;
      }

      v10 = MEMORY[0x1E696AEC0];
      v11 = @"Closed “%@”";
    }

    v14 = WFLocalizedString(v11);
    v15 = [v10 localizedStringWithFormat:v14, v9];

LABEL_15:
    goto LABEL_19;
  }

  if ([(WFAppInFocusTrigger *)self onFocus]&& [(WFAppInFocusTrigger *)self onBackground])
  {
    v12 = MEMORY[0x1E696AEC0];
    v13 = @"Opened or closed any of %lu apps";
LABEL_18:
    v16 = WFLocalizedString(v13);
    v17 = [(WFAppInFocusTrigger *)self selectedBundleIdentifiers];
    v15 = [v12 localizedStringWithFormat:v16, objc_msgSend(v17, "count")];

    goto LABEL_19;
  }

  if ([(WFAppInFocusTrigger *)self onFocus])
  {
    v12 = MEMORY[0x1E696AEC0];
    v13 = @"Opened any of %lu apps";
    goto LABEL_18;
  }

  if ([(WFAppInFocusTrigger *)self onBackground])
  {
    v12 = MEMORY[0x1E696AEC0];
    v13 = @"Closed any of %lu apps";
    goto LABEL_18;
  }

  v21 = getWFTriggersLogObject();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
  {
    *buf = 136315394;
    v23 = "[WFAppInFocusTrigger localizedPastTenseDescription]";
    v24 = 2114;
    v25 = self;
    _os_log_impl(&dword_1CA256000, v21, OS_LOG_TYPE_FAULT, "%s Invalid config for %{public}@", buf, 0x16u);
  }

  v15 = &stru_1F4A1C408;
LABEL_19:
  v18 = *MEMORY[0x1E69E9840];

  return v15;
}

- (id)localizedDescriptionWithConfigurationSummary
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = [(WFAppInFocusTrigger *)self selectedBundleIdentifiers];
  v4 = [v3 count];

  if (v4 == 1)
  {
    v5 = objc_alloc(MEMORY[0x1E69635F8]);
    v6 = [(WFAppInFocusTrigger *)self selectedBundleIdentifiers];
    v7 = [v6 objectAtIndexedSubscript:0];
    v8 = [v5 initWithBundleIdentifier:v7 allowPlaceholder:1 error:0];

    v9 = [v8 localizedName];
    if ([(WFAppInFocusTrigger *)self onFocus]&& [(WFAppInFocusTrigger *)self onBackground])
    {
      v10 = MEMORY[0x1E696AEC0];
      v11 = @"When “%@” is opened or closed";
    }

    else if ([(WFAppInFocusTrigger *)self onFocus])
    {
      v10 = MEMORY[0x1E696AEC0];
      v11 = @"When “%@” is opened";
    }

    else
    {
      if (![(WFAppInFocusTrigger *)self onBackground])
      {
        v20 = getWFTriggersLogObject();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
        {
          *buf = 136315394;
          v23 = "[WFAppInFocusTrigger localizedDescriptionWithConfigurationSummary]";
          v24 = 2114;
          v25 = self;
          _os_log_impl(&dword_1CA256000, v20, OS_LOG_TYPE_FAULT, "%s Invalid config for %{public}@", buf, 0x16u);
        }

        v15 = &stru_1F4A1C408;
        goto LABEL_15;
      }

      v10 = MEMORY[0x1E696AEC0];
      v11 = @"When “%@” is closed";
    }

    v14 = WFLocalizedString(v11);
    v15 = [v10 localizedStringWithFormat:v14, v9];

LABEL_15:
    goto LABEL_19;
  }

  if ([(WFAppInFocusTrigger *)self onFocus]&& [(WFAppInFocusTrigger *)self onBackground])
  {
    v12 = MEMORY[0x1E696AEC0];
    v13 = @"When any of %lu apps are opened or closed";
LABEL_18:
    v16 = WFLocalizedPluralString(v13);
    v17 = [(WFAppInFocusTrigger *)self selectedBundleIdentifiers];
    v15 = [v12 localizedStringWithFormat:v16, objc_msgSend(v17, "count")];

    goto LABEL_19;
  }

  if ([(WFAppInFocusTrigger *)self onFocus])
  {
    v12 = MEMORY[0x1E696AEC0];
    v13 = @"When any of %lu apps are opened";
    goto LABEL_18;
  }

  if ([(WFAppInFocusTrigger *)self onBackground])
  {
    v12 = MEMORY[0x1E696AEC0];
    v13 = @"When any of %lu apps are closed";
    goto LABEL_18;
  }

  v21 = getWFTriggersLogObject();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
  {
    *buf = 136315394;
    v23 = "[WFAppInFocusTrigger localizedDescriptionWithConfigurationSummary]";
    v24 = 2114;
    v25 = self;
    _os_log_impl(&dword_1CA256000, v21, OS_LOG_TYPE_FAULT, "%s Invalid config for %{public}@", buf, 0x16u);
  }

  v15 = &stru_1F4A1C408;
LABEL_19:
  v18 = *MEMORY[0x1E69E9840];

  return v15;
}

- (BOOL)hasValidConfiguration
{
  v3 = [(WFAppInFocusTrigger *)self selectedBundleIdentifiers];
  if ([v3 count])
  {
    v4 = [(WFAppInFocusTrigger *)self onFocus]|| [(WFAppInFocusTrigger *)self onBackground];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (WFAppInFocusTrigger)init
{
  v7.receiver = self;
  v7.super_class = WFAppInFocusTrigger;
  v2 = [(WFTrigger *)&v7 init];
  if (v2)
  {
    v3 = objc_opt_new();
    selectedBundleIdentifiers = v2->_selectedBundleIdentifiers;
    v2->_selectedBundleIdentifiers = v3;

    v2->_onFocus = 1;
    v5 = v2;
  }

  return v2;
}

+ (id)tintColor
{
  v2 = MEMORY[0x1E69E09E0];
  v3 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v4 = [v2 colorNamed:@"AppTriggerIconColor" inBundle:v3];

  return v4;
}

+ (id)localizedDisplayNameWithContext:(id)a3
{
  v3 = a3;
  v4 = WFLocalizedStringResourceWithKey(@"App", @"App");
  v5 = [v3 localize:v4];

  return v5;
}

@end