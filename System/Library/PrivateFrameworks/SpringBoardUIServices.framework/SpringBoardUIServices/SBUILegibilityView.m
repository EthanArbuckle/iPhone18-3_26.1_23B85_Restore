@interface SBUILegibilityView
- (BOOL)_hideImageView;
- (BOOL)_hideShadowImageViewForStrength:(double *)a3;
- (BOOL)_updateContentImageView:(id)a3;
- (BOOL)_updateOptions:(int64_t)a3;
- (BOOL)_updateSettings:(id)a3;
- (BOOL)_updateShadow;
- (BOOL)_updateStrength:(double)a3;
- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4;
- (CGSize)sizeThatFits:(CGSize)a3;
- (NSMutableDictionary)userInfo;
- (SBUILegibilityEngine)legibilityEngine;
- (SBUILegibilityView)initWithFrame:(CGRect)a3;
- (SBUILegibilityView)initWithSettings:(id)a3 strength:(double)a4 image:(id)a5;
- (UIEdgeInsets)hitTestEdgeInsets;
- (id)drawingColor;
- (void)_cancelOperations;
- (void)_clearShadowAndMarkNeedsNew:(BOOL)a3;
- (void)dealloc;
- (void)didMoveToSuperview;
- (void)didMoveToWindow;
- (void)layoutImageView;
- (void)layoutSubviews;
- (void)setAlpha:(double)a3;
- (void)setHidden:(BOOL)a3;
- (void)setLegibilityEngine:(id)a3;
- (void)updateForChangedSettings:(id)a3 options:(int64_t)a4 image:(id)a5 strength:(double)a6;
- (void)updateOrigImage:(id)a3 shadowImage:(id)a4 strengthenedShadowImage:(id)a5 settings:(id)a6 engine:(id)a7 isTemplate:(BOOL)a8 withStrength:(double *)a9 context:(id)a10;
- (void)willMoveToSuperview:(id)a3;
- (void)willMoveToWindow:(id)a3;
@end

@implementation SBUILegibilityView

- (void)didMoveToWindow
{
  v3.receiver = self;
  v3.super_class = SBUILegibilityView;
  [(SBUILegibilityView *)&v3 didMoveToWindow];
  [(SBUILegibilityView *)self _redrawShadowForNewContainer];
}

- (BOOL)_updateShadow
{
  v30 = *MEMORY[0x1E69E9840];
  v3 = [(SBUILegibilityView *)self superview];
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = [(SBUILegibilityView *)self window];

  if (!v5 || !self->_needsUpdateShadow)
  {
    return 0;
  }

  v6 = self->_image;
  if (v6 && self->_legibilitySettings)
  {
    if (self->_strength <= 0.0)
    {
      [(SBUILegibilityContainerView *)self->_shadowImageView setImage:0];
    }

    else
    {
      v7 = SBLogLegibility();
      v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG);

      Current = 0.0;
      if (v8)
      {
        Current = CFAbsoluteTimeGetCurrent();
      }

      v25 = 0;
      v10 = [(SBUILegibilityView *)self legibilityEngine];
      [v10 executeLegibilityUpdateForContainer:self forImage:v6 settings:self->_legibilitySettings strength:&self->_strength engineResult:&v25];
      v11 = [(SBUILegibilityView *)self _screen];
      if (v11)
      {
        [(SBUILegibilityView *)self _screen];
      }

      else
      {
        [MEMORY[0x1E69DCEB0] mainScreen];
      }
      v14 = ;
      [v14 scale];
      self->_appliedScale = v15;

      if (v25 == 1 && self->_backfillTemplateResults)
      {
        v16 = [v10 executeAsyncLegibilityUpdateForContainer:self image:v6 settings:self->_legibilitySettings strength:&self->_strength completion:0];
        runningAsyncOperations = self->_runningAsyncOperations;
        if (!runningAsyncOperations)
        {
          v18 = objc_opt_new();
          v19 = self->_runningAsyncOperations;
          self->_runningAsyncOperations = v18;

          runningAsyncOperations = self->_runningAsyncOperations;
        }

        [(NSMutableArray *)runningAsyncOperations addObject:v16];
      }

      v20 = SBLogLegibility();
      v21 = os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG);

      if (v21)
      {
        v22 = CFAbsoluteTimeGetCurrent();
        v23 = SBLogLegibility();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
        {
          v24 = [(SBUILegibilityView *)self userInfo];
          *buf = 138412546;
          v27 = v24;
          v28 = 2048;
          v29 = v22 - Current;
          _os_log_debug_impl(&dword_1A9A79000, v23, OS_LOG_TYPE_DEBUG, "Legibility generation time (%@): %f", buf, 0x16u);
        }
      }
    }

    self->_needsUpdateShadow = 0;
    v12 = 1;
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (SBUILegibilityView)initWithFrame:(CGRect)a3
{
  v11.receiver = self;
  v11.super_class = SBUILegibilityView;
  v3 = [(SBUILegibilityView *)&v11 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    v5 = [(SBUILegibilityView *)v3 layer];
    [v5 setAllowsGroupBlending:0];

    v4->_options = 2;
    v6 = objc_opt_new();
    imageView = v4->_imageView;
    v4->_imageView = v6;

    [(SBUILegibilityContainerView *)v4->_imageView updateOptions:v4->_options];
    v8 = objc_opt_new();
    shadowImageView = v4->_shadowImageView;
    v4->_shadowImageView = v8;

    [(SBUILegibilityContainerView *)v4->_shadowImageView updateOptions:v4->_options];
    [(SBUILegibilityView *)v4 addSubview:v4->_shadowImageView];
    [(SBUILegibilityView *)v4 addSubview:v4->_imageView];
  }

  return v4;
}

- (SBUILegibilityView)initWithSettings:(id)a3 strength:(double)a4 image:(id)a5
{
  v8 = a3;
  v9 = a5;
  [v9 size];
  v12 = [(SBUILegibilityView *)self initWithFrame:0.0, 0.0, v10, v11];
  v13 = v12;
  if (v12)
  {
    [(SBUILegibilityView *)v12 updateForChangedSettings:v8 options:2 image:v9 strength:a4];
  }

  return v13;
}

- (void)dealloc
{
  [(SBUILegibilityView *)self _cancelOperations];
  v3.receiver = self;
  v3.super_class = SBUILegibilityView;
  [(SBUILegibilityView *)&v3 dealloc];
}

- (void)setHidden:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = SBUILegibilityView;
  [(SBUILegibilityView *)&v4 setHidden:a3];
  [(SBUILegibilityView *)self setNeedsLayout];
}

- (void)setAlpha:(double)a3
{
  v4.receiver = self;
  v4.super_class = SBUILegibilityView;
  [(SBUILegibilityView *)&v4 setAlpha:a3];
  [(SBUILegibilityView *)self setNeedsLayout];
}

- (void)layoutSubviews
{
  v27.receiver = self;
  v27.super_class = SBUILegibilityView;
  [(SBUILegibilityView *)&v27 layoutSubviews];
  v3 = [(SBUILegibilityView *)self traitCollection];
  [v3 displayScale];
  v5 = v4;

  [(SBUILegibilityView *)self bounds];
  v6 = [(SBUILegibilityView *)self image];
  [(SBUILegibilityView *)self layoutImageView];
  if (([(SBUILegibilityShadowView *)self->_shadowImageView isHidden]& 1) == 0)
  {
    v7 = [(SBUILegibilityContainerView *)self->_shadowImageView image];
    if (v7)
    {
      v8 = v6 == 0;
    }

    else
    {
      v8 = 1;
    }

    if (v8)
    {
    }

    else
    {
      legibilitySettings = self->_legibilitySettings;

      if (legibilitySettings)
      {
        [(SBUILegibilityShadowView *)self->_shadowImageView frame];
        v25 = v11;
        v26 = v10;
        v13 = v12;
        rect2 = v14;
        v15 = [(SBUILegibilityView *)self legibilityEngine];
        v16 = [(SBUILegibilityContainerView *)self->_shadowImageView image];
        [v15 calculateShadowImageViewSizeForOriginalImage:v6 shadowImage:v16 settings:self->_legibilitySettings];

        v23 = v5;
        UIRectCenteredIntegralRectScale();
        x = v28.origin.x;
        y = v28.origin.y;
        width = v28.size.width;
        height = v28.size.height;
        v29.origin.y = v25;
        v29.origin.x = v26;
        v29.size.width = v13;
        v29.size.height = rect2;
        if (!CGRectEqualToRect(v28, v29))
        {
          [(SBUILegibilityShadowView *)self->_shadowImageView setFrame:x, y, width, height, v23];
        }
      }
    }
  }

  [(SBUILegibilityContainerView *)self->_imageView setHidden:[(SBUILegibilityView *)self _hideImageView]];
  imageView = self->_imageView;
  [(SBUILegibilityView *)self _imageViewAlpha];
  [(SBUILegibilityContainerView *)imageView setAlpha:?];
  [(SBUILegibilityShadowView *)self->_shadowImageView setHidden:[(SBUILegibilityView *)self _hideShadowImageViewForStrength:0]];
  shadowImageView = self->_shadowImageView;
  [(SBUILegibilityView *)self _shadowImageViewAlphaForStrength:0];
  [(SBUILegibilityShadowView *)shadowImageView setAlpha:?];
}

- (void)layoutImageView
{
  v3 = [(SBUILegibilityView *)self traitCollection];
  [v3 displayScale];

  [(SBUILegibilityView *)self bounds];
  v20 = [(SBUILegibilityView *)self image];
  [(SBUILegibilityContainerView *)self->_imageView frame];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  if (v20)
  {
    [v20 size];
    BSRectWithSize();
    UIRectCenteredIntegralRectScale();
    v13 = v12;
    v15 = v14;
    v17 = v16;
    v19 = v18;
  }

  else
  {
    v13 = *MEMORY[0x1E695F058];
    v15 = *(MEMORY[0x1E695F058] + 8);
    v17 = *(MEMORY[0x1E695F058] + 16);
    v19 = *(MEMORY[0x1E695F058] + 24);
  }

  v22.origin.x = v5;
  v22.origin.y = v7;
  v22.size.width = v9;
  v22.size.height = v11;
  v23.origin.x = v13;
  v23.origin.y = v15;
  v23.size.width = v17;
  v23.size.height = v19;
  if (!CGRectEqualToRect(v22, v23))
  {
    [(SBUILegibilityContainerView *)self->_imageView setFrame:v13, v15, v17, v19];
  }
}

- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  [(SBUILegibilityView *)self hitTestEdgeInsets];
  v9.f64[1] = v8;
  v11.f64[1] = v10;
  if (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v9, *MEMORY[0x1E69DDCE0]), vceqq_f64(v11, *(MEMORY[0x1E69DDCE0] + 16))))))
  {
    v29.receiver = self;
    v29.super_class = SBUILegibilityView;
    v26 = [(SBUILegibilityView *)&v29 pointInside:v7 withEvent:x, y];
  }

  else
  {
    [(SBUILegibilityView *)self bounds];
    v13 = v12;
    v15 = v14;
    v17 = v16;
    v19 = v18;
    [(SBUILegibilityView *)self hitTestEdgeInsets];
    v21 = v15 + v20;
    v24 = v17 - (v22 + v23);
    v31.size.height = v19 - (v20 + v25);
    v31.origin.x = v13 + v22;
    v31.origin.y = v21;
    v31.size.width = v24;
    v30.x = x;
    v30.y = y;
    v26 = CGRectContainsPoint(v31, v30);
  }

  v27 = v26;

  return v27;
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  v3 = [(SBUILegibilityView *)self image:a3.width];
  [v3 size];
  v5 = v4;
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result.height = v9;
  result.width = v8;
  return result;
}

- (void)willMoveToSuperview:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = SBUILegibilityView;
  [(SBUILegibilityView *)&v10 willMoveToSuperview:v4];
  if (v4)
  {
    v5 = [v4 window];
    v6 = [v5 screen];
    [v6 scale];
    v8 = v7;
    appliedScale = self->_appliedScale;

    if (v8 != appliedScale)
    {
      [(SBUILegibilityView *)self _clearShadowAndMarkNeedsNew:0];
    }
  }
}

- (void)didMoveToSuperview
{
  v3.receiver = self;
  v3.super_class = SBUILegibilityView;
  [(SBUILegibilityView *)&v3 didMoveToSuperview];
  [(SBUILegibilityView *)self _redrawShadowForNewContainer];
}

- (void)willMoveToWindow:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = SBUILegibilityView;
  [(SBUILegibilityView *)&v9 willMoveToWindow:v4];
  if (v4)
  {
    v5 = [v4 screen];
    [v5 scale];
    v7 = v6;
    appliedScale = self->_appliedScale;

    if (v7 != appliedScale)
    {
      [(SBUILegibilityView *)self _clearShadowAndMarkNeedsNew:0];
    }
  }
}

- (NSMutableDictionary)userInfo
{
  userInfo = self->_userInfo;
  if (!userInfo)
  {
    v4 = objc_opt_new();
    v5 = self->_userInfo;
    self->_userInfo = v4;

    v6 = self->_userInfo;
    v7 = [MEMORY[0x1E696AFB0] UUID];
    [(NSMutableDictionary *)v6 setObject:v7 forKey:@"UUID"];

    userInfo = self->_userInfo;
  }

  v8 = userInfo;

  return v8;
}

- (void)updateForChangedSettings:(id)a3 options:(int64_t)a4 image:(id)a5 strength:(double)a6
{
  v32 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a5;
  v12 = BSEqualObjects();
  if (self->_needsUpdateShadow || !v12)
  {
    self->_needsUpdateShadow = 1;
  }

  else
  {
    v13 = [(SBUILegibilityContainerView *)self->_shadowImageView image];
    if (v13)
    {
      v14 = [(SBUILegibilityContainerView *)self->_imageView image];
      if (v14)
      {
        v15 = self->_legibilitySettings != v10;
      }

      else
      {
        v15 = 1;
      }

      self->_needsUpdateShadow = v15;
    }

    else
    {
      self->_needsUpdateShadow = 1;
    }
  }

  v16 = [(SBUILegibilityView *)self _updateSettings:v10];
  v17 = [(SBUILegibilityView *)self _updateOptions:a4];
  v18 = [(SBUILegibilityView *)self _updateContentImageView:v11];

  if (v16 || v17 || v18 || self->_needsUpdateShadow)
  {
    [(SBUILegibilityView *)self _cancelOperations];
    self->_strength = a6;
    self->_appliedScale = 0.0;
    v19 = [(SBUILegibilityView *)self _updateShadow];
    v20 = [(SBUILegibilityView *)self _updateStrength:a6];
    v21 = [(SBUILegibilityView *)self _updateFilters];
    v22 = SBLogLegibility();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
    {
      v24 = [(SBUILegibilityView *)self userInfo];
      v25[0] = 67109890;
      v25[1] = v19;
      v26 = 1024;
      v27 = v20;
      v28 = 1024;
      v29 = v21;
      v30 = 2112;
      v31 = v24;
      _os_log_debug_impl(&dword_1A9A79000, v22, OS_LOG_TYPE_DEBUG, "updateForChangedSettings committed! didUpdateShadow: %{BOOL}u -- didUpdateStrength: %{BOOL}u -- didUpdateFilters: %{BOOL}u -- userInfo: %@", v25, 0x1Eu);
    }

    [(SBUILegibilityView *)self setNeedsLayout];
    [(SBUILegibilityView *)self layoutIfNeeded];
    [(SBUILegibilityView *)self updateImage];
  }

  else
  {
    v23 = SBLogLegibility();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
    {
      [SBUILegibilityView updateForChangedSettings:self options:v23 image:? strength:?];
    }
  }
}

- (id)drawingColor
{
  v3 = [(SBUILegibilityView *)self usesSecondaryColor];
  legibilitySettings = self->_legibilitySettings;
  if (v3)
  {
    [(SBUILegibilitySettings *)legibilitySettings secondaryColor];
  }

  else
  {
    [(SBUILegibilitySettings *)legibilitySettings primaryColor];
  }
  v5 = ;

  return v5;
}

- (BOOL)_updateOptions:(int64_t)a3
{
  options = self->_options;
  if (options == a3)
  {
    return 0;
  }

  v4 = a3;
  self->_options = a3;
  v6 = [(SBUILegibilityView *)self usesColorFilters];
  v7 = options ^ v4;
  if (((options ^ v4) & 1) == 0 && ((options >> 1) & 1) == v6)
  {
    return 0;
  }

  v8 = [(SBUILegibilityView *)self _updateFilters];
  if (v7)
  {
    [(SBUILegibilityView *)self updateImage];
  }

  return v8;
}

- (BOOL)_updateSettings:(id)a3
{
  v5 = a3;
  v6 = SBUILegibilitySettingsAreEqual(v5, self->_legibilitySettings);
  if ((v6 & 1) == 0)
  {
    objc_storeStrong(&self->_legibilitySettings, a3);
  }

  v7 = [(SBUILegibilityContainerView *)self->_imageView legibilitySettings];
  v8 = SBUILegibilitySettingsAreEqual(v5, v7);

  if (v8)
  {
    v9 = v6 ^ 1;
  }

  else
  {
    [(SBUILegibilityContainerView *)self->_imageView setLegibilitySettings:v5];
    v9 = 1;
  }

  v10 = [(SBUILegibilityContainerView *)self->_shadowImageView legibilitySettings];
  v11 = SBUILegibilitySettingsAreEqual(v5, v10);

  if ((v11 & 1) == 0)
  {
    [(SBUILegibilityContainerView *)self->_shadowImageView setLegibilitySettings:v5];
    v9 = 1;
  }

  return v9;
}

- (BOOL)_updateContentImageView:(id)a3
{
  v5 = a3;
  [(SBUILegibilityContainerView *)self->_imageView setHidden:[(SBUILegibilityView *)self _hideImageView]];
  imageView = self->_imageView;
  [(SBUILegibilityView *)self _imageViewAlpha];
  [(SBUILegibilityContainerView *)imageView setAlpha:?];
  if (!v5)
  {
    [(SBUILegibilityContainerView *)self->_imageView setImage:0];
    [(SBUILegibilityContainerView *)self->_shadowImageView setImage:0];
    self->_appliedScale = 0.0;
    image = self->_image;
    self->_image = 0;

LABEL_11:
    v7 = 1;
    goto LABEL_12;
  }

  if ((BSEqualObjects() & 1) == 0)
  {
    objc_storeStrong(&self->_image, a3);
    [(UIImage *)self->_image size];
    v10 = v9;
    v12 = v11;
    [(SBUILegibilityContainerView *)self->_imageView setImage:self->_image];
    v13 = [(SBUILegibilityContainerView *)self->_imageView image];
    [v13 size];
    v15 = v14;
    v17 = v16;

    if (v15 != v10 || v17 != v12)
    {
      [(SBUILegibilityView *)self layoutImageView];
    }

    [(SBUILegibilityView *)self setNeedsLayout];
    goto LABEL_11;
  }

  v7 = 0;
LABEL_12:

  return v7;
}

- (BOOL)_updateStrength:(double)a3
{
  v21 = *MEMORY[0x1E69E9840];
  [(SBUILegibilityContainerView *)self->_shadowImageView strength];
  v6 = v5;
  if (self->_strength == v5)
  {
    return 0;
  }

  self->_strength = a3;
  v8 = SBLogLegibility();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG);

  Current = 0.0;
  if (v9)
  {
    Current = CFAbsoluteTimeGetCurrent();
  }

  [(SBUILegibilityContainerView *)self->_shadowImageView setStrength:self->_strength];
  [(SBUILegibilityShadowView *)self->_shadowImageView setHidden:[(SBUILegibilityView *)self _hideShadowImageViewForStrength:0]];
  shadowImageView = self->_shadowImageView;
  [(SBUILegibilityView *)self _shadowImageViewAlphaForStrength:0];
  [(SBUILegibilityShadowView *)shadowImageView setAlpha:?];
  v12 = SBLogLegibility();
  v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG);

  if (v13)
  {
    v14 = CFAbsoluteTimeGetCurrent();
    v15 = SBLogLegibility();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      v16 = [(SBUILegibilityView *)self userInfo];
      v17 = 138412546;
      v18 = v16;
      v19 = 2048;
      v20 = v14 - Current;
      _os_log_debug_impl(&dword_1A9A79000, v15, OS_LOG_TYPE_DEBUG, "(%@) legibility strength application time: %f", &v17, 0x16u);
    }
  }

  return v6 != a3;
}

- (BOOL)_hideShadowImageViewForStrength:(double *)a3
{
  p_strength = &self->_strength;
  if (a3)
  {
    p_strength = a3;
  }

  v5 = *p_strength;
  v6 = [(SBUILegibilityView *)self isHidden];
  result = 1;
  if ((v6 & 1) == 0 && v5 > 0.0)
  {
    [(SBUILegibilityView *)self alpha];
    return v8 <= 0.0;
  }

  return result;
}

- (BOOL)_hideImageView
{
  if (([(SBUILegibilityView *)self isHidden]& 1) != 0 || self->_hidesImage)
  {
    return 1;
  }

  [(SBUILegibilityView *)self alpha];
  return v4 <= 0.0;
}

- (void)updateOrigImage:(id)a3 shadowImage:(id)a4 strengthenedShadowImage:(id)a5 settings:(id)a6 engine:(id)a7 isTemplate:(BOOL)a8 withStrength:(double *)a9 context:(id)a10
{
  v27 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a10;
  if (v19)
  {
    if ([(NSMutableArray *)self->_runningAsyncOperations containsObject:v19])
    {
      [(NSMutableArray *)self->_runningAsyncOperations removeObject:v19];
      if (![(NSMutableArray *)self->_runningAsyncOperations count])
      {
        runningAsyncOperations = self->_runningAsyncOperations;
        self->_runningAsyncOperations = 0;
      }
    }
  }

  image = self->_image;
  legibilitySettings = self->_legibilitySettings;
  v23 = [(SBUILegibilityView *)self legibilityEngine];

  if (image == v27 && legibilitySettings == v17 && v23 == v18)
  {
    [(SBUILegibilityContainerView *)self->_shadowImageView setLegibilitySettings:v17];
    [(SBUILegibilityContainerView *)self->_shadowImageView setLegibilityEngine:v18];
    shadowImageView = self->_shadowImageView;
    if (v16 && a9)
    {
      [(SBUILegibilityShadowView *)shadowImageView setImage:v15 strengthenedImage:v16 strength:*a9];
    }

    else
    {
      [(SBUILegibilityContainerView *)shadowImageView setImage:v15];
      [(SBUILegibilityContainerView *)self->_shadowImageView setStrength:self->_strength];
    }

    [(SBUILegibilityView *)self setNeedsLayout];
    [(SBUILegibilityView *)self layoutIfNeeded];
  }
}

- (SBUILegibilityEngine)legibilityEngine
{
  legibilityEngine = self->_legibilityEngine;
  if (!legibilityEngine)
  {
    v4 = +[SBUILegibilityDefaultEngine defaultEngine];
    v5 = self->_legibilityEngine;
    self->_legibilityEngine = v4;

    [(SBUILegibilityView *)self _cancelOperations];
    legibilityEngine = self->_legibilityEngine;
  }

  return legibilityEngine;
}

- (void)setLegibilityEngine:(id)a3
{
  v6 = a3;
  v5 = self->_legibilityEngine;
  if (([(SBUILegibilityEngine *)v5 isEqual:v6]& 1) == 0)
  {
    if (v5)
    {
      [(SBUILegibilityView *)self _cancelOperations];
      objc_storeStrong(&self->_legibilityEngine, a3);
      [(SBUILegibilityView *)self _clearShadowAndMarkNeedsNew:0];
      [(SBUILegibilityView *)self _updateShadow];
    }

    else
    {
      objc_storeStrong(&self->_legibilityEngine, a3);
    }
  }
}

- (void)_clearShadowAndMarkNeedsNew:(BOOL)a3
{
  v3 = a3;
  v5 = [(SBUILegibilityContainerView *)self->_shadowImageView image];

  if (v5)
  {
    [(SBUILegibilityContainerView *)self->_shadowImageView setImage:0];
  }

  else if (!v3)
  {
    return;
  }

  self->_needsUpdateShadow = 1;
}

- (void)_cancelOperations
{
  if ([(NSMutableArray *)self->_runningAsyncOperations count])
  {
    [(NSMutableArray *)self->_runningAsyncOperations makeObjectsPerformSelector:sel_cancel];
    [(NSMutableArray *)self->_runningAsyncOperations removeAllObjects];
    runningAsyncOperations = self->_runningAsyncOperations;
    self->_runningAsyncOperations = 0;
  }
}

- (UIEdgeInsets)hitTestEdgeInsets
{
  top = self->_hitTestEdgeInsets.top;
  left = self->_hitTestEdgeInsets.left;
  bottom = self->_hitTestEdgeInsets.bottom;
  right = self->_hitTestEdgeInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (void)updateForChangedSettings:(NSObject *)a3 options:image:strength:.cold.1(unsigned __int8 *a1, void *a2, NSObject *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = *a1;
  v5 = [a2 userInfo];
  v6[0] = 67110146;
  v6[1] = 0;
  v7 = 1024;
  v8 = 0;
  v9 = 1024;
  v10 = 0;
  v11 = 1024;
  v12 = v4;
  v13 = 2112;
  v14 = v5;
  _os_log_debug_impl(&dword_1A9A79000, a3, OS_LOG_TYPE_DEBUG, "updateForChangedSettings abandoned! settingsWereUpdated: %{BOOL}u -- optionsWereUpdated: %{BOOL}u -- contentWasUpdated: %{BOOL}u -- _needsUpdateShadow: %{BOOL}u -- userInfo: %@", v6, 0x24u);
}

@end