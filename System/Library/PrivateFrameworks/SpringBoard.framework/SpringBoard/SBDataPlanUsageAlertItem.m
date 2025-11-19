@interface SBDataPlanUsageAlertItem
- (SBDataPlanUsageAlertItem)initWithAccountURL:(id)a3 usage:(id)a4;
- (void)configure:(BOOL)a3 requirePasscodeForActions:(BOOL)a4;
@end

@implementation SBDataPlanUsageAlertItem

- (SBDataPlanUsageAlertItem)initWithAccountURL:(id)a3 usage:(id)a4
{
  v6 = a4;
  v10.receiver = self;
  v10.super_class = SBDataPlanUsageAlertItem;
  v7 = [(SBDataPlanAccountAlertItem *)&v10 initWithAccountURL:a3];
  v8 = v7;
  if (v7)
  {
    [(SBDataPlanUsageAlertItem *)v7 setRemainingPortion:v6];
  }

  return v8;
}

- (void)configure:(BOOL)a3 requirePasscodeForActions:(BOOL)a4
{
  v16.receiver = self;
  v16.super_class = SBDataPlanUsageAlertItem;
  [(SBDataPlanAccountAlertItem *)&v16 configure:a3 requirePasscodeForActions:a4];
  v5 = [(SBAlertItem *)self alertController];
  v6 = [MEMORY[0x277CCA8D8] mainBundle];
  v7 = [v6 localizedStringForKey:@"DATA_PLAN_ADD_TITLE" value:&stru_283094718 table:@"SpringBoard"];
  [v5 setTitle:v7];
  v8 = [(SBDataPlanUsageAlertItem *)self remainingPortion];
  [v8 floatValue];
  v10 = v9;

  if (v10 <= 0.01)
  {
    v15 = [v6 localizedStringForKey:@"DATA_PLAN_ADD_EMPTY_BODY" value:&stru_283094718 table:@"SpringBoard"];
  }

  else
  {
    v11 = [v6 localizedStringForKey:@"DATA_PLAN_ADD_LOW_BODY" value:&stru_283094718 table:@"SpringBoard"];
    v12 = SBApp;
    v13 = [(SBDataPlanUsageAlertItem *)self remainingPortion];
    v14 = [v12 formattedPercentStringForNumber:v13];

    v15 = [MEMORY[0x277CCACA8] stringWithFormat:v11, v14];
  }

  [v5 setMessage:v15];
}

@end