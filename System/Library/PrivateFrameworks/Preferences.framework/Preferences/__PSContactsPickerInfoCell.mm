@interface __PSContactsPickerInfoCell
- (__PSContactsPickerInfoCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
@end

@implementation __PSContactsPickerInfoCell

- (__PSContactsPickerInfoCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v44[7] = *MEMORY[0x1E69E9840];
  v43.receiver = self;
  v43.super_class = __PSContactsPickerInfoCell;
  v4 = [(PSTableCell *)&v43 initWithStyle:a3 reuseIdentifier:a4];
  v5 = v4;
  if (v4)
  {
    v6 = [(__PSContactsPickerInfoCell *)v4 contentView];
    v7 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    [v7 setTranslatesAutoresizingMaskIntoConstraints:0];
    v8 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
    [v7 setFont:v8];

    [v7 setNumberOfLines:0];
    v9 = PS_LocalizedStringForSystemPolicy(@"CONTACTS_PICKER_ONLY_AUTHORIZATION");
    [v7 setText:v9];

    v10 = v6;
    [v6 addSubview:v7];
    v11 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    [v11 setTranslatesAutoresizingMaskIntoConstraints:0];
    v12 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD00]];
    [v11 setFont:v12];

    v13 = [MEMORY[0x1E69DC888] secondaryLabelColor];
    [v11 setTextColor:v13];

    [v11 setNumberOfLines:0];
    v14 = PS_LocalizedStringForSystemPolicy(@"CONTACTS_PICKER_ONLY_DESCRIPTION");
    [v11 setText:v14];

    [v10 addSubview:v11];
    v15 = [(__PSContactsPickerInfoCell *)v5 contentView];
    v16 = [v15 layoutMarginsGuide];

    v33 = MEMORY[0x1E696ACD8];
    v42 = [v7 topAnchor];
    v32 = v10;
    v41 = [v10 topAnchor];
    v40 = [v42 constraintEqualToSystemSpacingBelowAnchor:v41 multiplier:2.0];
    v44[0] = v40;
    v39 = [v7 leadingAnchor];
    v38 = [v16 leadingAnchor];
    v37 = [v39 constraintEqualToAnchor:v38];
    v44[1] = v37;
    v36 = [v7 trailingAnchor];
    v31 = v16;
    v35 = [v16 trailingAnchor];
    v34 = [v36 constraintEqualToAnchor:v35];
    v44[2] = v34;
    v30 = [v11 topAnchor];
    v29 = [v7 bottomAnchor];
    v28 = [v30 constraintEqualToSystemSpacingBelowAnchor:v29 multiplier:1.0];
    v44[3] = v28;
    v27 = [v11 leadingAnchor];
    v26 = [v16 leadingAnchor];
    v25 = [v27 constraintEqualToAnchor:v26];
    v44[4] = v25;
    v17 = [v11 trailingAnchor];
    v18 = [v16 trailingAnchor];
    v19 = [v17 constraintEqualToAnchor:v18];
    v44[5] = v19;
    v20 = [v10 bottomAnchor];
    v21 = [v11 bottomAnchor];
    v22 = [v20 constraintEqualToSystemSpacingBelowAnchor:v21 multiplier:2.0];
    v44[6] = v22;
    v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:v44 count:7];
    [v33 activateConstraints:v23];
  }

  return v5;
}

@end