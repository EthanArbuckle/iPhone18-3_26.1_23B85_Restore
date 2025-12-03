@interface SBDataPlanActivationAlertItem
- (SBDataPlanActivationAlertItem)initWithAccountURL:(id)l newAccount:(BOOL)account promptToDisable:(BOOL)disable;
- (void)configure:(BOOL)configure requirePasscodeForActions:(BOOL)actions;
- (void)notNow;
@end

@implementation SBDataPlanActivationAlertItem

- (SBDataPlanActivationAlertItem)initWithAccountURL:(id)l newAccount:(BOOL)account promptToDisable:(BOOL)disable
{
  accountCopy = account;
  v10.receiver = self;
  v10.super_class = SBDataPlanActivationAlertItem;
  v7 = [(SBDataPlanAccountAlertItem *)&v10 initWithAccountURL:l];
  v8 = v7;
  if (v7)
  {
    v7->_promptToDisable = disable;
    [(SBDataPlanActivationAlertItem *)v7 setNewAccount:accountCopy];
  }

  return v8;
}

- (void)configure:(BOOL)configure requirePasscodeForActions:(BOOL)actions
{
  v12.receiver = self;
  v12.super_class = SBDataPlanActivationAlertItem;
  [(SBDataPlanAccountAlertItem *)&v12 configure:configure requirePasscodeForActions:actions];
  alertController = [(SBAlertItem *)self alertController];
  isNewAccount = [(SBDataPlanActivationAlertItem *)self isNewAccount];
  if (isNewAccount)
  {
    v7 = @"DATA_PLAN_NEW_ACCOUNT_BODY";
  }

  else
  {
    v7 = @"DATA_PLAN_ADD_EMPTY_BODY";
  }

  if (isNewAccount)
  {
    v8 = @"DATA_PLAN_NEW_ACCOUNT_TITLE";
  }

  else
  {
    v8 = @"DATA_PLAN_ADD_TITLE";
  }

  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  v10 = [mainBundle localizedStringForKey:v8 value:&stru_283094718 table:@"SpringBoard"];
  [alertController setTitle:v10];
  v11 = [mainBundle localizedStringForKey:v7 value:&stru_283094718 table:@"SpringBoard"];
  [alertController setMessage:v11];
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