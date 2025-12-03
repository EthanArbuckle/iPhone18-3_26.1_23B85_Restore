@interface WGWidgetPinningTeachingView
- (WGWidgetPinningTeachingView)init;
- (WGWidgetPinningTeachingViewDelegate)delegate;
- (void)_contentSizeCategoryDidChange;
- (void)_createConstraints;
- (void)_createContainerViews;
- (void)_createContentViews;
- (void)_noButtonTapped;
- (void)_setupButtonsTargets;
- (void)_updateAppearance;
- (void)_updateFontDependantConstraints;
- (void)_updateFonts;
- (void)_yesButtonTapped;
@end

@implementation WGWidgetPinningTeachingView

- (WGWidgetPinningTeachingView)init
{
  v6.receiver = self;
  v6.super_class = WGWidgetPinningTeachingView;
  v2 = [(WGWidgetPinningTeachingView *)&v6 init];
  v3 = v2;
  if (v2)
  {
    [(WGWidgetPinningTeachingView *)v2 setClipsSubviews:0];
    [(WGWidgetPinningTeachingView *)v3 _createContainerViews];
    [(WGWidgetPinningTeachingView *)v3 _createContentViews];
    [(WGWidgetPinningTeachingView *)v3 _createConstraints];
    [(WGWidgetPinningTeachingView *)v3 _setupButtonsTargets];
    [(WGWidgetPinningTeachingView *)v3 _updateFonts];
    [(WGWidgetPinningTeachingView *)v3 _updateFontDependantConstraints];
    [(WGWidgetPinningTeachingView *)v3 _updateAppearance];
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v3 selector:sel__contentSizeCategoryDidChange name:*MEMORY[0x277D76810] object:0];
  }

  return v3;
}

- (void)_yesButtonTapped
{
  delegate = [(WGWidgetPinningTeachingView *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate widgetPinningTeachingViewDidSelectYes:self];
  }
}

- (void)_noButtonTapped
{
  delegate = [(WGWidgetPinningTeachingView *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate widgetPinningTeachingViewDidSelectNo:self];
  }
}

- (void)_createContainerViews
{
  v3 = objc_alloc_init(MEMORY[0x277D75D18]);
  contentView = self->_contentView;
  self->_contentView = v3;

  v5 = self->_contentView;
  systemGrayColor = [MEMORY[0x277D75348] systemGrayColor];
  [(UIView *)v5 setBackgroundColor:systemGrayColor];

  [(UIView *)self->_contentView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIView *)self->_contentView _setContinuousCornerRadius:13.0];
  [(UIView *)self->_contentView setClipsSubviews:1];
  v7 = self->_contentView;

  [(WGWidgetPinningTeachingView *)self addSubview:v7];
}

- (void)_createContentViews
{
  contentView = [(WGWidgetPinningTeachingView *)self contentView];
  v38 = *MEMORY[0x277D769D0];
  v3 = [MEMORY[0x277D74310] preferredFontDescriptorWithTextStyle:?];
  v39 = [v3 fontDescriptorWithSymbolicTraits:2];

  v4 = objc_alloc_init(MEMORY[0x277D756B8]);
  titleLabel = self->_titleLabel;
  self->_titleLabel = v4;

  [(UILabel *)self->_titleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  v6 = self->_titleLabel;
  v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v8 = [v7 localizedStringForKey:@"WIDGETS_EDIT_TODAY_HEADLINE" value:&stru_2883435D8 table:@"Widgets"];
  [(UILabel *)v6 setText:v8];

  v9 = self->_titleLabel;
  v10 = [MEMORY[0x277D74300] fontWithDescriptor:v39 size:0.0];
  [(UILabel *)v9 setFont:v10];

  [contentView addSubview:self->_titleLabel];
  v11 = objc_alloc_init(MEMORY[0x277D756B8]);
  bodyLabel = self->_bodyLabel;
  self->_bodyLabel = v11;

  [(UILabel *)self->_bodyLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  v13 = self->_bodyLabel;
  v14 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v15 = [v14 localizedStringForKey:@"WIDGETS_PIN_TEACHING_BODY" value:&stru_2883435D8 table:@"Widgets"];
  [(UILabel *)v13 setText:v15];

  [(UILabel *)self->_bodyLabel setNumberOfLines:0];
  v16 = self->_bodyLabel;
  v17 = [MEMORY[0x277D74300] preferredFontForTextStyle:v38];
  [(UILabel *)v16 setFont:v17];

  [contentView addSubview:self->_bodyLabel];
  v18 = objc_alloc_init(WGColorHighlightButton);
  yesButton = self->_yesButton;
  self->_yesButton = &v18->super;

  [(UIButton *)self->_yesButton setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIButton *)self->_yesButton _setContinuousCornerRadius:8.0];
  v20 = self->_yesButton;
  v21 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v22 = [v21 localizedStringForKey:@"WIDGETS_PIN_TEACHING_YES_BUTTON" value:&stru_2883435D8 table:@"Widgets"];
  [(UIButton *)v20 setTitle:v22 forState:0];

  v23 = self->_yesButton;
  v24 = [MEMORY[0x277D75348] colorWithWhite:1.0 alpha:0.1];
  [(UIButton *)v23 setBackgroundColor:v24];

  titleLabel = [(UIButton *)self->_yesButton titleLabel];
  v26 = [MEMORY[0x277D74300] preferredFontForTextStyle:v38];
  [titleLabel setFont:v26];

  [titleLabel setNumberOfLines:0];
  [titleLabel setTextAlignment:1];
  [contentView addSubview:self->_yesButton];
  v27 = objc_alloc_init(WGColorHighlightButton);
  noButton = self->_noButton;
  self->_noButton = &v27->super;

  [(UIButton *)self->_noButton setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIButton *)self->_noButton _setContinuousCornerRadius:8.0];
  v29 = self->_noButton;
  v30 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v31 = [v30 localizedStringForKey:@"WIDGETS_PIN_TEACHING_NO_BUTTON" value:&stru_2883435D8 table:@"Widgets"];
  [(UIButton *)v29 setTitle:v31 forState:0];

  v32 = self->_noButton;
  v33 = [MEMORY[0x277D75348] colorWithWhite:1.0 alpha:0.1];
  [(UIButton *)v32 setBackgroundColor:v33];

  titleLabel2 = [(UIButton *)self->_noButton titleLabel];
  v35 = [MEMORY[0x277D74300] preferredFontForTextStyle:v38];
  [titleLabel2 setFont:v35];

  [titleLabel2 setNumberOfLines:0];
  [titleLabel2 setTextAlignment:1];
  [contentView addSubview:self->_noButton];
  v36 = objc_alloc_init(WGWidgetPinningTeachingAnimationView);
  iconImageView = self->_iconImageView;
  self->_iconImageView = v36;

  [(WGWidgetPinningTeachingAnimationView *)self->_iconImageView setTranslatesAutoresizingMaskIntoConstraints:0];
  [contentView addSubview:self->_iconImageView];
}

- (void)_createConstraints
{
  contentView = [(WGWidgetPinningTeachingView *)self contentView];
  heightAnchor = [(WGWidgetPinningTeachingView *)self heightAnchor];
  heightAnchor2 = [contentView heightAnchor];
  v5 = [heightAnchor constraintEqualToAnchor:heightAnchor2 multiplier:1.0];
  [v5 setActive:1];

  widthAnchor = [(WGWidgetPinningTeachingView *)self widthAnchor];
  widthAnchor2 = [contentView widthAnchor];
  v8 = [widthAnchor constraintEqualToAnchor:widthAnchor2 multiplier:1.0];
  [v8 setActive:1];

  leadingAnchor = [(WGWidgetPinningTeachingAnimationView *)self->_iconImageView leadingAnchor];
  leadingAnchor2 = [contentView leadingAnchor];
  v11 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:22.0];
  [v11 setActive:1];

  topAnchor = [(WGWidgetPinningTeachingAnimationView *)self->_iconImageView topAnchor];
  topAnchor2 = [contentView topAnchor];
  v14 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:29.5];
  [v14 setActive:1];

  heightAnchor3 = [(WGWidgetPinningTeachingAnimationView *)self->_iconImageView heightAnchor];
  v16 = [heightAnchor3 constraintEqualToConstant:51.0];
  [v16 setActive:1];

  widthAnchor3 = [(WGWidgetPinningTeachingAnimationView *)self->_iconImageView widthAnchor];
  v18 = [widthAnchor3 constraintEqualToConstant:63.0];
  [v18 setActive:1];

  leadingAnchor3 = [(UILabel *)self->_titleLabel leadingAnchor];
  leadingAnchor4 = [contentView leadingAnchor];
  v21 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4 constant:103.0];
  [v21 setActive:1];

  trailingAnchor = [(UILabel *)self->_titleLabel trailingAnchor];
  trailingAnchor2 = [contentView trailingAnchor];
  v24 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-22.0];
  [v24 setActive:1];

  firstBaselineAnchor = [(UILabel *)self->_titleLabel firstBaselineAnchor];
  topAnchor3 = [contentView topAnchor];
  v27 = [firstBaselineAnchor constraintEqualToAnchor:topAnchor3 constant:0.0];
  titleLabelTopConstraint = self->_titleLabelTopConstraint;
  self->_titleLabelTopConstraint = v27;

  [(NSLayoutConstraint *)self->_titleLabelTopConstraint setActive:1];
  firstBaselineAnchor2 = [(UILabel *)self->_bodyLabel firstBaselineAnchor];
  lastBaselineAnchor = [(UILabel *)self->_titleLabel lastBaselineAnchor];
  v31 = [firstBaselineAnchor2 constraintEqualToAnchor:lastBaselineAnchor constant:0.0];
  titleLabelToBodyLabelConstraint = self->_titleLabelToBodyLabelConstraint;
  self->_titleLabelToBodyLabelConstraint = v31;

  [(NSLayoutConstraint *)self->_titleLabelToBodyLabelConstraint setActive:1];
  leadingAnchor5 = [(UILabel *)self->_bodyLabel leadingAnchor];
  leadingAnchor6 = [(UILabel *)self->_titleLabel leadingAnchor];
  v35 = [leadingAnchor5 constraintEqualToAnchor:leadingAnchor6 constant:0.0];
  [v35 setActive:1];

  trailingAnchor3 = [(UILabel *)self->_bodyLabel trailingAnchor];
  trailingAnchor4 = [(UILabel *)self->_titleLabel trailingAnchor];
  v38 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4 constant:0.0];
  [v38 setActive:1];

  topAnchor4 = [(UIButton *)self->_yesButton topAnchor];
  lastBaselineAnchor2 = [(UILabel *)self->_bodyLabel lastBaselineAnchor];
  v41 = [topAnchor4 constraintEqualToAnchor:lastBaselineAnchor2 constant:19.0];
  [v41 setActive:1];

  bottomAnchor = [contentView bottomAnchor];
  bottomAnchor2 = [(UIButton *)self->_yesButton bottomAnchor];
  v44 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:9.0];

  LODWORD(v45) = 1132068864;
  [v44 setPriority:v45];
  [v44 setActive:1];
  topAnchor5 = [(UIButton *)self->_noButton topAnchor];
  topAnchor6 = [(UIButton *)self->_yesButton topAnchor];
  v48 = [topAnchor5 constraintEqualToAnchor:topAnchor6 constant:0.0];
  [v48 setActive:1];

  bottomAnchor3 = [(UIButton *)self->_noButton bottomAnchor];
  bottomAnchor4 = [(UIButton *)self->_yesButton bottomAnchor];
  v51 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4 constant:0.0];
  [v51 setActive:1];

  leadingAnchor7 = [(UIButton *)self->_noButton leadingAnchor];
  leadingAnchor8 = [contentView leadingAnchor];
  v54 = [leadingAnchor7 constraintEqualToAnchor:leadingAnchor8 constant:9.0];
  [v54 setActive:1];

  leadingAnchor9 = [(UIButton *)self->_yesButton leadingAnchor];
  trailingAnchor5 = [(UIButton *)self->_noButton trailingAnchor];
  v57 = [leadingAnchor9 constraintEqualToAnchor:trailingAnchor5 constant:9.0];
  [v57 setActive:1];

  trailingAnchor6 = [contentView trailingAnchor];
  trailingAnchor7 = [(UIButton *)self->_yesButton trailingAnchor];
  v60 = [trailingAnchor6 constraintEqualToAnchor:trailingAnchor7 constant:9.0];
  [v60 setActive:1];

  widthAnchor4 = [(UIButton *)self->_noButton widthAnchor];
  widthAnchor5 = [(UIButton *)self->_yesButton widthAnchor];
  v63 = [widthAnchor4 constraintEqualToAnchor:widthAnchor5];
  [v63 setActive:1];
}

- (void)_setupButtonsTargets
{
  [(UIButton *)self->_yesButton addTarget:self action:sel__yesButtonTapped forControlEvents:64];
  noButton = self->_noButton;

  [(UIButton *)noButton addTarget:self action:sel__noButtonTapped forControlEvents:64];
}

- (void)_contentSizeCategoryDidChange
{
  [(WGWidgetPinningTeachingView *)self _updateFonts];

  [(WGWidgetPinningTeachingView *)self _updateFontDependantConstraints];
}

- (void)_updateFonts
{
  v3 = *MEMORY[0x277D769D0];
  v4 = [MEMORY[0x277D74310] preferredFontDescriptorWithTextStyle:*MEMORY[0x277D769D0]];
  v9 = [v4 fontDescriptorWithSymbolicTraits:2];

  v5 = [MEMORY[0x277D74300] fontWithDescriptor:v9 size:0.0];
  [(UILabel *)self->_titleLabel setFont:v5];
  v6 = [MEMORY[0x277D74300] preferredFontForTextStyle:v3];
  [(UILabel *)self->_bodyLabel setFont:v6];
  titleLabel = [(UIButton *)self->_yesButton titleLabel];
  [titleLabel setFont:v6];

  titleLabel2 = [(UIButton *)self->_noButton titleLabel];
  [titleLabel2 setFont:v6];
}

- (void)_updateFontDependantConstraints
{
  font = [(UILabel *)self->_titleLabel font];
  [font capHeight];
  [(NSLayoutConstraint *)self->_titleLabelTopConstraint setConstant:v3 + 19.5];
  [font lineHeight];
  v5 = v4;
  [font leading];
  [(NSLayoutConstraint *)self->_titleLabelToBodyLabelConstraint setConstant:v5 + v6 + 1.0];
}

- (void)_updateAppearance
{
  traitCollection = [(WGWidgetPinningTeachingView *)self traitCollection];
  userInterfaceStyle = [traitCollection userInterfaceStyle];

  contentView = [(WGWidgetPinningTeachingView *)self contentView];
  if (userInterfaceStyle == 2)
  {
    systemGray6Color = [MEMORY[0x277D75348] systemGray6Color];
    [contentView setBackgroundColor:systemGray6Color];

    titleLabel = self->_titleLabel;
    whiteColor = [MEMORY[0x277D75348] whiteColor];
    [(UILabel *)titleLabel setTextColor:whiteColor];

    bodyLabel = self->_bodyLabel;
    systemGrayColor = [MEMORY[0x277D75348] systemGrayColor];
    [(UILabel *)bodyLabel setTextColor:systemGrayColor];

    yesButton = self->_yesButton;
    whiteColor2 = [MEMORY[0x277D75348] whiteColor];
    [(UIButton *)yesButton setTitleColor:whiteColor2 forState:0];

    v13 = self->_yesButton;
    systemGray4Color = [MEMORY[0x277D75348] systemGray4Color];
    [(UIButton *)v13 setBackgroundColor:systemGray4Color];

    noButton = self->_noButton;
    whiteColor3 = [MEMORY[0x277D75348] whiteColor];
    [(UIButton *)noButton setTitleColor:whiteColor3 forState:0];

    v17 = self->_noButton;
    [MEMORY[0x277D75348] systemGray4Color];
  }

  else
  {
    whiteColor4 = [MEMORY[0x277D75348] whiteColor];
    [contentView setBackgroundColor:whiteColor4];

    v19 = self->_titleLabel;
    blackColor = [MEMORY[0x277D75348] blackColor];
    [(UILabel *)v19 setTextColor:blackColor];

    v21 = self->_bodyLabel;
    systemGrayColor2 = [MEMORY[0x277D75348] systemGrayColor];
    [(UILabel *)v21 setTextColor:systemGrayColor2];

    v23 = self->_yesButton;
    blackColor2 = [MEMORY[0x277D75348] blackColor];
    [(UIButton *)v23 setTitleColor:blackColor2 forState:0];

    v25 = self->_yesButton;
    systemGray5Color = [MEMORY[0x277D75348] systemGray5Color];
    [(UIButton *)v25 setBackgroundColor:systemGray5Color];

    v27 = self->_noButton;
    blackColor3 = [MEMORY[0x277D75348] blackColor];
    [(UIButton *)v27 setTitleColor:blackColor3 forState:0];

    v17 = self->_noButton;
    [MEMORY[0x277D75348] systemGray5Color];
  }
  v29 = ;
  [(UIButton *)v17 setBackgroundColor:?];
}

- (WGWidgetPinningTeachingViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end