@interface PSUIPlanPendingTransferActivatingTableCell
- (PSUIPlanPendingTransferActivatingTableCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (id)_setStatusLabelText;
- (void)refreshCellContentsWithSpecifier:(id)a3;
@end

@implementation PSUIPlanPendingTransferActivatingTableCell

- (PSUIPlanPendingTransferActivatingTableCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v8.receiver = self;
  v8.super_class = PSUIPlanPendingTransferActivatingTableCell;
  v4 = [(PSUIDanglingPlanTableCell *)&v8 initWithStyle:a3 reuseIdentifier:a4];
  if (v4)
  {
    v5 = [objc_alloc(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle:100];
    spinner = v4->_spinner;
    v4->_spinner = v5;

    [(UIActivityIndicatorView *)v4->_spinner startAnimating];
    [(PSUIPlanPendingTransferActivatingTableCell *)v4 setAccessoryView:v4->_spinner];
  }

  return v4;
}

- (void)refreshCellContentsWithSpecifier:(id)a3
{
  v23.receiver = self;
  v23.super_class = PSUIPlanPendingTransferActivatingTableCell;
  v4 = a3;
  [(PSUIDanglingPlanTableCell *)&v23 refreshCellContentsWithSpecifier:v4];
  v5 = [v4 propertyForKey:*MEMORY[0x277D3FE70]];

  v6 = +[PSUICellularPlanManagerCache sharedInstance];
  v7 = [v6 planPendingTransferFromReference:v5];
  planPendingTransfer = self->_planPendingTransfer;
  self->_planPendingTransfer = v7;

  v9 = [MEMORY[0x277D75418] currentDevice];
  v10 = [v9 userInterfaceIdiom];

  v11 = self->_planPendingTransfer;
  if ((v10 & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    v12 = [(CTCellularPlanPendingTransfer *)v11 carrierName];
    v13 = [(CTCellularPlanPendingTransfer *)self->_planPendingTransfer deviceName];
    v14 = [v13 length];

    if (!v14)
    {
      v19 = 0;
      goto LABEL_6;
    }

    v15 = MEMORY[0x277CCACA8];
    v16 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v17 = [v16 localizedStringForKey:@"USED_ON_%@" value:&stru_287733598 table:@"Gemini-Gemini"];
    v18 = [(CTCellularPlanPendingTransfer *)self->_planPendingTransfer deviceName];
    v19 = [v15 stringWithFormat:v17, v18];
  }

  else
  {
    v20 = [(CTCellularPlanPendingTransfer *)v11 planLabel];
    v12 = [v20 label];

    v16 = [(CTCellularPlanPendingTransfer *)self->_planPendingTransfer phoneNumber];
    v19 = [SettingsCellularUtils formattedPhoneNumber:v16];
  }

LABEL_6:
  [(PSUIDanglingPlanTableCell *)self _setLabel:v12 andPhoneNumber:v19];
  v21 = [(PSUIPlanPendingTransferActivatingTableCell *)self _setStatusLabelText];
  v22 = [(PSUIDanglingPlanTableCell *)self statusLabel];
  [v22 setText:v21];

  [(PSUIPlanPendingTransferActivatingTableCell *)self setNeedsLayout];
}

- (id)_setStatusLabelText
{
  v2 = MEMORY[0x277CCACA8];
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"ACTIVATING" value:&stru_287733598 table:@"Gemini-Gemini"];
  v5 = [v2 stringWithFormat:v4];

  return v5;
}

@end