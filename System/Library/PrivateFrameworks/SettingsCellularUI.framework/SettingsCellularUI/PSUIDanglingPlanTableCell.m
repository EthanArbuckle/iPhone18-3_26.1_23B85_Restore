@interface PSUIDanglingPlanTableCell
- (PSUIDanglingPlanTableCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)_setLabel:(id)a3 andPhoneNumber:(id)a4;
- (void)refreshCellContentsWithSpecifier:(id)a3;
@end

@implementation PSUIDanglingPlanTableCell

- (PSUIDanglingPlanTableCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v74.receiver = self;
  v74.super_class = PSUIDanglingPlanTableCell;
  v4 = [(PSTableCell *)&v74 initWithStyle:a3 reuseIdentifier:a4];
  v5 = v4;
  if (v4)
  {
    v73.receiver = v4;
    v73.super_class = PSUIDanglingPlanTableCell;
    v6 = [(PSUIDanglingPlanTableCell *)&v73 textLabel];
    [v6 removeFromSuperview];

    v72.receiver = v5;
    v72.super_class = PSUIDanglingPlanTableCell;
    v7 = [(PSUIDanglingPlanTableCell *)&v72 detailTextLabel];
    [v7 removeFromSuperview];

    [(PSUIDanglingPlanTableCell *)v5 setAccessoryType:1];
    v8 = objc_alloc_init(MEMORY[0x277D756B8]);
    statusLabel = v5->_statusLabel;
    v5->_statusLabel = v8;

    v10 = *MEMORY[0x277D76918];
    v11 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76918]];
    [(UILabel *)v5->_statusLabel setFont:v11];

    [(UILabel *)v5->_statusLabel setNumberOfLines:1];
    v12 = [MEMORY[0x277D75348] systemGrayColor];
    [(UILabel *)v5->_statusLabel setTextColor:v12];

    [(UILabel *)v5->_statusLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    v13 = [(PSUIDanglingPlanTableCell *)v5 contentView];
    [v13 addSubview:v5->_statusLabel];

    LODWORD(v14) = 1148846080;
    [(UILabel *)v5->_statusLabel setContentCompressionResistancePriority:0 forAxis:v14];
    LODWORD(v15) = 1148846080;
    [(UILabel *)v5->_statusLabel setContentHuggingPriority:0 forAxis:v15];
    v16 = [(UILabel *)v5->_statusLabel trailingAnchor];
    v17 = [(PSUIDanglingPlanTableCell *)v5 contentView];
    v18 = [v17 layoutMarginsGuide];
    v19 = [v18 trailingAnchor];
    v20 = [v16 constraintEqualToAnchor:v19];
    [v20 setActive:1];

    v21 = [(UILabel *)v5->_statusLabel centerYAnchor];
    v22 = [(PSUIDanglingPlanTableCell *)v5 contentView];
    v23 = [v22 layoutMarginsGuide];
    v24 = [v23 centerYAnchor];
    v25 = [v21 constraintEqualToAnchor:v24];
    [v25 setActive:1];

    v26 = objc_alloc_init(MEMORY[0x277D756B8]);
    nameLabel = v5->_nameLabel;
    v5->_nameLabel = v26;

    v28 = [MEMORY[0x277D74300] preferredFontForTextStyle:v10];
    [(UILabel *)v5->_nameLabel setFont:v28];

    [(UILabel *)v5->_nameLabel setAdjustsFontForContentSizeCategory:1];
    [(UILabel *)v5->_nameLabel setNumberOfLines:0];
    [(UILabel *)v5->_nameLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    v29 = [(PSUIDanglingPlanTableCell *)v5 contentView];
    [v29 addSubview:v5->_nameLabel];

    LODWORD(v30) = 1148846080;
    [(UILabel *)v5->_nameLabel setContentCompressionResistancePriority:1 forAxis:v30];
    v31 = [(UILabel *)v5->_nameLabel topAnchor];
    v32 = [(PSUIDanglingPlanTableCell *)v5 contentView];
    v33 = [v32 layoutMarginsGuide];
    v34 = [v33 topAnchor];
    v35 = [v31 constraintEqualToAnchor:v34];
    [v35 setActive:1];

    v36 = [(UILabel *)v5->_nameLabel leadingAnchor];
    v37 = [(PSUIDanglingPlanTableCell *)v5 contentView];
    v38 = [v37 layoutMarginsGuide];
    v39 = [v38 leadingAnchor];
    v40 = [v36 constraintEqualToAnchor:v39];
    [v40 setActive:1];

    v41 = [(UILabel *)v5->_nameLabel trailingAnchor];
    v42 = [(UILabel *)v5->_statusLabel leadingAnchor];
    v43 = [v41 constraintEqualToAnchor:v42];
    [v43 setActive:1];

    v44 = [(UILabel *)v5->_nameLabel trailingAnchor];
    v45 = [(PSUIDanglingPlanTableCell *)v5 contentView];
    v46 = [v45 layoutMarginsGuide];
    v47 = [v46 trailingAnchor];
    v48 = [v44 constraintLessThanOrEqualToAnchor:v47];
    [v48 setActive:1];

    v49 = objc_alloc_init(MEMORY[0x277D756B8]);
    numberLabel = v5->_numberLabel;
    v5->_numberLabel = v49;

    v51 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D769D0]];
    [(UILabel *)v5->_numberLabel setFont:v51];

    [(UILabel *)v5->_numberLabel setNumberOfLines:0];
    [(UILabel *)v5->_numberLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    v52 = [MEMORY[0x277D75348] systemGrayColor];
    [(UILabel *)v5->_numberLabel setTextColor:v52];

    v53 = [(PSUIDanglingPlanTableCell *)v5 contentView];
    [v53 addSubview:v5->_numberLabel];

    LODWORD(v54) = 1148846080;
    [(UILabel *)v5->_numberLabel setContentCompressionResistancePriority:1 forAxis:v54];
    v55 = [(UILabel *)v5->_numberLabel leadingAnchor];
    v56 = [(PSUIDanglingPlanTableCell *)v5 contentView];
    v57 = [v56 layoutMarginsGuide];
    v58 = [v57 leadingAnchor];
    v59 = [v55 constraintEqualToAnchor:v58];
    [v59 setActive:1];

    v60 = [(UILabel *)v5->_numberLabel bottomAnchor];
    v61 = [(PSUIDanglingPlanTableCell *)v5 contentView];
    v62 = [v61 layoutMarginsGuide];
    v63 = [v62 bottomAnchor];
    v64 = [v60 constraintEqualToAnchor:v63];
    [v64 setActive:1];

    v65 = [(UILabel *)v5->_numberLabel firstBaselineAnchor];
    v66 = [(UILabel *)v5->_nameLabel lastBaselineAnchor];
    v67 = [v65 constraintEqualToSystemSpacingBelowAnchor:v66 multiplier:1.0];
    [v67 setActive:1];

    v68 = [(UILabel *)v5->_numberLabel widthAnchor];
    v69 = [(UILabel *)v5->_nameLabel widthAnchor];
    v70 = [v68 constraintEqualToAnchor:v69];
    [v70 setActive:1];
  }

  return v5;
}

- (void)_setLabel:(id)a3 andPhoneNumber:(id)a4
{
  v8 = a4;
  [(UILabel *)self->_nameLabel setText:a3];
  if ([v8 length])
  {
    [(UILabel *)self->_numberLabel setText:v8];
  }

  else
  {
    v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v7 = [v6 localizedStringForKey:@"NO_NUMBER" value:&stru_287733598 table:@"Gemini-Gemini"];
    [(UILabel *)self->_numberLabel setText:v7];
  }
}

- (void)refreshCellContentsWithSpecifier:(id)a3
{
  v4 = a3;
  v27.receiver = self;
  v27.super_class = PSUIDanglingPlanTableCell;
  [(PSTableCell *)&v27 refreshCellContentsWithSpecifier:v4];
  v5 = [v4 propertyForKey:*MEMORY[0x277D3FE70]];
  v6 = +[PSUICellularPlanManagerCache sharedInstance];
  v7 = [v6 danglingPlanFromReference:v5];

  if (v7)
  {
    v26 = [v4 propertyForKey:*MEMORY[0x277D40128]];
    v8 = [v7 userLabel];
    v9 = [v8 label];

    if (![(__CFString *)v9 length])
    {
      v10 = +[PSUICellularPlanManagerCache sharedInstance];
      v11 = [v10 planFromReference:v5];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        v13 = +[PSUICellularPlanManagerCache sharedInstance];
        v14 = [v13 planFromReference:v5];

        if (![v14 type])
        {
          v15 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
          v16 = [v15 localizedStringForKey:@"CELLULAR_PLAN_STATUS_SIM_CARD" value:&stru_287733598 table:@"Cellular"];

          v9 = v16;
        }
      }
    }

    v17 = MEMORY[0x277CCACA8];
    v18 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v19 = [v18 localizedStringForKey:@"USED_AS_%@" value:&stru_287733598 table:@"Gemini-Gemini"];
    if (v9)
    {
      v20 = v9;
    }

    else
    {
      v20 = &stru_287733598;
    }

    v21 = [v17 stringWithFormat:v19, v20];

    v22 = +[PSUICoreTelephonyCallCache sharedInstance];
    v23 = [v7 phoneNumber];
    v24 = [v22 localizedPhoneNumber:v23 context:v26];

    if ([v4 hasValidGetter])
    {
      v25 = [v4 performGetter];
      if (v25)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [(UILabel *)self->_statusLabel setText:v25];
        }
      }
    }

    [(PSUIDanglingPlanTableCell *)self _setLabel:v21 andPhoneNumber:v24];
    [(PSUIDanglingPlanTableCell *)self setNeedsLayout];
  }
}

@end