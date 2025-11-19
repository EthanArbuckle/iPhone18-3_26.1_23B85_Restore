@interface PKAccessoryDeviceView
- (CGRect)_springBoardCutoutRect;
- (CGRect)cutoutFrame;
- (PKAccessoryDeviceView)initWithPass:(id)a3 accessory:(id)a4 cutoutFrame:(CGRect)a5 parentView:(id)a6;
- (PKAccessoryDeviceView)initWithState:(int64_t)a3 accessory:(id)a4 cutoutFrame:(CGRect)a5 parentView:(id)a6;
- (PKAccessoryDeviceViewDelegate)delegate;
- (void)_layoutFailureState;
- (void)_layoutProcessingState;
- (void)_layoutSuccessState;
- (void)_layoutSuccessWithUserInterventionState;
- (void)_layoutTryAgainState;
- (void)_setColors;
- (void)_showWalletWithMessage:(id)a3;
- (void)changeToState:(int64_t)a3;
- (void)dismissViewWithCompletion:(id)a3;
- (void)layoutSubviews;
- (void)presentOnParentView;
@end

@implementation PKAccessoryDeviceView

- (PKAccessoryDeviceView)initWithPass:(id)a3 accessory:(id)a4 cutoutFrame:(CGRect)a5 parentView:(id)a6
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v14 = a3;
  v15 = a4;
  v16 = a6;
  v17 = [MEMORY[0x1E69DCEB0] mainScreen];
  [v17 bounds];
  v20.receiver = self;
  v20.super_class = PKAccessoryDeviceView;
  v18 = [(PKAccessoryDeviceView *)&v20 initWithFrame:?];

  if (v18)
  {
    objc_storeStrong(&v18->_accessory, a4);
    objc_storeStrong(&v18->_pass, a3);
    v18->_cutoutFrame.origin.x = x;
    v18->_cutoutFrame.origin.y = y;
    v18->_cutoutFrame.size.width = width;
    v18->_cutoutFrame.size.height = height;
    objc_storeStrong(&v18->_parentView, a6);
    v18->_state = 0;
    [(PKAccessoryDeviceView *)v18 changeToState:0];
    v18->_animationDelay = 4.0;
    [(PKAccessoryDeviceView *)v18 _setColors];
    [(PKAccessoryDeviceView *)v18 presentOnParentView];
  }

  return v18;
}

- (PKAccessoryDeviceView)initWithState:(int64_t)a3 accessory:(id)a4 cutoutFrame:(CGRect)a5 parentView:(id)a6
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v14 = a4;
  v15 = a6;
  v16 = [MEMORY[0x1E69DCEB0] mainScreen];
  [v16 bounds];
  v19.receiver = self;
  v19.super_class = PKAccessoryDeviceView;
  v17 = [(PKAccessoryDeviceView *)&v19 initWithFrame:?];

  if (v17)
  {
    v17->_state = a3;
    objc_storeStrong(&v17->_accessory, a4);
    v17->_cutoutFrame.origin.x = x;
    v17->_cutoutFrame.origin.y = y;
    v17->_cutoutFrame.size.width = width;
    v17->_cutoutFrame.size.height = height;
    objc_storeStrong(&v17->_parentView, a6);
    [(PKAccessoryDeviceView *)v17 _setColors];
    [(PKAccessoryDeviceView *)v17 changeToState:v17->_state];
    [(PKAccessoryDeviceView *)v17 presentOnParentView];
  }

  return v17;
}

- (void)_setColors
{
  v3 = [(PKAccessoryDevice *)self->_accessory primaryColorData];
  v15 = v3;
  if (v3)
  {
    v4 = PKUIColorFromP3ColorData(v3);
    strokeColor = self->_strokeColor;
    self->_strokeColor = v4;
  }

  if (!self->_strokeColor)
  {
    v6 = [MEMORY[0x1E69DC888] whiteColor];
    v7 = self->_strokeColor;
    self->_strokeColor = v6;
  }

  v8 = [(PKAccessoryDevice *)self->_accessory secondaryColorData];
  v9 = v8;
  if (v8)
  {
    v10 = PKUIColorFromP3ColorData(v8);
    backgroundColor = self->_backgroundColor;
    self->_backgroundColor = v10;
  }

  v12 = self->_backgroundColor;
  if (!v12)
  {
    v13 = [MEMORY[0x1E69DC888] blackColor];
    v14 = self->_backgroundColor;
    self->_backgroundColor = v13;

    v12 = self->_backgroundColor;
  }

  [(PKAccessoryDeviceView *)self setBackgroundColor:v12];
}

- (void)presentOnParentView
{
  [(PKAccessoryDeviceView *)self removeFromSuperview];
  [(PKAccessoryDeviceView *)self setAlpha:1.0];
  [(UIView *)self->_parentView addSubview:self];
  [(UIView *)self->_parentView bringSubviewToFront:self];
  v3 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, MEMORY[0x1E69E96A0]);
  v4 = dispatch_time(0, 12000000000);
  dispatch_source_set_timer(v3, v4, 0xFFFFFFFFFFFFFFFFLL, 0x5F5E100uLL);
  objc_initWeak(&location, self);
  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 3221225472;
  handler[2] = __44__PKAccessoryDeviceView_presentOnParentView__block_invoke;
  handler[3] = &unk_1E8010948;
  v7 = v3;
  v5 = v3;
  objc_copyWeak(&v8, &location);
  dispatch_source_set_event_handler(v5, handler);
  dispatch_resume(v5);
  objc_destroyWeak(&v8);

  objc_destroyWeak(&location);
}

void __44__PKAccessoryDeviceView_presentOnParentView__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    dispatch_source_cancel(v2);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v7 = WeakRetained;
    v4 = objc_loadWeakRetained(WeakRetained + 62);
    v5 = objc_opt_respondsToSelector();

    WeakRetained = v7;
    if (v5)
    {
      v6 = objc_loadWeakRetained(v7 + 62);
      [v6 accessoryDeviceDidReachHardTimeout];

      WeakRetained = v7;
    }
  }
}

- (void)changeToState:(int64_t)a3
{
  self->_state = a3;
  timeOutBlockTimer = self->_timeOutBlockTimer;
  if (timeOutBlockTimer)
  {
    dispatch_source_cancel(timeOutBlockTimer);
  }

  [(PKAccessoryDeviceView *)self setNeedsLayout];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = objc_loadWeakRetained(&self->_delegate);
    [v8 accessoryDeviceDidChangeStateTo:a3];
  }
}

- (void)layoutSubviews
{
  v10.receiver = self;
  v10.super_class = PKAccessoryDeviceView;
  [(PKAccessoryDeviceView *)&v10 layoutSubviews];
  state = self->_state;
  if (state <= 1)
  {
    if (state)
    {
      if (state == 1)
      {
        v5 = PKLogFacilityTypeGetObject();
        if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
        {
          *v9 = 0;
          _os_log_impl(&dword_1BD026000, v5, OS_LOG_TYPE_DEFAULT, "PKAccessoryDeviceView change to success state", v9, 2u);
        }

        self->_animationDelay = 4.0;
        [(PKAccessoryDeviceView *)self _layoutSuccessState];
      }
    }

    else
    {
      v8 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *v9 = 0;
        _os_log_impl(&dword_1BD026000, v8, OS_LOG_TYPE_DEFAULT, "PKAccessoryDeviceView change to processing state", v9, 2u);
      }

      self->_animationDelay = 4.0;
      [(PKAccessoryDeviceView *)self _layoutProcessingState];
    }
  }

  else
  {
    switch(state)
    {
      case 2:
        v6 = PKLogFacilityTypeGetObject();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          *v9 = 0;
          _os_log_impl(&dword_1BD026000, v6, OS_LOG_TYPE_DEFAULT, "PKAccessoryDeviceView change to success with intervention state", v9, 2u);
        }

        self->_animationDelay = 10.0;
        [(PKAccessoryDeviceView *)self _layoutSuccessWithUserInterventionState];
        break;
      case 3:
        v7 = PKLogFacilityTypeGetObject();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          *v9 = 0;
          _os_log_impl(&dword_1BD026000, v7, OS_LOG_TYPE_DEFAULT, "PKAccessoryDeviceView change to failure state", v9, 2u);
        }

        self->_animationDelay = 4.0;
        [(PKAccessoryDeviceView *)self _layoutFailureState];
        break;
      case 4:
        v4 = PKLogFacilityTypeGetObject();
        if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
        {
          *v9 = 0;
          _os_log_impl(&dword_1BD026000, v4, OS_LOG_TYPE_DEFAULT, "PKAccessoryDeviceView change to try again state", v9, 2u);
        }

        self->_animationDelay = 4.0;
        [(PKAccessoryDeviceView *)self _layoutTryAgainState];
        break;
    }
  }
}

- (void)_layoutSuccessState
{
  [(UILabel *)self->_label setAlpha:0.0];
  [(PKGlyphView *)self->_glyph setAlpha:0.0];
  [(PKGlyphView *)self->_glyph setState:11];
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __44__PKAccessoryDeviceView__layoutSuccessState__block_invoke;
  v3[3] = &unk_1E8010970;
  v3[4] = self;
  [MEMORY[0x1E69DD250] animateWithDuration:v3 animations:0.3];
}

- (void)_layoutFailureState
{
  [(UILabel *)self->_label setAlpha:0.0];
  [(PKGlyphView *)self->_glyph setAlpha:0.0];
  v3 = [MEMORY[0x1E69DCAD8] configurationWithPointSize:4 weight:1 scale:12.0];
  v4 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"exclamationmark" withConfiguration:v3];
  if (v4)
  {
    v5 = v4;
    v6 = [(PKGlyphView *)self->_glyph primaryColor];
    v7 = [v5 _flatImageWithColor:v6];
  }

  else
  {
    v7 = 0;
  }

  [(PKGlyphView *)self->_glyph setState:10];
  glyph = self->_glyph;
  v9 = [v7 CGImage];
  [v7 alignmentRectInsets];
  [(PKGlyphView *)glyph setCustomImage:v9 withAlignmentEdgeInsets:?];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __44__PKAccessoryDeviceView__layoutFailureState__block_invoke;
  v10[3] = &unk_1E8010970;
  v10[4] = self;
  [MEMORY[0x1E69DD250] animateWithDuration:v10 animations:0.3];
}

- (void)_layoutTryAgainState
{
  v3 = PKLocalizedD5xString(&cfstr_PaymentRemoveS.isa);
  [(PKAccessoryDeviceView *)self _showWalletWithMessage:v3];
}

- (void)_layoutSuccessWithUserInterventionState
{
  v3 = PKLocalizedD5xString(&cfstr_PaymentRemoveS_0.isa);
  [(PKAccessoryDeviceView *)self _showWalletWithMessage:v3];
}

- (void)_layoutProcessingState
{
  [(UILabel *)self->_label setAlpha:0.0];
  [(PKGlyphView *)self->_glyph setAlpha:0.0];
  [(UIView *)self->_imageBackgroundView setAlpha:0.0];
  [(UILabel *)self->_label removeFromSuperview];
  [(PKGlyphView *)self->_glyph removeFromSuperview];
  [(UIView *)self->_imageBackgroundView removeFromSuperview];
  [(PKAccessoryDeviceView *)self setAlpha:1.0];
  [(PKAccessoryDeviceView *)self _setColors];
  [(PKAccessoryDeviceView *)self _springBoardCutoutRect];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = [(PKPass *)self->_pass frontFaceImage];
  v12 = [MEMORY[0x1E69B8950] constraintsWithAspectFillToSize:{83.0, 52.0}];
  v13 = [v11 resizedImageWithConstraints:v12];
  v14 = [MEMORY[0x1E69DCAB8] imageWithPKImage:v13];
  v15 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:v14];
  imageBackgroundView = self->_imageBackgroundView;
  self->_imageBackgroundView = v15;

  v17 = [(UIView *)self->_imageBackgroundView layer];
  [(UIView *)self->_imageBackgroundView setContentMode:1];
  [(UIView *)self->_imageBackgroundView setClipsToBounds:1];
  [(UIView *)self->_imageBackgroundView _setContinuousCornerRadius:4.0];
  [(UIView *)self->_imageBackgroundView setBackgroundColor:self->_backgroundColor];
  [v17 setBorderWidth:PKUIPixelLength()];
  [v17 setBorderColor:{-[UIColor CGColor](self->_strokeColor, "CGColor")}];
  v18 = self->_imageBackgroundView;
  v19 = v4 + (v8 + -151.0) * 0.5;
  v20 = v6 + (v10 + -52.0) * 0.5;
  v21.n128_f64[0] = v19;
  v22.n128_f64[0] = v20;
  v23.n128_u64[0] = 0x4054C00000000000;
  v24.n128_u64[0] = 0x404A000000000000;
  PKRectRoundToPixel(v21, v22, v23, v24, v25);
  [(UIView *)v18 setFrame:?];
  [(PKAccessoryDeviceView *)self addSubview:self->_imageBackgroundView];
  v26 = [objc_alloc(MEMORY[0x1E69BC758]) initWithStyle:5];
  glyph = self->_glyph;
  self->_glyph = v26;

  [(PKGlyphView *)self->_glyph setState:7];
  v28 = self->_glyph;
  v29.n128_f64[0] = v19 + 83.0 + 16.0;
  v30.n128_f64[0] = v20;
  v31.n128_u64[0] = 0x404A000000000000;
  v32.n128_u64[0] = 0x404A000000000000;
  PKRectRoundToPixel(v29, v30, v31, v32, v33);
  [(PKGlyphView *)v28 setFrame:?];
  [(PKAccessoryDeviceView *)self addSubview:self->_glyph];
  v34 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, MEMORY[0x1E69E96A0]);
  timeOutBlockTimer = self->_timeOutBlockTimer;
  self->_timeOutBlockTimer = v34;

  v36 = self->_timeOutBlockTimer;
  v37 = dispatch_time(0, 4000000000);
  dispatch_source_set_timer(v36, v37, 0xFFFFFFFFFFFFFFFFLL, 0x5F5E100uLL);
  objc_initWeak(&location, self);
  v40[0] = MEMORY[0x1E69E9820];
  v40[1] = 3221225472;
  v40[2] = __47__PKAccessoryDeviceView__layoutProcessingState__block_invoke;
  v40[3] = &unk_1E8010998;
  objc_copyWeak(&v41, &location);
  v38 = [v40 copy];
  dispatch_source_set_event_handler(self->_timeOutBlockTimer, v38);
  dispatch_resume(self->_timeOutBlockTimer);
  v39[0] = MEMORY[0x1E69E9820];
  v39[1] = 3221225472;
  v39[2] = __47__PKAccessoryDeviceView__layoutProcessingState__block_invoke_2;
  v39[3] = &unk_1E8010970;
  v39[4] = self;
  [MEMORY[0x1E69DD250] animateWithDuration:v39 animations:0.3];

  objc_destroyWeak(&v41);
  objc_destroyWeak(&location);
}

void __47__PKAccessoryDeviceView__layoutProcessingState__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = *(WeakRetained + 61);
    v4 = v2;
    if (v3)
    {
      dispatch_source_cancel(v3);
      v2 = v4;
    }

    if (!v2[60])
    {
      [v2 changeToState:3];
      v2 = v4;
    }
  }
}

uint64_t __47__PKAccessoryDeviceView__layoutProcessingState__block_invoke_2(uint64_t a1)
{
  [*(*(a1 + 32) + 416) setAlpha:1.0];
  v2 = *(*(a1 + 32) + 408);

  return [v2 setAlpha:1.0];
}

- (void)_showWalletWithMessage:(id)a3
{
  label = self->_label;
  v5 = a3;
  [(UILabel *)label setAlpha:0.0];
  [(PKGlyphView *)self->_glyph setAlpha:0.0];
  [(UIView *)self->_imageBackgroundView setAlpha:0.0];
  [(UILabel *)self->_label removeFromSuperview];
  [(PKGlyphView *)self->_glyph removeFromSuperview];
  [(UIView *)self->_imageBackgroundView removeFromSuperview];
  [(PKAccessoryDeviceView *)self _springBoardCutoutRect];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v56 = v12;
  v14 = objc_alloc_init(MEMORY[0x1E69DCC10]);
  v15 = self->_label;
  self->_label = v14;

  v16 = self->_label;
  v17 = [MEMORY[0x1E69DC888] whiteColor];
  [(UILabel *)v16 setTextColor:v17];

  [(UILabel *)self->_label setText:v5];
  [(UILabel *)self->_label setNumberOfLines:2];
  v18 = self->_label;
  v19 = PKFontForDefaultDesign(*MEMORY[0x1E69DDCF8], *MEMORY[0x1E69DDC38]);
  [(UILabel *)v18 setFont:v19];

  [(UILabel *)self->_label setLineBreakMode:0];
  [(UILabel *)self->_label sizeThatFits:v11 + -44.0 + -16.0 + -48.0, v13 + -44.0];
  v21 = v20;
  v55 = v22;
  v23 = MEMORY[0x1E69B8948];
  v24 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v25 = [v23 imageNamed:@"AddPass_Icon" inBundle:v24];

  PKSizeRoundToPixel();
  v26 = [MEMORY[0x1E69B8950] constraintsWithAspectFillToSize:?];
  v27 = [v25 resizedImageWithConstraints:v26];
  v28 = [MEMORY[0x1E69DCAB8] imageWithPKImage:v27];
  v29 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:v28];
  v30 = objc_alloc(MEMORY[0x1E69DD250]);
  v31 = [v30 initWithFrame:{*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8), 44.0, 44.0}];
  imageBackgroundView = self->_imageBackgroundView;
  self->_imageBackgroundView = v31;

  v33 = self->_imageBackgroundView;
  v34 = [MEMORY[0x1E69DC888] blackColor];
  [(UIView *)v33 setBackgroundColor:v34];

  [(UIView *)self->_imageBackgroundView _setContinuousCornerRadius:8.0];
  v35.n128_f64[0] = v7 + (v11 - (v21 + 60.0)) * 0.5;
  v36 = v9;
  v37.n128_f64[0] = v9 + (v13 + -44.0) * 0.5;
  v38.n128_u64[0] = 0x4046000000000000;
  v39.n128_u64[0] = 0x4046000000000000;
  PKRectRoundToPixel(v35, v37, v38, v39, v40);
  v42 = v41;
  v44 = v43;
  v46 = v45;
  v48 = v47;
  [(UIView *)self->_imageBackgroundView setFrame:?];
  PKSizeAlignedInRect();
  [v29 setFrame:?];
  v49 = self->_label;
  v58.origin.x = v42;
  v58.origin.y = v44;
  v58.size.width = v46;
  v58.size.height = v48;
  v50.n128_f64[0] = CGRectGetMaxX(v58) + 16.0;
  v51.n128_f64[0] = v55;
  v52.n128_f64[0] = v36 + (v56 - v55) * 0.5;
  v53.n128_f64[0] = v21;
  PKRectRoundToPixel(v50, v52, v53, v51, v54);
  [(UILabel *)v49 setFrame:?];
  [(PKAccessoryDeviceView *)self addSubview:v29];
  [(PKAccessoryDeviceView *)self addSubview:self->_imageBackgroundView];
  [(PKAccessoryDeviceView *)self addSubview:self->_label];
  [(PKAccessoryDeviceView *)self bringSubviewToFront:v29];
  v57[0] = MEMORY[0x1E69E9820];
  v57[1] = 3221225472;
  v57[2] = __48__PKAccessoryDeviceView__showWalletWithMessage___block_invoke;
  v57[3] = &unk_1E8010970;
  v57[4] = self;
  [MEMORY[0x1E69DD250] animateWithDuration:v57 animations:0.3];
}

uint64_t __48__PKAccessoryDeviceView__showWalletWithMessage___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 416) setAlpha:1.0];
  v2 = *(*(a1 + 32) + 424);

  return [v2 setAlpha:1.0];
}

- (void)dismissViewWithCompletion:(id)a3
{
  v4 = a3;
  animationDelay = self->_animationDelay;
  v6 = MEMORY[0x1E69DD250];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __51__PKAccessoryDeviceView_dismissViewWithCompletion___block_invoke;
  v10[3] = &unk_1E8010970;
  v10[4] = self;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __51__PKAccessoryDeviceView_dismissViewWithCompletion___block_invoke_2;
  v8[3] = &unk_1E80109C0;
  v8[4] = self;
  v9 = v4;
  v7 = v4;
  [v6 animateWithDuration:0 delay:v10 options:v8 animations:2.0 completion:animationDelay];
}

uint64_t __51__PKAccessoryDeviceView_dismissViewWithCompletion___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 408) setAlpha:0.0];
  [*(*(a1 + 32) + 416) setAlpha:0.0];
  [*(*(a1 + 32) + 424) setAlpha:0.0];
  v2 = *(a1 + 32);

  return [v2 setAlpha:0.0];
}

uint64_t __51__PKAccessoryDeviceView_dismissViewWithCompletion___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    (*(v2 + 16))();
  }

  v3 = *(a1 + 32);

  return [v3 removeFromSuperview];
}

- (CGRect)_springBoardCutoutRect
{
  x = self->_cutoutFrame.origin.x;
  y = self->_cutoutFrame.origin.y;
  width = self->_cutoutFrame.size.width;
  height = self->_cutoutFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)cutoutFrame
{
  x = self->_cutoutFrame.origin.x;
  y = self->_cutoutFrame.origin.y;
  width = self->_cutoutFrame.size.width;
  height = self->_cutoutFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (PKAccessoryDeviceViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end