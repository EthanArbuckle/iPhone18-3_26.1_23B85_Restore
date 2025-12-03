@interface PUITrackerCell
- (PUITrackerCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)refreshCellContentsWithSpecifier:(id)specifier;
@end

@implementation PUITrackerCell

- (PUITrackerCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v56.receiver = self;
  v56.super_class = PUITrackerCell;
  v4 = [(PSTableCell *)&v56 initWithStyle:style reuseIdentifier:identifier];
  v5 = v4;
  if (v4)
  {
    [(PUITrackerCell *)v4 setTranslatesAutoresizingMaskIntoConstraints:0];
    titleLabel = [(PSTableCell *)v5 titleLabel];
    [titleLabel setHidden:1];

    detailTextLabel = [(PUITrackerCell *)v5 detailTextLabel];
    [detailTextLabel setHidden:1];

    contentView = [(PUITrackerCell *)v5 contentView];
    layoutMarginsGuide = [contentView layoutMarginsGuide];

    v10 = objc_opt_new();
    [v10 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v10 setSpacing:8.0];
    contentView2 = [(PUITrackerCell *)v5 contentView];
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
    [(PUITrackerCell *)v5 setPrimaryLabel:v24];

    titleLabel2 = [(PSTableCell *)v5 titleLabel];
    font = [titleLabel2 font];
    primaryLabel = [(PUITrackerCell *)v5 primaryLabel];
    [primaryLabel setFont:font];

    titleLabel3 = [(PSTableCell *)v5 titleLabel];
    textColor = [titleLabel3 textColor];
    primaryLabel2 = [(PUITrackerCell *)v5 primaryLabel];
    [primaryLabel2 setTextColor:textColor];

    primaryLabel3 = [(PUITrackerCell *)v5 primaryLabel];
    [primaryLabel3 setTranslatesAutoresizingMaskIntoConstraints:0];

    primaryLabel4 = [(PUITrackerCell *)v5 primaryLabel];
    [v10 addArrangedSubview:primaryLabel4];

    v33 = objc_opt_new();
    [v33 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v33 setAxis:1];
    [v33 setSpacing:2.0];
    [v10 addArrangedSubview:v33];
    v34 = objc_opt_new();
    [(PUITrackerCell *)v5 setValueLabel:v34];

    detailTextLabel2 = [(PUITrackerCell *)v5 detailTextLabel];
    font2 = [detailTextLabel2 font];
    valueLabel = [(PUITrackerCell *)v5 valueLabel];
    [valueLabel setFont:font2];

    detailTextLabel3 = [(PUITrackerCell *)v5 detailTextLabel];
    textColor2 = [detailTextLabel3 textColor];
    valueLabel2 = [(PUITrackerCell *)v5 valueLabel];
    [valueLabel2 setTextColor:textColor2];

    valueLabel3 = [(PUITrackerCell *)v5 valueLabel];
    [valueLabel3 setTranslatesAutoresizingMaskIntoConstraints:0];

    valueLabel4 = [(PUITrackerCell *)v5 valueLabel];
    [valueLabel4 setTextAlignment:2];

    valueLabel5 = [(PUITrackerCell *)v5 valueLabel];
    [valueLabel5 setNumberOfLines:0];

    valueLabel6 = [(PUITrackerCell *)v5 valueLabel];
    [v33 addArrangedSubview:valueLabel6];

    v45 = objc_opt_new();
    [(PUITrackerCell *)v5 setSubtitleLabel:v45];

    v46 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76968]];
    subtitleLabel = [(PUITrackerCell *)v5 subtitleLabel];
    [subtitleLabel setFont:v46];

    detailTextLabel4 = [(PUITrackerCell *)v5 detailTextLabel];
    textColor3 = [detailTextLabel4 textColor];
    subtitleLabel2 = [(PUITrackerCell *)v5 subtitleLabel];
    [subtitleLabel2 setTextColor:textColor3];

    subtitleLabel3 = [(PUITrackerCell *)v5 subtitleLabel];
    [subtitleLabel3 setTranslatesAutoresizingMaskIntoConstraints:0];

    subtitleLabel4 = [(PUITrackerCell *)v5 subtitleLabel];
    [subtitleLabel4 setTextAlignment:2];

    subtitleLabel5 = [(PUITrackerCell *)v5 subtitleLabel];
    [subtitleLabel5 setNumberOfLines:0];

    subtitleLabel6 = [(PUITrackerCell *)v5 subtitleLabel];
    [v33 addArrangedSubview:subtitleLabel6];
  }

  return v5;
}

- (void)refreshCellContentsWithSpecifier:(id)specifier
{
  v13.receiver = self;
  v13.super_class = PUITrackerCell;
  [(PSTableCell *)&v13 refreshCellContentsWithSpecifier:specifier];
  titleLabel = [(PSTableCell *)self titleLabel];
  text = [titleLabel text];
  primaryLabel = [(PUITrackerCell *)self primaryLabel];
  [primaryLabel setText:text];

  detailTextLabel = [(PUITrackerCell *)self detailTextLabel];
  text2 = [detailTextLabel text];
  valueLabel = [(PUITrackerCell *)self valueLabel];
  [valueLabel setText:text2];

  specifier = [(PSTableCell *)self specifier];
  v11 = [specifier objectForKeyedSubscript:@"PUITrackerCellSubtitleTextKey"];
  subtitleLabel = [(PUITrackerCell *)self subtitleLabel];
  [subtitleLabel setText:v11];
}

@end