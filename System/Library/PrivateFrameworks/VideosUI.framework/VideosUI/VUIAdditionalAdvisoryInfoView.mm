@interface VUIAdditionalAdvisoryInfoView
- (BOOL)_isPortrait;
- (CGSize)_dividerSize;
- (CGSize)_logoSize;
- (CGSize)sizeThatFits:(CGSize)fits;
- (UIEdgeInsets)_descriptionMargin;
- (UIEdgeInsets)_dividerMargin;
- (UIEdgeInsets)_logoMargin;
- (UIEdgeInsets)_margin;
- (VUIAdditionalAdvisoryInfoView)initWithAdvisoryInfoDictionary:(id)dictionary reduceMotion:(BOOL)motion;
- (double)_descriptionViewYOffset;
- (double)_descriptionWidth;
- (void)_configureSubviewsWithDictionary:(id)dictionary;
- (void)_hideWithAnimationWithPlatterView:(id)view hidePlatterView:(BOOL)platterView completion:(id)completion;
- (void)_showAnimatedLogoAndTextWithCompletion:(id)completion platterView:(id)view animateDivider:(BOOL)divider;
- (void)hideAnimated:(BOOL)animated platterView:(id)view hidePlatterView:(BOOL)platterView completion:(id)completion;
- (void)layoutSubviews;
- (void)showWithAnimatedLogoAndText:(BOOL)text animateDivider:(BOOL)divider platterView:(id)view completion:(id)completion;
@end

@implementation VUIAdditionalAdvisoryInfoView

- (VUIAdditionalAdvisoryInfoView)initWithAdvisoryInfoDictionary:(id)dictionary reduceMotion:(BOOL)motion
{
  motionCopy = motion;
  dictionaryCopy = dictionary;
  v14.receiver = self;
  v14.super_class = VUIAdditionalAdvisoryInfoView;
  v7 = [(VUIAdditionalAdvisoryInfoView *)&v14 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  if (v7)
  {
    v8 = os_log_create("com.apple.AppleTV.playback", "VUIPhotoSensitivityView");
    v9 = sLogObject_16;
    sLogObject_16 = v8;

    v10 = objc_opt_new();
    layout = v7->_layout;
    v7->_layout = v10;

    [(VUIAdditionalAdvisoryInfoView *)v7 _configureSubviewsWithDictionary:dictionaryCopy];
    v12 = 100.0;
    if (motionCopy)
    {
      v12 = 0.0;
    }

    v7->_animationDistance = v12;
  }

  return v7;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  [(VUIAdditionalAdvisoryInfoView *)self _logoSize:fits.width];
  v5 = v4;
  v7 = v6;
  [(VUIAdditionalAdvisoryInfoView *)self _logoMargin];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  [(VUIAdditionalAdvisoryInfoView *)self _descriptionMargin];
  v17 = v16;
  v19 = v18;
  [(VUIAdditionalAdvisoryInfoView *)self _dividerSize];
  if (v20 < v7 + v9 + v13 && v20 == 0.0)
  {
    v22 = v7 + v9 + v13;
  }

  else
  {
    v22 = v20;
  }

  [(VUIAdditionalAdvisoryInfoView *)self _descriptionWidth];
  v24 = v17 + v19 + v5 + v11 + v15 + v23;
  v25 = v22;
  result.height = v25;
  result.width = v24;
  return result;
}

- (double)_descriptionViewYOffset
{
  descriptionView = [(VUIAdditionalAdvisoryInfoView *)self descriptionView];
  layer = [descriptionView layer];
  presentationLayer = [layer presentationLayer];
  v6 = 0.0;
  if (!presentationLayer)
  {
    [(VUIAdditionalAdvisoryInfoView *)self animationDistance];
    v6 = -v7;
  }

  return v6;
}

- (void)layoutSubviews
{
  v67.receiver = self;
  v67.super_class = VUIAdditionalAdvisoryInfoView;
  [(VUIAdditionalAdvisoryInfoView *)&v67 layoutSubviews];
  vuiIsRTL = [(VUIAdditionalAdvisoryInfoView *)self vuiIsRTL];
  [(VUIAdditionalAdvisoryInfoView *)self bounds];
  v62 = v4;
  v59 = v5;
  v7 = v6;
  [(VUIAdditionalAdvisoryInfoView *)self _logoSize];
  v9 = v8;
  v11 = v10;
  [(VUIAdditionalAdvisoryInfoView *)self _logoMargin];
  v13 = v12;
  v15 = v14;
  [(VUIAdditionalAdvisoryInfoView *)self _dividerSize];
  v17 = v16;
  v60 = v18;
  [(VUIAdditionalAdvisoryInfoView *)self _dividerMargin];
  v58 = v19;
  v21 = v20;
  v65 = v22;
  [(VUIAdditionalAdvisoryInfoView *)self _descriptionMargin];
  v61 = v23;
  [(VUIAdditionalAdvisoryInfoView *)self _descriptionWidth];
  v66 = v24;
  v54 = v13;
  v56 = v7;
  v25 = v7 - v15 - v9;
  v26 = v62 + v13;
  if (vuiIsRTL)
  {
    v27 = v25;
  }

  else
  {
    v27 = v62 + v13;
  }

  v63 = v27;
  v28 = v11;
  VUIRoundValue();
  v30 = v29;
  logoImageView = [(VUIAdditionalAdvisoryInfoView *)self logoImageView];
  v32 = v28;
  v33 = v26;
  [logoImageView setFrame:{v63, v30, v9, v32}];

  v64 = v21;
  v34 = v26 + v9 + v15 + v21;
  v35 = v15 + v21;
  v36 = v15;
  v37 = v17;
  v38 = v25 - (v35 - v17);
  if (vuiIsRTL)
  {
    v39 = v38;
  }

  else
  {
    v39 = v34;
  }

  v40 = [(VUIAdditionalAdvisoryInfoView *)self dividerView:*&v54];

  if (v40)
  {
    dividerView = [(VUIAdditionalAdvisoryInfoView *)self dividerView];
    [dividerView frame];
    v43 = v42;

    if (v43 > 0.0)
    {
      v43 = v60;
    }

    dividerView2 = [(VUIAdditionalAdvisoryInfoView *)self dividerView];
    [dividerView2 setFrame:{v39, v59 + v58, v37, v43}];

    v45 = v37;
    v46 = v60;
  }

  else
  {
    v45 = *(MEMORY[0x1E695F058] + 16);
    v46 = v60;
  }

  [(VUIAdditionalAdvisoryInfoView *)self _descriptionViewYOffset];
  v48 = v47;
  if (vuiIsRTL)
  {
    v49 = v66;
    v50 = v57 - v55 - v9 - v36 - v64 - v37 - v65 - v61 - v66;
  }

  else
  {
    v50 = v33 + v64 + v36 + v9 + v33 + v61 + v65 + v45;
    v49 = v66;
  }

  [(VUILabel *)self->_descriptionView setFrame:v50, v48, v49, v46];
  layer = [(VUILabel *)self->_descriptionView layer];
  layout = [(VUIAdditionalAdvisoryInfoView *)self layout];
  [layout descriptionCornerRadius];
  [layer setCornerRadius:?];

  layer2 = [(VUILabel *)self->_descriptionView layer];
  [layer2 setCompositingFilter:*MEMORY[0x1E6979D98]];
}

- (BOOL)_isPortrait
{
  traitCollection = [(VUIAdditionalAdvisoryInfoView *)self traitCollection];
  userInterfaceIdiom = [traitCollection userInterfaceIdiom];

  if (!userInterfaceIdiom && ([MEMORY[0x1E69DD2E8] vui_interfaceOrientation] - 1) < 2 || (v4 = +[VUIUtilities isIpadPortrait](VUIUtilities, "isIpadPortrait")))
  {
    LOBYTE(v4) = 1;
  }

  return v4;
}

- (UIEdgeInsets)_margin
{
  _isPortrait = [(VUIAdditionalAdvisoryInfoView *)self _isPortrait];
  layout = [(VUIAdditionalAdvisoryInfoView *)self layout];
  v5 = layout;
  if (_isPortrait)
  {
    [layout portraitMargin];
  }

  else
  {
    [layout margin];
  }

  v10 = v6;
  v11 = v7;
  v12 = v8;
  v13 = v9;

  v14 = v10;
  v15 = v11;
  v16 = v12;
  v17 = v13;
  result.right = v17;
  result.bottom = v16;
  result.left = v15;
  result.top = v14;
  return result;
}

- (CGSize)_logoSize
{
  _isPortrait = [(VUIAdditionalAdvisoryInfoView *)self _isPortrait];
  layout = [(VUIAdditionalAdvisoryInfoView *)self layout];
  v5 = layout;
  if (_isPortrait)
  {
    [layout portraitLogoSize];
  }

  else
  {
    [layout logoSize];
  }

  v8 = v6;
  v9 = v7;

  v10 = v8;
  v11 = v9;
  result.height = v11;
  result.width = v10;
  return result;
}

- (CGSize)_dividerSize
{
  [(VUIAdditionalAdvisoryInfoView *)self bounds];
  v4 = v3;
  _isPortrait = [(VUIAdditionalAdvisoryInfoView *)self _isPortrait];
  layout = [(VUIAdditionalAdvisoryInfoView *)self layout];
  v7 = layout;
  if (_isPortrait)
  {
    [layout portraitDividerSize];
  }

  else
  {
    [layout dividerSize];
  }

  v9 = v8;

  v10 = v9;
  v11 = v4;
  result.height = v11;
  result.width = v10;
  return result;
}

- (UIEdgeInsets)_logoMargin
{
  _isPortrait = [(VUIAdditionalAdvisoryInfoView *)self _isPortrait];
  layout = [(VUIAdditionalAdvisoryInfoView *)self layout];
  v5 = layout;
  if (_isPortrait)
  {
    [layout portraitLogoMargin];
  }

  else
  {
    [layout logoMargin];
  }

  v10 = v6;
  v11 = v7;
  v12 = v8;
  v13 = v9;

  v14 = v10;
  v15 = v11;
  v16 = v12;
  v17 = v13;
  result.right = v17;
  result.bottom = v16;
  result.left = v15;
  result.top = v14;
  return result;
}

- (UIEdgeInsets)_descriptionMargin
{
  _isPortrait = [(VUIAdditionalAdvisoryInfoView *)self _isPortrait];
  layout = [(VUIAdditionalAdvisoryInfoView *)self layout];
  v5 = layout;
  if (_isPortrait)
  {
    [layout portraitDescriptionMargin];
  }

  else
  {
    [layout descriptionMargin];
  }

  v10 = v6;
  v11 = v7;
  v12 = v8;
  v13 = v9;

  v14 = v10;
  v15 = v11;
  v16 = v12;
  v17 = v13;
  result.right = v17;
  result.bottom = v16;
  result.left = v15;
  result.top = v14;
  return result;
}

- (double)_descriptionWidth
{
  layout = [(VUIAdditionalAdvisoryInfoView *)self layout];
  [layout descriptionWidth];
  v4 = v3;

  return v4;
}

- (UIEdgeInsets)_dividerMargin
{
  _isPortrait = [(VUIAdditionalAdvisoryInfoView *)self _isPortrait];
  layout = [(VUIAdditionalAdvisoryInfoView *)self layout];
  v5 = layout;
  if (_isPortrait)
  {
    [layout portraitDividerMargin];
  }

  else
  {
    [layout dividerMargin];
  }

  v10 = v6;
  v11 = v7;
  v12 = v8;
  v13 = v9;

  v14 = v10;
  v15 = v11;
  v16 = v12;
  v17 = v13;
  result.right = v17;
  result.bottom = v16;
  result.left = v15;
  result.top = v14;
  return result;
}

- (void)_configureSubviewsWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v4 = objc_opt_new();
  v5 = [dictionaryCopy objectForKeyedSubscript:@"VUIAdditionalAdvisoryInfoViewImageKey"];
  if (v5)
  {
    [v4 setImage:v5];
    whiteColor = [MEMORY[0x1E69DC888] whiteColor];
    [v4 setTintColor:whiteColor];
  }

  [v4 setAlpha:0.0];
  [(VUIAdditionalAdvisoryInfoView *)self addSubview:v4];
  [(VUIAdditionalAdvisoryInfoView *)self setLogoImageView:v4];
  [(VUIAdditionalAdvisoryInfoView *)self _dividerSize];
  v8 = v7;
  v9 = objc_opt_new();
  layout = [(VUIAdditionalAdvisoryInfoView *)self layout];
  dividerColor = [layout dividerColor];
  [v9 setBackgroundColor:dividerColor];

  [v9 setFrame:{0.0, 0.0, v8, 0.0}];
  [(VUIAdditionalAdvisoryInfoView *)self addSubview:v9];
  [(VUIAdditionalAdvisoryInfoView *)self setDividerView:v9];
  v12 = [dictionaryCopy objectForKeyedSubscript:@"VUIIAdditionalAdvisoryInfoViewDescriptionKey"];
  v13 = [(VUIAdditionalAdvisoryInfoView *)self description];
  layout2 = [(VUIAdditionalAdvisoryInfoView *)self layout];
  descriptionLayout = [layout2 descriptionLayout];
  v16 = [VUILabel labelWithString:v13 textLayout:descriptionLayout existingLabel:0];

  [v16 setText:v12];
  [(VUIAdditionalAdvisoryInfoView *)self addSubview:v16];
  [(VUIAdditionalAdvisoryInfoView *)self setDescriptionView:v16];
  layer = [(VUILabel *)self->_descriptionView layer];
  layout3 = [(VUIAdditionalAdvisoryInfoView *)self layout];
  [layout3 descriptionCornerRadius];
  [layer setCornerRadius:?];

  [(VUIAdditionalAdvisoryInfoView *)self layoutSubviews];
}

- (void)showWithAnimatedLogoAndText:(BOOL)text animateDivider:(BOOL)divider platterView:(id)view completion:(id)completion
{
  dividerCopy = divider;
  textCopy = text;
  viewCopy = view;
  completionCopy = completion;
  if (textCopy)
  {
    [(VUIAdditionalAdvisoryInfoView *)self _showAnimatedLogoAndTextWithCompletion:completionCopy platterView:viewCopy animateDivider:dividerCopy];
  }

  else
  {
    dividerView = [(VUIAdditionalAdvisoryInfoView *)self dividerView];

    if (dividerView)
    {
      dividerView2 = [(VUIAdditionalAdvisoryInfoView *)self dividerView];
      [dividerView2 frame];
      v14 = v13;
      v16 = v15;
      v18 = v17;

      [(VUIAdditionalAdvisoryInfoView *)self _dividerSize];
      v20 = v19;
      dividerView3 = [(VUIAdditionalAdvisoryInfoView *)self dividerView];
      [dividerView3 setFrame:{v14, v16, v18, v20}];
    }

    logoImageView = [(VUIAdditionalAdvisoryInfoView *)self logoImageView];
    [logoImageView setAlpha:1.0];

    descriptionView = [(VUIAdditionalAdvisoryInfoView *)self descriptionView];
    [descriptionView setAlpha:1.0];

    if (viewCopy)
    {
      [(VUIAdditionalAdvisoryInfoView *)self frame];
      v25 = v24 + -15.0;
      [viewCopy frame];
      v27 = v26;
      [(VUIAdditionalAdvisoryInfoView *)self frame];
      v29 = v28 + 30.0;
      [viewCopy frame];
      [viewCopy setFrame:{v25, v27, v29}];
    }

    completionCopy[2](completionCopy);
  }
}

- (void)_showAnimatedLogoAndTextWithCompletion:(id)completion platterView:(id)view animateDivider:(BOOL)divider
{
  dividerCopy = divider;
  completionCopy = completion;
  viewCopy = view;
  [MEMORY[0x1E6979518] begin];
  v10 = MEMORY[0x1E6979518];
  v89[0] = MEMORY[0x1E69E9820];
  v89[1] = 3221225472;
  v89[2] = __109__VUIAdditionalAdvisoryInfoView_Animator___showAnimatedLogoAndTextWithCompletion_platterView_animateDivider___block_invoke;
  v89[3] = &unk_1E872D7E0;
  v88 = completionCopy;
  v90 = v88;
  [v10 setCompletionBlock:v89];
  v11 = [MEMORY[0x1E69794A8] animationWithKeyPath:@"bounds"];
  [v11 setMass:1.0];
  [v11 setStiffness:60.0];
  [v11 setDamping:16.0];
  [v11 setInitialVelocity:0.0];
  [v11 settlingDuration];
  [v11 setDuration:?];
  dividerView = [(VUIAdditionalAdvisoryInfoView *)self dividerView];
  layer = [dividerView layer];

  if (dividerCopy)
  {
    [layer bounds];
    v15 = v14;
    v17 = v16;
    v19 = v18;
    [(VUIAdditionalAdvisoryInfoView *)self bounds];
    v21 = v20;
    v22 = [MEMORY[0x1E696B098] valueWithCGRect:{v15, v17, v19, 0.0}];
    [v11 setFromValue:v22];

    v23 = [MEMORY[0x1E696B098] valueWithCGRect:{v15, v17, v19, v21}];
    [v11 setToValue:v23];

    [layer addAnimation:v11 forKey:@"bounds"];
  }

  else
  {
    [(VUIAdditionalAdvisoryInfoView *)self bounds];
    v15 = v24;
    v17 = v25;
    v19 = v26;
    v21 = v27;
  }

  v87 = layer;
  [layer setBounds:{v15, v17, v19, v21}];
  if (viewCopy)
  {
    layer2 = [viewCopy layer];
    [layer2 bounds];
    v30 = v29;
    v32 = v31;
    v34 = v33;
    v36 = v35;
    [(VUIAdditionalAdvisoryInfoView *)self bounds];
    v38 = v37 + 30.0;
    if (v34 == 0.0)
    {
      v39 = [MEMORY[0x1E696B098] valueWithCGRect:{v30, v32, v34, v36}];
      [v11 setFromValue:v39];

      v40 = [MEMORY[0x1E696B098] valueWithCGRect:{v30, v32, v38, v36}];
      [v11 setToValue:v40];

      [layer2 addAnimation:v11 forKey:@"bounds"];
      [layer2 setBounds:{v30, v32, v38, v36}];
    }

    else if (v34 < v38)
    {
      v41 = [MEMORY[0x1E69794A8] animationWithKeyPath:@"position"];
      [v41 setMass:1.0];
      [v41 setStiffness:60.0];
      [v41 setDamping:16.0];
      [v41 setInitialVelocity:0.0];
      [v41 settlingDuration];
      [v41 setDuration:?];
      [layer2 position];
      v43 = v42;
      v45 = v44;
      layer3 = [(VUIAdditionalAdvisoryInfoView *)self layer];
      [layer3 position];
      v48 = v47;

      v49 = [MEMORY[0x1E696B098] valueWithCGPoint:{v43, v45}];
      [v41 setFromValue:v49];

      v50 = [MEMORY[0x1E696B098] valueWithCGPoint:{v48, v45}];
      [v41 setToValue:v50];

      [layer2 addAnimation:v41 forKey:@"position"];
      [layer2 setPosition:{v48, v45}];
      [(VUIAdditionalAdvisoryInfoView *)self bounds];
      v52 = v51 + 30.0;
      v53 = [MEMORY[0x1E696B098] valueWithCGRect:{v30, v32, v34, v36}];
      [v11 setFromValue:v53];

      v54 = [MEMORY[0x1E696B098] valueWithCGRect:{v30, v32, v52, v36}];
      [v11 setToValue:v54];

      [layer2 addAnimation:v11 forKey:@"bounds"];
      [layer2 setBounds:{v30, v32, v52, v36}];
    }
  }

  v55 = objc_alloc(MEMORY[0x1E69793D0]);
  LODWORD(v56) = 1.0;
  LODWORD(v57) = 1051260355;
  LODWORD(v58) = 1059816735;
  v85 = [v55 initWithControlPoints:v57 :0.0 :v58 :v56];
  [MEMORY[0x1E6979318] animationWithKeyPath:@"opacity"];
  v59 = v86 = viewCopy;
  [v59 setTimingFunction:v85];
  [v59 setBeginTime:CACurrentMediaTime() + 0.8];
  v60 = [MEMORY[0x1E696AD98] numberWithFloat:0.0];
  [v59 setFromValue:v60];

  LODWORD(v61) = 1.0;
  v62 = [MEMORY[0x1E696AD98] numberWithFloat:v61];
  [v59 setToValue:v62];

  [v59 setDuration:0.88];
  [v59 setRemovedOnCompletion:0];
  v63 = *MEMORY[0x1E69797E8];
  [v59 setFillMode:*MEMORY[0x1E69797E8]];
  logoImageView = [(VUIAdditionalAdvisoryInfoView *)self logoImageView];
  layer4 = [logoImageView layer];

  [layer4 addAnimation:v59 forKey:@"opacity"];
  [layer4 setOpacity:0.0];
  layer5 = [(VUILabel *)self->_descriptionView layer];
  v66 = [MEMORY[0x1E69794A8] animationWithKeyPath:@"position"];
  [v66 setMass:1.0];
  [v66 setStiffness:24.0];
  [v66 setDamping:15.0];
  [v66 setInitialVelocity:0.0];
  [v66 settlingDuration];
  [v66 setDuration:?];
  [layer5 position];
  v68 = v67;
  v70 = v69;
  [(VUIAdditionalAdvisoryInfoView *)self animationDistance];
  v72 = v70 + v71;
  v73 = [MEMORY[0x1E696B098] valueWithCGPoint:{v68, v70}];
  [v66 setFromValue:v73];

  v74 = [MEMORY[0x1E696B098] valueWithCGPoint:{v68, v72}];
  [v66 setToValue:v74];

  [v66 setRemovedOnCompletion:0];
  [v66 setFillMode:v63];
  [layer5 addAnimation:v66 forKey:@"position"];
  [layer5 setPosition:{v68, v70}];
  v75 = objc_alloc(MEMORY[0x1E69793D0]);
  LODWORD(v76) = 1.0;
  LODWORD(v77) = 1051260355;
  LODWORD(v78) = 1059816735;
  v79 = [v75 initWithControlPoints:v77 :0.0 :v78 :v76];
  v80 = [MEMORY[0x1E6979318] animationWithKeyPath:@"opacity"];
  [v80 setTimingFunction:v79];
  v81 = [MEMORY[0x1E696AD98] numberWithFloat:0.0];
  [v80 setFromValue:v81];

  LODWORD(v82) = 1.0;
  v83 = [MEMORY[0x1E696AD98] numberWithFloat:v82];
  [v80 setToValue:v83];

  [v80 setRemovedOnCompletion:0];
  [v80 setFillMode:v63];
  [layer5 addAnimation:v80 forKey:@"opacity"];
  [v80 setBeginTime:CACurrentMediaTime() + 0.349999994];
  [v80 setDuration:3.0];
  [layer5 setOpacity:0.0];
  [MEMORY[0x1E6979518] commit];
}

uint64_t __109__VUIAdditionalAdvisoryInfoView_Animator___showAnimatedLogoAndTextWithCompletion_platterView_animateDivider___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)hideAnimated:(BOOL)animated platterView:(id)view hidePlatterView:(BOOL)platterView completion:(id)completion
{
  platterViewCopy = platterView;
  animatedCopy = animated;
  completionCopy = completion;
  v22 = completionCopy;
  if (animatedCopy)
  {
    [(VUIAdditionalAdvisoryInfoView *)self _hideWithAnimationWithPlatterView:view hidePlatterView:platterViewCopy completion:completionCopy];
  }

  else
  {
    dividerView = [(VUIAdditionalAdvisoryInfoView *)self dividerView];

    if (dividerView)
    {
      dividerView2 = [(VUIAdditionalAdvisoryInfoView *)self dividerView];
      [dividerView2 frame];
      v14 = v13;
      v16 = v15;
      v18 = v17;

      dividerView3 = [(VUIAdditionalAdvisoryInfoView *)self dividerView];
      [dividerView3 setFrame:{v14, v16, v18, 0.0}];
    }

    logoImageView = [(VUIAdditionalAdvisoryInfoView *)self logoImageView];
    [logoImageView setAlpha:0.0];

    descriptionView = [(VUIAdditionalAdvisoryInfoView *)self descriptionView];
    [descriptionView setAlpha:0.0];

    v22[2]();
  }
}

- (void)_hideWithAnimationWithPlatterView:(id)view hidePlatterView:(BOOL)platterView completion:(id)completion
{
  platterViewCopy = platterView;
  viewCopy = view;
  completionCopy = completion;
  [MEMORY[0x1E6979518] begin];
  v10 = MEMORY[0x1E6979518];
  v55[0] = MEMORY[0x1E69E9820];
  v55[1] = 3221225472;
  v55[2] = __104__VUIAdditionalAdvisoryInfoView_Animator___hideWithAnimationWithPlatterView_hidePlatterView_completion___block_invoke;
  v55[3] = &unk_1E872D7E0;
  v54 = completionCopy;
  v56 = v54;
  [v10 setCompletionBlock:v55];
  v11 = objc_alloc(MEMORY[0x1E69793D0]);
  LODWORD(v12) = 1.0;
  LODWORD(v13) = 1051260355;
  LODWORD(v14) = 1059816735;
  v15 = [v11 initWithControlPoints:v13 :0.0 :v14 :v12];
  v16 = [MEMORY[0x1E6979318] animationWithKeyPath:@"opacity"];
  v53 = v15;
  [v16 setTimingFunction:v15];
  [v16 setBeginTime:CACurrentMediaTime()];
  LODWORD(v17) = 1.0;
  v18 = [MEMORY[0x1E696AD98] numberWithFloat:v17];
  [v16 setFromValue:v18];

  v19 = [MEMORY[0x1E696AD98] numberWithFloat:0.0];
  [v16 setToValue:v19];

  [v16 setDuration:0.88];
  [v16 setRemovedOnCompletion:0];
  v20 = *MEMORY[0x1E69797E8];
  [v16 setFillMode:*MEMORY[0x1E69797E8]];
  logoImageView = [(VUIAdditionalAdvisoryInfoView *)self logoImageView];
  layer = [logoImageView layer];

  [layer addAnimation:v16 forKey:@"opacity"];
  [layer setOpacity:0.0];
  if (viewCopy && platterViewCopy)
  {
    layer2 = [viewCopy layer];
    [layer2 addAnimation:v16 forKey:@"opacity"];
    [layer2 setOpacity:0.0];
  }

  v24 = objc_alloc(MEMORY[0x1E69793D0]);
  LODWORD(v25) = 1.0;
  LODWORD(v26) = 1051260355;
  LODWORD(v27) = 1059816735;
  v51 = [v24 initWithControlPoints:v26 :0.0 :v27 :v25];
  [MEMORY[0x1E6979318] animationWithKeyPath:@"opacity"];
  v28 = v52 = viewCopy;
  [v28 setTimingFunction:v51];
  LODWORD(v29) = 1.0;
  v30 = [MEMORY[0x1E696AD98] numberWithFloat:v29];
  [v28 setFromValue:v30];

  v31 = [MEMORY[0x1E696AD98] numberWithFloat:0.0];
  [v28 setToValue:v31];

  [v28 setDuration:0.810000002];
  [v28 setRemovedOnCompletion:0];
  [v28 setFillMode:v20];
  descriptionView = [(VUIAdditionalAdvisoryInfoView *)self descriptionView];
  layer3 = [descriptionView layer];

  [layer3 addAnimation:v28 forKey:@"opacity"];
  [v28 setBeginTime:CACurrentMediaTime() + 0.349999994];
  [layer3 setOpacity:0.0];
  v34 = [MEMORY[0x1E6979318] animationWithKeyPath:@"bounds"];
  [v34 setDuration:0.88];
  v35 = objc_alloc(MEMORY[0x1E69793D0]);
  LODWORD(v36) = 1062501089;
  LODWORD(v37) = 1051260355;
  v38 = [v35 initWithControlPoints:v37 :0.0 :v36 :0.0];
  [v34 setTimingFunction:v38];
  dividerView = [(VUIAdditionalAdvisoryInfoView *)self dividerView];
  layer4 = [dividerView layer];

  [layer4 bounds];
  v42 = v41;
  v44 = v43;
  v46 = v45;
  v48 = v47;
  v49 = [MEMORY[0x1E696B098] valueWithCGRect:?];
  [v34 setFromValue:v49];

  v50 = [MEMORY[0x1E696B098] valueWithCGRect:{v42, v44, v46, 0.0}];
  [v34 setToValue:v50];

  [v34 setRemovedOnCompletion:0];
  [v34 setFillMode:v20];
  [layer4 addAnimation:v34 forKey:@"bounds"];
  [layer4 setBounds:{v42, v44, v46, v48}];
  [MEMORY[0x1E6979518] commit];
}

uint64_t __104__VUIAdditionalAdvisoryInfoView_Animator___hideWithAnimationWithPlatterView_hidePlatterView_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

@end