@interface PUITrackerNoDataCell
- (PUITrackerNoDataCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
@end

@implementation PUITrackerNoDataCell

- (PUITrackerNoDataCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v31.receiver = self;
  v31.super_class = PUITrackerNoDataCell;
  v4 = [(PSTableCell *)&v31 initWithStyle:style reuseIdentifier:identifier];
  v5 = v4;
  if (v4)
  {
    titleLabel = [(PSTableCell *)v4 titleLabel];
    [titleLabel setHidden:1];

    detailTextLabel = [(PUITrackerNoDataCell *)v5 detailTextLabel];
    [detailTextLabel setHidden:1];

    contentView = [(PUITrackerNoDataCell *)v5 contentView];
    layoutMarginsGuide = [contentView layoutMarginsGuide];

    v10 = objc_opt_new();
    [v10 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v10 setAxis:1];
    contentView2 = [(PUITrackerNoDataCell *)v5 contentView];
    [contentView2 addSubview:v10];

    topAnchor = [v10 topAnchor];
    contentView3 = [(PUITrackerNoDataCell *)v5 contentView];
    topAnchor2 = [contentView3 topAnchor];
    v15 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:45.0];
    [v15 setActive:1];

    leadingAnchor = [v10 leadingAnchor];
    leadingAnchor2 = [layoutMarginsGuide leadingAnchor];
    v18 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    [v18 setActive:1];

    trailingAnchor = [v10 trailingAnchor];
    trailingAnchor2 = [layoutMarginsGuide trailingAnchor];
    v21 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    [v21 setActive:1];

    bottomAnchor = [v10 bottomAnchor];
    contentView4 = [(PUITrackerNoDataCell *)v5 contentView];
    bottomAnchor2 = [contentView4 bottomAnchor];
    v25 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:-45.0];
    [v25 setActive:1];

    v26 = objc_opt_new();
    v27 = PUI_LocalizedStringForAppReport(@"TRACKER_ACTIVITY_WILL_APPEAR_HERE");
    [v26 setText:v27];

    secondaryLabelColor = [MEMORY[0x277D75348] secondaryLabelColor];
    [v26 setTextColor:secondaryLabelColor];

    v29 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D769D0]];
    [v26 setFont:v29];

    [v26 setTextAlignment:1];
    [v26 setNumberOfLines:0];
    [v10 addArrangedSubview:v26];
  }

  return v5;
}

@end