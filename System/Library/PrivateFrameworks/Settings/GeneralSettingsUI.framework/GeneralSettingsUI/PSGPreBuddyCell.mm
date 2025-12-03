@interface PSGPreBuddyCell
- (PSGPreBuddyCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (UIImage)transferingImage;
@end

@implementation PSGPreBuddyCell

- (PSGPreBuddyCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v59.receiver = self;
  v59.super_class = PSGPreBuddyCell;
  v4 = [(PSTableCell *)&v59 initWithStyle:style reuseIdentifier:identifier];
  v5 = v4;
  if (v4)
  {
    [(PSGPreBuddyCell *)v4 setTranslatesAutoresizingMaskIntoConstraints:0];
    titleLabel = [(PSTableCell *)v5 titleLabel];
    [titleLabel setHidden:1];

    detailTextLabel = [(PSGPreBuddyCell *)v5 detailTextLabel];
    [detailTextLabel setHidden:1];

    v8 = objc_opt_new();
    [v8 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v8 setAxis:1];
    contentView = [(PSGPreBuddyCell *)v5 contentView];
    [contentView addSubview:v8];

    topAnchor = [v8 topAnchor];
    contentView2 = [(PSGPreBuddyCell *)v5 contentView];
    topAnchor2 = [contentView2 topAnchor];
    v13 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:15.0];
    [v13 setActive:1];

    leadingAnchor = [v8 leadingAnchor];
    contentView3 = [(PSGPreBuddyCell *)v5 contentView];
    leadingAnchor2 = [contentView3 leadingAnchor];
    v17 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:24.0];
    [v17 setActive:1];

    trailingAnchor = [v8 trailingAnchor];
    contentView4 = [(PSGPreBuddyCell *)v5 contentView];
    trailingAnchor2 = [contentView4 trailingAnchor];
    v21 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-24.0];
    [v21 setActive:1];

    bottomAnchor = [v8 bottomAnchor];
    contentView5 = [(PSGPreBuddyCell *)v5 contentView];
    bottomAnchor2 = [contentView5 bottomAnchor];
    v25 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:-25.0];
    [v25 setActive:1];

    mEMORY[0x277D262A0] = [MEMORY[0x277D262A0] sharedConnection];
    LODWORD(bottomAnchor2) = [mEMORY[0x277D262A0] effectiveBoolValueForSetting:*MEMORY[0x277D25CD0]];

    v27 = objc_alloc_init(MEMORY[0x277CB8F48]);
    aa_primaryAppleAccount = [v27 aa_primaryAppleAccount];
    v29 = PSUsedByManagedAccount();
    v30 = bottomAnchor2 == 2 && aa_primaryAppleAccount == 0;
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

      labelColor = [MEMORY[0x277D75348] labelColor];
      [v36 setTextColor:labelColor];

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
      fontDescriptor = [v34 fontDescriptor];
      v36 = [fontDescriptor fontDescriptorWithSymbolicTraits:2];

      v37 = objc_alloc(MEMORY[0x277D755E8]);
      transferingImage = [(PSGPreBuddyCell *)v5 transferingImage];
      v39 = [v37 initWithImage:transferingImage];

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

      labelColor2 = [MEMORY[0x277D75348] labelColor];
      [v40 setTextColor:labelColor2];

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

      labelColor3 = [MEMORY[0x277D75348] labelColor];
      [v44 setTextColor:labelColor3];

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
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  sf_hasHardwareHomeButton = [currentDevice sf_hasHardwareHomeButton];

  currentDevice2 = [MEMORY[0x277D75418] currentDevice];
  sf_isiPod = [currentDevice2 sf_isiPod];

  if (sf_isiPod)
  {
    v6 = @"iPod";
  }

  else
  {
    currentDevice3 = [MEMORY[0x277D75418] currentDevice];
    sf_isiPad = [currentDevice3 sf_isiPad];

    v6 = @"iPhone";
    if (sf_isiPad)
    {
      v6 = @"iPad";
    }
  }

  v9 = @"Modern";
  if (sf_hasHardwareHomeButton)
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