@interface SBReorderInfoAlert
- (SBReorderInfoAlert)init;
- (void)didDeactivateForReason:(int)reason;
@end

@implementation SBReorderInfoAlert

- (SBReorderInfoAlert)init
{
  v14.receiver = self;
  v14.super_class = SBReorderInfoAlert;
  v2 = [(SBAlertItem *)&v14 init];
  if (v2)
  {
    mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
    v4 = [mainBundle localizedStringForKey:@"REORDER_INFO_TITLE" value:&stru_283094718 table:@"SpringBoard"];
    title = v2->super.super._title;
    v2->super.super._title = v4;

    v6 = SBFEffectiveHomeButtonType();
    mainBundle2 = [MEMORY[0x277CCA8D8] mainBundle];
    v8 = mainBundle2;
    if (v6 == 2)
    {
      v9 = @"REORDER_INFO_BODY_NO_HOME_BUTTON";
      v10 = @"Late_Fall_2017_iOS_Strings";
    }

    else
    {
      v9 = @"REORDER_INFO_BODY";
      v10 = @"SpringBoard";
    }

    v11 = [mainBundle2 localizedStringForKey:v9 value:&stru_283094718 table:v10];
    body = v2->super.super._body;
    v2->super.super._body = v11;
  }

  return v2;
}

- (void)didDeactivateForReason:(int)reason
{
  v5.receiver = self;
  v5.super_class = SBReorderInfoAlert;
  [(SBAlertItem *)&v5 didDeactivateForReason:?];
  if (SBAlertItemIsUserDeactivate())
  {
    v3 = +[SBDefaults localDefaults];
    iconDefaults = [v3 iconDefaults];
    [iconDefaults setDidShowIconReorderAlert:1];
  }
}

@end