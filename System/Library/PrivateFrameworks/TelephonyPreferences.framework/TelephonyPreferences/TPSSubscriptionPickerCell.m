@interface TPSSubscriptionPickerCell
- (TPSSubscriptionPickerCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)_setBadge:(id)a3 andLabel:(id)a4 andPhoneNumber:(id)a5;
- (void)_setCenteredBadge:(id)a3 andLabel:(id)a4;
- (void)refreshCellContentsWithSpecifier:(id)a3;
@end

@implementation TPSSubscriptionPickerCell

- (TPSSubscriptionPickerCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v94[14] = *MEMORY[0x277D85DE8];
  v93.receiver = self;
  v93.super_class = TPSSubscriptionPickerCell;
  v4 = [(PSTableCell *)&v93 initWithStyle:a3 reuseIdentifier:a4];
  if (v4)
  {
    v5 = [objc_alloc(MEMORY[0x277D6ED58]) initWithTitle:&stru_282D54710 theme:7];
    badgeView = v4->_badgeView;
    v4->_badgeView = v5;

    v7 = [(TPSSubscriptionPickerCell *)v4 contentView];
    v8 = [(TPSSubscriptionPickerCell *)v4 badgeView];
    [v7 addSubview:v8];

    [(TPBadgeView *)v4->_badgeView setTranslatesAutoresizingMaskIntoConstraints:0];
    v9 = [(TPSSubscriptionPickerCell *)v4 badgeView];
    v10 = [v9 leadingAnchor];
    v11 = [(TPSSubscriptionPickerCell *)v4 contentView];
    v12 = [v11 layoutMarginsGuide];
    v13 = [v12 leadingAnchor];
    v92 = [v10 constraintEqualToAnchor:v13];

    v14 = objc_alloc_init(MEMORY[0x277D756B8]);
    nameLabel = v4->_nameLabel;
    v4->_nameLabel = v14;

    v16 = *MEMORY[0x277D76918];
    v17 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76918]];
    [(UILabel *)v4->_nameLabel setFont:v17];

    [(UILabel *)v4->_nameLabel setNumberOfLines:2];
    [(UILabel *)v4->_nameLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    v18 = [(TPSSubscriptionPickerCell *)v4 contentView];
    [v18 addSubview:v4->_nameLabel];

    v19 = [(UILabel *)v4->_nameLabel firstBaselineAnchor];
    v20 = [(TPSSubscriptionPickerCell *)v4 contentView];
    v21 = [v20 topAnchor];
    v91 = [v19 constraintEqualToSystemSpacingBelowAnchor:v21 multiplier:1.0];

    v22 = [(UILabel *)v4->_nameLabel leadingAnchor];
    v23 = [(TPSSubscriptionPickerCell *)v4 badgeView];
    v24 = [v23 trailingAnchor];
    v25 = [MEMORY[0x277D75520] defaultMetrics];
    [v25 scaledValueForValue:4.0];
    v90 = [v22 constraintEqualToAnchor:v24 constant:?];

    v26 = [(TPSSubscriptionPickerCell *)v4 badgeView];
    v27 = [v26 centerYAnchor];
    v28 = [(UILabel *)v4->_nameLabel centerYAnchor];
    v89 = [v27 constraintEqualToAnchor:v28];

    v29 = objc_alloc_init(MEMORY[0x277D756B8]);
    numberLabel = v4->_numberLabel;
    v4->_numberLabel = v29;

    v31 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D769D0]];
    [(UILabel *)v4->_numberLabel setFont:v31];

    [(UILabel *)v4->_numberLabel setNumberOfLines:2];
    [(UILabel *)v4->_numberLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    v32 = [MEMORY[0x277D75348] systemGrayColor];
    [(UILabel *)v4->_numberLabel setTextColor:v32];

    v33 = [(TPSSubscriptionPickerCell *)v4 contentView];
    [v33 addSubview:v4->_numberLabel];

    v34 = [(UILabel *)v4->_numberLabel firstBaselineAnchor];
    v35 = [(UILabel *)v4->_nameLabel lastBaselineAnchor];
    v88 = [v34 constraintEqualToSystemSpacingBelowAnchor:v35 multiplier:1.0];

    v36 = [(UILabel *)v4->_numberLabel leadingAnchor];
    v37 = [(TPSSubscriptionPickerCell *)v4 badgeView];
    v38 = [v37 leadingAnchor];
    v87 = [v36 constraintEqualToAnchor:v38];

    v39 = [(UILabel *)v4->_numberLabel trailingAnchor];
    v40 = [(TPSSubscriptionPickerCell *)v4 contentView];
    v41 = [v40 layoutMarginsGuide];
    v42 = [v41 trailingAnchor];
    v86 = [v39 constraintLessThanOrEqualToAnchor:v42];

    v43 = [(TPSSubscriptionPickerCell *)v4 contentView];
    v44 = [v43 bottomAnchor];
    v45 = [(UILabel *)v4->_numberLabel lastBaselineAnchor];
    v85 = [v44 constraintEqualToSystemSpacingBelowAnchor:v45 multiplier:1.0];

    v46 = [objc_alloc(MEMORY[0x277D6ED58]) initWithTitle:&stru_282D54710 theme:7];
    centeredBadgeView = v4->_centeredBadgeView;
    v4->_centeredBadgeView = v46;

    v48 = [(TPSSubscriptionPickerCell *)v4 contentView];
    v49 = [(TPSSubscriptionPickerCell *)v4 centeredBadgeView];
    [v48 addSubview:v49];

    [(TPBadgeView *)v4->_centeredBadgeView setTranslatesAutoresizingMaskIntoConstraints:0];
    v50 = [(TPSSubscriptionPickerCell *)v4 centeredBadgeView];
    v51 = [v50 leadingAnchor];
    v52 = [(TPSSubscriptionPickerCell *)v4 contentView];
    v53 = [v52 layoutMarginsGuide];
    v54 = [v53 leadingAnchor];
    v84 = [v51 constraintEqualToAnchor:v54];

    v55 = objc_alloc_init(MEMORY[0x277D756B8]);
    centeredNameLabel = v4->_centeredNameLabel;
    v4->_centeredNameLabel = v55;

    v57 = [MEMORY[0x277D74300] preferredFontForTextStyle:v16];
    [(UILabel *)v4->_centeredNameLabel setFont:v57];

    [(UILabel *)v4->_centeredNameLabel setNumberOfLines:2];
    [(UILabel *)v4->_centeredNameLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    v58 = [(TPSSubscriptionPickerCell *)v4 contentView];
    [v58 addSubview:v4->_centeredNameLabel];

    v59 = [(UILabel *)v4->_centeredNameLabel centerYAnchor];
    v60 = [(TPSSubscriptionPickerCell *)v4 contentView];
    v61 = [v60 centerYAnchor];
    v83 = [v59 constraintEqualToAnchor:v61];

    v62 = [(UILabel *)v4->_centeredNameLabel leadingAnchor];
    v63 = [(TPSSubscriptionPickerCell *)v4 centeredBadgeView];
    v64 = [v63 trailingAnchor];
    v65 = [MEMORY[0x277D75520] defaultMetrics];
    [v65 scaledValueForValue:4.0];
    v82 = [v62 constraintEqualToAnchor:v64 constant:?];

    v66 = [(TPSSubscriptionPickerCell *)v4 centeredBadgeView];
    v67 = [v66 centerYAnchor];
    v68 = [(UILabel *)v4->_centeredNameLabel centerYAnchor];
    v81 = [v67 constraintEqualToAnchor:v68];

    v69 = [(UILabel *)v4->_nameLabel trailingAnchor];
    v70 = [(TPSSubscriptionPickerCell *)v4 contentView];
    v71 = [v70 trailingAnchor];
    v80 = [v69 constraintLessThanOrEqualToAnchor:v71];

    v72 = [(UILabel *)v4->_centeredNameLabel trailingAnchor];
    v73 = [(TPSSubscriptionPickerCell *)v4 contentView];
    v74 = [v73 trailingAnchor];
    v75 = [v72 constraintLessThanOrEqualToAnchor:v74];

    v76 = MEMORY[0x277CCAAD0];
    v94[0] = v92;
    v94[1] = v91;
    v94[2] = v90;
    v94[3] = v89;
    v94[4] = v88;
    v94[5] = v87;
    v94[6] = v86;
    v94[7] = v85;
    v94[8] = v84;
    v94[9] = v83;
    v94[10] = v82;
    v94[11] = v81;
    v94[12] = v80;
    v94[13] = v75;
    v77 = [MEMORY[0x277CBEA60] arrayWithObjects:v94 count:14];
    [v76 activateConstraints:v77];
  }

  v78 = *MEMORY[0x277D85DE8];
  return v4;
}

- (void)_setCenteredBadge:(id)a3 andLabel:(id)a4
{
  badgeView = self->_badgeView;
  v8 = a4;
  v7 = a3;
  [(TPBadgeView *)badgeView setHidden:1];
  [(UILabel *)self->_nameLabel setHidden:1];
  [(UILabel *)self->_numberLabel setHidden:1];
  [(TPBadgeView *)self->_centeredBadgeView setHidden:0];
  [(UILabel *)self->_centeredNameLabel setHidden:0];
  [(TPBadgeView *)self->_badgeView setTitle:v7];
  [(UILabel *)self->_nameLabel setText:v8];
  [(UILabel *)self->_numberLabel setText:@"+1 (123) 456-7890"];
  [(TPBadgeView *)self->_centeredBadgeView setTitle:v7];

  [(UILabel *)self->_centeredNameLabel setText:v8];
}

- (void)_setBadge:(id)a3 andLabel:(id)a4 andPhoneNumber:(id)a5
{
  badgeView = self->_badgeView;
  v9 = a5;
  v11 = a4;
  v10 = a3;
  [(TPBadgeView *)badgeView setHidden:0];
  [(UILabel *)self->_nameLabel setHidden:0];
  [(UILabel *)self->_numberLabel setHidden:0];
  [(TPBadgeView *)self->_centeredBadgeView setHidden:1];
  [(UILabel *)self->_centeredNameLabel setHidden:1];
  [(TPBadgeView *)self->_badgeView setTitle:v10];
  [(UILabel *)self->_nameLabel setText:v11];
  [(UILabel *)self->_numberLabel setText:v9];

  [(TPBadgeView *)self->_centeredBadgeView setTitle:v10];
  [(UILabel *)self->_centeredNameLabel setText:v11];
}

- (void)refreshCellContentsWithSpecifier:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v11.receiver = self;
  v11.super_class = TPSSubscriptionPickerCell;
  v4 = a3;
  [(PSTableCell *)&v11 refreshCellContentsWithSpecifier:v4];
  v5 = [v4 propertyForKey:{*MEMORY[0x277D40128], v11.receiver, v11.super_class}];

  v6 = [v5 tps_localizedShortLabel];
  v7 = [v5 label];
  v8 = [v5 tps_localizedPhoneNumber];
  v9 = TPSLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315906;
    v13 = "[TPSSubscriptionPickerCell refreshCellContentsWithSpecifier:]";
    v14 = 2112;
    v15 = v6;
    v16 = 2112;
    v17 = v7;
    v18 = 2112;
    v19 = v8;
    _os_log_impl(&dword_21B8E9000, v9, OS_LOG_TYPE_DEFAULT, "%s : Received badge: %@, label: %@, phoneNumber: %@", buf, 0x2Au);
  }

  if ([v8 length])
  {
    [(TPSSubscriptionPickerCell *)self _setBadge:v6 andLabel:v7 andPhoneNumber:v8];
  }

  else
  {
    [(TPSSubscriptionPickerCell *)self _setCenteredBadge:v6 andLabel:v7];
  }

  [(TPSSubscriptionPickerCell *)self setNeedsLayout];

  v10 = *MEMORY[0x277D85DE8];
}

@end