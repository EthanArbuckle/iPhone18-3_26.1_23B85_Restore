@interface WFToggleSettingContextualAction
- (BOOL)isEqual:(id)a3;
- (WFToggleSettingContextualAction)initWithCoder:(id)a3;
- (WFToggleSettingContextualAction)initWithSetting:(unint64_t)a3 operation:(unint64_t)a4 unconfigured:(BOOL)a5;
- (id)_staticDisplayStringForDecoding;
- (id)associatedSettingsPreference;
- (id)displayStringForSetting:(unint64_t)a3 operation:(unint64_t)a4;
- (id)settingBiomeStreamIdentifier;
- (id)uniqueIdentifier;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation WFToggleSettingContextualAction

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = WFToggleSettingContextualAction;
  v4 = a3;
  [(WFContextualAction *)&v5 encodeWithCoder:v4];
  [v4 encodeInteger:self->_setting forKey:{@"setting", v5.receiver, v5.super_class}];
  [v4 encodeInteger:self->_operation forKey:@"operation"];
}

- (WFToggleSettingContextualAction)initWithCoder:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = WFToggleSettingContextualAction;
  v5 = [(WFContextualAction *)&v10 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeIntegerForKey:@"setting"];
    v7 = [v4 decodeIntegerForKey:@"operation"];
    v5->_setting = v6;
    v5->_operation = v7;
    v8 = v5;
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = WFToggleSettingContextualAction;
  if ([(WFContextualAction *)&v10 isEqual:v4])
  {
    v5 = v4;
    if (v5 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v6 = [v5 setting];
      if (v6 == [(WFToggleSettingContextualAction *)self setting])
      {
        v7 = [v5 operation];
        v8 = v7 == [(WFToggleSettingContextualAction *)self operation];
LABEL_9:

        goto LABEL_10;
      }
    }

    else
    {

      v5 = 0;
    }

    v8 = 0;
    goto LABEL_9;
  }

  v8 = 0;
LABEL_10:

  return v8;
}

- (unint64_t)hash
{
  v3 = objc_opt_new();
  v9.receiver = self;
  v9.super_class = WFToggleSettingContextualAction;
  v4 = [v3 combineInteger:{-[WFContextualAction hash](&v9, sel_hash)}];
  v5 = [v3 combineInteger:{-[WFToggleSettingContextualAction setting](self, "setting")}];
  v6 = [v3 combineInteger:{-[WFToggleSettingContextualAction operation](self, "operation")}];
  v7 = [v3 finalize];

  return v7;
}

- (id)associatedSettingsPreference
{
  v2 = [(WFToggleSettingContextualAction *)self setting];
  if (v2 > 8)
  {
    return 0;
  }

  else
  {
    return off_1E7B004D8[v2];
  }
}

- (id)uniqueIdentifier
{
  v10[2] = *MEMORY[0x1E69E9840];
  v3 = [(WFToggleSettingContextualAction *)self operation];
  if (v3 > 2)
  {
    v4 = @"unknown_operation";
  }

  else
  {
    v4 = off_1E7B004C0[v3];
  }

  v5 = [(WFContextualAction *)self identifier];
  v10[0] = v5;
  v10[1] = v4;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:2];

  v7 = [v6 componentsJoinedByString:@"."];

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

- (id)settingBiomeStreamIdentifier
{
  if ([(WFToggleSettingContextualAction *)self operation]!= 2)
  {
    v2 = 0;
    goto LABEL_27;
  }

  v4 = [(WFToggleSettingContextualAction *)self setting];
  if (v4 <= 4)
  {
    if (v4 <= 1)
    {
      if (v4)
      {
        if (v4 != 1)
        {
          goto LABEL_27;
        }

        v5 = WFBiomeLibrary();
        v6 = [v5 Device];
        v7 = [v6 Power];
        v8 = [v7 EnergyMode];
      }

      else
      {
        v5 = WFBiomeLibrary();
        v6 = [v5 Device];
        v7 = [v6 Wireless];
        v8 = [v7 AirplaneMode];
      }

      goto LABEL_25;
    }

    if (v4 == 2)
    {
      v5 = WFBiomeLibrary();
      v6 = [v5 Device];
      v7 = [v6 Display];
      v8 = [v7 Appearance];
      goto LABEL_25;
    }

    if (v4 == 3)
    {
      v5 = WFBiomeLibrary();
      v6 = [v5 Device];
      v7 = [v6 Display];
      [v7 AlwaysOn];
    }

    else
    {
      v5 = WFBiomeLibrary();
      v6 = [v5 Device];
      v7 = [v6 Wireless];
      [v7 WiFiAvailabilityStatus];
    }

    goto LABEL_7;
  }

  if (v4 <= 6)
  {
    if (v4 == 5)
    {
      v5 = WFBiomeLibrary();
      v6 = [v5 Device];
      v7 = [v6 Wireless];
      [v7 BluetoothPowerEnabled];
    }

    else
    {
      v5 = WFBiomeLibrary();
      v6 = [v5 Device];
      v7 = [v6 Wireless];
      [v7 CellularDataEnabled];
    }

    v8 = LABEL_7:;
    goto LABEL_25;
  }

  switch(v4)
  {
    case 7:
      v5 = WFBiomeLibrary();
      v6 = [v5 Device];
      v7 = [v6 Display];
      v8 = [v7 TrueTone];
      break;
    case 8:
      v5 = WFBiomeLibrary();
      v6 = [v5 Device];
      v7 = [v6 Display];
      v8 = [v7 NightShift];
      break;
    case 9:
      v5 = WFBiomeLibrary();
      v6 = [v5 Device];
      v7 = [v6 SilentMode];
      v2 = [v7 identifier];
      goto LABEL_26;
    default:
      goto LABEL_27;
  }

LABEL_25:
  v9 = v8;
  v2 = [v8 identifier];

LABEL_26:
LABEL_27:

  return v2;
}

- (id)_staticDisplayStringForDecoding
{
  v3 = [(WFToggleSettingContextualAction *)self setting];
  v4 = [(WFToggleSettingContextualAction *)self operation];

  return [(WFToggleSettingContextualAction *)self displayStringForSetting:v3 operation:v4];
}

- (id)displayStringForSetting:(unint64_t)a3 operation:(unint64_t)a4
{
  v6 = 0;
  if (a3 > 4)
  {
    if (a3 <= 6)
    {
      if (a3 == 5)
      {
        v9 = @"Contextual Action Title: Bluetooth";
        v10 = @"Bluetooth";
      }

      else
      {
        v9 = @"Contextual Action Title: Cellular Data";
        v10 = @"Cellular Data";
      }
    }

    else
    {
      switch(a3)
      {
        case 7uLL:
          v9 = @"Contextual Action Title: True Tone";
          v10 = @"True Tone";
          break;
        case 8uLL:
          v9 = @"Contextual Action Title: Night Shift";
          v10 = @"Night Shift";
          break;
        case 9uLL:
          v9 = @"Contextual Action Title: Silent Mode";
          v10 = @"Silent Mode";
          break;
        default:
          goto LABEL_27;
      }
    }

    goto LABEL_25;
  }

  if (a3 <= 1)
  {
    if (a3)
    {
      if (a3 != 1)
      {
        goto LABEL_27;
      }

      v11 = @"Low Power Mode";
    }

    else
    {
      v11 = @"Airplane Mode";
    }
  }

  else
  {
    if (a3 == 2)
    {
      v9 = @"Contextual Action Title: Dark Mode";
      v10 = @"Dark Mode";
LABEL_25:
      v12 = WFLocalizedStringWithKey(v9, v10);
      goto LABEL_26;
    }

    if (a3 != 3)
    {
      v7 = +[WFDevice currentDevice];
      v8 = [v7 hasCapability:@"WAPI"];

      if (v8)
      {
        v9 = @"Contextual Action Title: WLAN";
        v10 = @"WLAN";
      }

      else
      {
        v9 = @"Contextual Action Title: Wi-Fi";
        v10 = @"Wi-Fi";
      }

      goto LABEL_25;
    }

    v11 = @"Always On Display";
  }

  v12 = WFLocalizedString(v11);
LABEL_26:
  v6 = v12;
LABEL_27:
  switch(a4)
  {
    case 2uLL:
      v20 = MEMORY[0x1E696AEC0];
      v15 = WFLocalizedStringWithKey(@"Toggle (System Setting)", @"%@");
      v19 = [v20 stringWithFormat:v15, v6];
      goto LABEL_36;
    case 1uLL:
      v17 = MEMORY[0x1E696AEC0];
      v18 = WFLocalizedStringWithKey(@"Turn Off (System Setting)", @"Turn Off %@");
      v15 = [v17 stringWithFormat:v18, v6];

      if (a3 != 2)
      {
        goto LABEL_38;
      }

      v16 = @"Set to Light";
      goto LABEL_34;
    case 0uLL:
      v13 = MEMORY[0x1E696AEC0];
      v14 = WFLocalizedStringWithKey(@"Turn On (System Setting)", @"Turn On %@");
      v15 = [v13 stringWithFormat:v14, v6];

      if (a3 != 2)
      {
        goto LABEL_38;
      }

      v16 = @"Set to Dark";
LABEL_34:
      v19 = WFLocalizedString(v16);
LABEL_36:
      v21 = v19;

      v15 = v21;
      goto LABEL_38;
  }

  v15 = 0;
LABEL_38:

  return v15;
}

- (WFToggleSettingContextualAction)initWithSetting:(unint64_t)a3 operation:(unint64_t)a4 unconfigured:(BOOL)a5
{
  v5 = a5;
  v8 = 0;
  v56[2] = *MEMORY[0x1E69E9840];
  v9 = @"OnValue";
  if (a3 > 4)
  {
    if (a3 > 6)
    {
      if (a3 == 7)
      {
        v15 = WFLocalizedStringWithKey(@"Contextual Action Title: True Tone", @"True Tone");
        v14 = @"true_tone";
        v8 = @"is.workflow.actions.truetone.set";
        v18 = @"truetone";
      }

      else if (a3 == 8)
      {
        v15 = WFLocalizedStringWithKey(@"Contextual Action Title: Night Shift", @"Night Shift");
        v14 = @"night_shift";
        v8 = @"is.workflow.actions.nightshift.set";
        v18 = @"nightshift";
      }

      else
      {
        v14 = 0;
        v15 = 0;
        v16 = 0;
        if (a3 != 9)
        {
          goto LABEL_27;
        }

        v15 = WFLocalizedStringWithKey(@"Contextual Action Title: Silent Mode", @"Silent Mode");
        v8 = @"com.apple.ShortcutsActions.SetSilentModeAction";
        v17 = @"com.apple.ShortcutsActions.SetSilentModeAction";
        v9 = @"state";
        v14 = @"silent_mode";
        v18 = @"bell.slash.fill";
      }

      goto LABEL_26;
    }

    if (a3 == 5)
    {
      v15 = WFLocalizedStringWithKey(@"Contextual Action Title: Bluetooth", @"Bluetooth");
      v8 = @"is.workflow.actions.bluetooth.set";
      v18 = @"bluetooth";
LABEL_25:
      v14 = v18;
      goto LABEL_26;
    }

    v15 = WFLocalizedStringWithKey(@"Contextual Action Title: Cellular Data", @"Cellular Data");
    v14 = @"cellular_data";
    v8 = @"is.workflow.actions.cellulardata.set";
    v18 = @"antenna.radiowaves.left.and.right";
  }

  else if (a3 <= 1)
  {
    if (a3)
    {
      v14 = 0;
      v15 = 0;
      v16 = 0;
      if (a3 != 1)
      {
        goto LABEL_27;
      }

      v15 = WFLocalizedString(@"Low Power Mode");
      v14 = @"low_power_mode";
      v8 = @"is.workflow.actions.lowpowermode.set";
      v18 = @"battery.25";
    }

    else
    {
      v15 = WFLocalizedString(@"Airplane Mode");
      v14 = @"airplane_mode";
      v8 = @"is.workflow.actions.airplanemode.set";
      v18 = @"airplane";
    }
  }

  else if (a3 == 2)
  {
    v15 = WFLocalizedStringWithKey(@"Contextual Action Title: Dark Mode", @"Dark Mode");
    v14 = @"dark_mode";
    v8 = @"is.workflow.actions.appearance";
    v18 = @"appearance";
  }

  else
  {
    if (a3 != 3)
    {
      v10 = +[WFDevice currentDevice];
      v11 = [v10 hasCapability:@"WAPI"];

      if (v11)
      {
        v12 = @"Contextual Action Title: WLAN";
        v13 = @"WLAN";
      }

      else
      {
        v12 = @"Contextual Action Title: Wi-Fi";
        v13 = @"Wi-Fi";
      }

      v15 = WFLocalizedStringWithKey(v12, v13);
      v8 = @"is.workflow.actions.wifi.set";
      v18 = @"wifi";
      goto LABEL_25;
    }

    v15 = WFLocalizedString(@"Always On Display");
    v14 = @"always_on_display";
    v8 = @"is.workflow.actions.display.always-on.set";
    v18 = @"iphone.always.on.display";
  }

LABEL_26:
  v16 = [WFContextualActionIcon iconWithSystemName:v18];
LABEL_27:
  v47 = a4;
  v48 = v14;
  switch(a4)
  {
    case 2uLL:
      v19 = v5;
      v33 = MEMORY[0x1E696AEC0];
      v34 = WFLocalizedStringWithKey(@"Toggle (System Setting)", @"%@");
      v22 = [v33 stringWithFormat:v34, v15];

      v23 = WFLocalizedStringWithKey(@"Toggle (System Setting, Subtitle)", @"Toggle");
      v35 = [[WFContextualActionParameter alloc] initWithType:@"WFNumberContentItem" displayString:0 wfParameterKey:v9 wfSerializedRepresentation:&unk_1F292CD18];
      v52 = v35;
      v36 = @"toggle";
      v37 = &v52;
LABEL_39:
      v38 = [[WFContextualActionParameter alloc] initWithType:@"WFStringContentItem" displayString:0 wfParameterKey:@"operation" wfSerializedRepresentation:v36];
      v37[1] = v38;
      v31 = [MEMORY[0x1E695DEC8] arrayWithObjects:v37 count:2];

      v5 = v19;
      goto LABEL_40;
    case 1uLL:
      v19 = v5;
      v28 = MEMORY[0x1E696AEC0];
      v29 = WFLocalizedStringWithKey(@"Turn Off (System Setting)", @"Turn Off %@");
      v22 = [v28 stringWithFormat:v29, v15];

      v23 = WFLocalizedStringWithKey(@"Turn Off (System Setting, Subtitle)", @"Turn Off");
      if (a3 == 2)
      {
        v30 = WFLocalizedString(@"Set to Light");

        v22 = v30;
        v23 = [[WFContextualActionParameter alloc] initWithType:@"WFStringContentItem" displayString:0 wfParameterKey:@"operation" wfSerializedRepresentation:@"set"];
        v54[0] = v23;
        v25 = [[WFContextualActionParameter alloc] initWithType:@"WFStringContentItem" displayString:0 wfParameterKey:@"style" wfSerializedRepresentation:@"light"];
        v54[1] = v25;
        v26 = MEMORY[0x1E695DEC8];
        v27 = v54;
        goto LABEL_34;
      }

      v35 = [[WFContextualActionParameter alloc] initWithType:@"WFNumberContentItem" displayString:0 wfParameterKey:v9 wfSerializedRepresentation:&unk_1F292CD30];
      v53 = v35;
      v36 = @"set";
      v37 = &v53;
      goto LABEL_39;
    case 0uLL:
      v19 = v5;
      v20 = MEMORY[0x1E696AEC0];
      v21 = WFLocalizedStringWithKey(@"Turn On (System Setting)", @"Turn On %@");
      v22 = [v20 stringWithFormat:v21, v15];

      v23 = WFLocalizedStringWithKey(@"Turn On (System Setting, Subtitle)", @"Turn On");
      if (a3 == 2)
      {
        v24 = WFLocalizedString(@"Set to Dark");

        v22 = v24;
        v23 = [[WFContextualActionParameter alloc] initWithType:@"WFStringContentItem" displayString:0 wfParameterKey:@"operation" wfSerializedRepresentation:@"set"];
        v56[0] = v23;
        v25 = [[WFContextualActionParameter alloc] initWithType:@"WFStringContentItem" displayString:0 wfParameterKey:@"style" wfSerializedRepresentation:@"dark"];
        v56[1] = v25;
        v26 = MEMORY[0x1E695DEC8];
        v27 = v56;
LABEL_34:
        v31 = [v26 arrayWithObjects:v27 count:2];

        v32 = v22;
LABEL_43:

        v23 = v32;
        goto LABEL_44;
      }

      v35 = [[WFContextualActionParameter alloc] initWithType:@"WFNumberContentItem" displayString:0 wfParameterKey:v9 wfSerializedRepresentation:&unk_1F292CD18];
      v55 = v35;
      v36 = @"set";
      v37 = &v55;
      goto LABEL_39;
  }

  v22 = 0;
  v23 = 0;
  v31 = MEMORY[0x1E695E0F0];
LABEL_40:
  if (a3 == 3 && v5)
  {
    v32 = WFLocalizedString(@"Turn On & Off");
    goto LABEL_43;
  }

LABEL_44:
  v51[0] = @"com.apple.shortcuts.toggle-setting";
  v51[1] = v48;
  v39 = [MEMORY[0x1E695DEC8] arrayWithObjects:v51 count:2];
  v40 = [v39 componentsJoinedByString:@"."];

  v50.receiver = self;
  v50.super_class = WFToggleSettingContextualAction;
  BYTE2(v46) = 0;
  LOWORD(v46) = 0;
  v41 = [WFContextualAction initWithIdentifier:sel_initWithIdentifier_wfActionIdentifier_associatedAppBundleIdentifier_parameters_displayString_title_subtitle_icon_accessoryIcon_actionShowsUserInterface_actionHasResult_isReversible_ wfActionIdentifier:v40 associatedAppBundleIdentifier:v8 parameters:@"com.apple.Preferences" displayString:v31 title:v22 subtitle:v15 icon:v23 accessoryIcon:v16 actionShowsUserInterface:0 actionHasResult:v46 isReversible:?];
  v42 = v41;
  if (v41)
  {
    v41->_setting = a3;
    v41->_operation = v47;
    v43 = v41;
  }

  v44 = *MEMORY[0x1E69E9840];
  return v42;
}

@end