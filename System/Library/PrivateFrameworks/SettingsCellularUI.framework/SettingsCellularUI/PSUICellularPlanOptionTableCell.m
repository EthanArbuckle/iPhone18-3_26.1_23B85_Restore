@interface PSUICellularPlanOptionTableCell
- (PSUICellularPlanOptionTableCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)_setBadge:(id)a3 andLabel:(id)a4 andPhoneNumber:(id)a5;
- (void)_setCenteredBadge:(id)a3 andLabel:(id)a4;
- (void)_setCenteredText:(id)a3;
- (void)refreshCellContentsWithSpecifier:(id)a3;
@end

@implementation PSUICellularPlanOptionTableCell

- (PSUICellularPlanOptionTableCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v96.receiver = self;
  v96.super_class = PSUICellularPlanOptionTableCell;
  v4 = [(PSTableCell *)&v96 initWithStyle:a3 reuseIdentifier:a4];
  v5 = v4;
  if (v4)
  {
    v95.receiver = v4;
    v95.super_class = PSUICellularPlanOptionTableCell;
    v6 = [(PSUICellularPlanOptionTableCell *)&v95 textLabel];
    [v6 setText:@"ABC"];

    v94.receiver = v5;
    v94.super_class = PSUICellularPlanOptionTableCell;
    v7 = [(PSUICellularPlanOptionTableCell *)&v94 detailTextLabel];
    [v7 setText:@"XYZ"];

    v93.receiver = v5;
    v93.super_class = PSUICellularPlanOptionTableCell;
    v8 = [(PSUICellularPlanOptionTableCell *)&v93 textLabel];
    [v8 removeFromSuperview];

    v92.receiver = v5;
    v92.super_class = PSUICellularPlanOptionTableCell;
    v9 = [(PSUICellularPlanOptionTableCell *)&v92 detailTextLabel];
    [v9 removeFromSuperview];

    v91.receiver = v5;
    v91.super_class = PSUICellularPlanOptionTableCell;
    v10 = [(PSUICellularPlanOptionTableCell *)&v91 textLabel];
    [v10 setHidden:1];

    v90.receiver = v5;
    v90.super_class = PSUICellularPlanOptionTableCell;
    v11 = [(PSUICellularPlanOptionTableCell *)&v90 detailTextLabel];
    [v11 setHidden:1];

    v12 = objc_alloc_init(PSUIBadgeView);
    badgeView = v5->_badgeView;
    v5->_badgeView = v12;

    v14 = [(PSUICellularPlanOptionTableCell *)v5 contentView];
    [v14 addSubview:v5->_badgeView];

    v15 = [(PSUIBadgeView *)v5->_badgeView leadingAnchor];
    v16 = [(PSUICellularPlanOptionTableCell *)v5 contentView];
    v17 = [v16 layoutMarginsGuide];
    v18 = [v17 leadingAnchor];
    v19 = [v15 constraintEqualToAnchor:v18];
    [v19 setActive:1];

    v20 = objc_alloc_init(MEMORY[0x277D756B8]);
    nameLabel = v5->_nameLabel;
    v5->_nameLabel = v20;

    v89 = *MEMORY[0x277D76918];
    v22 = [MEMORY[0x277D74300] preferredFontForTextStyle:?];
    [(UILabel *)v5->_nameLabel setFont:v22];

    [(UILabel *)v5->_nameLabel setNumberOfLines:0];
    [(UILabel *)v5->_nameLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    v23 = [(PSUICellularPlanOptionTableCell *)v5 contentView];
    [v23 addSubview:v5->_nameLabel];

    v24 = [(UILabel *)v5->_nameLabel firstBaselineAnchor];
    v25 = [(PSUICellularPlanOptionTableCell *)v5 contentView];
    v26 = [v25 topAnchor];
    v27 = [v24 constraintEqualToSystemSpacingBelowAnchor:v26 multiplier:1.0];
    [v27 setActive:1];

    v28 = [(UILabel *)v5->_nameLabel leadingAnchor];
    v29 = [(PSUIBadgeView *)v5->_badgeView trailingAnchor];
    v30 = [MEMORY[0x277D75520] defaultMetrics];
    [v30 scaledValueForValue:4.0];
    v31 = [v28 constraintEqualToAnchor:v29 constant:?];
    [v31 setActive:1];

    v32 = [(PSUIBadgeView *)v5->_badgeView centerYAnchor];
    v33 = [(UILabel *)v5->_nameLabel centerYAnchor];
    v34 = [v32 constraintEqualToAnchor:v33];
    [v34 setActive:1];

    v35 = [(UILabel *)v5->_nameLabel trailingAnchor];
    v36 = [(PSUICellularPlanOptionTableCell *)v5 contentView];
    v37 = [v36 layoutMarginsGuide];
    v38 = [v37 trailingAnchor];
    v39 = [v35 constraintLessThanOrEqualToAnchor:v38];
    [v39 setActive:1];

    v40 = objc_alloc_init(MEMORY[0x277D756B8]);
    numberLabel = v5->_numberLabel;
    v5->_numberLabel = v40;

    v42 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D769D0]];
    [(UILabel *)v5->_numberLabel setFont:v42];

    [(UILabel *)v5->_numberLabel setNumberOfLines:0];
    [(UILabel *)v5->_numberLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    v43 = [MEMORY[0x277D75348] systemGrayColor];
    [(UILabel *)v5->_numberLabel setTextColor:v43];

    v44 = [(PSUICellularPlanOptionTableCell *)v5 contentView];
    [v44 addSubview:v5->_numberLabel];

    v45 = [(UILabel *)v5->_numberLabel firstBaselineAnchor];
    v46 = [(UILabel *)v5->_nameLabel lastBaselineAnchor];
    v47 = [v45 constraintEqualToSystemSpacingBelowAnchor:v46 multiplier:1.0];
    [v47 setActive:1];

    v48 = [(UILabel *)v5->_numberLabel leadingAnchor];
    v49 = [(PSUIBadgeView *)v5->_badgeView leadingAnchor];
    v50 = [v48 constraintEqualToAnchor:v49];
    [v50 setActive:1];

    v51 = [(UILabel *)v5->_numberLabel trailingAnchor];
    v52 = [(PSUICellularPlanOptionTableCell *)v5 contentView];
    v53 = [v52 layoutMarginsGuide];
    v54 = [v53 trailingAnchor];
    v55 = [v51 constraintLessThanOrEqualToAnchor:v54];
    [v55 setActive:1];

    v56 = [(PSUICellularPlanOptionTableCell *)v5 contentView];
    v57 = [v56 bottomAnchor];
    v58 = [(UILabel *)v5->_numberLabel lastBaselineAnchor];
    v59 = [v57 constraintEqualToSystemSpacingBelowAnchor:v58 multiplier:1.0];
    [v59 setActive:1];

    v60 = objc_alloc_init(PSUIBadgeView);
    centeredBadgeView = v5->_centeredBadgeView;
    v5->_centeredBadgeView = v60;

    v62 = [(PSUICellularPlanOptionTableCell *)v5 contentView];
    [v62 addSubview:v5->_centeredBadgeView];

    v63 = [(PSUIBadgeView *)v5->_centeredBadgeView leadingAnchor];
    v64 = [(PSUICellularPlanOptionTableCell *)v5 contentView];
    v65 = [v64 layoutMarginsGuide];
    v66 = [v65 leadingAnchor];
    v67 = [v63 constraintEqualToAnchor:v66];
    [v67 setActive:1];

    v68 = objc_alloc_init(MEMORY[0x277D756B8]);
    centeredNameLabel = v5->_centeredNameLabel;
    v5->_centeredNameLabel = v68;

    v70 = [MEMORY[0x277D74300] preferredFontForTextStyle:v89];
    [(UILabel *)v5->_centeredNameLabel setFont:v70];

    [(UILabel *)v5->_centeredNameLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    v71 = [(PSUICellularPlanOptionTableCell *)v5 contentView];
    [v71 addSubview:v5->_centeredNameLabel];

    v72 = [(UILabel *)v5->_centeredNameLabel leadingAnchor];
    v73 = [(PSUIBadgeView *)v5->_centeredBadgeView trailingAnchor];
    v74 = [MEMORY[0x277D75520] defaultMetrics];
    [v74 scaledValueForValue:4.0];
    v75 = [v72 constraintEqualToAnchor:v73 constant:?];
    [v75 setActive:1];

    v76 = [(UILabel *)v5->_centeredNameLabel trailingAnchor];
    v77 = [(PSUICellularPlanOptionTableCell *)v5 contentView];
    v78 = [v77 layoutMarginsGuide];
    v79 = [v78 trailingAnchor];
    v80 = [v76 constraintLessThanOrEqualToAnchor:v79];
    [v80 setActive:1];

    v81 = [(UILabel *)v5->_centeredNameLabel centerYAnchor];
    v82 = [(PSUICellularPlanOptionTableCell *)v5 contentView];
    v83 = [v82 centerYAnchor];
    v84 = [v81 constraintEqualToAnchor:v83];
    [v84 setActive:1];

    v85 = [(PSUIBadgeView *)v5->_centeredBadgeView centerYAnchor];
    v86 = [(UILabel *)v5->_centeredNameLabel centerYAnchor];
    v87 = [v85 constraintEqualToAnchor:v86];
    [v87 setActive:1];
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

- (void)_setCenteredText:(id)a3
{
  badgeView = self->_badgeView;
  v7 = a3;
  [(PSUIBadgeView *)badgeView setHidden:1];
  [(UILabel *)self->_nameLabel setHidden:1];
  [(UILabel *)self->_numberLabel setHidden:1];
  [(PSUIBadgeView *)self->_centeredBadgeView setHidden:1];
  [(UILabel *)self->_centeredNameLabel setHidden:0];
  [(UILabel *)self->_nameLabel setText:v7];
  v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v6 = [v5 localizedStringForKey:@"PLACEHOLDER_PHONE_NUMBER" value:&stru_287733598 table:@"Gemini-Gemini"];
  [(UILabel *)self->_numberLabel setText:v6];

  [(UILabel *)self->_centeredNameLabel setText:v7];
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

- (void)refreshCellContentsWithSpecifier:(id)a3
{
  v4 = a3;
  v19.receiver = self;
  v19.super_class = PSUICellularPlanOptionTableCell;
  [(PSTableCell *)&v19 refreshCellContentsWithSpecifier:v4];
  v5 = [v4 propertyForKey:*MEMORY[0x277D40128]];
  v6 = [v4 propertyForKey:*MEMORY[0x277D3FE68]];
  v7 = +[PSUICoreTelephonySubscriberCache sharedInstance];
  v8 = [v7 shortLabel:v5];
  v9 = v8;
  v10 = &stru_287733598;
  if (v8)
  {
    v10 = v8;
  }

  v11 = v10;

  if (v6)
  {
    v12 = MEMORY[0x277CCACA8];
    v13 = [v6 userLabel];
    v14 = [v13 label];
    v15 = [v12 stringWithFormat:@"%@", v14];

    v16 = +[PSUICoreTelephonyCallCache sharedInstance];
    v17 = [v6 phoneNumber];
    v18 = [v16 localizedPhoneNumber:v17 context:v5];

    if ([v18 length])
    {
      [(PSUICellularPlanOptionTableCell *)self _setBadge:v11 andLabel:v15 andPhoneNumber:v18];
    }

    else
    {
      [(PSUICellularPlanOptionTableCell *)self _setCenteredBadge:v11 andLabel:v15];
    }

    -[PSUICellularPlanOptionTableCell setCellEnabled:](self, "setCellEnabled:", [v6 isSelected]);
  }

  else
  {
    v15 = [v4 name];
    [(PSUICellularPlanOptionTableCell *)self _setCenteredText:v15];
  }

  [(PSUICellularPlanOptionTableCell *)self setNeedsLayout];
}

@end