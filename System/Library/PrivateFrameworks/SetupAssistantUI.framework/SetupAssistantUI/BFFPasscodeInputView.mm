@interface BFFPasscodeInputView
- (BFFPasscodeInputView)initWithFrame:(CGRect)a3;
- (BFFPasscodeInputViewDelegate)delegate;
- (BOOL)becomeFirstResponder;
- (BOOL)isFirstResponder;
- (BOOL)resignFirstResponder;
- (CGSize)intrinsicContentSize;
- (CGSize)sizeThatFits:(CGSize)a3;
- (void)_instructionsLinkButtonPressed;
- (void)_layoutForBounds:(CGRect)a3;
- (void)footerButtonPressed;
- (void)layoutSubviews;
- (void)setFooterButtonText:(id)a3;
- (void)setFooterView:(id)a3;
- (void)setInstructionsLinkText:(id)a3;
- (void)shakePasscode;
@end

@implementation BFFPasscodeInputView

- (BFFPasscodeInputView)initWithFrame:(CGRect)a3
{
  v9.receiver = self;
  v9.super_class = BFFPasscodeInputView;
  v3 = [(BFFPasscodeInputView *)&v9 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
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

- (void)setFooterView:(id)a3
{
  v7 = a3;
  v5 = [(BFFPasscodeInputView *)self footerView];
  [v5 removeFromSuperview];

  if (v7)
  {
    objc_storeStrong(&self->_footerView, a3);
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

- (void)setFooterButtonText:(id)a3
{
  v16 = a3;
  v4 = [(BFFPasscodeInputView *)self footerButton];
  if (v16)
  {

    if (!v4)
    {
      v5 = [MEMORY[0x277D75220] buttonWithType:1];
      [(BFFPasscodeInputView *)self setFooterButton:v5];

      v6 = [(BFFPasscodeInputView *)self footerButton];
      v7 = [v6 titleLabel];
      v8 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76918]];
      [v7 setFont:v8];

      v9 = [(BFFPasscodeInputView *)self footerButton];
      v10 = [v9 titleLabel];
      [v10 setNumberOfLines:0];

      v11 = [(BFFPasscodeInputView *)self footerButton];
      v12 = [v11 titleLabel];
      [v12 setTextAlignment:1];

      v13 = [(BFFPasscodeInputView *)self footerButton];
      [v13 addTarget:self action:sel_footerButtonPressed forControlEvents:64];

      v14 = [(BFFPasscodeInputView *)self footerButton];
      [(BFFPasscodeInputView *)self addSubview:v14];
    }

    v15 = [(BFFPasscodeInputView *)self footerButton];
    [v15 setTitle:v16 forState:0];
  }

  else
  {
    [v4 removeFromSuperview];

    [(BFFPasscodeInputView *)self setFooterButton:0];
  }
}

- (void)footerButtonPressed
{
  v3 = [(BFFPasscodeInputView *)self delegate];
  if (v3)
  {
    v4 = v3;
    v5 = [(BFFPasscodeInputView *)self delegate];
    v6 = objc_opt_respondsToSelector();

    if (v6)
    {
      v8 = [(BFFPasscodeInputView *)self delegate];
      v7 = [(BFFPasscodeInputView *)self footerButton];
      [v8 passcodeInput:self tappedFooterButton:v7];
    }
  }
}

- (void)setInstructionsLinkText:(id)a3
{
  v18 = a3;
  if (v18)
  {
    v4 = [(BFFPasscodeInputView *)self instructionsLinkButton];

    if (!v4)
    {
      v5 = [MEMORY[0x277D75220] buttonWithType:1];
      [(BFFPasscodeInputView *)self setInstructionsLinkButton:v5];

      v6 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76918]];
      v7 = [(BFFPasscodeInputView *)self instructionsLinkButton];
      v8 = [v7 titleLabel];
      [v8 setFont:v6];

      v9 = [(BFFPasscodeInputView *)self instructionsLinkButton];
      v10 = [v9 titleLabel];
      [v10 setNumberOfLines:0];

      v11 = [(BFFPasscodeInputView *)self instructionsLinkButton];
      v12 = [v11 titleLabel];
      [v12 setTextAlignment:1];

      v13 = [(BFFPasscodeInputView *)self instructionsLinkButton];
      [v13 addTarget:self action:sel__instructionsLinkButtonPressed forControlEvents:64];

      v14 = [(BFFPasscodeInputView *)self instructionsLinkButton];
      [(BFFPasscodeInputView *)self addSubview:v14];
    }

    v15 = [(BFFPasscodeInputView *)self instructionsLinkButton];
    [v15 setTitle:v18 forState:0];
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
  v3 = [(BFFPasscodeInputView *)self delegate];
  if (v3)
  {
    v4 = v3;
    v5 = [(BFFPasscodeInputView *)self delegate];
    v6 = objc_opt_respondsToSelector();

    if (v6)
    {
      v7 = [(BFFPasscodeInputView *)self delegate];
      [v7 passcodeInputTappedInstructionsLink:self];
    }
  }
}

- (void)_layoutForBounds:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = [(BFFPasscodeInputView *)self instructions];
  [v8 sizeThatFits:{width, height}];
  v10 = v9;
  v12 = v11;

  v13 = [(BFFPasscodeInputView *)self instructions];
  v14 = BFFRoundToPixel_0((width - v10) * 0.5);
  v15 = BFFIsiPad();
  v16 = 13.5;
  if (!v15)
  {
    v16 = 15.0;
  }

  [v13 setFrame:{v14, v16, v10, v12}];

  v17 = [(BFFPasscodeInputView *)self instructionsLinkButton];

  if (v17)
  {
    v18 = [(BFFPasscodeInputView *)self instructionsLinkButton];
    v19 = [v18 titleLabel];
    v20 = [(BFFPasscodeInputView *)self footerButton];
    v21 = [v20 titleLabel];
    [v19 textRectForBounds:objc_msgSend(v21 limitedToNumberOfLines:{"numberOfLines"), 0.0, 0.0, width, 1.79769313e308}];
    v23 = v22;
    v25 = *&v24;
    v131 = v24;

    v26 = BFFRoundToPixel_0((width - v23) * 0.5);
    v27 = [(BFFPasscodeInputView *)self instructionsLinkButton];
    [v27 setFrame:{v26, 0.0, v23, v25}];

    v28 = [(BFFPasscodeInputView *)self instructionsLinkButton];
    [v28 layoutIfNeeded];

    v29 = [MEMORY[0x277D75520] metricsForTextStyle:*MEMORY[0x277D76918]];
    v30 = [(BFFPasscodeInputView *)self instructionsLinkButton];
    v31 = [v30 titleLabel];
    [v31 _firstBaselineOffsetFromTop];
    v33 = v32;
    v34 = [(BFFPasscodeInputView *)self instructionsLinkButton];
    v35 = [v34 titleLabel];
    [v35 frame];
    v36 = height;
    v37 = x;
    v38 = y;
    v39 = v33 + CGRectGetMinY(v134);

    v40 = [(BFFPasscodeInputView *)self instructions];
    [v40 frame];
    MaxY = CGRectGetMaxY(v135);
    v42 = [(BFFPasscodeInputView *)self instructions];
    [v42 _baselineOffsetFromBottom];
    v44 = MaxY - v43;
    [v29 scaledValueForValue:30.0];
    v46 = v44 + v45 - v39;
    y = v38;
    x = v37;
    height = v36;

    v47 = [(BFFPasscodeInputView *)self instructionsLinkButton];
    [v47 setFrame:{v26, v46, v23, *&v131}];
  }

  v48 = [(BFFPasscodeInputView *)self footerButton];

  if (v48)
  {
    v49 = [(BFFPasscodeInputView *)self footerButton];
    [v49 frame];
    v51 = v50;
    v53 = v52;

    v54 = [(BFFPasscodeInputView *)self footerButton];
    v55 = [v54 titleLabel];
    v56 = [(BFFPasscodeInputView *)self footerButton];
    v57 = [v56 titleLabel];
    [v55 textRectForBounds:objc_msgSend(v57 limitedToNumberOfLines:{"numberOfLines"), 0.0, 0.0, width, 1.79769313e308}];
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
    v66 = [(BFFPasscodeInputView *)self footerButton];
    [v66 setFrame:{v63, v65, v59, v61}];
  }

  v67 = [(BFFPasscodeInputView *)self footerView];

  if (v67)
  {
    v68 = [(BFFPasscodeInputView *)self footerView];
    LODWORD(v69) = 1112014848;
    LODWORD(v70) = 1132068864;
    [v68 systemLayoutSizeFittingSize:width withHorizontalFittingPriority:0.0 verticalFittingPriority:{v69, v70}];
    v72 = v71;
    v74 = v73;

    v75 = BFFRoundToPixel_0((width - v72) * 0.5);
    v76 = [(BFFPasscodeInputView *)self footerButton];

    if (v76)
    {
      v77 = [(BFFPasscodeInputView *)self footerButton];
      [v77 frame];
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

    v81 = [(BFFPasscodeInputView *)self footerView];
    [v81 setFrame:{v75, v79, v72, v74}];

    v82 = [(BFFPasscodeInputView *)self footerView];
    [v82 setNeedsLayout];
  }

  v83 = [(BFFPasscodeInputView *)self footerButton];
  if (v83)
  {
    v84 = v83;
    v85 = [(BFFPasscodeInputView *)self footerView];

    if (v85)
    {
      v86 = [(BFFPasscodeInputView *)self footerView];
      [v86 frame];
      v88 = v87;
      v90 = v89;
      v92 = v91;
      v94 = v93;

      v95 = [(BFFPasscodeInputView *)self passcodeDisplayView];
      [v95 frame];
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
      v99 = [(BFFPasscodeInputView *)self footerView];
      [v99 setFrame:{v88, v98, v92, v94}];

      v100 = [(BFFPasscodeInputView *)self footerButton];
      [v100 frame];
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

  v110 = [(BFFPasscodeInputView *)self footerButton];

  if (v110)
  {
    v111 = [(BFFPasscodeInputView *)self footerButton];
    [v111 frame];
    v102 = v112;
    v114 = v113;
    v106 = v115;
    v108 = v116;

    v117 = [(BFFPasscodeInputView *)self passcodeDisplayView];
    [v117 frame];
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
    v120 = [(BFFPasscodeInputView *)self footerButton];
    goto LABEL_25;
  }

  v121 = [(BFFPasscodeInputView *)self footerView];

  if (!v121)
  {
    return;
  }

  v122 = [(BFFPasscodeInputView *)self footerView];
  [v122 frame];
  v102 = v123;
  v125 = v124;
  v106 = v126;
  v108 = v127;

  v128 = [(BFFPasscodeInputView *)self passcodeDisplayView];
  [v128 frame];
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
  v120 = [(BFFPasscodeInputView *)self footerView];
LABEL_25:
  v132 = v120;
  [v120 setFrame:{v102, v119, v106, v108}];
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = BFFPasscodeInputView;
  [(BFFPasscodeInputView *)&v3 layoutSubviews];
  [(BFFPasscodeInputView *)self bounds];
  [(BFFPasscodeInputView *)self _layoutForBounds:?];
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  [(BFFPasscodeInputView *)self _layoutForBounds:0.0, 0.0, a3.width, a3.height];
  v6 = [(BFFPasscodeInputView *)self footerButton];
  if (v6 || ([(BFFPasscodeInputView *)self footerView], (v6 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v7 = v6;
    [v6 frame];
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
  v2 = [(BFFPasscodeInputView *)self passcodeField];
  v3 = [v2 becomeFirstResponder];

  return v3;
}

- (BOOL)isFirstResponder
{
  v2 = [(BFFPasscodeInputView *)self passcodeField];
  v3 = [v2 isFirstResponder];

  return v3;
}

- (BOOL)resignFirstResponder
{
  v6.receiver = self;
  v6.super_class = BFFPasscodeInputView;
  [(BFFPasscodeInputView *)&v6 resignFirstResponder];
  v3 = [(BFFPasscodeInputView *)self passcodeField];
  v4 = [v3 resignFirstResponder];

  return v4;
}

- (void)shakePasscode
{
  v2 = [(BFFPasscodeInputView *)self passcodeField];
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
  v14 = [v2 layer];
  [v14 position];
  v16 = v15 + 75.0;
  *&v16 = v16;
  v17 = [v13 numberWithFloat:v16];
  [v5 setFromValue:v17];

  v18 = [v2 layer];
  [v18 addAnimation:v5 forKey:@"spring"];

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
  v29 = [v2 layer];
  [v29 position];
  v31 = v30 + -75.0;
  *&v31 = v31;
  v32 = [v28 numberWithFloat:v31];
  [v21 setFromValue:v32];

  v33 = [v2 layer];
  [v33 addAnimation:v21 forKey:@"force"];
}

- (CGSize)intrinsicContentSize
{
  v3 = [(BFFPasscodeInputView *)self instructions];
  [v3 frame];
  MaxY = CGRectGetMaxY(v22);
  v5 = fmaxf(MaxY, 0.0);

  v6 = [(BFFPasscodeInputView *)self instructionsLinkButton];
  [v6 frame];
  v7 = CGRectGetMaxY(v23);
  v8 = fmaxf(v7, v5);

  v9 = [(BFFPasscodeInputView *)self footerButton];
  [v9 frame];
  v10 = CGRectGetMaxY(v24);
  v11 = fmaxf(v10, v8);

  v12 = [(BFFPasscodeInputView *)self footerView];
  [v12 frame];
  v13 = CGRectGetMaxY(v25);
  v14 = fmaxf(v13, v11);

  v15 = [(BFFPasscodeInputView *)self passcodeField];
  [v15 frame];
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