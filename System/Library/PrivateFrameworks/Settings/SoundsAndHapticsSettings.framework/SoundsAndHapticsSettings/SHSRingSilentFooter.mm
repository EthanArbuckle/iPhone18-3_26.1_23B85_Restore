@interface SHSRingSilentFooter
+ (id)newImageView;
+ (id)newTextView;
- (SHSRingSilentFooter)initWithSpecifier:(id)specifier;
- (double)preferredHeightForWidth:(double)width inTableView:(id)view;
@end

@implementation SHSRingSilentFooter

+ (id)newTextView
{
  appearance = [MEMORY[0x277D3FA48] appearance];
  altTextColor = [appearance altTextColor];
  v4 = altTextColor;
  if (altTextColor)
  {
    v5 = altTextColor;
  }

  else
  {
    v5 = PreferencesTableViewFooterColor();
  }

  v6 = v5;

  v7 = objc_alloc_init(MEMORY[0x277D75C40]);
  [v7 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v7 setTextColor:v6];
  clearColor = [MEMORY[0x277D75348] clearColor];
  [v7 setBackgroundColor:clearColor];

  v9 = PreferencesTableViewFooterFont();
  [v7 setFont:v9];

  [v7 setShowsVerticalScrollIndicator:0];
  [v7 setEditable:0];
  [v7 setSelectable:1];
  [v7 setScrollEnabled:0];
  textContainer = [v7 textContainer];
  [textContainer setLineFragmentPadding:0.0];

  [v7 setTextContainerInset:{*MEMORY[0x277D768C8], *(MEMORY[0x277D768C8] + 8), *(MEMORY[0x277D768C8] + 16), *(MEMORY[0x277D768C8] + 24)}];
  [v7 _setInteractiveTextSelectionDisabled:1];

  return v7;
}

+ (id)newImageView
{
  v2 = objc_opt_new();
  [v2 setContentMode:5];
  LODWORD(v3) = 1148846080;
  [v2 setContentCompressionResistancePriority:0 forAxis:v3];
  LODWORD(v4) = 1148846080;
  [v2 setContentCompressionResistancePriority:1 forAxis:v4];
  [v2 setTranslatesAutoresizingMaskIntoConstraints:0];
  widthAnchor = [v2 widthAnchor];
  v6 = [widthAnchor constraintEqualToConstant:40.0];
  [v6 setActive:1];

  return v2;
}

- (SHSRingSilentFooter)initWithSpecifier:(id)specifier
{
  v3 = [(SHSRingSilentFooter *)self initWithFrame:specifier, *MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  v4 = v3;
  if (v3)
  {
    contentView = [(SHSRingSilentFooter *)v3 contentView];
    layoutMarginsGuide = [contentView layoutMarginsGuide];

    v7 = [MEMORY[0x277D755D0] configurationWithPointSize:5 weight:28.0];
    v8 = objc_opt_new();
    [v8 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v8 setAxis:1];
    contentView2 = [(SHSRingSilentFooter *)v4 contentView];
    [contentView2 addSubview:v8];

    topAnchor = [v8 topAnchor];
    [layoutMarginsGuide topAnchor];
    v11 = v47 = v4;
    v12 = [topAnchor constraintEqualToAnchor:v11];
    [v12 setActive:1];

    leadingAnchor = [v8 leadingAnchor];
    leadingAnchor2 = [layoutMarginsGuide leadingAnchor];
    v15 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    [v15 setActive:1];

    trailingAnchor = [v8 trailingAnchor];
    v46 = layoutMarginsGuide;
    trailingAnchor2 = [layoutMarginsGuide trailingAnchor];
    v18 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    [v18 setActive:1];

    bottomAnchor = [v8 bottomAnchor];
    bottomAnchor2 = [layoutMarginsGuide bottomAnchor];
    v21 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    [v21 setActive:1];

    v22 = objc_opt_new();
    [v22 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v22 setAxis:0];
    [v8 addArrangedSubview:v22];
    [v8 setCustomSpacing:v22 afterView:18.0];
    v41 = v7;
    v23 = [MEMORY[0x277D755B8] systemImageNamed:@"bell.fill" withConfiguration:v7];
    labelColor = [MEMORY[0x277D75348] labelColor];
    v45 = [v23 imageWithTintColor:labelColor renderingMode:1];

    v44 = +[SHSRingSilentFooter newImageView];
    [v44 setImage:v45];
    [v22 addArrangedSubview:v44];
    [v22 setCustomSpacing:v44 afterView:8.0];
    v25 = objc_opt_new();
    [v25 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v25 setAxis:1];
    [v22 addArrangedSubview:v25];
    v43 = +[SHSRingSilentFooter newTextView];
    v26 = SHS_LocalizedStringForSounds(@"RING_MODE");
    localizedUppercaseString = [v26 localizedUppercaseString];
    [v43 setText:localizedUppercaseString];

    [v25 addArrangedSubview:v43];
    [v25 setCustomSpacing:v43 afterView:5.0];
    v42 = +[SHSRingSilentFooter newTextView];
    v28 = SHS_LocalizedStringForSounds(@"RING_MODE_FOOTER");
    [v42 setText:v28];

    [v25 addArrangedSubview:v42];
    v29 = objc_opt_new();
    [v29 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v29 setAxis:0];
    [v8 addArrangedSubview:v29];
    v30 = [MEMORY[0x277D755B8] systemImageNamed:@"bell.slash.fill" withConfiguration:v7];
    labelColor2 = [MEMORY[0x277D75348] labelColor];
    v32 = [v30 imageWithTintColor:labelColor2 renderingMode:1];

    v33 = +[SHSRingSilentFooter newImageView];
    [v33 setImage:v32];
    [v29 addArrangedSubview:v33];
    [v29 setCustomSpacing:v33 afterView:8.0];
    v34 = objc_opt_new();
    [v34 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v34 setAxis:1];
    [v29 addArrangedSubview:v34];
    v35 = +[SHSRingSilentFooter newTextView];
    v36 = SHS_LocalizedStringForSounds(@"SILENT_MODE");
    localizedUppercaseString2 = [v36 localizedUppercaseString];
    [v35 setText:localizedUppercaseString2];

    [v34 addArrangedSubview:v35];
    [v34 setCustomSpacing:v35 afterView:5.0];
    v38 = +[SHSRingSilentFooter newTextView];
    v39 = SHS_LocalizedStringForSounds(@"SILENT_MODE_FOOTER");
    [v38 setText:v39];

    [v34 addArrangedSubview:v38];
    v4 = v47;
  }

  return v4;
}

- (double)preferredHeightForWidth:(double)width inTableView:(id)view
{
  viewCopy = view;
  v7 = *(MEMORY[0x277D76C78] + 8);
  superview = [(SHSRingSilentFooter *)self superview];

  if (!superview)
  {
    [(SHSRingSilentFooter *)self layoutMargins];
    v12 = v11;
    v14 = v13;
    [viewCopy layoutMargins];
    v16 = v15;
    [viewCopy layoutMargins];
    [(SHSRingSilentFooter *)self setLayoutMargins:v12, v16, v14];
  }

  LODWORD(v9) = 1148846080;
  LODWORD(v10) = 1112014848;
  [(SHSRingSilentFooter *)self systemLayoutSizeFittingSize:width withHorizontalFittingPriority:v7 verticalFittingPriority:v9, v10];
  v18 = v17;

  return v18;
}

@end