@interface PSUITurnOnThisLineTableCell
- (PSUITurnOnThisLineTableCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)_setTitle:(id)a3 andStatus:(id)a4;
- (void)_updateStatus:(id)a3;
- (void)refreshCellContentsWithSpecifier:(id)a3;
@end

@implementation PSUITurnOnThisLineTableCell

- (PSUITurnOnThisLineTableCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v48.receiver = self;
  v48.super_class = PSUITurnOnThisLineTableCell;
  v4 = [(PSTableCell *)&v48 initWithStyle:a3 reuseIdentifier:a4];
  v5 = v4;
  if (v4)
  {
    v47.receiver = v4;
    v47.super_class = PSUITurnOnThisLineTableCell;
    v6 = [(PSUITurnOnThisLineTableCell *)&v47 textLabel];
    [v6 removeFromSuperview];

    v46.receiver = v5;
    v46.super_class = PSUITurnOnThisLineTableCell;
    v7 = [(PSUITurnOnThisLineTableCell *)&v46 detailTextLabel];
    [v7 removeFromSuperview];

    [(PSUITurnOnThisLineTableCell *)v5 setAccessoryType:1];
    v8 = objc_alloc_init(MEMORY[0x277D756B8]);
    titleLabel = v5->_titleLabel;
    v5->_titleLabel = v8;

    v10 = *MEMORY[0x277D76918];
    v11 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76918]];
    [(UILabel *)v5->_titleLabel setFont:v11];

    [(UILabel *)v5->_titleLabel setAdjustsFontForContentSizeCategory:1];
    [(UILabel *)v5->_titleLabel setNumberOfLines:0];
    [(UILabel *)v5->_titleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    v12 = [(PSUITurnOnThisLineTableCell *)v5 contentView];
    [v12 addSubview:v5->_titleLabel];

    v13 = [(UILabel *)v5->_titleLabel centerYAnchor];
    v14 = [(PSUITurnOnThisLineTableCell *)v5 contentView];
    v15 = [v14 centerYAnchor];
    v16 = [v13 constraintEqualToAnchor:v15];
    [v16 setActive:1];

    v17 = [(UILabel *)v5->_titleLabel leadingAnchor];
    v18 = [(PSUITurnOnThisLineTableCell *)v5 contentView];
    v19 = [v18 layoutMarginsGuide];
    v20 = [v19 leadingAnchor];
    v21 = [v17 constraintEqualToAnchor:v20];
    [v21 setActive:1];

    v22 = [(UILabel *)v5->_titleLabel widthAnchor];
    v23 = [(PSUITurnOnThisLineTableCell *)v5 contentView];
    v24 = [v23 layoutMarginsGuide];
    v25 = [v24 widthAnchor];
    v26 = [v22 constraintEqualToAnchor:v25 multiplier:0.6];
    [v26 setActive:1];

    v27 = objc_alloc_init(MEMORY[0x277D756B8]);
    statusLabel = v5->_statusLabel;
    v5->_statusLabel = v27;

    v29 = [MEMORY[0x277D74300] preferredFontForTextStyle:v10];
    [(UILabel *)v5->_statusLabel setFont:v29];

    [(UILabel *)v5->_statusLabel setAdjustsFontForContentSizeCategory:1];
    [(UILabel *)v5->_statusLabel setNumberOfLines:0];
    v30 = [MEMORY[0x277D75348] systemGrayColor];
    [(UILabel *)v5->_statusLabel setTextColor:v30];

    [(UILabel *)v5->_statusLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    v31 = [(PSUITurnOnThisLineTableCell *)v5 contentView];
    [v31 addSubview:v5->_statusLabel];

    v32 = [(UILabel *)v5->_statusLabel centerYAnchor];
    v33 = [(PSUITurnOnThisLineTableCell *)v5 contentView];
    v34 = [v33 centerYAnchor];
    v35 = [v32 constraintEqualToAnchor:v34];
    [v35 setActive:1];

    v36 = [(UILabel *)v5->_statusLabel trailingAnchor];
    v37 = [(PSUITurnOnThisLineTableCell *)v5 contentView];
    v38 = [v37 layoutMarginsGuide];
    v39 = [v38 trailingAnchor];
    v40 = [v36 constraintEqualToAnchor:v39];
    [v40 setActive:1];

    LODWORD(v41) = 1148846080;
    [(UILabel *)v5->_statusLabel setContentCompressionResistancePriority:0 forAxis:v41];
    v42 = [(UILabel *)v5->_statusLabel leadingAnchor];
    v43 = [(UILabel *)v5->_titleLabel trailingAnchor];
    v44 = [v42 constraintGreaterThanOrEqualToSystemSpacingAfterAnchor:v43 multiplier:2.0];
    [v44 setActive:1];
  }

  return v5;
}

- (void)_setTitle:(id)a3 andStatus:(id)a4
{
  titleLabel = self->_titleLabel;
  v8 = a4;
  v7 = a3;
  [(UILabel *)titleLabel setHidden:0];
  [(UILabel *)self->_titleLabel setText:v7];

  [(UILabel *)self->_titleLabel setEnabled:1];
  [(UILabel *)self->_statusLabel setText:v8];
}

- (void)_updateStatus:(id)a3
{
  v4 = a3;
  v10 = v4;
  if (v4 && [v4 transferredStatus])
  {
    v5 = @"CHECKING";
  }

  else
  {
    v5 = @"ACTIVATING";
  }

  v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v7 = [v6 localizedStringForKey:@"TURN_ON_THIS_LINE" value:&stru_287733598 table:@"Gemini-Gemini"];
  v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v9 = [v8 localizedStringForKey:v5 value:&stru_287733598 table:@"Gemini-Gemini"];
  [(PSUITurnOnThisLineTableCell *)self _setTitle:v7 andStatus:v9];
}

- (void)refreshCellContentsWithSpecifier:(id)a3
{
  v8.receiver = self;
  v8.super_class = PSUITurnOnThisLineTableCell;
  v4 = a3;
  [(PSTableCell *)&v8 refreshCellContentsWithSpecifier:v4];
  v5 = [v4 propertyForKey:{*MEMORY[0x277D3FE70], v8.receiver, v8.super_class}];

  v6 = +[PSUICellularPlanManagerCache sharedInstance];
  v7 = [v6 planFromReference:v5];

  [(PSUITurnOnThisLineTableCell *)self _updateStatus:v7];
  [(PSUITurnOnThisLineTableCell *)self setNeedsLayout];
}

@end