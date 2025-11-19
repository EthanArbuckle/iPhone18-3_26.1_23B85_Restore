@interface PRUISRequestDismissEntirelyAction
+ (id)actionActivatingCurrentPoster:(BOOL)a3;
- (BOOL)shouldActivateCurrentPoster;
- (id)keyDescriptionForSetting:(unint64_t)a3;
- (id)valueDescriptionForFlag:(int64_t)a3 object:(id)a4 ofSetting:(unint64_t)a5;
@end

@implementation PRUISRequestDismissEntirelyAction

+ (id)actionActivatingCurrentPoster:(BOOL)a3
{
  v4 = objc_alloc_init(MEMORY[0x1E698E700]);
  [v4 setFlag:BSSettingFlagForBool() forSetting:1];
  v5 = [[a1 alloc] initWithInfo:v4 responder:0];

  return v5;
}

- (BOOL)shouldActivateCurrentPoster
{
  v2 = [(PRUISRequestDismissEntirelyAction *)self info];
  [v2 flagForSetting:1];
  IsYes = BSSettingFlagIsYes();

  return IsYes;
}

- (id)keyDescriptionForSetting:(unint64_t)a3
{
  if (a3 == 1)
  {
    return @"shouldActivateCurrentPoster";
  }

  else
  {
    return 0;
  }
}

- (id)valueDescriptionForFlag:(int64_t)a3 object:(id)a4 ofSetting:(unint64_t)a5
{
  if (a5 == 1)
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