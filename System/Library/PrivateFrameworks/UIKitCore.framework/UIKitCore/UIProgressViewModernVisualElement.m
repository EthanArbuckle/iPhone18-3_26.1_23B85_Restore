@interface UIProgressViewModernVisualElement
+ (BOOL)usesLegacySubviewStructure;
+ (CGSize)intrinsicSizeWithinSize:(CGSize)a3 control:(id)a4;
+ (id)_standardInnerImageForStyle:(int64_t)a3 barStyle:(int64_t)a4;
+ (id)_standardOuterImageForStyle:(int64_t)a3 barStyle:(int64_t)a4;
+ (id)_tintedImageWithTraitCollection:(id)a3 forHeight:(double)a4 andColors:(id)a5 roundingRectCorners:(unint64_t)a6;
+ (unint64_t)_indexForStyle:(int64_t)a3 barStyle:(int64_t)a4;
+ (void)_fillImagesForIndex:(unint64_t)a3 style:(int64_t)a4 barStyle:(int64_t)a5;
- (BOOL)_shouldTintProgress;
- (BOOL)_shouldTintTrack;
- (CGSize)_intrinsicSizeWithinSize:(CGSize)a3;
- (UIEdgeInsets)alignmentRectInsets;
- (UIProgressView)progressControlView;
- (double)_shadowOpacityForUserInterfaceStyle:(int64_t)a3;
- (id)_appropriateProgressImage;
- (id)_appropriateTrackImage;
- (id)_defaultTrackColorForCurrentStyle;
- (id)_effectiveContentView;
- (unint64_t)_roundedCornersForProgressForCurrentStyle;
- (unint64_t)_roundedCornersForTrackForCurrentStyle;
- (void)_dynamicUserInterfaceTraitDidChange;
- (void)_layoutShadow;
- (void)_reducedTransparencyDidChange:(id)a3;
- (void)_setupShadow;
- (void)_updateImages;
- (void)layoutSubviews;
- (void)removeLegacySubviewsForArchive:(id)a3;
- (void)setBarStyle:(int64_t)a3;
- (void)setProgress:(float)a3 animated:(BOOL)a4 duration:(double)a5 delay:(double)a6 options:(unint64_t)a7;
- (void)setProgressControlView:(id)a3;
- (void)setProgressImage:(id)a3;
- (void)setProgressTintColor:(id)a3;
- (void)setProgressViewStyle:(int64_t)a3;
- (void)setTrackImage:(id)a3;
- (void)setTrackTintColor:(id)a3;
- (void)tintColorDidChange;
@end

@implementation UIProgressViewModernVisualElement

+ (BOOL)usesLegacySubviewStructure
{
  if (qword_1ED49A9C8 != -1)
  {
    dispatch_once(&qword_1ED49A9C8, &__block_literal_global_565);
  }

  return _MergedGlobals_11_9;
}

uint64_t __63__UIProgressViewModernVisualElement_usesLegacySubviewStructure__block_invoke()
{
  result = dyld_program_sdk_at_least();
  _MergedGlobals_11_9 = result ^ 1;
  return result;
}

- (void)_updateImages
{
  v42[2] = *MEMORY[0x1E69E9840];
  if (!self->_trackView)
  {
    v3 = [UIImageView alloc];
    [(UIView *)self->_contentView bounds];
    v4 = [(UIImageView *)v3 initWithFrame:?];
    trackView = self->_trackView;
    self->_trackView = v4;

    v6 = [(UIProgressViewModernVisualElement *)self _effectiveContentView];
    [v6 addSubview:self->_trackView];
  }

  if (!self->_progressView)
  {
    v7 = [UIImageView alloc];
    v8 = [(UIImageView *)v7 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    progressView = self->_progressView;
    self->_progressView = v8;

    v10 = [(UIProgressViewModernVisualElement *)self _effectiveContentView];
    [v10 addSubview:self->_progressView];

    [(UIView *)self->_progressView setAlpha:1.0];
  }

  WeakRetained = objc_loadWeakRetained(&self->_progressControlView);
  [WeakRetained bounds];
  Height = CGRectGetHeight(v43);

  if (Height == 0.0)
  {
    Height = 11.0;
  }

  v13 = objc_loadWeakRetained(&self->_progressControlView);
  v14 = [v13 trackImage];

  if (v14)
  {
    v15 = self->_trackView;
    v16 = [(UIProgressViewModernVisualElement *)self _appropriateTrackImage];
    [(UIImageView *)v15 setImage:v16];
    goto LABEL_19;
  }

  v17 = objc_loadWeakRetained(&self->_progressControlView);
  v18 = [v17 trackTintColor];

  if (v18)
  {
    v37 = 0.0;
    v38 = 0.0;
    v35 = 0.0;
    v36 = 0.0;
  }

  else
  {
    v18 = [(UIProgressViewModernVisualElement *)self _defaultTrackColorForCurrentStyle];
    v37 = 0.0;
    v38 = 0.0;
    v35 = 0.0;
    v36 = 0.0;
    if (!v18)
    {
      goto LABEL_14;
    }
  }

  if ([v18 getRed:&v38 green:&v37 blue:&v36 alpha:&v35])
  {
    v19 = [UIColor colorWithRed:v38 * 0.978378378 green:v37 * 0.978378378 blue:v36 * 0.978378378 alpha:v35];
    v42[0] = v19;
    v42[1] = v18;
    v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v42 count:2];

    goto LABEL_15;
  }

LABEL_14:
  v41 = v18;
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v41 count:1];
LABEL_15:
  if (![v16 isEqual:self->_trackColors] || (-[UIImageView image](self->_trackView, "image"), v20 = objc_claimAutoreleasedReturnValue(), v20, !v20))
  {
    objc_storeStrong(&self->_trackColors, v16);
    v21 = self->_trackView;
    v22 = [(UIView *)self traitCollection];
    v23 = [UIProgressViewModernVisualElement _tintedImageWithTraitCollection:v22 forHeight:self->_trackColors andColors:[(UIProgressViewModernVisualElement *)self _roundedCornersForTrackForCurrentStyle] roundingRectCorners:Height];
    [(UIImageView *)v21 setImage:v23];
  }

LABEL_19:
  v24 = objc_loadWeakRetained(&self->_progressControlView);
  v25 = [v24 progressImage];

  if (v25)
  {
    v26 = [(UIProgressViewModernVisualElement *)self _appropriateProgressImage];
    [(UIImageView *)self->_progressView setImage:v26];
    if (([v26 _isResizable] & 1) == 0)
    {
      [(UIView *)self->_progressView setAlpha:1.0];
    }

    goto LABEL_34;
  }

  v27 = objc_loadWeakRetained(&self->_progressControlView);
  v26 = [v27 progressTintColor];

  if (!v26)
  {
    v28 = [(UIView *)self _inheritedInteractionTintColor];
    if (!v28)
    {
      v26 = +[UIColor blackColor];
      v37 = 0.0;
      v38 = 0.0;
      v35 = 0.0;
      v36 = 0.0;
      if (!v26)
      {
        goto LABEL_29;
      }

      goto LABEL_26;
    }

    v26 = v28;
  }

  v37 = 0.0;
  v38 = 0.0;
  v35 = 0.0;
  v36 = 0.0;
LABEL_26:
  if ([v26 getRed:&v38 green:&v37 blue:&v36 alpha:&v35])
  {
    v29 = [UIColor colorWithRed:v38 * 0.978378378 green:v37 * 0.978378378 blue:v36 * 0.978378378 alpha:v35];
    v40[0] = v29;
    v40[1] = v26;
    v30 = [MEMORY[0x1E695DEC8] arrayWithObjects:v40 count:2];

    goto LABEL_30;
  }

LABEL_29:
  v39 = v26;
  v30 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v39 count:1];
LABEL_30:
  if (![v30 isEqual:self->_progressColors] || (-[UIImageView image](self->_progressView, "image"), v31 = objc_claimAutoreleasedReturnValue(), v31, !v31))
  {
    objc_storeStrong(&self->_progressColors, v30);
    v32 = self->_progressView;
    v33 = [(UIView *)self traitCollection];
    v34 = [UIProgressViewModernVisualElement _tintedImageWithTraitCollection:v33 forHeight:self->_progressColors andColors:[(UIProgressViewModernVisualElement *)self _roundedCornersForProgressForCurrentStyle] roundingRectCorners:Height];
    [(UIImageView *)v32 setImage:v34];
  }

LABEL_34:
}

- (id)_effectiveContentView
{
  contentView = self->_contentView;
  if (contentView)
  {
    WeakRetained = contentView;
  }

  else if (+[UIProgressViewModernVisualElement usesLegacySubviewStructure])
  {
    WeakRetained = objc_loadWeakRetained(&self->_progressControlView);
  }

  else
  {
    WeakRetained = self;
  }

  return WeakRetained;
}

- (id)_defaultTrackColorForCurrentStyle
{
  WeakRetained = objc_loadWeakRetained(&self->_progressControlView);
  v3 = [WeakRetained progressViewStyle];

  if (v3)
  {
    v4 = +[UIColor clearColor];
  }

  else
  {
    if (dyld_program_sdk_at_least())
    {
      +[UIColor systemFillColor];
    }

    else
    {
      [UIColor colorWithRed:0.72265625 green:0.72265625 blue:0.72265625 alpha:1.0];
    }
    v4 = ;
  }

  return v4;
}

- (unint64_t)_roundedCornersForTrackForCurrentStyle
{
  WeakRetained = objc_loadWeakRetained(&self->_progressControlView);
  v3 = [WeakRetained progressViewStyle];

  if (v3)
  {
    return 0;
  }

  else
  {
    return -1;
  }
}

- (unint64_t)_roundedCornersForProgressForCurrentStyle
{
  WeakRetained = objc_loadWeakRetained(&self->_progressControlView);
  v3 = [WeakRetained progressViewStyle];

  if (v3)
  {
    return 0;
  }

  else
  {
    return -1;
  }
}

- (UIProgressView)progressControlView
{
  WeakRetained = objc_loadWeakRetained(&self->_progressControlView);

  return WeakRetained;
}

+ (unint64_t)_indexForStyle:(int64_t)a3 barStyle:(int64_t)a4
{
  v6 = +[UIDevice currentDevice];
  v7 = [v6 userInterfaceIdiom];

  if (a3 == 1 && (v7 & 0xFFFFFFFFFFFFFFFBLL) == 1 && a4 == 3)
  {
    return a3 + 1;
  }

  else
  {
    return a3;
  }
}

+ (void)_fillImagesForIndex:(unint64_t)a3 style:(int64_t)a4 barStyle:(int64_t)a5
{
  v23 = __defaultImageSuffixes[a3];
  v8 = +[UIDevice currentDevice];
  v9 = [v8 userInterfaceIdiom];

  if (a5 != 3 && a4 == 1 && (v9 & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    v10 = [(__CFString *)v23 stringByAppendingString:@"_Silver"];

    v11 = v10;
  }

  else
  {
    v11 = v23;
  }

  v12 = &_MergedGlobals_11_9[8 * a3];
  if (!*(v12 + 2))
  {
    v24 = v11;
    v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"UIProgressBarInner%@.png", v11];
    v14 = _UIImageWithName(v13);

    [v14 size];
    v16 = [v14 resizableImageWithCapInsets:{0.0, (v15 + -1.0) * 0.5, 0.0, (v15 + -1.0) * 0.5}];

    v17 = *(v12 + 2);
    *(v12 + 2) = v16;

    v11 = v24;
  }

  if (!*(v12 + 5))
  {
    v25 = v11;
    v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"UIProgressBarOuter%@.png", v11];
    v19 = _UIImageWithName(v18);

    [v19 size];
    v21 = [v19 resizableImageWithCapInsets:{0.0, (v20 + -1.0) * 0.5, 0.0, (v20 + -1.0) * 0.5}];

    v22 = *(v12 + 5);
    *(v12 + 5) = v21;

    v11 = v25;
  }
}

+ (id)_standardOuterImageForStyle:(int64_t)a3 barStyle:(int64_t)a4
{
  v7 = [a1 _indexForStyle:? barStyle:?];
  [a1 _fillImagesForIndex:v7 style:a3 barStyle:a4];
  v8 = *&_MergedGlobals_11_9[8 * v7 + 40];

  return v8;
}

+ (id)_standardInnerImageForStyle:(int64_t)a3 barStyle:(int64_t)a4
{
  v7 = [a1 _indexForStyle:? barStyle:?];
  [a1 _fillImagesForIndex:v7 style:a3 barStyle:a4];
  v8 = *&_MergedGlobals_11_9[8 * v7 + 16];

  return v8;
}

+ (CGSize)intrinsicSizeWithinSize:(CGSize)a3 control:(id)a4
{
  width = a3.width;
  v6 = a4;
  v7 = [a1 _standardOuterImageForStyle:objc_msgSend(v6 barStyle:{"progressViewStyle"), objc_msgSend(v6, "barStyle")}];
  [v7 size];
  if ([v6 progressViewStyle])
  {
    UICeilToViewScale(v6);
    v9 = v8;
  }

  else if (dyld_program_sdk_at_least())
  {
    v9 = 4.0;
  }

  else
  {
    v9 = 2.0;
  }

  v10 = width;
  v11 = v9;
  result.height = v11;
  result.width = v10;
  return result;
}

- (CGSize)_intrinsicSizeWithinSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v6 = objc_opt_class();
  WeakRetained = objc_loadWeakRetained(&self->_progressControlView);
  [v6 intrinsicSizeWithinSize:WeakRetained control:{width, height}];
  v9 = v8;
  v11 = v10;

  v12 = v9;
  v13 = v11;
  result.height = v13;
  result.width = v12;
  return result;
}

- (UIEdgeInsets)alignmentRectInsets
{
  WeakRetained = objc_loadWeakRetained(&self->_progressControlView);
  v10 = [WeakRetained trackImage];
  if (v10)
  {

LABEL_4:
    v12 = objc_loadWeakRetained(&self->_progressControlView);
    v13 = [v12 trackImage];
    if (v13 && ((v2 = objc_loadWeakRetained(&self->_progressControlView), [v2 progressImage], (v3 = objc_claimAutoreleasedReturnValue()) == 0) || (v4 = objc_loadWeakRetained(&self->_progressControlView), objc_msgSend(v4, "progressImage"), v5 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v5, "size"), v15 = v14, v6 = objc_loadWeakRetained(&self->_progressControlView), objc_msgSend(v6, "trackImage"), v7 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v7, "size"), v15 <= v16)))
    {
      v27 = objc_loadWeakRetained(&self->_progressControlView);
      v28 = [v27 trackImage];
      [v28 alignmentRectInsets];
      v20 = v29;
      v22 = v30;
      v24 = v31;
      v26 = v32;

      if (!v3)
      {
LABEL_11:

LABEL_12:
        goto LABEL_13;
      }
    }

    else
    {
      v17 = objc_loadWeakRetained(&self->_progressControlView);
      v18 = [v17 progressImage];
      [v18 alignmentRectInsets];
      v20 = v19;
      v22 = v21;
      v24 = v23;
      v26 = v25;

      if (!v13)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_11;
  }

  v11 = objc_loadWeakRetained(&self->_progressControlView);
  v2 = [v11 progressImage];

  if (v2)
  {
    goto LABEL_4;
  }

  v37 = objc_loadWeakRetained(&self->_progressControlView);
  v38 = [v37 progressViewStyle];

  if (v38 == 1)
  {
    v22 = 0.0;
    v24 = 1.0;
    v26 = 0.0;
    v20 = 0.0;
  }

  else
  {
    v43.receiver = self;
    v43.super_class = UIProgressViewModernVisualElement;
    [(UIView *)&v43 alignmentRectInsets];
    v20 = v39;
    v22 = v40;
    v24 = v41;
    v26 = v42;
  }

LABEL_13:
  v33 = v20;
  v34 = v22;
  v35 = v24;
  v36 = v26;
  result.right = v36;
  result.bottom = v35;
  result.left = v34;
  result.top = v33;
  return result;
}

- (void)setProgressViewStyle:(int64_t)a3
{
  [(UIImageView *)self->_trackView setImage:0];
  [(UIImageView *)self->_progressView setImage:0];
  [(UIProgressViewModernVisualElement *)self _updateImages];
  v4 = [(UIProgressViewModernVisualElement *)self progressControlView];
  [v4 sizeToFit];

  [(UIView *)self setNeedsLayout];
  v5 = [(UIProgressViewModernVisualElement *)self progressControlView];
  [v5 invalidateIntrinsicContentSize];
}

- (void)setProgressControlView:(id)a3
{
  objc_storeWeak(&self->_progressControlView, a3);

  [(UIProgressViewModernVisualElement *)self _updateImages];
}

- (BOOL)_shouldTintProgress
{
  WeakRetained = objc_loadWeakRetained(&self->_progressControlView);
  v3 = [WeakRetained progressTintColor];
  v4 = v3 != 0;

  return v4;
}

- (BOOL)_shouldTintTrack
{
  WeakRetained = objc_loadWeakRetained(&self->_progressControlView);
  v3 = [WeakRetained trackTintColor];
  v4 = v3 != 0;

  return v4;
}

- (id)_appropriateTrackImage
{
  if ([(UIView *)self _canDrawContent])
  {
    v3 = 0;
    goto LABEL_13;
  }

  v3 = [(UIImageView *)self->_trackView image];
  v4 = [(UIProgressViewModernVisualElement *)self _shouldTintTrack];
  WeakRetained = objc_loadWeakRetained(&self->_progressControlView);
  v6 = WeakRetained;
  if (!v4 || v3)
  {
    v22 = [WeakRetained trackImage];

    if (!v22)
    {
      goto LABEL_11;
    }

    v10 = objc_loadWeakRetained(&self->_progressControlView);
    v21 = [v10 trackImage];
  }

  else
  {
    v7 = [WeakRetained progressViewStyle];
    v8 = @"Default";
    if (v7 == 1)
    {
      v8 = @"Bar";
    }

    v9 = v8;

    v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"UIProgressBarCustomMaskOuter_%@.png", v9];
    v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"UIProgressBarCustomShineOuter_%@.png", v9];

    v11 = _UIImageWithName(v10);
    v12 = _UIImageWithName(v3);
    [v11 size];
    v14 = v13;
    v16 = v15;
    v17 = objc_loadWeakRetained(&self->_progressControlView);
    v18 = [v17 trackTintColor];
    v19 = [UIImage _tintedImageForSize:v18 withTint:v12 effectsImage:v11 maskImage:0 style:v14, v16];

    [v11 size];
    v21 = [v19 resizableImageWithCapInsets:{0.0, (v20 + -1.0) * 0.5, 0.0, (v20 + -1.0) * 0.5}];
  }

  v3 = v21;
LABEL_11:
  if (!v3)
  {
    v23 = objc_opt_class();
    v24 = objc_loadWeakRetained(&self->_progressControlView);
    v25 = [v24 progressViewStyle];
    v26 = objc_loadWeakRetained(&self->_progressControlView);
    v3 = [v23 _standardOuterImageForStyle:v25 barStyle:{objc_msgSend(v26, "barStyle")}];
  }

LABEL_13:

  return v3;
}

- (id)_appropriateProgressImage
{
  if ([(UIView *)self _canDrawContent])
  {
    v3 = 0;
    goto LABEL_13;
  }

  v3 = [(UIImageView *)self->_progressView image];
  v4 = [(UIProgressViewModernVisualElement *)self _shouldTintProgress];
  WeakRetained = objc_loadWeakRetained(&self->_progressControlView);
  v6 = WeakRetained;
  if (!v4 || v3)
  {
    v22 = [WeakRetained progressImage];

    if (!v22)
    {
      goto LABEL_11;
    }

    v10 = objc_loadWeakRetained(&self->_progressControlView);
    v21 = [v10 progressImage];
  }

  else
  {
    v7 = [WeakRetained progressViewStyle];
    v8 = @"Default";
    if (v7 == 1)
    {
      v8 = @"Bar";
    }

    v9 = v8;

    v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"UIProgressBarCustomMaskInner_%@.png", v9];
    v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"UIProgressBarCustomShineInner_%@.png", v9];

    v11 = _UIImageWithName(v10);
    v12 = _UIImageWithName(v3);
    [v11 size];
    v14 = v13;
    v16 = v15;
    v17 = objc_loadWeakRetained(&self->_progressControlView);
    v18 = [v17 progressTintColor];
    v19 = [UIImage _tintedImageForSize:v18 withTint:v12 effectsImage:v11 maskImage:0 style:v14, v16];

    [v11 size];
    v21 = [v19 resizableImageWithCapInsets:{0.0, (v20 + -1.0) * 0.5, 0.0, (v20 + -1.0) * 0.5}];
  }

  v3 = v21;
LABEL_11:
  if (!v3)
  {
    v23 = objc_opt_class();
    v24 = objc_loadWeakRetained(&self->_progressControlView);
    v25 = [v24 progressViewStyle];
    v26 = objc_loadWeakRetained(&self->_progressControlView);
    v3 = [v23 _standardInnerImageForStyle:v25 barStyle:{objc_msgSend(v26, "barStyle")}];
  }

LABEL_13:

  return v3;
}

- (void)_setupShadow
{
  if (!self->_shadowView)
  {
    v3 = [UIView alloc];
    v4 = [(UIProgressViewModernVisualElement *)self _effectiveContentView];
    [v4 bounds];
    v5 = [(UIView *)v3 initWithFrame:?];
    shadowView = self->_shadowView;
    self->_shadowView = v5;

    [(UIView *)self->_shadowView setOpaque:0];
    [(UIView *)self->_shadowView setBackgroundColor:0];
    [(UIView *)self insertSubview:self->_shadowView atIndex:0];
    v10 = [(UIView *)self->_shadowView layer];
    [(UIView *)self->_contentView frame];
    [v10 setContents:{+[_UIStretchableShadow shadowWithRadius:cornerRadius:](_UIStretchableShadow, "shadowWithRadius:cornerRadius:", 5.0, floor(v7 * 0.5))}];
    [v10 setContentsCenter:{0.5, 0.5, 0.0, 0.0}];
    v8 = [(UIView *)self traitCollection];
    -[UIProgressViewModernVisualElement _shadowOpacityForUserInterfaceStyle:](self, "_shadowOpacityForUserInterfaceStyle:", [v8 userInterfaceStyle]);
    *&v9 = v9;
    [v10 setOpacity:v9];

    [(UIProgressViewModernVisualElement *)self _layoutShadow];
    [(UIView *)self setNeedsLayout];
  }
}

- (void)_layoutShadow
{
  v3 = [(UIProgressViewModernVisualElement *)self _effectiveContentView];
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v17.origin.x = v5;
  v17.origin.y = v7;
  v17.size.width = v9;
  v17.size.height = v11;
  v12 = fmin(CGRectGetHeight(v17) * 0.5, 3.0) + -5.0;
  v18.origin.x = v5;
  v18.origin.y = v7;
  v18.size.width = v9;
  v18.size.height = v11;
  v13 = CGRectGetWidth(v18) + 10.0 + 6.0;
  v19.origin.x = v5;
  v19.origin.y = v7;
  v19.size.width = v9;
  v19.size.height = v11;
  Height = CGRectGetHeight(v19);
  shadowView = self->_shadowView;

  [(UIView *)shadowView setFrame:-8.0, v12, v13, Height + 10.0];
}

- (double)_shadowOpacityForUserInterfaceStyle:(int64_t)a3
{
  v3 = a3 == 2 || a3 == 1000;
  result = 0.2;
  if (v3)
  {
    return 0.5;
  }

  return result;
}

- (void)layoutSubviews
{
  [(UIView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(UIView *)self alignmentRectForFrame:?];
  v12 = v11;
  [(UIView *)self->_contentView setFrame:v4, v6, v8, v10];
  v13 = [(UIProgressViewModernVisualElement *)self _effectiveContentView];
  [v13 bounds];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;

  [(UIImageView *)self->_trackView setFrame:v15, v17, v19, v21];
  WeakRetained = objc_loadWeakRetained(&self->_progressControlView);
  [WeakRetained progress];
  v24 = round(v12 * v23);

  v25 = MEMORY[0x1E695EFF8];
  if ((*(&self->super._viewFlags + 2) & 0x400000) != 0)
  {
    v26 = v12 - v24;
  }

  else
  {
    v26 = *MEMORY[0x1E695EFF8];
  }

  v27 = objc_loadWeakRetained(&self->_progressControlView);
  [v27 progress];
  v29 = v28 == 0.0;
  [(UIView *)self->_progressView alpha];
  if ((v29 ^ (v30 != 0.0)))
  {
LABEL_9:

    goto LABEL_10;
  }

  v31 = [(UIImageView *)self->_progressView image];
  v32 = [v31 _isResizable];

  if (v32)
  {
    v27 = objc_loadWeakRetained(&self->_progressControlView);
    [v27 progress];
    v34 = v33 == 0.0;
    v35 = 1.0;
    if (v34)
    {
      v35 = 0.0;
    }

    [(UIView *)self->_progressView setAlpha:v35];
    goto LABEL_9;
  }

LABEL_10:
  v36 = [(UIImageView *)self->_progressView image];
  v37 = [v36 _isResizable];

  if (v37 && (-[UIImageView image](self->_progressView, "image"), v38 = objc_claimAutoreleasedReturnValue(), [v38 capInsets], v40 = v39, v42 = v41, v38, v43 = v40 + v42, v44 = v43, v24 < v43))
  {
    if ((*(&self->super._viewFlags + 18) & 0x40) != 0)
    {
      v26 = v26 - (v44 - v24);
    }
  }

  else
  {
    v44 = v24;
  }

  v45 = *(v25 + 8);
  v46 = objc_loadWeakRetained(&self->_progressControlView);
  v47 = [v46 progressImage];

  if (v47)
  {
    v48 = objc_loadWeakRetained(&self->_progressControlView);
    v49 = [v48 progressImage];
    [v49 alignmentRectInsets];
    v51 = v50;
    v53 = v52;

    v44 = v44 + v51 + v53;
    if ((*(&self->super._viewFlags + 18) & 0x40) != 0)
    {
      v26 = v26 - (v51 + v53);
    }
  }

  progressView = self->_progressView;

  [(UIImageView *)progressView setFrame:v26, v45, v44, v21];
}

- (void)_dynamicUserInterfaceTraitDidChange
{
  v3.receiver = self;
  v3.super_class = UIProgressViewModernVisualElement;
  [(UIView *)&v3 _dynamicUserInterfaceTraitDidChange];
  if (dyld_program_sdk_at_least())
  {
    [(UIProgressViewModernVisualElement *)self _updateImages];
  }
}

- (void)tintColorDidChange
{
  v3.receiver = self;
  v3.super_class = UIProgressViewModernVisualElement;
  [(UIView *)&v3 tintColorDidChange];
  [(UIProgressViewModernVisualElement *)self _updateImages];
}

- (void)setProgress:(float)a3 animated:(BOOL)a4 duration:(double)a5 delay:(double)a6 options:(unint64_t)a7
{
  if (a4)
  {
    self->_isAnimating = 1;
    v12 = [(UIImageView *)self->_progressView image];
    if ([v12 _isResizable])
    {
      if (a3 == 0.0)
      {

LABEL_14:
        a5 = fmax(a5, 0.2);
        goto LABEL_15;
      }

      [(UIView *)self->_progressView alpha];
      v14 = v13;

      if (v14 == 0.0)
      {
        goto LABEL_14;
      }
    }

    else
    {
    }

LABEL_15:
    [(UIView *)self setNeedsLayout];
    v15[4] = self;
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __81__UIProgressViewModernVisualElement_setProgress_animated_duration_delay_options___block_invoke;
    v16[3] = &unk_1E70F3590;
    v16[4] = self;
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __81__UIProgressViewModernVisualElement_setProgress_animated_duration_delay_options___block_invoke_2;
    v15[3] = &unk_1E70F5AC0;
    [UIView animateWithDuration:a7 delay:v16 options:v15 animations:a5 completion:a6];
    return;
  }

  if ([(UIView *)self _canDrawContent:a4])
  {

    [(UIView *)self setNeedsDisplay];
  }

  else
  {

    [(UIView *)self setNeedsLayout];
  }
}

- (void)setProgressTintColor:(id)a3
{
  [(UIImageView *)self->_progressView setImage:0];
  [(UIProgressViewModernVisualElement *)self _updateImages];
  if (!self->_isAnimating)
  {

    [(UIView *)self setNeedsLayout];
  }
}

- (void)setProgressImage:(id)a3
{
  [(UIImageView *)self->_progressView setImage:0];
  [(UIProgressViewModernVisualElement *)self _updateImages];
  [(UIView *)self invalidateIntrinsicContentSize];
  if (!self->_isAnimating)
  {

    [(UIView *)self setNeedsLayout];
  }
}

- (void)setTrackTintColor:(id)a3
{
  [(UIImageView *)self->_trackView setImage:0];
  [(UIProgressViewModernVisualElement *)self _updateImages];

  [(UIView *)self setNeedsLayout];
}

- (void)setTrackImage:(id)a3
{
  [(UIImageView *)self->_trackView setImage:0];
  [(UIProgressViewModernVisualElement *)self _updateImages];
  [(UIView *)self setNeedsLayout];

  [(UIView *)self invalidateIntrinsicContentSize];
}

- (void)setBarStyle:(int64_t)a3
{
  [(UIProgressViewModernVisualElement *)self _updateImages];

  [(UIView *)self setNeedsLayout];
}

+ (id)_tintedImageWithTraitCollection:(id)a3 forHeight:(double)a4 andColors:(id)a5 roundingRectCorners:(unint64_t)a6
{
  v52 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a5;
  v11 = [v10 count];
  v12 = v11 > 1;
  v13 = [MEMORY[0x1E695DF70] array];
  if (v11 < 2)
  {
    v20 = 0;
  }

  else
  {
    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    v14 = v10;
    v15 = [v14 countByEnumeratingWithState:&v47 objects:v51 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v48;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v48 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = [*(*(&v47 + 1) + 8 * i) resolvedColorWithTraitCollection:v9];
          [v13 addObject:{objc_msgSend(v19, "CGColor")}];
        }

        v16 = [v14 countByEnumeratingWithState:&v47 objects:v51 count:16];
      }

      while (v16);
    }

    v20 = CGGradientCreateWithColors(0, v13, 0);
  }

  v21 = [UIGraphicsImageRenderer alloc];
  v22 = +[UIGraphicsImageRendererFormat preferredFormat];
  v23 = [(UIGraphicsImageRenderer *)v21 initWithSize:v22 format:a4 + a4 + 1.0, a4];

  v31 = MEMORY[0x1E69E9820];
  v32 = 3221225472;
  v33 = __109__UIProgressViewModernVisualElement__tintedImageWithTraitCollection_forHeight_andColors_roundingRectCorners___block_invoke;
  v34 = &unk_1E7123260;
  v37 = 0;
  v38 = 0;
  v39 = a4 + a4 + 1.0;
  v40 = a4;
  v41 = a6;
  v42 = a4 * 0.5;
  v43 = a4 * 0.5;
  v46 = v12;
  v44 = v20;
  v45 = a4;
  v35 = v10;
  v36 = v9;
  v24 = v9;
  v25 = v10;
  v26 = [(UIGraphicsImageRenderer *)v23 imageWithActions:&v31];
  v27 = [v26 resizableImageWithCapInsets:1 resizingMode:{0.0, a4, 0.0, a4, v31, v32, v33, v34}];
  v28 = v27;
  if (a6 != -1)
  {
    v29 = [v27 imageFlippedForRightToLeftLayoutDirection];

    v28 = v29;
  }

  return v28;
}

void __109__UIProgressViewModernVisualElement__tintedImageWithTraitCollection_forHeight_andColors_roundingRectCorners___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 80);
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  v6 = *(a1 + 64);
  v7 = *(a1 + 72);
  v8 = *(a1 + 88);
  v9 = *(a1 + 96);
  v10 = a2;
  v15 = [UIBezierPath bezierPathWithRoundedRect:v3 byRoundingCorners:v4 cornerRadii:v5, v6, v7, v8, v9];
  v11 = [v10 CGContext];

  v12 = v15;
  CGContextAddPath(v11, [v15 CGPath]);
  CGContextClip(v11);
  if (*(a1 + 120) == 1)
  {
    v17.y = *(a1 + 112);
    v17.x = 0.0;
    CGContextDrawLinearGradient(v11, *(a1 + 104), *MEMORY[0x1E695EFF8], v17, 0);
    CGGradientRelease(*(a1 + 104));
  }

  else
  {
    v13 = [*(a1 + 32) firstObject];
    v14 = [v13 resolvedColorWithTraitCollection:*(a1 + 40)];
    [v14 setFill];

    CGContextFillRect(v11, *(a1 + 48));
  }
}

- (void)removeLegacySubviewsForArchive:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_progressView)
  {
    [v4 removeObject:?];
    v4 = v5;
  }

  if (self->_trackView)
  {
    [v5 removeObject:?];
    v4 = v5;
  }

  if (self->_effectView)
  {
    [v5 removeObject:?];
    v4 = v5;
  }

  if (self->_contentView)
  {
    [v5 removeObject:?];
    v4 = v5;
  }
}

- (void)_reducedTransparencyDidChange:(id)a3
{
  if (_UISolariumEnabled())
  {
    v4 = 7;
  }

  else if (_AXSEnhanceBackgroundContrastEnabled())
  {
    v4 = 4010;
  }

  else
  {
    v4 = 5001;
  }

  v5 = [UIBlurEffect _effectWithStyle:v4 invertAutomaticStyle:1];
  [(UIVisualEffectView *)self->_effectView setEffect:v5];
}

@end