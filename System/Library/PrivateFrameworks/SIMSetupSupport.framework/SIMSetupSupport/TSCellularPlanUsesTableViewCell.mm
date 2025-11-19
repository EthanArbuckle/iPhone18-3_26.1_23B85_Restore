@interface TSCellularPlanUsesTableViewCell
- (TSCellularPlanUsesTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)setLabel:(id)a3 description:(id)a4 badge:(id)a5;
@end

@implementation TSCellularPlanUsesTableViewCell

- (TSCellularPlanUsesTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v60[5] = *MEMORY[0x277D85DE8];
  v59.receiver = self;
  v59.super_class = TSCellularPlanUsesTableViewCell;
  v4 = [(TSCellularPlanUsesTableViewCell *)&v59 initWithStyle:a3 reuseIdentifier:a4];
  if (v4)
  {
    v5 = objc_alloc(MEMORY[0x277D756B8]);
    v6 = *MEMORY[0x277CBF3A0];
    v7 = *(MEMORY[0x277CBF3A0] + 8);
    v8 = *(MEMORY[0x277CBF3A0] + 16);
    v9 = *(MEMORY[0x277CBF3A0] + 24);
    v10 = [v5 initWithFrame:{*MEMORY[0x277CBF3A0], v7, v8, v9}];
    [(TSCellularPlanUsesTableViewCell *)v4 setTitleLabel:v10];

    v11 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76918]];
    v12 = [(TSCellularPlanUsesTableViewCell *)v4 titleLabel];
    [v12 setFont:v11];

    v13 = [(TSCellularPlanUsesTableViewCell *)v4 titleLabel];
    [v13 setNumberOfLines:0];

    v14 = [(TSCellularPlanUsesTableViewCell *)v4 titleLabel];
    [v14 setTranslatesAutoresizingMaskIntoConstraints:0];

    v15 = [objc_alloc(MEMORY[0x277D756B8]) initWithFrame:{v6, v7, v8, v9}];
    [(TSCellularPlanUsesTableViewCell *)v4 setDescriptionLabel:v15];

    v16 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76968]];
    v17 = [(TSCellularPlanUsesTableViewCell *)v4 descriptionLabel];
    [v17 setFont:v16];

    v18 = [MEMORY[0x277D75348] systemGrayColor];
    v19 = [(TSCellularPlanUsesTableViewCell *)v4 descriptionLabel];
    [v19 setTextColor:v18];

    v20 = [(TSCellularPlanUsesTableViewCell *)v4 descriptionLabel];
    [v20 setNumberOfLines:0];

    v21 = [(TSCellularPlanUsesTableViewCell *)v4 descriptionLabel];
    [v21 setTranslatesAutoresizingMaskIntoConstraints:0];

    v22 = [(TSCellularPlanUsesTableViewCell *)v4 contentView];
    [v22 setLayoutMargins:{0.0, 25.0, 0.0, 25.0}];

    v23 = [(TSCellularPlanUsesTableViewCell *)v4 contentView];
    v24 = [(TSCellularPlanUsesTableViewCell *)v4 titleLabel];
    [v23 addSubview:v24];

    v25 = [(TSCellularPlanUsesTableViewCell *)v4 contentView];
    v26 = [(TSCellularPlanUsesTableViewCell *)v4 descriptionLabel];
    [v25 addSubview:v26];

    v47 = MEMORY[0x277CCAAD0];
    v58 = [(TSCellularPlanUsesTableViewCell *)v4 titleLabel];
    v56 = [v58 topAnchor];
    v57 = [(TSCellularPlanUsesTableViewCell *)v4 contentView];
    v54 = [v57 topAnchor];
    v55 = [MEMORY[0x277D75520] defaultMetrics];
    [v55 scaledValueForValue:12.0];
    v53 = [v56 constraintEqualToAnchor:v54 constant:?];
    v60[0] = v53;
    v52 = [(TSCellularPlanUsesTableViewCell *)v4 descriptionLabel];
    v50 = [v52 topAnchor];
    v51 = [(TSCellularPlanUsesTableViewCell *)v4 titleLabel];
    v49 = [v51 bottomAnchor];
    v48 = [v50 constraintEqualToAnchor:v49];
    v60[1] = v48;
    v46 = [(TSCellularPlanUsesTableViewCell *)v4 descriptionLabel];
    v44 = [v46 leadingAnchor];
    v45 = [(TSCellularPlanUsesTableViewCell *)v4 contentView];
    v43 = [v45 layoutMarginsGuide];
    v42 = [v43 leadingAnchor];
    v41 = [v44 constraintEqualToAnchor:v42];
    v60[2] = v41;
    v40 = [(TSCellularPlanUsesTableViewCell *)v4 descriptionLabel];
    v38 = [v40 trailingAnchor];
    v39 = [(TSCellularPlanUsesTableViewCell *)v4 contentView];
    v27 = [v39 trailingAnchor];
    v28 = [v38 constraintEqualToAnchor:v27];
    v60[3] = v28;
    v29 = [(TSCellularPlanUsesTableViewCell *)v4 contentView];
    v30 = [v29 bottomAnchor];
    v31 = [(TSCellularPlanUsesTableViewCell *)v4 descriptionLabel];
    v32 = [v31 bottomAnchor];
    v33 = [MEMORY[0x277D75520] defaultMetrics];
    [v33 scaledValueForValue:12.0];
    v34 = [v30 constraintEqualToAnchor:v32 constant:?];
    v60[4] = v34;
    v35 = [MEMORY[0x277CBEA60] arrayWithObjects:v60 count:5];
    [v47 activateConstraints:v35];
  }

  v36 = *MEMORY[0x277D85DE8];
  return v4;
}

- (void)setLabel:(id)a3 description:(id)a4 badge:(id)a5
{
  v54[1] = *MEMORY[0x277D85DE8];
  v8 = a4;
  v9 = a5;
  v10 = a3;
  v11 = [(TSCellularPlanUsesTableViewCell *)self titleLabel];
  [v11 setText:v10];

  v12 = [(TSCellularPlanUsesTableViewCell *)self badge];

  if (v12)
  {
    v13 = [(TSCellularPlanUsesTableViewCell *)self badge];
    [v13 removeFromSuperview];
  }

  v50 = v9;
  v14 = [MEMORY[0x277CBDB08] badgeForText:v9];
  [(TSCellularPlanUsesTableViewCell *)self setBadge:v14];

  v53 = *MEMORY[0x277D74068];
  v15 = [MEMORY[0x277D75348] systemGrayColor];
  v54[0] = v15;
  v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v54 forKeys:&v53 count:1];
  v17 = [(TSCellularPlanUsesTableViewCell *)self badge];
  [v17 setViewAttributes:v16];

  v18 = [(TSCellularPlanUsesTableViewCell *)self contentView];
  v19 = [(TSCellularPlanUsesTableViewCell *)self badge];
  [v18 addSubview:v19];

  v49 = v8;
  if (v8)
  {
    v20 = [(TSCellularPlanUsesTableViewCell *)self descriptionLabel];
    [v20 setText:v8];
  }

  else
  {
    v21 = [(TSCellularPlanUsesTableViewCell *)self titleLabel];
    [v21 setTextAlignment:1];

    v20 = [(TSCellularPlanUsesTableViewCell *)self contentView];
    v22 = [(TSCellularPlanUsesTableViewCell *)self titleLabel];
    [v20 addSubview:v22];
  }

  v51 = [(TSCellularPlanUsesTableViewCell *)self contentView];
  v48 = [(TSCellularPlanUsesTableViewCell *)self badge];
  v46 = [v48 leadingAnchor];
  v47 = [(TSCellularPlanUsesTableViewCell *)self contentView];
  v45 = [v47 layoutMarginsGuide];
  v44 = [v45 leadingAnchor];
  v43 = [v46 constraintEqualToAnchor:v44];
  v52[0] = v43;
  v42 = [(TSCellularPlanUsesTableViewCell *)self badge];
  v40 = [v42 trailingAnchor];
  v41 = [(TSCellularPlanUsesTableViewCell *)self titleLabel];
  v38 = [v41 leadingAnchor];
  v39 = [MEMORY[0x277D75520] defaultMetrics];
  [v39 scaledValueForValue:-4.0];
  v37 = [v40 constraintEqualToAnchor:v38 constant:?];
  v52[1] = v37;
  v23 = [(TSCellularPlanUsesTableViewCell *)self badge];
  v24 = [v23 centerYAnchor];
  v25 = [(TSCellularPlanUsesTableViewCell *)self titleLabel];
  v26 = [v25 centerYAnchor];
  v27 = [v24 constraintEqualToAnchor:v26];
  v52[2] = v27;
  v28 = [(TSCellularPlanUsesTableViewCell *)self badge];
  v29 = [v28 widthAnchor];
  v30 = [v29 constraintLessThanOrEqualToConstant:300.0];
  v52[3] = v30;
  v31 = [MEMORY[0x277CBEA60] arrayWithObjects:v52 count:4];
  [v51 addConstraints:v31];

  v32 = [(TSCellularPlanUsesTableViewCell *)self badge];
  v33 = [(TSCellularPlanUsesTableViewCell *)self titleLabel];
  [v33 contentHuggingPriorityForAxis:0];
  *&v35 = v34 + 1.0;
  [v32 setContentHuggingPriority:0 forAxis:v35];

  v36 = *MEMORY[0x277D85DE8];
}

@end