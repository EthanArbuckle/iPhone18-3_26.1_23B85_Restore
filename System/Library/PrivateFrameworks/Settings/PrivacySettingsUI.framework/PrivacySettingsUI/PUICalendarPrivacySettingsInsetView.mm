@interface PUICalendarPrivacySettingsInsetView
- (PUICalendarPrivacySettingsInsetView)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 specifier:(id)a5;
@end

@implementation PUICalendarPrivacySettingsInsetView

- (PUICalendarPrivacySettingsInsetView)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 specifier:(id)a5
{
  v37[4] = *MEMORY[0x277D85DE8];
  v36.receiver = self;
  v36.super_class = PUICalendarPrivacySettingsInsetView;
  v5 = [(PSTableCell *)&v36 initWithStyle:a3 reuseIdentifier:a4 specifier:a5];
  if (v5)
  {
    v33 = [objc_alloc(MEMORY[0x277D079E0]) initWithBundleIdentifier:0];
    v6 = [(PUICalendarPrivacySettingsInsetView *)v5 contentView];
    [(PUICalendarPrivacySettingsInsetView *)v5 setTranslatesAutoresizingMaskIntoConstraints:0];
    v35 = v5;
    v7 = objc_alloc_init(MEMORY[0x277D75A68]);
    [v7 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v7 setAxis:1];
    [v7 setLayoutMargins:{5.0, 0.0, 5.0, 0.0}];
    [v7 setLayoutMarginsRelativeArrangement:1];
    v34 = v6;
    [v6 addSubview:v7];
    v8 = objc_alloc_init(MEMORY[0x277D75A68]);
    [v8 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v8 setAxis:1];
    [v8 setLayoutMargins:{15.0, 15.0, 10.0, 15.0}];
    [v8 setLayoutMarginsRelativeArrangement:1];
    v27 = MEMORY[0x277CCAAD0];
    v32 = [v7 topAnchor];
    v31 = [v6 topAnchor];
    v30 = [v32 constraintEqualToSystemSpacingBelowAnchor:v31 multiplier:0.5];
    v37[0] = v30;
    v29 = [v7 leadingAnchor];
    v28 = [v6 leadingAnchor];
    v9 = [v29 constraintEqualToSystemSpacingAfterAnchor:v28 multiplier:0.5];
    v37[1] = v9;
    v10 = [v6 trailingAnchor];
    v11 = [v7 trailingAnchor];
    v12 = [v10 constraintEqualToSystemSpacingAfterAnchor:v11 multiplier:0.5];
    v37[2] = v12;
    v13 = [v6 bottomAnchor];
    v14 = [v7 bottomAnchor];
    v15 = [v13 constraintEqualToSystemSpacingBelowAnchor:v14 multiplier:0.5];
    v37[3] = v15;
    v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v37 count:4];
    [v27 activateConstraints:v16];

    v17 = [v33 previewTableView];
    [v7 addArrangedSubview:v17];

    v18 = objc_alloc_init(MEMORY[0x277D756B8]);
    v19 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76988]];
    [v18 setFont:v19];

    v20 = PUI_LocalizedStringForPrivacy(@"CALENDARS_PREVIEW_TABLE_TITLE");
    [v18 setText:v20];

    [v8 addArrangedSubview:v18];
    v21 = objc_alloc_init(MEMORY[0x277D756B8]);
    v22 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D769D0]];
    [v21 setFont:v22];

    v23 = [MEMORY[0x277D75348] secondaryLabelColor];
    [v21 setTextColor:v23];

    [v21 setNumberOfLines:0];
    v24 = [v33 settingsViewSubtitle];
    [v21 setText:v24];

    [v8 addArrangedSubview:v21];
    [v7 addArrangedSubview:v8];
    [v7 setCustomSpacing:v21 afterView:8.0];

    v5 = v35;
  }

  v25 = *MEMORY[0x277D85DE8];
  return v5;
}

@end