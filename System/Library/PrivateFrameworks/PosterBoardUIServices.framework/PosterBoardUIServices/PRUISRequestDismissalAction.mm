@interface PRUISRequestDismissalAction
+ (id)actionWithAnimation:(BOOL)animation;
- (BOOL)isAnimated;
- (id)keyDescriptionForSetting:(unint64_t)setting;
- (id)valueDescriptionForFlag:(int64_t)flag object:(id)object ofSetting:(unint64_t)setting;
@end

@implementation PRUISRequestDismissalAction

+ (id)actionWithAnimation:(BOOL)animation
{
  v4 = objc_alloc_init(MEMORY[0x1E698E700]);
  [v4 setFlag:BSSettingFlagForBool() forSetting:1];
  v5 = [[self alloc] initWithInfo:v4 responder:0];

  return v5;
}

- (BOOL)isAnimated
{
  info = [(PRUISRequestDismissalAction *)self info];
  [info flagForSetting:1];
  IsYes = BSSettingFlagIsYes();

  return IsYes;
}

- (id)keyDescriptionForSetting:(unint64_t)setting
{
  if (setting == 1)
  {
    return @"isAnimated";
  }

  else
  {
    return 0;
  }
}

- (id)valueDescriptionForFlag:(int64_t)flag object:(id)object ofSetting:(unint64_t)setting
{
  if (setting == 1)
  {
    v6 = BSSettingFlagDescription();
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end