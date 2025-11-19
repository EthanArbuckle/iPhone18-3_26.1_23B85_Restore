@interface SBDataPlanCompletionAlertItem
- (SBDataPlanCompletionAlertItem)initWithCarrierName:(id)a3 newAccount:(BOOL)a4;
- (void)configure:(BOOL)a3 requirePasscodeForActions:(BOOL)a4;
@end

@implementation SBDataPlanCompletionAlertItem

- (SBDataPlanCompletionAlertItem)initWithCarrierName:(id)a3 newAccount:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v10.receiver = self;
  v10.super_class = SBDataPlanCompletionAlertItem;
  v7 = [(SBAlertItem *)&v10 init];
  v8 = v7;
  if (v7)
  {
    [(SBDataPlanCompletionAlertItem *)v7 setCarrierName:v6];
    [(SBDataPlanCompletionAlertItem *)v8 setNewAccount:v4];
  }

  return v8;
}

- (void)configure:(BOOL)a3 requirePasscodeForActions:(BOOL)a4
{
  v5 = [(SBAlertItem *)self alertController:a3];
  v6 = [MEMORY[0x277CCA8D8] mainBundle];
  v7 = [(SBDataPlanCompletionAlertItem *)self isNewAccount];
  v8 = @"UPDATED";
  if (v7)
  {
    v8 = @"ACTIVATED";
  }

  v9 = v8;
  v10 = [(SBDataPlanCompletionAlertItem *)self carrierName];
  v11 = @"CARRIER";
  if (!v10)
  {
    v11 = @"FALLBACK";
  }

  v12 = v11;

  v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"DATA_PLAN_%@_TITLE", v9];
  v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"DATA_PLAN_%@_%@_BODY", v9, v12];

  v15 = [v6 localizedStringForKey:v13 value:&stru_283094718 table:@"SpringBoard"];
  v16 = [v6 localizedStringForKey:v14 value:&stru_283094718 table:@"SpringBoard"];
  v17 = [(SBDataPlanCompletionAlertItem *)self carrierName];
  if (v17)
  {
    v18 = MEMORY[0x277CCACA8];
    v19 = [(SBDataPlanCompletionAlertItem *)self carrierName];
    v20 = [v18 stringWithFormat:v16, v19];
  }

  else
  {
    v20 = v16;
  }

  [v5 setTitle:v15];
  [v5 setMessage:v20];
  v21 = MEMORY[0x277D750F8];
  v22 = [v6 localizedStringForKey:@"OK" value:&stru_283094718 table:@"SpringBoard"];
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __69__SBDataPlanCompletionAlertItem_configure_requirePasscodeForActions___block_invoke;
  v24[3] = &unk_2783A8A40;
  v24[4] = self;
  v23 = [v21 actionWithTitle:v22 style:0 handler:v24];
  [v5 addAction:v23];
}

@end