@interface PSUIPlanPendingTransferTableCell
- (PSUIPlanPendingTransferTableCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)refreshCellContentsWithSpecifier:(id)a3;
@end

@implementation PSUIPlanPendingTransferTableCell

- (PSUIPlanPendingTransferTableCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v30.receiver = self;
  v30.super_class = PSUIPlanPendingTransferTableCell;
  v4 = [(PSUIDanglingPlanTableCell *)&v30 initWithStyle:a3 reuseIdentifier:a4];
  if (v4)
  {
    v5 = [MEMORY[0x277D755B8] systemImageNamed:@"exclamationmark.circle.fill"];
    v6 = [MEMORY[0x277D755D0] configurationWithTextStyle:*MEMORY[0x277D76918] scale:3];
    v7 = [objc_alloc(MEMORY[0x277D755E8]) initWithImage:v5];
    view = v4->_view;
    v4->_view = v7;

    [(UIImageView *)v4->_view setPreferredSymbolConfiguration:v6];
    v9 = v4->_view;
    v10 = [MEMORY[0x277D75348] systemRedColor];
    [(UIImageView *)v9 setTintColor:v10];

    [(UIImageView *)v4->_view setTranslatesAutoresizingMaskIntoConstraints:0];
    v11 = [(PSUIPlanPendingTransferTableCell *)v4 contentView];
    [v11 addSubview:v4->_view];

    v12 = [(UIImageView *)v4->_view centerYAnchor];
    v13 = [(PSUIPlanPendingTransferTableCell *)v4 contentView];
    v14 = [v13 layoutMarginsGuide];
    v15 = [v14 centerYAnchor];
    v16 = [v12 constraintEqualToAnchor:v15];
    [v16 setActive:1];

    v17 = [(UIImageView *)v4->_view trailingAnchor];
    v18 = [(PSUIPlanPendingTransferTableCell *)v4 contentView];
    v19 = [v18 layoutMarginsGuide];
    v20 = [v19 trailingAnchor];
    v21 = [v17 constraintEqualToAnchor:v20];
    [v21 setActive:1];

    LODWORD(v22) = 1148846080;
    [(UIImageView *)v4->_view setContentCompressionResistancePriority:0 forAxis:v22];
    LODWORD(v23) = 1148846080;
    [(UIImageView *)v4->_view setContentHuggingPriority:0 forAxis:v23];
    v24 = [(UIImageView *)v4->_view leadingAnchor];
    v25 = [(PSUIDanglingPlanTableCell *)v4 nameLabel];
    v26 = [v25 trailingAnchor];
    v27 = [v24 constraintEqualToAnchor:v26];
    [v27 setActive:1];

    v28 = [(PSUIDanglingPlanTableCell *)v4 statusLabel];
    [v28 removeFromSuperview];
  }

  return v4;
}

- (void)refreshCellContentsWithSpecifier:(id)a3
{
  v4 = a3;
  v26.receiver = self;
  v26.super_class = PSUIPlanPendingTransferTableCell;
  [(PSUIDanglingPlanTableCell *)&v26 refreshCellContentsWithSpecifier:v4];
  v5 = [v4 propertyForKey:*MEMORY[0x277D3FE70]];
  v6 = +[PSUICellularPlanManagerCache sharedInstance];
  v7 = [v6 planPendingTransferFromReference:v5];
  planPendingTransfer = self->_planPendingTransfer;
  self->_planPendingTransfer = v7;

  v9 = [MEMORY[0x277D75418] currentDevice];
  v10 = [v9 userInterfaceIdiom];

  if ((v10 & 0xFFFFFFFFFFFFFFFBLL) != 1)
  {
    v19 = MEMORY[0x277CCACA8];
    v20 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v21 = [v20 localizedStringForKey:@"USED_AS_%@" value:&stru_287733598 table:@"Gemini-Gemini"];
    v22 = [(CTCellularPlanPendingTransfer *)self->_planPendingTransfer planLabel];
    v23 = [v22 label];
    v11 = [v19 stringWithFormat:v21, v23];

    v15 = [(CTCellularPlanPendingTransfer *)self->_planPendingTransfer phoneNumber];
    v18 = [SettingsCellularUtils formattedPhoneNumber:v15];
    goto LABEL_5;
  }

  v11 = [(CTCellularPlanPendingTransfer *)self->_planPendingTransfer carrierName];
  v12 = [(CTCellularPlanPendingTransfer *)self->_planPendingTransfer deviceName];
  v13 = [v12 length];

  if (v13)
  {
    v14 = MEMORY[0x277CCACA8];
    v15 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v16 = [v15 localizedStringForKey:@"USED_ON_%@" value:&stru_287733598 table:@"Gemini-Gemini"];
    v17 = [(CTCellularPlanPendingTransfer *)self->_planPendingTransfer deviceName];
    v18 = [v14 stringWithFormat:v16, v17];

LABEL_5:
    goto LABEL_6;
  }

  v18 = 0;
LABEL_6:
  [v4 setProperty:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277D3FD80]];
  if ([v4 hasValidGetter])
  {
    v24 = [v4 performGetter];
    if (v24)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v25 = [(PSUIDanglingPlanTableCell *)self statusLabel];
        [v25 setText:v24];
      }
    }
  }

  [(PSUIDanglingPlanTableCell *)self _setLabel:v11 andPhoneNumber:v18];
  [(PSUIPlanPendingTransferTableCell *)self setNeedsLayout];
}

@end