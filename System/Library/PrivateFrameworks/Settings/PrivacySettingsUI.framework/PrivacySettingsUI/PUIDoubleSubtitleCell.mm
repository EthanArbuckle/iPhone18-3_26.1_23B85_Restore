@interface PUIDoubleSubtitleCell
- (PUIDoubleSubtitleCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)refreshCellContentsWithSpecifier:(id)a3;
@end

@implementation PUIDoubleSubtitleCell

- (PUIDoubleSubtitleCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v52.receiver = self;
  v52.super_class = PUIDoubleSubtitleCell;
  v4 = [(PSTableCell *)&v52 initWithStyle:a3 reuseIdentifier:a4];
  v5 = v4;
  if (v4)
  {
    [(PUIDoubleSubtitleCell *)v4 setTranslatesAutoresizingMaskIntoConstraints:0];
    v6 = [(PSTableCell *)v5 titleLabel];
    [v6 setHidden:1];

    v7 = [(PUIDoubleSubtitleCell *)v5 detailTextLabel];
    [v7 setHidden:1];

    v8 = [(PUIDoubleSubtitleCell *)v5 contentView];
    v9 = [v8 layoutMarginsGuide];

    v10 = objc_opt_new();
    [v10 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v10 setAxis:1];
    v11 = [(PUIDoubleSubtitleCell *)v5 contentView];
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
    [(PUIDoubleSubtitleCell *)v5 setPrimaryLabel:v24];

    v25 = [(PSTableCell *)v5 titleLabel];
    v26 = [v25 font];
    v27 = [(PUIDoubleSubtitleCell *)v5 primaryLabel];
    [v27 setFont:v26];

    v28 = [(PSTableCell *)v5 titleLabel];
    v29 = [v28 textColor];
    v30 = [(PUIDoubleSubtitleCell *)v5 primaryLabel];
    [v30 setTextColor:v29];

    v31 = [(PUIDoubleSubtitleCell *)v5 primaryLabel];
    [v31 setTranslatesAutoresizingMaskIntoConstraints:0];

    v32 = [(PUIDoubleSubtitleCell *)v5 primaryLabel];
    [v10 addArrangedSubview:v32];

    v33 = objc_opt_new();
    [(PUIDoubleSubtitleCell *)v5 setSecondaryLabel:v33];

    v34 = [(PUIDoubleSubtitleCell *)v5 detailTextLabel];
    v35 = [v34 font];
    v36 = [(PUIDoubleSubtitleCell *)v5 secondaryLabel];
    [v36 setFont:v35];

    v37 = [(PUIDoubleSubtitleCell *)v5 detailTextLabel];
    v38 = [v37 textColor];
    v39 = [(PUIDoubleSubtitleCell *)v5 secondaryLabel];
    [v39 setTextColor:v38];

    v40 = [(PUIDoubleSubtitleCell *)v5 secondaryLabel];
    [v40 setTranslatesAutoresizingMaskIntoConstraints:0];

    v41 = [(PUIDoubleSubtitleCell *)v5 secondaryLabel];
    [v10 addArrangedSubview:v41];

    v42 = objc_opt_new();
    [(PUIDoubleSubtitleCell *)v5 setTertiaryLabel:v42];

    v43 = [(PUIDoubleSubtitleCell *)v5 detailTextLabel];
    v44 = [v43 font];
    v45 = [(PUIDoubleSubtitleCell *)v5 tertiaryLabel];
    [v45 setFont:v44];

    v46 = [(PUIDoubleSubtitleCell *)v5 detailTextLabel];
    v47 = [v46 textColor];
    v48 = [(PUIDoubleSubtitleCell *)v5 tertiaryLabel];
    [v48 setTextColor:v47];

    v49 = [(PUIDoubleSubtitleCell *)v5 tertiaryLabel];
    [v49 setTranslatesAutoresizingMaskIntoConstraints:0];

    v50 = [(PUIDoubleSubtitleCell *)v5 tertiaryLabel];
    [v10 addArrangedSubview:v50];
  }

  return v5;
}

- (void)refreshCellContentsWithSpecifier:(id)a3
{
  v13.receiver = self;
  v13.super_class = PUIDoubleSubtitleCell;
  [(PSTableCell *)&v13 refreshCellContentsWithSpecifier:a3];
  v4 = [(PSTableCell *)self titleLabel];
  v5 = [v4 text];
  v6 = [(PUIDoubleSubtitleCell *)self primaryLabel];
  [v6 setText:v5];

  v7 = [(PUIDoubleSubtitleCell *)self detailTextLabel];
  v8 = [v7 text];
  v9 = [(PUIDoubleSubtitleCell *)self secondaryLabel];
  [v9 setText:v8];

  v10 = [(PSTableCell *)self specifier];
  v11 = [v10 objectForKeyedSubscript:@"PUIDoubleSubtitleCellTeritaryTextKey"];
  v12 = [(PUIDoubleSubtitleCell *)self tertiaryLabel];
  [v12 setText:v11];
}

@end