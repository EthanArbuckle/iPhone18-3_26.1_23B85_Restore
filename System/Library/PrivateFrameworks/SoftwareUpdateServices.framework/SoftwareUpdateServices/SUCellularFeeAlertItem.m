@interface SUCellularFeeAlertItem
- (SUCellularFeeAlertItem)initWithHandler:(id)a3 updateName:(id)a4 dueDate:(id)a5;
- (id)_noButton;
- (id)_yesButton;
- (id)buttons;
- (id)message;
- (id)title;
- (void)alertWasDismissed:(unint64_t)a3;
@end

@implementation SUCellularFeeAlertItem

- (SUCellularFeeAlertItem)initWithHandler:(id)a3 updateName:(id)a4 dueDate:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v15.receiver = self;
  v15.super_class = SUCellularFeeAlertItem;
  v11 = [(SUBaseAlertItem *)&v15 init];
  if (v11)
  {
    v12 = MEMORY[0x26D668B30](v8);
    handler = v11->_handler;
    v11->_handler = v12;

    objc_storeStrong(&v11->_updateName, a4);
    objc_storeStrong(&v11->_dueDate, a5);
  }

  return v11;
}

- (void)alertWasDismissed:(unint64_t)a3
{
  v6.receiver = self;
  v6.super_class = SUCellularFeeAlertItem;
  [(SUBaseAlertItem *)&v6 alertWasDismissed:?];
  if (a3 != 1)
  {
    handler = self->_handler;
    if (handler)
    {
      handler[2](handler, 0);
    }
  }
}

- (id)title
{
  v2 = [MEMORY[0x277CCA8D8] bundleWithPath:@"/System/Library/PrivateFrameworks/SoftwareUpdateServices.framework"];
  v3 = [v2 localizedStringForKey:@"MANAGED_UPDATE" value:&stru_287B45B60 table:@"SoftwareUpdateServices"];

  return v3;
}

- (id)message
{
  v3 = objc_alloc_init(MEMORY[0x277CCA968]);
  [v3 setDateStyle:1];
  [v3 setTimeStyle:1];
  v4 = [v3 stringFromDate:self->_dueDate];
  v5 = MEMORY[0x277CCACA8];
  v6 = [MEMORY[0x277CCA8D8] bundleWithPath:@"/System/Library/PrivateFrameworks/SoftwareUpdateServices.framework"];
  v7 = [v6 localizedStringForKey:@"CELLULAR_DOWNLOAD_ACCEPT_DEFINITE_FEES_FOR_MANAGED_UPDATE" value:&stru_287B45B60 table:@"SoftwareUpdateServices"];
  v8 = [v5 stringWithFormat:v7, self->_updateName, v4];

  return v8;
}

- (id)buttons
{
  v3 = [MEMORY[0x277CBEB18] array];
  v4 = [(SUCellularFeeAlertItem *)self _yesButton];
  [v3 addObject:v4];

  v5 = [(SUCellularFeeAlertItem *)self _noButton];
  [v3 addObject:v5];

  v6 = [v3 copy];

  return v6;
}

- (id)_yesButton
{
  v3 = [SUAlertButtonDefinition alloc];
  v4 = [MEMORY[0x277CCA8D8] bundleWithPath:@"/System/Library/PrivateFrameworks/SoftwareUpdateServices.framework"];
  v5 = [v4 localizedStringForKey:@"CONTINUE" value:&stru_287B45B60 table:@"SoftwareUpdateServices"];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __36__SUCellularFeeAlertItem__yesButton__block_invoke;
  v8[3] = &unk_279CAA708;
  v8[4] = self;
  v6 = [(SUAlertButtonDefinition *)v3 initWithLabel:v5 presentationStyle:0 isPreferredButton:1 handler:v8];

  return v6;
}

uint64_t __36__SUCellularFeeAlertItem__yesButton__block_invoke(uint64_t a1)
{
  v2 = SULogAlerts();
  v3 = *(a1 + 32);
  v4 = objc_opt_class();
  SULogInfoForSubsystem(v2, @"[%@] User accepted to use cellular.", v5, v6, v7, v8, v9, v10, v4);

  result = *(*(a1 + 32) + 40);
  if (result)
  {
    v12 = *(result + 16);

    return v12();
  }

  return result;
}

- (id)_noButton
{
  v3 = [SUAlertButtonDefinition alloc];
  v4 = [MEMORY[0x277CCA8D8] bundleWithPath:@"/System/Library/PrivateFrameworks/SoftwareUpdateServices.framework"];
  v5 = [v4 localizedStringForKey:@"CANCEL_BUTTON" value:&stru_287B45B60 table:@"SoftwareUpdateServices"];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __35__SUCellularFeeAlertItem__noButton__block_invoke;
  v8[3] = &unk_279CAA708;
  v8[4] = self;
  v6 = [(SUAlertButtonDefinition *)v3 initWithLabel:v5 presentationStyle:2 isPreferredButton:0 handler:v8];

  return v6;
}

uint64_t __35__SUCellularFeeAlertItem__noButton__block_invoke(uint64_t a1)
{
  v2 = SULogAlerts();
  v3 = *(a1 + 32);
  v4 = objc_opt_class();
  SULogInfoForSubsystem(v2, @"[%@] User declined to use cellular.", v5, v6, v7, v8, v9, v10, v4);

  result = *(*(a1 + 32) + 40);
  if (result)
  {
    v12 = *(result + 16);

    return v12();
  }

  return result;
}

@end