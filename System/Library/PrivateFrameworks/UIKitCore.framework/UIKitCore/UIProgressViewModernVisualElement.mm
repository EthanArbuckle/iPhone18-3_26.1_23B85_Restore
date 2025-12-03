@interface UIProgressViewModernVisualElement
+ (BOOL)usesLegacySubviewStructure;
+ (CGSize)intrinsicSizeWithinSize:(CGSize)size control:(id)control;
+ (id)_standardInnerImageForStyle:(int64_t)style barStyle:(int64_t)barStyle;
+ (id)_standardOuterImageForStyle:(int64_t)style barStyle:(int64_t)barStyle;
+ (id)_tintedImageWithTraitCollection:(id)collection forHeight:(double)height andColors:(id)colors roundingRectCorners:(unint64_t)corners;
+ (unint64_t)_indexForStyle:(int64_t)style barStyle:(int64_t)barStyle;
+ (void)_fillImagesForIndex:(unint64_t)index style:(int64_t)style barStyle:(int64_t)barStyle;
- (BOOL)_shouldTintProgress;
- (BOOL)_shouldTintTrack;
- (CGSize)_intrinsicSizeWithinSize:(CGSize)size;
- (UIEdgeInsets)alignmentRectInsets;
- (UIProgressView)progressControlView;
- (double)_shadowOpacityForUserInterfaceStyle:(int64_t)style;
- (id)_appropriateProgressImage;
- (id)_appropriateTrackImage;
- (id)_defaultTrackColorForCurrentStyle;
- (id)_effectiveContentView;
- (unint64_t)_roundedCornersForProgressForCurrentStyle;
- (unint64_t)_roundedCornersForTrackForCurrentStyle;
- (void)_dynamicUserInterfaceTraitDidChange;
- (void)_layoutShadow;
- (void)_reducedTransparencyDidChange:(id)change;
- (void)_setupShadow;
- (void)_updateImages;
- (void)layoutSubviews;
- (void)removeLegacySubviewsForArchive:(id)archive;
- (void)setBarStyle:(int64_t)style;
- (void)setProgress:(float)progress animated:(BOOL)animated duration:(double)duration delay:(double)delay options:(unint64_t)options;
- (void)setProgressControlView:(id)view;
- (void)setProgressImage:(id)image;
- (void)setProgressTintColor:(id)color;
- (void)setProgressViewStyle:(int64_t)style;
- (void)setTrackImage:(id)image;
- (void)setTrackTintColor:(id)color;
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

    _effectiveContentView = [(UIProgressViewModernVisualElement *)self _effectiveContentView];
    [_effectiveContentView addSubview:self->_trackView];
  }

  if (!self->_progressView)
  {
    v7 = [UIImageView alloc];
    v8 = [(UIImageView *)v7 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    progressView = self->_progressView;
    self->_progressView = v8;

    _effectiveContentView2 = [(UIProgressViewModernVisualElement *)self _effectiveContentView];
    [_effectiveContentView2 addSubview:self->_progressView];

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
  trackImage = [v13 trackImage];

  if (trackImage)
  {
    v15 = self->_trackView;
    _appropriateTrackImage = [(UIProgressViewModernVisualElement *)self _appropriateTrackImage];
    [(UIImageView *)v15 setImage:_appropriateTrackImage];
    goto LABEL_19;
  }

  v17 = objc_loadWeakRetained(&self->_progressControlView);
  trackTintColor = [v17 trackTintColor];

  if (trackTintColor)
  {
    v37 = 0.0;
    v38 = 0.0;
    v35 = 0.0;
    v36 = 0.0;
  }

  else
  {
    trackTintColor = [(UIProgressViewModernVisualElement *)self _defaultTrackColorForCurrentStyle];
    v37 = 0.0;
    v38 = 0.0;
    v35 = 0.0;
    v36 = 0.0;
    if (!trackTintColor)
    {
      goto LABEL_14;
    }
  }

  if ([trackTintColor getRed:&v38 green:&v37 blue:&v36 alpha:&v35])
  {
    v19 = [UIColor colorWithRed:v38 * 0.978378378 green:v37 * 0.978378378 blue:v36 * 0.978378378 alpha:v35];
    v42[0] = v19;
    v42[1] = trackTintColor;
    _appropriateTrackImage = [MEMORY[0x1E695DEC8] arrayWithObjects:v42 count:2];

    goto LABEL_15;
  }

LABEL_14:
  v41 = trackTintColor;
  _appropriateTrackImage = [MEMORY[0x1E695DEC8] arrayWithObjects:&v41 count:1];
LABEL_15:
  if (![_appropriateTrackImage isEqual:self->_trackColors] || (-[UIImageView image](self->_trackView, "image"), v20 = objc_claimAutoreleasedReturnValue(), v20, !v20))
  {
    objc_storeStrong(&self->_trackColors, _appropriateTrackImage);
    v21 = self->_trackView;
    traitCollection = [(UIView *)self traitCollection];
    v23 = [UIProgressViewModernVisualElement _tintedImageWithTraitCollection:traitCollection forHeight:self->_trackColors andColors:[(UIProgressViewModernVisualElement *)self _roundedCornersForTrackForCurrentStyle] roundingRectCorners:Height];
    [(UIImageView *)v21 setImage:v23];
  }

LABEL_19:
  v24 = objc_loadWeakRetained(&self->_progressControlView);
  progressImage = [v24 progressImage];

  if (progressImage)
  {
    _appropriateProgressImage = [(UIProgressViewModernVisualElement *)self _appropriateProgressImage];
    [(UIImageView *)self->_progressView setImage:_appropriateProgressImage];
    if (([_appropriateProgressImage _isResizable] & 1) == 0)
    {
      [(UIView *)self->_progressView setAlpha:1.0];
    }

    goto LABEL_34;
  }

  v27 = objc_loadWeakRetained(&self->_progressControlView);
  _appropriateProgressImage = [v27 progressTintColor];

  if (!_appropriateProgressImage)
  {
    _inheritedInteractionTintColor = [(UIView *)self _inheritedInteractionTintColor];
    if (!_inheritedInteractionTintColor)
    {
      _appropriateProgressImage = +[UIColor blackColor];
      v37 = 0.0;
      v38 = 0.0;
      v35 = 0.0;
      v36 = 0.0;
      if (!_appropriateProgressImage)
      {
        goto LABEL_29;
      }

      goto LABEL_26;
    }

    _appropriateProgressImage = _inheritedInteractionTintColor;
  }

  v37 = 0.0;
  v38 = 0.0;
  v35 = 0.0;
  v36 = 0.0;
LABEL_26:
  if ([_appropriateProgressImage getRed:&v38 green:&v37 blue:&v36 alpha:&v35])
  {
    v29 = [UIColor colorWithRed:v38 * 0.978378378 green:v37 * 0.978378378 blue:v36 * 0.978378378 alpha:v35];
    v40[0] = v29;
    v40[1] = _appropriateProgressImage;
    v30 = [MEMORY[0x1E695DEC8] arrayWithObjects:v40 count:2];

    goto LABEL_30;
  }

LABEL_29:
  v39 = _appropriateProgressImage;
  v30 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v39 count:1];
LABEL_30:
  if (![v30 isEqual:self->_progressColors] || (-[UIImageView image](self->_progressView, "image"), v31 = objc_claimAutoreleasedReturnValue(), v31, !v31))
  {
    objc_storeStrong(&self->_progressColors, v30);
    v32 = self->_progressView;
    traitCollection2 = [(UIView *)self traitCollection];
    v34 = [UIProgressViewModernVisualElement _tintedImageWithTraitCollection:traitCollection2 forHeight:self->_progressColors andColors:[(UIProgressViewModernVisualElement *)self _roundedCornersForProgressForCurrentStyle] roundingRectCorners:Height];
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
  progressViewStyle = [WeakRetained progressViewStyle];

  if (progressViewStyle)
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
  progressViewStyle = [WeakRetained progressViewStyle];

  if (progressViewStyle)
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
  progressViewStyle = [WeakRetained progressViewStyle];

  if (progressViewStyle)
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

+ (unint64_t)_indexForStyle:(int64_t)style barStyle:(int64_t)barStyle
{
  v6 = +[UIDevice currentDevice];
  userInterfaceIdiom = [v6 userInterfaceIdiom];

  if (style == 1 && (userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1 && barStyle == 3)
  {
    return style + 1;
  }

  else
  {
    return style;
  }
}

+ (void)_fillImagesForIndex:(unint64_t)index style:(int64_t)style barStyle:(int64_t)barStyle
{
  v23 = __defaultImageSuffixes[index];
  v8 = +[UIDevice currentDevice];
  userInterfaceIdiom = [v8 userInterfaceIdiom];

  if (barStyle != 3 && style == 1 && (userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    v10 = [(__CFString *)v23 stringByAppendingString:@"_Silver"];

    v11 = v10;
  }

  else
  {
    v11 = v23;
  }

  v12 = &_MergedGlobals_11_9[8 * index];
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

+ (id)_standardOuterImageForStyle:(int64_t)style barStyle:(int64_t)barStyle
{
  v7 = [self _indexForStyle:? barStyle:?];
  [self _fillImagesForIndex:v7 style:style barStyle:barStyle];
  v8 = *&_MergedGlobals_11_9[8 * v7 + 40];

  return v8;
}

+ (id)_standardInnerImageForStyle:(int64_t)style barStyle:(int64_t)barStyle
{
  v7 = [self _indexForStyle:? barStyle:?];
  [self _fillImagesForIndex:v7 style:style barStyle:barStyle];
  v8 = *&_MergedGlobals_11_9[8 * v7 + 16];

  return v8;
}

+ (CGSize)intrinsicSizeWithinSize:(CGSize)size control:(id)control
{
  width = size.width;
  controlCopy = control;
  v7 = [self _standardOuterImageForStyle:objc_msgSend(controlCopy barStyle:{"progressViewStyle"), objc_msgSend(controlCopy, "barStyle")}];
  [v7 size];
  if ([controlCopy progressViewStyle])
  {
    UICeilToViewScale(controlCopy);
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

- (CGSize)_intrinsicSizeWithinSize:(CGSize)size
{
  height = size.height;
  width = size.width;
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
  trackImage = [WeakRetained trackImage];
  if (trackImage)
  {

LABEL_4:
    v12 = objc_loadWeakRetained(&self->_progressControlView);
    trackImage2 = [v12 trackImage];
    if (trackImage2 && ((progressImage2 = objc_loadWeakRetained(&self->_progressControlView), [progressImage2 progressImage], (v3 = objc_claimAutoreleasedReturnValue()) == 0) || (v4 = objc_loadWeakRetained(&self->_progressControlView), objc_msgSend(v4, "progressImage"), v5 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v5, "size"), v15 = v14, v6 = objc_loadWeakRetained(&self->_progressControlView), objc_msgSend(v6, "trackImage"), v7 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v7, "size"), v15 <= v16)))
    {
      v27 = objc_loadWeakRetained(&self->_progressControlView);
      trackImage3 = [v27 trackImage];
      [trackImage3 alignmentRectInsets];
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
      progressImage = [v17 progressImage];
      [progressImage alignmentRectInsets];
      v20 = v19;
      v22 = v21;
      v24 = v23;
      v26 = v25;

      if (!trackImage2)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_11;
  }

  v11 = objc_loadWeakRetained(&self->_progressControlView);
  progressImage2 = [v11 progressImage];

  if (progressImage2)
  {
    goto LABEL_4;
  }

  v37 = objc_loadWeakRetained(&self->_progressControlView);
  progressViewStyle = [v37 progressViewStyle];

  if (progressViewStyle == 1)
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

- (void)setProgressViewStyle:(int64_t)style
{
  [(UIImageView *)self->_trackView setImage:0];
  [(UIImageView *)self->_progressView setImage:0];
  [(UIProgressViewModernVisualElement *)self _updateImages];
  progressControlView = [(UIProgressViewModernVisualElement *)self progressControlView];
  [progressControlView sizeToFit];

  [(UIView *)self setNeedsLayout];
  progressControlView2 = [(UIProgressViewModernVisualElement *)self progressControlView];
  [progressControlView2 invalidateIntrinsicContentSize];
}

- (void)setProgressControlView:(id)view
{
  objc_storeWeak(&self->_progressControlView, view);

  [(UIProgressViewModernVisualElement *)self _updateImages];
}

- (BOOL)_shouldTintProgress
{
  WeakRetained = objc_loadWeakRetained(&self->_progressControlView);
  progressTintColor = [WeakRetained progressTintColor];
  v4 = progressTintColor != 0;

  return v4;
}

- (BOOL)_shouldTintTrack
{
  WeakRetained = objc_loadWeakRetained(&self->_progressControlView);
  trackTintColor = [WeakRetained trackTintColor];
  v4 = trackTintColor != 0;

  return v4;
}

- (id)_appropriateTrackImage
{
  if ([(UIView *)self _canDrawContent])
  {
    image = 0;
    goto LABEL_13;
  }

  image = [(UIImageView *)self->_trackView image];
  _shouldTintTrack = [(UIProgressViewModernVisualElement *)self _shouldTintTrack];
  WeakRetained = objc_loadWeakRetained(&self->_progressControlView);
  v6 = WeakRetained;
  if (!_shouldTintTrack || image)
  {
    trackImage = [WeakRetained trackImage];

    if (!trackImage)
    {
      goto LABEL_11;
    }

    v10 = objc_loadWeakRetained(&self->_progressControlView);
    trackImage2 = [v10 trackImage];
  }

  else
  {
    progressViewStyle = [WeakRetained progressViewStyle];
    v8 = @"Default";
    if (progressViewStyle == 1)
    {
      v8 = @"Bar";
    }

    v9 = v8;

    v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"UIProgressBarCustomMaskOuter_%@.png", v9];
    image = [MEMORY[0x1E696AEC0] stringWithFormat:@"UIProgressBarCustomShineOuter_%@.png", v9];

    v11 = _UIImageWithName(v10);
    v12 = _UIImageWithName(image);
    [v11 size];
    v14 = v13;
    v16 = v15;
    v17 = objc_loadWeakRetained(&self->_progressControlView);
    trackTintColor = [v17 trackTintColor];
    v19 = [UIImage _tintedImageForSize:trackTintColor withTint:v12 effectsImage:v11 maskImage:0 style:v14, v16];

    [v11 size];
    trackImage2 = [v19 resizableImageWithCapInsets:{0.0, (v20 + -1.0) * 0.5, 0.0, (v20 + -1.0) * 0.5}];
  }

  image = trackImage2;
LABEL_11:
  if (!image)
  {
    v23 = objc_opt_class();
    v24 = objc_loadWeakRetained(&self->_progressControlView);
    progressViewStyle2 = [v24 progressViewStyle];
    v26 = objc_loadWeakRetained(&self->_progressControlView);
    image = [v23 _standardOuterImageForStyle:progressViewStyle2 barStyle:{objc_msgSend(v26, "barStyle")}];
  }

LABEL_13:

  return image;
}

- (id)_appropriateProgressImage
{
  if ([(UIView *)self _canDrawContent])
  {
    image = 0;
    goto LABEL_13;
  }

  image = [(UIImageView *)self->_progressView image];
  _shouldTintProgress = [(UIProgressViewModernVisualElement *)self _shouldTintProgress];
  WeakRetained = objc_loadWeakRetained(&self->_progressControlView);
  v6 = WeakRetained;
  if (!_shouldTintProgress || image)
  {
    progressImage = [WeakRetained progressImage];

    if (!progressImage)
    {
      goto LABEL_11;
    }

    v10 = objc_loadWeakRetained(&self->_progressControlView);
    progressImage2 = [v10 progressImage];
  }

  else
  {
    progressViewStyle = [WeakRetained progressViewStyle];
    v8 = @"Default";
    if (progressViewStyle == 1)
    {
      v8 = @"Bar";
    }

    v9 = v8;

    v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"UIProgressBarCustomMaskInner_%@.png", v9];
    image = [MEMORY[0x1E696AEC0] stringWithFormat:@"UIProgressBarCustomShineInner_%@.png", v9];

    v11 = _UIImageWithName(v10);
    v12 = _UIImageWithName(image);
    [v11 size];
    v14 = v13;
    v16 = v15;
    v17 = objc_loadWeakRetained(&self->_progressControlView);
    progressTintColor = [v17 progressTintColor];
    v19 = [UIImage _tintedImageForSize:progressTintColor withTint:v12 effectsImage:v11 maskImage:0 style:v14, v16];

    [v11 size];
    progressImage2 = [v19 resizableImageWithCapInsets:{0.0, (v20 + -1.0) * 0.5, 0.0, (v20 + -1.0) * 0.5}];
  }

  image = progressImage2;
LABEL_11:
  if (!image)
  {
    v23 = objc_opt_class();
    v24 = objc_loadWeakRetained(&self->_progressControlView);
    progressViewStyle2 = [v24 progressViewStyle];
    v26 = objc_loadWeakRetained(&self->_progressControlView);
    image = [v23 _standardInnerImageForStyle:progressViewStyle2 barStyle:{objc_msgSend(v26, "barStyle")}];
  }

LABEL_13:

  return image;
}

- (void)_setupShadow
{
  if (!self->_shadowView)
  {
    v3 = [UIView alloc];
    _effectiveContentView = [(UIProgressViewModernVisualElement *)self _effectiveContentView];
    [_effectiveContentView bounds];
    v5 = [(UIView *)v3 initWithFrame:?];
    shadowView = self->_shadowView;
    self->_shadowView = v5;

    [(UIView *)self->_shadowView setOpaque:0];
    [(UIView *)self->_shadowView setBackgroundColor:0];
    [(UIView *)self insertSubview:self->_shadowView atIndex:0];
    layer = [(UIView *)self->_shadowView layer];
    [(UIView *)self->_contentView frame];
    [layer setContents:{+[_UIStretchableShadow shadowWithRadius:cornerRadius:](_UIStretchableShadow, "shadowWithRadius:cornerRadius:", 5.0, floor(v7 * 0.5))}];
    [layer setContentsCenter:{0.5, 0.5, 0.0, 0.0}];
    traitCollection = [(UIView *)self traitCollection];
    -[UIProgressViewModernVisualElement _shadowOpacityForUserInterfaceStyle:](self, "_shadowOpacityForUserInterfaceStyle:", [traitCollection userInterfaceStyle]);
    *&v9 = v9;
    [layer setOpacity:v9];

    [(UIProgressViewModernVisualElement *)self _layoutShadow];
    [(UIView *)self setNeedsLayout];
  }
}

- (void)_layoutShadow
{
  _effectiveContentView = [(UIProgressViewModernVisualElement *)self _effectiveContentView];
  [_effectiveContentView bounds];
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

- (double)_shadowOpacityForUserInterfaceStyle:(int64_t)style
{
  v3 = style == 2 || style == 1000;
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
  _effectiveContentView = [(UIProgressViewModernVisualElement *)self _effectiveContentView];
  [_effectiveContentView bounds];
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

  image = [(UIImageView *)self->_progressView image];
  _isResizable = [image _isResizable];

  if (_isResizable)
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
  image2 = [(UIImageView *)self->_progressView image];
  _isResizable2 = [image2 _isResizable];

  if (_isResizable2 && (-[UIImageView image](self->_progressView, "image"), v38 = objc_claimAutoreleasedReturnValue(), [v38 capInsets], v40 = v39, v42 = v41, v38, v43 = v40 + v42, v44 = v43, v24 < v43))
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
  progressImage = [v46 progressImage];

  if (progressImage)
  {
    v48 = objc_loadWeakRetained(&self->_progressControlView);
    progressImage2 = [v48 progressImage];
    [progressImage2 alignmentRectInsets];
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

- (void)setProgress:(float)progress animated:(BOOL)animated duration:(double)duration delay:(double)delay options:(unint64_t)options
{
  if (animated)
  {
    self->_isAnimating = 1;
    image = [(UIImageView *)self->_progressView image];
    if ([image _isResizable])
    {
      if (progress == 0.0)
      {

LABEL_14:
        duration = fmax(duration, 0.2);
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
    [UIView animateWithDuration:options delay:v16 options:v15 animations:duration completion:delay];
    return;
  }

  if ([(UIView *)self _canDrawContent:animated])
  {

    [(UIView *)self setNeedsDisplay];
  }

  else
  {

    [(UIView *)self setNeedsLayout];
  }
}

- (void)setProgressTintColor:(id)color
{
  [(UIImageView *)self->_progressView setImage:0];
  [(UIProgressViewModernVisualElement *)self _updateImages];
  if (!self->_isAnimating)
  {

    [(UIView *)self setNeedsLayout];
  }
}

- (void)setProgressImage:(id)image
{
  [(UIImageView *)self->_progressView setImage:0];
  [(UIProgressViewModernVisualElement *)self _updateImages];
  [(UIView *)self invalidateIntrinsicContentSize];
  if (!self->_isAnimating)
  {

    [(UIView *)self setNeedsLayout];
  }
}

- (void)setTrackTintColor:(id)color
{
  [(UIImageView *)self->_trackView setImage:0];
  [(UIProgressViewModernVisualElement *)self _updateImages];

  [(UIView *)self setNeedsLayout];
}

- (void)setTrackImage:(id)image
{
  [(UIImageView *)self->_trackView setImage:0];
  [(UIProgressViewModernVisualElement *)self _updateImages];
  [(UIView *)self setNeedsLayout];

  [(UIView *)self invalidateIntrinsicContentSize];
}

- (void)setBarStyle:(int64_t)style
{
  [(UIProgressViewModernVisualElement *)self _updateImages];

  [(UIView *)self setNeedsLayout];
}

+ (id)_tintedImageWithTraitCollection:(id)collection forHeight:(double)height andColors:(id)colors roundingRectCorners:(unint64_t)corners
{
  v52 = *MEMORY[0x1E69E9840];
  collectionCopy = collection;
  colorsCopy = colors;
  v11 = [colorsCopy count];
  v12 = v11 > 1;
  array = [MEMORY[0x1E695DF70] array];
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
    v14 = colorsCopy;
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

          v19 = [*(*(&v47 + 1) + 8 * i) resolvedColorWithTraitCollection:collectionCopy];
          [array addObject:{objc_msgSend(v19, "CGColor")}];
        }

        v16 = [v14 countByEnumeratingWithState:&v47 objects:v51 count:16];
      }

      while (v16);
    }

    v20 = CGGradientCreateWithColors(0, array, 0);
  }

  v21 = [UIGraphicsImageRenderer alloc];
  v22 = +[UIGraphicsImageRendererFormat preferredFormat];
  height = [(UIGraphicsImageRenderer *)v21 initWithSize:v22 format:height + height + 1.0, height];

  v31 = MEMORY[0x1E69E9820];
  v32 = 3221225472;
  v33 = __109__UIProgressViewModernVisualElement__tintedImageWithTraitCollection_forHeight_andColors_roundingRectCorners___block_invoke;
  v34 = &unk_1E7123260;
  v37 = 0;
  v38 = 0;
  v39 = height + height + 1.0;
  heightCopy = height;
  cornersCopy = corners;
  v42 = height * 0.5;
  v43 = height * 0.5;
  v46 = v12;
  v44 = v20;
  heightCopy2 = height;
  v35 = colorsCopy;
  v36 = collectionCopy;
  v24 = collectionCopy;
  v25 = colorsCopy;
  v26 = [(UIGraphicsImageRenderer *)height imageWithActions:&v31];
  v27 = [v26 resizableImageWithCapInsets:1 resizingMode:{0.0, height, 0.0, height, v31, v32, v33, v34}];
  v28 = v27;
  if (corners != -1)
  {
    imageFlippedForRightToLeftLayoutDirection = [v27 imageFlippedForRightToLeftLayoutDirection];

    v28 = imageFlippedForRightToLeftLayoutDirection;
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

- (void)removeLegacySubviewsForArchive:(id)archive
{
  archiveCopy = archive;
  v5 = archiveCopy;
  if (self->_progressView)
  {
    [archiveCopy removeObject:?];
    archiveCopy = v5;
  }

  if (self->_trackView)
  {
    [v5 removeObject:?];
    archiveCopy = v5;
  }

  if (self->_effectView)
  {
    [v5 removeObject:?];
    archiveCopy = v5;
  }

  if (self->_contentView)
  {
    [v5 removeObject:?];
    archiveCopy = v5;
  }
}

- (void)_reducedTransparencyDidChange:(id)change
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