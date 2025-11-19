@interface PSGPreBuddyCell
- (PSGPreBuddyCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (UIImage)transferingImage;
@end

@implementation PSGPreBuddyCell

- (PSGPreBuddyCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v59.receiver = self;
  v59.super_class = PSGPreBuddyCell;
  v4 = [(PSTableCell *)&v59 initWithStyle:a3 reuseIdentifier:a4];
  v5 = v4;
  if (v4)
  {
    [(PSGPreBuddyCell *)v4 setTranslatesAutoresizingMaskIntoConstraints:0];
    v6 = [(PSTableCell *)v5 titleLabel];
    [v6 setHidden:1];

    v7 = [(PSGPreBuddyCell *)v5 detailTextLabel];
    [v7 setHidden:1];

    v8 = objc_opt_new();
    [v8 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v8 setAxis:1];
    v9 = [(PSGPreBuddyCell *)v5 contentView];
    [v9 addSubview:v8];

    v10 = [v8 topAnchor];
    v11 = [(PSGPreBuddyCell *)v5 contentView];
    v12 = [v11 topAnchor];
    v13 = [v10 constraintEqualToAnchor:v12 constant:15.0];
    [v13 setActive:1];

    v14 = [v8 leadingAnchor];
    v15 = [(PSGPreBuddyCell *)v5 contentView];
    v16 = [v15 leadingAnchor];
    v17 = [v14 constraintEqualToAnchor:v16 constant:24.0];
    [v17 setActive:1];

    v18 = [v8 trailingAnchor];
    v19 = [(PSGPreBuddyCell *)v5 contentView];
    v20 = [v19 trailingAnchor];
    v21 = [v18 constraintEqualToAnchor:v20 constant:-24.0];
    [v21 setActive:1];

    v22 = [v8 bottomAnchor];
    v23 = [(PSGPreBuddyCell *)v5 contentView];
    v24 = [v23 bottomAnchor];
    v25 = [v22 constraintEqualToAnchor:v24 constant:-25.0];
    [v25 setActive:1];

    v26 = [MEMORY[0x277D262A0] sharedConnection];
    LODWORD(v24) = [v26 effectiveBoolValueForSetting:*MEMORY[0x277D25CD0]];

    v27 = objc_alloc_init(MEMORY[0x277CB8F48]);
    v28 = [v27 aa_primaryAppleAccount];
    v29 = PSUsedByManagedAccount();
    v30 = v24 == 2 && v28 == 0;
    if (v30 || v29)
    {
      v36 = objc_opt_new();
      [v36 setTranslatesAutoresizingMaskIntoConstraints:0];
      v51 = PSG_LocalizedStringForReset(@"PREBUDDY_MANAGED");
      [v36 setText:v51];

      v52 = MEMORY[0x277D74300];
      v53 = *MEMORY[0x277D769D0];
      v54 = +[PSGResetOrEraseListController maximumSupportedContentSizeCategory];
      v55 = [v52 _preferredFontForTextStyle:v53 maximumContentSizeCategory:v54];
      [v36 setFont:v55];

      v56 = [MEMORY[0x277D75348] labelColor];
      [v36 setTextColor:v56];

      [v36 setTextAlignment:1];
      [v36 setNumberOfLines:0];
      [v8 addArrangedSubview:v36];
    }

    else
    {
      v58 = v27;
      v31 = MEMORY[0x277D74300];
      v32 = *MEMORY[0x277D76918];
      v33 = +[PSGResetOrEraseListController maximumSupportedContentSizeCategory];
      v34 = [v31 _preferredFontForTextStyle:v32 maximumContentSizeCategory:v33];
      v35 = [v34 fontDescriptor];
      v36 = [v35 fontDescriptorWithSymbolicTraits:2];

      v37 = objc_alloc(MEMORY[0x277D755E8]);
      v38 = [(PSGPreBuddyCell *)v5 transferingImage];
      v39 = [v37 initWithImage:v38];

      [v39 setTranslatesAutoresizingMaskIntoConstraints:0];
      [v39 setContentMode:4];
      [v8 addArrangedSubview:v39];
      [v8 setCustomSpacing:v39 afterView:15.0];
      v40 = objc_opt_new();
      [v40 setTranslatesAutoresizingMaskIntoConstraints:0];
      v41 = PSG_LocalizedStringForReset(@"PREBUDDY_LABEL");
      [v40 setText:v41];

      v42 = [MEMORY[0x277D74300] fontWithDescriptor:v36 size:0.0];
      [v40 setFont:v42];

      v43 = [MEMORY[0x277D75348] labelColor];
      [v40 setTextColor:v43];

      [v40 setTextAlignment:1];
      [v40 setNumberOfLines:0];
      [v8 addArrangedSubview:v40];
      [v8 setCustomSpacing:v40 afterView:15.0];
      v44 = objc_opt_new();
      [v44 setTranslatesAutoresizingMaskIntoConstraints:0];
      v45 = PSG_LocalizedStringForReset(@"PREBUDDY_TEXT");
      [v44 setText:v45];

      v46 = MEMORY[0x277D74300];
      v47 = *MEMORY[0x277D769D0];
      v48 = +[PSGResetOrEraseListController maximumSupportedContentSizeCategory];
      v49 = [v46 _preferredFontForTextStyle:v47 maximumContentSizeCategory:v48];
      [v44 setFont:v49];

      v50 = [MEMORY[0x277D75348] labelColor];
      [v44 setTextColor:v50];

      v27 = v58;
      [v44 setTextAlignment:1];
      [v44 setNumberOfLines:0];
      [v8 addArrangedSubview:v44];
    }
  }

  return v5;
}

- (UIImage)transferingImage
{
  v2 = [MEMORY[0x277D75418] currentDevice];
  v3 = [v2 sf_hasHardwareHomeButton];

  v4 = [MEMORY[0x277D75418] currentDevice];
  v5 = [v4 sf_isiPod];

  if (v5)
  {
    v6 = @"iPod";
  }

  else
  {
    v7 = [MEMORY[0x277D75418] currentDevice];
    v8 = [v7 sf_isiPad];

    v6 = @"iPhone";
    if (v8)
    {
      v6 = @"iPad";
    }
  }

  v9 = @"Modern";
  if (v3)
  {
    v9 = @"Classic";
  }

  v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%@", v9, v6];
  v11 = MEMORY[0x277D755B8];
  v12 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v13 = [v11 imageNamed:v10 inBundle:v12];
  v14 = [v13 imageWithRenderingMode:2];

  return v14;
}

@end