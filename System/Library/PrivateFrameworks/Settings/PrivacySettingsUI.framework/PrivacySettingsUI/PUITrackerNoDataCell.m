@interface PUITrackerNoDataCell
- (PUITrackerNoDataCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
@end

@implementation PUITrackerNoDataCell

- (PUITrackerNoDataCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v31.receiver = self;
  v31.super_class = PUITrackerNoDataCell;
  v4 = [(PSTableCell *)&v31 initWithStyle:a3 reuseIdentifier:a4];
  v5 = v4;
  if (v4)
  {
    v6 = [(PSTableCell *)v4 titleLabel];
    [v6 setHidden:1];

    v7 = [(PUITrackerNoDataCell *)v5 detailTextLabel];
    [v7 setHidden:1];

    v8 = [(PUITrackerNoDataCell *)v5 contentView];
    v9 = [v8 layoutMarginsGuide];

    v10 = objc_opt_new();
    [v10 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v10 setAxis:1];
    v11 = [(PUITrackerNoDataCell *)v5 contentView];
    [v11 addSubview:v10];

    v12 = [v10 topAnchor];
    v13 = [(PUITrackerNoDataCell *)v5 contentView];
    v14 = [v13 topAnchor];
    v15 = [v12 constraintEqualToAnchor:v14 constant:45.0];
    [v15 setActive:1];

    v16 = [v10 leadingAnchor];
    v17 = [v9 leadingAnchor];
    v18 = [v16 constraintEqualToAnchor:v17];
    [v18 setActive:1];

    v19 = [v10 trailingAnchor];
    v20 = [v9 trailingAnchor];
    v21 = [v19 constraintEqualToAnchor:v20];
    [v21 setActive:1];

    v22 = [v10 bottomAnchor];
    v23 = [(PUITrackerNoDataCell *)v5 contentView];
    v24 = [v23 bottomAnchor];
    v25 = [v22 constraintEqualToAnchor:v24 constant:-45.0];
    [v25 setActive:1];

    v26 = objc_opt_new();
    v27 = PUI_LocalizedStringForAppReport(@"TRACKER_ACTIVITY_WILL_APPEAR_HERE");
    [v26 setText:v27];

    v28 = [MEMORY[0x277D75348] secondaryLabelColor];
    [v26 setTextColor:v28];

    v29 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D769D0]];
    [v26 setFont:v29];

    [v26 setTextAlignment:1];
    [v26 setNumberOfLines:0];
    [v10 addArrangedSubview:v26];
  }

  return v5;
}

@end