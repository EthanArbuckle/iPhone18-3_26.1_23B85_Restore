@interface PKEducationPhone
- (CGSize)sizeThatFits:(CGSize)a3;
- (PKEducationPhone)initWithFrame:(CGRect)a3 displayOptions:(unint64_t)a4;
- (double)_deviceIconsPadding;
- (double)_topPadding;
- (void)_setHomeButtonOutlineColor;
- (void)_startPowerIndicatorAnimation;
- (void)layoutSubviews;
- (void)setPassImage:(id)a3;
- (void)startAnimation;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation PKEducationPhone

- (PKEducationPhone)initWithFrame:(CGRect)a3 displayOptions:(unint64_t)a4
{
  v4 = a4;
  v60.receiver = self;
  v60.super_class = PKEducationPhone;
  v5 = [(PKEducationPhone *)&v60 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v6 = v5;
  if (v5)
  {
    p_screenSize = &v5->_screenSize;
    PKScreenSize();
    *&p_screenSize->width = v8;
    v6->_screenSize.height = v9;
    v6->_screenType = PKUIGetMinScreenType();
    v6->_hasPearl = PKPearlIsAvailable();
    v10 = objc_alloc_init(PKPhoneHeroView);
    phoneBackgroundView = v6->_phoneBackgroundView;
    v6->_phoneBackgroundView = v10;

    [(PKEducationPhone *)v6 addSubview:v6->_phoneBackgroundView];
    v12 = objc_alloc_init(MEMORY[0x1E69DCAE0]);
    cardImageView = v6->_cardImageView;
    v6->_cardImageView = v12;

    [(UIImageView *)v6->_cardImageView setContentMode:1];
    [(PKEducationPhone *)v6 addSubview:v6->_cardImageView];
    if ((v4 & 1) == 0)
    {
      v14 = objc_alloc_init(PKPaymentSetupInitialCardEducationIconsView);
      iconsView = v6->_iconsView;
      v6->_iconsView = v14;

      [(PKEducationPhone *)v6 addSubview:v6->_iconsView];
    }

    v16 = objc_alloc(MEMORY[0x1E69DCAE0]);
    v17 = PKUIImageNamed(@"CardStack_Illustration");
    v18 = [v16 initWithImage:v17];
    walletImageView = v6->_walletImageView;
    v6->_walletImageView = v18;

    [(UIImageView *)v6->_walletImageView setContentMode:1];
    [(PKEducationPhone *)v6 addSubview:v6->_walletImageView];
    v20 = objc_alloc_init(MEMORY[0x1E69DD250]);
    homeButtonView = v6->_homeButtonView;
    v6->_homeButtonView = v20;

    v22 = v6->_homeButtonView;
    if (v6->_hasPearl)
    {
      v23 = [MEMORY[0x1E69DC888] labelColor];
      [(UIView *)v22 setBackgroundColor:v23];
    }

    else
    {
      v24 = [MEMORY[0x1E69DC888] systemBlueColor];
      [(UIView *)v22 setBackgroundColor:v24];

      [(UIView *)v6->_homeButtonView setAlpha:0.4];
    }

    [(PKEducationPhone *)v6 addSubview:v6->_homeButtonView];
    if (!v6->_hasPearl)
    {
      v25 = objc_alloc_init(MEMORY[0x1E69DD250]);
      homeButtonOutlineView = v6->_homeButtonOutlineView;
      v6->_homeButtonOutlineView = v25;

      v27 = [(UIView *)v6->_homeButtonOutlineView layer];
      [v27 setBorderWidth:2.0];

      [(PKEducationPhone *)v6 addSubview:v6->_homeButtonOutlineView];
      [(PKEducationPhone *)v6 _setHomeButtonOutlineColor];
    }

    v28 = objc_alloc_init(MEMORY[0x1E69DCAE0]);
    biometricsImageView = v6->_biometricsImageView;
    v6->_biometricsImageView = v28;

    [(UIImageView *)v6->_biometricsImageView setContentMode:1];
    if (v6->_hasPearl)
    {
      v30 = @"PearlIDIcon";
    }

    else
    {
      v30 = @"TouchIDIcon";
    }

    v31 = v30;
    if ((v4 & 2) != 0)
    {
      v32 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@Barcode", v31];

      v31 = v32;
    }

    v33 = PKPassKitUIBundle();
    v34 = [v33 URLForResource:v31 withExtension:@"pdf"];

    v35 = v6->_biometricsImageView;
    v36 = PKUIScreenScale();
    v37 = PKUIImageFromPDF(v34, 40.0, 40.0, v36);
    [(UIImageView *)v35 setImage:v37];

    [(PKEducationPhone *)v6 addSubview:v6->_biometricsImageView];
    if (v6->_hasPearl)
    {
      v38 = objc_alloc_init(MEMORY[0x1E69DCAE0]);
      powerIndicatorView = v6->_powerIndicatorView;
      v6->_powerIndicatorView = v38;

      [(UIImageView *)v6->_powerIndicatorView setContentMode:1];
      v40 = PKPassKitUIBundle();
      v41 = [v40 URLForResource:@"Education_Power_Button" withExtension:@"pdf"];

      v42 = PKUIScreenScale();
      v43 = PKUIImageFromPDF(v41, 20.0, 40.0, v42);
      v44 = v6->_powerIndicatorView;
      v45 = [v43 imageWithRenderingMode:2];
      [(UIImageView *)v44 setImage:v45];

      v46 = v6->_powerIndicatorView;
      v47 = [MEMORY[0x1E69DC888] systemBlueColor];
      [(UIImageView *)v46 setTintColor:v47];

      [(UIImageView *)v6->_powerIndicatorView setAlpha:0.4];
      v48 = [(UIImageView *)v6->_powerIndicatorView layer];
      [v48 setAnchorPoint:{0.0, 0.5}];

      [(PKEducationPhone *)v6 addSubview:v6->_powerIndicatorView];
      v49 = objc_alloc_init(MEMORY[0x1E69DCAE0]);
      powerArrowImageView = v6->_powerArrowImageView;
      v6->_powerArrowImageView = v49;

      v51 = PKPassKitUIBundle();
      v52 = [v51 URLForResource:@"Education_Power_Arrow" withExtension:@"pdf"];

      v53 = PKUIScreenScale();
      v54 = PKUIImageFromPDF(v52, 40.0, 40.0, v53);
      v55 = v6->_powerArrowImageView;
      v56 = [v54 imageWithRenderingMode:2];
      [(UIImageView *)v55 setImage:v56];

      v57 = v6->_powerArrowImageView;
      v58 = [MEMORY[0x1E69DC888] systemBlueColor];
      [(UIImageView *)v57 setTintColor:v58];

      [(PKEducationPhone *)v6 addSubview:v6->_powerArrowImageView];
    }
  }

  return v6;
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  width = a3.width;
  screenType = self->_screenType;
  if (screenType > 0x13)
  {
    v6 = 0.3;
  }

  else
  {
    v6 = dbl_1BE114380[screenType];
  }

  v7 = v6 * self->_screenSize.width / (self->_screenSize.width / self->_screenSize.height);
  if (self->_hasPearl)
  {
    v8 = 0.0;
  }

  else
  {
    v8 = 45.0;
  }

  [(PKEducationPhone *)self _topPadding];
  v10 = v7 + v9;
  [(PKEducationPhone *)self _deviceIconsPadding];
  v12 = v8 + v10 + v11 + 34.0;
  v13 = width;
  result.height = v12;
  result.width = v13;
  return result;
}

- (void)layoutSubviews
{
  *&recta.origin.y = self;
  *&recta.size.width = PKEducationPhone;
  [(CGFloat *)&recta.origin.y layoutSubviews];
  [(PKEducationPhone *)self bounds];
  v4 = v3;
  v6 = v5;
  [(PKEducationPhone *)self _topPadding];
  v8 = v7;
  v9 = v6 - v7 + -34.0;
  v10 = v9 + -45.0;
  if (self->_hasPearl)
  {
    v10 = v9;
  }

  [(PKPhoneHeroView *)self->_phoneBackgroundView sizeThatFits:v4, v10];
  v12 = v11;
  v14 = v13;
  iconsView = self->_iconsView;
  v16 = v4 - v11;
  v17 = v16 * 0.5;
  if (iconsView)
  {
    [(PKPaymentSetupInitialCardEducationIconsView *)iconsView setFrame:v16 * 0.5, v8, v12, 34.0];
    v65.origin.x = v17;
    v65.origin.y = v8;
    v65.size.width = v12;
    v65.size.height = 34.0;
    MaxY = CGRectGetMaxY(v65);
    [(PKEducationPhone *)self _deviceIconsPadding];
    v8 = MaxY + v19;
  }

  [(PKPhoneHeroView *)self->_phoneBackgroundView setFrame:v17, v8, v12, v14];
  [(PKPhoneHeroView *)self->_phoneBackgroundView deviceCornerRadius];
  v21 = v20;
  recta.origin.x = v17;
  v22 = [(UIImageView *)self->_cardImageView image];
  [v22 size];
  PKSizeAspectFit();
  PKSizeRoundToPixel();
  v24 = v23;
  v26 = v25;

  v63 = v14;
  v27 = (v4 - v24) * 0.5;
  v28 = v8 + v21;
  [(UIImageView *)self->_cardImageView setFrame:v27, v8 + v21, v24, v26];
  PKFloatRoundToPixel();
  v30 = v29;
  v61 = v26;
  v62 = v4;
  v31 = (v4 - v29) * 0.5;
  v66.origin.x = v27;
  v60 = v28;
  v66.origin.y = v28;
  v32 = v12;
  v66.size.width = v24;
  v66.size.height = v26;
  [(UIImageView *)self->_biometricsImageView setFrame:v31, CGRectGetMaxY(v66) + 20.0, v30, v30];
  PKFloatRoundToPixel();
  v34 = v33;
  v67.origin.x = recta.origin.x;
  v58 = v8;
  v67.origin.y = v8;
  v67.size.width = v32;
  v67.size.height = v63;
  v35 = CGRectGetMaxY(v67);
  MinY = v35;
  if (self->_hasPearl)
  {
    v37 = v32 * 0.5;
    PKFloatRoundToPixel();
    v38 = (v62 - v32 * 0.5) * 0.5;
    v40 = v34;
    v41 = MinY - v39 - v34;
    v42 = v39 * 0.5;
  }

  else
  {
    v40 = v34;
    v38 = (v62 + -35.0) * 0.5;
    v41 = v35 + 10.0;
    v37 = 35.0;
    v68.origin.x = v38;
    v68.origin.y = MinY + 10.0;
    v68.size.width = 35.0;
    v68.size.height = 35.0;
    v69 = CGRectInset(v68, 4.0, 4.0);
    width = v69.size.width;
    [(UIView *)self->_homeButtonOutlineView setFrame:v69.origin.x, v69.origin.y];
    v44 = [(UIView *)self->_homeButtonOutlineView layer];
    [v44 setCornerRadius:width * 0.5];

    v42 = 17.5;
  }

  [(UIView *)self->_homeButtonView setFrame:v38, v41, v37, *&v58];
  v45 = [(UIView *)self->_homeButtonView layer];
  [v45 setCornerRadius:v42];

  v46 = [(UIImageView *)self->_walletImageView image];
  [v46 size];
  v48 = v47;
  v50 = v49;

  v51 = v32 / (v48 / v50);
  if (self->_hasPearl)
  {
    [(UIView *)self->_homeButtonView frame];
    MinY = CGRectGetMinY(v70);
  }

  [(UIImageView *)self->_walletImageView setFrame:recta.origin.x, MinY - v51 - v40, v32, v51];
  v52 = v63;
  if (self->_hasPearl)
  {
    v53 = v59;
    v54 = v60 + (v61 + -30.0) * 0.5;
    x = recta.origin.x;
    v56 = v32;
    v57 = CGRectGetMaxX(*(&v52 - 3)) + 5.0;
    [(UIImageView *)self->_powerIndicatorView setFrame:v57, v54, 5.0, 30.0];
    v71.size.width = 5.0;
    v71.size.height = 30.0;
    v71.origin.x = v57;
    v71.origin.y = v54;
    [(UIImageView *)self->_powerArrowImageView setFrame:CGRectGetMaxX(v71) + 5.0, v54, 35.0, 30.0];
  }
}

- (void)traitCollectionDidChange:(id)a3
{
  v4.receiver = self;
  v4.super_class = PKEducationPhone;
  [(PKEducationPhone *)&v4 traitCollectionDidChange:a3];
  [(PKEducationPhone *)self _setHomeButtonOutlineColor];
}

- (void)setPassImage:(id)a3
{
  [(UIImageView *)self->_cardImageView setImage:a3];

  [(PKEducationPhone *)self setNeedsLayout];
}

- (void)startAnimation
{
  if (!self->_isAnimating)
  {
    self->_isAnimating = 1;
    if (self->_hasPearl)
    {
      [(PKEducationPhone *)self _startPowerIndicatorAnimation];
    }
  }
}

- (void)_setHomeButtonOutlineColor
{
  if (self->_homeButtonOutlineView)
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __46__PKEducationPhone__setHomeButtonOutlineColor__block_invoke;
    v7[3] = &unk_1E8010970;
    v7[4] = self;
    v2 = MEMORY[0x1E69DD1B8];
    v3 = self;
    v4 = [v2 currentTraitCollection];
    v5 = MEMORY[0x1E69DD1B8];
    v6 = [(PKEducationPhone *)v3 traitCollection];

    [v5 setCurrentTraitCollection:v6];
    __46__PKEducationPhone__setHomeButtonOutlineColor__block_invoke(v7);
    [MEMORY[0x1E69DD1B8] setCurrentTraitCollection:v4];
  }
}

void __46__PKEducationPhone__setHomeButtonOutlineColor__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 464) layer];
  v1 = [MEMORY[0x1E69DC888] systemBlueColor];
  [v2 setBorderColor:{objc_msgSend(v1, "CGColor")}];
}

- (double)_topPadding
{
  screenType = self->_screenType;
  result = 10.0;
  if (screenType <= 0x13)
  {
    return dbl_1BE114420[screenType];
  }

  return result;
}

- (double)_deviceIconsPadding
{
  screenType = self->_screenType;
  result = 16.0;
  if (screenType <= 0x13)
  {
    return dbl_1BE1144C0[screenType];
  }

  return result;
}

- (void)_startPowerIndicatorAnimation
{
  v23[4] = *MEMORY[0x1E69E9840];
  v3 = *MEMORY[0x1E6979EB0];
  v4 = [MEMORY[0x1E69793D0] functionWithName:*MEMORY[0x1E6979EB0]];
  v23[0] = v4;
  v5 = *MEMORY[0x1E6979ED0];
  v6 = [MEMORY[0x1E69793D0] functionWithName:*MEMORY[0x1E6979ED0]];
  v23[1] = v6;
  v7 = [MEMORY[0x1E69793D0] functionWithName:v3];
  v23[2] = v7;
  v8 = [MEMORY[0x1E69793D0] functionWithName:v5];
  v23[3] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:4];

  v10 = [MEMORY[0x1E6979390] animation];
  [v10 setKeyPath:@"position.x"];
  [v10 setValues:&unk_1F3CC8210];
  [v10 setKeyTimes:&unk_1F3CC81F8];
  [v10 setDuration:1.0];
  [v10 setAdditive:1];
  [v10 setTimingFunctions:v9];
  v11 = [MEMORY[0x1E6979308] animation];
  v22 = v10;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v22 count:1];
  [v11 setAnimations:v12];

  [v11 setDuration:3.0];
  LODWORD(v13) = 2139095039;
  [v11 setRepeatCount:v13];
  v14 = [(UIImageView *)self->_powerArrowImageView layer];
  [v14 addAnimation:v11 forKey:@"double-tap"];

  v15 = [MEMORY[0x1E6979390] animation];
  [v15 setKeyPath:@"transform.scale.x"];
  [v15 setValues:&unk_1F3CC8228];
  [v15 setKeyTimes:&unk_1F3CC81F8];
  [v15 setDuration:1.0];
  [v15 setTimingFunctions:v9];
  v16 = [MEMORY[0x1E6979390] animation];
  [v16 setKeyPath:@"opacity"];
  [v16 setValues:&unk_1F3CC8240];
  [v16 setKeyTimes:&unk_1F3CC81F8];
  [v16 setDuration:1.0];
  [v16 setTimingFunctions:v9];
  v17 = [MEMORY[0x1E6979308] animation];

  v21[0] = v15;
  v21[1] = v16;
  v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:2];
  [v17 setAnimations:v18];

  [v17 setDuration:3.0];
  LODWORD(v19) = 2139095039;
  [v17 setRepeatCount:v19];
  v20 = [(UIImageView *)self->_powerIndicatorView layer];
  [v20 addAnimation:v17 forKey:@"power-indicator"];
}

@end