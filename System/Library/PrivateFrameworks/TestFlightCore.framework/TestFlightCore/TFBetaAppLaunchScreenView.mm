@interface TFBetaAppLaunchScreenView
- (TFBetaAppLaunchScreenView)initWithFrame:(CGRect)frame;
- (void)_layoutButtonModuleWithLayoutMetrics:(id)metrics;
- (void)_layoutScrollViewWithLayoutMetrics:(id)metrics accomodatingPinnedBottomView:(id)view;
- (void)_prepareForDisplayWithTraitCollection:(id)collection;
- (void)cleanupSnapshot;
- (void)layoutSubviews;
- (void)prepareForState:(unint64_t)state;
- (void)setBodyTitle:(id)title bodyText:(id)text;
- (void)setDeviceImage:(id)image withOrientation:(int64_t)orientation;
- (void)setDeviceImageOrientation:(int64_t)orientation;
- (void)setDeviceImageVisibility:(BOOL)visibility;
- (void)setLockup:(id)lockup;
- (void)setPrimaryButtonTitle:(id)title target:(id)target action:(SEL)action;
- (void)setSecondaryButtonTitle:(id)title target:(id)target action:(SEL)action;
- (void)setSubtitle:(id)subtitle;
- (void)setTitle:(id)title;
- (void)snapshotCurrentView;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation TFBetaAppLaunchScreenView

- (TFBetaAppLaunchScreenView)initWithFrame:(CGRect)frame
{
  v61.receiver = self;
  v61.super_class = TFBetaAppLaunchScreenView;
  v3 = [(TFBetaAppLaunchScreenView *)&v61 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = [TFBetaAppLaunchScreenViewSpecification alloc];
    traitCollection = [(TFBetaAppLaunchScreenView *)v3 traitCollection];
    v6 = [(TFBetaAppLaunchScreenViewSpecification *)v4 initWithTraitCollection:traitCollection];
    specification = v3->_specification;
    v3->_specification = v6;

    v8 = objc_alloc(MEMORY[0x277D759D8]);
    v9 = *MEMORY[0x277CBF3A0];
    v10 = *(MEMORY[0x277CBF3A0] + 8);
    v11 = *(MEMORY[0x277CBF3A0] + 16);
    v12 = *(MEMORY[0x277CBF3A0] + 24);
    v13 = [v8 initWithFrame:{*MEMORY[0x277CBF3A0], v10, v11, v12}];
    scrollView = v3->_scrollView;
    v3->_scrollView = v13;

    backgroundColor = [(TFBetaAppLaunchScreenViewSpecification *)v3->_specification backgroundColor];
    [(UIScrollView *)v3->_scrollView setBackgroundColor:backgroundColor];

    [(UIScrollView *)v3->_scrollView setContentInsetAdjustmentBehavior:2];
    [(UIScrollView *)v3->_scrollView setShowsVerticalScrollIndicator:0];
    [(UIScrollView *)v3->_scrollView setShowsHorizontalScrollIndicator:0];
    [(TFBetaAppLaunchScreenView *)v3 addSubview:v3->_scrollView];
    v16 = [objc_alloc(MEMORY[0x277D756B8]) initWithFrame:{v9, v10, v11, v12}];
    titleLabel = v3->_titleLabel;
    v3->_titleLabel = v16;

    v18 = v3->_titleLabel;
    titleFont = [(TFBetaAppLaunchScreenViewSpecification *)v3->_specification titleFont];
    [(UILabel *)v18 setFont:titleFont];

    v20 = v3->_titleLabel;
    textColor = [(TFBetaAppLaunchScreenViewSpecification *)v3->_specification textColor];
    [(UILabel *)v20 setTextColor:textColor];

    [(UILabel *)v3->_titleLabel setTextAlignment:1];
    [(UILabel *)v3->_titleLabel setAdjustsFontSizeToFitWidth:1];
    [(UILabel *)v3->_titleLabel setNumberOfLines:1];
    [(UIScrollView *)v3->_scrollView addSubview:v3->_titleLabel];
    v22 = [objc_alloc(MEMORY[0x277D756B8]) initWithFrame:{v9, v10, v11, v12}];
    subtitleLabel = v3->_subtitleLabel;
    v3->_subtitleLabel = v22;

    v24 = v3->_subtitleLabel;
    specification = [(TFBetaAppLaunchScreenView *)v3 specification];
    subtitleFont = [specification subtitleFont];
    [(UILabel *)v24 setFont:subtitleFont];

    v27 = v3->_subtitleLabel;
    specification2 = [(TFBetaAppLaunchScreenView *)v3 specification];
    textColor2 = [specification2 textColor];
    [(UILabel *)v27 setTextColor:textColor2];

    [(UILabel *)v3->_subtitleLabel setTextAlignment:1];
    [(UILabel *)v3->_subtitleLabel setAdjustsFontSizeToFitWidth:1];
    [(UILabel *)v3->_subtitleLabel setNumberOfLines:5];
    [(UIScrollView *)v3->_scrollView addSubview:v3->_subtitleLabel];
    v30 = [[TFAppLockupView alloc] initWithFrame:v9, v10, v11, v12];
    lockupView = v3->_lockupView;
    v3->_lockupView = v30;

    [(UIScrollView *)v3->_scrollView addSubview:v3->_lockupView];
    v32 = [objc_alloc(MEMORY[0x277D756B8]) initWithFrame:{v9, v10, v11, v12}];
    bodyTitleLabel = v3->_bodyTitleLabel;
    v3->_bodyTitleLabel = v32;

    v34 = v3->_bodyTitleLabel;
    bodyTitleFont = [(TFBetaAppLaunchScreenViewSpecification *)v3->_specification bodyTitleFont];
    [(UILabel *)v34 setFont:bodyTitleFont];

    v36 = v3->_bodyTitleLabel;
    textColor3 = [(TFBetaAppLaunchScreenViewSpecification *)v3->_specification textColor];
    [(UILabel *)v36 setTextColor:textColor3];

    [(UIScrollView *)v3->_scrollView addSubview:v3->_bodyTitleLabel];
    v38 = [objc_alloc(MEMORY[0x277D756B8]) initWithFrame:{v9, v10, v11, v12}];
    bodyTextLabel = v3->_bodyTextLabel;
    v3->_bodyTextLabel = v38;

    v40 = v3->_bodyTextLabel;
    bodyTextFont = [(TFBetaAppLaunchScreenViewSpecification *)v3->_specification bodyTextFont];
    [(UILabel *)v40 setFont:bodyTextFont];

    v42 = v3->_bodyTextLabel;
    textColor4 = [(TFBetaAppLaunchScreenViewSpecification *)v3->_specification textColor];
    [(UILabel *)v42 setTextColor:textColor4];

    [(UILabel *)v3->_bodyTextLabel setNumberOfLines:0];
    [(UIScrollView *)v3->_scrollView addSubview:v3->_bodyTextLabel];
    v44 = [[TFDeviceInstructionView alloc] initWithFrame:v9, v10, v11, v12];
    instructionView = v3->_instructionView;
    v3->_instructionView = v44;

    [(UIScrollView *)v3->_scrollView addSubview:v3->_instructionView];
    v46 = [MEMORY[0x277D75210] effectWithStyle:4];
    v47 = [objc_alloc(MEMORY[0x277D75D68]) initWithEffect:v46];
    buttonBackgroundEffectView = v3->_buttonBackgroundEffectView;
    v3->_buttonBackgroundEffectView = v47;

    [(TFBetaAppLaunchScreenView *)v3 addSubview:v3->_buttonBackgroundEffectView];
    v49 = [MEMORY[0x277D75220] buttonWithType:1];
    primaryButton = v3->_primaryButton;
    v3->_primaryButton = v49;

    v51 = v3->_primaryButton;
    buttonTintColor = [(TFBetaAppLaunchScreenViewSpecification *)v3->_specification buttonTintColor];
    [(UIButton *)v51 setBackgroundColor:buttonTintColor];

    layer = [(UIButton *)v3->_primaryButton layer];
    [(TFBetaAppLaunchScreenViewSpecification *)v3->_specification primaryButtonCornerRadius];
    [layer setCornerRadius:?];

    v54 = v3->_primaryButton;
    overButtonTintTextColor = [(TFBetaAppLaunchScreenViewSpecification *)v3->_specification overButtonTintTextColor];
    [(UIButton *)v54 setTitleColor:overButtonTintTextColor forState:0];

    [(TFBetaAppLaunchScreenView *)v3 addSubview:v3->_primaryButton];
    v56 = [MEMORY[0x277D75220] buttonWithType:1];
    secondaryButton = v3->_secondaryButton;
    v3->_secondaryButton = v56;

    v58 = v3->_secondaryButton;
    buttonTintColor2 = [(TFBetaAppLaunchScreenViewSpecification *)v3->_specification buttonTintColor];
    [(UIButton *)v58 setTitleColor:buttonTintColor2 forState:0];

    [(TFBetaAppLaunchScreenView *)v3 addSubview:v3->_secondaryButton];
  }

  return v3;
}

- (void)snapshotCurrentView
{
  v3 = [(TFBetaAppLaunchScreenView *)self snapshotViewAfterScreenUpdates:1];
  [(TFBetaAppLaunchScreenView *)self setSnapshot:v3];

  snapshot = [(TFBetaAppLaunchScreenView *)self snapshot];
  [(TFBetaAppLaunchScreenView *)self bounds];
  [snapshot setFrame:?];

  snapshot2 = [(TFBetaAppLaunchScreenView *)self snapshot];
  [(TFBetaAppLaunchScreenView *)self addSubview:snapshot2];
}

- (void)cleanupSnapshot
{
  snapshot = [(TFBetaAppLaunchScreenView *)self snapshot];
  [snapshot removeFromSuperview];

  [(TFBetaAppLaunchScreenView *)self setSnapshot:0];
}

- (void)prepareForState:(unint64_t)state
{
  [(TFBetaAppLaunchScreenView *)self setHidden:state == 0];
  lockupView = [(TFBetaAppLaunchScreenView *)self lockupView];
  [lockupView setHidden:state != 1];

  bodyTitleLabel = [(TFBetaAppLaunchScreenView *)self bodyTitleLabel];
  [bodyTitleLabel setHidden:state != 1];

  bodyTextLabel = [(TFBetaAppLaunchScreenView *)self bodyTextLabel];
  [bodyTextLabel setHidden:state != 1];

  v8 = state != 2;
  subtitleLabel = [(TFBetaAppLaunchScreenView *)self subtitleLabel];
  [subtitleLabel setHidden:v8];

  instructionView = [(TFBetaAppLaunchScreenView *)self instructionView];
  [instructionView setHidden:v8];

  secondaryButton = [(TFBetaAppLaunchScreenView *)self secondaryButton];
  [secondaryButton setHidden:v8];

  [(TFBetaAppLaunchScreenView *)self setNeedsLayout];
}

- (void)setTitle:(id)title
{
  titleCopy = title;
  titleLabel = [(TFBetaAppLaunchScreenView *)self titleLabel];
  [titleLabel setText:titleCopy];

  [(TFBetaAppLaunchScreenView *)self setNeedsLayout];
}

- (void)setSubtitle:(id)subtitle
{
  subtitleCopy = subtitle;
  subtitleLabel = [(TFBetaAppLaunchScreenView *)self subtitleLabel];
  [subtitleLabel setText:subtitleCopy];

  [(TFBetaAppLaunchScreenView *)self setNeedsLayout];
}

- (void)setLockup:(id)lockup
{
  lockupCopy = lockup;
  lockupView = [(TFBetaAppLaunchScreenView *)self lockupView];
  titleLabel = [lockupView titleLabel];
  title = [lockupCopy title];
  [titleLabel setText:title];

  subtitles = [lockupCopy subtitles];
  v8 = [subtitles count];

  subtitles2 = [lockupCopy subtitles];
  v10 = subtitles2;
  if (v8 >= 2)
  {
    v11 = [subtitles2 objectAtIndexedSubscript:0];

    subtitles3 = [lockupCopy subtitles];
    v13 = [subtitles3 objectAtIndexedSubscript:1];
LABEL_5:

    goto LABEL_7;
  }

  v14 = [subtitles2 count];

  if (v14 == 1)
  {
    subtitles3 = [lockupCopy subtitles];
    v11 = [subtitles3 objectAtIndexedSubscript:0];
    v13 = 0;
    goto LABEL_5;
  }

  v11 = 0;
  v13 = 0;
LABEL_7:
  lockupView2 = [(TFBetaAppLaunchScreenView *)self lockupView];
  primarySubtitleLabel = [lockupView2 primarySubtitleLabel];
  [primarySubtitleLabel setText:v11];

  lockupView3 = [(TFBetaAppLaunchScreenView *)self lockupView];
  secondarySubtitleLabel = [lockupView3 secondarySubtitleLabel];
  [secondarySubtitleLabel setText:v13];

  lockupView4 = [(TFBetaAppLaunchScreenView *)self lockupView];
  iconView = [lockupView4 iconView];
  [iconView setImage:0];

  [(TFBetaAppLaunchScreenView *)self setNeedsLayout];
}

- (void)setBodyTitle:(id)title bodyText:(id)text
{
  v6 = MEMORY[0x277CCAB48];
  textCopy = text;
  titleCopy = title;
  v11 = [[v6 alloc] initWithString:textCopy];

  [v11 tf_addLanguageAwareness:0];
  bodyTitleLabel = [(TFBetaAppLaunchScreenView *)self bodyTitleLabel];
  [bodyTitleLabel setText:titleCopy];

  bodyTextLabel = [(TFBetaAppLaunchScreenView *)self bodyTextLabel];
  [bodyTextLabel setAttributedText:v11];

  [(TFBetaAppLaunchScreenView *)self setNeedsLayout];
}

- (void)setDeviceImage:(id)image withOrientation:(int64_t)orientation
{
  imageCopy = image;
  instructionView = [(TFBetaAppLaunchScreenView *)self instructionView];
  [instructionView displayDeviceImage:imageCopy inOrientation:orientation];
}

- (void)setDeviceImageVisibility:(BOOL)visibility
{
  if (visibility)
  {
    v3 = 1.0;
  }

  else
  {
    v3 = 0.0;
  }

  instructionView = [(TFBetaAppLaunchScreenView *)self instructionView];
  deviceImageView = [instructionView deviceImageView];
  [deviceImageView setAlpha:v3];
}

- (void)setDeviceImageOrientation:(int64_t)orientation
{
  instructionView = [(TFBetaAppLaunchScreenView *)self instructionView];
  [instructionView updateCurrentDeviceImageToOrientation:orientation];
}

- (void)setPrimaryButtonTitle:(id)title target:(id)target action:(SEL)action
{
  targetCopy = target;
  titleCopy = title;
  primaryButton = [(TFBetaAppLaunchScreenView *)self primaryButton];
  [primaryButton setTitle:titleCopy forState:0];

  primaryButton2 = [(TFBetaAppLaunchScreenView *)self primaryButton];
  [primaryButton2 removeTarget:0 action:0 forControlEvents:64];

  primaryButton3 = [(TFBetaAppLaunchScreenView *)self primaryButton];
  [primaryButton3 addTarget:targetCopy action:action forControlEvents:64];

  [(TFBetaAppLaunchScreenView *)self setNeedsLayout];
}

- (void)setSecondaryButtonTitle:(id)title target:(id)target action:(SEL)action
{
  targetCopy = target;
  titleCopy = title;
  secondaryButton = [(TFBetaAppLaunchScreenView *)self secondaryButton];
  [secondaryButton setTitle:titleCopy forState:0];

  secondaryButton2 = [(TFBetaAppLaunchScreenView *)self secondaryButton];
  [secondaryButton2 removeTarget:0 action:0 forControlEvents:64];

  secondaryButton3 = [(TFBetaAppLaunchScreenView *)self secondaryButton];
  [secondaryButton3 addTarget:targetCopy action:action forControlEvents:64];

  [(TFBetaAppLaunchScreenView *)self setNeedsLayout];
}

- (void)traitCollectionDidChange:(id)change
{
  v5.receiver = self;
  v5.super_class = TFBetaAppLaunchScreenView;
  [(TFBetaAppLaunchScreenView *)&v5 traitCollectionDidChange:change];
  traitCollection = [(TFBetaAppLaunchScreenView *)self traitCollection];
  [(TFBetaAppLaunchScreenView *)self _prepareForDisplayWithTraitCollection:traitCollection];

  [(TFBetaAppLaunchScreenView *)self setNeedsLayout];
}

- (void)layoutSubviews
{
  v6.receiver = self;
  v6.super_class = TFBetaAppLaunchScreenView;
  [(TFBetaAppLaunchScreenView *)&v6 layoutSubviews];
  specification = [(TFBetaAppLaunchScreenView *)self specification];
  [(TFBetaAppLaunchScreenView *)self _layoutButtonModuleWithLayoutMetrics:specification];

  specification2 = [(TFBetaAppLaunchScreenView *)self specification];
  buttonBackgroundEffectView = [(TFBetaAppLaunchScreenView *)self buttonBackgroundEffectView];
  [(TFBetaAppLaunchScreenView *)self _layoutScrollViewWithLayoutMetrics:specification2 accomodatingPinnedBottomView:buttonBackgroundEffectView];
}

- (void)_prepareForDisplayWithTraitCollection:(id)collection
{
  v4 = [TFBetaAppLaunchScreenViewSpecification alloc];
  traitCollection = [(TFBetaAppLaunchScreenView *)self traitCollection];
  v6 = [(TFBetaAppLaunchScreenViewSpecification *)v4 initWithTraitCollection:traitCollection];
  [(TFBetaAppLaunchScreenView *)self setSpecification:v6];

  titleLabel = [(TFBetaAppLaunchScreenView *)self titleLabel];
  specification = [(TFBetaAppLaunchScreenView *)self specification];
  titleFont = [specification titleFont];
  [titleLabel setFont:titleFont];

  subtitleLabel = [(TFBetaAppLaunchScreenView *)self subtitleLabel];
  specification2 = [(TFBetaAppLaunchScreenView *)self specification];
  subtitleFont = [specification2 subtitleFont];
  [subtitleLabel setFont:subtitleFont];

  bodyTitleLabel = [(TFBetaAppLaunchScreenView *)self bodyTitleLabel];
  specification3 = [(TFBetaAppLaunchScreenView *)self specification];
  bodyTitleFont = [specification3 bodyTitleFont];
  [bodyTitleLabel setFont:bodyTitleFont];

  bodyTextLabel = [(TFBetaAppLaunchScreenView *)self bodyTextLabel];
  specification4 = [(TFBetaAppLaunchScreenView *)self specification];
  bodyTextFont = [specification4 bodyTextFont];
  [bodyTextLabel setFont:bodyTextFont];
}

- (void)_layoutButtonModuleWithLayoutMetrics:(id)metrics
{
  metricsCopy = metrics;
  [(TFBetaAppLaunchScreenView *)self safeAreaInsets];
  specification = [(TFBetaAppLaunchScreenView *)self specification];
  [specification buttonModuleContentLayoutInsets];
  UIEdgeInsetsMax();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  [(TFBetaAppLaunchScreenView *)self bounds];
  v15 = v9 + v14;
  v17 = v7 + v16;
  v19 = v18 - (v9 + v13);
  v21 = v20 - (v7 + v11);
  secondaryButton = [(TFBetaAppLaunchScreenView *)self secondaryButton];
  [secondaryButton sizeThatFits:{v19, v21}];
  v24 = v23;

  v47.origin.x = v15;
  v47.origin.y = v17;
  v47.size.width = v19;
  v47.size.height = v21;
  MinX = CGRectGetMinX(v47);
  v48.origin.x = v15;
  v48.origin.y = v17;
  v48.size.width = v19;
  v48.size.height = v21;
  v26 = MinX + (CGRectGetWidth(v48) - v24) * 0.5;
  v49.origin.x = v15;
  v49.origin.y = v17;
  v49.size.width = v19;
  v49.size.height = v21;
  MaxY = CGRectGetMaxY(v49);
  [metricsCopy buttonHeight];
  v29 = MaxY - v28;
  secondaryButton2 = [(TFBetaAppLaunchScreenView *)self secondaryButton];
  [metricsCopy buttonHeight];
  [secondaryButton2 setFrame:{v26, v29, v24, v31}];

  v50.origin.x = v15;
  v50.origin.y = v17;
  v50.size.width = v19;
  v50.size.height = v21;
  v32 = CGRectGetMinX(v50);
  [metricsCopy interButtonPadding];
  v34 = v29 - v33;
  [metricsCopy buttonHeight];
  v36 = v34 - v35;
  v51.origin.x = v15;
  v51.origin.y = v17;
  v51.size.width = v19;
  v51.size.height = v21;
  Width = CGRectGetWidth(v51);
  primaryButton = [(TFBetaAppLaunchScreenView *)self primaryButton];
  [metricsCopy buttonHeight];
  [primaryButton setFrame:{v32, v36, Width, v39}];

  [metricsCopy buttonBackgroundTopEdgeToPrimaryButtonTopEdge];
  v41 = v40;

  v42 = v36 - v41;
  [(TFBetaAppLaunchScreenView *)self bounds];
  v43 = CGRectGetWidth(v52);
  [(TFBetaAppLaunchScreenView *)self bounds];
  v44 = CGRectGetHeight(v53) - v42;
  buttonBackgroundEffectView = [(TFBetaAppLaunchScreenView *)self buttonBackgroundEffectView];
  [buttonBackgroundEffectView setFrame:{0.0, v42, v43, v44}];
}

- (void)_layoutScrollViewWithLayoutMetrics:(id)metrics accomodatingPinnedBottomView:(id)view
{
  metricsCopy = metrics;
  viewCopy = view;
  scrollView = [(TFBetaAppLaunchScreenView *)self scrollView];
  [(TFBetaAppLaunchScreenView *)self bounds];
  [scrollView setFrame:?];

  [(TFBetaAppLaunchScreenView *)self safeAreaInsets];
  [metricsCopy scrollViewContentLayoutInsets];
  UIEdgeInsetsMax();
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  scrollView2 = [(TFBetaAppLaunchScreenView *)self scrollView];
  [scrollView2 bounds];
  v18 = v11 + v17;
  v20 = v9 + v19;
  v22 = v21 - (v11 + v15);
  v24 = v23 - (v9 + v13);

  v111.origin.x = v18;
  v111.origin.y = v20;
  v111.size.width = v22;
  v111.size.height = v24;
  MinX = CGRectGetMinX(v111);
  v112.origin.x = v18;
  v112.origin.y = v20;
  v112.size.width = v22;
  v112.size.height = v24;
  Width = CGRectGetWidth(v112);
  [metricsCopy viewTopMarginAdditionalPaddingAsFractionOfTotalHeight];
  v28 = v27;
  v113.origin.x = v18;
  v113.origin.y = v20;
  v113.size.width = v22;
  v113.size.height = v24;
  v29 = v28 * CGRectGetHeight(v113);
  titleLabel = [(TFBetaAppLaunchScreenView *)self titleLabel];
  [titleLabel sizeThatFits:{v22, v24}];
  v32 = v31;

  v114.origin.x = v18;
  v114.origin.y = v20;
  v114.size.width = v22;
  v114.size.height = v24;
  v33 = v29 + CGRectGetMinY(v114);
  [metricsCopy viewTopMarginToTitleLabelFirstBaseline];
  v35 = v33 + v34;
  titleLabel2 = [(TFBetaAppLaunchScreenView *)self titleLabel];
  [titleLabel2 _firstBaselineOffsetFromTop];
  v38 = v35 - v37;

  titleLabel3 = [(TFBetaAppLaunchScreenView *)self titleLabel];
  [titleLabel3 setFrame:{MinX, v38, Width, v32}];

  titleLabel4 = [(TFBetaAppLaunchScreenView *)self titleLabel];
  [titleLabel4 frame];
  MaxY = CGRectGetMaxY(v115);
  titleLabel5 = [(TFBetaAppLaunchScreenView *)self titleLabel];
  [titleLabel5 _baselineOffsetFromBottom];
  v44 = MaxY - v43;

  subtitleLabel = [(TFBetaAppLaunchScreenView *)self subtitleLabel];
  LOBYTE(titleLabel5) = [subtitleLabel isHidden];

  if ((titleLabel5 & 1) == 0)
  {
    subtitleLabel2 = [(TFBetaAppLaunchScreenView *)self subtitleLabel];
    [subtitleLabel2 sizeThatFits:{v22, v24}];
    v48 = v47;

    [metricsCopy titleLabelLastBaselineToSubtitleLabelFirstBaseline];
    v50 = v44 + v49;
    subtitleLabel3 = [(TFBetaAppLaunchScreenView *)self subtitleLabel];
    [subtitleLabel3 _firstBaselineOffsetFromTop];
    v53 = v50 - v52;

    subtitleLabel4 = [(TFBetaAppLaunchScreenView *)self subtitleLabel];
    [subtitleLabel4 setFrame:{MinX, v53, Width, v48}];

    subtitleLabel5 = [(TFBetaAppLaunchScreenView *)self subtitleLabel];
    [subtitleLabel5 frame];
    v56 = CGRectGetMaxY(v116);
    subtitleLabel6 = [(TFBetaAppLaunchScreenView *)self subtitleLabel];
    [subtitleLabel6 _baselineOffsetFromBottom];
    v44 = v56 - v58;
  }

  lockupView = [(TFBetaAppLaunchScreenView *)self lockupView];
  isHidden = [lockupView isHidden];

  if ((isHidden & 1) == 0)
  {
    lockupView2 = [(TFBetaAppLaunchScreenView *)self lockupView];
    [lockupView2 sizeThatFits:{v22, v24}];
    v63 = v62;

    [metricsCopy bottommostLabelLastBaselineToLockupTopEdge];
    v65 = v44 + v64;
    lockupView3 = [(TFBetaAppLaunchScreenView *)self lockupView];
    [lockupView3 setFrame:{MinX, v65, Width, v63}];
  }

  bodyTitleLabel = [(TFBetaAppLaunchScreenView *)self bodyTitleLabel];
  isHidden2 = [bodyTitleLabel isHidden];

  if ((isHidden2 & 1) == 0)
  {
    bodyTitleLabel2 = [(TFBetaAppLaunchScreenView *)self bodyTitleLabel];
    [bodyTitleLabel2 sizeThatFits:{v22, v24}];
    v71 = v70;

    lockupView4 = [(TFBetaAppLaunchScreenView *)self lockupView];
    [lockupView4 frame];
    v73 = CGRectGetMaxY(v117);
    [metricsCopy lockupBottomEdgeToBodyTitleLabelFirstBaseline];
    v75 = v73 + v74;
    bodyTitleLabel3 = [(TFBetaAppLaunchScreenView *)self bodyTitleLabel];
    [bodyTitleLabel3 _firstBaselineOffsetFromTop];
    v78 = v75 - v77;

    bodyTitleLabel4 = [(TFBetaAppLaunchScreenView *)self bodyTitleLabel];
    [bodyTitleLabel4 setFrame:{MinX, v78, Width, v71}];
  }

  bodyTextLabel = [(TFBetaAppLaunchScreenView *)self bodyTextLabel];
  isHidden3 = [bodyTextLabel isHidden];

  if ((isHidden3 & 1) == 0)
  {
    bodyTextLabel2 = [(TFBetaAppLaunchScreenView *)self bodyTextLabel];
    [bodyTextLabel2 sizeThatFits:{v22, v24}];
    v84 = v83;

    bodyTitleLabel5 = [(TFBetaAppLaunchScreenView *)self bodyTitleLabel];
    [bodyTitleLabel5 frame];
    v86 = CGRectGetMaxY(v118);
    [metricsCopy bodyTitleLabelLastBaselineToBodyTextLabelFirstBaseline];
    v88 = v86 + v87;
    bodyTextLabel3 = [(TFBetaAppLaunchScreenView *)self bodyTextLabel];
    [bodyTextLabel3 _firstBaselineOffsetFromTop];
    v91 = v88 - v90;

    bodyTextLabel4 = [(TFBetaAppLaunchScreenView *)self bodyTextLabel];
    [bodyTextLabel4 setFrame:{MinX, v91, Width, v84}];
  }

  instructionView = [(TFBetaAppLaunchScreenView *)self instructionView];
  isHidden4 = [instructionView isHidden];

  if ((isHidden4 & 1) == 0)
  {
    [metricsCopy bottommostLabelLastBaselineToImageTopEdge];
    v96 = v44 + v95;
    scrollView3 = [(TFBetaAppLaunchScreenView *)self scrollView];
    [scrollView3 bounds];
    v98 = CGRectGetMaxY(v119) - v96;
    [viewCopy frame];
    v99 = v98 - CGRectGetHeight(v120);

    instructionView2 = [(TFBetaAppLaunchScreenView *)self instructionView];
    [instructionView2 setFrame:{MinX, v96, Width, v99}];
  }

  instructionView3 = [(TFBetaAppLaunchScreenView *)self instructionView];
  if ([instructionView3 isHidden])
  {
    [(TFBetaAppLaunchScreenView *)self bodyTextLabel];
  }

  else
  {
    [(TFBetaAppLaunchScreenView *)self instructionView];
  }
  v102 = ;
  [v102 frame];
  v103 = CGRectGetMaxY(v121);

  [viewCopy frame];
  if (v103 >= CGRectGetMinY(v122))
  {
    [viewCopy frame];
    Height = v103 + CGRectGetHeight(v124);
  }

  else
  {
    scrollView4 = [(TFBetaAppLaunchScreenView *)self scrollView];
    [scrollView4 frame];
    Height = CGRectGetHeight(v123);
  }

  scrollView5 = [(TFBetaAppLaunchScreenView *)self scrollView];
  [scrollView5 frame];
  v107 = CGRectGetWidth(v125);

  scrollView6 = [(TFBetaAppLaunchScreenView *)self scrollView];
  [scrollView6 setContentSize:{v107, Height}];
}

@end