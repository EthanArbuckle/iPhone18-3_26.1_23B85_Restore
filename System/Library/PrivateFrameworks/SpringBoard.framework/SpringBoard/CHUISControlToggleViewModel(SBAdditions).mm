@interface CHUISControlToggleViewModel(SBAdditions)
- (id)sb_actionHintTextWithType:()SBAdditions;
- (id)sb_secondaryText;
- (id)sb_secondaryTextColor;
@end

@implementation CHUISControlToggleViewModel(SBAdditions)

- (id)sb_secondaryText
{
  subtitle = [self subtitle];
  v3 = subtitle;
  if (subtitle)
  {
    v4 = subtitle;
  }

  else
  {
    state = [self state];
    if (state)
    {
      [self onOption];
    }

    else
    {
      [self offOption];
    }
    v6 = ;
    value = [v6 value];
    v8 = value;
    if (value)
    {
      v4 = value;
    }

    else
    {
      mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
      v10 = mainBundle;
      if (state)
      {
        v11 = @"CONTROL_ON";
      }

      else
      {
        v11 = @"CONTROL_OFF";
      }

      v4 = [mainBundle localizedStringForKey:v11 value:&stru_283094718 table:@"SpringBoard"];
    }
  }

  return v4;
}

- (id)sb_secondaryTextColor
{
  state = [self state];
  onOption = [self onOption];
  tint = [onOption tint];
  v5 = tint;
  if (tint)
  {
    systemBlueColor = tint;
  }

  else
  {
    systemBlueColor = [MEMORY[0x277D75348] systemBlueColor];
  }

  v7 = systemBlueColor;

  if (state)
  {
    sbui_inactiveColor = v7;
  }

  else
  {
    sbui_inactiveColor = [MEMORY[0x277D75348] sbui_inactiveColor];
  }

  v9 = sbui_inactiveColor;

  return v9;
}

- (id)sb_actionHintTextWithType:()SBAdditions
{
  state = [self state];
  if (state)
  {
    [self offOption];
  }

  else
  {
    [self onOption];
  }
  v6 = ;
  actionHint = [v6 actionHint];
  v8 = actionHint;
  if (actionHint)
  {
    *a3 = 1;
    v9 = actionHint;
  }

  else
  {
    value = [v6 value];
    v11 = value;
    if (value)
    {
      *a3 = 0;
      v9 = value;
    }

    else
    {
      *a3 = 1;
      mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
      v13 = mainBundle;
      if (state)
      {
        v14 = @"TURN_OFF";
      }

      else
      {
        v14 = @"TURN_ON";
      }

      v9 = [mainBundle localizedStringForKey:v14 value:&stru_283094718 table:@"SpringBoard"];
    }
  }

  return v9;
}

@end