@interface PSPhotosPickerInfoCell
- (PSPhotosPickerInfoCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
@end

@implementation PSPhotosPickerInfoCell

- (PSPhotosPickerInfoCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v43[7] = *MEMORY[0x1E69E9840];
  v42.receiver = self;
  v42.super_class = PSPhotosPickerInfoCell;
  v4 = [(PSTableCell *)&v42 initWithStyle:style reuseIdentifier:identifier];
  v5 = v4;
  if (v4)
  {
    contentView = [(PSPhotosPickerInfoCell *)v4 contentView];
    v7 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    [v7 setTranslatesAutoresizingMaskIntoConstraints:0];
    v8 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
    [v7 setFont:v8];

    [v7 setNumberOfLines:0];
    [contentView addSubview:v7];
    v9 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    [v9 setTranslatesAutoresizingMaskIntoConstraints:0];
    v10 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD00]];
    [v9 setFont:v10];

    secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
    [v9 setTextColor:secondaryLabelColor];

    [v9 setNumberOfLines:0];
    [contentView addSubview:v9];
    v12 = PS_LocalizedStringForSystemPolicy(@"PHOTOS_PICKER_INFO_TITLE");
    [v7 setText:v12];

    v13 = PS_LocalizedStringForSystemPolicy(@"PHOTOS_PICKER_INFO_BODY");
    [v9 setText:v13];

    contentView2 = [(PSPhotosPickerInfoCell *)v5 contentView];
    layoutMarginsGuide = [contentView2 layoutMarginsGuide];

    v32 = MEMORY[0x1E696ACD8];
    topAnchor = [v7 topAnchor];
    v31 = contentView;
    topAnchor2 = [contentView topAnchor];
    v39 = [topAnchor constraintEqualToSystemSpacingBelowAnchor:topAnchor2 multiplier:2.0];
    v43[0] = v39;
    leadingAnchor = [v7 leadingAnchor];
    leadingAnchor2 = [layoutMarginsGuide leadingAnchor];
    v36 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v43[1] = v36;
    trailingAnchor = [v7 trailingAnchor];
    v30 = layoutMarginsGuide;
    trailingAnchor2 = [layoutMarginsGuide trailingAnchor];
    v33 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v43[2] = v33;
    topAnchor3 = [v9 topAnchor];
    bottomAnchor = [v7 bottomAnchor];
    v27 = [topAnchor3 constraintEqualToSystemSpacingBelowAnchor:bottomAnchor multiplier:1.0];
    v43[3] = v27;
    leadingAnchor3 = [v9 leadingAnchor];
    leadingAnchor4 = [layoutMarginsGuide leadingAnchor];
    v24 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
    v43[4] = v24;
    trailingAnchor3 = [v9 trailingAnchor];
    trailingAnchor4 = [layoutMarginsGuide trailingAnchor];
    v18 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
    v43[5] = v18;
    bottomAnchor2 = [contentView bottomAnchor];
    bottomAnchor3 = [v9 bottomAnchor];
    v21 = [bottomAnchor2 constraintEqualToSystemSpacingBelowAnchor:bottomAnchor3 multiplier:2.0];
    v43[6] = v21;
    v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v43 count:7];
    [v32 activateConstraints:v22];
  }

  return v5;
}

@end