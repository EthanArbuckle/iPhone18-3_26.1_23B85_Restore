@interface SBDataPlanUsageAlertItem
- (SBDataPlanUsageAlertItem)initWithAccountURL:(id)l usage:(id)usage;
- (void)configure:(BOOL)configure requirePasscodeForActions:(BOOL)actions;
@end

@implementation SBDataPlanUsageAlertItem

- (SBDataPlanUsageAlertItem)initWithAccountURL:(id)l usage:(id)usage
{
  usageCopy = usage;
  v10.receiver = self;
  v10.super_class = SBDataPlanUsageAlertItem;
  v7 = [(SBDataPlanAccountAlertItem *)&v10 initWithAccountURL:l];
  v8 = v7;
  if (v7)
  {
    [(SBDataPlanUsageAlertItem *)v7 setRemainingPortion:usageCopy];
  }

  return v8;
}

- (void)configure:(BOOL)configure requirePasscodeForActions:(BOOL)actions
{
  v16.receiver = self;
  v16.super_class = SBDataPlanUsageAlertItem;
  [(SBDataPlanAccountAlertItem *)&v16 configure:configure requirePasscodeForActions:actions];
  alertController = [(SBAlertItem *)self alertController];
  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  v7 = [mainBundle localizedStringForKey:@"DATA_PLAN_ADD_TITLE" value:&stru_283094718 table:@"SpringBoard"];
  [alertController setTitle:v7];
  remainingPortion = [(SBDataPlanUsageAlertItem *)self remainingPortion];
  [remainingPortion floatValue];
  v10 = v9;

  if (v10 <= 0.01)
  {
    v15 = [mainBundle localizedStringForKey:@"DATA_PLAN_ADD_EMPTY_BODY" value:&stru_283094718 table:@"SpringBoard"];
  }

  else
  {
    v11 = [mainBundle localizedStringForKey:@"DATA_PLAN_ADD_LOW_BODY" value:&stru_283094718 table:@"SpringBoard"];
    v12 = SBApp;
    remainingPortion2 = [(SBDataPlanUsageAlertItem *)self remainingPortion];
    v14 = [v12 formattedPercentStringForNumber:remainingPortion2];

    v15 = [MEMORY[0x277CCACA8] stringWithFormat:v11, v14];
  }

  [alertController setMessage:v15];
}

@end