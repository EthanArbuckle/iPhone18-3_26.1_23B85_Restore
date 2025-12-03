@interface __PSContactsPickerInfoCell
- (__PSContactsPickerInfoCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
@end

@implementation __PSContactsPickerInfoCell

- (__PSContactsPickerInfoCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v44[7] = *MEMORY[0x1E69E9840];
  v43.receiver = self;
  v43.super_class = __PSContactsPickerInfoCell;
  v4 = [(PSTableCell *)&v43 initWithStyle:style reuseIdentifier:identifier];
  v5 = v4;
  if (v4)
  {
    contentView = [(__PSContactsPickerInfoCell *)v4 contentView];
    v7 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    [v7 setTranslatesAutoresizingMaskIntoConstraints:0];
    v8 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
    [v7 setFont:v8];

    [v7 setNumberOfLines:0];
    v9 = PS_LocalizedStringForSystemPolicy(@"CONTACTS_PICKER_ONLY_AUTHORIZATION");
    [v7 setText:v9];

    v10 = contentView;
    [contentView addSubview:v7];
    v11 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    [v11 setTranslatesAutoresizingMaskIntoConstraints:0];
    v12 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD00]];
    [v11 setFont:v12];

    secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
    [v11 setTextColor:secondaryLabelColor];

    [v11 setNumberOfLines:0];
    v14 = PS_LocalizedStringForSystemPolicy(@"CONTACTS_PICKER_ONLY_DESCRIPTION");
    [v11 setText:v14];

    [v10 addSubview:v11];
    contentView2 = [(__PSContactsPickerInfoCell *)v5 contentView];
    layoutMarginsGuide = [contentView2 layoutMarginsGuide];

    v33 = MEMORY[0x1E696ACD8];
    topAnchor = [v7 topAnchor];
    v32 = v10;
    topAnchor2 = [v10 topAnchor];
    v40 = [topAnchor constraintEqualToSystemSpacingBelowAnchor:topAnchor2 multiplier:2.0];
    v44[0] = v40;
    leadingAnchor = [v7 leadingAnchor];
    leadingAnchor2 = [layoutMarginsGuide leadingAnchor];
    v37 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v44[1] = v37;
    trailingAnchor = [v7 trailingAnchor];
    v31 = layoutMarginsGuide;
    trailingAnchor2 = [layoutMarginsGuide trailingAnchor];
    v34 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v44[2] = v34;
    topAnchor3 = [v11 topAnchor];
    bottomAnchor = [v7 bottomAnchor];
    v28 = [topAnchor3 constraintEqualToSystemSpacingBelowAnchor:bottomAnchor multiplier:1.0];
    v44[3] = v28;
    leadingAnchor3 = [v11 leadingAnchor];
    leadingAnchor4 = [layoutMarginsGuide leadingAnchor];
    v25 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
    v44[4] = v25;
    trailingAnchor3 = [v11 trailingAnchor];
    trailingAnchor4 = [layoutMarginsGuide trailingAnchor];
    v19 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
    v44[5] = v19;
    bottomAnchor2 = [v10 bottomAnchor];
    bottomAnchor3 = [v11 bottomAnchor];
    v22 = [bottomAnchor2 constraintEqualToSystemSpacingBelowAnchor:bottomAnchor3 multiplier:2.0];
    v44[6] = v22;
    v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:v44 count:7];
    [v33 activateConstraints:v23];
  }

  return v5;
}

@end