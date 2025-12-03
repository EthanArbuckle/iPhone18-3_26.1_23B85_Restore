@interface PUITrackerBarCell
- (PUITrackerBarCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)refreshCellContentsWithSpecifier:(id)specifier;
- (void)traitCollectionDidChange:(id)change;
- (void)updateConstraints;
@end

@implementation PUITrackerBarCell

- (PUITrackerBarCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v95.receiver = self;
  v95.super_class = PUITrackerBarCell;
  v4 = [(PSTableCell *)&v95 initWithStyle:style reuseIdentifier:identifier];
  v5 = v4;
  if (v4)
  {
    [(PUITrackerBarCell *)v4 setTranslatesAutoresizingMaskIntoConstraints:0];
    v6 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76918]];
    fontDescriptor = [v6 fontDescriptor];
    v8 = [fontDescriptor fontDescriptorWithSymbolicTraits:0x8000];

    v9 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D769D0]];
    fontDescriptor2 = [v9 fontDescriptor];
    v11 = [fontDescriptor2 fontDescriptorWithSymbolicTraits:0x8000];

    titleLabel = [(PSTableCell *)v5 titleLabel];
    [titleLabel setHidden:1];

    detailTextLabel = [(PUITrackerBarCell *)v5 detailTextLabel];
    [detailTextLabel setHidden:1];

    v14 = PUIWebsiteIconView();
    [(PUITrackerBarCell *)v5 setIconLabelView:v14];

    contentView = [(PUITrackerBarCell *)v5 contentView];
    iconLabelView = [(PUITrackerBarCell *)v5 iconLabelView];
    [contentView addSubview:iconLabelView];

    v17 = objc_opt_new();
    [(PUITrackerBarCell *)v5 setStackView:v17];

    stackView = [(PUITrackerBarCell *)v5 stackView];
    [stackView setTranslatesAutoresizingMaskIntoConstraints:0];

    stackView2 = [(PUITrackerBarCell *)v5 stackView];
    [stackView2 setAxis:1];

    contentView2 = [(PUITrackerBarCell *)v5 contentView];
    stackView3 = [(PUITrackerBarCell *)v5 stackView];
    [contentView2 addSubview:stackView3];

    v22 = objc_opt_new();
    [(PUITrackerBarCell *)v5 setPrimaryLabel:v22];

    v23 = [MEMORY[0x277D74300] fontWithDescriptor:v8 size:0.0];
    primaryLabel = [(PUITrackerBarCell *)v5 primaryLabel];
    [primaryLabel setFont:v23];

    labelColor = [MEMORY[0x277D75348] labelColor];
    primaryLabel2 = [(PUITrackerBarCell *)v5 primaryLabel];
    [primaryLabel2 setTextColor:labelColor];

    primaryLabel3 = [(PUITrackerBarCell *)v5 primaryLabel];
    [primaryLabel3 setTranslatesAutoresizingMaskIntoConstraints:0];

    primaryLabel4 = [(PUITrackerBarCell *)v5 primaryLabel];
    [primaryLabel4 setNumberOfLines:0];

    stackView4 = [(PUITrackerBarCell *)v5 stackView];
    primaryLabel5 = [(PUITrackerBarCell *)v5 primaryLabel];
    [stackView4 addArrangedSubview:primaryLabel5];

    v31 = objc_opt_new();
    [(PUITrackerBarCell *)v5 setBarStackView:v31];

    barStackView = [(PUITrackerBarCell *)v5 barStackView];
    [barStackView setTranslatesAutoresizingMaskIntoConstraints:0];

    barStackView2 = [(PUITrackerBarCell *)v5 barStackView];
    [barStackView2 setSpacing:8.0];

    barStackView3 = [(PUITrackerBarCell *)v5 barStackView];
    [barStackView3 setAlignment:3];

    stackView5 = [(PUITrackerBarCell *)v5 stackView];
    barStackView4 = [(PUITrackerBarCell *)v5 barStackView];
    [stackView5 addArrangedSubview:barStackView4];

    v37 = objc_opt_new();
    [(PUITrackerBarCell *)v5 setBarView:v37];

    barView = [(PUITrackerBarCell *)v5 barView];
    [barView setTranslatesAutoresizingMaskIntoConstraints:0];

    barView2 = [(PUITrackerBarCell *)v5 barView];
    layer = [barView2 layer];
    [layer setCornerRadius:2.5];

    barView3 = [(PUITrackerBarCell *)v5 barView];
    heightAnchor = [barView3 heightAnchor];
    v43 = [heightAnchor constraintEqualToConstant:5.0];
    [v43 setActive:1];

    barStackView5 = [(PUITrackerBarCell *)v5 barStackView];
    barView4 = [(PUITrackerBarCell *)v5 barView];
    [barStackView5 addArrangedSubview:barView4];

    v46 = objc_opt_new();
    [(PUITrackerBarCell *)v5 setValueLabel:v46];

    valueLabel = [(PUITrackerBarCell *)v5 valueLabel];
    [valueLabel setTranslatesAutoresizingMaskIntoConstraints:0];

    v48 = [MEMORY[0x277D74300] fontWithDescriptor:v11 size:0.0];
    valueLabel2 = [(PUITrackerBarCell *)v5 valueLabel];
    [valueLabel2 setFont:v48];

    secondaryLabelColor = [MEMORY[0x277D75348] secondaryLabelColor];
    valueLabel3 = [(PUITrackerBarCell *)v5 valueLabel];
    [valueLabel3 setTextColor:secondaryLabelColor];

    barStackView6 = [(PUITrackerBarCell *)v5 barStackView];
    valueLabel4 = [(PUITrackerBarCell *)v5 valueLabel];
    [barStackView6 addArrangedSubview:valueLabel4];

    v54 = objc_opt_new();
    [(PUITrackerBarCell *)v5 setSecondaryLabel:v54];

    v55 = [MEMORY[0x277D74300] fontWithDescriptor:v11 size:0.0];
    secondaryLabel = [(PUITrackerBarCell *)v5 secondaryLabel];
    [secondaryLabel setFont:v55];

    secondaryLabelColor2 = [MEMORY[0x277D75348] secondaryLabelColor];
    secondaryLabel2 = [(PUITrackerBarCell *)v5 secondaryLabel];
    [secondaryLabel2 setTextColor:secondaryLabelColor2];

    secondaryLabel3 = [(PUITrackerBarCell *)v5 secondaryLabel];
    [secondaryLabel3 setTranslatesAutoresizingMaskIntoConstraints:0];

    secondaryLabel4 = [(PUITrackerBarCell *)v5 secondaryLabel];
    [secondaryLabel4 setNumberOfLines:0];

    stackView6 = [(PUITrackerBarCell *)v5 stackView];
    secondaryLabel5 = [(PUITrackerBarCell *)v5 secondaryLabel];
    [stackView6 addArrangedSubview:secondaryLabel5];

    v63 = objc_opt_new();
    [(PUITrackerBarCell *)v5 setTertiaryLabel:v63];

    v64 = [MEMORY[0x277D74300] fontWithDescriptor:v11 size:0.0];
    tertiaryLabel = [(PUITrackerBarCell *)v5 tertiaryLabel];
    [tertiaryLabel setFont:v64];

    secondaryLabelColor3 = [MEMORY[0x277D75348] secondaryLabelColor];
    tertiaryLabel2 = [(PUITrackerBarCell *)v5 tertiaryLabel];
    [tertiaryLabel2 setTextColor:secondaryLabelColor3];

    tertiaryLabel3 = [(PUITrackerBarCell *)v5 tertiaryLabel];
    [tertiaryLabel3 setTranslatesAutoresizingMaskIntoConstraints:0];

    tertiaryLabel4 = [(PUITrackerBarCell *)v5 tertiaryLabel];
    [tertiaryLabel4 setNumberOfLines:0];

    stackView7 = [(PUITrackerBarCell *)v5 stackView];
    tertiaryLabel5 = [(PUITrackerBarCell *)v5 tertiaryLabel];
    [stackView7 addArrangedSubview:tertiaryLabel5];

    v72 = objc_opt_new();
    [(PUITrackerBarCell *)v5 setAppAttributedBackgroundView:v72];

    appAttributedBackgroundView = [(PUITrackerBarCell *)v5 appAttributedBackgroundView];
    [appAttributedBackgroundView setContentMode:4];

    v74 = [MEMORY[0x277D755B8] _systemImageNamed:@"appstore.circle.fill" withConfiguration:0];
    v75 = [v74 imageWithRenderingMode:2];
    appAttributedBackgroundView2 = [(PUITrackerBarCell *)v5 appAttributedBackgroundView];
    [appAttributedBackgroundView2 setImage:v75];

    appAttributedBackgroundView3 = [(PUITrackerBarCell *)v5 appAttributedBackgroundView];
    [appAttributedBackgroundView3 setTranslatesAutoresizingMaskIntoConstraints:0];

    systemOrangeColor = [MEMORY[0x277D75348] systemOrangeColor];
    appAttributedBackgroundView4 = [(PUITrackerBarCell *)v5 appAttributedBackgroundView];
    [appAttributedBackgroundView4 setTintColor:systemOrangeColor];

    appAttributedBackgroundView5 = [(PUITrackerBarCell *)v5 appAttributedBackgroundView];
    [appAttributedBackgroundView5 setHidden:1];

    contentView3 = [(PUITrackerBarCell *)v5 contentView];
    appAttributedBackgroundView6 = [(PUITrackerBarCell *)v5 appAttributedBackgroundView];
    [contentView3 addSubview:appAttributedBackgroundView6];

    v83 = objc_opt_new();
    [(PUITrackerBarCell *)v5 setAppAttributedView:v83];

    appAttributedView = [(PUITrackerBarCell *)v5 appAttributedView];
    [appAttributedView setContentMode:4];

    v85 = [MEMORY[0x277D755B8] _systemImageNamed:@"appstore.circle" withConfiguration:0];
    v86 = [v85 imageWithRenderingMode:2];
    appAttributedView2 = [(PUITrackerBarCell *)v5 appAttributedView];
    [appAttributedView2 setImage:v86];

    appAttributedView3 = [(PUITrackerBarCell *)v5 appAttributedView];
    [appAttributedView3 setTranslatesAutoresizingMaskIntoConstraints:0];

    whiteColor = [MEMORY[0x277D75348] whiteColor];
    appAttributedView4 = [(PUITrackerBarCell *)v5 appAttributedView];
    [appAttributedView4 setTintColor:whiteColor];

    appAttributedView5 = [(PUITrackerBarCell *)v5 appAttributedView];
    [appAttributedView5 setHidden:1];

    contentView4 = [(PUITrackerBarCell *)v5 contentView];
    appAttributedView6 = [(PUITrackerBarCell *)v5 appAttributedView];
    [contentView4 addSubview:appAttributedView6];
  }

  return v5;
}

- (void)updateConstraints
{
  contentView = [(PUITrackerBarCell *)self contentView];
  layoutMarginsGuide = [contentView layoutMarginsGuide];

  v5 = MEMORY[0x277CCAAD0];
  constraints = [(PUITrackerBarCell *)self constraints];
  [v5 deactivateConstraints:constraints];

  v7 = objc_opt_new();
  imageView = [(PUITrackerBarCell *)self imageView];
  image = [imageView image];

  if (image)
  {
    stackView = [(PUITrackerBarCell *)self stackView];
    leadingAnchor = [stackView leadingAnchor];
    leadingAnchor2 = [layoutMarginsGuide leadingAnchor];
    centerYAnchor5 = PSBlankIconImage();
    [centerYAnchor5 size];
    v15 = v14 + 8.0;
    v16 = leadingAnchor;
    v17 = leadingAnchor2;
  }

  else
  {
    iconLabelView = [(PUITrackerBarCell *)self iconLabelView];
    isHidden = [iconLabelView isHidden];

    if (isHidden)
    {
      stackView = [(PUITrackerBarCell *)self stackView];
      leadingAnchor = [stackView leadingAnchor];
      leadingAnchor2 = [layoutMarginsGuide leadingAnchor];
      centerYAnchor5 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
      [v7 addObject:centerYAnchor5];
      goto LABEL_7;
    }

    iconLabelView2 = [(PUITrackerBarCell *)self iconLabelView];
    leadingAnchor3 = [iconLabelView2 leadingAnchor];
    leadingAnchor4 = [layoutMarginsGuide leadingAnchor];
    v23 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
    [v7 addObject:v23];

    iconLabelView3 = [(PUITrackerBarCell *)self iconLabelView];
    centerYAnchor = [iconLabelView3 centerYAnchor];
    contentView2 = [(PUITrackerBarCell *)self contentView];
    centerYAnchor2 = [contentView2 centerYAnchor];
    v28 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    [v7 addObject:v28];

    stackView2 = [(PUITrackerBarCell *)self stackView];
    leadingAnchor5 = [stackView2 leadingAnchor];
    iconLabelView4 = [(PUITrackerBarCell *)self iconLabelView];
    trailingAnchor = [iconLabelView4 trailingAnchor];
    v33 = [leadingAnchor5 constraintEqualToSystemSpacingAfterAnchor:trailingAnchor multiplier:1.0];
    [v7 addObject:v33];

    appAttributedView = [(PUITrackerBarCell *)self appAttributedView];
    centerXAnchor = [appAttributedView centerXAnchor];
    iconLabelView5 = [(PUITrackerBarCell *)self iconLabelView];
    centerXAnchor2 = [iconLabelView5 centerXAnchor];
    v38 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2 constant:10.0];
    [v7 addObject:v38];

    appAttributedView2 = [(PUITrackerBarCell *)self appAttributedView];
    centerYAnchor3 = [appAttributedView2 centerYAnchor];
    iconLabelView6 = [(PUITrackerBarCell *)self iconLabelView];
    centerYAnchor4 = [iconLabelView6 centerYAnchor];
    v43 = [centerYAnchor3 constraintEqualToAnchor:centerYAnchor4 constant:10.0];
    [v7 addObject:v43];

    appAttributedBackgroundView = [(PUITrackerBarCell *)self appAttributedBackgroundView];
    centerXAnchor3 = [appAttributedBackgroundView centerXAnchor];
    appAttributedView3 = [(PUITrackerBarCell *)self appAttributedView];
    centerXAnchor4 = [appAttributedView3 centerXAnchor];
    v48 = [centerXAnchor3 constraintEqualToAnchor:centerXAnchor4 constant:0.0];
    [v7 addObject:v48];

    stackView = [(PUITrackerBarCell *)self appAttributedBackgroundView];
    leadingAnchor = [stackView centerYAnchor];
    leadingAnchor2 = [(PUITrackerBarCell *)self appAttributedView];
    centerYAnchor5 = [leadingAnchor2 centerYAnchor];
    v15 = 0.0;
    v16 = leadingAnchor;
    v17 = centerYAnchor5;
  }

  v49 = [v16 constraintEqualToAnchor:v17 constant:v15];
  [v7 addObject:v49];

LABEL_7:
  stackView3 = [(PUITrackerBarCell *)self stackView];
  trailingAnchor2 = [stackView3 trailingAnchor];
  trailingAnchor3 = [layoutMarginsGuide trailingAnchor];
  v53 = [trailingAnchor2 constraintEqualToAnchor:trailingAnchor3];
  [v7 addObject:v53];

  stackView4 = [(PUITrackerBarCell *)self stackView];
  topAnchor = [stackView4 topAnchor];
  contentView3 = [(PUITrackerBarCell *)self contentView];
  topAnchor2 = [contentView3 topAnchor];
  v58 = [topAnchor constraintEqualToSystemSpacingBelowAnchor:topAnchor2 multiplier:1.0];
  [v7 addObject:v58];

  contentView4 = [(PUITrackerBarCell *)self contentView];
  bottomAnchor = [contentView4 bottomAnchor];
  stackView5 = [(PUITrackerBarCell *)self stackView];
  bottomAnchor2 = [stackView5 bottomAnchor];
  v63 = [bottomAnchor constraintEqualToSystemSpacingBelowAnchor:bottomAnchor2 multiplier:1.0];
  [v7 addObject:v63];

  specifier = [(PSTableCell *)self specifier];
  v65 = [specifier objectForKeyedSubscript:@"PUITrackerBarValueKey"];
  LODWORD(stackView5) = [v65 intValue];

  if (stackView5)
  {
    barColor = [(PUITrackerBarCell *)self barColor];
    barView = [(PUITrackerBarCell *)self barView];
    [barView setBackgroundColor:barColor];

    specifier2 = [(PSTableCell *)self specifier];
    v69 = [specifier2 objectForKeyedSubscript:@"PUITrackerBarValueKey"];
    [v69 floatValue];
    v71 = v70;

    specifier3 = [(PSTableCell *)self specifier];
    v73 = [specifier3 objectForKeyedSubscript:@"PUITrackerBarCapacityKey"];
    [v73 floatValue];
    v75 = v74;

    barView2 = [(PUITrackerBarCell *)self barView];
    widthAnchor = [barView2 widthAnchor];
    stackView6 = [(PUITrackerBarCell *)self stackView];
    widthAnchor2 = [stackView6 widthAnchor];
    v80 = 0.0;
    if (v75 > 0.0)
    {
      v80 = (v71 / v75);
    }

    v81 = [widthAnchor constraintLessThanOrEqualToAnchor:widthAnchor2 multiplier:v80 constant:10.0];
    [v7 addObject:v81];
  }

  else
  {
    systemGray3Color = [MEMORY[0x277D75348] systemGray3Color];
    barView3 = [(PUITrackerBarCell *)self barView];
    [barView3 setBackgroundColor:systemGray3Color];

    barView2 = [(PUITrackerBarCell *)self barView];
    widthAnchor = [barView2 widthAnchor];
    stackView6 = [widthAnchor constraintEqualToConstant:5.0];
    [v7 addObject:stackView6];
  }

  v84 = [v7 copy];
  [(PUITrackerBarCell *)self setConstraints:v84];

  v85 = MEMORY[0x277CCAAD0];
  constraints2 = [(PUITrackerBarCell *)self constraints];
  [v85 activateConstraints:constraints2];

  v87.receiver = self;
  v87.super_class = PUITrackerBarCell;
  [(PUITrackerBarCell *)&v87 updateConstraints];
}

- (void)refreshCellContentsWithSpecifier:(id)specifier
{
  specifierCopy = specifier;
  v33.receiver = self;
  v33.super_class = PUITrackerBarCell;
  [(PSTableCell *)&v33 refreshCellContentsWithSpecifier:specifierCopy];
  v5 = [specifierCopy objectForKeyedSubscript:@"PUITrackerBarShowAppAttributedBadgeKey"];
  bOOLValue = [v5 BOOLValue];

  v7 = [specifierCopy objectForKeyedSubscript:@"PUITrackerBarIconLabelKey"];
  v8 = [v7 length];

  iconLabelView = [(PUITrackerBarCell *)self iconLabelView];
  v10 = iconLabelView;
  if (v8)
  {
    [iconLabelView setHidden:0];

    v11 = [specifierCopy objectForKeyedSubscript:@"PUITrackerBarIconLabelKey"];
    v12 = [v11 substringWithRange:{0, 1}];
    localizedUppercaseString = [v12 localizedUppercaseString];
    iconLabelView2 = [(PUITrackerBarCell *)self iconLabelView];
    [iconLabelView2 setText:localizedUppercaseString];

    appAttributedView = [(PUITrackerBarCell *)self appAttributedView];
    [appAttributedView setHidden:bOOLValue ^ 1u];

    iconLabelView = [(PUITrackerBarCell *)self appAttributedBackgroundView];
    v10 = iconLabelView;
    v16 = bOOLValue ^ 1u;
  }

  else
  {
    v16 = 1;
  }

  [iconLabelView setHidden:v16];

  titleLabel = [(PSTableCell *)self titleLabel];
  text = [titleLabel text];
  primaryLabel = [(PUITrackerBarCell *)self primaryLabel];
  [primaryLabel setText:text];

  specifier = [(PSTableCell *)self specifier];
  v21 = [specifier objectForKeyedSubscript:@"PUITrackerBarDomainOwnerKey"];
  secondaryLabel = [(PUITrackerBarCell *)self secondaryLabel];
  [secondaryLabel setText:v21];

  v23 = objc_opt_new();
  specifier2 = [(PSTableCell *)self specifier];
  v25 = [specifier2 objectForKeyedSubscript:@"PUITrackerBarValueKey"];
  v26 = [v23 stringFromNumber:v25];
  valueLabel = [(PUITrackerBarCell *)self valueLabel];
  [valueLabel setText:v26];

  specifier3 = [(PSTableCell *)self specifier];
  v29 = [specifier3 objectForKeyedSubscript:@"PUITrackerBarTertiaryLabelKey"];
  tertiaryLabel = [(PUITrackerBarCell *)self tertiaryLabel];
  [tertiaryLabel setText:v29];

  v31 = [specifierCopy objectForKeyedSubscript:@"PUITrackerBarColorKey"];
  objc_opt_class();
  LOBYTE(v29) = objc_opt_isKindOfClass();

  if (v29)
  {
    [specifierCopy objectForKeyedSubscript:@"PUITrackerBarColorKey"];
  }

  else
  {
    [MEMORY[0x277D75348] systemOrangeColor];
  }
  v32 = ;
  [(PUITrackerBarCell *)self setBarColor:v32];

  [(PUITrackerBarCell *)self setNeedsUpdateConstraints];
  [(PUITrackerBarCell *)self setNeedsLayout];
}

- (void)traitCollectionDidChange:(id)change
{
  v4.receiver = self;
  v4.super_class = PUITrackerBarCell;
  [(PUITrackerBarCell *)&v4 traitCollectionDidChange:change];
  [(PUITrackerBarCell *)self setNeedsUpdateConstraints];
  [(PUITrackerBarCell *)self setNeedsLayout];
}

@end