@interface PSContactsPrivacyPickerInfoCell
- (PSContactsPrivacyPickerInfoCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier;
@end

@implementation PSContactsPrivacyPickerInfoCell

- (PSContactsPrivacyPickerInfoCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier
{
  v46[7] = *MEMORY[0x277D85DE8];
  v45.receiver = self;
  v45.super_class = PSContactsPrivacyPickerInfoCell;
  v5 = [(PSTableCell *)&v45 initWithStyle:style reuseIdentifier:identifier specifier:specifier];
  v6 = v5;
  if (v5)
  {
    contentView = [(PSContactsPrivacyPickerInfoCell *)v5 contentView];
    v8 = objc_alloc_init(MEMORY[0x277D756B8]);
    [v8 setTranslatesAutoresizingMaskIntoConstraints:0];
    v9 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76918]];
    [v8 setFont:v9];

    [v8 setNumberOfLines:0];
    v10 = PUI_LocalizedStringForPrivacy(@"CONTACTS_PICKER_ONLY_AUTHORIZATION");
    [v8 setText:v10];

    v11 = contentView;
    [contentView addSubview:v8];
    v12 = objc_alloc_init(MEMORY[0x277D756B8]);
    [v12 setTranslatesAutoresizingMaskIntoConstraints:0];
    v13 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76920]];
    [v12 setFont:v13];

    secondaryLabelColor = [MEMORY[0x277D75348] secondaryLabelColor];
    [v12 setTextColor:secondaryLabelColor];

    [v12 setNumberOfLines:0];
    v15 = PUI_LocalizedStringForPrivacy(@"CONTACTS_PICKER_ONLY_DESCRIPTION");
    [v12 setText:v15];

    [v11 addSubview:v12];
    contentView2 = [(PSContactsPrivacyPickerInfoCell *)v6 contentView];
    layoutMarginsGuide = [contentView2 layoutMarginsGuide];

    v35 = MEMORY[0x277CCAAD0];
    topAnchor = [v8 topAnchor];
    v34 = v11;
    topAnchor2 = [v11 topAnchor];
    v42 = [topAnchor constraintEqualToSystemSpacingBelowAnchor:topAnchor2 multiplier:2.0];
    v46[0] = v42;
    leadingAnchor = [v8 leadingAnchor];
    leadingAnchor2 = [layoutMarginsGuide leadingAnchor];
    v39 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v46[1] = v39;
    trailingAnchor = [v8 trailingAnchor];
    v33 = layoutMarginsGuide;
    trailingAnchor2 = [layoutMarginsGuide trailingAnchor];
    v36 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v46[2] = v36;
    topAnchor3 = [v12 topAnchor];
    bottomAnchor = [v8 bottomAnchor];
    v30 = [topAnchor3 constraintEqualToSystemSpacingBelowAnchor:bottomAnchor multiplier:1.0];
    v46[3] = v30;
    leadingAnchor3 = [v12 leadingAnchor];
    leadingAnchor4 = [layoutMarginsGuide leadingAnchor];
    v27 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
    v46[4] = v27;
    trailingAnchor3 = [v12 trailingAnchor];
    trailingAnchor4 = [layoutMarginsGuide trailingAnchor];
    v20 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
    v46[5] = v20;
    bottomAnchor2 = [v11 bottomAnchor];
    bottomAnchor3 = [v12 bottomAnchor];
    v23 = [bottomAnchor2 constraintEqualToSystemSpacingBelowAnchor:bottomAnchor3 multiplier:2.0];
    v46[6] = v23;
    v24 = [MEMORY[0x277CBEA60] arrayWithObjects:v46 count:7];
    [v35 activateConstraints:v24];
  }

  v25 = *MEMORY[0x277D85DE8];
  return v6;
}

@end