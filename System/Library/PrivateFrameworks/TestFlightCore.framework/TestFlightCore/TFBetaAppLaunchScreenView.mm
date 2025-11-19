@interface TFBetaAppLaunchScreenView
- (TFBetaAppLaunchScreenView)initWithFrame:(CGRect)a3;
- (void)_layoutButtonModuleWithLayoutMetrics:(id)a3;
- (void)_layoutScrollViewWithLayoutMetrics:(id)a3 accomodatingPinnedBottomView:(id)a4;
- (void)_prepareForDisplayWithTraitCollection:(id)a3;
- (void)cleanupSnapshot;
- (void)layoutSubviews;
- (void)prepareForState:(unint64_t)a3;
- (void)setBodyTitle:(id)a3 bodyText:(id)a4;
- (void)setDeviceImage:(id)a3 withOrientation:(int64_t)a4;
- (void)setDeviceImageOrientation:(int64_t)a3;
- (void)setDeviceImageVisibility:(BOOL)a3;
- (void)setLockup:(id)a3;
- (void)setPrimaryButtonTitle:(id)a3 target:(id)a4 action:(SEL)a5;
- (void)setSecondaryButtonTitle:(id)a3 target:(id)a4 action:(SEL)a5;
- (void)setSubtitle:(id)a3;
- (void)setTitle:(id)a3;
- (void)snapshotCurrentView;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation TFBetaAppLaunchScreenView

- (TFBetaAppLaunchScreenView)initWithFrame:(CGRect)a3
{
  v61.receiver = self;
  v61.super_class = TFBetaAppLaunchScreenView;
  v3 = [(TFBetaAppLaunchScreenView *)&v61 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = [TFBetaAppLaunchScreenViewSpecification alloc];
    v5 = [(TFBetaAppLaunchScreenView *)v3 traitCollection];
    v6 = [(TFBetaAppLaunchScreenViewSpecification *)v4 initWithTraitCollection:v5];
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

    v15 = [(TFBetaAppLaunchScreenViewSpecification *)v3->_specification backgroundColor];
    [(UIScrollView *)v3->_scrollView setBackgroundColor:v15];

    [(UIScrollView *)v3->_scrollView setContentInsetAdjustmentBehavior:2];
    [(UIScrollView *)v3->_scrollView setShowsVerticalScrollIndicator:0];
    [(UIScrollView *)v3->_scrollView setShowsHorizontalScrollIndicator:0];
    [(TFBetaAppLaunchScreenView *)v3 addSubview:v3->_scrollView];
    v16 = [objc_alloc(MEMORY[0x277D756B8]) initWithFrame:{v9, v10, v11, v12}];
    titleLabel = v3->_titleLabel;
    v3->_titleLabel = v16;

    v18 = v3->_titleLabel;
    v19 = [(TFBetaAppLaunchScreenViewSpecification *)v3->_specification titleFont];
    [(UILabel *)v18 setFont:v19];

    v20 = v3->_titleLabel;
    v21 = [(TFBetaAppLaunchScreenViewSpecification *)v3->_specification textColor];
    [(UILabel *)v20 setTextColor:v21];

    [(UILabel *)v3->_titleLabel setTextAlignment:1];
    [(UILabel *)v3->_titleLabel setAdjustsFontSizeToFitWidth:1];
    [(UILabel *)v3->_titleLabel setNumberOfLines:1];
    [(UIScrollView *)v3->_scrollView addSubview:v3->_titleLabel];
    v22 = [objc_alloc(MEMORY[0x277D756B8]) initWithFrame:{v9, v10, v11, v12}];
    subtitleLabel = v3->_subtitleLabel;
    v3->_subtitleLabel = v22;

    v24 = v3->_subtitleLabel;
    v25 = [(TFBetaAppLaunchScreenView *)v3 specification];
    v26 = [v25 subtitleFont];
    [(UILabel *)v24 setFont:v26];

    v27 = v3->_subtitleLabel;
    v28 = [(TFBetaAppLaunchScreenView *)v3 specification];
    v29 = [v28 textColor];
    [(UILabel *)v27 setTextColor:v29];

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
    v35 = [(TFBetaAppLaunchScreenViewSpecification *)v3->_specification bodyTitleFont];
    [(UILabel *)v34 setFont:v35];

    v36 = v3->_bodyTitleLabel;
    v37 = [(TFBetaAppLaunchScreenViewSpecification *)v3->_specification textColor];
    [(UILabel *)v36 setTextColor:v37];

    [(UIScrollView *)v3->_scrollView addSubview:v3->_bodyTitleLabel];
    v38 = [objc_alloc(MEMORY[0x277D756B8]) initWithFrame:{v9, v10, v11, v12}];
    bodyTextLabel = v3->_bodyTextLabel;
    v3->_bodyTextLabel = v38;

    v40 = v3->_bodyTextLabel;
    v41 = [(TFBetaAppLaunchScreenViewSpecification *)v3->_specification bodyTextFont];
    [(UILabel *)v40 setFont:v41];

    v42 = v3->_bodyTextLabel;
    v43 = [(TFBetaAppLaunchScreenViewSpecification *)v3->_specification textColor];
    [(UILabel *)v42 setTextColor:v43];

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
    v52 = [(TFBetaAppLaunchScreenViewSpecification *)v3->_specification buttonTintColor];
    [(UIButton *)v51 setBackgroundColor:v52];

    v53 = [(UIButton *)v3->_primaryButton layer];
    [(TFBetaAppLaunchScreenViewSpecification *)v3->_specification primaryButtonCornerRadius];
    [v53 setCornerRadius:?];

    v54 = v3->_primaryButton;
    v55 = [(TFBetaAppLaunchScreenViewSpecification *)v3->_specification overButtonTintTextColor];
    [(UIButton *)v54 setTitleColor:v55 forState:0];

    [(TFBetaAppLaunchScreenView *)v3 addSubview:v3->_primaryButton];
    v56 = [MEMORY[0x277D75220] buttonWithType:1];
    secondaryButton = v3->_secondaryButton;
    v3->_secondaryButton = v56;

    v58 = v3->_secondaryButton;
    v59 = [(TFBetaAppLaunchScreenViewSpecification *)v3->_specification buttonTintColor];
    [(UIButton *)v58 setTitleColor:v59 forState:0];

    [(TFBetaAppLaunchScreenView *)v3 addSubview:v3->_secondaryButton];
  }

  return v3;
}

- (void)snapshotCurrentView
{
  v3 = [(TFBetaAppLaunchScreenView *)self snapshotViewAfterScreenUpdates:1];
  [(TFBetaAppLaunchScreenView *)self setSnapshot:v3];

  v4 = [(TFBetaAppLaunchScreenView *)self snapshot];
  [(TFBetaAppLaunchScreenView *)self bounds];
  [v4 setFrame:?];

  v5 = [(TFBetaAppLaunchScreenView *)self snapshot];
  [(TFBetaAppLaunchScreenView *)self addSubview:v5];
}

- (void)cleanupSnapshot
{
  v3 = [(TFBetaAppLaunchScreenView *)self snapshot];
  [v3 removeFromSuperview];

  [(TFBetaAppLaunchScreenView *)self setSnapshot:0];
}

- (void)prepareForState:(unint64_t)a3
{
  [(TFBetaAppLaunchScreenView *)self setHidden:a3 == 0];
  v5 = [(TFBetaAppLaunchScreenView *)self lockupView];
  [v5 setHidden:a3 != 1];

  v6 = [(TFBetaAppLaunchScreenView *)self bodyTitleLabel];
  [v6 setHidden:a3 != 1];

  v7 = [(TFBetaAppLaunchScreenView *)self bodyTextLabel];
  [v7 setHidden:a3 != 1];

  v8 = a3 != 2;
  v9 = [(TFBetaAppLaunchScreenView *)self subtitleLabel];
  [v9 setHidden:v8];

  v10 = [(TFBetaAppLaunchScreenView *)self instructionView];
  [v10 setHidden:v8];

  v11 = [(TFBetaAppLaunchScreenView *)self secondaryButton];
  [v11 setHidden:v8];

  [(TFBetaAppLaunchScreenView *)self setNeedsLayout];
}

- (void)setTitle:(id)a3
{
  v4 = a3;
  v5 = [(TFBetaAppLaunchScreenView *)self titleLabel];
  [v5 setText:v4];

  [(TFBetaAppLaunchScreenView *)self setNeedsLayout];
}

- (void)setSubtitle:(id)a3
{
  v4 = a3;
  v5 = [(TFBetaAppLaunchScreenView *)self subtitleLabel];
  [v5 setText:v4];

  [(TFBetaAppLaunchScreenView *)self setNeedsLayout];
}

- (void)setLockup:(id)a3
{
  v21 = a3;
  v4 = [(TFBetaAppLaunchScreenView *)self lockupView];
  v5 = [v4 titleLabel];
  v6 = [v21 title];
  [v5 setText:v6];

  v7 = [v21 subtitles];
  v8 = [v7 count];

  v9 = [v21 subtitles];
  v10 = v9;
  if (v8 >= 2)
  {
    v11 = [v9 objectAtIndexedSubscript:0];

    v12 = [v21 subtitles];
    v13 = [v12 objectAtIndexedSubscript:1];
LABEL_5:

    goto LABEL_7;
  }

  v14 = [v9 count];

  if (v14 == 1)
  {
    v12 = [v21 subtitles];
    v11 = [v12 objectAtIndexedSubscript:0];
    v13 = 0;
    goto LABEL_5;
  }

  v11 = 0;
  v13 = 0;
LABEL_7:
  v15 = [(TFBetaAppLaunchScreenView *)self lockupView];
  v16 = [v15 primarySubtitleLabel];
  [v16 setText:v11];

  v17 = [(TFBetaAppLaunchScreenView *)self lockupView];
  v18 = [v17 secondarySubtitleLabel];
  [v18 setText:v13];

  v19 = [(TFBetaAppLaunchScreenView *)self lockupView];
  v20 = [v19 iconView];
  [v20 setImage:0];

  [(TFBetaAppLaunchScreenView *)self setNeedsLayout];
}

- (void)setBodyTitle:(id)a3 bodyText:(id)a4
{
  v6 = MEMORY[0x277CCAB48];
  v7 = a4;
  v8 = a3;
  v11 = [[v6 alloc] initWithString:v7];

  [v11 tf_addLanguageAwareness:0];
  v9 = [(TFBetaAppLaunchScreenView *)self bodyTitleLabel];
  [v9 setText:v8];

  v10 = [(TFBetaAppLaunchScreenView *)self bodyTextLabel];
  [v10 setAttributedText:v11];

  [(TFBetaAppLaunchScreenView *)self setNeedsLayout];
}

- (void)setDeviceImage:(id)a3 withOrientation:(int64_t)a4
{
  v6 = a3;
  v7 = [(TFBetaAppLaunchScreenView *)self instructionView];
  [v7 displayDeviceImage:v6 inOrientation:a4];
}

- (void)setDeviceImageVisibility:(BOOL)a3
{
  if (a3)
  {
    v3 = 1.0;
  }

  else
  {
    v3 = 0.0;
  }

  v5 = [(TFBetaAppLaunchScreenView *)self instructionView];
  v4 = [v5 deviceImageView];
  [v4 setAlpha:v3];
}

- (void)setDeviceImageOrientation:(int64_t)a3
{
  v4 = [(TFBetaAppLaunchScreenView *)self instructionView];
  [v4 updateCurrentDeviceImageToOrientation:a3];
}

- (void)setPrimaryButtonTitle:(id)a3 target:(id)a4 action:(SEL)a5
{
  v8 = a4;
  v9 = a3;
  v10 = [(TFBetaAppLaunchScreenView *)self primaryButton];
  [v10 setTitle:v9 forState:0];

  v11 = [(TFBetaAppLaunchScreenView *)self primaryButton];
  [v11 removeTarget:0 action:0 forControlEvents:64];

  v12 = [(TFBetaAppLaunchScreenView *)self primaryButton];
  [v12 addTarget:v8 action:a5 forControlEvents:64];

  [(TFBetaAppLaunchScreenView *)self setNeedsLayout];
}

- (void)setSecondaryButtonTitle:(id)a3 target:(id)a4 action:(SEL)a5
{
  v8 = a4;
  v9 = a3;
  v10 = [(TFBetaAppLaunchScreenView *)self secondaryButton];
  [v10 setTitle:v9 forState:0];

  v11 = [(TFBetaAppLaunchScreenView *)self secondaryButton];
  [v11 removeTarget:0 action:0 forControlEvents:64];

  v12 = [(TFBetaAppLaunchScreenView *)self secondaryButton];
  [v12 addTarget:v8 action:a5 forControlEvents:64];

  [(TFBetaAppLaunchScreenView *)self setNeedsLayout];
}

- (void)traitCollectionDidChange:(id)a3
{
  v5.receiver = self;
  v5.super_class = TFBetaAppLaunchScreenView;
  [(TFBetaAppLaunchScreenView *)&v5 traitCollectionDidChange:a3];
  v4 = [(TFBetaAppLaunchScreenView *)self traitCollection];
  [(TFBetaAppLaunchScreenView *)self _prepareForDisplayWithTraitCollection:v4];

  [(TFBetaAppLaunchScreenView *)self setNeedsLayout];
}

- (void)layoutSubviews
{
  v6.receiver = self;
  v6.super_class = TFBetaAppLaunchScreenView;
  [(TFBetaAppLaunchScreenView *)&v6 layoutSubviews];
  v3 = [(TFBetaAppLaunchScreenView *)self specification];
  [(TFBetaAppLaunchScreenView *)self _layoutButtonModuleWithLayoutMetrics:v3];

  v4 = [(TFBetaAppLaunchScreenView *)self specification];
  v5 = [(TFBetaAppLaunchScreenView *)self buttonBackgroundEffectView];
  [(TFBetaAppLaunchScreenView *)self _layoutScrollViewWithLayoutMetrics:v4 accomodatingPinnedBottomView:v5];
}

- (void)_prepareForDisplayWithTraitCollection:(id)a3
{
  v4 = [TFBetaAppLaunchScreenViewSpecification alloc];
  v5 = [(TFBetaAppLaunchScreenView *)self traitCollection];
  v6 = [(TFBetaAppLaunchScreenViewSpecification *)v4 initWithTraitCollection:v5];
  [(TFBetaAppLaunchScreenView *)self setSpecification:v6];

  v7 = [(TFBetaAppLaunchScreenView *)self titleLabel];
  v8 = [(TFBetaAppLaunchScreenView *)self specification];
  v9 = [v8 titleFont];
  [v7 setFont:v9];

  v10 = [(TFBetaAppLaunchScreenView *)self subtitleLabel];
  v11 = [(TFBetaAppLaunchScreenView *)self specification];
  v12 = [v11 subtitleFont];
  [v10 setFont:v12];

  v13 = [(TFBetaAppLaunchScreenView *)self bodyTitleLabel];
  v14 = [(TFBetaAppLaunchScreenView *)self specification];
  v15 = [v14 bodyTitleFont];
  [v13 setFont:v15];

  v18 = [(TFBetaAppLaunchScreenView *)self bodyTextLabel];
  v16 = [(TFBetaAppLaunchScreenView *)self specification];
  v17 = [v16 bodyTextFont];
  [v18 setFont:v17];
}

- (void)_layoutButtonModuleWithLayoutMetrics:(id)a3
{
  v4 = a3;
  [(TFBetaAppLaunchScreenView *)self safeAreaInsets];
  v5 = [(TFBetaAppLaunchScreenView *)self specification];
  [v5 buttonModuleContentLayoutInsets];
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
  v22 = [(TFBetaAppLaunchScreenView *)self secondaryButton];
  [v22 sizeThatFits:{v19, v21}];
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
  [v4 buttonHeight];
  v29 = MaxY - v28;
  v30 = [(TFBetaAppLaunchScreenView *)self secondaryButton];
  [v4 buttonHeight];
  [v30 setFrame:{v26, v29, v24, v31}];

  v50.origin.x = v15;
  v50.origin.y = v17;
  v50.size.width = v19;
  v50.size.height = v21;
  v32 = CGRectGetMinX(v50);
  [v4 interButtonPadding];
  v34 = v29 - v33;
  [v4 buttonHeight];
  v36 = v34 - v35;
  v51.origin.x = v15;
  v51.origin.y = v17;
  v51.size.width = v19;
  v51.size.height = v21;
  Width = CGRectGetWidth(v51);
  v38 = [(TFBetaAppLaunchScreenView *)self primaryButton];
  [v4 buttonHeight];
  [v38 setFrame:{v32, v36, Width, v39}];

  [v4 buttonBackgroundTopEdgeToPrimaryButtonTopEdge];
  v41 = v40;

  v42 = v36 - v41;
  [(TFBetaAppLaunchScreenView *)self bounds];
  v43 = CGRectGetWidth(v52);
  [(TFBetaAppLaunchScreenView *)self bounds];
  v44 = CGRectGetHeight(v53) - v42;
  v45 = [(TFBetaAppLaunchScreenView *)self buttonBackgroundEffectView];
  [v45 setFrame:{0.0, v42, v43, v44}];
}

- (void)_layoutScrollViewWithLayoutMetrics:(id)a3 accomodatingPinnedBottomView:(id)a4
{
  v109 = a3;
  v6 = a4;
  v7 = [(TFBetaAppLaunchScreenView *)self scrollView];
  [(TFBetaAppLaunchScreenView *)self bounds];
  [v7 setFrame:?];

  [(TFBetaAppLaunchScreenView *)self safeAreaInsets];
  [v109 scrollViewContentLayoutInsets];
  UIEdgeInsetsMax();
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v16 = [(TFBetaAppLaunchScreenView *)self scrollView];
  [v16 bounds];
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
  [v109 viewTopMarginAdditionalPaddingAsFractionOfTotalHeight];
  v28 = v27;
  v113.origin.x = v18;
  v113.origin.y = v20;
  v113.size.width = v22;
  v113.size.height = v24;
  v29 = v28 * CGRectGetHeight(v113);
  v30 = [(TFBetaAppLaunchScreenView *)self titleLabel];
  [v30 sizeThatFits:{v22, v24}];
  v32 = v31;

  v114.origin.x = v18;
  v114.origin.y = v20;
  v114.size.width = v22;
  v114.size.height = v24;
  v33 = v29 + CGRectGetMinY(v114);
  [v109 viewTopMarginToTitleLabelFirstBaseline];
  v35 = v33 + v34;
  v36 = [(TFBetaAppLaunchScreenView *)self titleLabel];
  [v36 _firstBaselineOffsetFromTop];
  v38 = v35 - v37;

  v39 = [(TFBetaAppLaunchScreenView *)self titleLabel];
  [v39 setFrame:{MinX, v38, Width, v32}];

  v40 = [(TFBetaAppLaunchScreenView *)self titleLabel];
  [v40 frame];
  MaxY = CGRectGetMaxY(v115);
  v42 = [(TFBetaAppLaunchScreenView *)self titleLabel];
  [v42 _baselineOffsetFromBottom];
  v44 = MaxY - v43;

  v45 = [(TFBetaAppLaunchScreenView *)self subtitleLabel];
  LOBYTE(v42) = [v45 isHidden];

  if ((v42 & 1) == 0)
  {
    v46 = [(TFBetaAppLaunchScreenView *)self subtitleLabel];
    [v46 sizeThatFits:{v22, v24}];
    v48 = v47;

    [v109 titleLabelLastBaselineToSubtitleLabelFirstBaseline];
    v50 = v44 + v49;
    v51 = [(TFBetaAppLaunchScreenView *)self subtitleLabel];
    [v51 _firstBaselineOffsetFromTop];
    v53 = v50 - v52;

    v54 = [(TFBetaAppLaunchScreenView *)self subtitleLabel];
    [v54 setFrame:{MinX, v53, Width, v48}];

    v55 = [(TFBetaAppLaunchScreenView *)self subtitleLabel];
    [v55 frame];
    v56 = CGRectGetMaxY(v116);
    v57 = [(TFBetaAppLaunchScreenView *)self subtitleLabel];
    [v57 _baselineOffsetFromBottom];
    v44 = v56 - v58;
  }

  v59 = [(TFBetaAppLaunchScreenView *)self lockupView];
  v60 = [v59 isHidden];

  if ((v60 & 1) == 0)
  {
    v61 = [(TFBetaAppLaunchScreenView *)self lockupView];
    [v61 sizeThatFits:{v22, v24}];
    v63 = v62;

    [v109 bottommostLabelLastBaselineToLockupTopEdge];
    v65 = v44 + v64;
    v66 = [(TFBetaAppLaunchScreenView *)self lockupView];
    [v66 setFrame:{MinX, v65, Width, v63}];
  }

  v67 = [(TFBetaAppLaunchScreenView *)self bodyTitleLabel];
  v68 = [v67 isHidden];

  if ((v68 & 1) == 0)
  {
    v69 = [(TFBetaAppLaunchScreenView *)self bodyTitleLabel];
    [v69 sizeThatFits:{v22, v24}];
    v71 = v70;

    v72 = [(TFBetaAppLaunchScreenView *)self lockupView];
    [v72 frame];
    v73 = CGRectGetMaxY(v117);
    [v109 lockupBottomEdgeToBodyTitleLabelFirstBaseline];
    v75 = v73 + v74;
    v76 = [(TFBetaAppLaunchScreenView *)self bodyTitleLabel];
    [v76 _firstBaselineOffsetFromTop];
    v78 = v75 - v77;

    v79 = [(TFBetaAppLaunchScreenView *)self bodyTitleLabel];
    [v79 setFrame:{MinX, v78, Width, v71}];
  }

  v80 = [(TFBetaAppLaunchScreenView *)self bodyTextLabel];
  v81 = [v80 isHidden];

  if ((v81 & 1) == 0)
  {
    v82 = [(TFBetaAppLaunchScreenView *)self bodyTextLabel];
    [v82 sizeThatFits:{v22, v24}];
    v84 = v83;

    v85 = [(TFBetaAppLaunchScreenView *)self bodyTitleLabel];
    [v85 frame];
    v86 = CGRectGetMaxY(v118);
    [v109 bodyTitleLabelLastBaselineToBodyTextLabelFirstBaseline];
    v88 = v86 + v87;
    v89 = [(TFBetaAppLaunchScreenView *)self bodyTextLabel];
    [v89 _firstBaselineOffsetFromTop];
    v91 = v88 - v90;

    v92 = [(TFBetaAppLaunchScreenView *)self bodyTextLabel];
    [v92 setFrame:{MinX, v91, Width, v84}];
  }

  v93 = [(TFBetaAppLaunchScreenView *)self instructionView];
  v94 = [v93 isHidden];

  if ((v94 & 1) == 0)
  {
    [v109 bottommostLabelLastBaselineToImageTopEdge];
    v96 = v44 + v95;
    v97 = [(TFBetaAppLaunchScreenView *)self scrollView];
    [v97 bounds];
    v98 = CGRectGetMaxY(v119) - v96;
    [v6 frame];
    v99 = v98 - CGRectGetHeight(v120);

    v100 = [(TFBetaAppLaunchScreenView *)self instructionView];
    [v100 setFrame:{MinX, v96, Width, v99}];
  }

  v101 = [(TFBetaAppLaunchScreenView *)self instructionView];
  if ([v101 isHidden])
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

  [v6 frame];
  if (v103 >= CGRectGetMinY(v122))
  {
    [v6 frame];
    Height = v103 + CGRectGetHeight(v124);
  }

  else
  {
    v104 = [(TFBetaAppLaunchScreenView *)self scrollView];
    [v104 frame];
    Height = CGRectGetHeight(v123);
  }

  v106 = [(TFBetaAppLaunchScreenView *)self scrollView];
  [v106 frame];
  v107 = CGRectGetWidth(v125);

  v108 = [(TFBetaAppLaunchScreenView *)self scrollView];
  [v108 setContentSize:{v107, Height}];
}

@end