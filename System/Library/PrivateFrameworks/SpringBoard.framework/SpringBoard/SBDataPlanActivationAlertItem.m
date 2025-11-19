@interface SBDataPlanActivationAlertItem
- (SBDataPlanActivationAlertItem)initWithAccountURL:(id)a3 newAccount:(BOOL)a4 promptToDisable:(BOOL)a5;
- (void)configure:(BOOL)a3 requirePasscodeForActions:(BOOL)a4;
- (void)notNow;
@end

@implementation SBDataPlanActivationAlertItem

- (SBDataPlanActivationAlertItem)initWithAccountURL:(id)a3 newAccount:(BOOL)a4 promptToDisable:(BOOL)a5
{
  v6 = a4;
  v10.receiver = self;
  v10.super_class = SBDataPlanActivationAlertItem;
  v7 = [(SBDataPlanAccountAlertItem *)&v10 initWithAccountURL:a3];
  v8 = v7;
  if (v7)
  {
    v7->_promptToDisable = a5;
    [(SBDataPlanActivationAlertItem *)v7 setNewAccount:v6];
  }

  return v8;
}

- (void)configure:(BOOL)a3 requirePasscodeForActions:(BOOL)a4
{
  v12.receiver = self;
  v12.super_class = SBDataPlanActivationAlertItem;
  [(SBDataPlanAccountAlertItem *)&v12 configure:a3 requirePasscodeForActions:a4];
  v5 = [(SBAlertItem *)self alertController];
  v6 = [(SBDataPlanActivationAlertItem *)self isNewAccount];
  if (v6)
  {
    v7 = @"DATA_PLAN_NEW_ACCOUNT_BODY";
  }

  else
  {
    v7 = @"DATA_PLAN_ADD_EMPTY_BODY";
  }

  if (v6)
  {
    v8 = @"DATA_PLAN_NEW_ACCOUNT_TITLE";
  }

  else
  {
    v8 = @"DATA_PLAN_ADD_TITLE";
  }

  v9 = [MEMORY[0x277CCA8D8] mainBundle];
  v10 = [v9 localizedStringForKey:v8 value:&stru_283094718 table:@"SpringBoard"];
  [v5 setTitle:v10];
  v11 = [v9 localizedStringForKey:v7 value:&stru_283094718 table:@"SpringBoard"];
  [v5 setMessage:v11];
}

- (void)notNow
{
  if (self->_promptToDisable)
  {
    v4 = objc_alloc_init(SBDataPlanDisableAlertItem);
    v3 = +[SBAlertItemsController sharedInstance];
    [v3 activateAlertItem:v4];
  }
}

@end