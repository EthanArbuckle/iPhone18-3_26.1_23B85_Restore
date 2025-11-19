@interface TSCellularPlanRemapTableViewCell
- (TSCellularPlanRemapTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
@end

@implementation TSCellularPlanRemapTableViewCell

- (TSCellularPlanRemapTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v44[4] = *MEMORY[0x277D85DE8];
  v43.receiver = self;
  v43.super_class = TSCellularPlanRemapTableViewCell;
  v4 = [(TSCellularPlanRemapTableViewCell *)&v43 initWithStyle:a3 reuseIdentifier:a4];
  if (v4)
  {
    v5 = objc_alloc(MEMORY[0x277D756B8]);
    v6 = [v5 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
    [(TSCellularPlanRemapTableViewCell *)v4 setTitleLabel:v6];

    v7 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76918]];
    v8 = [(TSCellularPlanRemapTableViewCell *)v4 titleLabel];
    [v8 setFont:v7];

    v9 = [(TSCellularPlanRemapTableViewCell *)v4 titleLabel];
    [v9 setNumberOfLines:0];

    v10 = [(TSCellularPlanRemapTableViewCell *)v4 titleLabel];
    [v10 setTranslatesAutoresizingMaskIntoConstraints:0];

    v11 = [(TSCellularPlanRemapTableViewCell *)v4 contentView];
    [v11 setLayoutMargins:{0.0, 25.0, 0.0, 25.0}];

    v12 = [(TSCellularPlanRemapTableViewCell *)v4 contentView];
    v13 = [(TSCellularPlanRemapTableViewCell *)v4 titleLabel];
    [v12 addSubview:v13];

    v33 = MEMORY[0x277CCAAD0];
    v42 = [(TSCellularPlanRemapTableViewCell *)v4 titleLabel];
    v40 = [v42 topAnchor];
    v41 = [(TSCellularPlanRemapTableViewCell *)v4 contentView];
    v38 = [v41 topAnchor];
    v39 = [MEMORY[0x277D75520] defaultMetrics];
    [v39 scaledValueForValue:20.0];
    v37 = [v40 constraintEqualToAnchor:v38 constant:?];
    v44[0] = v37;
    v36 = [(TSCellularPlanRemapTableViewCell *)v4 contentView];
    v34 = [v36 bottomAnchor];
    v35 = [(TSCellularPlanRemapTableViewCell *)v4 titleLabel];
    v31 = [v35 bottomAnchor];
    v32 = [MEMORY[0x277D75520] defaultMetrics];
    [v32 scaledValueForValue:20.0];
    v30 = [v34 constraintEqualToAnchor:v31 constant:?];
    v44[1] = v30;
    v29 = [(TSCellularPlanRemapTableViewCell *)v4 titleLabel];
    v27 = [v29 leadingAnchor];
    v28 = [(TSCellularPlanRemapTableViewCell *)v4 contentView];
    v26 = [v28 layoutMarginsGuide];
    v25 = [v26 leadingAnchor];
    v14 = [v27 constraintEqualToAnchor:v25];
    v44[2] = v14;
    v15 = [(TSCellularPlanRemapTableViewCell *)v4 titleLabel];
    v16 = [v15 trailingAnchor];
    v17 = [(TSCellularPlanRemapTableViewCell *)v4 contentView];
    v18 = [v17 layoutMarginsGuide];
    v19 = [v18 trailingAnchor];
    v20 = [MEMORY[0x277D75520] defaultMetrics];
    [v20 scaledValueForValue:-30.0];
    v21 = [v16 constraintEqualToAnchor:v19 constant:?];
    v44[3] = v21;
    v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v44 count:4];
    [v33 activateConstraints:v22];
  }

  v23 = *MEMORY[0x277D85DE8];
  return v4;
}

@end