@interface _UIPageIndicatorView
- (BOOL)_hasOngoingExpandTransition;
- (BOOL)_isDefaultSymbolImage;
- (CAColorMatrix)activeVibrantColorMatrix;
- (CAColorMatrix)vibrantColorMatrix;
- (CGAffineTransform)contentTransform;
- (CGSize)_adjustedDefaultModeSize;
- (CGSize)_adjustedExpandedModeSize;
- (CGSize)defaultModeSize;
- (CGSize)expandedModeSize;
- (CGSize)sizeForImage:(id)a3 traits:(id)a4;
- (CGSize)sizeThatFits:(CGSize)a3;
- (UIEdgeInsets)_currentImageContentInsets;
- (_UIPageIndicatorView)initWithCoder:(id)a3;
- (_UIPageIndicatorView)initWithFrame:(CGRect)a3;
- (double)currentExpandProgress;
- (id)debugDescription;
- (int64_t)_transitionDirection;
- (void)_updateImage;
- (void)_updateImageDisplayScaleOverride;
- (void)_updateIndicatorExpandProgress;
- (void)_updateProgressBar;
- (void)_updateVibrantColorMatrix;
- (void)invalidate;
- (void)layoutSubviews;
- (void)prepare;
- (void)setActive:(BOOL)a3;
- (void)setActiveImage:(id)a3;
- (void)setActiveIndicatorColor:(id)a3;
- (void)setActiveVibrantColorMatrix:(CAColorMatrix *)a3;
- (void)setContentTransform:(CGAffineTransform *)a3;
- (void)setCurrentProgress:(float)a3;
- (void)setImage:(id)a3;
- (void)setImageDisplayScaleFactor:(double)a3;
- (void)setIndicatorColor:(id)a3;
- (void)setMode:(int64_t)a3 direction:(int64_t)a4;
- (void)setSupportsExpandedIndicator:(BOOL)a3;
- (void)setVibrantColorMatrix:(CAColorMatrix *)a3;
@end

@implementation _UIPageIndicatorView

- (double)currentExpandProgress
{
  v2 = [(_UIPageIndicatorView *)self expandProgress];
  [v2 presentationValue];
  v4 = fmax(fmin(v3, 1.0), 0.0);

  return v4;
}

- (void)invalidate
{
  self->_page = -1;
  self->_currentProgress = 0.0;
  [(_UIPageIndicatorView *)self setMode:0 direction:0];
}

- (void)_updateImage
{
  if (![(_UIPageIndicatorView *)self isActive]|| [(_UIPageIndicatorView *)self mode])
  {
    v3 = 0;
LABEL_4:
    v4 = [(_UIPageIndicatorView *)self image];
    v5 = 0;
    v6 = 0;
    v7 = 1;
    goto LABEL_5;
  }

  v12 = [(_UIPageIndicatorView *)self activeImage];
  if (!v12)
  {
    v3 = 1;
    goto LABEL_4;
  }

  v5 = v12;
  v4 = [(_UIPageIndicatorView *)self activeImage];
  v7 = 0;
  v3 = 1;
  v6 = 1;
LABEL_5:
  v8 = [(_UIPageIndicatorView *)self imageView];
  [v8 setImage:v4];

  if (!v7)
  {
    if (!v6)
    {
      goto LABEL_7;
    }

LABEL_10:

    if (v3)
    {
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  if (v6)
  {
    goto LABEL_10;
  }

LABEL_7:
  if (v3)
  {
LABEL_8:

    v9 = [(_UIPageIndicatorView *)self activeIndicatorColor];
    goto LABEL_12;
  }

LABEL_11:
  v9 = [(_UIPageIndicatorView *)self indicatorColor];
LABEL_12:
  v10 = v9;
  v11 = [(_UIPageIndicatorView *)self imageView];
  [v11 setTintColor:v10];

  v13 = [(_UIPageIndicatorView *)self imageView];
  [v13 setNeedsLayout];
}

- (CAColorMatrix)activeVibrantColorMatrix
{
  v3 = *&self[8].m31;
  *&retstr->m24 = *&self[8].m22;
  *&retstr->m33 = v3;
  *&retstr->m42 = *&self[8].m35;
  v4 = *&self[8].m13;
  *&retstr->m11 = *&self[7].m44;
  *&retstr->m15 = v4;
  return self;
}

- (void)_updateProgressBar
{
  v3 = [(_UIPageIndicatorView *)self indicatorColor];
  v4 = [(_UIPageIndicatorView *)self progressView];
  v5 = [v4 backgroundView];
  [v5 setBackgroundColor:v3];

  v6 = [(_UIPageIndicatorView *)self activeIndicatorColor];
  v7 = [(_UIPageIndicatorView *)self progressView];
  v8 = [v7 filledView];
  [v8 setBackgroundColor:v6];

  v9 = [(_UIPageIndicatorView *)self progressView];
  [v9 setNeedsLayout];
}

- (void)_updateVibrantColorMatrix
{
  v27[1] = *MEMORY[0x1E69E9840];
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v22 = 0u;
  if ([(_UIPageIndicatorView *)self isActive])
  {
    [(_UIPageIndicatorView *)self activeVibrantColorMatrix];
  }

  else
  {
    [(_UIPageIndicatorView *)self vibrantColorMatrix];
  }

  v19 = v24;
  v20 = v25;
  v21 = v26;
  v17 = v22;
  v18 = v23;
  v3 = *(MEMORY[0x1E6979280] + 48);
  v16[2] = *(MEMORY[0x1E6979280] + 32);
  v16[3] = v3;
  v16[4] = *(MEMORY[0x1E6979280] + 64);
  v4 = *(MEMORY[0x1E6979280] + 16);
  v16[0] = *MEMORY[0x1E6979280];
  v16[1] = v4;
  if (_UICAColorMatrixIsEqualToCAColorMatrix(&v17, v16, 0.0))
  {
    v5 = [(_UIPageIndicatorView *)self imageView];
    v6 = [v5 layer];
    [v6 setFilters:0];
  }

  else
  {
    v19 = v24;
    v20 = v25;
    v21 = v26;
    v17 = v22;
    v18 = v23;
    v5 = [MEMORY[0x1E696B098] valueWithCAColorMatrix:&v17];
    v7 = [(_UIPageIndicatorView *)self imageView];
    v8 = [v7 layer];
    v9 = [v8 filters];
    v10 = [v9 count];

    if (!v10)
    {
      v11 = [MEMORY[0x1E6979378] filterWithType:*MEMORY[0x1E6979D78]];
      v27[0] = v11;
      v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:1];
      v13 = [(_UIPageIndicatorView *)self imageView];
      v14 = [v13 layer];
      [v14 setFilters:v12];
    }

    v6 = [(_UIPageIndicatorView *)self imageView];
    v15 = [v6 layer];
    [v15 setValue:v5 forKeyPath:@"filters.vibrantColorMatrix.inputColorMatrix"];
  }
}

- (void)_updateIndicatorExpandProgress
{
  if ([(_UIPageIndicatorView *)self supportsExpandedIndicator])
  {
    [(_UIPageIndicatorView *)self currentExpandProgress];
    v4 = v3;
    if ([(_UIPageIndicatorView *)self _isDefaultSymbolImage])
    {
      v5 = [(_UIPageIndicatorView *)self imageView];
      [v5 setHidden:v4 != 0.0];

      v6 = [(_UIPageIndicatorView *)self imageView];
      [v6 setAlpha:1.0];

      v7 = [(_UIPageIndicatorView *)self progressView];
      [v7 setHidden:v4 == 0.0];

      v8 = [(_UIPageIndicatorView *)self progressView];
      [v8 setAlpha:1.0];

      v9 = [(_UIPageIndicatorView *)self progressView];
      v10 = [v9 backgroundView];
      [v10 setAlpha:1.0];

      p_active = &self->_active;
    }

    else
    {
      v12 = [(_UIPageIndicatorView *)self imageView];
      [v12 setHidden:0];

      v13 = [(_UIPageIndicatorView *)self imageView];
      [v13 setAlpha:1.0 - v4];

      v14 = [(_UIPageIndicatorView *)self progressView];
      [v14 setHidden:0];

      v15 = [(_UIPageIndicatorView *)self progressView];
      [v15 setAlpha:v4];

      p_active = &self->_active;
      if (self->_active)
      {
        v16 = v4;
      }

      else
      {
        v16 = 1.0;
      }

      v17 = [(_UIPageIndicatorView *)self progressView];
      v18 = [v17 backgroundView];
      [v18 setAlpha:v16];
    }

    if (*p_active)
    {
      v4 = 1.0;
    }

    v20 = [(_UIPageIndicatorView *)self progressView];
    v19 = [v20 filledView];
    [v19 setAlpha:v4];
  }
}

- (void)prepare
{
  v19[1] = *MEMORY[0x1E69E9840];
  [(_UIPageIndicatorView *)self setPage:-1];
  [(UIView *)self setMaximumContentSizeCategory:@"UICTContentSizeCategoryXXL"];
  v3 = [_UIPageIndicatorImageView alloc];
  v4 = [(_UIPageIndicatorImageView *)v3 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  imageView = self->_imageView;
  self->_imageView = v4;

  [(UIView *)self->_imageView setMaximumContentSizeCategory:@"UICTContentSizeCategoryXXL"];
  [(_UIPageIndicatorImageView *)self->_imageView setIndicatorView:self];
  [(UIView *)self addSubview:self->_imageView];
  v6 = MEMORY[0x1E6979280];
  v7 = *(MEMORY[0x1E6979280] + 64);
  *&self->_vibrantColorMatrix.m42 = v7;
  v9 = v6[2];
  v8 = v6[3];
  *&self->_vibrantColorMatrix.m24 = v9;
  *&self->_vibrantColorMatrix.m33 = v8;
  v10 = *v6;
  v11 = v6[1];
  *&self->_vibrantColorMatrix.m11 = *v6;
  *&self->_vibrantColorMatrix.m15 = v11;
  *&self->_activeVibrantColorMatrix.m33 = v8;
  *&self->_activeVibrantColorMatrix.m42 = v7;
  *&self->_activeVibrantColorMatrix.m15 = v11;
  *&self->_activeVibrantColorMatrix.m24 = v9;
  *&self->_activeVibrantColorMatrix.m11 = v10;
  self->_imageDisplayScaleFactor = 1.0;
  v12 = objc_opt_new();
  expandProgress = self->_expandProgress;
  self->_expandProgress = v12;

  [(UIViewFloatAnimatableProperty *)self->_expandProgress setValue:0.0];
  objc_initWeak(&location, self);
  v14 = [(_UIPageIndicatorView *)self expandProgress];
  v19[0] = v14;
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:1];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __31___UIPageIndicatorView_prepare__block_invoke;
  v16[3] = &unk_1E70F5A28;
  objc_copyWeak(&v17, &location);
  [UIView _createTransformerWithInputAnimatableProperties:v15 presentationValueChangedCallback:v16];

  objc_destroyWeak(&v17);
  objc_destroyWeak(&location);
}

- (void)layoutSubviews
{
  v26.receiver = self;
  v26.super_class = _UIPageIndicatorView;
  [(UIView *)&v26 layoutSubviews];
  [(UIView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(_UIPageIndicatorView *)self _currentImageContentInsets];
  [(UIView *)self->_progressView setFrame:v4 + v14, v6 + v11, v8 - (v14 + v12), v10 - (v11 + v13)];
  v15 = [(_UIPageIndicatorView *)self _transitionDirection];
  v16 = [(_UIPageIndicatorView *)self image];
  [(_UIPageIndicatorView *)self sizeForImage:v16 traits:0];
  v18 = v17;
  v20 = v19;

  v21 = *MEMORY[0x1E695EFF8];
  v22 = *(MEMORY[0x1E695EFF8] + 8);
  v23 = [(_UIPageIndicatorView *)self direction];
  v24 = v21;
  v25 = v22;
  if (v23 <= 1)
  {
    if (v23)
    {
      if (v23 != 1)
      {
        goto LABEL_14;
      }

      v24 = v21;
      v25 = v22;
      if (v15 != 2)
      {
        goto LABEL_14;
      }
    }

    else if (v15 != 1)
    {
      goto LABEL_14;
    }

    v27.origin.x = v4;
    v27.origin.y = v6;
    v27.size.width = v8;
    v27.size.height = v10;
    v24 = CGRectGetWidth(v27) - v18;
    v25 = v22;
    goto LABEL_14;
  }

  if (v23 == 2)
  {
    if (v15 != 1)
    {
      goto LABEL_14;
    }

LABEL_13:
    v28.origin.x = v4;
    v28.origin.y = v6;
    v28.size.width = v8;
    v28.size.height = v10;
    v25 = CGRectGetHeight(v28) - v20;
    v24 = v21;
    goto LABEL_14;
  }

  if (v23 == 3)
  {
    v24 = v21;
    v25 = v22;
    if (v15 == 2)
    {
      goto LABEL_13;
    }
  }

LABEL_14:
  [(UIImageView *)self->_imageView setCenter:v18 * 0.5 + v24, v20 * 0.5 + v25];
  [(UIImageView *)self->_imageView setBounds:v21, v22, v18, v20];
}

- (int64_t)_transitionDirection
{
  if ([(_UIPageIndicatorView *)self _hasOngoingExpandTransition])
  {
    return self->_offsetDirection;
  }

  else
  {
    return 0;
  }
}

- (BOOL)_hasOngoingExpandTransition
{
  v3 = [(_UIPageIndicatorView *)self expandProgress];
  [v3 value];
  v5 = v4;
  v6 = [(_UIPageIndicatorView *)self expandProgress];
  [v6 presentationValue];
  v8 = v5 != v7;

  return v8;
}

- (UIEdgeInsets)_currentImageContentInsets
{
  v2 = [(_UIPageIndicatorView *)self imageView];
  v3 = [v2 _currentImage];
  [v3 contentInsets];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = v5;
  v13 = v7;
  v14 = v9;
  v15 = v11;
  result.right = v15;
  result.bottom = v14;
  result.left = v13;
  result.top = v12;
  return result;
}

- (CAColorMatrix)vibrantColorMatrix
{
  v3 = *&self[7].m31;
  *&retstr->m24 = *&self[7].m22;
  *&retstr->m33 = v3;
  *&retstr->m42 = *&self[7].m35;
  v4 = *&self[7].m13;
  *&retstr->m11 = *&self[6].m44;
  *&retstr->m15 = v4;
  return self;
}

- (_UIPageIndicatorView)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = _UIPageIndicatorView;
  v3 = [(UIView *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(_UIPageIndicatorView *)v3 prepare];
  }

  return v4;
}

- (_UIPageIndicatorView)initWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = _UIPageIndicatorView;
  v3 = [(UIView *)&v6 initWithCoder:a3];
  v4 = v3;
  if (v3)
  {
    [(_UIPageIndicatorView *)v3 prepare];
  }

  return v4;
}

- (CGAffineTransform)contentTransform
{
  result = self->_imageView;
  if (result)
  {
    return [(CGAffineTransform *)result transform];
  }

  *&retstr->c = 0u;
  *&retstr->tx = 0u;
  *&retstr->a = 0u;
  return result;
}

- (void)setContentTransform:(CGAffineTransform *)a3
{
  v3 = *&a3->c;
  v4[0] = *&a3->a;
  v4[1] = v3;
  v4[2] = *&a3->tx;
  [(UIView *)self->_imageView setTransform:v4];
}

- (void)setImageDisplayScaleFactor:(double)a3
{
  v13[1] = *MEMORY[0x1E69E9840];
  if (a3 <= 0.0)
  {
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"_UIPageIndicatorView.m" lineNumber:135 description:{@"imageDisplayScaleFactor (%f) must be greater than 0.", *&a3}];
  }

  if (self->_imageDisplayScaleFactor != a3)
  {
    self->_imageDisplayScaleFactor = a3;
    displayScaleTraitChangeRegistration = self->_displayScaleTraitChangeRegistration;
    if (fabs(a3 + -1.0) >= 2.22044605e-16)
    {
      if (!displayScaleTraitChangeRegistration)
      {
        v13[0] = objc_opt_class();
        v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];
        v8 = [(UIView *)self registerForTraitChanges:v7 withAction:sel__updateImageDisplayScaleOverride];
        v9 = self->_displayScaleTraitChangeRegistration;
        self->_displayScaleTraitChangeRegistration = v8;
      }

      [(_UIPageIndicatorView *)self _updateImageDisplayScaleOverride];
    }

    else
    {
      if (displayScaleTraitChangeRegistration)
      {
        [(UIView *)self unregisterForTraitChanges:?];
        v6 = self->_displayScaleTraitChangeRegistration;
        self->_displayScaleTraitChangeRegistration = 0;
      }

      v12 = [(UIView *)self->_imageView traitOverrides];
      [v12 removeTrait:objc_opt_class()];
    }
  }
}

- (void)setSupportsExpandedIndicator:(BOOL)a3
{
  if (self->_supportsExpandedIndicator != a3)
  {
    v3 = a3;
    self->_supportsExpandedIndicator = a3;
    [(UIImageView *)self->_imageView _setSuppressPixelAlignment:?];
    if (v3)
    {
      v5 = [_UIPageIndicatorProgressView alloc];
      v6 = [(_UIPageIndicatorProgressView *)v5 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
      progressView = self->_progressView;
      self->_progressView = v6;

      [(_UIPageIndicatorProgressView *)self->_progressView setIndicatorView:self];
      [(UIView *)self insertSubview:self->_progressView atIndex:0];
      [(_UIPageIndicatorView *)self _updateProgressBar];

      [(_UIPageIndicatorView *)self _updateIndicatorExpandProgress];
    }

    else
    {
      [(UIView *)self->_progressView removeFromSuperview];
      v8 = self->_progressView;
      self->_progressView = 0;

      v9 = [(_UIPageIndicatorView *)self imageView];
      [v9 setHidden:0];

      v10 = [(_UIPageIndicatorView *)self imageView];
      [v10 setAlpha:1.0];
    }
  }
}

- (void)setMode:(int64_t)a3 direction:(int64_t)a4
{
  if (self->_mode != a3)
  {
    v15 = v7;
    v16 = v6;
    v17 = v4;
    v18 = v5;
    self->_mode = a3;
    self->_offsetDirection = a4;
    v9 = 0.0;
    if (a3 == 1)
    {
      v9 = 1.0;
      if (![(_UIPageIndicatorView *)self supportsExpandedIndicator])
      {
        if (os_variant_has_internal_diagnostics())
        {
          v12 = __UIFaultDebugAssertLog();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
          {
            *buf = 0;
            _os_log_fault_impl(&dword_188A29000, v12, OS_LOG_TYPE_FAULT, "Cannot change the mode to expanded if the indicator does not support expanded indicators", buf, 2u);
          }
        }

        else
        {
          v11 = *(__UILogGetCategoryCachedImpl("Assert", &setMode_direction____s_category) + 8);
          if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
          {
            *v13 = 0;
            _os_log_impl(&dword_188A29000, v11, OS_LOG_TYPE_ERROR, "Cannot change the mode to expanded if the indicator does not support expanded indicators", v13, 2u);
          }
        }
      }
    }

    v10 = [(_UIPageIndicatorView *)self expandProgress];
    [v10 setValue:v9];

    [(_UIPageIndicatorView *)self _updateImage];
    [(_UIPageIndicatorView *)self _updateProgressBar];
    [(_UIPageIndicatorView *)self _updateIndicatorExpandProgress];
  }
}

- (void)setImage:(id)a3
{
  v5 = a3;
  if (self->_image != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_image, a3);
    [(_UIPageIndicatorView *)self _updateImage];
    [(_UIPageIndicatorView *)self _updateIndicatorExpandProgress];
    v5 = v6;
  }
}

- (void)setActiveImage:(id)a3
{
  v5 = a3;
  if (self->_activeImage != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_activeImage, a3);
    [(_UIPageIndicatorView *)self _updateImage];
    [(_UIPageIndicatorView *)self _updateIndicatorExpandProgress];
    v5 = v6;
  }
}

- (void)setActive:(BOOL)a3
{
  if (self->_active != a3)
  {
    self->_active = a3;
    [(_UIPageIndicatorView *)self _updateImage];
    [(_UIPageIndicatorView *)self _updateProgressBar];
    [(_UIPageIndicatorView *)self _updateVibrantColorMatrix];

    [(_UIPageIndicatorView *)self _updateIndicatorExpandProgress];
  }
}

- (void)setIndicatorColor:(id)a3
{
  v5 = a3;
  if (self->_indicatorColor != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_indicatorColor, a3);
    [(_UIPageIndicatorView *)self _updateImage];
    [(_UIPageIndicatorView *)self _updateProgressBar];
    v5 = v6;
  }
}

- (void)setActiveIndicatorColor:(id)a3
{
  v5 = a3;
  if (self->_activeIndicatorColor != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_activeIndicatorColor, a3);
    [(_UIPageIndicatorView *)self _updateImage];
    [(_UIPageIndicatorView *)self _updateProgressBar];
    v5 = v6;
  }
}

- (void)setVibrantColorMatrix:(CAColorMatrix *)a3
{
  p_vibrantColorMatrix = &self->_vibrantColorMatrix;
  v6 = *&self->_vibrantColorMatrix.m33;
  v14[2] = *&self->_vibrantColorMatrix.m24;
  v14[3] = v6;
  v14[4] = *&self->_vibrantColorMatrix.m42;
  v7 = *&self->_vibrantColorMatrix.m15;
  v14[0] = *&self->_vibrantColorMatrix.m11;
  v14[1] = v7;
  v8 = *&a3->m33;
  v13[2] = *&a3->m24;
  v13[3] = v8;
  v13[4] = *&a3->m42;
  v9 = *&a3->m15;
  v13[0] = *&a3->m11;
  v13[1] = v9;
  if (!_UICAColorMatrixIsEqualToCAColorMatrix(v14, v13, 0.0))
  {
    *&p_vibrantColorMatrix->m11 = *&a3->m11;
    v10 = *&a3->m15;
    v11 = *&a3->m24;
    v12 = *&a3->m42;
    *&p_vibrantColorMatrix->m33 = *&a3->m33;
    *&p_vibrantColorMatrix->m42 = v12;
    *&p_vibrantColorMatrix->m15 = v10;
    *&p_vibrantColorMatrix->m24 = v11;
    [(_UIPageIndicatorView *)self _updateVibrantColorMatrix];
  }
}

- (void)setActiveVibrantColorMatrix:(CAColorMatrix *)a3
{
  p_activeVibrantColorMatrix = &self->_activeVibrantColorMatrix;
  v6 = *&self->_activeVibrantColorMatrix.m33;
  v14[2] = *&self->_activeVibrantColorMatrix.m24;
  v14[3] = v6;
  v14[4] = *&self->_activeVibrantColorMatrix.m42;
  v7 = *&self->_activeVibrantColorMatrix.m15;
  v14[0] = *&self->_activeVibrantColorMatrix.m11;
  v14[1] = v7;
  v8 = *&a3->m33;
  v13[2] = *&a3->m24;
  v13[3] = v8;
  v13[4] = *&a3->m42;
  v9 = *&a3->m15;
  v13[0] = *&a3->m11;
  v13[1] = v9;
  if (!_UICAColorMatrixIsEqualToCAColorMatrix(v14, v13, 0.0))
  {
    *&p_activeVibrantColorMatrix->m11 = *&a3->m11;
    v10 = *&a3->m15;
    v11 = *&a3->m24;
    v12 = *&a3->m42;
    *&p_activeVibrantColorMatrix->m33 = *&a3->m33;
    *&p_activeVibrantColorMatrix->m42 = v12;
    *&p_activeVibrantColorMatrix->m15 = v10;
    *&p_activeVibrantColorMatrix->m24 = v11;
    [(_UIPageIndicatorView *)self _updateVibrantColorMatrix];
  }
}

- (void)setCurrentProgress:(float)a3
{
  if (self->_currentProgress != a3)
  {
    self->_currentProgress = a3;
    v4 = [(_UIPageIndicatorView *)self progressView];
    [v4 setNeedsLayout];
  }
}

- (CGSize)sizeForImage:(id)a3 traits:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(_UIPageIndicatorView *)self imageView];
  [v8 sizeForImage:v7 traits:v6];
  v10 = v9;
  v12 = v11;

  v13 = v10;
  v14 = v12;
  result.height = v14;
  result.width = v13;
  return result;
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v5 = [(_UIPageIndicatorView *)self imageView];
  [v5 sizeThatFits:{width, height}];
  v7 = v6;
  v9 = v8;

  v10 = v7;
  v11 = v9;
  result.height = v11;
  result.width = v10;
  return result;
}

- (id)debugDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  page = self->_page;
  v6 = [(_UIPageIndicatorView *)self isInvalidated];
  [(UIView *)self center];
  v8 = v7;
  [(UIView *)self bounds];
  v17.width = v9;
  v17.height = v10;
  v11 = NSStringFromCGSize(v17);
  [(UIView *)self transform];
  v12 = NSStringFromCGAffineTransform(&transform);
  v13 = [v3 stringWithFormat:@"<%@: %p>, page = %ld, invalidated = %d, position = %.2f, size = %@, transform = %@", v4, self, page, v6, v8, v11, v12];

  return v13;
}

- (void)_updateImageDisplayScaleOverride
{
  v3 = [(UIView *)self traitCollection];
  [v3 displayScale];
  v5 = v4;
  [(_UIPageIndicatorView *)self imageDisplayScaleFactor];
  v7 = ceil(v5 * v6);

  v8 = [(UIView *)self->_imageView traitOverrides];
  [v8 setDisplayScale:v7];
}

- (CGSize)_adjustedDefaultModeSize
{
  [(_UIPageIndicatorView *)self defaultModeSize];
  v4 = v3;
  v6 = v5;
  [(_UIPageIndicatorView *)self _currentImageContentInsets];
  v9 = v4 - (v7 + v8);
  v12 = v6 - (v10 + v11);
  v13 = v9;
  result.height = v12;
  result.width = v13;
  return result;
}

- (CGSize)_adjustedExpandedModeSize
{
  [(_UIPageIndicatorView *)self expandedModeSize];
  v4 = v3;
  v6 = v5;
  [(_UIPageIndicatorView *)self _currentImageContentInsets];
  v9 = v4 - (v7 + v8);
  v12 = v6 - (v10 + v11);
  v13 = v9;
  result.height = v12;
  result.width = v13;
  return result;
}

- (BOOL)_isDefaultSymbolImage
{
  v3 = [(_UIPageIndicatorView *)self image];
  if ([v3 isSymbolImage])
  {
    v4 = [(_UIPageIndicatorView *)self image];
    v5 = _UIImageName(v4);
    v6 = v5;
    if (v5 == @"circlebadge.fill")
    {
      v7 = 1;
    }

    else if (v5)
    {
      v7 = [(__CFString *)v5 isEqual:@"circlebadge.fill"];
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (CGSize)defaultModeSize
{
  width = self->_defaultModeSize.width;
  height = self->_defaultModeSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)expandedModeSize
{
  width = self->_expandedModeSize.width;
  height = self->_expandedModeSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end