@interface WFToggleAccessibilityContextualAction
- (WFToggleAccessibilityContextualAction)initWithCoder:(id)coder;
- (WFToggleAccessibilityContextualAction)initWithSetting:(unint64_t)setting;
- (id)_staticDisplayStringForDecoding;
- (id)associatedSettingsPreference;
- (id)settingBiomeStreamIdentifier;
- (id)settingDescriptionFromSetting:(unint64_t)setting;
- (void)encodeWithCoder:(id)coder;
@end

@implementation WFToggleAccessibilityContextualAction

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = WFToggleAccessibilityContextualAction;
  coderCopy = coder;
  [(WFContextualAction *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeInteger:self->_setting forKey:{@"setting", v5.receiver, v5.super_class}];
}

- (WFToggleAccessibilityContextualAction)initWithCoder:(id)coder
{
  v4 = [coder decodeIntegerForKey:@"setting"];

  return [(WFToggleAccessibilityContextualAction *)self initWithSetting:v4];
}

- (id)_staticDisplayStringForDecoding
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = WFLocalizedStringWithKey(@"Toggle (Accessibility Setting)", @"%@");
  v5 = [(WFToggleAccessibilityContextualAction *)self settingDescriptionFromSetting:[(WFToggleAccessibilityContextualAction *)self setting]];
  v6 = [v3 stringWithFormat:v4, v5];

  return v6;
}

- (id)associatedSettingsPreference
{
  setting = [(WFToggleAccessibilityContextualAction *)self setting];
  if (setting > 9)
  {
    return 0;
  }

  else
  {
    return off_1E7B010F0[setting];
  }
}

- (id)settingBiomeStreamIdentifier
{
  setting = [(WFToggleAccessibilityContextualAction *)self setting];
  if (setting > 4)
  {
    if (setting > 6)
    {
      switch(setting)
      {
        case 7:
          v4 = WFBiomeLibrary_8552();
          accessibility = [v4 Accessibility];
          contrast = [accessibility Contrast];
          break;
        case 8:
          v4 = WFBiomeLibrary_8552();
          accessibility = [v4 Accessibility];
          contrast = [accessibility ClassicInvert];
          break;
        case 9:
          v4 = WFBiomeLibrary_8552();
          accessibility = [v4 Accessibility];
          contrast = [accessibility WhitePoint];
          break;
        default:
          goto LABEL_24;
      }

      goto LABEL_23;
    }

    if (setting == 5)
    {
      v4 = WFBiomeLibrary_8552();
      accessibility = [v4 Accessibility];
      [accessibility Zoom];
    }

    else
    {
      v4 = WFBiomeLibrary_8552();
      accessibility = [v4 Accessibility];
      [accessibility VoiceControl];
    }

    contrast = LABEL_6:;
    goto LABEL_23;
  }

  if (setting > 1)
  {
    if (setting == 2)
    {
      v4 = WFBiomeLibrary_8552();
      accessibility = [v4 Accessibility];
      contrast = [accessibility ColorFilters];
      goto LABEL_23;
    }

    if (setting == 3)
    {
      v4 = WFBiomeLibrary_8552();
      accessibility = [v4 Accessibility];
      [accessibility SmartInvert];
    }

    else
    {
      v4 = WFBiomeLibrary_8552();
      accessibility = [v4 Accessibility];
      [accessibility VoiceOver];
    }

    goto LABEL_6;
  }

  if (setting)
  {
    if (setting != 1)
    {
      goto LABEL_24;
    }

    v4 = WFBiomeLibrary_8552();
    accessibility = [v4 Accessibility];
    contrast = [accessibility ReduceTransparency];
  }

  else
  {
    v4 = WFBiomeLibrary_8552();
    accessibility = [v4 Accessibility];
    contrast = [accessibility ReduceMotion];
  }

LABEL_23:
  v7 = contrast;
  identifier = [contrast identifier];

LABEL_24:

  return identifier;
}

- (WFToggleAccessibilityContextualAction)initWithSetting:(unint64_t)setting
{
  v27[2] = *MEMORY[0x1E69E9840];
  v4 = [(WFToggleAccessibilityContextualAction *)self settingDescriptionFromSetting:?];
  v5 = [WFContextualActionIcon iconWithSystemName:@"accessibility"];
  if (setting > 9)
  {
    v6 = 0;
    v23 = 0;
  }

  else
  {
    v6 = off_1E7B01050[setting];
    v23 = off_1E7B010A0[setting];
    v7 = [WFContextualActionIcon iconWithSystemName:off_1E7B01000[setting]];

    v5 = v7;
  }

  v8 = MEMORY[0x1E696AEC0];
  v9 = WFLocalizedStringWithKey(@"Toggle (Accessibility Setting)", @"%@");
  v10 = [v8 stringWithFormat:v9, v4];

  v11 = WFLocalizedStringWithKey(@"Toggle (System Setting, Subtitle)", @"Toggle");
  v27[0] = @"com.apple.shortcuts.toggle-acessibility";
  v27[1] = v6;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:2];
  v13 = [v12 componentsJoinedByString:@"."];

  v14 = [[WFContextualActionParameter alloc] initWithType:@"WFNumberContentItem" displayString:0 wfParameterKey:@"OnValue" wfSerializedRepresentation:&unk_1F29311D0];
  v26[0] = v14;
  v15 = [[WFContextualActionParameter alloc] initWithType:@"WFStringContentItem" displayString:0 wfParameterKey:@"operation" wfSerializedRepresentation:@"toggle"];
  v26[1] = v15;
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:2];

  v25.receiver = self;
  v25.super_class = WFToggleAccessibilityContextualAction;
  BYTE2(v22) = 0;
  LOWORD(v22) = 0;
  v17 = [WFContextualAction initWithIdentifier:sel_initWithIdentifier_wfActionIdentifier_associatedAppBundleIdentifier_parameters_displayString_title_subtitle_icon_accessoryIcon_actionShowsUserInterface_actionHasResult_isReversible_ wfActionIdentifier:v13 associatedAppBundleIdentifier:v23 parameters:@"com.apple.Preferences" displayString:v16 title:v10 subtitle:v4 icon:v11 accessoryIcon:v5 actionShowsUserInterface:0 actionHasResult:v22 isReversible:?];
  v18 = v17;
  if (v17)
  {
    v17->_setting = setting;
    v19 = v17;
  }

  v20 = *MEMORY[0x1E69E9840];
  return v18;
}

- (id)settingDescriptionFromSetting:(unint64_t)setting
{
  v3 = 0;
  if (setting > 4)
  {
    if (setting <= 6)
    {
      if (setting == 5)
      {
        v4 = @"Contextual Action Title: Zoom";
        v5 = @"Zoom";
      }

      else
      {
        v4 = @"Contextual Action Title: Voice Control";
        v5 = @"Voice Control";
      }
    }

    else
    {
      switch(setting)
      {
        case 7uLL:
          v4 = @"Contextual Action Title: Increase Contrast";
          v5 = @"Increase Contrast";
          break;
        case 8uLL:
          v4 = @"Contextual Action Title: Classic Invert";
          v5 = @"Classic Invert";
          break;
        case 9uLL:
          v4 = @"Contextual Action Title: Reduce White Point";
          v5 = @"Reduce White Point";
          break;
        default:
          goto LABEL_23;
      }
    }
  }

  else if (setting <= 1)
  {
    if (setting)
    {
      if (setting != 1)
      {
        goto LABEL_23;
      }

      v4 = @"Contextual Action Title: Reduce Transparency";
      v5 = @"Reduce Transparency";
    }

    else
    {
      v4 = @"Contextual Action Title: Reduce Motion";
      v5 = @"Reduce Motion";
    }
  }

  else if (setting == 2)
  {
    v4 = @"Contextual Action Title: Color Filters";
    v5 = @"Color Filters";
  }

  else if (setting == 3)
  {
    v4 = @"Contextual Action Title: Smart Invert";
    v5 = @"Smart Invert";
  }

  else
  {
    v4 = @"Contextual Action Title: VoiceOver";
    v5 = @"VoiceOver";
  }

  v3 = WFLocalizedStringWithKey(v4, v5);
LABEL_23:

  return v3;
}

@end