@interface PSUICellularPlanAddOnPlanTableCell
- (void)_addButtonTapped;
- (void)_setupView:(id)a3;
- (void)prepareForReuse;
- (void)refreshCellContentsWithSpecifier:(id)a3;
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
  v3 = [(PSUICellularPlanAddOnPlanTableCell *)self contentView];
  v4 = [v3 subviews];

  v5 = [v4 countByEnumeratingWithState:&v10 objects:v15 count:16];
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
          objc_enumerationMutation(v4);
        }

        [*(*(&v10 + 1) + 8 * v8++) removeFromSuperview];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v10 objects:v15 count:16];
    }

    while (v6);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)refreshCellContentsWithSpecifier:(id)a3
{
  v7.receiver = self;
  v7.super_class = PSUICellularPlanAddOnPlanTableCell;
  v4 = a3;
  [(PSTableCell *)&v7 refreshCellContentsWithSpecifier:v4];
  v5 = [v4 userInfo];

  displayPlan = self->_displayPlan;
  self->_displayPlan = v5;

  [(PSUICellularPlanAddOnPlanTableCell *)self _setupView:self->_displayPlan];
  [(PSUICellularPlanAddOnPlanTableCell *)self layoutIfNeeded];
}

- (void)_setupView:(id)a3
{
  v4 = MEMORY[0x277D75220];
  v5 = a3;
  v6 = [v4 buttonWithType:1];
  addButton = self->_addButton;
  self->_addButton = v6;

  v8 = [(UIButton *)self->_addButton titleLabel];
  v9 = *MEMORY[0x277D76918];
  v10 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76918]];
  [v8 setFont:v10];

  v11 = self->_addButton;
  v12 = MEMORY[0x277CCACA8];
  v13 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v14 = [v13 localizedStringForKey:@"ADD_ADD_ON_PLAN" value:&stru_287733598 table:@"Cellular"];
  v15 = [v12 stringWithFormat:v14];
  [(UIButton *)v11 setTitle:v15 forState:0];

  [(UIButton *)self->_addButton addTarget:self action:sel__addButtonTapped forControlEvents:64];
  [(UIButton *)self->_addButton setTranslatesAutoresizingMaskIntoConstraints:0];
  v16 = [(PSUICellularPlanAddOnPlanTableCell *)self contentView];
  [v16 addSubview:self->_addButton];

  v17 = [(UIButton *)self->_addButton rightAnchor];
  v18 = [(PSUICellularPlanAddOnPlanTableCell *)self contentView];
  v19 = [v18 rightAnchor];
  v20 = [v17 constraintEqualToAnchor:v19];
  [v20 setActive:1];

  v21 = [(UIButton *)self->_addButton centerYAnchor];
  v22 = [(PSUICellularPlanAddOnPlanTableCell *)self contentView];
  v23 = [v22 centerYAnchor];
  v24 = [v21 constraintEqualToAnchor:v23];
  [v24 setActive:1];

  v25 = objc_alloc_init(MEMORY[0x277D756B8]);
  nameLabel = self->_nameLabel;
  self->_nameLabel = v25;

  v27 = MEMORY[0x277CCACA8];
  v28 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v29 = [v28 localizedStringForKey:@"ADD_ON_PLAN_CARRIER_%@" value:&stru_287733598 table:@"Cellular"];
  v30 = [v5 carrierName];
  v31 = [v27 stringWithFormat:v29, v30];
  [(UILabel *)self->_nameLabel setText:v31];

  v32 = [MEMORY[0x277D74300] preferredFontForTextStyle:v9];
  [(UILabel *)self->_nameLabel setFont:v32];

  [(UILabel *)self->_nameLabel setAdjustsFontForContentSizeCategory:1];
  [(UILabel *)self->_nameLabel setNumberOfLines:0];
  [(UILabel *)self->_nameLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  v33 = [(PSUICellularPlanAddOnPlanTableCell *)self contentView];
  [v33 addSubview:self->_nameLabel];

  v34 = [(UILabel *)self->_nameLabel firstBaselineAnchor];
  v35 = [(PSUICellularPlanAddOnPlanTableCell *)self contentView];
  v36 = [v35 topAnchor];
  v37 = [v34 constraintEqualToSystemSpacingBelowAnchor:v36 multiplier:1.0];
  [v37 setActive:1];

  v38 = [(UILabel *)self->_nameLabel leadingAnchor];
  v39 = [(PSUICellularPlanAddOnPlanTableCell *)self contentView];
  v40 = [v39 layoutMarginsGuide];
  v41 = [v40 leadingAnchor];
  v42 = [v38 constraintEqualToAnchor:v41];
  [v42 setActive:1];

  v43 = objc_alloc_init(MEMORY[0x277D756B8]);
  numberLabel = self->_numberLabel;
  self->_numberLabel = v43;

  v45 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D769D0]];
  [(UILabel *)self->_numberLabel setFont:v45];

  v46 = [v5 phoneNumber];

  [(UILabel *)self->_numberLabel setText:v46];
  [(UILabel *)self->_numberLabel setNumberOfLines:0];
  [(UILabel *)self->_numberLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  v47 = [MEMORY[0x277D75348] systemGrayColor];
  [(UILabel *)self->_numberLabel setTextColor:v47];

  v48 = [(PSUICellularPlanAddOnPlanTableCell *)self contentView];
  [v48 addSubview:self->_numberLabel];

  v49 = [(UILabel *)self->_numberLabel firstBaselineAnchor];
  v50 = [(UILabel *)self->_nameLabel lastBaselineAnchor];
  v51 = [v49 constraintEqualToSystemSpacingBelowAnchor:v50 multiplier:1.0];
  [v51 setActive:1];

  v52 = [(UILabel *)self->_numberLabel leadingAnchor];
  v53 = [(UILabel *)self->_nameLabel leadingAnchor];
  v54 = [v52 constraintEqualToAnchor:v53];
  [v54 setActive:1];

  v55 = [(UILabel *)self->_numberLabel trailingAnchor];
  v56 = [(PSUICellularPlanAddOnPlanTableCell *)self contentView];
  v57 = [v56 layoutMarginsGuide];
  v58 = [v57 trailingAnchor];
  v59 = [v55 constraintLessThanOrEqualToAnchor:v58];
  [v59 setActive:1];

  v63 = [(PSUICellularPlanAddOnPlanTableCell *)self contentView];
  v60 = [v63 bottomAnchor];
  v61 = [(UILabel *)self->_numberLabel lastBaselineAnchor];
  v62 = [v60 constraintEqualToSystemSpacingBelowAnchor:v61 multiplier:1.0];
  [v62 setActive:1];
}

- (void)_addButtonTapped
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = [(PSTableCell *)self specifier];
  v4 = [v3 userInfo];

  v5 = [(PSUICellularPlanAddOnPlanTableCell *)self getLogger];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v4 carrierName];
    v7 = [v4 phoneNumber];
    *buf = 138412546;
    v11 = v6;
    v12 = 2112;
    v13 = v7;
    _os_log_impl(&dword_2658DE000, v5, OS_LOG_TYPE_DEFAULT, "Remote item pressed: %@, %@", buf, 0x16u);
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