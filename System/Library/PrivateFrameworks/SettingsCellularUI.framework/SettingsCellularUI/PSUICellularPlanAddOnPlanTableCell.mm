@interface PSUICellularPlanAddOnPlanTableCell
- (void)_addButtonTapped;
- (void)_setupView:(id)view;
- (void)prepareForReuse;
- (void)refreshCellContentsWithSpecifier:(id)specifier;
@end

@implementation PSUICellularPlanAddOnPlanTableCell

- (void)prepareForReuse
{
  v16 = *MEMORY[0x277D85DE8];
  v14.receiver = self;
  v14.super_class = PSUICellularPlanAddOnPlanTableCell;
  [(PSTableCell *)&v14 prepareForReuse];
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  contentView = [(PSUICellularPlanAddOnPlanTableCell *)self contentView];
  subviews = [contentView subviews];

  v5 = [subviews countByEnumeratingWithState:&v10 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(subviews);
        }

        [*(*(&v10 + 1) + 8 * v8++) removeFromSuperview];
      }

      while (v6 != v8);
      v6 = [subviews countByEnumeratingWithState:&v10 objects:v15 count:16];
    }

    while (v6);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)refreshCellContentsWithSpecifier:(id)specifier
{
  v7.receiver = self;
  v7.super_class = PSUICellularPlanAddOnPlanTableCell;
  specifierCopy = specifier;
  [(PSTableCell *)&v7 refreshCellContentsWithSpecifier:specifierCopy];
  userInfo = [specifierCopy userInfo];

  displayPlan = self->_displayPlan;
  self->_displayPlan = userInfo;

  [(PSUICellularPlanAddOnPlanTableCell *)self _setupView:self->_displayPlan];
  [(PSUICellularPlanAddOnPlanTableCell *)self layoutIfNeeded];
}

- (void)_setupView:(id)view
{
  v4 = MEMORY[0x277D75220];
  viewCopy = view;
  v6 = [v4 buttonWithType:1];
  addButton = self->_addButton;
  self->_addButton = v6;

  titleLabel = [(UIButton *)self->_addButton titleLabel];
  v9 = *MEMORY[0x277D76918];
  v10 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76918]];
  [titleLabel setFont:v10];

  v11 = self->_addButton;
  v12 = MEMORY[0x277CCACA8];
  v13 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v14 = [v13 localizedStringForKey:@"ADD_ADD_ON_PLAN" value:&stru_287733598 table:@"Cellular"];
  v15 = [v12 stringWithFormat:v14];
  [(UIButton *)v11 setTitle:v15 forState:0];

  [(UIButton *)self->_addButton addTarget:self action:sel__addButtonTapped forControlEvents:64];
  [(UIButton *)self->_addButton setTranslatesAutoresizingMaskIntoConstraints:0];
  contentView = [(PSUICellularPlanAddOnPlanTableCell *)self contentView];
  [contentView addSubview:self->_addButton];

  rightAnchor = [(UIButton *)self->_addButton rightAnchor];
  contentView2 = [(PSUICellularPlanAddOnPlanTableCell *)self contentView];
  rightAnchor2 = [contentView2 rightAnchor];
  v20 = [rightAnchor constraintEqualToAnchor:rightAnchor2];
  [v20 setActive:1];

  centerYAnchor = [(UIButton *)self->_addButton centerYAnchor];
  contentView3 = [(PSUICellularPlanAddOnPlanTableCell *)self contentView];
  centerYAnchor2 = [contentView3 centerYAnchor];
  v24 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  [v24 setActive:1];

  v25 = objc_alloc_init(MEMORY[0x277D756B8]);
  nameLabel = self->_nameLabel;
  self->_nameLabel = v25;

  v27 = MEMORY[0x277CCACA8];
  v28 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v29 = [v28 localizedStringForKey:@"ADD_ON_PLAN_CARRIER_%@" value:&stru_287733598 table:@"Cellular"];
  carrierName = [viewCopy carrierName];
  v31 = [v27 stringWithFormat:v29, carrierName];
  [(UILabel *)self->_nameLabel setText:v31];

  v32 = [MEMORY[0x277D74300] preferredFontForTextStyle:v9];
  [(UILabel *)self->_nameLabel setFont:v32];

  [(UILabel *)self->_nameLabel setAdjustsFontForContentSizeCategory:1];
  [(UILabel *)self->_nameLabel setNumberOfLines:0];
  [(UILabel *)self->_nameLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  contentView4 = [(PSUICellularPlanAddOnPlanTableCell *)self contentView];
  [contentView4 addSubview:self->_nameLabel];

  firstBaselineAnchor = [(UILabel *)self->_nameLabel firstBaselineAnchor];
  contentView5 = [(PSUICellularPlanAddOnPlanTableCell *)self contentView];
  topAnchor = [contentView5 topAnchor];
  v37 = [firstBaselineAnchor constraintEqualToSystemSpacingBelowAnchor:topAnchor multiplier:1.0];
  [v37 setActive:1];

  leadingAnchor = [(UILabel *)self->_nameLabel leadingAnchor];
  contentView6 = [(PSUICellularPlanAddOnPlanTableCell *)self contentView];
  layoutMarginsGuide = [contentView6 layoutMarginsGuide];
  leadingAnchor2 = [layoutMarginsGuide leadingAnchor];
  v42 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  [v42 setActive:1];

  v43 = objc_alloc_init(MEMORY[0x277D756B8]);
  numberLabel = self->_numberLabel;
  self->_numberLabel = v43;

  v45 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D769D0]];
  [(UILabel *)self->_numberLabel setFont:v45];

  phoneNumber = [viewCopy phoneNumber];

  [(UILabel *)self->_numberLabel setText:phoneNumber];
  [(UILabel *)self->_numberLabel setNumberOfLines:0];
  [(UILabel *)self->_numberLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  systemGrayColor = [MEMORY[0x277D75348] systemGrayColor];
  [(UILabel *)self->_numberLabel setTextColor:systemGrayColor];

  contentView7 = [(PSUICellularPlanAddOnPlanTableCell *)self contentView];
  [contentView7 addSubview:self->_numberLabel];

  firstBaselineAnchor2 = [(UILabel *)self->_numberLabel firstBaselineAnchor];
  lastBaselineAnchor = [(UILabel *)self->_nameLabel lastBaselineAnchor];
  v51 = [firstBaselineAnchor2 constraintEqualToSystemSpacingBelowAnchor:lastBaselineAnchor multiplier:1.0];
  [v51 setActive:1];

  leadingAnchor3 = [(UILabel *)self->_numberLabel leadingAnchor];
  leadingAnchor4 = [(UILabel *)self->_nameLabel leadingAnchor];
  v54 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
  [v54 setActive:1];

  trailingAnchor = [(UILabel *)self->_numberLabel trailingAnchor];
  contentView8 = [(PSUICellularPlanAddOnPlanTableCell *)self contentView];
  layoutMarginsGuide2 = [contentView8 layoutMarginsGuide];
  trailingAnchor2 = [layoutMarginsGuide2 trailingAnchor];
  v59 = [trailingAnchor constraintLessThanOrEqualToAnchor:trailingAnchor2];
  [v59 setActive:1];

  contentView9 = [(PSUICellularPlanAddOnPlanTableCell *)self contentView];
  bottomAnchor = [contentView9 bottomAnchor];
  lastBaselineAnchor2 = [(UILabel *)self->_numberLabel lastBaselineAnchor];
  v62 = [bottomAnchor constraintEqualToSystemSpacingBelowAnchor:lastBaselineAnchor2 multiplier:1.0];
  [v62 setActive:1];
}

- (void)_addButtonTapped
{
  v14 = *MEMORY[0x277D85DE8];
  specifier = [(PSTableCell *)self specifier];
  userInfo = [specifier userInfo];

  getLogger = [(PSUICellularPlanAddOnPlanTableCell *)self getLogger];
  if (os_log_type_enabled(getLogger, OS_LOG_TYPE_DEFAULT))
  {
    carrierName = [userInfo carrierName];
    phoneNumber = [userInfo phoneNumber];
    *buf = 138412546;
    v11 = carrierName;
    v12 = 2112;
    v13 = phoneNumber;
    _os_log_impl(&dword_2658DE000, getLogger, OS_LOG_TYPE_DEFAULT, "Remote item pressed: %@, %@", buf, 0x16u);
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __54__PSUICellularPlanAddOnPlanTableCell__addButtonTapped__block_invoke;
  block[3] = &unk_279BA9D58;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);

  v8 = *MEMORY[0x277D85DE8];
}

void __54__PSUICellularPlanAddOnPlanTableCell__addButtonTapped__block_invoke(uint64_t a1)
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  v2 = [*(a1 + 32) specifier];
  [v3 postNotificationName:@"PSAddOnPlanTappedNotification" object:v2];
}

@end