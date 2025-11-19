@interface CHUISControlButtonViewModel(SBAdditions)
- (id)sb_actionHintTextWithType:()SBAdditions;
- (id)sb_secondaryTextColor;
- (void)sb_keyColor;
@end

@implementation CHUISControlButtonViewModel(SBAdditions)

- (id)sb_secondaryTextColor
{
  v2 = [a1 tint];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = [MEMORY[0x277D75348] systemBlueColor];
  }

  v5 = v4;

  if ([a1 isAnimating])
  {
    v6 = v5;
  }

  else
  {
    v6 = [MEMORY[0x277D75348] labelColor];
  }

  v7 = v6;

  return v7;
}

- (void)sb_keyColor
{
  v2 = [a1 tint];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = [MEMORY[0x277D75348] systemBlueColor];
  }

  v5 = v4;

  if (([a1 isAnimating] & 1) != 0 || objc_msgSend(a1, "isLauncher"))
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  return v6;
}

- (id)sb_actionHintTextWithType:()SBAdditions
{
  v5 = [a1 actionHint];
  v6 = v5;
  if (v5)
  {
    *a3 = 1;
    v7 = v5;
  }

  else
  {
    if ([a1 isLauncher])
    {
      *a3 = 1;
      v8 = [MEMORY[0x277CCA8D8] mainBundle];
      v9 = [v8 localizedStringForKey:@"CONTROL_OPEN" value:&stru_283094718 table:@"SpringBoard"];

      goto LABEL_7;
    }

    *a3 = 0;
    v7 = [a1 title];
  }

  v9 = v7;
LABEL_7:

  return v9;
}

@end