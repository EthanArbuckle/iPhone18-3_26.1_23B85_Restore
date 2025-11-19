@interface SHSDualSIMListCell
- (SHSDualSIMListCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)_setBadge:(id)a3 andLabel:(id)a4 andPhoneNumber:(id)a5;
- (void)_setCenteredBadge:(id)a3 andLabel:(id)a4;
- (void)refreshCellContentsWithSpecifier:(id)a3;
@end

@implementation SHSDualSIMListCell

- (SHSDualSIMListCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v133.receiver = self;
  v133.super_class = SHSDualSIMListCell;
  v4 = [(PSTableCell *)&v133 initWithStyle:a3 reuseIdentifier:a4];
  v5 = v4;
  if (v4)
  {
    v132.receiver = v4;
    v132.super_class = SHSDualSIMListCell;
    v6 = [(SHSDualSIMListCell *)&v132 textLabel];
    [v6 setText:@"ABC"];

    v131.receiver = v5;
    v131.super_class = SHSDualSIMListCell;
    v7 = [(SHSDualSIMListCell *)&v131 detailTextLabel];
    [v7 setText:@"XYZ"];

    v130.receiver = v5;
    v130.super_class = SHSDualSIMListCell;
    v8 = [(SHSDualSIMListCell *)&v130 textLabel];
    [v8 removeFromSuperview];

    v129.receiver = v5;
    v129.super_class = SHSDualSIMListCell;
    v9 = [(SHSDualSIMListCell *)&v129 detailTextLabel];
    [v9 removeFromSuperview];

    v128.receiver = v5;
    v128.super_class = SHSDualSIMListCell;
    v10 = [(SHSDualSIMListCell *)&v128 textLabel];
    [v10 setHidden:1];

    v127.receiver = v5;
    v127.super_class = SHSDualSIMListCell;
    v11 = [(SHSDualSIMListCell *)&v127 detailTextLabel];
    [v11 setHidden:1];

    [(SHSDualSIMListCell *)v5 setAccessoryType:1];
    v12 = objc_alloc_init(SHSBadgeView);
    badgeView = v5->_badgeView;
    v5->_badgeView = v12;

    v14 = [(SHSDualSIMListCell *)v5 contentView];
    v15 = [(SHSDualSIMListCell *)v5 badgeView];
    [v14 addSubview:v15];

    v16 = [(SHSDualSIMListCell *)v5 badgeView];
    v17 = [v16 leadingAnchor];
    v18 = [(SHSDualSIMListCell *)v5 contentView];
    v19 = [v18 layoutMarginsGuide];
    v20 = [v19 leadingAnchor];
    v21 = [v17 constraintEqualToAnchor:v20];
    [v21 setActive:1];

    v22 = objc_alloc_init(MEMORY[0x277D756B8]);
    nameLabel = v5->_nameLabel;
    v5->_nameLabel = v22;

    v24 = *MEMORY[0x277D76918];
    v25 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76918]];
    [(UILabel *)v5->_nameLabel setFont:v25];

    [(UILabel *)v5->_nameLabel setNumberOfLines:2];
    [(UILabel *)v5->_nameLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    v26 = [(SHSDualSIMListCell *)v5 contentView];
    [v26 addSubview:v5->_nameLabel];

    v27 = [(UILabel *)v5->_nameLabel firstBaselineAnchor];
    v28 = [(SHSDualSIMListCell *)v5 contentView];
    v29 = [v28 topAnchor];
    v30 = [v27 constraintEqualToSystemSpacingBelowAnchor:v29 multiplier:1.0];
    [v30 setActive:1];

    v31 = [(UILabel *)v5->_nameLabel leadingAnchor];
    v32 = [(SHSDualSIMListCell *)v5 badgeView];
    v33 = [v32 trailingAnchor];
    v34 = [MEMORY[0x277D75520] defaultMetrics];
    [v34 scaledValueForValue:4.0];
    v35 = [v31 constraintEqualToAnchor:v33 constant:?];
    [v35 setActive:1];

    v36 = [(SHSDualSIMListCell *)v5 badgeView];
    v37 = [v36 centerYAnchor];
    v38 = [(UILabel *)v5->_nameLabel centerYAnchor];
    v39 = [v37 constraintEqualToAnchor:v38];
    [v39 setActive:1];

    v40 = [(SHSDualSIMListCell *)v5 badgeView];
    [v40 frame];
    v42 = v41;
    v43 = [(SHSDualSIMListCell *)v5 badgeView];
    [v43 frame];
    v45 = v44;
    v46 = [(SHSDualSIMListCell *)v5 badgeView];
    [v46 size];
    v48 = v47;
    v49 = [(SHSDualSIMListCell *)v5 nameLabel];
    v50 = [v49 font];
    [v50 capHeight];
    v52 = v51;
    v53 = [(SHSDualSIMListCell *)v5 badgeView];
    [v53 setFrame:{v42, v45, v48, v52}];

    v54 = objc_alloc_init(MEMORY[0x277D756B8]);
    numberLabel = v5->_numberLabel;
    v5->_numberLabel = v54;

    v56 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D769D0]];
    [(UILabel *)v5->_numberLabel setFont:v56];

    [(UILabel *)v5->_numberLabel setNumberOfLines:2];
    [(UILabel *)v5->_numberLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    v57 = [MEMORY[0x277D75348] systemGrayColor];
    [(UILabel *)v5->_numberLabel setTextColor:v57];

    v58 = [(SHSDualSIMListCell *)v5 contentView];
    [v58 addSubview:v5->_numberLabel];

    v59 = [(UILabel *)v5->_numberLabel firstBaselineAnchor];
    v60 = [(UILabel *)v5->_nameLabel lastBaselineAnchor];
    v61 = [v59 constraintEqualToSystemSpacingBelowAnchor:v60 multiplier:1.0];
    [v61 setActive:1];

    v62 = [(UILabel *)v5->_numberLabel leadingAnchor];
    v63 = [(SHSDualSIMListCell *)v5 badgeView];
    v64 = [v63 leadingAnchor];
    v65 = [v62 constraintEqualToAnchor:v64];
    [v65 setActive:1];

    v66 = [(UILabel *)v5->_numberLabel trailingAnchor];
    v67 = [(SHSDualSIMListCell *)v5 contentView];
    v68 = [v67 layoutMarginsGuide];
    v69 = [v68 trailingAnchor];
    v70 = [v66 constraintLessThanOrEqualToAnchor:v69];
    [v70 setActive:1];

    v71 = [(SHSDualSIMListCell *)v5 contentView];
    v72 = [v71 bottomAnchor];
    v73 = [(UILabel *)v5->_numberLabel lastBaselineAnchor];
    v74 = [v72 constraintEqualToSystemSpacingBelowAnchor:v73 multiplier:1.0];
    [v74 setActive:1];

    v75 = objc_alloc_init(SHSBadgeView);
    centeredBadgeView = v5->_centeredBadgeView;
    v5->_centeredBadgeView = v75;

    v77 = [(SHSDualSIMListCell *)v5 contentView];
    [v77 addSubview:v5->_centeredBadgeView];

    v78 = [(SHSBadgeView *)v5->_centeredBadgeView leadingAnchor];
    v79 = [(SHSDualSIMListCell *)v5 contentView];
    v80 = [v79 layoutMarginsGuide];
    v81 = [v80 leadingAnchor];
    v82 = [v78 constraintEqualToAnchor:v81];
    [v82 setActive:1];

    v83 = objc_alloc_init(MEMORY[0x277D756B8]);
    centeredNameLabel = v5->_centeredNameLabel;
    v5->_centeredNameLabel = v83;

    v85 = [MEMORY[0x277D74300] preferredFontForTextStyle:v24];
    [(UILabel *)v5->_centeredNameLabel setFont:v85];

    [(UILabel *)v5->_centeredNameLabel setNumberOfLines:2];
    [(UILabel *)v5->_centeredNameLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    v86 = [(SHSDualSIMListCell *)v5 contentView];
    [v86 addSubview:v5->_centeredNameLabel];

    v87 = [(UILabel *)v5->_centeredNameLabel centerYAnchor];
    v88 = [(SHSDualSIMListCell *)v5 contentView];
    v89 = [v88 centerYAnchor];
    v90 = [v87 constraintEqualToAnchor:v89];
    [v90 setActive:1];

    v91 = [(UILabel *)v5->_centeredNameLabel leadingAnchor];
    v92 = [(SHSBadgeView *)v5->_centeredBadgeView trailingAnchor];
    v93 = [MEMORY[0x277D75520] defaultMetrics];
    [v93 scaledValueForValue:4.0];
    v94 = [v91 constraintEqualToAnchor:v92 constant:?];
    [v94 setActive:1];

    v95 = [(SHSBadgeView *)v5->_centeredBadgeView centerYAnchor];
    v96 = [(UILabel *)v5->_centeredNameLabel centerYAnchor];
    v97 = [v95 constraintEqualToAnchor:v96];
    [v97 setActive:1];

    v98 = objc_alloc_init(MEMORY[0x277D756B8]);
    detailToneTextLabel = v5->_detailToneTextLabel;
    v5->_detailToneTextLabel = v98;

    v100 = [MEMORY[0x277D74300] preferredFontForTextStyle:v24];
    [(UILabel *)v5->_detailToneTextLabel setFont:v100];

    [(UILabel *)v5->_detailToneTextLabel setNumberOfLines:2];
    v101 = [MEMORY[0x277D75348] systemGrayColor];
    [(UILabel *)v5->_detailToneTextLabel setTextColor:v101];

    [(UILabel *)v5->_detailToneTextLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    v102 = [(SHSDualSIMListCell *)v5 contentView];
    [v102 addSubview:v5->_detailToneTextLabel];

    v103 = [(UILabel *)v5->_detailToneTextLabel centerYAnchor];
    v104 = [(SHSDualSIMListCell *)v5 contentView];
    v105 = [v104 centerYAnchor];
    v106 = [v103 constraintEqualToAnchor:v105];
    [v106 setActive:1];

    v107 = [(UILabel *)v5->_detailToneTextLabel trailingAnchor];
    v108 = [(SHSDualSIMListCell *)v5 contentView];
    v109 = [v108 layoutMarginsGuide];
    v110 = [v109 trailingAnchor];
    v111 = [v107 constraintEqualToAnchor:v110];
    [v111 setActive:1];

    LODWORD(v112) = 1148846080;
    [(UILabel *)v5->_detailToneTextLabel setContentCompressionResistancePriority:0 forAxis:v112];
    v113 = [(UILabel *)v5->_detailToneTextLabel leadingAnchor];
    v114 = [(SHSDualSIMListCell *)v5 contentView];
    v115 = [v114 centerXAnchor];
    v116 = [v113 constraintGreaterThanOrEqualToAnchor:v115];
    [v116 setActive:1];

    v117 = [(UILabel *)v5->_detailToneTextLabel leadingAnchor];
    v118 = [(UILabel *)v5->_nameLabel trailingAnchor];
    v119 = [v117 constraintGreaterThanOrEqualToSystemSpacingAfterAnchor:v118 multiplier:1.0];
    [v119 setActive:1];

    v120 = [(UILabel *)v5->_detailToneTextLabel leadingAnchor];
    v121 = [(UILabel *)v5->_centeredNameLabel trailingAnchor];
    v122 = [v120 constraintGreaterThanOrEqualToSystemSpacingAfterAnchor:v121 multiplier:1.0];
    [v122 setActive:1];

    v123 = [(UILabel *)v5->_numberLabel trailingAnchor];
    v124 = [(UILabel *)v5->_detailToneTextLabel leadingAnchor];
    v125 = [v123 constraintLessThanOrEqualToAnchor:v124];
    [v125 setActive:1];
  }

  return v5;
}

- (void)_setCenteredBadge:(id)a3 andLabel:(id)a4
{
  badgeView = self->_badgeView;
  v8 = a4;
  v7 = a3;
  [(SHSBadgeView *)badgeView setHidden:1];
  [(UILabel *)self->_nameLabel setHidden:1];
  [(UILabel *)self->_numberLabel setHidden:1];
  [(SHSBadgeView *)self->_centeredBadgeView setHidden:0];
  [(UILabel *)self->_centeredNameLabel setHidden:0];
  [(SHSBadgeView *)self->_badgeView setText:v7];
  [(UILabel *)self->_nameLabel setText:v8];
  [(UILabel *)self->_numberLabel setText:@"+1 (123) 456-7890"];
  [(SHSBadgeView *)self->_centeredBadgeView setText:v7];

  [(UILabel *)self->_centeredNameLabel setText:v8];
}

- (void)_setBadge:(id)a3 andLabel:(id)a4 andPhoneNumber:(id)a5
{
  badgeView = self->_badgeView;
  v9 = a5;
  v11 = a4;
  v10 = a3;
  [(SHSBadgeView *)badgeView setHidden:0];
  [(UILabel *)self->_nameLabel setHidden:0];
  [(UILabel *)self->_numberLabel setHidden:0];
  [(SHSBadgeView *)self->_centeredBadgeView setHidden:1];
  [(UILabel *)self->_centeredNameLabel setHidden:1];
  [(SHSBadgeView *)self->_badgeView setText:v10];
  [(UILabel *)self->_nameLabel setText:v11];
  [(UILabel *)self->_numberLabel setText:v9];

  [(SHSBadgeView *)self->_centeredBadgeView setText:v10];
  [(UILabel *)self->_centeredNameLabel setText:v11];
}

- (void)refreshCellContentsWithSpecifier:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v15.receiver = self;
  v15.super_class = SHSDualSIMListCell;
  [(PSTableCell *)&v15 refreshCellContentsWithSpecifier:v4];
  v5 = [v4 propertyForKey:*MEMORY[0x277D40128]];
  v6 = [v4 propertyForKey:@"contextShortLabel"];
  v7 = v6;
  v8 = &stru_28772CD00;
  if (v6)
  {
    v8 = v6;
  }

  v9 = v8;

  v10 = [v5 label];
  v11 = [SHSDualSIMToneHelper fetchLocalizedPhoneNumberForContext:v5];
  v12 = SHSLogForCategory(0);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315906;
    v17 = "[SHSDualSIMListCell refreshCellContentsWithSpecifier:]";
    v18 = 2112;
    v19 = v9;
    v20 = 2112;
    v21 = v10;
    v22 = 2112;
    v23 = v11;
    _os_log_impl(&dword_265896000, v12, OS_LOG_TYPE_DEFAULT, "%s : Received badge: %@, label: %@, phoneNumber: %@", buf, 0x2Au);
  }

  if ([v11 length])
  {
    [(SHSDualSIMListCell *)self _setBadge:v9 andLabel:v10 andPhoneNumber:v11];
  }

  else
  {
    [(SHSDualSIMListCell *)self _setCenteredBadge:v9 andLabel:v10];
  }

  if ([v4 hasValidGetter])
  {
    v13 = [v4 performGetter];
    if (v13)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [(UILabel *)self->_detailToneTextLabel setText:v13];
      }
    }
  }

  [(SHSDualSIMListCell *)self setNeedsLayout];

  v14 = *MEMORY[0x277D85DE8];
}

@end