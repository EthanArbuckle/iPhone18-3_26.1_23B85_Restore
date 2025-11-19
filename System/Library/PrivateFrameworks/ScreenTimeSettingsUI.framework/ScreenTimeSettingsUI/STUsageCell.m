@interface STUsageCell
- (STUsageCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 specifier:(id)a5;
- (id)value;
- (void)_didFetchAppInfoOrIcon:(id)a3;
- (void)refreshCellContentsWithSpecifier:(id)a3;
- (void)setValue:(id)a3;
@end

@implementation STUsageCell

- (STUsageCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 specifier:(id)a5
{
  v93[2] = *MEMORY[0x277D85DE8];
  v8 = a5;
  v91.receiver = self;
  v91.super_class = STUsageCell;
  v9 = [(STTableCell *)&v91 initWithStyle:a3 reuseIdentifier:a4 specifier:v8];
  v10 = v9;
  if (v9)
  {
    v11 = [(STUsageCell *)v9 contentView];
    v88 = [MEMORY[0x277D755B8] systemImageNamed:@"exclamationmark.triangle.fill"];
    v12 = [objc_alloc(MEMORY[0x277D755E8]) initWithImage:v88];
    trustWarningImageView = v10->_trustWarningImageView;
    v10->_trustWarningImageView = v12;

    v14 = [MEMORY[0x277D75348] systemYellowColor];
    [(UIImageView *)v10->_trustWarningImageView setTintColor:v14];

    [(UIImageView *)v10->_trustWarningImageView setHidden:1];
    v15 = objc_opt_new();
    itemNameLabel = v10->_itemNameLabel;
    v10->_itemNameLabel = v15;

    v17 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76918]];
    [(UILabel *)v10->_itemNameLabel setFont:v17];

    LODWORD(v18) = 1148846080;
    [(UILabel *)v10->_itemNameLabel setContentCompressionResistancePriority:1 forAxis:v18];
    v19 = objc_alloc(MEMORY[0x277D75A68]);
    v93[0] = v10->_trustWarningImageView;
    v93[1] = v10->_itemNameLabel;
    v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v93 count:2];
    v21 = [v19 initWithArrangedSubviews:v20];

    [v21 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v21 setSpacing:1.17549435e-38];
    [v11 addSubview:v21];
    v22 = objc_opt_new();
    usageLabel = v10->_usageLabel;
    v10->_usageLabel = v22;

    [(UILabel *)v10->_usageLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    v24 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76968]];
    [(UILabel *)v10->_usageLabel setFont:v24];

    v25 = [MEMORY[0x277D75348] tertiaryLabelColor];
    [(UILabel *)v10->_usageLabel setTextColor:v25];

    [v11 addSubview:v10->_usageLabel];
    v26 = [[STCandyBarView alloc] initWithVibrancy:0];
    usageBarView = v10->_usageBarView;
    v10->_usageBarView = v26;

    [(STCandyBarView *)v10->_usageBarView setTranslatesAutoresizingMaskIntoConstraints:0];
    v28 = objc_opt_new();
    [v28 setTotalUsage:&unk_28769D610];
    v89 = v8;
    v29 = [v8 objectForKeyedSubscript:@"STUsageBarColorKey"];
    if (v29)
    {
      [v28 setColor:v29];
    }

    else
    {
      v30 = [MEMORY[0x277D75348] systemGray4Color];
      [v28 setColor:v30];
    }

    v87 = v28;
    v92 = v28;
    v31 = [MEMORY[0x277CBEA60] arrayWithObjects:&v92 count:1];
    [(STCandyBarView *)v10->_usageBarView setUsageItems:v31];

    [v11 addSubview:v10->_usageBarView];
    v90 = [(STTableCell *)v10 contentLayoutGuide];
    v32 = objc_opt_new();
    v33 = [v11 bottomAnchor];
    v34 = [(STCandyBarView *)v10->_usageBarView bottomAnchor];
    v35 = [v33 constraintGreaterThanOrEqualToAnchor:v34 constant:7.0];
    [v32 addObject:v35];

    v36 = [v11 bottomAnchor];
    v37 = [(UILabel *)v10->_usageLabel bottomAnchor];
    v38 = [v36 constraintGreaterThanOrEqualToAnchor:v37 constant:7.0];
    [v32 addObject:v38];

    v39 = [v11 heightAnchor];
    v40 = [v39 constraintEqualToConstant:52.0];
    [v32 addObject:v40];

    v41 = [v21 topAnchor];
    v42 = [v11 topAnchor];
    v43 = [v41 constraintEqualToAnchor:v42 constant:7.0];
    [v32 addObject:v43];

    v44 = [v21 bottomAnchor];
    v45 = [(STCandyBarView *)v10->_usageBarView topAnchor];
    v46 = [v44 constraintLessThanOrEqualToAnchor:v45];
    [v32 addObject:v46];

    v47 = [v21 bottomAnchor];
    v48 = [(UILabel *)v10->_usageLabel topAnchor];
    v49 = [v47 constraintLessThanOrEqualToAnchor:v48];
    [v32 addObject:v49];

    v50 = [(STCandyBarView *)v10->_usageBarView leadingAnchor];
    v51 = [v21 leadingAnchor];
    v52 = [v50 constraintEqualToAnchor:v51];
    [v32 addObject:v52];

    v53 = [(STCandyBarView *)v10->_usageBarView heightAnchor];
    v54 = [v53 constraintEqualToConstant:5.0];
    [v32 addObject:v54];

    v55 = [(STCandyBarView *)v10->_usageBarView widthAnchor];
    v56 = [v55 constraintGreaterThanOrEqualToConstant:5.0];
    [v32 addObject:v56];

    v57 = [(STCandyBarView *)v10->_usageBarView bottomAnchor];
    v58 = [v11 bottomAnchor];
    v59 = [v57 constraintLessThanOrEqualToAnchor:v58];
    [v32 addObject:v59];

    v60 = [(STCandyBarView *)v10->_usageBarView widthAnchor];
    v61 = [v60 constraintEqualToConstant:5.0];
    usageBarWidthConstraint = v10->_usageBarWidthConstraint;
    v10->_usageBarWidthConstraint = v61;

    LODWORD(v63) = 1132068864;
    [(NSLayoutConstraint *)v10->_usageBarWidthConstraint setPriority:v63];
    [v32 addObject:v10->_usageBarWidthConstraint];
    v64 = [(STCandyBarView *)v10->_usageBarView centerYAnchor];
    v65 = [v11 centerYAnchor];
    v66 = [v64 constraintEqualToAnchor:v65 constant:12.0];

    LODWORD(v67) = 1144750080;
    [v66 setPriority:v67];
    [v32 addObject:v66];
    v68 = [(UILabel *)v10->_usageLabel centerYAnchor];
    v69 = [(STCandyBarView *)v10->_usageBarView centerYAnchor];
    v70 = [v68 constraintEqualToAnchor:v69];
    [v32 addObject:v70];

    v71 = [(UILabel *)v10->_usageLabel leadingAnchor];
    v72 = [(STCandyBarView *)v10->_usageBarView trailingAnchor];
    v73 = [v71 constraintEqualToAnchor:v72 constant:6.0];
    [v32 addObject:v73];

    v74 = [(UILabel *)v10->_usageLabel trailingAnchor];
    v75 = [v11 trailingAnchor];
    v76 = [v74 constraintEqualToAnchor:v75];

    LODWORD(v77) = 1132068864;
    [v76 setPriority:v77];
    [v32 addObject:v76];
    v78 = [*MEMORY[0x277D76620] preferredContentSizeCategory];
    LODWORD(v73) = UIContentSizeCategoryIsAccessibilityCategory(v78);

    v79 = [v21 leadingAnchor];
    if (v73)
    {
      v80 = [(PSTableCell *)v10 iconImageView];
      v81 = [v80 trailingAnchor];
      v82 = [v79 constraintEqualToSystemSpacingAfterAnchor:v81 multiplier:2.0];
      [v32 addObject:v82];
    }

    else
    {
      v80 = [v90 leadingAnchor];
      v81 = [v79 constraintEqualToAnchor:v80];
      [v32 addObject:v81];
    }

    v83 = [(UIImageView *)v10->_trustWarningImageView widthAnchor];
    v84 = [(UIImageView *)v10->_trustWarningImageView heightAnchor];
    v85 = [v83 constraintEqualToAnchor:v84 multiplier:1.0];
    [v32 addObject:v85];

    [MEMORY[0x277CCAAD0] activateConstraints:v32];
    v8 = v89;
  }

  return v10;
}

- (id)value
{
  v4.receiver = self;
  v4.super_class = STUsageCell;
  v2 = [(PSTableCell *)&v4 value];

  return v2;
}

- (void)setValue:(id)a3
{
  v5 = a3;
  if (v5)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_30;
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [(STUsageCell *)a2 setValue:?];
    }
  }

  v6 = [(STUsageCell *)self value];
  v26.receiver = self;
  v26.super_class = STUsageCell;
  [(PSTableCell *)&v26 setValue:v5];
  v7 = [v6 itemType];
  v8 = MEMORY[0x277D4BC98];
  if (v7 == 4)
  {
    v9 = *MEMORY[0x277D4BC98];
  }

  else
  {
    v9 = [v6 budgetItemIdentifier];
  }

  v10 = v9;
  v11 = [v5 itemType];
  if (v11 == 4)
  {
    v12 = *v8;
  }

  else
  {
    v12 = [v5 budgetItemIdentifier];
  }

  v13 = v12;
  if (v12 != v10)
  {
    v14 = [MEMORY[0x277D4BD98] sharedCache];
    v15 = [MEMORY[0x277D4B8C0] sharedCache];
    v16 = 1;
    if (v7 <= 6 && ((1 << v7) & 0x74) != 0)
    {
      if ([v13 isEqualToString:v10])
      {
        v16 = 0;
      }

      else
      {
        [v14 removeObserver:self bundleIdentifier:v10];
        if (v7 != 4)
        {
          [v15 removeObserver:self bundleIdentifier:v10];
        }

        v16 = 1;
      }
    }

    if (v11 <= 6 && ((1 << v11) & 0x74) != 0)
    {
      if (v16)
      {
        [v14 addObserver:self selector:sel__didFetchAppInfoOrIcon_ bundleIdentifier:v13];
        if (v11 != 4)
        {
          [v15 addObserver:self selector:sel__didFetchAppInfoOrIcon_ bundleIdentifier:v13];
        }
      }
    }
  }

  v17 = [v5 maxUsage];
  [v17 doubleValue];
  v19 = v18;

  if (v19 < 1.0)
  {
    v19 = 1.0;
  }

  v20 = [v5 totalUsage];
  [v20 doubleValue];
  v22 = v21 / v19 * 198.0;

  if (v22 < 5.0)
  {
    v22 = 5.0;
  }

  v23 = [(STUsageCell *)self usageBarWidthConstraint];
  [v23 setConstant:v22];

  v24 = [v5 usageTrusted];
  v25 = [(STUsageCell *)self trustWarningImageView];
  [v25 setHidden:v24];

LABEL_30:
}

- (void)refreshCellContentsWithSpecifier:(id)a3
{
  v9.receiver = self;
  v9.super_class = STUsageCell;
  [(PSTableCell *)&v9 refreshCellContentsWithSpecifier:a3];
  v4 = [(STUsageCell *)self value];
  v5 = [v4 budgetItemIdentifier];
  if (v5)
  {
    v6 = [v4 displayName];
    v7 = [v4 image];
  }

  else
  {
    v6 = 0;
    v7 = 0;
  }

  v8 = [(STUsageCell *)self itemNameLabel];
  [v8 setText:v6];

  [(PSTableCell *)self setIcon:v7];
  [(STUsageCell *)self setNeedsLayout];
}

- (void)_didFetchAppInfoOrIcon:(id)a3
{
  v4 = [(PSTableCell *)self specifier];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
    v4 = [(STUsageCell *)self refreshCellContentsWithSpecifier:v4];
    v5 = v6;
  }

  MEMORY[0x2821F96F8](v4, v5);
}

- (void)setValue:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"STUsageCell.m" lineNumber:122 description:{@"Invalid parameter not satisfying: %@", @"(usageItem == nil) || [usageItem isKindOfClass:[STUsageItem class]]"}];
}

@end