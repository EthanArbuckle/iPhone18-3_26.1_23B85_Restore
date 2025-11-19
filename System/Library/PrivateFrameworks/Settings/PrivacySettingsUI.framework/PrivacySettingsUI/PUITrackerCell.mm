@interface PUITrackerCell
- (PUITrackerCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)refreshCellContentsWithSpecifier:(id)a3;
@end

@implementation PUITrackerCell

- (PUITrackerCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v56.receiver = self;
  v56.super_class = PUITrackerCell;
  v4 = [(PSTableCell *)&v56 initWithStyle:a3 reuseIdentifier:a4];
  v5 = v4;
  if (v4)
  {
    [(PUITrackerCell *)v4 setTranslatesAutoresizingMaskIntoConstraints:0];
    v6 = [(PSTableCell *)v5 titleLabel];
    [v6 setHidden:1];

    v7 = [(PUITrackerCell *)v5 detailTextLabel];
    [v7 setHidden:1];

    v8 = [(PUITrackerCell *)v5 contentView];
    v9 = [v8 layoutMarginsGuide];

    v10 = objc_opt_new();
    [v10 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v10 setSpacing:8.0];
    v11 = [(PUITrackerCell *)v5 contentView];
    [v11 addSubview:v10];

    v12 = [v10 topAnchor];
    v13 = [v9 topAnchor];
    v14 = [v12 constraintEqualToAnchor:v13];
    [v14 setActive:1];

    v15 = [v10 leadingAnchor];
    v16 = [v9 leadingAnchor];
    v17 = [v15 constraintEqualToAnchor:v16];
    [v17 setActive:1];

    v18 = [v10 trailingAnchor];
    v19 = [v9 trailingAnchor];
    v20 = [v18 constraintEqualToAnchor:v19];
    [v20 setActive:1];

    v21 = [v10 bottomAnchor];
    v22 = [v9 bottomAnchor];
    v23 = [v21 constraintEqualToAnchor:v22];
    [v23 setActive:1];

    v24 = objc_opt_new();
    [(PUITrackerCell *)v5 setPrimaryLabel:v24];

    v25 = [(PSTableCell *)v5 titleLabel];
    v26 = [v25 font];
    v27 = [(PUITrackerCell *)v5 primaryLabel];
    [v27 setFont:v26];

    v28 = [(PSTableCell *)v5 titleLabel];
    v29 = [v28 textColor];
    v30 = [(PUITrackerCell *)v5 primaryLabel];
    [v30 setTextColor:v29];

    v31 = [(PUITrackerCell *)v5 primaryLabel];
    [v31 setTranslatesAutoresizingMaskIntoConstraints:0];

    v32 = [(PUITrackerCell *)v5 primaryLabel];
    [v10 addArrangedSubview:v32];

    v33 = objc_opt_new();
    [v33 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v33 setAxis:1];
    [v33 setSpacing:2.0];
    [v10 addArrangedSubview:v33];
    v34 = objc_opt_new();
    [(PUITrackerCell *)v5 setValueLabel:v34];

    v35 = [(PUITrackerCell *)v5 detailTextLabel];
    v36 = [v35 font];
    v37 = [(PUITrackerCell *)v5 valueLabel];
    [v37 setFont:v36];

    v38 = [(PUITrackerCell *)v5 detailTextLabel];
    v39 = [v38 textColor];
    v40 = [(PUITrackerCell *)v5 valueLabel];
    [v40 setTextColor:v39];

    v41 = [(PUITrackerCell *)v5 valueLabel];
    [v41 setTranslatesAutoresizingMaskIntoConstraints:0];

    v42 = [(PUITrackerCell *)v5 valueLabel];
    [v42 setTextAlignment:2];

    v43 = [(PUITrackerCell *)v5 valueLabel];
    [v43 setNumberOfLines:0];

    v44 = [(PUITrackerCell *)v5 valueLabel];
    [v33 addArrangedSubview:v44];

    v45 = objc_opt_new();
    [(PUITrackerCell *)v5 setSubtitleLabel:v45];

    v46 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76968]];
    v47 = [(PUITrackerCell *)v5 subtitleLabel];
    [v47 setFont:v46];

    v48 = [(PUITrackerCell *)v5 detailTextLabel];
    v49 = [v48 textColor];
    v50 = [(PUITrackerCell *)v5 subtitleLabel];
    [v50 setTextColor:v49];

    v51 = [(PUITrackerCell *)v5 subtitleLabel];
    [v51 setTranslatesAutoresizingMaskIntoConstraints:0];

    v52 = [(PUITrackerCell *)v5 subtitleLabel];
    [v52 setTextAlignment:2];

    v53 = [(PUITrackerCell *)v5 subtitleLabel];
    [v53 setNumberOfLines:0];

    v54 = [(PUITrackerCell *)v5 subtitleLabel];
    [v33 addArrangedSubview:v54];
  }

  return v5;
}

- (void)refreshCellContentsWithSpecifier:(id)a3
{
  v13.receiver = self;
  v13.super_class = PUITrackerCell;
  [(PSTableCell *)&v13 refreshCellContentsWithSpecifier:a3];
  v4 = [(PSTableCell *)self titleLabel];
  v5 = [v4 text];
  v6 = [(PUITrackerCell *)self primaryLabel];
  [v6 setText:v5];

  v7 = [(PUITrackerCell *)self detailTextLabel];
  v8 = [v7 text];
  v9 = [(PUITrackerCell *)self valueLabel];
  [v9 setText:v8];

  v10 = [(PSTableCell *)self specifier];
  v11 = [v10 objectForKeyedSubscript:@"PUITrackerCellSubtitleTextKey"];
  v12 = [(PUITrackerCell *)self subtitleLabel];
  [v12 setText:v11];
}

@end