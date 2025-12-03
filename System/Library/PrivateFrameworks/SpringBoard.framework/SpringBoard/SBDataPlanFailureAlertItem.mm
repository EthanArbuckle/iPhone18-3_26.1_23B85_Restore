@interface SBDataPlanFailureAlertItem
+ (id)laterButtonTitle;
+ (id)nowButtonTitle;
- (SBDataPlanFailureAlertItem)initWithAccountURL:(id)l carrierName:(id)name newAccount:(BOOL)account;
- (void)configure:(BOOL)configure requirePasscodeForActions:(BOOL)actions;
@end

@implementation SBDataPlanFailureAlertItem

- (SBDataPlanFailureAlertItem)initWithAccountURL:(id)l carrierName:(id)name newAccount:(BOOL)account
{
  accountCopy = account;
  nameCopy = name;
  v12.receiver = self;
  v12.super_class = SBDataPlanFailureAlertItem;
  v9 = [(SBDataPlanAccountAlertItem *)&v12 initWithAccountURL:l];
  v10 = v9;
  if (v9)
  {
    [(SBDataPlanFailureAlertItem *)v9 setCarrierName:nameCopy];
    [(SBDataPlanFailureAlertItem *)v10 setNewAccount:accountCopy];
  }

  return v10;
}

- (void)configure:(BOOL)configure requirePasscodeForActions:(BOOL)actions
{
  v20.receiver = self;
  v20.super_class = SBDataPlanFailureAlertItem;
  [(SBDataPlanAccountAlertItem *)&v20 configure:configure requirePasscodeForActions:actions];
  alertController = [(SBAlertItem *)self alertController];
  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  isNewAccount = [(SBDataPlanFailureAlertItem *)self isNewAccount];
  v8 = @"UPDATE";
  if (isNewAccount)
  {
    v8 = @"ACTIVATE";
  }

  v9 = v8;
  carrierName = [(SBDataPlanFailureAlertItem *)self carrierName];
  v11 = @"CARRIER";
  if (!carrierName)
  {
    v11 = @"FALLBACK";
  }

  v12 = v11;

  v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"DATA_PLAN_FAILED_%@_%@_BODY", v9, v12];

  v14 = [mainBundle localizedStringForKey:@"DATA_PLAN_FAILED_TITLE" value:&stru_283094718 table:@"SpringBoard"];
  v15 = [mainBundle localizedStringForKey:v13 value:&stru_283094718 table:@"SpringBoard"];
  carrierName2 = [(SBDataPlanFailureAlertItem *)self carrierName];
  if (carrierName2)
  {
    v17 = MEMORY[0x277CCACA8];
    carrierName3 = [(SBDataPlanFailureAlertItem *)self carrierName];
    v19 = [v17 stringWithFormat:v15, carrierName3];
  }

  else
  {
    v19 = v15;
  }

  [alertController setTitle:v14];
  [alertController setMessage:v19];
}

+ (id)laterButtonTitle
{
  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  v3 = [mainBundle localizedStringForKey:@"DATA_PLAN_FAILED_TRY_LATER" value:&stru_283094718 table:@"SpringBoard"];

  return v3;
}

+ (id)nowButtonTitle
{
  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  v3 = [mainBundle localizedStringForKey:@"DATA_PLAN_FAILED_TRY_AGAIN" value:&stru_283094718 table:@"SpringBoard"];

  return v3;
}

@end