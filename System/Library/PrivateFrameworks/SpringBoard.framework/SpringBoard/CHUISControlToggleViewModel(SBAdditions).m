@interface CHUISControlToggleViewModel(SBAdditions)
- (id)sb_actionHintTextWithType:()SBAdditions;
- (id)sb_secondaryText;
- (id)sb_secondaryTextColor;
@end

@implementation CHUISControlToggleViewModel(SBAdditions)

- (id)sb_secondaryText
{
  v2 = [a1 subtitle];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v5 = [a1 state];
    if (v5)
    {
      [a1 onOption];
    }

    else
    {
      [a1 offOption];
    }
    v6 = ;
    v7 = [v6 value];
    v8 = v7;
    if (v7)
    {
      v4 = v7;
    }

    else
    {
      v9 = [MEMORY[0x277CCA8D8] mainBundle];
      v10 = v9;
      if (v5)
      {
        v11 = @"CONTROL_ON";
      }

      else
      {
        v11 = @"CONTROL_OFF";
      }

      v4 = [v9 localizedStringForKey:v11 value:&stru_283094718 table:@"SpringBoard"];
    }
  }

  return v4;
}

- (id)sb_secondaryTextColor
{
  v2 = [a1 state];
  v3 = [a1 onOption];
  v4 = [v3 tint];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = [MEMORY[0x277D75348] systemBlueColor];
  }

  v7 = v6;

  if (v2)
  {
    v8 = v7;
  }

  else
  {
    v8 = [MEMORY[0x277D75348] sbui_inactiveColor];
  }

  v9 = v8;

  return v9;
}

- (id)sb_actionHintTextWithType:()SBAdditions
{
  v5 = [a1 state];
  if (v5)
  {
    [a1 offOption];
  }

  else
  {
    [a1 onOption];
  }
  v6 = ;
  v7 = [v6 actionHint];
  v8 = v7;
  if (v7)
  {
    *a3 = 1;
    v9 = v7;
  }

  else
  {
    v10 = [v6 value];
    v11 = v10;
    if (v10)
    {
      *a3 = 0;
      v9 = v10;
    }

    else
    {
      *a3 = 1;
      v12 = [MEMORY[0x277CCA8D8] mainBundle];
      v13 = v12;
      if (v5)
      {
        v14 = @"TURN_OFF";
      }

      else
      {
        v14 = @"TURN_ON";
      }

      v9 = [v12 localizedStringForKey:v14 value:&stru_283094718 table:@"SpringBoard"];
    }
  }

  return v9;
}

@end