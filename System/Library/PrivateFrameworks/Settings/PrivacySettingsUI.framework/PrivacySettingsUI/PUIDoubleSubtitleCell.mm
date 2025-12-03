@interface PUIDoubleSubtitleCell
- (PUIDoubleSubtitleCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)refreshCellContentsWithSpecifier:(id)specifier;
@end

@implementation PUIDoubleSubtitleCell

- (PUIDoubleSubtitleCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v52.receiver = self;
  v52.super_class = PUIDoubleSubtitleCell;
  v4 = [(PSTableCell *)&v52 initWithStyle:style reuseIdentifier:identifier];
  v5 = v4;
  if (v4)
  {
    [(PUIDoubleSubtitleCell *)v4 setTranslatesAutoresizingMaskIntoConstraints:0];
    titleLabel = [(PSTableCell *)v5 titleLabel];
    [titleLabel setHidden:1];

    detailTextLabel = [(PUIDoubleSubtitleCell *)v5 detailTextLabel];
    [detailTextLabel setHidden:1];

    contentView = [(PUIDoubleSubtitleCell *)v5 contentView];
    layoutMarginsGuide = [contentView layoutMarginsGuide];

    v10 = objc_opt_new();
    [v10 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v10 setAxis:1];
    contentView2 = [(PUIDoubleSubtitleCell *)v5 contentView];
    [contentView2 addSubview:v10];

    topAnchor = [v10 topAnchor];
    topAnchor2 = [layoutMarginsGuide topAnchor];
    v14 = [topAnchor constraintEqualToAnchor:topAnchor2];
    [v14 setActive:1];

    leadingAnchor = [v10 leadingAnchor];
    leadingAnchor2 = [layoutMarginsGuide leadingAnchor];
    v17 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    [v17 setActive:1];

    trailingAnchor = [v10 trailingAnchor];
    trailingAnchor2 = [layoutMarginsGuide trailingAnchor];
    v20 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    [v20 setActive:1];

    bottomAnchor = [v10 bottomAnchor];
    bottomAnchor2 = [layoutMarginsGuide bottomAnchor];
    v23 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    [v23 setActive:1];

    v24 = objc_opt_new();
    [(PUIDoubleSubtitleCell *)v5 setPrimaryLabel:v24];

    titleLabel2 = [(PSTableCell *)v5 titleLabel];
    font = [titleLabel2 font];
    primaryLabel = [(PUIDoubleSubtitleCell *)v5 primaryLabel];
    [primaryLabel setFont:font];

    titleLabel3 = [(PSTableCell *)v5 titleLabel];
    textColor = [titleLabel3 textColor];
    primaryLabel2 = [(PUIDoubleSubtitleCell *)v5 primaryLabel];
    [primaryLabel2 setTextColor:textColor];

    primaryLabel3 = [(PUIDoubleSubtitleCell *)v5 primaryLabel];
    [primaryLabel3 setTranslatesAutoresizingMaskIntoConstraints:0];

    primaryLabel4 = [(PUIDoubleSubtitleCell *)v5 primaryLabel];
    [v10 addArrangedSubview:primaryLabel4];

    v33 = objc_opt_new();
    [(PUIDoubleSubtitleCell *)v5 setSecondaryLabel:v33];

    detailTextLabel2 = [(PUIDoubleSubtitleCell *)v5 detailTextLabel];
    font2 = [detailTextLabel2 font];
    secondaryLabel = [(PUIDoubleSubtitleCell *)v5 secondaryLabel];
    [secondaryLabel setFont:font2];

    detailTextLabel3 = [(PUIDoubleSubtitleCell *)v5 detailTextLabel];
    textColor2 = [detailTextLabel3 textColor];
    secondaryLabel2 = [(PUIDoubleSubtitleCell *)v5 secondaryLabel];
    [secondaryLabel2 setTextColor:textColor2];

    secondaryLabel3 = [(PUIDoubleSubtitleCell *)v5 secondaryLabel];
    [secondaryLabel3 setTranslatesAutoresizingMaskIntoConstraints:0];

    secondaryLabel4 = [(PUIDoubleSubtitleCell *)v5 secondaryLabel];
    [v10 addArrangedSubview:secondaryLabel4];

    v42 = objc_opt_new();
    [(PUIDoubleSubtitleCell *)v5 setTertiaryLabel:v42];

    detailTextLabel4 = [(PUIDoubleSubtitleCell *)v5 detailTextLabel];
    font3 = [detailTextLabel4 font];
    tertiaryLabel = [(PUIDoubleSubtitleCell *)v5 tertiaryLabel];
    [tertiaryLabel setFont:font3];

    detailTextLabel5 = [(PUIDoubleSubtitleCell *)v5 detailTextLabel];
    textColor3 = [detailTextLabel5 textColor];
    tertiaryLabel2 = [(PUIDoubleSubtitleCell *)v5 tertiaryLabel];
    [tertiaryLabel2 setTextColor:textColor3];

    tertiaryLabel3 = [(PUIDoubleSubtitleCell *)v5 tertiaryLabel];
    [tertiaryLabel3 setTranslatesAutoresizingMaskIntoConstraints:0];

    tertiaryLabel4 = [(PUIDoubleSubtitleCell *)v5 tertiaryLabel];
    [v10 addArrangedSubview:tertiaryLabel4];
  }

  return v5;
}

- (void)refreshCellContentsWithSpecifier:(id)specifier
{
  v13.receiver = self;
  v13.super_class = PUIDoubleSubtitleCell;
  [(PSTableCell *)&v13 refreshCellContentsWithSpecifier:specifier];
  titleLabel = [(PSTableCell *)self titleLabel];
  text = [titleLabel text];
  primaryLabel = [(PUIDoubleSubtitleCell *)self primaryLabel];
  [primaryLabel setText:text];

  detailTextLabel = [(PUIDoubleSubtitleCell *)self detailTextLabel];
  text2 = [detailTextLabel text];
  secondaryLabel = [(PUIDoubleSubtitleCell *)self secondaryLabel];
  [secondaryLabel setText:text2];

  specifier = [(PSTableCell *)self specifier];
  v11 = [specifier objectForKeyedSubscript:@"PUIDoubleSubtitleCellTeritaryTextKey"];
  tertiaryLabel = [(PUIDoubleSubtitleCell *)self tertiaryLabel];
  [tertiaryLabel setText:v11];
}

@end