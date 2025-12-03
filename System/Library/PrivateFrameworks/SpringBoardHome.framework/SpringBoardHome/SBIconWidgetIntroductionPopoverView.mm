@interface SBIconWidgetIntroductionPopoverView
+ (CGSize)contentSize:(BOOL)size;
- (SBIconWidgetIntroductionDelegate)delegate;
- (SBIconWidgetIntroductionPopoverView)initWithDelegate:(id)delegate vertical:(BOOL)vertical;
- (void)_editButtonTapped:(id)tapped;
- (void)_okButtonTapped:(id)tapped;
- (void)_setUpViews:(BOOL)views;
- (void)_updateForUserInterfaceStyle;
@end

@implementation SBIconWidgetIntroductionPopoverView

+ (CGSize)contentSize:(BOOL)size
{
  currentDevice = [MEMORY[0x1E69DC938] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1 && size)
  {
    v6 = 120.0;
    v7 = 320.0;
  }

  else
  {
    currentDevice2 = [MEMORY[0x1E69DC938] currentDevice];
    userInterfaceIdiom2 = [currentDevice2 userInterfaceIdiom];

    v7 = dbl_1BEE88710[(userInterfaceIdiom2 & 0xFFFFFFFFFFFFFFFBLL) == 1];
    v6 = 74.0;
  }

  result.height = v6;
  result.width = v7;
  return result;
}

- (SBIconWidgetIntroductionPopoverView)initWithDelegate:(id)delegate vertical:(BOOL)vertical
{
  verticalCopy = vertical;
  delegateCopy = delegate;
  if (verticalCopy)
  {
    v7 = 2;
  }

  else
  {
    v7 = 0;
  }

  v12.receiver = self;
  v12.super_class = SBIconWidgetIntroductionPopoverView;
  v8 = [(SBHPopoverView *)&v12 initWithArrowLocation:v7];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_delegate, delegateCopy);
    [(SBIconWidgetIntroductionPopoverView *)v9 _setUpViews:verticalCopy];
    [(SBIconWidgetIntroductionPopoverView *)v9 _updateForUserInterfaceStyle];
    v10 = v9;
  }

  return v9;
}

- (void)_setUpViews:(BOOL)views
{
  viewsCopy = views;
  v124[4] = *MEMORY[0x1E69E9840];
  backgroundView = [(SBHPopoverView *)self backgroundView];
  [backgroundView setUserInteractionEnabled:1];
  currentDevice = [MEMORY[0x1E69DC938] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  v7 = userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL;
  if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    v8 = 14.0;
  }

  else
  {
    v8 = 13.0;
  }

  if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    v9 = 22.0;
  }

  else
  {
    v9 = 15.0;
  }

  if (viewsCopy)
  {
    v10 = 40.0;
  }

  else
  {
    v10 = 4.0;
  }

  currentDevice2 = [MEMORY[0x1E69DC938] currentDevice];
  userInterfaceIdiom2 = [currentDevice2 userInterfaceIdiom];

  v112 = [MEMORY[0x1E69DB878] systemFontOfSize:v8 weight:*MEMORY[0x1E69DB978]];
  v117 = objc_alloc_init(MEMORY[0x1E69DCC20]);
  [backgroundView addLayoutGuide:?];
  v110 = viewsCopy;
  v116 = backgroundView;
  if (viewsCopy)
  {
    v98 = MEMORY[0x1E696ACD8];
    leadingAnchor = [v117 leadingAnchor];
    [backgroundView leadingAnchor];
    v107 = widthAnchor = leadingAnchor;
    v103 = [leadingAnchor constraintEqualToAnchor:?];
    v124[0] = v103;
    trailingAnchor = [v117 trailingAnchor];
    trailingAnchor2 = [backgroundView trailingAnchor];
    centerYAnchor = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v124[1] = centerYAnchor;
    bottomAnchor = [v117 bottomAnchor];
    bottomAnchor2 = [backgroundView bottomAnchor];
    heightAnchor2 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:-10.0];
    v124[2] = heightAnchor2;
    heightAnchor = [v117 heightAnchor];
    v21 = [heightAnchor constraintLessThanOrEqualToConstant:32.0];
    v124[3] = v21;
    v22 = v124;
  }

  else
  {
    v23 = dbl_1BEE88720[(userInterfaceIdiom2 & 0xFFFFFFFFFFFFFFFBLL) == 1];
    v98 = MEMORY[0x1E696ACD8];
    widthAnchor = [v117 widthAnchor];
    v107 = [widthAnchor constraintEqualToConstant:v23];
    v123[0] = v107;
    trailingAnchor3 = [v117 trailingAnchor];
    trailingAnchor = [backgroundView trailingAnchor];
    v103 = trailingAnchor3;
    trailingAnchor2 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor];
    v123[1] = trailingAnchor2;
    centerYAnchor = [v117 centerYAnchor];
    bottomAnchor = [backgroundView centerYAnchor];
    bottomAnchor2 = [centerYAnchor constraintEqualToAnchor:bottomAnchor];
    v123[2] = bottomAnchor2;
    heightAnchor2 = [v117 heightAnchor];
    heightAnchor = [backgroundView heightAnchor];
    v21 = [heightAnchor2 constraintEqualToAnchor:heightAnchor constant:-25.0];
    v123[3] = v21;
    v22 = v123;
  }

  v25 = v7 == 1;
  v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:4];
  [v98 activateConstraints:v26];

  v27 = dbl_1BEE88730[v25];
  v114 = [MEMORY[0x1E69DB878] systemFontOfSize:15.0 weight:*MEMORY[0x1E69DB980]];
  v28 = objc_alloc_init(MEMORY[0x1E69DD250]);
  [v116 addSubview:v28];
  [v28 setTranslatesAutoresizingMaskIntoConstraints:0];
  v95 = MEMORY[0x1E696ACD8];
  centerXAnchor = [v28 centerXAnchor];
  centerXAnchor2 = [v117 centerXAnchor];
  v99 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  v122[0] = v99;
  centerYAnchor2 = [v28 centerYAnchor];
  centerYAnchor3 = [v117 centerYAnchor];
  v31 = [centerYAnchor2 constraintEqualToAnchor:centerYAnchor3];
  v122[1] = v31;
  widthAnchor2 = [v28 widthAnchor];
  v33 = [widthAnchor2 constraintEqualToConstant:1.0];
  v122[2] = v33;
  topAnchor = [v28 topAnchor];
  topAnchor2 = [v117 topAnchor];
  v36 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v122[3] = v36;
  v37 = [MEMORY[0x1E695DEC8] arrayWithObjects:v122 count:4];
  [v95 activateConstraints:v37];

  v109 = v28;
  objc_storeStrong(&self->_verticalDividerLine, v28);
  v38 = [MEMORY[0x1E69DC738] buttonWithType:1];
  v39 = SBHBundle();
  v40 = [v39 localizedStringForKey:@"WIDGET_DISCOVERABILITY_OK" value:&stru_1F3D472A8 table:@"SpringBoardHome"];
  [v38 setTitle:v40 forState:0];

  titleLabel = [v38 titleLabel];
  [titleLabel setFont:v114];

  titleLabel2 = [v38 titleLabel];
  [titleLabel2 setAdjustsFontSizeToFitWidth:1];

  [v38 setAccessibilityIdentifier:@"SBWidgetIntroductionButton-OK"];
  [v116 addSubview:v38];
  [v38 setTranslatesAutoresizingMaskIntoConstraints:0];
  v92 = MEMORY[0x1E696ACD8];
  trailingAnchor4 = [v38 trailingAnchor];
  trailingAnchor5 = [v117 trailingAnchor];
  v96 = [trailingAnchor4 constraintEqualToAnchor:trailingAnchor5 constant:-v10];
  v121[0] = v96;
  widthAnchor3 = [v38 widthAnchor];
  v44 = [widthAnchor3 constraintEqualToConstant:v27];
  v121[1] = v44;
  centerYAnchor4 = [v38 centerYAnchor];
  centerYAnchor5 = [v117 centerYAnchor];
  v47 = [centerYAnchor4 constraintEqualToAnchor:centerYAnchor5];
  v121[2] = v47;
  heightAnchor3 = [v38 heightAnchor];
  heightAnchor4 = [v117 heightAnchor];
  v50 = [heightAnchor3 constraintEqualToAnchor:heightAnchor4];
  v121[3] = v50;
  v51 = [MEMORY[0x1E695DEC8] arrayWithObjects:v121 count:4];
  [v92 activateConstraints:v51];

  [v38 addTarget:self action:sel__okButtonTapped_ forControlEvents:64];
  v106 = v38;
  objc_storeStrong(&self->_okButton, v38);
  v52 = [MEMORY[0x1E69DC738] buttonWithType:1];
  currentDevice3 = [MEMORY[0x1E69DC938] currentDevice];
  userInterfaceIdiom3 = [currentDevice3 userInterfaceIdiom];

  if ((userInterfaceIdiom3 & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    v55 = @"WIDGET_DISCOVERABILITY_EDIT";
  }

  else
  {
    v55 = @"WIDGET_DISCOVERABILITY_UNDO";
  }

  v56 = SBHBundle();
  v57 = [v56 localizedStringForKey:v55 value:&stru_1F3D472A8 table:@"SpringBoardHome"];

  v97 = v57;
  [v52 setTitle:v57 forState:0];
  titleLabel3 = [v52 titleLabel];
  [titleLabel3 setFont:v114];

  titleLabel4 = [v52 titleLabel];
  [titleLabel4 setAdjustsFontSizeToFitWidth:1];

  [v52 setAccessibilityIdentifier:@"SBWidgetIntroductionButton-Edit"];
  [v116 addSubview:v52];
  [v52 setTranslatesAutoresizingMaskIntoConstraints:0];
  v88 = MEMORY[0x1E696ACD8];
  leadingAnchor2 = [v52 leadingAnchor];
  leadingAnchor3 = [v117 leadingAnchor];
  v90 = [leadingAnchor2 constraintEqualToAnchor:leadingAnchor3 constant:v10];
  v120[0] = v90;
  widthAnchor4 = [v52 widthAnchor];
  v61 = [widthAnchor4 constraintEqualToConstant:v27];
  v120[1] = v61;
  centerYAnchor6 = [v52 centerYAnchor];
  centerYAnchor7 = [v117 centerYAnchor];
  v64 = [centerYAnchor6 constraintEqualToAnchor:centerYAnchor7];
  v120[2] = v64;
  heightAnchor5 = [v52 heightAnchor];
  heightAnchor6 = [v117 heightAnchor];
  v67 = [heightAnchor5 constraintEqualToAnchor:heightAnchor6];
  v120[3] = v67;
  v68 = [MEMORY[0x1E695DEC8] arrayWithObjects:v120 count:4];
  [v88 activateConstraints:v68];

  [v52 addTarget:self action:sel__editButtonTapped_ forControlEvents:64];
  v102 = v52;
  objc_storeStrong(&self->_editButton, v52);
  v69 = objc_alloc_init(MEMORY[0x1E69DCC10]);
  v70 = SBHBundle();
  v71 = [v70 localizedStringForKey:@"WIDGET_DISCOVERABILITY_DESCRIPTION" value:&stru_1F3D472A8 table:@"SpringBoardHome"];
  [(UILabel *)v69 setText:v71];

  [(UILabel *)v69 setFont:v112];
  [(UILabel *)v69 setAdjustsFontSizeToFitWidth:1];
  [(UILabel *)v69 setMinimumScaleFactor:0.6];
  [(UILabel *)v69 setNumberOfLines:3];
  [v116 addSubview:v69];
  [(UILabel *)v69 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UILabel *)v69 setTextAlignment:1];
  v87 = MEMORY[0x1E696ACD8];
  leadingAnchor4 = [(UILabel *)v69 leadingAnchor];
  leadingAnchor5 = [v116 leadingAnchor];
  v94 = leadingAnchor4;
  v73 = [leadingAnchor4 constraintEqualToAnchor:v9 constant:?];
  v89 = v73;
  if (v110)
  {
    v119[0] = v73;
    trailingAnchor6 = [(UILabel *)v69 trailingAnchor];
    [v116 trailingAnchor];
    v86 = v111 = trailingAnchor6;
    v75 = [trailingAnchor6 constraintEqualToAnchor:-v9 constant:?];
    v119[1] = v75;
    centerXAnchor3 = [(UILabel *)v69 centerXAnchor];
    centerXAnchor4 = [v116 centerXAnchor];
    v78 = [centerXAnchor3 constraintEqualToAnchor:centerXAnchor4];
    v119[2] = v78;
    bottomAnchor3 = [(UILabel *)v69 bottomAnchor];
    topAnchor3 = [v117 topAnchor];
    v81 = [bottomAnchor3 constraintEqualToAnchor:topAnchor3 constant:-15.0];
    v119[3] = v81;
    v82 = v119;
  }

  else
  {
    v118[0] = v73;
    trailingAnchor7 = [(UILabel *)v69 trailingAnchor];
    [v117 leadingAnchor];
    v86 = v111 = trailingAnchor7;
    v75 = [trailingAnchor7 constraintEqualToAnchor:-v10 constant:?];
    v118[1] = v75;
    centerXAnchor3 = [(UILabel *)v69 centerYAnchor];
    centerXAnchor4 = [v116 centerYAnchor];
    v78 = [centerXAnchor3 constraintEqualToAnchor:centerXAnchor4];
    v118[2] = v78;
    bottomAnchor3 = [(UILabel *)v69 heightAnchor];
    topAnchor3 = [v116 heightAnchor];
    v81 = [bottomAnchor3 constraintLessThanOrEqualToAnchor:topAnchor3 constant:-8.0];
    v118[3] = v81;
    v82 = v118;
  }

  v84 = [MEMORY[0x1E695DEC8] arrayWithObjects:v82 count:4];
  [v87 activateConstraints:v84];

  textLabel = self->_textLabel;
  self->_textLabel = v69;
}

- (void)_updateForUserInterfaceStyle
{
  v15 = [MEMORY[0x1E69DD1B8] traitCollectionWithUserInterfaceStyle:2];
  textLabel = [(SBIconWidgetIntroductionPopoverView *)self textLabel];
  secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
  v5 = [secondaryLabelColor resolvedColorWithTraitCollection:v15];
  [textLabel setTextColor:v5];

  [textLabel _setDrawsAsBackdropOverlayWithBlendMode:2];
  verticalDividerLine = [(SBIconWidgetIntroductionPopoverView *)self verticalDividerLine];
  quaternaryLabelColor = [MEMORY[0x1E69DC888] quaternaryLabelColor];
  v8 = [quaternaryLabelColor resolvedColorWithTraitCollection:v15];
  [verticalDividerLine setBackgroundColor:v8];

  [verticalDividerLine _setDrawsAsBackdropOverlayWithBlendMode:2];
  okButton = [(SBIconWidgetIntroductionPopoverView *)self okButton];
  linkColor = [MEMORY[0x1E69DC888] linkColor];
  v11 = [linkColor resolvedColorWithTraitCollection:v15];
  [okButton setTintColor:v11];

  [okButton _setDrawsAsBackdropOverlayWithBlendMode:2];
  editButton = [(SBIconWidgetIntroductionPopoverView *)self editButton];
  secondaryLabelColor2 = [MEMORY[0x1E69DC888] secondaryLabelColor];
  v14 = [secondaryLabelColor2 resolvedColorWithTraitCollection:v15];
  [editButton setTintColor:v14];

  [editButton _setDrawsAsBackdropOverlayWithBlendMode:2];
}

- (void)_okButtonTapped:(id)tapped
{
  delegate = [(SBIconWidgetIntroductionPopoverView *)self delegate];
  [delegate acceptWidgetIntroduction];
}

- (void)_editButtonTapped:(id)tapped
{
  delegate = [(SBIconWidgetIntroductionPopoverView *)self delegate];
  [delegate rejectWidgetIntroduction];
}

- (SBIconWidgetIntroductionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end