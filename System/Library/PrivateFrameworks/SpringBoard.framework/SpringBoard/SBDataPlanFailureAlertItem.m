@interface SBDataPlanFailureAlertItem
+ (id)laterButtonTitle;
+ (id)nowButtonTitle;
- (SBDataPlanFailureAlertItem)initWithAccountURL:(id)a3 carrierName:(id)a4 newAccount:(BOOL)a5;
- (void)configure:(BOOL)a3 requirePasscodeForActions:(BOOL)a4;
@end

@implementation SBDataPlanFailureAlertItem

- (SBDataPlanFailureAlertItem)initWithAccountURL:(id)a3 carrierName:(id)a4 newAccount:(BOOL)a5
{
  v5 = a5;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = SBDataPlanFailureAlertItem;
  v9 = [(SBDataPlanAccountAlertItem *)&v12 initWithAccountURL:a3];
  v10 = v9;
  if (v9)
  {
    [(SBDataPlanFailureAlertItem *)v9 setCarrierName:v8];
    [(SBDataPlanFailureAlertItem *)v10 setNewAccount:v5];
  }

  return v10;
}

- (void)configure:(BOOL)a3 requirePasscodeForActions:(BOOL)a4
{
  v20.receiver = self;
  v20.super_class = SBDataPlanFailureAlertItem;
  [(SBDataPlanAccountAlertItem *)&v20 configure:a3 requirePasscodeForActions:a4];
  v5 = [(SBAlertItem *)self alertController];
  v6 = [MEMORY[0x277CCA8D8] mainBundle];
  v7 = [(SBDataPlanFailureAlertItem *)self isNewAccount];
  v8 = @"UPDATE";
  if (v7)
  {
    v8 = @"ACTIVATE";
  }

  v9 = v8;
  v10 = [(SBDataPlanFailureAlertItem *)self carrierName];
  v11 = @"CARRIER";
  if (!v10)
  {
    v11 = @"FALLBACK";
  }

  v12 = v11;

  v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"DATA_PLAN_FAILED_%@_%@_BODY", v9, v12];

  v14 = [v6 localizedStringForKey:@"DATA_PLAN_FAILED_TITLE" value:&stru_283094718 table:@"SpringBoard"];
  v15 = [v6 localizedStringForKey:v13 value:&stru_283094718 table:@"SpringBoard"];
  v16 = [(SBDataPlanFailureAlertItem *)self carrierName];
  if (v16)
  {
    v17 = MEMORY[0x277CCACA8];
    v18 = [(SBDataPlanFailureAlertItem *)self carrierName];
    v19 = [v17 stringWithFormat:v15, v18];
  }

  else
  {
    v19 = v15;
  }

  [v5 setTitle:v14];
  [v5 setMessage:v19];
}

+ (id)laterButtonTitle
{
  v2 = [MEMORY[0x277CCA8D8] mainBundle];
  v3 = [v2 localizedStringForKey:@"DATA_PLAN_FAILED_TRY_LATER" value:&stru_283094718 table:@"SpringBoard"];

  return v3;
}

+ (id)nowButtonTitle
{
  v2 = [MEMORY[0x277CCA8D8] mainBundle];
  v3 = [v2 localizedStringForKey:@"DATA_PLAN_FAILED_TRY_AGAIN" value:&stru_283094718 table:@"SpringBoard"];

  return v3;
}

@end