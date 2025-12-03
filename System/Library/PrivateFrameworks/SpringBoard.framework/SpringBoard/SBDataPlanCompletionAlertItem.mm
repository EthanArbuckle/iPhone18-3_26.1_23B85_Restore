@interface SBDataPlanCompletionAlertItem
- (SBDataPlanCompletionAlertItem)initWithCarrierName:(id)name newAccount:(BOOL)account;
- (void)configure:(BOOL)configure requirePasscodeForActions:(BOOL)actions;
@end

@implementation SBDataPlanCompletionAlertItem

- (SBDataPlanCompletionAlertItem)initWithCarrierName:(id)name newAccount:(BOOL)account
{
  accountCopy = account;
  nameCopy = name;
  v10.receiver = self;
  v10.super_class = SBDataPlanCompletionAlertItem;
  v7 = [(SBAlertItem *)&v10 init];
  v8 = v7;
  if (v7)
  {
    [(SBDataPlanCompletionAlertItem *)v7 setCarrierName:nameCopy];
    [(SBDataPlanCompletionAlertItem *)v8 setNewAccount:accountCopy];
  }

  return v8;
}

- (void)configure:(BOOL)configure requirePasscodeForActions:(BOOL)actions
{
  v5 = [(SBAlertItem *)self alertController:configure];
  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  isNewAccount = [(SBDataPlanCompletionAlertItem *)self isNewAccount];
  v8 = @"UPDATED";
  if (isNewAccount)
  {
    v8 = @"ACTIVATED";
  }

  v9 = v8;
  carrierName = [(SBDataPlanCompletionAlertItem *)self carrierName];
  v11 = @"CARRIER";
  if (!carrierName)
  {
    v11 = @"FALLBACK";
  }

  v12 = v11;

  v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"DATA_PLAN_%@_TITLE", v9];
  v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"DATA_PLAN_%@_%@_BODY", v9, v12];

  v15 = [mainBundle localizedStringForKey:v13 value:&stru_283094718 table:@"SpringBoard"];
  v16 = [mainBundle localizedStringForKey:v14 value:&stru_283094718 table:@"SpringBoard"];
  carrierName2 = [(SBDataPlanCompletionAlertItem *)self carrierName];
  if (carrierName2)
  {
    v18 = MEMORY[0x277CCACA8];
    carrierName3 = [(SBDataPlanCompletionAlertItem *)self carrierName];
    v20 = [v18 stringWithFormat:v16, carrierName3];
  }

  else
  {
    v20 = v16;
  }

  [v5 setTitle:v15];
  [v5 setMessage:v20];
  v21 = MEMORY[0x277D750F8];
  v22 = [mainBundle localizedStringForKey:@"OK" value:&stru_283094718 table:@"SpringBoard"];
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __69__SBDataPlanCompletionAlertItem_configure_requirePasscodeForActions___block_invoke;
  v24[3] = &unk_2783A8A40;
  v24[4] = self;
  v23 = [v21 actionWithTitle:v22 style:0 handler:v24];
  [v5 addAction:v23];
}

@end