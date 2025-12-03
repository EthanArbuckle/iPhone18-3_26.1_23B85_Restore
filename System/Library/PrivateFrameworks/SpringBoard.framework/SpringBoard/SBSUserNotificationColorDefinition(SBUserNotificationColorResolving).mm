@interface SBSUserNotificationColorDefinition(SBUserNotificationColorResolving)
- (id)sb_resolvedColor;
@end

@implementation SBSUserNotificationColorDefinition(SBUserNotificationColorResolving)

- (id)sb_resolvedColor
{
  colorName = [self colorName];
  if (colorName)
  {
    v3 = [MEMORY[0x277D75348] sbui_systemColorNamed:colorName];
  }

  else
  {
    v3 = 0;
  }

  color = [self color];
  v5 = color;
  if (color)
  {
    v6 = MEMORY[0x277D75348];
    [color red];
    v8 = v7;
    [v5 green];
    v10 = v9;
    [v5 blue];
    v12 = v11;
    [v5 alpha];
    v14 = [v6 colorWithRed:v8 green:v10 blue:v12 alpha:v13];

    v3 = v14;
  }

  return v3;
}

@end