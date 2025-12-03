@interface PSUITurnOnThisLineTableCell
- (PSUITurnOnThisLineTableCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)_setTitle:(id)title andStatus:(id)status;
- (void)_updateStatus:(id)status;
- (void)refreshCellContentsWithSpecifier:(id)specifier;
@end

@implementation PSUITurnOnThisLineTableCell

- (PSUITurnOnThisLineTableCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v48.receiver = self;
  v48.super_class = PSUITurnOnThisLineTableCell;
  v4 = [(PSTableCell *)&v48 initWithStyle:style reuseIdentifier:identifier];
  v5 = v4;
  if (v4)
  {
    v47.receiver = v4;
    v47.super_class = PSUITurnOnThisLineTableCell;
    textLabel = [(PSUITurnOnThisLineTableCell *)&v47 textLabel];
    [textLabel removeFromSuperview];

    v46.receiver = v5;
    v46.super_class = PSUITurnOnThisLineTableCell;
    detailTextLabel = [(PSUITurnOnThisLineTableCell *)&v46 detailTextLabel];
    [detailTextLabel removeFromSuperview];

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
    contentView = [(PSUITurnOnThisLineTableCell *)v5 contentView];
    [contentView addSubview:v5->_titleLabel];

    centerYAnchor = [(UILabel *)v5->_titleLabel centerYAnchor];
    contentView2 = [(PSUITurnOnThisLineTableCell *)v5 contentView];
    centerYAnchor2 = [contentView2 centerYAnchor];
    v16 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    [v16 setActive:1];

    leadingAnchor = [(UILabel *)v5->_titleLabel leadingAnchor];
    contentView3 = [(PSUITurnOnThisLineTableCell *)v5 contentView];
    layoutMarginsGuide = [contentView3 layoutMarginsGuide];
    leadingAnchor2 = [layoutMarginsGuide leadingAnchor];
    v21 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    [v21 setActive:1];

    widthAnchor = [(UILabel *)v5->_titleLabel widthAnchor];
    contentView4 = [(PSUITurnOnThisLineTableCell *)v5 contentView];
    layoutMarginsGuide2 = [contentView4 layoutMarginsGuide];
    widthAnchor2 = [layoutMarginsGuide2 widthAnchor];
    v26 = [widthAnchor constraintEqualToAnchor:widthAnchor2 multiplier:0.6];
    [v26 setActive:1];

    v27 = objc_alloc_init(MEMORY[0x277D756B8]);
    statusLabel = v5->_statusLabel;
    v5->_statusLabel = v27;

    v29 = [MEMORY[0x277D74300] preferredFontForTextStyle:v10];
    [(UILabel *)v5->_statusLabel setFont:v29];

    [(UILabel *)v5->_statusLabel setAdjustsFontForContentSizeCategory:1];
    [(UILabel *)v5->_statusLabel setNumberOfLines:0];
    systemGrayColor = [MEMORY[0x277D75348] systemGrayColor];
    [(UILabel *)v5->_statusLabel setTextColor:systemGrayColor];

    [(UILabel *)v5->_statusLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    contentView5 = [(PSUITurnOnThisLineTableCell *)v5 contentView];
    [contentView5 addSubview:v5->_statusLabel];

    centerYAnchor3 = [(UILabel *)v5->_statusLabel centerYAnchor];
    contentView6 = [(PSUITurnOnThisLineTableCell *)v5 contentView];
    centerYAnchor4 = [contentView6 centerYAnchor];
    v35 = [centerYAnchor3 constraintEqualToAnchor:centerYAnchor4];
    [v35 setActive:1];

    trailingAnchor = [(UILabel *)v5->_statusLabel trailingAnchor];
    contentView7 = [(PSUITurnOnThisLineTableCell *)v5 contentView];
    layoutMarginsGuide3 = [contentView7 layoutMarginsGuide];
    trailingAnchor2 = [layoutMarginsGuide3 trailingAnchor];
    v40 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    [v40 setActive:1];

    LODWORD(v41) = 1148846080;
    [(UILabel *)v5->_statusLabel setContentCompressionResistancePriority:0 forAxis:v41];
    leadingAnchor3 = [(UILabel *)v5->_statusLabel leadingAnchor];
    trailingAnchor3 = [(UILabel *)v5->_titleLabel trailingAnchor];
    v44 = [leadingAnchor3 constraintGreaterThanOrEqualToSystemSpacingAfterAnchor:trailingAnchor3 multiplier:2.0];
    [v44 setActive:1];
  }

  return v5;
}

- (void)_setTitle:(id)title andStatus:(id)status
{
  titleLabel = self->_titleLabel;
  statusCopy = status;
  titleCopy = title;
  [(UILabel *)titleLabel setHidden:0];
  [(UILabel *)self->_titleLabel setText:titleCopy];

  [(UILabel *)self->_titleLabel setEnabled:1];
  [(UILabel *)self->_statusLabel setText:statusCopy];
}

- (void)_updateStatus:(id)status
{
  statusCopy = status;
  v10 = statusCopy;
  if (statusCopy && [statusCopy transferredStatus])
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

- (void)refreshCellContentsWithSpecifier:(id)specifier
{
  v8.receiver = self;
  v8.super_class = PSUITurnOnThisLineTableCell;
  specifierCopy = specifier;
  [(PSTableCell *)&v8 refreshCellContentsWithSpecifier:specifierCopy];
  v5 = [specifierCopy propertyForKey:{*MEMORY[0x277D3FE70], v8.receiver, v8.super_class}];

  v6 = +[PSUICellularPlanManagerCache sharedInstance];
  v7 = [v6 planFromReference:v5];

  [(PSUITurnOnThisLineTableCell *)self _updateStatus:v7];
  [(PSUITurnOnThisLineTableCell *)self setNeedsLayout];
}

@end