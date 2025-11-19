@interface PSUICellularPlanActivatingTableCell
- (PSUICellularPlanActivatingTableCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)_setBadge:(id)a3 andTitle:(id)a4 andSubtitle:(id)a5 andStatus:(id)a6;
- (void)_setBadgelessCenteredTitle:(id)a3 andStatus:(id)a4;
- (void)_setBadgelessTitle:(id)a3 andSubtitle:(id)a4 andStatus:(id)a5;
- (void)_setCenteredBadge:(id)a3 andCenteredTitle:(id)a4 andStatus:(id)a5;
- (void)refreshCellContentsWithSpecifier:(id)a3;
@end

@implementation PSUICellularPlanActivatingTableCell

- (PSUICellularPlanActivatingTableCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v130.receiver = self;
  v130.super_class = PSUICellularPlanActivatingTableCell;
  v4 = [(PSTableCell *)&v130 initWithStyle:a3 reuseIdentifier:a4];
  v5 = v4;
  if (v4)
  {
    v129.receiver = v4;
    v129.super_class = PSUICellularPlanActivatingTableCell;
    v6 = [(PSUICellularPlanActivatingTableCell *)&v129 textLabel];
    [v6 setText:@"ABC"];

    v128.receiver = v5;
    v128.super_class = PSUICellularPlanActivatingTableCell;
    v7 = [(PSUICellularPlanActivatingTableCell *)&v128 detailTextLabel];
    [v7 setText:@"XYZ"];

    v127.receiver = v5;
    v127.super_class = PSUICellularPlanActivatingTableCell;
    v8 = [(PSUICellularPlanActivatingTableCell *)&v127 textLabel];
    [v8 setHidden:1];

    v126.receiver = v5;
    v126.super_class = PSUICellularPlanActivatingTableCell;
    v9 = [(PSUICellularPlanActivatingTableCell *)&v126 detailTextLabel];
    [v9 setHidden:1];

    v125.receiver = v5;
    v125.super_class = PSUICellularPlanActivatingTableCell;
    v10 = [(PSUICellularPlanActivatingTableCell *)&v125 textLabel];
    [v10 removeFromSuperview];

    v124.receiver = v5;
    v124.super_class = PSUICellularPlanActivatingTableCell;
    v11 = [(PSUICellularPlanActivatingTableCell *)&v124 detailTextLabel];
    [v11 removeFromSuperview];

    [(PSUICellularPlanActivatingTableCell *)v5 setAccessoryType:1];
    v12 = objc_alloc_init(PSUIBadgeView);
    badgeView = v5->_badgeView;
    v5->_badgeView = v12;

    v14 = [(PSUICellularPlanActivatingTableCell *)v5 contentView];
    [v14 addSubview:v5->_badgeView];

    v15 = [(PSUIBadgeView *)v5->_badgeView leadingAnchor];
    v16 = [(PSUICellularPlanActivatingTableCell *)v5 contentView];
    v17 = [v16 layoutMarginsGuide];
    v18 = [v17 leadingAnchor];
    v19 = [v15 constraintEqualToAnchor:v18];
    [v19 setActive:1];

    v20 = objc_alloc_init(MEMORY[0x277D756B8]);
    titleLabel = v5->_titleLabel;
    v5->_titleLabel = v20;

    v123 = *MEMORY[0x277D76918];
    v22 = [MEMORY[0x277D74300] preferredFontForTextStyle:?];
    [(UILabel *)v5->_titleLabel setFont:v22];

    [(UILabel *)v5->_titleLabel setAdjustsFontForContentSizeCategory:1];
    [(UILabel *)v5->_titleLabel setNumberOfLines:0];
    [(UILabel *)v5->_titleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    v23 = [(PSUICellularPlanActivatingTableCell *)v5 contentView];
    [v23 addSubview:v5->_titleLabel];

    v24 = [(UILabel *)v5->_titleLabel firstBaselineAnchor];
    v25 = [(PSUICellularPlanActivatingTableCell *)v5 contentView];
    v26 = [v25 topAnchor];
    v27 = [v24 constraintEqualToSystemSpacingBelowAnchor:v26 multiplier:1.0];
    [v27 setActive:1];

    v28 = [(UILabel *)v5->_titleLabel leadingAnchor];
    v29 = [(PSUIBadgeView *)v5->_badgeView trailingAnchor];
    v30 = [MEMORY[0x277D75520] defaultMetrics];
    [v30 scaledValueForValue:4.0];
    v31 = [v28 constraintEqualToAnchor:v29 constant:?];
    [v31 setActive:1];

    v32 = [(PSUIBadgeView *)v5->_badgeView centerYAnchor];
    v33 = [(UILabel *)v5->_titleLabel centerYAnchor];
    v34 = [v32 constraintEqualToAnchor:v33];
    [v34 setActive:1];

    v35 = objc_alloc_init(MEMORY[0x277D756B8]);
    subtitleLabel = v5->_subtitleLabel;
    v5->_subtitleLabel = v35;

    v37 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D769D0]];
    [(UILabel *)v5->_subtitleLabel setFont:v37];

    [(UILabel *)v5->_subtitleLabel setAdjustsFontForContentSizeCategory:1];
    [(UILabel *)v5->_subtitleLabel setNumberOfLines:0];
    [(UILabel *)v5->_subtitleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    v38 = [MEMORY[0x277D75348] systemGrayColor];
    [(UILabel *)v5->_subtitleLabel setTextColor:v38];

    v39 = [(PSUICellularPlanActivatingTableCell *)v5 contentView];
    [v39 addSubview:v5->_subtitleLabel];

    v40 = [(UILabel *)v5->_subtitleLabel firstBaselineAnchor];
    v41 = [(UILabel *)v5->_titleLabel lastBaselineAnchor];
    v42 = [v40 constraintEqualToSystemSpacingBelowAnchor:v41 multiplier:1.0];
    [v42 setActive:1];

    v43 = [(UILabel *)v5->_subtitleLabel leadingAnchor];
    v44 = [(PSUIBadgeView *)v5->_badgeView leadingAnchor];
    v45 = [v43 constraintEqualToAnchor:v44];
    [v45 setActive:1];

    v46 = [(UILabel *)v5->_subtitleLabel trailingAnchor];
    v47 = [(PSUICellularPlanActivatingTableCell *)v5 contentView];
    v48 = [v47 layoutMarginsGuide];
    v49 = [v48 trailingAnchor];
    v50 = [v46 constraintLessThanOrEqualToAnchor:v49];
    [v50 setActive:1];

    v51 = [(PSUICellularPlanActivatingTableCell *)v5 contentView];
    v52 = [v51 bottomAnchor];
    v53 = [(UILabel *)v5->_subtitleLabel lastBaselineAnchor];
    v54 = [v52 constraintEqualToSystemSpacingBelowAnchor:v53 multiplier:1.0];
    [v54 setActive:1];

    v55 = objc_alloc_init(PSUIBadgeView);
    centeredBadgeView = v5->_centeredBadgeView;
    v5->_centeredBadgeView = v55;

    v57 = [(PSUICellularPlanActivatingTableCell *)v5 contentView];
    [v57 addSubview:v5->_centeredBadgeView];

    v58 = [(PSUIBadgeView *)v5->_centeredBadgeView leadingAnchor];
    v59 = [(PSUICellularPlanActivatingTableCell *)v5 contentView];
    v60 = [v59 layoutMarginsGuide];
    v61 = [v60 leadingAnchor];
    v62 = [v58 constraintEqualToAnchor:v61];
    [v62 setActive:1];

    v63 = objc_alloc_init(MEMORY[0x277D756B8]);
    centeredTitleLabel = v5->_centeredTitleLabel;
    v5->_centeredTitleLabel = v63;

    v65 = [MEMORY[0x277D74300] preferredFontForTextStyle:v123];
    [(UILabel *)v5->_centeredTitleLabel setFont:v65];

    [(UILabel *)v5->_centeredTitleLabel setAdjustsFontForContentSizeCategory:1];
    [(UILabel *)v5->_centeredTitleLabel setNumberOfLines:0];
    [(UILabel *)v5->_centeredTitleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    v66 = [(PSUICellularPlanActivatingTableCell *)v5 contentView];
    [v66 addSubview:v5->_centeredTitleLabel];

    v67 = [(UILabel *)v5->_centeredTitleLabel centerYAnchor];
    v68 = [(PSUICellularPlanActivatingTableCell *)v5 contentView];
    v69 = [v68 centerYAnchor];
    v70 = [v67 constraintEqualToAnchor:v69];
    [v70 setActive:1];

    v71 = [(UILabel *)v5->_centeredTitleLabel leadingAnchor];
    v72 = [(PSUIBadgeView *)v5->_centeredBadgeView trailingAnchor];
    v73 = [MEMORY[0x277D75520] defaultMetrics];
    [v73 scaledValueForValue:4.0];
    v74 = [v71 constraintEqualToAnchor:v72 constant:?];
    [v74 setActive:1];

    v75 = [(PSUIBadgeView *)v5->_centeredBadgeView centerYAnchor];
    v76 = [(UILabel *)v5->_centeredTitleLabel centerYAnchor];
    v77 = [v75 constraintEqualToAnchor:v76];
    [v77 setActive:1];

    v78 = objc_alloc_init(MEMORY[0x277D756B8]);
    badgelessCenteredTitleLabel = v5->_badgelessCenteredTitleLabel;
    v5->_badgelessCenteredTitleLabel = v78;

    v80 = [MEMORY[0x277D74300] preferredFontForTextStyle:v123];
    [(UILabel *)v5->_badgelessCenteredTitleLabel setFont:v80];

    [(UILabel *)v5->_badgelessCenteredTitleLabel setAdjustsFontForContentSizeCategory:1];
    [(UILabel *)v5->_badgelessCenteredTitleLabel setNumberOfLines:0];
    [(UILabel *)v5->_badgelessCenteredTitleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    v81 = [(PSUICellularPlanActivatingTableCell *)v5 contentView];
    [v81 addSubview:v5->_badgelessCenteredTitleLabel];

    v82 = [(UILabel *)v5->_badgelessCenteredTitleLabel centerYAnchor];
    v83 = [(PSUICellularPlanActivatingTableCell *)v5 contentView];
    v84 = [v83 centerYAnchor];
    v85 = [v82 constraintEqualToAnchor:v84];
    [v85 setActive:1];

    v86 = [(UILabel *)v5->_badgelessCenteredTitleLabel leadingAnchor];
    v87 = [(PSUICellularPlanActivatingTableCell *)v5 contentView];
    v88 = [v87 layoutMarginsGuide];
    v89 = [v88 leadingAnchor];
    v90 = [v86 constraintEqualToAnchor:v89];
    [v90 setActive:1];

    v91 = [(UILabel *)v5->_badgelessCenteredTitleLabel widthAnchor];
    v92 = [(PSUICellularPlanActivatingTableCell *)v5 contentView];
    v93 = [v92 layoutMarginsGuide];
    v94 = [v93 widthAnchor];
    v95 = [v91 constraintEqualToAnchor:v94 multiplier:0.6];
    [v95 setActive:1];

    v96 = objc_alloc_init(MEMORY[0x277D756B8]);
    statusLabel = v5->_statusLabel;
    v5->_statusLabel = v96;

    v98 = [MEMORY[0x277D74300] preferredFontForTextStyle:v123];
    [(UILabel *)v5->_statusLabel setFont:v98];

    [(UILabel *)v5->_statusLabel setAdjustsFontForContentSizeCategory:1];
    [(UILabel *)v5->_statusLabel setNumberOfLines:0];
    v99 = [MEMORY[0x277D75348] systemGrayColor];
    [(UILabel *)v5->_statusLabel setTextColor:v99];

    [(UILabel *)v5->_statusLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    v100 = [(PSUICellularPlanActivatingTableCell *)v5 contentView];
    [v100 addSubview:v5->_statusLabel];

    v101 = [(UILabel *)v5->_statusLabel centerYAnchor];
    v102 = [(PSUICellularPlanActivatingTableCell *)v5 contentView];
    v103 = [v102 centerYAnchor];
    v104 = [v101 constraintEqualToAnchor:v103];
    [v104 setActive:1];

    v105 = [(UILabel *)v5->_statusLabel trailingAnchor];
    v106 = [(PSUICellularPlanActivatingTableCell *)v5 contentView];
    v107 = [v106 layoutMarginsGuide];
    v108 = [v107 trailingAnchor];
    v109 = [v105 constraintEqualToAnchor:v108];
    [v109 setActive:1];

    LODWORD(v110) = 1148846080;
    [(UILabel *)v5->_statusLabel setContentCompressionResistancePriority:0 forAxis:v110];
    v111 = [(UILabel *)v5->_statusLabel leadingAnchor];
    v112 = [(UILabel *)v5->_titleLabel trailingAnchor];
    v113 = [v111 constraintGreaterThanOrEqualToSystemSpacingAfterAnchor:v112 multiplier:2.0];
    [v113 setActive:1];

    v114 = [(UILabel *)v5->_statusLabel leadingAnchor];
    v115 = [(UILabel *)v5->_centeredTitleLabel trailingAnchor];
    v116 = [v114 constraintGreaterThanOrEqualToSystemSpacingAfterAnchor:v115 multiplier:2.0];
    [v116 setActive:1];

    v117 = [(UILabel *)v5->_statusLabel leadingAnchor];
    v118 = [(UILabel *)v5->_badgelessCenteredTitleLabel trailingAnchor];
    v119 = [v117 constraintGreaterThanOrEqualToSystemSpacingAfterAnchor:v118 multiplier:2.0];
    [v119 setActive:1];

    v120 = [objc_alloc(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle:100];
    spinner = v5->_spinner;
    v5->_spinner = v120;

    [(UIActivityIndicatorView *)v5->_spinner startAnimating];
    [(PSUICellularPlanActivatingTableCell *)v5 setAccessoryView:v5->_spinner];
  }

  return v5;
}

- (void)_setBadge:(id)a3 andTitle:(id)a4 andSubtitle:(id)a5 andStatus:(id)a6
{
  badgeView = self->_badgeView;
  v14 = a6;
  v13 = a5;
  v11 = a4;
  v12 = a3;
  [(PSUIBadgeView *)badgeView setHidden:0];
  [(UILabel *)self->_titleLabel setHidden:0];
  [(UILabel *)self->_subtitleLabel setHidden:0];
  [(PSUIBadgeView *)self->_centeredBadgeView setHidden:1];
  [(UILabel *)self->_centeredTitleLabel setHidden:1];
  [(UILabel *)self->_badgelessCenteredTitleLabel setHidden:1];
  [(PSUIBadgeView *)self->_badgeView setText:v12];
  [(UILabel *)self->_titleLabel setText:v11];
  [(UILabel *)self->_subtitleLabel setText:v13];

  [(PSUIBadgeView *)self->_centeredBadgeView setText:v12];
  [(UILabel *)self->_centeredTitleLabel setText:v11];
  [(UILabel *)self->_badgelessCenteredTitleLabel setText:v11];

  [(UILabel *)self->_statusLabel setText:v14];
}

- (void)_setCenteredBadge:(id)a3 andCenteredTitle:(id)a4 andStatus:(id)a5
{
  badgeView = self->_badgeView;
  v13 = a5;
  v9 = a4;
  v10 = a3;
  [(PSUIBadgeView *)badgeView setHidden:1];
  [(UILabel *)self->_titleLabel setHidden:1];
  [(UILabel *)self->_subtitleLabel setHidden:1];
  [(PSUIBadgeView *)self->_centeredBadgeView setHidden:0];
  [(UILabel *)self->_centeredTitleLabel setHidden:0];
  [(UILabel *)self->_badgelessCenteredTitleLabel setHidden:1];
  [(PSUIBadgeView *)self->_badgeView setText:v10];
  [(UILabel *)self->_titleLabel setText:v9];
  v11 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v12 = [v11 localizedStringForKey:@"PLACEHOLDER_PHONE_NUMBER" value:&stru_287733598 table:@"Gemini-Gemini"];
  [(UILabel *)self->_subtitleLabel setText:v12];

  [(PSUIBadgeView *)self->_centeredBadgeView setText:v10];
  [(UILabel *)self->_centeredTitleLabel setText:v9];
  [(UILabel *)self->_badgelessCenteredTitleLabel setText:v9];

  [(UILabel *)self->_statusLabel setText:v13];
}

- (void)_setBadgelessCenteredTitle:(id)a3 andStatus:(id)a4
{
  badgeView = self->_badgeView;
  v10 = a4;
  v7 = a3;
  [(PSUIBadgeView *)badgeView setHidden:1];
  [(UILabel *)self->_titleLabel setHidden:1];
  [(UILabel *)self->_subtitleLabel setHidden:1];
  [(PSUIBadgeView *)self->_centeredBadgeView setHidden:1];
  [(UILabel *)self->_centeredTitleLabel setHidden:1];
  [(UILabel *)self->_badgelessCenteredTitleLabel setHidden:0];
  [(PSUIBadgeView *)self->_badgeView setText:&stru_287733598];
  [(UILabel *)self->_titleLabel setText:v7];
  v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v9 = [v8 localizedStringForKey:@"PLACEHOLDER_PHONE_NUMBER" value:&stru_287733598 table:@"Gemini-Gemini"];
  [(UILabel *)self->_subtitleLabel setText:v9];

  [(PSUIBadgeView *)self->_centeredBadgeView setText:&stru_287733598];
  [(UILabel *)self->_centeredTitleLabel setText:v7];
  [(UILabel *)self->_badgelessCenteredTitleLabel setText:v7];

  [(UILabel *)self->_statusLabel setText:v10];
}

- (void)_setBadgelessTitle:(id)a3 andSubtitle:(id)a4 andStatus:(id)a5
{
  badgeView = self->_badgeView;
  v11 = a5;
  v9 = a4;
  v10 = a3;
  [(PSUIBadgeView *)badgeView setHidden:1];
  [(UILabel *)self->_titleLabel setHidden:0];
  [(UILabel *)self->_subtitleLabel setHidden:0];
  [(PSUIBadgeView *)self->_centeredBadgeView setHidden:1];
  [(UILabel *)self->_centeredTitleLabel setHidden:1];
  [(UILabel *)self->_badgelessCenteredTitleLabel setHidden:1];
  [(PSUIBadgeView *)self->_badgeView setText:&stru_287733598];
  [(UILabel *)self->_titleLabel setText:v10];

  [(UILabel *)self->_subtitleLabel setText:v9];
  [(PSUIBadgeView *)self->_centeredBadgeView setText:&stru_287733598];
  [(UILabel *)self->_statusLabel setText:v11];
}

- (void)refreshCellContentsWithSpecifier:(id)a3
{
  v25.receiver = self;
  v25.super_class = PSUICellularPlanActivatingTableCell;
  v4 = a3;
  [(PSTableCell *)&v25 refreshCellContentsWithSpecifier:v4];
  v5 = [v4 propertyForKey:{*MEMORY[0x277D3FE70], v25.receiver, v25.super_class}];
  v6 = +[PSUICellularPlanManagerCache sharedInstance];
  v7 = [v6 planFromReference:v5];

  v8 = [v4 propertyForKey:*MEMORY[0x277D40128]];

  v9 = [MEMORY[0x277D75418] currentDevice];
  v10 = [v9 userInterfaceIdiom];

  if ((v10 & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    v11 = [v7 carrierName];
    v12 = 0;
    v13 = 0;
  }

  else
  {
    v14 = +[PSUICoreTelephonySubscriberCache sharedInstance];
    v12 = [v14 shortLabel:v8];

    v15 = [v7 userLabel];
    v11 = [v15 label];

    v16 = +[PSUICoreTelephonyCallCache sharedInstance];
    v17 = [v7 phoneNumber];
    v13 = [v16 localizedPhoneNumber:v17 context:v8];
  }

  if (![v12 length] || !-[__CFString length](v11, "length"))
  {
    if ([(__CFString *)v11 length])
    {
      v21 = [v13 length];
      v19 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v20 = [v19 localizedStringForKey:@"ACTIVATING" value:&stru_287733598 table:@"Gemini-Gemini"];
      v22 = self;
      v23 = v11;
      if (v21)
      {
        [(PSUICellularPlanActivatingTableCell *)self _setBadgelessTitle:v11 andSubtitle:v13 andStatus:v20];
        goto LABEL_15;
      }

      v24 = v20;
    }

    else
    {
      v19 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v20 = [v19 localizedStringForKey:@"ACTIVATING" value:&stru_287733598 table:@"Gemini-Gemini"];
      v22 = self;
      v23 = v20;
      v24 = &stru_287733598;
    }

    [(PSUICellularPlanActivatingTableCell *)v22 _setBadgelessCenteredTitle:v23 andStatus:v24];
    goto LABEL_15;
  }

  v18 = [v13 length];
  v19 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v20 = [v19 localizedStringForKey:@"ACTIVATING" value:&stru_287733598 table:@"Gemini-Gemini"];
  if (v18)
  {
    [(PSUICellularPlanActivatingTableCell *)self _setBadge:v12 andTitle:v11 andSubtitle:v13 andStatus:v20];
  }

  else
  {
    [(PSUICellularPlanActivatingTableCell *)self _setCenteredBadge:v12 andCenteredTitle:v11 andStatus:v20];
  }

LABEL_15:

  [(PSUICellularPlanActivatingTableCell *)self setNeedsLayout];
}

@end