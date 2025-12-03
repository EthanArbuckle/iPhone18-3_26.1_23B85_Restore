@interface CHUISControlButtonViewModel(SBAdditions)
- (id)sb_actionHintTextWithType:()SBAdditions;
- (id)sb_secondaryTextColor;
- (void)sb_keyColor;
@end

@implementation CHUISControlButtonViewModel(SBAdditions)

- (id)sb_secondaryTextColor
{
  tint = [self tint];
  v3 = tint;
  if (tint)
  {
    systemBlueColor = tint;
  }

  else
  {
    systemBlueColor = [MEMORY[0x277D75348] systemBlueColor];
  }

  v5 = systemBlueColor;

  if ([self isAnimating])
  {
    labelColor = v5;
  }

  else
  {
    labelColor = [MEMORY[0x277D75348] labelColor];
  }

  v7 = labelColor;

  return v7;
}

- (void)sb_keyColor
{
  tint = [self tint];
  v3 = tint;
  if (tint)
  {
    systemBlueColor = tint;
  }

  else
  {
    systemBlueColor = [MEMORY[0x277D75348] systemBlueColor];
  }

  v5 = systemBlueColor;

  if (([self isAnimating] & 1) != 0 || objc_msgSend(self, "isLauncher"))
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
  actionHint = [self actionHint];
  v6 = actionHint;
  if (actionHint)
  {
    *a3 = 1;
    title = actionHint;
  }

  else
  {
    if ([self isLauncher])
    {
      *a3 = 1;
      mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
      v9 = [mainBundle localizedStringForKey:@"CONTROL_OPEN" value:&stru_283094718 table:@"SpringBoard"];

      goto LABEL_7;
    }

    *a3 = 0;
    title = [self title];
  }

  v9 = title;
LABEL_7:

  return v9;
}

@end