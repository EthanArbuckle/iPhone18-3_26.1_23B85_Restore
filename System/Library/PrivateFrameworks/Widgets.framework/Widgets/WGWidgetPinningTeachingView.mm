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
    v4 = [MEMORY[0x277CCAB98] defaultCenter];
    [v4 addObserver:v3 selector:sel__contentSizeCategoryDidChange name:*MEMORY[0x277D76810] object:0];
  }

  return v3;
}

- (void)_yesButtonTapped
{
  v3 = [(WGWidgetPinningTeachingView *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v3 widgetPinningTeachingViewDidSelectYes:self];
  }
}

- (void)_noButtonTapped
{
  v3 = [(WGWidgetPinningTeachingView *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v3 widgetPinningTeachingViewDidSelectNo:self];
  }
}

- (void)_createContainerViews
{
  v3 = objc_alloc_init(MEMORY[0x277D75D18]);
  contentView = self->_contentView;
  self->_contentView = v3;

  v5 = self->_contentView;
  v6 = [MEMORY[0x277D75348] systemGrayColor];
  [(UIView *)v5 setBackgroundColor:v6];

  [(UIView *)self->_contentView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIView *)self->_contentView _setContinuousCornerRadius:13.0];
  [(UIView *)self->_contentView setClipsSubviews:1];
  v7 = self->_contentView;

  [(WGWidgetPinningTeachingView *)self addSubview:v7];
}

- (void)_createContentViews
{
  v40 = [(WGWidgetPinningTeachingView *)self contentView];
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

  [v40 addSubview:self->_titleLabel];
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

  [v40 addSubview:self->_bodyLabel];
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

  v25 = [(UIButton *)self->_yesButton titleLabel];
  v26 = [MEMORY[0x277D74300] preferredFontForTextStyle:v38];
  [v25 setFont:v26];

  [v25 setNumberOfLines:0];
  [v25 setTextAlignment:1];
  [v40 addSubview:self->_yesButton];
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

  v34 = [(UIButton *)self->_noButton titleLabel];
  v35 = [MEMORY[0x277D74300] preferredFontForTextStyle:v38];
  [v34 setFont:v35];

  [v34 setNumberOfLines:0];
  [v34 setTextAlignment:1];
  [v40 addSubview:self->_noButton];
  v36 = objc_alloc_init(WGWidgetPinningTeachingAnimationView);
  iconImageView = self->_iconImageView;
  self->_iconImageView = v36;

  [(WGWidgetPinningTeachingAnimationView *)self->_iconImageView setTranslatesAutoresizingMaskIntoConstraints:0];
  [v40 addSubview:self->_iconImageView];
}

- (void)_createConstraints
{
  v64 = [(WGWidgetPinningTeachingView *)self contentView];
  v3 = [(WGWidgetPinningTeachingView *)self heightAnchor];
  v4 = [v64 heightAnchor];
  v5 = [v3 constraintEqualToAnchor:v4 multiplier:1.0];
  [v5 setActive:1];

  v6 = [(WGWidgetPinningTeachingView *)self widthAnchor];
  v7 = [v64 widthAnchor];
  v8 = [v6 constraintEqualToAnchor:v7 multiplier:1.0];
  [v8 setActive:1];

  v9 = [(WGWidgetPinningTeachingAnimationView *)self->_iconImageView leadingAnchor];
  v10 = [v64 leadingAnchor];
  v11 = [v9 constraintEqualToAnchor:v10 constant:22.0];
  [v11 setActive:1];

  v12 = [(WGWidgetPinningTeachingAnimationView *)self->_iconImageView topAnchor];
  v13 = [v64 topAnchor];
  v14 = [v12 constraintEqualToAnchor:v13 constant:29.5];
  [v14 setActive:1];

  v15 = [(WGWidgetPinningTeachingAnimationView *)self->_iconImageView heightAnchor];
  v16 = [v15 constraintEqualToConstant:51.0];
  [v16 setActive:1];

  v17 = [(WGWidgetPinningTeachingAnimationView *)self->_iconImageView widthAnchor];
  v18 = [v17 constraintEqualToConstant:63.0];
  [v18 setActive:1];

  v19 = [(UILabel *)self->_titleLabel leadingAnchor];
  v20 = [v64 leadingAnchor];
  v21 = [v19 constraintEqualToAnchor:v20 constant:103.0];
  [v21 setActive:1];

  v22 = [(UILabel *)self->_titleLabel trailingAnchor];
  v23 = [v64 trailingAnchor];
  v24 = [v22 constraintEqualToAnchor:v23 constant:-22.0];
  [v24 setActive:1];

  v25 = [(UILabel *)self->_titleLabel firstBaselineAnchor];
  v26 = [v64 topAnchor];
  v27 = [v25 constraintEqualToAnchor:v26 constant:0.0];
  titleLabelTopConstraint = self->_titleLabelTopConstraint;
  self->_titleLabelTopConstraint = v27;

  [(NSLayoutConstraint *)self->_titleLabelTopConstraint setActive:1];
  v29 = [(UILabel *)self->_bodyLabel firstBaselineAnchor];
  v30 = [(UILabel *)self->_titleLabel lastBaselineAnchor];
  v31 = [v29 constraintEqualToAnchor:v30 constant:0.0];
  titleLabelToBodyLabelConstraint = self->_titleLabelToBodyLabelConstraint;
  self->_titleLabelToBodyLabelConstraint = v31;

  [(NSLayoutConstraint *)self->_titleLabelToBodyLabelConstraint setActive:1];
  v33 = [(UILabel *)self->_bodyLabel leadingAnchor];
  v34 = [(UILabel *)self->_titleLabel leadingAnchor];
  v35 = [v33 constraintEqualToAnchor:v34 constant:0.0];
  [v35 setActive:1];

  v36 = [(UILabel *)self->_bodyLabel trailingAnchor];
  v37 = [(UILabel *)self->_titleLabel trailingAnchor];
  v38 = [v36 constraintEqualToAnchor:v37 constant:0.0];
  [v38 setActive:1];

  v39 = [(UIButton *)self->_yesButton topAnchor];
  v40 = [(UILabel *)self->_bodyLabel lastBaselineAnchor];
  v41 = [v39 constraintEqualToAnchor:v40 constant:19.0];
  [v41 setActive:1];

  v42 = [v64 bottomAnchor];
  v43 = [(UIButton *)self->_yesButton bottomAnchor];
  v44 = [v42 constraintEqualToAnchor:v43 constant:9.0];

  LODWORD(v45) = 1132068864;
  [v44 setPriority:v45];
  [v44 setActive:1];
  v46 = [(UIButton *)self->_noButton topAnchor];
  v47 = [(UIButton *)self->_yesButton topAnchor];
  v48 = [v46 constraintEqualToAnchor:v47 constant:0.0];
  [v48 setActive:1];

  v49 = [(UIButton *)self->_noButton bottomAnchor];
  v50 = [(UIButton *)self->_yesButton bottomAnchor];
  v51 = [v49 constraintEqualToAnchor:v50 constant:0.0];
  [v51 setActive:1];

  v52 = [(UIButton *)self->_noButton leadingAnchor];
  v53 = [v64 leadingAnchor];
  v54 = [v52 constraintEqualToAnchor:v53 constant:9.0];
  [v54 setActive:1];

  v55 = [(UIButton *)self->_yesButton leadingAnchor];
  v56 = [(UIButton *)self->_noButton trailingAnchor];
  v57 = [v55 constraintEqualToAnchor:v56 constant:9.0];
  [v57 setActive:1];

  v58 = [v64 trailingAnchor];
  v59 = [(UIButton *)self->_yesButton trailingAnchor];
  v60 = [v58 constraintEqualToAnchor:v59 constant:9.0];
  [v60 setActive:1];

  v61 = [(UIButton *)self->_noButton widthAnchor];
  v62 = [(UIButton *)self->_yesButton widthAnchor];
  v63 = [v61 constraintEqualToAnchor:v62];
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
  v7 = [(UIButton *)self->_yesButton titleLabel];
  [v7 setFont:v6];

  v8 = [(UIButton *)self->_noButton titleLabel];
  [v8 setFont:v6];
}

- (void)_updateFontDependantConstraints
{
  v7 = [(UILabel *)self->_titleLabel font];
  [v7 capHeight];
  [(NSLayoutConstraint *)self->_titleLabelTopConstraint setConstant:v3 + 19.5];
  [v7 lineHeight];
  v5 = v4;
  [v7 leading];
  [(NSLayoutConstraint *)self->_titleLabelToBodyLabelConstraint setConstant:v5 + v6 + 1.0];
}

- (void)_updateAppearance
{
  v3 = [(WGWidgetPinningTeachingView *)self traitCollection];
  v4 = [v3 userInterfaceStyle];

  v5 = [(WGWidgetPinningTeachingView *)self contentView];
  if (v4 == 2)
  {
    v6 = [MEMORY[0x277D75348] systemGray6Color];
    [v5 setBackgroundColor:v6];

    titleLabel = self->_titleLabel;
    v8 = [MEMORY[0x277D75348] whiteColor];
    [(UILabel *)titleLabel setTextColor:v8];

    bodyLabel = self->_bodyLabel;
    v10 = [MEMORY[0x277D75348] systemGrayColor];
    [(UILabel *)bodyLabel setTextColor:v10];

    yesButton = self->_yesButton;
    v12 = [MEMORY[0x277D75348] whiteColor];
    [(UIButton *)yesButton setTitleColor:v12 forState:0];

    v13 = self->_yesButton;
    v14 = [MEMORY[0x277D75348] systemGray4Color];
    [(UIButton *)v13 setBackgroundColor:v14];

    noButton = self->_noButton;
    v16 = [MEMORY[0x277D75348] whiteColor];
    [(UIButton *)noButton setTitleColor:v16 forState:0];

    v17 = self->_noButton;
    [MEMORY[0x277D75348] systemGray4Color];
  }

  else
  {
    v18 = [MEMORY[0x277D75348] whiteColor];
    [v5 setBackgroundColor:v18];

    v19 = self->_titleLabel;
    v20 = [MEMORY[0x277D75348] blackColor];
    [(UILabel *)v19 setTextColor:v20];

    v21 = self->_bodyLabel;
    v22 = [MEMORY[0x277D75348] systemGrayColor];
    [(UILabel *)v21 setTextColor:v22];

    v23 = self->_yesButton;
    v24 = [MEMORY[0x277D75348] blackColor];
    [(UIButton *)v23 setTitleColor:v24 forState:0];

    v25 = self->_yesButton;
    v26 = [MEMORY[0x277D75348] systemGray5Color];
    [(UIButton *)v25 setBackgroundColor:v26];

    v27 = self->_noButton;
    v28 = [MEMORY[0x277D75348] blackColor];
    [(UIButton *)v27 setTitleColor:v28 forState:0];

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