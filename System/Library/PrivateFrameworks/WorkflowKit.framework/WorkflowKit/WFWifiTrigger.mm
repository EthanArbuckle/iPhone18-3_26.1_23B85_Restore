@interface WFWifiTrigger
+ (id)localizedDisplayExplanation;
+ (id)localizedDisplayNameWithContext:(id)context;
+ (id)tintColor;
- (BOOL)hasValidConfiguration;
- (WFWifiTrigger)init;
- (WFWifiTrigger)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)localizedDescriptionWithConfigurationSummary;
- (id)suggestedActions;
- (void)encodeWithCoder:(id)coder;
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

- (id)copyWithZone:(_NSZone *)zone
{
  v8.receiver = self;
  v8.super_class = WFWifiTrigger;
  v4 = [(WFTrigger *)&v8 copyWithZone:zone];
  selectedNetworks = [(WFWifiTrigger *)self selectedNetworks];
  v6 = [selectedNetworks copy];
  [v4 setSelectedNetworks:v6];

  [v4 setSelection:{-[WFWifiTrigger selection](self, "selection")}];
  [v4 setOnConnect:{-[WFWifiTrigger onConnect](self, "onConnect")}];
  [v4 setOnDisconnect:{-[WFWifiTrigger onDisconnect](self, "onDisconnect")}];
  [v4 setRunAfterConnectionInterruption:{-[WFWifiTrigger runAfterConnectionInterruption](self, "runAfterConnectionInterruption")}];
  return v4;
}

- (WFWifiTrigger)initWithCoder:(id)coder
{
  v18[2] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v17.receiver = self;
  v17.super_class = WFWifiTrigger;
  v5 = [(WFTrigger *)&v17 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v18[0] = objc_opt_class();
    v18[1] = objc_opt_class();
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:2];
    v8 = [v6 setWithArray:v7];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"selectedNetworks"];
    selectedNetworks = v5->_selectedNetworks;
    v5->_selectedNetworks = v9;

    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"selection"];
    v12 = v11;
    if (v11)
    {
      unsignedIntegerValue = [v11 unsignedIntegerValue];
    }

    else
    {
      unsignedIntegerValue = 1;
    }

    v5->_selection = unsignedIntegerValue;
    v5->_onConnect = [coderCopy decodeBoolForKey:@"onConnect"];
    v5->_onDisconnect = [coderCopy decodeBoolForKey:@"onDisconnect"];
    if ([coderCopy containsValueForKey:@"runAfterConnectionInterruption"])
    {
      v5->_runAfterConnectionInterruption = [coderCopy decodeBoolForKey:@"runAfterConnectionInterruption"];
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

- (void)encodeWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = WFWifiTrigger;
  coderCopy = coder;
  [(WFTrigger *)&v7 encodeWithCoder:coderCopy];
  v5 = [(WFWifiTrigger *)self selectedNetworks:v7.receiver];
  [coderCopy encodeObject:v5 forKey:@"selectedNetworks"];

  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[WFWifiTrigger selection](self, "selection")}];
  [coderCopy encodeObject:v6 forKey:@"selection"];

  [coderCopy encodeBool:-[WFWifiTrigger onConnect](self forKey:{"onConnect"), @"onConnect"}];
  [coderCopy encodeBool:-[WFWifiTrigger onDisconnect](self forKey:{"onDisconnect"), @"onDisconnect"}];
  [coderCopy encodeBool:-[WFWifiTrigger runAfterConnectionInterruption](self forKey:{"runAfterConnectionInterruption"), @"runAfterConnectionInterruption"}];
}

- (id)localizedDescriptionWithConfigurationSummary
{
  currentDevice = [MEMORY[0x1E69E0A90] currentDevice];
  name = [currentDevice name];

  if (![(WFWifiTrigger *)self selection])
  {
    currentDevice2 = [MEMORY[0x1E69E0A90] currentDevice];
    v11 = [currentDevice2 hasCapability:*MEMORY[0x1E69E1060]];

    onConnect = [(WFWifiTrigger *)self onConnect];
    if (v11)
    {
      if (onConnect && [(WFWifiTrigger *)self onDisconnect])
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

    else if (onConnect && [(WFWifiTrigger *)self onDisconnect])
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
    v22 = [v13 localizedStringWithFormat:v8, name];
    goto LABEL_44;
  }

  selectedNetworks = [(WFWifiTrigger *)self selectedNetworks];
  v6 = [selectedNetworks count];

  if (v6 == 1)
  {
    selectedNetworks2 = [(WFWifiTrigger *)self selectedNetworks];
    v8 = [selectedNetworks2 objectAtIndexedSubscript:0];

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
    v22 = [v20 localizedStringWithFormat:v21, name, v8];

LABEL_44:
    goto LABEL_45;
  }

  currentDevice3 = [MEMORY[0x1E69E0A90] currentDevice];
  v16 = [currentDevice3 hasCapability:*MEMORY[0x1E69E1060]];

  onConnect2 = [(WFWifiTrigger *)self onConnect];
  if (v16)
  {
    if (onConnect2 && [(WFWifiTrigger *)self onDisconnect])
    {
      v18 = MEMORY[0x1E696AEC0];
      v19 = @"When %2$@ joins or leaves any of %1$lu WLAN networks";
LABEL_43:
      v8 = WFLocalizedPluralString(v19);
      selectedNetworks3 = [(WFWifiTrigger *)self selectedNetworks];
      v22 = [v18 localizedStringWithFormat:v8, objc_msgSend(selectedNetworks3, "count"), name];

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
    if (onConnect2 && [(WFWifiTrigger *)self onDisconnect])
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
  selectedNetworks = [(WFWifiTrigger *)self selectedNetworks];
  if ([selectedNetworks count])
  {
    v4 = 1;
  }

  else
  {
    v4 = [(WFWifiTrigger *)self selection]== 0;
  }

  onDisconnect = [(WFWifiTrigger *)self onConnect]|| [(WFWifiTrigger *)self onDisconnect];
  return v4 && onDisconnect;
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
  currentDevice = [MEMORY[0x1E69E0A90] currentDevice];
  localizedModel = [currentDevice localizedModel];

  v4 = MEMORY[0x1E696AEC0];
  v5 = WFLocalizedString(@"“When my %@ joins the Home network”");
  v6 = [v4 localizedStringWithFormat:v5, localizedModel];

  return v6;
}

+ (id)localizedDisplayNameWithContext:(id)context
{
  currentDevice = [MEMORY[0x1E69E0A90] currentDevice];
  localizedWiFiDisplayName = [currentDevice localizedWiFiDisplayName];

  return localizedWiFiDisplayName;
}

@end