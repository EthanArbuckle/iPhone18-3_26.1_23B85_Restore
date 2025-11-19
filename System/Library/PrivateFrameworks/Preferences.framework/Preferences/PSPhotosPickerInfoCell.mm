@interface PSPhotosPickerInfoCell
- (PSPhotosPickerInfoCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
@end

@implementation PSPhotosPickerInfoCell

- (PSPhotosPickerInfoCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v43[7] = *MEMORY[0x1E69E9840];
  v42.receiver = self;
  v42.super_class = PSPhotosPickerInfoCell;
  v4 = [(PSTableCell *)&v42 initWithStyle:a3 reuseIdentifier:a4];
  v5 = v4;
  if (v4)
  {
    v6 = [(PSPhotosPickerInfoCell *)v4 contentView];
    v7 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    [v7 setTranslatesAutoresizingMaskIntoConstraints:0];
    v8 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
    [v7 setFont:v8];

    [v7 setNumberOfLines:0];
    [v6 addSubview:v7];
    v9 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    [v9 setTranslatesAutoresizingMaskIntoConstraints:0];
    v10 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD00]];
    [v9 setFont:v10];

    v11 = [MEMORY[0x1E69DC888] secondaryLabelColor];
    [v9 setTextColor:v11];

    [v9 setNumberOfLines:0];
    [v6 addSubview:v9];
    v12 = PS_LocalizedStringForSystemPolicy(@"PHOTOS_PICKER_INFO_TITLE");
    [v7 setText:v12];

    v13 = PS_LocalizedStringForSystemPolicy(@"PHOTOS_PICKER_INFO_BODY");
    [v9 setText:v13];

    v14 = [(PSPhotosPickerInfoCell *)v5 contentView];
    v15 = [v14 layoutMarginsGuide];

    v32 = MEMORY[0x1E696ACD8];
    v41 = [v7 topAnchor];
    v31 = v6;
    v40 = [v6 topAnchor];
    v39 = [v41 constraintEqualToSystemSpacingBelowAnchor:v40 multiplier:2.0];
    v43[0] = v39;
    v38 = [v7 leadingAnchor];
    v37 = [v15 leadingAnchor];
    v36 = [v38 constraintEqualToAnchor:v37];
    v43[1] = v36;
    v35 = [v7 trailingAnchor];
    v30 = v15;
    v34 = [v15 trailingAnchor];
    v33 = [v35 constraintEqualToAnchor:v34];
    v43[2] = v33;
    v29 = [v9 topAnchor];
    v28 = [v7 bottomAnchor];
    v27 = [v29 constraintEqualToSystemSpacingBelowAnchor:v28 multiplier:1.0];
    v43[3] = v27;
    v26 = [v9 leadingAnchor];
    v25 = [v15 leadingAnchor];
    v24 = [v26 constraintEqualToAnchor:v25];
    v43[4] = v24;
    v16 = [v9 trailingAnchor];
    v17 = [v15 trailingAnchor];
    v18 = [v16 constraintEqualToAnchor:v17];
    v43[5] = v18;
    v19 = [v6 bottomAnchor];
    v20 = [v9 bottomAnchor];
    v21 = [v19 constraintEqualToSystemSpacingBelowAnchor:v20 multiplier:2.0];
    v43[6] = v21;
    v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v43 count:7];
    [v32 activateConstraints:v22];
  }

  return v5;
}

@end