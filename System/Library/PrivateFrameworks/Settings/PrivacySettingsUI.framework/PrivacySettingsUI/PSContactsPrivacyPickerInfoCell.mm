@interface PSContactsPrivacyPickerInfoCell
- (PSContactsPrivacyPickerInfoCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 specifier:(id)a5;
@end

@implementation PSContactsPrivacyPickerInfoCell

- (PSContactsPrivacyPickerInfoCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 specifier:(id)a5
{
  v46[7] = *MEMORY[0x277D85DE8];
  v45.receiver = self;
  v45.super_class = PSContactsPrivacyPickerInfoCell;
  v5 = [(PSTableCell *)&v45 initWithStyle:a3 reuseIdentifier:a4 specifier:a5];
  v6 = v5;
  if (v5)
  {
    v7 = [(PSContactsPrivacyPickerInfoCell *)v5 contentView];
    v8 = objc_alloc_init(MEMORY[0x277D756B8]);
    [v8 setTranslatesAutoresizingMaskIntoConstraints:0];
    v9 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76918]];
    [v8 setFont:v9];

    [v8 setNumberOfLines:0];
    v10 = PUI_LocalizedStringForPrivacy(@"CONTACTS_PICKER_ONLY_AUTHORIZATION");
    [v8 setText:v10];

    v11 = v7;
    [v7 addSubview:v8];
    v12 = objc_alloc_init(MEMORY[0x277D756B8]);
    [v12 setTranslatesAutoresizingMaskIntoConstraints:0];
    v13 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76920]];
    [v12 setFont:v13];

    v14 = [MEMORY[0x277D75348] secondaryLabelColor];
    [v12 setTextColor:v14];

    [v12 setNumberOfLines:0];
    v15 = PUI_LocalizedStringForPrivacy(@"CONTACTS_PICKER_ONLY_DESCRIPTION");
    [v12 setText:v15];

    [v11 addSubview:v12];
    v16 = [(PSContactsPrivacyPickerInfoCell *)v6 contentView];
    v17 = [v16 layoutMarginsGuide];

    v35 = MEMORY[0x277CCAAD0];
    v44 = [v8 topAnchor];
    v34 = v11;
    v43 = [v11 topAnchor];
    v42 = [v44 constraintEqualToSystemSpacingBelowAnchor:v43 multiplier:2.0];
    v46[0] = v42;
    v41 = [v8 leadingAnchor];
    v40 = [v17 leadingAnchor];
    v39 = [v41 constraintEqualToAnchor:v40];
    v46[1] = v39;
    v38 = [v8 trailingAnchor];
    v33 = v17;
    v37 = [v17 trailingAnchor];
    v36 = [v38 constraintEqualToAnchor:v37];
    v46[2] = v36;
    v32 = [v12 topAnchor];
    v31 = [v8 bottomAnchor];
    v30 = [v32 constraintEqualToSystemSpacingBelowAnchor:v31 multiplier:1.0];
    v46[3] = v30;
    v29 = [v12 leadingAnchor];
    v28 = [v17 leadingAnchor];
    v27 = [v29 constraintEqualToAnchor:v28];
    v46[4] = v27;
    v18 = [v12 trailingAnchor];
    v19 = [v17 trailingAnchor];
    v20 = [v18 constraintEqualToAnchor:v19];
    v46[5] = v20;
    v21 = [v11 bottomAnchor];
    v22 = [v12 bottomAnchor];
    v23 = [v21 constraintEqualToSystemSpacingBelowAnchor:v22 multiplier:2.0];
    v46[6] = v23;
    v24 = [MEMORY[0x277CBEA60] arrayWithObjects:v46 count:7];
    [v35 activateConstraints:v24];
  }

  v25 = *MEMORY[0x277D85DE8];
  return v6;
}

@end