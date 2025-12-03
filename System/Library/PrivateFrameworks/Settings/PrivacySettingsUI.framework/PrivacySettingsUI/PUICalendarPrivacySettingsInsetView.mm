@interface PUICalendarPrivacySettingsInsetView
- (PUICalendarPrivacySettingsInsetView)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier;
@end

@implementation PUICalendarPrivacySettingsInsetView

- (PUICalendarPrivacySettingsInsetView)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier
{
  v37[4] = *MEMORY[0x277D85DE8];
  v36.receiver = self;
  v36.super_class = PUICalendarPrivacySettingsInsetView;
  v5 = [(PSTableCell *)&v36 initWithStyle:style reuseIdentifier:identifier specifier:specifier];
  if (v5)
  {
    v33 = [objc_alloc(MEMORY[0x277D079E0]) initWithBundleIdentifier:0];
    contentView = [(PUICalendarPrivacySettingsInsetView *)v5 contentView];
    [(PUICalendarPrivacySettingsInsetView *)v5 setTranslatesAutoresizingMaskIntoConstraints:0];
    v35 = v5;
    v7 = objc_alloc_init(MEMORY[0x277D75A68]);
    [v7 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v7 setAxis:1];
    [v7 setLayoutMargins:{5.0, 0.0, 5.0, 0.0}];
    [v7 setLayoutMarginsRelativeArrangement:1];
    v34 = contentView;
    [contentView addSubview:v7];
    v8 = objc_alloc_init(MEMORY[0x277D75A68]);
    [v8 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v8 setAxis:1];
    [v8 setLayoutMargins:{15.0, 15.0, 10.0, 15.0}];
    [v8 setLayoutMarginsRelativeArrangement:1];
    v27 = MEMORY[0x277CCAAD0];
    topAnchor = [v7 topAnchor];
    topAnchor2 = [contentView topAnchor];
    v30 = [topAnchor constraintEqualToSystemSpacingBelowAnchor:topAnchor2 multiplier:0.5];
    v37[0] = v30;
    leadingAnchor = [v7 leadingAnchor];
    leadingAnchor2 = [contentView leadingAnchor];
    v9 = [leadingAnchor constraintEqualToSystemSpacingAfterAnchor:leadingAnchor2 multiplier:0.5];
    v37[1] = v9;
    trailingAnchor = [contentView trailingAnchor];
    trailingAnchor2 = [v7 trailingAnchor];
    v12 = [trailingAnchor constraintEqualToSystemSpacingAfterAnchor:trailingAnchor2 multiplier:0.5];
    v37[2] = v12;
    bottomAnchor = [contentView bottomAnchor];
    bottomAnchor2 = [v7 bottomAnchor];
    v15 = [bottomAnchor constraintEqualToSystemSpacingBelowAnchor:bottomAnchor2 multiplier:0.5];
    v37[3] = v15;
    v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v37 count:4];
    [v27 activateConstraints:v16];

    previewTableView = [v33 previewTableView];
    [v7 addArrangedSubview:previewTableView];

    v18 = objc_alloc_init(MEMORY[0x277D756B8]);
    v19 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76988]];
    [v18 setFont:v19];

    v20 = PUI_LocalizedStringForPrivacy(@"CALENDARS_PREVIEW_TABLE_TITLE");
    [v18 setText:v20];

    [v8 addArrangedSubview:v18];
    v21 = objc_alloc_init(MEMORY[0x277D756B8]);
    v22 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D769D0]];
    [v21 setFont:v22];

    secondaryLabelColor = [MEMORY[0x277D75348] secondaryLabelColor];
    [v21 setTextColor:secondaryLabelColor];

    [v21 setNumberOfLines:0];
    settingsViewSubtitle = [v33 settingsViewSubtitle];
    [v21 setText:settingsViewSubtitle];

    [v8 addArrangedSubview:v21];
    [v7 addArrangedSubview:v8];
    [v7 setCustomSpacing:v21 afterView:8.0];

    v5 = v35;
  }

  v25 = *MEMORY[0x277D85DE8];
  return v5;
}

@end