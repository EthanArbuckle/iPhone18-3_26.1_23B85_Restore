@interface PSUICellularPlanTableCell
- (PSUICellularPlanTableCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)_setBadge:(id)a3 andLabel:(id)a4 andPhoneNumber:(id)a5;
- (void)_setCenteredBadge:(id)a3 andLabel:(id)a4;
- (void)_setupView;
- (void)prepareForReuse;
- (void)refreshCellContentsWithSpecifier:(id)a3;
@end

@implementation PSUICellularPlanTableCell

- (PSUICellularPlanTableCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v19.receiver = self;
  v19.super_class = PSUICellularPlanTableCell;
  v4 = [(PSTableCell *)&v19 initWithStyle:a3 reuseIdentifier:a4];
  v5 = v4;
  if (v4)
  {
    v18.receiver = v4;
    v18.super_class = PSUICellularPlanTableCell;
    v6 = [(PSUICellularPlanTableCell *)&v18 textLabel];
    [v6 setText:@"ABC"];

    v17.receiver = v5;
    v17.super_class = PSUICellularPlanTableCell;
    v7 = [(PSUICellularPlanTableCell *)&v17 detailTextLabel];
    [v7 setText:@"XYZ"];

    v16.receiver = v5;
    v16.super_class = PSUICellularPlanTableCell;
    v8 = [(PSUICellularPlanTableCell *)&v16 textLabel];
    [v8 removeFromSuperview];

    v15.receiver = v5;
    v15.super_class = PSUICellularPlanTableCell;
    v9 = [(PSUICellularPlanTableCell *)&v15 detailTextLabel];
    [v9 removeFromSuperview];

    v14.receiver = v5;
    v14.super_class = PSUICellularPlanTableCell;
    v10 = [(PSUICellularPlanTableCell *)&v14 textLabel];
    [v10 setHidden:1];

    v13.receiver = v5;
    v13.super_class = PSUICellularPlanTableCell;
    v11 = [(PSUICellularPlanTableCell *)&v13 detailTextLabel];
    [v11 setHidden:1];

    [(PSUICellularPlanTableCell *)v5 setAccessoryType:1];
  }

  return v5;
}

- (void)_setCenteredBadge:(id)a3 andLabel:(id)a4
{
  badgeView = self->_badgeView;
  v10 = a4;
  v7 = a3;
  [(PSUIBadgeView *)badgeView setHidden:1];
  [(UILabel *)self->_nameLabel setHidden:1];
  [(UILabel *)self->_numberLabel setHidden:1];
  [(PSUIBadgeView *)self->_centeredBadgeView setHidden:0];
  [(UILabel *)self->_centeredNameLabel setHidden:0];
  [(PSUIBadgeView *)self->_badgeView setText:v7];
  [(UILabel *)self->_nameLabel setText:v10];
  v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v9 = [v8 localizedStringForKey:@"PLACEHOLDER_PHONE_NUMBER" value:&stru_287733598 table:@"Gemini-Gemini"];
  [(UILabel *)self->_numberLabel setText:v9];

  [(PSUIBadgeView *)self->_centeredBadgeView setText:v7];
  [(UILabel *)self->_centeredNameLabel setText:v10];
}

- (void)_setBadge:(id)a3 andLabel:(id)a4 andPhoneNumber:(id)a5
{
  badgeView = self->_badgeView;
  v9 = a5;
  v11 = a4;
  v10 = a3;
  [(PSUIBadgeView *)badgeView setHidden:0];
  [(UILabel *)self->_nameLabel setHidden:0];
  [(UILabel *)self->_numberLabel setHidden:0];
  [(PSUIBadgeView *)self->_centeredBadgeView setHidden:1];
  [(UILabel *)self->_centeredNameLabel setHidden:1];
  [(PSUIBadgeView *)self->_badgeView setText:v10];
  [(UILabel *)self->_nameLabel setText:v11];
  [(UILabel *)self->_numberLabel setText:v9];

  [(PSUIBadgeView *)self->_centeredBadgeView setText:v10];
  [(UILabel *)self->_centeredNameLabel setText:v11];
}

- (void)prepareForReuse
{
  v16 = *MEMORY[0x277D85DE8];
  v14.receiver = self;
  v14.super_class = PSUICellularPlanTableCell;
  [(PSTableCell *)&v14 prepareForReuse];
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = [(PSUICellularPlanTableCell *)self contentView];
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
  v4 = a3;
  v22.receiver = self;
  v22.super_class = PSUICellularPlanTableCell;
  [(PSTableCell *)&v22 refreshCellContentsWithSpecifier:v4];
  [(PSUICellularPlanTableCell *)self _setupView];
  v5 = [v4 propertyForKey:*MEMORY[0x277D3FE70]];
  v6 = +[PSUICellularPlanManagerCache sharedInstance];
  v7 = [v6 planFromReference:v5];

  v8 = [v4 propertyForKey:*MEMORY[0x277D40128]];
  v9 = +[PSUICoreTelephonySubscriberCache sharedInstance];
  v10 = [v9 shortLabel:v8];
  v11 = v10;
  v12 = &stru_287733598;
  if (v10)
  {
    v12 = v10;
  }

  v13 = v12;

  v14 = MEMORY[0x277CCACA8];
  v15 = [v7 userLabel];
  v16 = [v15 label];
  v17 = [v14 stringWithFormat:@"%@", v16];

  v18 = +[PSUICoreTelephonyCallCache sharedInstance];
  v19 = [v7 phoneNumber];
  v20 = [v18 localizedPhoneNumber:v19 context:v8];

  if ([v20 length])
  {
    [(PSUICellularPlanTableCell *)self _setBadge:v13 andLabel:v17 andPhoneNumber:v20];
  }

  else
  {
    [(PSUICellularPlanTableCell *)self _setCenteredBadge:v13 andLabel:v17];
  }

  if ([v4 hasValidGetter])
  {
    v21 = [v4 performGetter];
    if (v21)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [(UILabel *)self->_statusLabel setText:v21];
      }
    }
  }

  [(PSUICellularPlanTableCell *)self setNeedsLayout];
}

- (void)_setupView
{
  v3 = objc_alloc_init(PSUIBadgeView);
  badgeView = self->_badgeView;
  self->_badgeView = v3;

  v5 = [(PSUICellularPlanTableCell *)self contentView];
  [v5 addSubview:self->_badgeView];

  v6 = [(PSUIBadgeView *)self->_badgeView leadingAnchor];
  v7 = [(PSUICellularPlanTableCell *)self contentView];
  v8 = [v7 layoutMarginsGuide];
  v9 = [v8 leadingAnchor];
  v10 = [v6 constraintEqualToAnchor:v9];
  [v10 setActive:1];

  v11 = objc_alloc_init(MEMORY[0x277D756B8]);
  nameLabel = self->_nameLabel;
  self->_nameLabel = v11;

  v91 = *MEMORY[0x277D76918];
  v13 = [MEMORY[0x277D74300] preferredFontForTextStyle:?];
  [(UILabel *)self->_nameLabel setFont:v13];

  [(UILabel *)self->_nameLabel setNumberOfLines:0];
  [(UILabel *)self->_nameLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  v14 = [(PSUICellularPlanTableCell *)self contentView];
  [v14 addSubview:self->_nameLabel];

  v15 = [(UILabel *)self->_nameLabel topAnchor];
  v16 = [(PSUICellularPlanTableCell *)self contentView];
  v17 = [v16 layoutMarginsGuide];
  v18 = [v17 topAnchor];
  v19 = [v15 constraintEqualToAnchor:v18];
  [v19 setActive:1];

  v20 = [(UILabel *)self->_nameLabel leadingAnchor];
  v21 = [(PSUIBadgeView *)self->_badgeView trailingAnchor];
  v22 = [MEMORY[0x277D75520] defaultMetrics];
  [v22 scaledValueForValue:4.0];
  v23 = [v20 constraintEqualToAnchor:v21 constant:?];
  [v23 setActive:1];

  v24 = [(UILabel *)self->_nameLabel centerYAnchor];
  v25 = [(PSUIBadgeView *)self->_badgeView centerYAnchor];
  v26 = [v24 constraintEqualToAnchor:v25];
  [v26 setActive:1];

  v27 = objc_alloc_init(MEMORY[0x277D756B8]);
  numberLabel = self->_numberLabel;
  self->_numberLabel = v27;

  v29 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D769D0]];
  [(UILabel *)self->_numberLabel setFont:v29];

  [(UILabel *)self->_numberLabel setNumberOfLines:0];
  [(UILabel *)self->_numberLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  v30 = [MEMORY[0x277D75348] systemGrayColor];
  [(UILabel *)self->_numberLabel setTextColor:v30];

  v31 = [(PSUICellularPlanTableCell *)self contentView];
  [v31 addSubview:self->_numberLabel];

  v32 = [(UILabel *)self->_numberLabel firstBaselineAnchor];
  v33 = [(UILabel *)self->_nameLabel lastBaselineAnchor];
  v34 = [v32 constraintEqualToSystemSpacingBelowAnchor:v33 multiplier:1.0];
  [v34 setActive:1];

  v35 = [(UILabel *)self->_numberLabel leadingAnchor];
  v36 = [(PSUIBadgeView *)self->_badgeView leadingAnchor];
  v37 = [v35 constraintEqualToAnchor:v36];
  [v37 setActive:1];

  v38 = [(UILabel *)self->_numberLabel trailingAnchor];
  v39 = [(PSUICellularPlanTableCell *)self contentView];
  v40 = [v39 layoutMarginsGuide];
  v41 = [v40 trailingAnchor];
  v42 = [v38 constraintLessThanOrEqualToAnchor:v41];
  [v42 setActive:1];

  v43 = [(UILabel *)self->_numberLabel bottomAnchor];
  v44 = [(PSUICellularPlanTableCell *)self contentView];
  v45 = [v44 layoutMarginsGuide];
  v46 = [v45 bottomAnchor];
  v47 = [v43 constraintEqualToAnchor:v46];
  [v47 setActive:1];

  v48 = objc_alloc_init(PSUIBadgeView);
  centeredBadgeView = self->_centeredBadgeView;
  self->_centeredBadgeView = v48;

  v50 = [(PSUICellularPlanTableCell *)self contentView];
  [v50 addSubview:self->_centeredBadgeView];

  v51 = [(PSUIBadgeView *)self->_centeredBadgeView leadingAnchor];
  v52 = [(PSUICellularPlanTableCell *)self contentView];
  v53 = [v52 layoutMarginsGuide];
  v54 = [v53 leadingAnchor];
  v55 = [v51 constraintEqualToAnchor:v54];
  [v55 setActive:1];

  v56 = objc_alloc_init(MEMORY[0x277D756B8]);
  centeredNameLabel = self->_centeredNameLabel;
  self->_centeredNameLabel = v56;

  v58 = [MEMORY[0x277D74300] preferredFontForTextStyle:v91];
  [(UILabel *)self->_centeredNameLabel setFont:v58];

  [(UILabel *)self->_centeredNameLabel setNumberOfLines:0];
  [(UILabel *)self->_centeredNameLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  v59 = [(PSUICellularPlanTableCell *)self contentView];
  [v59 addSubview:self->_centeredNameLabel];

  v60 = [(UILabel *)self->_centeredNameLabel centerYAnchor];
  v61 = [(PSUICellularPlanTableCell *)self contentView];
  v62 = [v61 centerYAnchor];
  v63 = [v60 constraintEqualToAnchor:v62];
  [v63 setActive:1];

  v64 = [(UILabel *)self->_centeredNameLabel leadingAnchor];
  v65 = [(PSUIBadgeView *)self->_centeredBadgeView trailingAnchor];
  v66 = [MEMORY[0x277D75520] defaultMetrics];
  [v66 scaledValueForValue:4.0];
  v67 = [v64 constraintEqualToAnchor:v65 constant:?];
  [v67 setActive:1];

  v68 = [(PSUIBadgeView *)self->_centeredBadgeView centerYAnchor];
  v69 = [(UILabel *)self->_centeredNameLabel centerYAnchor];
  v70 = [v68 constraintEqualToAnchor:v69];
  [v70 setActive:1];

  v71 = objc_alloc_init(MEMORY[0x277D756B8]);
  statusLabel = self->_statusLabel;
  self->_statusLabel = v71;

  v73 = [MEMORY[0x277D74300] preferredFontForTextStyle:v91];
  [(UILabel *)self->_statusLabel setFont:v73];

  [(UILabel *)self->_statusLabel setNumberOfLines:0];
  v74 = [MEMORY[0x277D75348] systemGrayColor];
  [(UILabel *)self->_statusLabel setTextColor:v74];

  [(UILabel *)self->_statusLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  v75 = [(PSUICellularPlanTableCell *)self contentView];
  [v75 addSubview:self->_statusLabel];

  v76 = [(UILabel *)self->_statusLabel centerYAnchor];
  v77 = [(PSUICellularPlanTableCell *)self contentView];
  v78 = [v77 centerYAnchor];
  v79 = [v76 constraintEqualToAnchor:v78];
  [v79 setActive:1];

  v80 = [(UILabel *)self->_statusLabel trailingAnchor];
  v81 = [(PSUICellularPlanTableCell *)self contentView];
  v82 = [v81 layoutMarginsGuide];
  v83 = [v82 trailingAnchor];
  v84 = [v80 constraintEqualToAnchor:v83];
  [v84 setActive:1];

  LODWORD(v85) = 1148846080;
  [(UILabel *)self->_statusLabel setContentCompressionResistancePriority:0 forAxis:v85];
  v86 = [(UILabel *)self->_statusLabel leadingAnchor];
  v87 = [(UILabel *)self->_nameLabel trailingAnchor];
  v88 = [v86 constraintGreaterThanOrEqualToSystemSpacingAfterAnchor:v87 multiplier:1.0];
  [v88 setActive:1];

  v92 = [(UILabel *)self->_statusLabel leadingAnchor];
  v89 = [(UILabel *)self->_centeredNameLabel trailingAnchor];
  v90 = [v92 constraintGreaterThanOrEqualToSystemSpacingAfterAnchor:v89 multiplier:1.0];
  [v90 setActive:1];
}

@end