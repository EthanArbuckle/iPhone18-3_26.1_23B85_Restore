@interface WFWifiTrigger
+ (id)localizedDisplayExplanation;
+ (id)localizedDisplayNameWithContext:(id)a3;
+ (id)tintColor;
- (BOOL)hasValidConfiguration;
- (WFWifiTrigger)init;
- (WFWifiTrigger)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)localizedDescriptionWithConfigurationSummary;
- (id)suggestedActions;
- (void)encodeWithCoder:(id)a3;
@end

@implementation WFWifiTrigger

- (id)suggestedActions
{
  v11[1] = *MEMORY[0x1E69E9840];
  v2 = +[WFActionRegistry sharedRegistry];
  v10 = @"ShowWhenRun";
  v11[0] = MEMORY[0x1E695E110];
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];
  v4 = [v2 createActionWithIdentifier:@"is.workflow.actions.sendmessage" serializedParameters:v3];

  v5 = +[WFActionRegistry sharedRegistry];
  v6 = [v5 createActionsWithIdentifiers:&unk_1F4A9B7E8 serializedParameterArray:0];

  if (v4)
  {
    v7 = [v6 arrayByAddingObject:v4];

    v6 = v7;
  }

  v8 = *MEMORY[0x1E69E9840];

  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v8.receiver = self;
  v8.super_class = WFWifiTrigger;
  v4 = [(WFTrigger *)&v8 copyWithZone:a3];
  v5 = [(WFWifiTrigger *)self selectedNetworks];
  v6 = [v5 copy];
  [v4 setSelectedNetworks:v6];

  [v4 setSelection:{-[WFWifiTrigger selection](self, "selection")}];
  [v4 setOnConnect:{-[WFWifiTrigger onConnect](self, "onConnect")}];
  [v4 setOnDisconnect:{-[WFWifiTrigger onDisconnect](self, "onDisconnect")}];
  [v4 setRunAfterConnectionInterruption:{-[WFWifiTrigger runAfterConnectionInterruption](self, "runAfterConnectionInterruption")}];
  return v4;
}

- (WFWifiTrigger)initWithCoder:(id)a3
{
  v18[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v17.receiver = self;
  v17.super_class = WFWifiTrigger;
  v5 = [(WFTrigger *)&v17 initWithCoder:v4];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v18[0] = objc_opt_class();
    v18[1] = objc_opt_class();
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:2];
    v8 = [v6 setWithArray:v7];
    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"selectedNetworks"];
    selectedNetworks = v5->_selectedNetworks;
    v5->_selectedNetworks = v9;

    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"selection"];
    v12 = v11;
    if (v11)
    {
      v13 = [v11 unsignedIntegerValue];
    }

    else
    {
      v13 = 1;
    }

    v5->_selection = v13;
    v5->_onConnect = [v4 decodeBoolForKey:@"onConnect"];
    v5->_onDisconnect = [v4 decodeBoolForKey:@"onDisconnect"];
    if ([v4 containsValueForKey:@"runAfterConnectionInterruption"])
    {
      v5->_runAfterConnectionInterruption = [v4 decodeBoolForKey:@"runAfterConnectionInterruption"];
    }

    else
    {
      v5->_runAfterConnectionInterruption = 1;
    }

    v14 = v5;
  }

  v15 = *MEMORY[0x1E69E9840];
  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = WFWifiTrigger;
  v4 = a3;
  [(WFTrigger *)&v7 encodeWithCoder:v4];
  v5 = [(WFWifiTrigger *)self selectedNetworks:v7.receiver];
  [v4 encodeObject:v5 forKey:@"selectedNetworks"];

  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[WFWifiTrigger selection](self, "selection")}];
  [v4 encodeObject:v6 forKey:@"selection"];

  [v4 encodeBool:-[WFWifiTrigger onConnect](self forKey:{"onConnect"), @"onConnect"}];
  [v4 encodeBool:-[WFWifiTrigger onDisconnect](self forKey:{"onDisconnect"), @"onDisconnect"}];
  [v4 encodeBool:-[WFWifiTrigger runAfterConnectionInterruption](self forKey:{"runAfterConnectionInterruption"), @"runAfterConnectionInterruption"}];
}

- (id)localizedDescriptionWithConfigurationSummary
{
  v3 = [MEMORY[0x1E69E0A90] currentDevice];
  v4 = [v3 name];

  if (![(WFWifiTrigger *)self selection])
  {
    v10 = [MEMORY[0x1E69E0A90] currentDevice];
    v11 = [v10 hasCapability:*MEMORY[0x1E69E1060]];

    v12 = [(WFWifiTrigger *)self onConnect];
    if (v11)
    {
      if (v12 && [(WFWifiTrigger *)self onDisconnect])
      {
        v13 = MEMORY[0x1E696AEC0];
        v14 = @"When %@ joins or leaves any WLAN network";
      }

      else if ([(WFWifiTrigger *)self onConnect])
      {
        v13 = MEMORY[0x1E696AEC0];
        v14 = @"When %@ joins any WLAN network";
      }

      else
      {
        if (![(WFWifiTrigger *)self onDisconnect])
        {
          goto LABEL_48;
        }

        v13 = MEMORY[0x1E696AEC0];
        v14 = @"When %@ leaves any WLAN network";
      }
    }

    else if (v12 && [(WFWifiTrigger *)self onDisconnect])
    {
      v13 = MEMORY[0x1E696AEC0];
      v14 = @"When %@ joins or leaves any Wi-Fi network";
    }

    else if ([(WFWifiTrigger *)self onConnect])
    {
      v13 = MEMORY[0x1E696AEC0];
      v14 = @"When %@ joins any Wi-Fi network";
    }

    else
    {
      if (![(WFWifiTrigger *)self onDisconnect])
      {
        goto LABEL_48;
      }

      v13 = MEMORY[0x1E696AEC0];
      v14 = @"When %@ leaves any Wi-Fi network";
    }

    v8 = WFLocalizedString(v14);
    v22 = [v13 localizedStringWithFormat:v8, v4];
    goto LABEL_44;
  }

  v5 = [(WFWifiTrigger *)self selectedNetworks];
  v6 = [v5 count];

  if (v6 == 1)
  {
    v7 = [(WFWifiTrigger *)self selectedNetworks];
    v8 = [v7 objectAtIndexedSubscript:0];

    if ([(WFWifiTrigger *)self onConnect]&& [(WFWifiTrigger *)self onDisconnect])
    {
      v9 = @"When %1$@ joins or leaves “%2$@”";
    }

    else if ([(WFWifiTrigger *)self onConnect])
    {
      v9 = @"When %1$@ joins “%2$@”";
    }

    else
    {
      if (![(WFWifiTrigger *)self onDisconnect])
      {
        v22 = &stru_1F4A1C408;
        goto LABEL_44;
      }

      v9 = @"When %1$@ leaves “%2$@”";
    }

    v20 = MEMORY[0x1E696AEC0];
    v21 = WFLocalizedString(v9);
    v22 = [v20 localizedStringWithFormat:v21, v4, v8];

LABEL_44:
    goto LABEL_45;
  }

  v15 = [MEMORY[0x1E69E0A90] currentDevice];
  v16 = [v15 hasCapability:*MEMORY[0x1E69E1060]];

  v17 = [(WFWifiTrigger *)self onConnect];
  if (v16)
  {
    if (v17 && [(WFWifiTrigger *)self onDisconnect])
    {
      v18 = MEMORY[0x1E696AEC0];
      v19 = @"When %2$@ joins or leaves any of %1$lu WLAN networks";
LABEL_43:
      v8 = WFLocalizedPluralString(v19);
      v23 = [(WFWifiTrigger *)self selectedNetworks];
      v22 = [v18 localizedStringWithFormat:v8, objc_msgSend(v23, "count"), v4];

      goto LABEL_44;
    }

    if ([(WFWifiTrigger *)self onConnect])
    {
      v18 = MEMORY[0x1E696AEC0];
      v19 = @"When %2$@ joins any of %1$lu WLAN networks";
      goto LABEL_43;
    }

    if ([(WFWifiTrigger *)self onDisconnect])
    {
      v18 = MEMORY[0x1E696AEC0];
      v19 = @"When %2$@ leaves any of %1$lu WLAN networks";
      goto LABEL_43;
    }
  }

  else
  {
    if (v17 && [(WFWifiTrigger *)self onDisconnect])
    {
      v18 = MEMORY[0x1E696AEC0];
      v19 = @"When %2$@ joins or leaves any of %1$lu Wi-Fi networks";
      goto LABEL_43;
    }

    if ([(WFWifiTrigger *)self onConnect])
    {
      v18 = MEMORY[0x1E696AEC0];
      v19 = @"When %2$@ joins any of %1$lu Wi-Fi networks";
      goto LABEL_43;
    }

    if ([(WFWifiTrigger *)self onDisconnect])
    {
      v18 = MEMORY[0x1E696AEC0];
      v19 = @"When %2$@ leaves any of %1$lu Wi-Fi networks";
      goto LABEL_43;
    }
  }

LABEL_48:
  v22 = &stru_1F4A1C408;
LABEL_45:

  return v22;
}

- (BOOL)hasValidConfiguration
{
  v3 = [(WFWifiTrigger *)self selectedNetworks];
  if ([v3 count])
  {
    v4 = 1;
  }

  else
  {
    v4 = [(WFWifiTrigger *)self selection]== 0;
  }

  v5 = [(WFWifiTrigger *)self onConnect]|| [(WFWifiTrigger *)self onDisconnect];
  return v4 && v5;
}

- (WFWifiTrigger)init
{
  v7.receiver = self;
  v7.super_class = WFWifiTrigger;
  v2 = [(WFTrigger *)&v7 init];
  v3 = v2;
  if (v2)
  {
    selectedNetworks = v2->_selectedNetworks;
    v2->_selectedNetworks = MEMORY[0x1E695E0F0];

    v3->_selection = 1;
    v3->_onConnect = 1;
    v5 = v3;
  }

  return v3;
}

+ (id)tintColor
{
  v2 = [objc_alloc(MEMORY[0x1E69E09E0]) initWithSystemColor:4];

  return v2;
}

+ (id)localizedDisplayExplanation
{
  v2 = [MEMORY[0x1E69E0A90] currentDevice];
  v3 = [v2 localizedModel];

  v4 = MEMORY[0x1E696AEC0];
  v5 = WFLocalizedString(@"“When my %@ joins the Home network”");
  v6 = [v4 localizedStringWithFormat:v5, v3];

  return v6;
}

+ (id)localizedDisplayNameWithContext:(id)a3
{
  v3 = [MEMORY[0x1E69E0A90] currentDevice];
  v4 = [v3 localizedWiFiDisplayName];

  return v4;
}

@end