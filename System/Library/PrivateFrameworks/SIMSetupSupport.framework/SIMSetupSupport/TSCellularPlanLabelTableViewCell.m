@interface TSCellularPlanLabelTableViewCell
- (TSCellularPlanLabelTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)setLabel:(id)a3 badge:(id)a4;
- (void)setLabelWithNoBadge:(id)a3;
@end

@implementation TSCellularPlanLabelTableViewCell

- (TSCellularPlanLabelTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v26[2] = *MEMORY[0x277D85DE8];
  v25.receiver = self;
  v25.super_class = TSCellularPlanLabelTableViewCell;
  v4 = [(TSCellularPlanLabelTableViewCell *)&v25 initWithStyle:a3 reuseIdentifier:a4];
  if (v4)
  {
    v5 = objc_alloc(MEMORY[0x277D756B8]);
    v6 = [v5 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
    [(TSCellularPlanLabelTableViewCell *)v4 setLabel:v6];

    v7 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76918]];
    v8 = [(TSCellularPlanLabelTableViewCell *)v4 label];
    [v8 setFont:v7];

    v9 = [(TSCellularPlanLabelTableViewCell *)v4 label];
    [v9 setNumberOfLines:0];

    v10 = [(TSCellularPlanLabelTableViewCell *)v4 label];
    [v10 setTranslatesAutoresizingMaskIntoConstraints:0];

    v11 = [(TSCellularPlanLabelTableViewCell *)v4 contentView];
    v12 = [(TSCellularPlanLabelTableViewCell *)v4 label];
    [v11 addSubview:v12];

    v13 = [(TSCellularPlanLabelTableViewCell *)v4 contentView];
    v24 = [(TSCellularPlanLabelTableViewCell *)v4 label];
    v14 = [v24 centerYAnchor];
    v15 = [(TSCellularPlanLabelTableViewCell *)v4 contentView];
    v16 = [v15 centerYAnchor];
    v17 = [v14 constraintEqualToAnchor:v16];
    v26[0] = v17;
    v18 = [(TSCellularPlanLabelTableViewCell *)v4 contentView];
    v19 = [v18 heightAnchor];
    v20 = [v19 constraintGreaterThanOrEqualToConstant:45.0];
    v26[1] = v20;
    v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:2];
    [v13 addConstraints:v21];
  }

  v22 = *MEMORY[0x277D85DE8];
  return v4;
}

- (void)setLabelWithNoBadge:(id)a3
{
  v17[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(TSCellularPlanLabelTableViewCell *)self label];
  [v5 setText:v4];

  v6 = [(TSCellularPlanLabelTableViewCell *)self badge];

  if (v6)
  {
    v7 = [(TSCellularPlanLabelTableViewCell *)self badge];
    [v7 removeFromSuperview];
  }

  v8 = [(TSCellularPlanLabelTableViewCell *)self contentView];
  v9 = [(TSCellularPlanLabelTableViewCell *)self label];
  v10 = [v9 leadingAnchor];
  v11 = [(TSCellularPlanLabelTableViewCell *)self contentView];
  v12 = [v11 layoutMarginsGuide];
  v13 = [v12 leadingAnchor];
  v14 = [v10 constraintEqualToAnchor:v13];
  v17[0] = v14;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:1];
  [v8 addConstraints:v15];

  v16 = *MEMORY[0x277D85DE8];
}

- (void)setLabel:(id)a3 badge:(id)a4
{
  v52[1] = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = a3;
  v8 = [(TSCellularPlanLabelTableViewCell *)self label];
  [v8 setText:v7];

  v9 = [(TSCellularPlanLabelTableViewCell *)self badge];

  if (v9)
  {
    v10 = [(TSCellularPlanLabelTableViewCell *)self badge];
    [v10 removeFromSuperview];
  }

  v11 = [MEMORY[0x277CBDB08] badgeForText:v6];
  [(TSCellularPlanLabelTableViewCell *)self setBadge:v11];

  v51 = *MEMORY[0x277D74068];
  v12 = [MEMORY[0x277D75348] systemGrayColor];
  v52[0] = v12;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v52 forKeys:&v51 count:1];
  [(TSCellularPlanLabelTableViewCell *)self badge];
  v14 = v48 = v6;
  [v14 setViewAttributes:v13];

  v15 = [(TSCellularPlanLabelTableViewCell *)self contentView];
  v16 = [(TSCellularPlanLabelTableViewCell *)self badge];
  [v15 addSubview:v16];

  v49 = [(TSCellularPlanLabelTableViewCell *)self contentView];
  v47 = [(TSCellularPlanLabelTableViewCell *)self badge];
  v45 = [v47 leadingAnchor];
  v46 = [(TSCellularPlanLabelTableViewCell *)self contentView];
  v44 = [v46 layoutMarginsGuide];
  v43 = [v44 leadingAnchor];
  v42 = [v45 constraintEqualToAnchor:v43];
  v50[0] = v42;
  v41 = [(TSCellularPlanLabelTableViewCell *)self badge];
  v39 = [v41 trailingAnchor];
  v40 = [(TSCellularPlanLabelTableViewCell *)self label];
  v37 = [v40 leadingAnchor];
  v38 = [MEMORY[0x277D75520] defaultMetrics];
  [v38 scaledValueForValue:-4.0];
  v36 = [v39 constraintEqualToAnchor:v37 constant:?];
  v50[1] = v36;
  v35 = [(TSCellularPlanLabelTableViewCell *)self badge];
  v33 = [v35 bottomAnchor];
  v34 = [(TSCellularPlanLabelTableViewCell *)self label];
  v32 = [v34 firstBaselineAnchor];
  v31 = [v33 constraintEqualToAnchor:v32];
  v50[2] = v31;
  v17 = [(TSCellularPlanLabelTableViewCell *)self badge];
  v18 = [v17 widthAnchor];
  v19 = [v18 constraintLessThanOrEqualToConstant:300.0];
  v50[3] = v19;
  v20 = [(TSCellularPlanLabelTableViewCell *)self badge];
  v21 = [v20 centerYAnchor];
  v22 = [(TSCellularPlanLabelTableViewCell *)self contentView];
  v23 = [v22 centerYAnchor];
  v24 = [v21 constraintEqualToAnchor:v23];
  v50[4] = v24;
  v25 = [MEMORY[0x277CBEA60] arrayWithObjects:v50 count:5];
  [v49 addConstraints:v25];

  v26 = [(TSCellularPlanLabelTableViewCell *)self badge];
  v27 = [(TSCellularPlanLabelTableViewCell *)self label];
  [v27 contentHuggingPriorityForAxis:0];
  *&v29 = v28 + 1.0;
  [v26 setContentHuggingPriority:0 forAxis:v29];

  v30 = *MEMORY[0x277D85DE8];
}

@end