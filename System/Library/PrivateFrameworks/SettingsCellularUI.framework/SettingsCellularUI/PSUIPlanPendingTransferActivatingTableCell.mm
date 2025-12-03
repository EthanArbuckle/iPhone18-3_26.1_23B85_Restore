@interface PSUIPlanPendingTransferActivatingTableCell
- (PSUIPlanPendingTransferActivatingTableCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (id)_setStatusLabelText;
- (void)refreshCellContentsWithSpecifier:(id)specifier;
@end

@implementation PSUIPlanPendingTransferActivatingTableCell

- (PSUIPlanPendingTransferActivatingTableCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v8.receiver = self;
  v8.super_class = PSUIPlanPendingTransferActivatingTableCell;
  v4 = [(PSUIDanglingPlanTableCell *)&v8 initWithStyle:style reuseIdentifier:identifier];
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

- (void)refreshCellContentsWithSpecifier:(id)specifier
{
  v23.receiver = self;
  v23.super_class = PSUIPlanPendingTransferActivatingTableCell;
  specifierCopy = specifier;
  [(PSUIDanglingPlanTableCell *)&v23 refreshCellContentsWithSpecifier:specifierCopy];
  v5 = [specifierCopy propertyForKey:*MEMORY[0x277D3FE70]];

  v6 = +[PSUICellularPlanManagerCache sharedInstance];
  v7 = [v6 planPendingTransferFromReference:v5];
  planPendingTransfer = self->_planPendingTransfer;
  self->_planPendingTransfer = v7;

  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  v11 = self->_planPendingTransfer;
  if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    carrierName = [(CTCellularPlanPendingTransfer *)v11 carrierName];
    deviceName = [(CTCellularPlanPendingTransfer *)self->_planPendingTransfer deviceName];
    v14 = [deviceName length];

    if (!v14)
    {
      v19 = 0;
      goto LABEL_6;
    }

    v15 = MEMORY[0x277CCACA8];
    phoneNumber = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v17 = [phoneNumber localizedStringForKey:@"USED_ON_%@" value:&stru_287733598 table:@"Gemini-Gemini"];
    deviceName2 = [(CTCellularPlanPendingTransfer *)self->_planPendingTransfer deviceName];
    v19 = [v15 stringWithFormat:v17, deviceName2];
  }

  else
  {
    planLabel = [(CTCellularPlanPendingTransfer *)v11 planLabel];
    carrierName = [planLabel label];

    phoneNumber = [(CTCellularPlanPendingTransfer *)self->_planPendingTransfer phoneNumber];
    v19 = [SettingsCellularUtils formattedPhoneNumber:phoneNumber];
  }

LABEL_6:
  [(PSUIDanglingPlanTableCell *)self _setLabel:carrierName andPhoneNumber:v19];
  _setStatusLabelText = [(PSUIPlanPendingTransferActivatingTableCell *)self _setStatusLabelText];
  statusLabel = [(PSUIDanglingPlanTableCell *)self statusLabel];
  [statusLabel setText:_setStatusLabelText];

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