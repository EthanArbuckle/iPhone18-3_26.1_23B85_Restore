@interface BFFPasscodeInputView
- (BFFPasscodeInputView)initWithFrame:(CGRect)frame;
- (BFFPasscodeInputViewDelegate)delegate;
- (BOOL)becomeFirstResponder;
- (BOOL)isFirstResponder;
- (BOOL)resignFirstResponder;
- (CGSize)intrinsicContentSize;
- (CGSize)sizeThatFits:(CGSize)fits;
- (void)_instructionsLinkButtonPressed;
- (void)_layoutForBounds:(CGRect)bounds;
- (void)footerButtonPressed;
- (void)layoutSubviews;
- (void)setFooterButtonText:(id)text;
- (void)setFooterView:(id)view;
- (void)setInstructionsLinkText:(id)text;
- (void)shakePasscode;
@end

@implementation BFFPasscodeInputView

- (BFFPasscodeInputView)initWithFrame:(CGRect)frame
{
  v9.receiver = self;
  v9.super_class = BFFPasscodeInputView;
  v3 = [(BFFPasscodeInputView *)&v9 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x277D756B8]);
    instructions = v3->_instructions;
    v3->_instructions = v4;

    v6 = v3->_instructions;
    v7 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76918]];
    [(UILabel *)v6 setFont:v7];

    [(UILabel *)v3->_instructions setNumberOfLines:0];
    [(UILabel *)v3->_instructions setTextAlignment:1];
    [(BFFPasscodeInputView *)v3 addSubview:v3->_instructions];
  }

  return v3;
}

- (void)setFooterView:(id)view
{
  viewCopy = view;
  footerView = [(BFFPasscodeInputView *)self footerView];
  [footerView removeFromSuperview];

  if (viewCopy)
  {
    objc_storeStrong(&self->_footerView, view);
    footerView = [(BFFPasscodeInputView *)self footerView];
    [(BFFPasscodeInputView *)self addSubview:footerView];
  }

  else
  {
    footerView = self->_footerView;
    self->_footerView = 0;
  }

  [(BFFPasscodeInputView *)self setNeedsLayout];
}

- (void)setFooterButtonText:(id)text
{
  textCopy = text;
  footerButton = [(BFFPasscodeInputView *)self footerButton];
  if (textCopy)
  {

    if (!footerButton)
    {
      v5 = [MEMORY[0x277D75220] buttonWithType:1];
      [(BFFPasscodeInputView *)self setFooterButton:v5];

      footerButton2 = [(BFFPasscodeInputView *)self footerButton];
      titleLabel = [footerButton2 titleLabel];
      v8 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76918]];
      [titleLabel setFont:v8];

      footerButton3 = [(BFFPasscodeInputView *)self footerButton];
      titleLabel2 = [footerButton3 titleLabel];
      [titleLabel2 setNumberOfLines:0];

      footerButton4 = [(BFFPasscodeInputView *)self footerButton];
      titleLabel3 = [footerButton4 titleLabel];
      [titleLabel3 setTextAlignment:1];

      footerButton5 = [(BFFPasscodeInputView *)self footerButton];
      [footerButton5 addTarget:self action:sel_footerButtonPressed forControlEvents:64];

      footerButton6 = [(BFFPasscodeInputView *)self footerButton];
      [(BFFPasscodeInputView *)self addSubview:footerButton6];
    }

    footerButton7 = [(BFFPasscodeInputView *)self footerButton];
    [footerButton7 setTitle:textCopy forState:0];
  }

  else
  {
    [footerButton removeFromSuperview];

    [(BFFPasscodeInputView *)self setFooterButton:0];
  }
}

- (void)footerButtonPressed
{
  delegate = [(BFFPasscodeInputView *)self delegate];
  if (delegate)
  {
    v4 = delegate;
    delegate2 = [(BFFPasscodeInputView *)self delegate];
    v6 = objc_opt_respondsToSelector();

    if (v6)
    {
      delegate3 = [(BFFPasscodeInputView *)self delegate];
      footerButton = [(BFFPasscodeInputView *)self footerButton];
      [delegate3 passcodeInput:self tappedFooterButton:footerButton];
    }
  }
}

- (void)setInstructionsLinkText:(id)text
{
  textCopy = text;
  if (textCopy)
  {
    instructionsLinkButton = [(BFFPasscodeInputView *)self instructionsLinkButton];

    if (!instructionsLinkButton)
    {
      v5 = [MEMORY[0x277D75220] buttonWithType:1];
      [(BFFPasscodeInputView *)self setInstructionsLinkButton:v5];

      v6 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76918]];
      instructionsLinkButton2 = [(BFFPasscodeInputView *)self instructionsLinkButton];
      titleLabel = [instructionsLinkButton2 titleLabel];
      [titleLabel setFont:v6];

      instructionsLinkButton3 = [(BFFPasscodeInputView *)self instructionsLinkButton];
      titleLabel2 = [instructionsLinkButton3 titleLabel];
      [titleLabel2 setNumberOfLines:0];

      instructionsLinkButton4 = [(BFFPasscodeInputView *)self instructionsLinkButton];
      titleLabel3 = [instructionsLinkButton4 titleLabel];
      [titleLabel3 setTextAlignment:1];

      instructionsLinkButton5 = [(BFFPasscodeInputView *)self instructionsLinkButton];
      [instructionsLinkButton5 addTarget:self action:sel__instructionsLinkButtonPressed forControlEvents:64];

      instructionsLinkButton6 = [(BFFPasscodeInputView *)self instructionsLinkButton];
      [(BFFPasscodeInputView *)self addSubview:instructionsLinkButton6];
    }

    instructionsLinkButton7 = [(BFFPasscodeInputView *)self instructionsLinkButton];
    [instructionsLinkButton7 setTitle:textCopy forState:0];
  }

  else
  {
    instructionsLinkButton = self->_instructionsLinkButton;
    if (!instructionsLinkButton)
    {
      goto LABEL_8;
    }

    [(UIButton *)instructionsLinkButton removeFromSuperview];
    v17 = self->_instructionsLinkButton;
    self->_instructionsLinkButton = 0;
  }

  [(BFFPasscodeInputView *)self setNeedsLayout];
LABEL_8:
}

- (void)_instructionsLinkButtonPressed
{
  delegate = [(BFFPasscodeInputView *)self delegate];
  if (delegate)
  {
    v4 = delegate;
    delegate2 = [(BFFPasscodeInputView *)self delegate];
    v6 = objc_opt_respondsToSelector();

    if (v6)
    {
      delegate3 = [(BFFPasscodeInputView *)self delegate];
      [delegate3 passcodeInputTappedInstructionsLink:self];
    }
  }
}

- (void)_layoutForBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  instructions = [(BFFPasscodeInputView *)self instructions];
  [instructions sizeThatFits:{width, height}];
  v10 = v9;
  v12 = v11;

  instructions2 = [(BFFPasscodeInputView *)self instructions];
  v14 = BFFRoundToPixel_0((width - v10) * 0.5);
  v15 = BFFIsiPad();
  v16 = 13.5;
  if (!v15)
  {
    v16 = 15.0;
  }

  [instructions2 setFrame:{v14, v16, v10, v12}];

  instructionsLinkButton = [(BFFPasscodeInputView *)self instructionsLinkButton];

  if (instructionsLinkButton)
  {
    instructionsLinkButton2 = [(BFFPasscodeInputView *)self instructionsLinkButton];
    titleLabel = [instructionsLinkButton2 titleLabel];
    footerButton = [(BFFPasscodeInputView *)self footerButton];
    titleLabel2 = [footerButton titleLabel];
    [titleLabel textRectForBounds:objc_msgSend(titleLabel2 limitedToNumberOfLines:{"numberOfLines"), 0.0, 0.0, width, 1.79769313e308}];
    v23 = v22;
    v25 = *&v24;
    v131 = v24;

    v26 = BFFRoundToPixel_0((width - v23) * 0.5);
    instructionsLinkButton3 = [(BFFPasscodeInputView *)self instructionsLinkButton];
    [instructionsLinkButton3 setFrame:{v26, 0.0, v23, v25}];

    instructionsLinkButton4 = [(BFFPasscodeInputView *)self instructionsLinkButton];
    [instructionsLinkButton4 layoutIfNeeded];

    v29 = [MEMORY[0x277D75520] metricsForTextStyle:*MEMORY[0x277D76918]];
    instructionsLinkButton5 = [(BFFPasscodeInputView *)self instructionsLinkButton];
    titleLabel3 = [instructionsLinkButton5 titleLabel];
    [titleLabel3 _firstBaselineOffsetFromTop];
    v33 = v32;
    instructionsLinkButton6 = [(BFFPasscodeInputView *)self instructionsLinkButton];
    titleLabel4 = [instructionsLinkButton6 titleLabel];
    [titleLabel4 frame];
    v36 = height;
    v37 = x;
    v38 = y;
    v39 = v33 + CGRectGetMinY(v134);

    instructions3 = [(BFFPasscodeInputView *)self instructions];
    [instructions3 frame];
    MaxY = CGRectGetMaxY(v135);
    instructions4 = [(BFFPasscodeInputView *)self instructions];
    [instructions4 _baselineOffsetFromBottom];
    v44 = MaxY - v43;
    [v29 scaledValueForValue:30.0];
    v46 = v44 + v45 - v39;
    y = v38;
    x = v37;
    height = v36;

    instructionsLinkButton7 = [(BFFPasscodeInputView *)self instructionsLinkButton];
    [instructionsLinkButton7 setFrame:{v26, v46, v23, *&v131}];
  }

  footerButton2 = [(BFFPasscodeInputView *)self footerButton];

  if (footerButton2)
  {
    footerButton3 = [(BFFPasscodeInputView *)self footerButton];
    [footerButton3 frame];
    v51 = v50;
    v53 = v52;

    footerButton4 = [(BFFPasscodeInputView *)self footerButton];
    titleLabel5 = [footerButton4 titleLabel];
    footerButton5 = [(BFFPasscodeInputView *)self footerButton];
    titleLabel6 = [footerButton5 titleLabel];
    [titleLabel5 textRectForBounds:objc_msgSend(titleLabel6 limitedToNumberOfLines:{"numberOfLines"), 0.0, 0.0, width, 1.79769313e308}];
    v59 = v58;
    v61 = v60;

    v136.origin.x = v51;
    v136.origin.y = v53;
    v136.size.width = v59;
    v136.size.height = v61;
    v62 = CGRectGetWidth(v136);
    v63 = BFFRoundToPixel_0(x + (width - v62) * 0.5);
    v137.origin.x = x;
    v137.origin.y = y;
    v137.size.width = width;
    v137.size.height = height;
    v64 = CGRectGetMaxY(v137);
    v65 = BFFRoundToPixel_0(v64 - v61 + -15.0);
    footerButton6 = [(BFFPasscodeInputView *)self footerButton];
    [footerButton6 setFrame:{v63, v65, v59, v61}];
  }

  footerView = [(BFFPasscodeInputView *)self footerView];

  if (footerView)
  {
    footerView2 = [(BFFPasscodeInputView *)self footerView];
    LODWORD(v69) = 1112014848;
    LODWORD(v70) = 1132068864;
    [footerView2 systemLayoutSizeFittingSize:width withHorizontalFittingPriority:0.0 verticalFittingPriority:{v69, v70}];
    v72 = v71;
    v74 = v73;

    v75 = BFFRoundToPixel_0((width - v72) * 0.5);
    footerButton7 = [(BFFPasscodeInputView *)self footerButton];

    if (footerButton7)
    {
      footerButton8 = [(BFFPasscodeInputView *)self footerButton];
      [footerButton8 frame];
      v79 = BFFRoundToPixel_0(v78 - v74 + -10.0);
    }

    else
    {
      v138.origin.x = x;
      v138.origin.y = y;
      v138.size.width = width;
      v138.size.height = height;
      v80 = CGRectGetMaxY(v138);
      v79 = BFFRoundToPixel_0(v80 - v74 + -10.0);
    }

    footerView3 = [(BFFPasscodeInputView *)self footerView];
    [footerView3 setFrame:{v75, v79, v72, v74}];

    footerView4 = [(BFFPasscodeInputView *)self footerView];
    [footerView4 setNeedsLayout];
  }

  footerButton9 = [(BFFPasscodeInputView *)self footerButton];
  if (footerButton9)
  {
    v84 = footerButton9;
    footerView5 = [(BFFPasscodeInputView *)self footerView];

    if (footerView5)
    {
      footerView6 = [(BFFPasscodeInputView *)self footerView];
      [footerView6 frame];
      v88 = v87;
      v90 = v89;
      v92 = v91;
      v94 = v93;

      passcodeDisplayView = [(BFFPasscodeInputView *)self passcodeDisplayView];
      [passcodeDisplayView frame];
      v96 = CGRectGetMaxY(v139) + 15.0;

      if (v96 >= v90)
      {
        v97 = v96;
      }

      else
      {
        v97 = v90;
      }

      v98 = BFFRoundToPixel_0(v97);
      footerView7 = [(BFFPasscodeInputView *)self footerView];
      [footerView7 setFrame:{v88, v98, v92, v94}];

      footerButton10 = [(BFFPasscodeInputView *)self footerButton];
      [footerButton10 frame];
      v102 = v101;
      v104 = v103;
      v106 = v105;
      v108 = v107;

      v140.origin.x = v88;
      v140.origin.y = v98;
      v140.size.width = v92;
      v140.size.height = v94;
      v109 = CGRectGetMaxY(v140) + 10.0;
      if (v109 < v104)
      {
        v109 = v104;
      }

      goto LABEL_24;
    }
  }

  footerButton11 = [(BFFPasscodeInputView *)self footerButton];

  if (footerButton11)
  {
    footerButton12 = [(BFFPasscodeInputView *)self footerButton];
    [footerButton12 frame];
    v102 = v112;
    v114 = v113;
    v106 = v115;
    v108 = v116;

    passcodeDisplayView2 = [(BFFPasscodeInputView *)self passcodeDisplayView];
    [passcodeDisplayView2 frame];
    v118 = CGRectGetMaxY(v141);

    if (v118 >= v114)
    {
      v109 = v118;
    }

    else
    {
      v109 = v114;
    }

LABEL_24:
    v119 = BFFRoundToPixel_0(v109);
    footerButton13 = [(BFFPasscodeInputView *)self footerButton];
    goto LABEL_25;
  }

  footerView8 = [(BFFPasscodeInputView *)self footerView];

  if (!footerView8)
  {
    return;
  }

  footerView9 = [(BFFPasscodeInputView *)self footerView];
  [footerView9 frame];
  v102 = v123;
  v125 = v124;
  v106 = v126;
  v108 = v127;

  passcodeDisplayView3 = [(BFFPasscodeInputView *)self passcodeDisplayView];
  [passcodeDisplayView3 frame];
  v129 = CGRectGetMaxY(v142);

  if (v129 >= v125)
  {
    v130 = v129;
  }

  else
  {
    v130 = v125;
  }

  v119 = BFFRoundToPixel_0(v130);
  footerButton13 = [(BFFPasscodeInputView *)self footerView];
LABEL_25:
  v132 = footerButton13;
  [footerButton13 setFrame:{v102, v119, v106, v108}];
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = BFFPasscodeInputView;
  [(BFFPasscodeInputView *)&v3 layoutSubviews];
  [(BFFPasscodeInputView *)self bounds];
  [(BFFPasscodeInputView *)self _layoutForBounds:?];
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  [(BFFPasscodeInputView *)self _layoutForBounds:0.0, 0.0, fits.width, fits.height];
  footerButton = [(BFFPasscodeInputView *)self footerButton];
  if (footerButton || ([(BFFPasscodeInputView *)self footerView], (footerButton = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v7 = footerButton;
    [footerButton frame];
    height = CGRectGetMaxY(v11) + 15.0;
  }

  v8 = width;
  v9 = height;
  result.height = v9;
  result.width = v8;
  return result;
}

- (BOOL)becomeFirstResponder
{
  passcodeField = [(BFFPasscodeInputView *)self passcodeField];
  becomeFirstResponder = [passcodeField becomeFirstResponder];

  return becomeFirstResponder;
}

- (BOOL)isFirstResponder
{
  passcodeField = [(BFFPasscodeInputView *)self passcodeField];
  isFirstResponder = [passcodeField isFirstResponder];

  return isFirstResponder;
}

- (BOOL)resignFirstResponder
{
  v6.receiver = self;
  v6.super_class = BFFPasscodeInputView;
  [(BFFPasscodeInputView *)&v6 resignFirstResponder];
  passcodeField = [(BFFPasscodeInputView *)self passcodeField];
  resignFirstResponder = [passcodeField resignFirstResponder];

  return resignFirstResponder;
}

- (void)shakePasscode
{
  passcodeField = [(BFFPasscodeInputView *)self passcodeField];
  v39 = 0;
  v40 = &v39;
  v41 = 0x2050000000;
  v3 = getCASpringAnimationClass_softClass;
  v42 = getCASpringAnimationClass_softClass;
  if (!getCASpringAnimationClass_softClass)
  {
    v34 = MEMORY[0x277D85DD0];
    v35 = 3221225472;
    v36 = __getCASpringAnimationClass_block_invoke;
    v37 = &unk_279BB49D0;
    v38 = &v39;
    __getCASpringAnimationClass_block_invoke(&v34);
    v3 = v40[3];
  }

  v4 = v3;
  _Block_object_dispose(&v39, 8);
  v5 = [v3 animationWithKeyPath:@"position.x"];
  [v5 setMass:1.20000005];
  [v5 setStiffness:1200.0];
  [v5 setDamping:12.0];
  CAMediaTimingFunctionClass = getCAMediaTimingFunctionClass();
  LODWORD(v7) = 1028389654;
  LODWORD(v8) = 990057071;
  LODWORD(v9) = 1059712716;
  LODWORD(v10) = 1.0;
  v11 = [CAMediaTimingFunctionClass functionWithControlPoints:v7 :v8 :v9 :v10];
  [v5 setTimingFunction:v11];

  [v5 setDuration:0.666999996];
  [v5 setInitialVelocity:0.0];
  v12 = getkCAFillModeBackwards();
  [v5 setFillMode:v12];

  v13 = MEMORY[0x277CCABB0];
  layer = [passcodeField layer];
  [layer position];
  v16 = v15 + 75.0;
  *&v16 = v16;
  v17 = [v13 numberWithFloat:v16];
  [v5 setFromValue:v17];

  layer2 = [passcodeField layer];
  [layer2 addAnimation:v5 forKey:@"spring"];

  v39 = 0;
  v40 = &v39;
  v41 = 0x2050000000;
  v19 = getCABasicAnimationClass_softClass;
  v42 = getCABasicAnimationClass_softClass;
  if (!getCABasicAnimationClass_softClass)
  {
    v34 = MEMORY[0x277D85DD0];
    v35 = 3221225472;
    v36 = __getCABasicAnimationClass_block_invoke;
    v37 = &unk_279BB49D0;
    v38 = &v39;
    __getCABasicAnimationClass_block_invoke(&v34);
    v19 = v40[3];
  }

  v20 = v19;
  _Block_object_dispose(&v39, 8);
  v21 = [v19 animationWithKeyPath:@"position.x"];
  v22 = getCAMediaTimingFunctionClass();
  LODWORD(v23) = 1054276898;
  LODWORD(v24) = 1058305108;
  LODWORD(v25) = 1.0;
  v26 = [v22 functionWithControlPoints:v23 :0.0 :v24 :v25];
  [v21 setTimingFunction:v26];

  [v21 setDuration:0.100000001];
  v27 = getkCAFillModeBackwards();
  [v21 setFillMode:v27];

  v28 = MEMORY[0x277CCABB0];
  layer3 = [passcodeField layer];
  [layer3 position];
  v31 = v30 + -75.0;
  *&v31 = v31;
  v32 = [v28 numberWithFloat:v31];
  [v21 setFromValue:v32];

  layer4 = [passcodeField layer];
  [layer4 addAnimation:v21 forKey:@"force"];
}

- (CGSize)intrinsicContentSize
{
  instructions = [(BFFPasscodeInputView *)self instructions];
  [instructions frame];
  MaxY = CGRectGetMaxY(v22);
  v5 = fmaxf(MaxY, 0.0);

  instructionsLinkButton = [(BFFPasscodeInputView *)self instructionsLinkButton];
  [instructionsLinkButton frame];
  v7 = CGRectGetMaxY(v23);
  v8 = fmaxf(v7, v5);

  footerButton = [(BFFPasscodeInputView *)self footerButton];
  [footerButton frame];
  v10 = CGRectGetMaxY(v24);
  v11 = fmaxf(v10, v8);

  footerView = [(BFFPasscodeInputView *)self footerView];
  [footerView frame];
  v13 = CGRectGetMaxY(v25);
  v14 = fmaxf(v13, v11);

  passcodeField = [(BFFPasscodeInputView *)self passcodeField];
  [passcodeField frame];
  v16 = CGRectGetMaxY(v26);
  v17 = fmaxf(v16, v14);

  [(BFFPasscodeInputView *)self bounds];
  v19 = v18;
  v20 = v17;
  result.height = v20;
  result.width = v19;
  return result;
}

- (BFFPasscodeInputViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end