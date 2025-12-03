@interface PGStashView
- (PGStashView)initWithFrame:(CGRect)frame;
- (void)_setContinuousCornerRadius:(double)radius;
- (void)layoutStashChevrons;
- (void)layoutSubviews;
- (void)setBlurProgress:(double)progress;
- (void)setChevronHidden:(BOOL)hidden left:(BOOL)left;
@end

@implementation PGStashView

- (PGStashView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v9 = PGLogCommon();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    [(PGStashView *)self initWithFrame:a2, v9];
  }

  v45.receiver = self;
  v45.super_class = PGStashView;
  height = [(PGStashView *)&v45 initWithFrame:x, y, width, height];
  v11 = height;
  if (height)
  {
    height->_chevronsHidden = 1;
    [(PGStashView *)height setOverrideUserInterfaceStyle:2];
    [(PGStashView *)v11 setAccessibilityIdentifier:@"PG-StashedView"];
    [(UIView *)v11 PG_recursivelyDisallowGroupBlending];
    [(UIView *)v11 PG_setAllowsEdgeAntialiasing:1];
    [(UIView *)v11 PG_setAllowsGroupBlending:0];
    v12 = [PGBackdropView alloc];
    v13 = *MEMORY[0x1E695F058];
    v14 = *(MEMORY[0x1E695F058] + 8);
    v15 = *(MEMORY[0x1E695F058] + 16);
    v16 = *(MEMORY[0x1E695F058] + 24);
    v17 = [(PGBackdropView *)v12 initWithFrame:*MEMORY[0x1E695F058], v14, v15, v16];
    [(UIView *)v17 PG_setAllowsEdgeAntialiasing:1];
    [(PGBackdropView *)v17 setGaussianBlurRadius:0.0];
    uUID = [MEMORY[0x1E696AFB0] UUID];
    uUIDString = [uUID UUIDString];
    [(PGBackdropView *)v17 setGroupName:uUIDString];

    [(PGStashView *)v11 addSubview:v17];
    backdropView = v11->_backdropView;
    v11->_backdropView = v17;
    v44 = v17;

    v21 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{v13, v14, v15, v16}];
    [(UIView *)v21 PG_setAllowsEdgeAntialiasing:1];
    v22 = [MEMORY[0x1E69DC888] colorWithWhite:0.0 alpha:0.55];
    [(UIView *)v21 setBackgroundColor:v22];

    [(UIView *)v21 setAlpha:0.0];
    [(PGStashView *)v11 addSubview:v21];
    darkTintView = v11->_darkTintView;
    v11->_darkTintView = v21;
    v43 = v21;

    v24 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{v13, v14, v15, v16}];
    [(UIView *)v24 PG_setAllowsEdgeAntialiasing:1];
    v25 = [MEMORY[0x1E69DC888] colorWithWhite:1.0 alpha:0.15];
    [(UIView *)v24 setBackgroundColor:v25];

    [(UIView *)v24 setAlpha:0.0];
    [(PGStashView *)v11 addSubview:v24];
    lightTintView = v11->_lightTintView;
    v11->_lightTintView = v24;
    v41 = v24;

    v42 = [MEMORY[0x1E69DB878] systemFontOfSize:30.0 weight:*MEMORY[0x1E69DB980]];
    v27 = [MEMORY[0x1E69DCAD8] configurationWithFont:v42];
    v28 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"chevron.compact.left" withConfiguration:v27];
    v29 = [v28 imageWithRenderingMode:2];

    v30 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:v29];
    secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
    [(UIImageView *)v30 setTintColor:secondaryLabelColor];

    [(UIImageView *)v30 setAlpha:0.0];
    [(PGStashView *)v11 addSubview:v30];
    leftChevron = v11->_leftChevron;
    v11->_leftChevron = v30;
    v33 = v30;

    v34 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"chevron.compact.right" withConfiguration:v27];
    v35 = [v34 imageWithRenderingMode:2];

    v36 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:v35];
    secondaryLabelColor2 = [MEMORY[0x1E69DC888] secondaryLabelColor];
    [(UIImageView *)v36 setTintColor:secondaryLabelColor2];

    [(UIImageView *)v36 setAlpha:0.0];
    [(PGStashView *)v11 addSubview:v36];
    rightChevron = v11->_rightChevron;
    v11->_rightChevron = v36;
    v39 = v36;

    [(UIImageView *)v11->_leftChevron PG_updateVibrancyEffectForTintColor];
    [(UIImageView *)v11->_rightChevron PG_updateVibrancyEffectForTintColor];
  }

  return v11;
}

- (void)layoutSubviews
{
  v15.receiver = self;
  v15.super_class = PGStashView;
  [(PGStashView *)&v15 layoutSubviews];
  [(PGStashView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(PGBackdropView *)self->_backdropView setBounds:?];
  [(UIView *)self->_lightTintView setBounds:v4, v6, v8, v10];
  [(UIView *)self->_darkTintView setBounds:v4, v6, v8, v10];
  backdropView = self->_backdropView;
  v16.origin.x = v4;
  v16.origin.y = v6;
  v16.size.width = v8;
  v16.size.height = v10;
  MidX = CGRectGetMidX(v16);
  v17.origin.x = v4;
  v17.origin.y = v6;
  v17.size.width = v8;
  v17.size.height = v10;
  [(PGBackdropView *)backdropView setCenter:MidX, CGRectGetMidY(v17)];
  lightTintView = self->_lightTintView;
  [(PGBackdropView *)self->_backdropView center];
  [(UIView *)lightTintView setCenter:?];
  darkTintView = self->_darkTintView;
  [(PGBackdropView *)self->_backdropView center];
  [(UIView *)darkTintView setCenter:?];
  v18.origin.x = v4;
  v18.origin.y = v6;
  v18.size.width = v8;
  v18.size.height = v10;
  [(UIImageView *)self->_leftChevron setCenter:18.0, CGRectGetMidY(v18)];
  v19.origin.x = v4;
  v19.origin.y = v6;
  v19.size.width = v8;
  v19.size.height = v10;
  [(UIImageView *)self->_rightChevron setCenter:v8 + -18.0, CGRectGetMidY(v19)];
}

- (void)layoutStashChevrons
{
  if (self->_chevronsHidden)
  {
    leftChevron = self->_leftChevron;
    v21 = *(MEMORY[0x1E695EFD0] + 16);
    *&v24.a = *MEMORY[0x1E695EFD0];
    v22 = *&v24.a;
    *&v24.c = v21;
    *&v24.tx = *(MEMORY[0x1E695EFD0] + 32);
    v20 = *&v24.tx;
    [(UIImageView *)leftChevron setTransform:&v24];
    rightChevron = self->_rightChevron;
    *&v24.a = v22;
    *&v24.c = v21;
    *&v24.tx = v20;
    [(UIImageView *)rightChevron setTransform:&v24];
    backdropView = self->_backdropView;
    *&v24.a = v22;
    *&v24.c = v21;
    *&v24.tx = v20;
  }

  else
  {
    v6 = MEMORY[0x1E695EFD0];
    if (self->_isChevronShownLeft)
    {
      v7 = self->_leftChevron;
      v8 = *(MEMORY[0x1E695EFD0] + 16);
      *&v23.a = *MEMORY[0x1E695EFD0];
      *&v23.c = v8;
      *&v23.tx = *(MEMORY[0x1E695EFD0] + 32);
      v9 = -30.0;
    }

    else
    {
      v7 = self->_rightChevron;
      v10 = *(MEMORY[0x1E695EFD0] + 16);
      *&v23.a = *MEMORY[0x1E695EFD0];
      *&v23.c = v10;
      *&v23.tx = *(MEMORY[0x1E695EFD0] + 32);
      v9 = 30.0;
    }

    CGAffineTransformTranslate(&v24, &v23, v9, 0.0);
    [(UIImageView *)v7 setTransform:&v24];
    v11 = self->_backdropView;
    stashedTabWidth = self->_stashedTabWidth;
    if (self->_isChevronShownLeft)
    {
      stashedTabWidth = -stashedTabWidth;
    }

    v13 = v6[1];
    *&v23.a = *v6;
    *&v23.c = v13;
    *&v23.tx = v6[2];
    CGAffineTransformTranslate(&v24, &v23, stashedTabWidth, 0.0);
    backdropView = v11;
  }

  [(PGBackdropView *)backdropView setTransform:&v24];
  lightTintView = self->_lightTintView;
  v15 = self->_backdropView;
  if (v15)
  {
    [(PGBackdropView *)v15 transform];
  }

  else
  {
    memset(&v24, 0, sizeof(v24));
  }

  [(UIView *)lightTintView setTransform:&v24];
  darkTintView = self->_darkTintView;
  v17 = self->_backdropView;
  if (v17)
  {
    [(PGBackdropView *)v17 transform];
  }

  else
  {
    memset(&v24, 0, sizeof(v24));
  }

  [(UIView *)darkTintView setTransform:&v24];
  v18 = 0.0;
  v19 = 0.0;
  if (!self->_chevronsHidden && self->_isChevronShownLeft)
  {
    v19 = 1.0;
  }

  [(UIImageView *)self->_leftChevron setAlpha:v19];
  if (!self->_chevronsHidden)
  {
    if (self->_isChevronShownLeft)
    {
      v18 = 0.0;
    }

    else
    {
      v18 = 1.0;
    }
  }

  [(UIImageView *)self->_rightChevron setAlpha:v18];
  [(PGBackdropView *)self->_backdropView layoutIfNeeded];
  [(UIView *)self->_lightTintView layoutIfNeeded];
  [(UIImageView *)self->_leftChevron layoutIfNeeded];
  [(UIImageView *)self->_rightChevron layoutIfNeeded];
}

- (void)_setContinuousCornerRadius:(double)radius
{
  v5.receiver = self;
  v5.super_class = PGStashView;
  [(PGStashView *)&v5 _setContinuousCornerRadius:?];
  [(PGBackdropView *)self->_backdropView _setContinuousCornerRadius:radius];
  [(UIView *)self->_lightTintView _setContinuousCornerRadius:radius];
  [(UIView *)self->_darkTintView _setContinuousCornerRadius:radius];
}

- (void)setBlurProgress:(double)progress
{
  v17 = *MEMORY[0x1E69E9840];
  if (self->_blurProgress != progress)
  {
    self->_blurProgress = progress;
    v4 = (progress + -0.2) / 0.3;
    v5 = 0.0;
    if (v4 <= 0.0)
    {
      v6 = 0.0;
    }

    else
    {
      v6 = v4 + 0.0;
    }

    v7 = fmin(v6, 1.0);
    if (v7 * 15.0 > 0.0)
    {
      v5 = v7 * 15.0 + 0.0;
    }

    v8 = fmin(fmax(v7 * -0.75 + 1.0, 0.25), 1.0);
    [(PGBackdropView *)self->_backdropView setGaussianBlurRadius:fmin(v5, 15.0)];
    [(PGBackdropView *)self->_backdropView setBackdropScale:v8];
    if (UIAccessibilityIsReduceTransparencyEnabled())
    {
      [(PGBackdropView *)self->_backdropView setAlpha:v7];
    }

    [(UIView *)self->_lightTintView setAlpha:v7];
    [(UIView *)self->_darkTintView setAlpha:v7];
    v9 = PGLogCommon();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      blurProgress = self->_blurProgress;
      v11 = 134218496;
      v12 = blurProgress;
      v13 = 2048;
      v14 = v7;
      v15 = 2048;
      v16 = v8;
      _os_log_impl(&dword_1BB282000, v9, OS_LOG_TYPE_DEFAULT, "[Layout] progress{%.2f} thresholdedProgress{%.2f} backdropScale{%.2f}", &v11, 0x20u);
    }
  }
}

- (void)setChevronHidden:(BOOL)hidden left:(BOOL)left
{
  if (self->_chevronsHidden != hidden || self->_isChevronShownLeft != left)
  {
    self->_chevronsHidden = hidden;
    self->_isChevronShownLeft = left & ~hidden;
    [(PGStashView *)self layoutStashChevrons];
  }
}

- (void)initWithFrame:(NSObject *)a3 .cold.1(void *a1, uint64_t a2, NSObject *a3)
{
  v7 = *MEMORY[0x1E69E9840];
  v4 = _PGLogMethodProem(a1, 1);
  v5 = 138412290;
  v6 = v4;
  _os_log_debug_impl(&dword_1BB282000, a3, OS_LOG_TYPE_DEBUG, "%@", &v5, 0xCu);
}

@end