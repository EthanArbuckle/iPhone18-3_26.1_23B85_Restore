@interface UIActivityIndicatorView
+ (CGSize)defaultSizeForStyle:(int64_t)a3;
+ (id)_imageSetNameForArtworkBasedStyle:(int64_t)a3 outImageCount:(int64_t *)a4;
+ (id)_loadResourcesForArtworkBasedStyle:(int64_t)a3;
- (BOOL)_colorRequiresDynamicTinting;
- (BOOL)_hasClientSetColor;
- (BOOL)_hasShadow;
- (BOOL)_isArtworkBasedStyle;
- (BOOL)_shouldGoBackToBaseStyle;
- (BOOL)_shouldGoToCustomStyle;
- (CGRect)_animatingImageViewFrameForBounds:(CGRect)a3;
- (CGRect)_messageLabelFrameForBounds:(CGRect)a3;
- (CGSize)_defaultSizeConsultingCustomWidthIfApplicable;
- (CGSize)_intrinsicSizeWithinSize:(CGSize)a3;
- (CGSize)shadowOffset;
- (UIActivityIndicatorView)initWithActivityIndicatorStyle:(UIActivityIndicatorViewStyle)style;
- (UIActivityIndicatorView)initWithCoder:(NSCoder *)coder;
- (UIActivityIndicatorView)initWithFrame:(CGRect)frame;
- (UIColor)color;
- (double)_alphaValueForStep:(int64_t)a3;
- (double)_effectiveCustomWidth;
- (double)_spokeLengthForGearWidth:(double)a3;
- (double)_spokeWidthForGearWidth:(double)a3;
- (double)_widthForGearWidth:(double)result;
- (id)_artCacheKeyWithStyle:(int64_t)a3 color:(id)a4;
- (id)_defaultColorForStyle:(int64_t)a3;
- (id)_generateImagesForColor:(id)a3 highlight:(BOOL)a4;
- (id)_generateModernImagesForImages:(id)a3 color:(id)a4;
- (id)_highlightColorForStyle:(int64_t)a3;
- (id)_imageForStep:(int64_t)a3 withColor:(id)a4;
- (id)_imagesForStyle:(int64_t)a3 color:(id)a4 highlight:(BOOL)a5;
- (int64_t)_actualStyleByResolvingAutoUpdatingStyle:(int64_t)a3;
- (int64_t)_customStyleForStyle:(int64_t)a3;
- (int64_t)_defaultStyle;
- (int64_t)_externalStyleForStyle:(int64_t)a3;
- (int64_t)_sizeForStyle:(int64_t)a3;
- (unint64_t)_indexOfFirstImageForStartingAnimation;
- (void)_applicationDidEnterBackground:(id)a3;
- (void)_applicationWillEnterForeground:(id)a3;
- (void)_commonInit;
- (void)_didMoveFromWindow:(id)a3 toWindow:(id)a4;
- (void)_intrinsicContentSizeInvalidatedForChildView:(id)a3;
- (void)_populateArchivedSubviews:(id)a3;
- (void)_refreshStyle;
- (void)_removeAllAnimations:(BOOL)a3;
- (void)_restoreRemovedAnimationsIncludingSubviews;
- (void)_setCustomWidth:(double)a3;
- (void)_setMessage:(id)a3;
- (void)_setUpAnimation;
- (void)_tearDownAnimation;
- (void)_updateLayoutInfo;
- (void)_updateMessageForStyle:(int64_t)a3;
- (void)_updateSubviewFramesWithBounds:(CGRect)a3;
- (void)_updateVisualStyleProperties;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
- (void)layoutSubviews;
- (void)setActivityIndicatorViewStyle:(UIActivityIndicatorViewStyle)activityIndicatorViewStyle;
- (void)setAnimating:(BOOL)a3;
- (void)setAnimationDuration:(double)a3;
- (void)setBounds:(CGRect)a3;
- (void)setColor:(UIColor *)color;
- (void)setFrame:(CGRect)a3;
- (void)setHidesWhenStopped:(BOOL)hidesWhenStopped;
- (void)setHighlighted:(BOOL)a3;
- (void)setShadowColor:(id)a3;
- (void)setShadowOffset:(CGSize)a3;
- (void)setWidth:(double)a3;
- (void)startAnimating;
- (void)stopAnimating;
- (void)tintColorDidChange;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation UIActivityIndicatorView

- (CGSize)_defaultSizeConsultingCustomWidthIfApplicable
{
  if (self->_actualActivityIndicatorViewStyle == 16)
  {
    [(UIActivityIndicatorView *)self _effectiveCustomWidth];
    v3 = v2;
  }

  else
  {
    [objc_opt_class() defaultSizeForStyle:self->_actualActivityIndicatorViewStyle];
  }

  result.height = v3;
  result.width = v2;
  return result;
}

- (void)_commonInit
{
  [(UIActivityIndicatorView *)self setHidesWhenStopped:1];
  self->_shadowOffset = *MEMORY[0x1E695F060];
  v3 = [(UIActivityIndicatorView *)self _internalStyleForStyle:[(UIActivityIndicatorView *)self _defaultStyle]];
  self->_activityIndicatorViewStyle = v3;
  self->_actualActivityIndicatorViewStyle = [(UIActivityIndicatorView *)self _actualStyleByResolvingAutoUpdatingStyle:v3];
  [(UIView *)self setNeedsLayout];
  v4 = [MEMORY[0x1E696AD88] defaultCenter];
  [v4 addObserver:self selector:sel__applicationDidEnterBackground_ name:@"UIApplicationDidEnterBackgroundNotification" object:0];
  [v4 addObserver:self selector:sel__applicationWillEnterForeground_ name:@"UIApplicationWillEnterForegroundNotification" object:0];
}

- (void)_updateVisualStyleProperties
{
  [(_UIActivityIndicatorViewStyleView *)self->_styleView setAnimating:self->_animating];
  [(_UIActivityIndicatorViewStyleView *)self->_styleView setActivityIndicatorViewStyle:self->_activityIndicatorViewStyle];
  [(_UIActivityIndicatorViewStyleView *)self->_styleView setColor:self->_color];
  styleView = self->_styleView;
  hidesWhenStopped = self->_hidesWhenStopped;

  [(_UIActivityIndicatorViewStyleView *)styleView setHidesWhenStopped:hidesWhenStopped];
}

- (int64_t)_defaultStyle
{
  if (dyld_program_sdk_at_least())
  {
    return 100;
  }

  else
  {
    return 1;
  }
}

- (void)_refreshStyle
{
  [(UIView *)self->_styleView removeFromSuperview];
  styleView = self->_styleView;
  self->_styleView = 0;

  v4 = [(UIView *)self traitCollection];
  v5 = [v4 userInterfaceIdiom];

  v6 = [_UIVisualStyleRegistry registryForIdiom:v5];
  v7 = [v6 visualStyleClassForStylableClass:objc_opt_class()];

  if (v7)
  {
    v8 = [[v7 alloc] initWithProvider:self];
    v9 = self->_styleView;
    self->_styleView = v8;
    v10 = v8;

    [(UIView *)self addSubview:self->_styleView];
    [(UIView *)self->_animatingImageView removeFromSuperview];

    [(UIView *)self setHidden:0];
  }

  [(UIView *)self invalidateIntrinsicContentSize];
  [(UIActivityIndicatorView *)self _updateVisualStyleProperties];

  [(UIView *)self setNeedsLayout];
}

- (void)_setUpAnimation
{
  styleView = self->_styleView;
  if (styleView)
  {

    [(_UIActivityIndicatorViewStyleView *)styleView setUpAnimation];
  }

  else
  {
    v4 = [(UIActivityIndicatorView *)self _indexOfFirstImageForStartingAnimation];
    v5 = _reorderImagesToStartAtIndex(self->_spokeImages, v4);
    [(UIImageView *)self->_animatingImageView setAnimationImages:v5];

    spokeHighlightImages = self->_spokeHighlightImages;
    if (spokeHighlightImages)
    {
      v7 = _reorderImagesToStartAtIndex(spokeHighlightImages, v4);
      [(UIImageView *)self->_animatingImageView setHighlightedAnimationImages:v7];
    }

    else
    {
      [(UIImageView *)self->_animatingImageView setHighlightedAnimationImages:0];
    }

    if (self->_duration == 0.0)
    {
      v8 = +[_UIActivityIndicatorSettingsDomain rootSettings];
      [v8 fullLoopDuration];
      [(UIImageView *)self->_animatingImageView setAnimationDuration:?];
    }

    else
    {
      [(UIImageView *)self->_animatingImageView setAnimationDuration:?];
    }

    [(UIImageView *)self->_animatingImageView setAnimationRepeatCount:0];
    animatingImageView = self->_animatingImageView;

    [(UIImageView *)animatingImageView startAnimating];
  }
}

- (unint64_t)_indexOfFirstImageForStartingAnimation
{
  v3 = [(UIActivityIndicatorView *)self isHighlighted];
  animatingImageView = self->_animatingImageView;
  if (v3)
  {
    v5 = [(UIImageView *)animatingImageView highlightedImage];
    v6 = v5;
    if (v5)
    {
      v7 = v5;
    }

    else
    {
      v7 = [(UIImageView *)self->_animatingImageView image];
    }

    v8 = v7;

    if (!v8)
    {
      goto LABEL_22;
    }
  }

  else
  {
    v8 = [(UIImageView *)animatingImageView image];
    if (!v8)
    {
LABEL_22:
      v11 = 0;
      goto LABEL_23;
    }
  }

  v9 = 13;
  if (v3)
  {
    v9 = 12;
  }

  v10 = *(&self->super.super.super.isa + OBJC_IVAR___UIActivityIndicatorView__shadowOffset[v9]);
  if (!v10)
  {
    v10 = self->_spokeImages;
  }

  v11 = [(NSArray *)v10 indexOfObject:v8];
  if (v11 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v12 = 12;
    if (v3)
    {
      v12 = 13;
    }

    v13 = *(&self->super.super.super.isa + OBJC_IVAR___UIActivityIndicatorView__shadowOffset[v12]);
    v14 = [v13 indexOfObject:v8];
    if (v14)
    {
      v15 = v14 == 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v15 = 1;
    }

    if (v15 || (v11 = v14, v14 >= [(NSArray *)v10 count]))
    {
      v11 = 0;
    }
  }

LABEL_23:
  return v11;
}

- (void)startAnimating
{
  if (![(UIActivityIndicatorView *)self isAnimating])
  {
    [(UIActivityIndicatorView *)self _setUpAnimation];
    self->_animating = 1;
    [(UIActivityIndicatorView *)self _updateVisualStyleProperties];
    if ([(UIActivityIndicatorView *)self hidesWhenStopped])
    {

      [(UIView *)self setHidden:0];
    }
  }
}

- (void)tintColorDidChange
{
  v2.receiver = self;
  v2.super_class = UIActivityIndicatorView;
  [(UIView *)&v2 tintColorDidChange];
}

- (void)_tearDownAnimation
{
  styleView = self->_styleView;
  if (styleView)
  {

    [(_UIActivityIndicatorViewStyleView *)styleView tearDownAnimation];
  }

  else
  {
    spokeHighlightImages = self->_spokeHighlightImages;
    if (!spokeHighlightImages)
    {
      spokeHighlightImages = self->_spokeImages;
    }

    v5 = spokeHighlightImages;
    v6 = [(UIActivityIndicatorView *)self isHighlighted];
    v7 = [(UIImageView *)self->_animatingImageView _currentAnimationKeyframeImage];
    v8 = v7;
    if (v6)
    {
      if (v7)
      {
        v9 = v7;
      }

      else
      {
        v9 = [(NSArray *)v5 firstObject];
      }

      v11 = v9;

      v12 = [(NSArray *)v5 indexOfObject:v11];
      if (v12 == 0x7FFFFFFFFFFFFFFFLL || (v13 = v12, v12 >= [(NSArray *)self->_spokeImages count]))
      {
        v14 = [(NSArray *)self->_spokeImages firstObject];
      }

      else
      {
        v14 = [(NSArray *)self->_spokeImages objectAtIndexedSubscript:v13];
      }

      v19 = v14;
    }

    else
    {
      if (v7)
      {
        v10 = v7;
      }

      else
      {
        v10 = [(NSArray *)self->_spokeImages firstObject];
      }

      v19 = v10;

      v15 = [(NSArray *)self->_spokeImages indexOfObject:v19];
      if (v15 == 0x7FFFFFFFFFFFFFFFLL || (v16 = v15, v15 >= [(NSArray *)v5 count]))
      {
        v17 = [(NSArray *)v5 firstObject];
      }

      else
      {
        v17 = [(NSArray *)v5 objectAtIndexedSubscript:v16];
      }

      v11 = v17;
    }

    [(UIImageView *)self->_animatingImageView stopAnimating];
    if (v19)
    {
      [(UIImageView *)self->_animatingImageView setImage:v19];
    }

    if (self->_spokeHighlightImages)
    {
      v18 = v11;
    }

    else
    {
      v18 = 0;
    }

    [(UIImageView *)self->_animatingImageView setHighlightedImage:v18];
  }
}

- (void)_updateLayoutInfo
{
  v3 = *MEMORY[0x1E695F060];
  v4 = [(UIActivityIndicatorView *)self _sizeForStyle:self->_activityIndicatorViewStyle];
  v5 = 0;
  if (v4 <= 5)
  {
    if (v4 <= 2)
    {
      if (v4 == 1)
      {
LABEL_20:
        v3 = 14.0;
        goto LABEL_24;
      }

      v6 = 8;
      v5 = 2;
      if (v4 == 2)
      {
        v3 = 20.0;
      }

      else
      {
        v5 = 0;
      }

      if (v4 != 2)
      {
        v6 = 0;
      }
    }

    else
    {
      if (v4 == 3)
      {
        v3 = 20.0;
        goto LABEL_24;
      }

      v6 = 8;
      v5 = 2;
      v3 = 37.0;
    }
  }

  else
  {
    if (v4 <= 8)
    {
      if (v4 == 6)
      {
        [(UIActivityIndicatorView *)self _effectiveCustomWidth];
        v3 = v8;
        goto LABEL_24;
      }

      if (v4 != 7)
      {
        v6 = 8;
        v5 = 2;
        *&v7 = 32.0;
LABEL_26:
        v3 = *&v7;
        goto LABEL_27;
      }

      goto LABEL_20;
    }

    if (v4 == 9)
    {
      v6 = 8;
      v5 = 2;
      *&v7 = 40.0;
      goto LABEL_26;
    }

    if (v4 == 10)
    {
      v6 = 8;
      v5 = 2;
      *&v7 = 64.0;
      goto LABEL_26;
    }

    v6 = 0;
    if (v4 == 11)
    {
      v3 = 24.0;
LABEL_24:
      v6 = 8;
      v5 = 2;
    }
  }

LABEL_27:
  self->_spokeCount = v6;
  self->_spokeFrameRatio = v5;
  self->_width = v3;
}

- (UIColor)color
{
  v3 = self->_color;
  if (!v3)
  {
    v3 = [(UIActivityIndicatorView *)self _defaultColorForStyle:self->_activityIndicatorViewStyle];
  }

  return v3;
}

- (void)layoutSubviews
{
  v35.receiver = self;
  v35.super_class = UIActivityIndicatorView;
  [(UIView *)&v35 layoutSubviews];
  [(UIView *)self bounds];
  [(UIActivityIndicatorView *)self _updateSubviewFramesWithBounds:?];
  if (self->_styleView)
  {
    if (self->_restartAnimationOnNextLayout && self->_animating)
    {
      v3 = [(UIView *)self window];

      if (v3)
      {
        [(UIActivityIndicatorView *)self _setUpAnimation];
        self->_restartAnimationOnNextLayout = 0;
      }
    }

    return;
  }

  if (!layoutSubviews___AIVArtCache)
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DEE0]);
    v5 = layoutSubviews___AIVArtCache;
    layoutSubviews___AIVArtCache = v4;

    [layoutSubviews___AIVArtCache setName:@"com.apple.UIKit.UIActivityIndicatorViewGearImagesCache"];
  }

  if (!self->_lastArtCacheKey)
  {
    [(UIActivityIndicatorView *)self _updateLayoutInfo];
  }

  if (self->_activityIndicatorViewStyle == 16)
  {
    actualActivityIndicatorViewStyle = 16;
    self->_actualActivityIndicatorViewStyle = 16;
    goto LABEL_18;
  }

  if ([(UIActivityIndicatorView *)self _shouldGoToCustomStyle])
  {
    activityIndicatorViewStyle = [(UIActivityIndicatorView *)self _customStyleForStyle:self->_activityIndicatorViewStyle];
LABEL_16:
    actualActivityIndicatorViewStyle = [(UIActivityIndicatorView *)self _actualStyleByResolvingAutoUpdatingStyle:activityIndicatorViewStyle];
    self->_actualActivityIndicatorViewStyle = actualActivityIndicatorViewStyle;
    goto LABEL_18;
  }

  if ([(UIActivityIndicatorView *)self _shouldGoBackToBaseStyle])
  {
    activityIndicatorViewStyle = self->_activityIndicatorViewStyle;
    goto LABEL_16;
  }

  actualActivityIndicatorViewStyle = self->_actualActivityIndicatorViewStyle;
LABEL_18:
  v8 = [(UIActivityIndicatorView *)self color];
  v9 = [(UIActivityIndicatorView *)self _artCacheKeyWithStyle:actualActivityIndicatorViewStyle color:v8];
  v10 = self->_lastArtCacheKey;
  v11 = v9;
  v12 = v11;
  v13 = v10 != v11;
  if (v10 == v11)
  {
    lastArtCacheKey = v11;
  }

  else
  {
    if (v11 && v10)
    {
      v14 = [(_UIActivityIndicatorViewArtworkCacheKey *)v10 isEqual:v11];

      if (v14)
      {
        v13 = 0;
        goto LABEL_29;
      }
    }

    else
    {
    }

    v16 = [layoutSubviews___AIVArtCache objectForKey:v12];
    if (!v16)
    {
      v16 = [(UIActivityIndicatorView *)self _imagesForStyle:actualActivityIndicatorViewStyle color:v8 highlight:0];
      [layoutSubviews___AIVArtCache setObject:v16 forKey:v12];
    }

    spokeImages = self->_spokeImages;
    self->_spokeImages = v16;
    v10 = v16;

    v18 = v12;
    lastArtCacheKey = self->_lastArtCacheKey;
    self->_lastArtCacheKey = v18;
  }

LABEL_29:
  v19 = [(UIActivityIndicatorView *)self _highlightColorForStyle:actualActivityIndicatorViewStyle];
  if (v19)
  {
    v20 = [(UIActivityIndicatorView *)self _artCacheKeyWithStyle:actualActivityIndicatorViewStyle color:v19];
    v21 = self->_lastHighlightArtCacheKey;
    v22 = v20;
    v23 = v22;
    v24 = v21 != v22;
    if (v21 == v22)
    {
      lastHighlightArtCacheKey = v22;
    }

    else
    {
      if (v22 && v21)
      {
        v25 = [(_UIActivityIndicatorViewArtworkCacheKey *)v21 isEqual:v22];

        if (v25)
        {
          v24 = 0;
          goto LABEL_42;
        }
      }

      else
      {
      }

      v28 = [layoutSubviews___AIVArtCache objectForKey:v23];
      if (!v28)
      {
        v28 = [(UIActivityIndicatorView *)self _imagesForStyle:actualActivityIndicatorViewStyle color:v19 highlight:1];
        [layoutSubviews___AIVArtCache setObject:v28 forKey:v23];
      }

      spokeHighlightImages = self->_spokeHighlightImages;
      self->_spokeHighlightImages = v28;
      v21 = v28;

      v30 = v23;
      lastHighlightArtCacheKey = self->_lastHighlightArtCacheKey;
      self->_lastHighlightArtCacheKey = v30;
    }
  }

  else
  {
    v26 = self->_spokeHighlightImages;
    self->_spokeHighlightImages = 0;

    v23 = self->_lastHighlightArtCacheKey;
    v24 = v23 != 0;
    self->_lastHighlightArtCacheKey = 0;
  }

LABEL_42:

  if (v13 || v24 || self->_restartAnimationOnNextLayout)
  {
    animating = self->_animating;
    if (animating)
    {
      [(UIActivityIndicatorView *)self _tearDownAnimation];
    }

    v32 = [(NSArray *)self->_spokeImages firstObject];
    [(UIImageView *)self->_animatingImageView setImage:v32];

    v33 = [(NSArray *)self->_spokeHighlightImages firstObject];
    [(UIImageView *)self->_animatingImageView setHighlightedImage:v33];

    if (animating)
    {
      v34 = [(UIView *)self window];

      if (v34)
      {
        [(UIActivityIndicatorView *)self _setUpAnimation];
        self->_restartAnimationOnNextLayout = 0;
      }
    }
  }
}

- (BOOL)_isArtworkBasedStyle
{
  if ([(UIActivityIndicatorView *)self _isStatusBarStyle]|| (actualActivityIndicatorViewStyle = self->_actualActivityIndicatorViewStyle, actualActivityIndicatorViewStyle > 0x16))
  {
    LOBYTE(v4) = 1;
  }

  else
  {
    v4 = 0x6D8FFu >> actualActivityIndicatorViewStyle;
  }

  return v4 & 1;
}

- (BOOL)_colorRequiresDynamicTinting
{
  if ([(UIActivityIndicatorView *)self _hasClientSetColor])
  {
    return 1;
  }

  v4 = [(UIActivityIndicatorView *)self color];
  v5 = [v4 _isDynamic];

  return v5;
}

- (BOOL)_shouldGoToCustomStyle
{
  if ([(UIActivityIndicatorView *)self _colorRequiresDynamicTinting]|| [(UIActivityIndicatorView *)self _hasShadow])
  {
    return 1;
  }

  return [(UIActivityIndicatorView *)self _useCustomStyleForLegacyStyles];
}

- (BOOL)_hasClientSetColor
{
  color = self->_color;
  if (color)
  {
    v3 = [(UIActivityIndicatorView *)self _defaultColorForStyle:self->_activityIndicatorViewStyle];
    LODWORD(color) = ![(UIColor *)color isEqual:v3];
  }

  return color;
}

- (double)_effectiveCustomWidth
{
  if (self->_activityIndicatorViewStyle != 16)
  {
    v5 = [MEMORY[0x1E696AAA8] currentHandler];
    [v5 handleFailureInMethod:a2 object:self file:@"UIActivityIndicatorView.m" lineNumber:667 description:@"_effectiveCustomWidth only valid for UIActivityIndicatorViewStyleCustom"];
  }

  result = self->_customWidth;
  if (result == 0.0)
  {
    [objc_opt_class() defaultSizeForStyle:16];
  }

  return result;
}

- (void)stopAnimating
{
  [(UIActivityIndicatorView *)self _tearDownAnimation];
  self->_animating = 0;
  [(UIActivityIndicatorView *)self _updateVisualStyleProperties];
  if (!self->_styleView && [(UIActivityIndicatorView *)self hidesWhenStopped])
  {

    [(UIView *)self setHidden:1];
  }
}

- (void)dealloc
{
  v6[2] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  v6[0] = @"UIApplicationDidEnterBackgroundNotification";
  v6[1] = @"UIApplicationWillEnterForegroundNotification";
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:2];
  [(NSNotificationCenter *)v3 _uiRemoveObserver:v4 names:?];

  v5.receiver = self;
  v5.super_class = UIActivityIndicatorView;
  [(UIView *)&v5 dealloc];
}

- (UIActivityIndicatorView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = UIActivityIndicatorView;
  v3 = [(UIView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(UIActivityIndicatorView *)v3 _commonInit];
    [(UIActivityIndicatorView *)v4 _refreshStyle];
  }

  return v4;
}

- (UIActivityIndicatorView)initWithActivityIndicatorStyle:(UIActivityIndicatorViewStyle)style
{
  v4 = [(UIActivityIndicatorView *)self _internalStyleForStyle:style];
  [objc_opt_class() defaultSizeForStyle:v4];
  v10.receiver = self;
  v10.super_class = UIActivityIndicatorView;
  v7 = [(UIView *)&v10 initWithFrame:0.0, 0.0, v5, v6];
  v8 = v7;
  if (v7)
  {
    [(UIActivityIndicatorView *)v7 _commonInit];
    v8->_activityIndicatorViewStyle = v4;
    v8->_actualActivityIndicatorViewStyle = [(UIActivityIndicatorView *)v8 _actualStyleByResolvingAutoUpdatingStyle:v4];
    [(UIActivityIndicatorView *)v8 _updateMessageForStyle:v4];
    [(UIActivityIndicatorView *)v8 _refreshStyle];
  }

  return v8;
}

- (UIActivityIndicatorView)initWithCoder:(NSCoder *)coder
{
  v4 = coder;
  v13.receiver = self;
  v13.super_class = UIActivityIndicatorView;
  v5 = [(UIView *)&v13 initWithCoder:v4];
  if (v5)
  {
    v6 = @"UIActivityIndicatorViewStyle-Modern";
    if ([(NSCoder *)v4 containsValueForKey:@"UIActivityIndicatorViewStyle-Modern"]|| (v6 = @"UIActivityIndicatorViewStyle", [(NSCoder *)v4 containsValueForKey:@"UIActivityIndicatorViewStyle"]))
    {
      v7 = [(NSCoder *)v4 decodeIntegerForKey:v6];
    }

    else
    {
      v7 = 1;
    }

    v5->_activityIndicatorViewStyle = v7;
    v5->_actualActivityIndicatorViewStyle = [(UIActivityIndicatorView *)v5 _actualStyleByResolvingAutoUpdatingStyle:?];
    v5->_hidesWhenStopped = 1;
    if ([(NSCoder *)v4 containsValueForKey:@"UIHidesWhenStopped"])
    {
      v5->_hidesWhenStopped = [(NSCoder *)v4 decodeBoolForKey:@"UIHidesWhenStopped"];
    }

    v8 = [MEMORY[0x1E696AD88] defaultCenter];
    [v8 addObserver:v5 selector:sel__applicationDidEnterBackground_ name:@"UIApplicationDidEnterBackgroundNotification" object:0];
    [v8 addObserver:v5 selector:sel__applicationWillEnterForeground_ name:@"UIApplicationWillEnterForegroundNotification" object:0];
    v5->_animating = [(NSCoder *)v4 decodeBoolForKey:@"UIAnimating"];
    if ([(NSCoder *)v4 containsValueForKey:@"UIColor"])
    {
      v9 = @"UIColor";
    }

    else
    {
      v9 = @"UITintColor";
    }

    v10 = [(NSCoder *)v4 decodeObjectForKey:v9];
    color = v5->_color;
    v5->_color = v10;

    v5->_disableUpdateColorOnTraitCollectionChange = [(NSCoder *)v4 decodeBoolForKey:@"UIDisableUpdateColorOnTraitCollectionChange"];
    [(UIActivityIndicatorView *)v5 _refreshStyle];
    [(UIView *)v5 setNeedsLayout];
  }

  return v5;
}

- (void)_populateArchivedSubviews:(id)a3
{
  v5.receiver = self;
  v5.super_class = UIActivityIndicatorView;
  v4 = a3;
  [(UIView *)&v5 _populateArchivedSubviews:v4];
  [v4 removeObject:{self->_animatingImageView, v5.receiver, v5.super_class}];
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = UIActivityIndicatorView;
  [(UIView *)&v9 encodeWithCoder:v4];
  activityIndicatorViewStyle = self->_activityIndicatorViewStyle;
  [v4 encodeInteger:activityIndicatorViewStyle forKey:@"UIActivityIndicatorViewStyle-Modern"];
  v6 = self->_color;
  if (activityIndicatorViewStyle == 101)
  {
    [v4 encodeInteger:0 forKey:@"UIActivityIndicatorViewStyle"];
    if (v6)
    {
      goto LABEL_9;
    }

    v7 = self;
    v8 = 101;
    goto LABEL_7;
  }

  if (activityIndicatorViewStyle == 100)
  {
    [v4 encodeInteger:1 forKey:@"UIActivityIndicatorViewStyle"];
    if (v6)
    {
      goto LABEL_9;
    }

    v7 = self;
    v8 = 100;
LABEL_7:
    v6 = [(UIActivityIndicatorView *)v7 _defaultColorForStyle:v8];
    goto LABEL_9;
  }

  [v4 encodeInteger:activityIndicatorViewStyle forKey:@"UIActivityIndicatorViewStyle"];
LABEL_9:
  if (!self->_hidesWhenStopped)
  {
    [v4 encodeBool:0 forKey:@"UIHidesWhenStopped"];
  }

  if (self->_animating)
  {
    [v4 encodeBool:1 forKey:@"UIAnimating"];
  }

  [v4 encodeObject:self->_color forKey:@"UIColor"];
  if (v6)
  {
    [v4 encodeObject:v6 forKey:@"UITintColor"];
  }

  if (self->_disableUpdateColorOnTraitCollectionChange)
  {
    [v4 encodeBool:1 forKey:@"UIDisableUpdateColorOnTraitCollectionChange"];
  }
}

- (CGSize)_intrinsicSizeWithinSize:(CGSize)a3
{
  styleView = self->_styleView;
  if (styleView)
  {
    [(_UIActivityIndicatorViewStyleView *)styleView sizeThatFits:a3.width, a3.height];
    v6 = v5;
    v8 = v7;
  }

  else
  {
    [(UIActivityIndicatorView *)self _defaultSizeConsultingCustomWidthIfApplicable:a3.width];
    v6 = v10;
    v8 = v9;
    width = self->_shadowOffset.width;
    if ((width > 0.0 || self->_shadowOffset.height > 0.0) && self->_shadowColor)
    {
      v12 = fabs(width);
      v6 = v6 + v12 + v12;
      v13 = fabs(self->_shadowOffset.height);
      v8 = v9 + v13 + v13;
    }

    if ([(UIActivityIndicatorView *)self _isShowingMessage])
    {
      [(UILabel *)self->_messageLabel intrinsicContentSize];
      v15 = v14;
      v17 = v16;
      [(_UIActivityIndicatorMessageLabel *)self->_messageLabel verticalSpacingToSpinner];
      v8 = v8 + v17 + v18;
      if (v6 < v15)
      {
        v6 = v15;
      }
    }
  }

  v19 = v6;
  v20 = v8;
  result.height = v20;
  result.width = v19;
  return result;
}

- (void)_intrinsicContentSizeInvalidatedForChildView:(id)a3
{
  v6.receiver = self;
  v6.super_class = UIActivityIndicatorView;
  v4 = a3;
  [(UIView *)&v6 _intrinsicContentSizeInvalidatedForChildView:v4];
  styleView = self->_styleView;

  if (styleView == v4)
  {
    [(UIView *)self invalidateIntrinsicContentSize:v6.receiver];
  }
}

- (void)_setMessage:(id)a3
{
  v5 = a3;
  v6 = self->_message;
  v7 = v5;
  v14 = v7;
  if (v6 == v7)
  {

    goto LABEL_13;
  }

  if (v7 && v6)
  {
    v8 = [(NSString *)v6 isEqual:v7];

    if (v8)
    {
      goto LABEL_13;
    }
  }

  else
  {
  }

  objc_storeStrong(&self->_message, a3);
  if ([(NSString *)v14 length])
  {
    if (!self->_messageLabel)
    {
      v9 = [_UIActivityIndicatorMessageLabel alloc];
      v10 = +[_UIActivityIndicatorMessageLabel defaultRegularContentSizeTextAttributes];
      v11 = [(_UIActivityIndicatorMessageLabel *)v9 initWithRegularTextAttributes:v10];
      messageLabel = self->_messageLabel;
      self->_messageLabel = v11;

      [(UIView *)self addSubview:self->_messageLabel];
    }

    v13 = [(NSString *)v14 localizedUppercaseString];
    [(_UIActivityIndicatorMessageLabel *)self->_messageLabel setText:v13];
  }

  [(UIView *)self setNeedsLayout];
  [(UIView *)self invalidateIntrinsicContentSize];
LABEL_13:
}

- (void)_updateMessageForStyle:(int64_t)a3
{
  if (a3 == 22)
  {
    v4 = _UINSLocalizedStringWithDefaultValue(@"Loading", @"Loading");
    [(UIActivityIndicatorView *)self _setMessage:v4];
  }

  else
  {

    [(UIActivityIndicatorView *)self _setMessage:0];
  }
}

- (void)setActivityIndicatorViewStyle:(UIActivityIndicatorViewStyle)activityIndicatorViewStyle
{
  v4 = [(UIActivityIndicatorView *)self _internalStyleForStyle:activityIndicatorViewStyle];
  if (self->_actualActivityIndicatorViewStyle != v4)
  {
    v5 = v4;
    self->_activityIndicatorViewStyle = v4;
    self->_actualActivityIndicatorViewStyle = [(UIActivityIndicatorView *)self _actualStyleByResolvingAutoUpdatingStyle:v4];
    if ((dyld_program_sdk_at_least() & 1) == 0)
    {
      v6 = [(UIActivityIndicatorView *)self _defaultColorForStyle:v5];
      color = self->_color;
      self->_color = v6;
    }

    [(UIActivityIndicatorView *)self _updateMessageForStyle:v5];
    [(UIActivityIndicatorView *)self _updateVisualStyleProperties];
    [(UIActivityIndicatorView *)self _updateLayoutInfo];
    [(UIView *)self setNeedsLayout];

    [(UIView *)self invalidateIntrinsicContentSize];
  }
}

- (void)setAnimationDuration:(double)a3
{
  if (self->_duration != a3)
  {
    self->_duration = a3;
    if (self->_animating)
    {
      [(UIActivityIndicatorView *)self stopAnimating];

      [(UIActivityIndicatorView *)self startAnimating];
    }
  }
}

- (void)setHidesWhenStopped:(BOOL)hidesWhenStopped
{
  self->_hidesWhenStopped = hidesWhenStopped;
  if (![(UIActivityIndicatorView *)self isAnimating]&& !self->_styleView)
  {
    [(UIView *)self setHidden:self->_hidesWhenStopped];
  }

  [(UIActivityIndicatorView *)self _updateVisualStyleProperties];
}

- (void)setHighlighted:(BOOL)a3
{
  v3 = a3;
  if ([(UIImageView *)self->_animatingImageView isAnimating])
  {
    [(UIActivityIndicatorView *)self _tearDownAnimation];
    [(UIImageView *)self->_animatingImageView setHighlighted:v3];

    [(UIActivityIndicatorView *)self _setUpAnimation];
  }

  else
  {
    animatingImageView = self->_animatingImageView;

    [(UIImageView *)animatingImageView setHighlighted:v3];
  }
}

- (void)_restoreRemovedAnimationsIncludingSubviews
{
  if (self->_wasAnimatingWhenAnimationsRemoved)
  {
    [(UIActivityIndicatorView *)self startAnimating];
    self->_wasAnimatingWhenAnimationsRemoved = 0;
  }

  v3.receiver = self;
  v3.super_class = UIActivityIndicatorView;
  [(UIView *)&v3 _restoreRemovedAnimationsIncludingSubviews];
}

- (void)_removeAllAnimations:(BOOL)a3
{
  v3 = a3;
  self->_wasAnimatingWhenAnimationsRemoved = [(UIActivityIndicatorView *)self isAnimating];
  [(UIActivityIndicatorView *)self stopAnimating];
  v5.receiver = self;
  v5.super_class = UIActivityIndicatorView;
  [(UIView *)&v5 _removeAllAnimations:v3];
}

- (void)_applicationDidEnterBackground:(id)a3
{
  if (self->_animating)
  {
    [(UIActivityIndicatorView *)self _tearDownAnimation];
  }
}

- (void)_applicationWillEnterForeground:(id)a3
{
  if (self->_animating)
  {
    [(UIActivityIndicatorView *)self _setUpAnimation];
  }
}

- (void)_didMoveFromWindow:(id)a3 toWindow:(id)a4
{
  v6 = a3;
  v7 = a4;
  animating = self->_animating;
  if (animating)
  {
    [(UIActivityIndicatorView *)self _tearDownAnimation];
  }

  v9.receiver = self;
  v9.super_class = UIActivityIndicatorView;
  [(UIView *)&v9 _didMoveFromWindow:v6 toWindow:v7];
  if (v7 && animating)
  {
    self->_restartAnimationOnNextLayout = 1;
    [(UIView *)self setNeedsLayout];
  }
}

- (void)_setCustomWidth:(double)a3
{
  if (self->_activityIndicatorViewStyle != 16)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"_customWidth property only modifiable for UIActivityIndicatorViewStyleCustom"];
  }

  v5 = fmax(a3, 0.0);
  if (v5 != self->_customWidth)
  {
    self->_customWidth = v5;
    [(UIActivityIndicatorView *)self _updateLayoutInfo];
    [(UIView *)self invalidateIntrinsicContentSize];

    [(UIView *)self setNeedsLayout];
  }
}

- (void)setWidth:(double)a3
{
  if (self->_width != a3)
  {
    self->_width = a3;
    [(UIView *)self setNeedsLayout];
  }
}

- (void)setColor:(UIColor *)color
{
  v5 = color;
  if (self->_color != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_color, color);
    self->_disableUpdateColorOnTraitCollectionChange = v6 != 0;
    [(UIView *)self setNeedsLayout];
    [(UIActivityIndicatorView *)self _updateVisualStyleProperties];
    v5 = v6;
  }
}

- (void)setShadowColor:(id)a3
{
  v4 = a3;
  if (self->_shadowColor != v4)
  {
    v7 = v4;
    if (v4)
    {
      v5 = v4;
    }

    else
    {
      v5 = +[UIColor blackColor];
    }

    shadowColor = self->_shadowColor;
    self->_shadowColor = v5;

    [(UIView *)self setNeedsLayout];
    v4 = v7;
  }
}

- (void)setShadowOffset:(CGSize)a3
{
  if (self->_shadowOffset.width != a3.width || self->_shadowOffset.height != a3.height)
  {
    self->_shadowOffset = a3;
    [(UIView *)self setNeedsLayout];
  }
}

- (double)_spokeWidthForGearWidth:(double)a3
{
  actualActivityIndicatorViewStyle = self->_actualActivityIndicatorViewStyle;
  v5 = a3 < 20.0 && actualActivityIndicatorViewStyle == 16;
  v6 = 1.0;
  if (a3 == 14.0 || v5)
  {
    return v6;
  }

  v8 = a3 < 30.0 && actualActivityIndicatorViewStyle == 16;
  if (a3 == 20.0 || v8)
  {
    v10 = self->_spokeCount == 12;
    v11 = 1.25;
    v6 = 1.0;
    goto LABEL_20;
  }

  v14 = a3 < 32.0 && actualActivityIndicatorViewStyle == 16;
  v6 = 1.75;
  if (a3 != 30.0 && !v14)
  {
    v15 = a3 < 37.0 && actualActivityIndicatorViewStyle == 16;
    v16 = v15;
    v6 = 2.0;
    if (a3 != 32.0 && !v16)
    {
      v18 = a3 < 42.75 && actualActivityIndicatorViewStyle == 16;
      if (a3 == 37.0 || v18)
      {
        v10 = self->_spokeCount == 12;
        v11 = 2.5;
        v6 = 1.5;
        goto LABEL_20;
      }

      if (a3 < 60.0 && actualActivityIndicatorViewStyle == 16)
      {
        if (a3 >= 48.5)
        {
          v10 = self->_spokeCount == 12;
          if (a3 >= 54.25)
          {
            v11 = 3.5;
            v6 = 3.0;
          }

          else
          {
            v11 = 3.0;
            v6 = 2.5;
          }
        }

        else
        {
          v10 = self->_spokeCount == 12;
          v11 = 3.0;
          v6 = 2.0;
        }

LABEL_20:
        if (!v10)
        {
          return v11;
        }

        return v6;
      }

      v6 = 3.5;
      if (a3 != 60.0)
      {
        v19 = a3 / 7.5;
        v20 = nearbyintf(v19) * 0.5;
        v6 = 1.0;
        if (v20 >= 1.0)
        {
          return v20;
        }
      }
    }
  }

  return v6;
}

- (double)_spokeLengthForGearWidth:(double)a3
{
  actualActivityIndicatorViewStyle = self->_actualActivityIndicatorViewStyle;
  if (a3 > 14.0 || actualActivityIndicatorViewStyle != 16)
  {
    v5 = 4.0;
    if (a3 == 14.0)
    {
      return v5;
    }

    if (a3 > 20.0 || actualActivityIndicatorViewStyle != 16)
    {
      if (a3 == 20.0)
      {
        v5 = 5.0;
        if (self->_spokeCount == 12)
        {
          return v5;
        }
      }

      else
      {
        v8 = a3 <= 24.0 && actualActivityIndicatorViewStyle == 16;
        if (!v8 && a3 != 24.0 && (a3 > 30.0 || actualActivityIndicatorViewStyle != 16) && a3 != 30.0 && (a3 > 32.0 || actualActivityIndicatorViewStyle != 16))
        {
          v5 = 10.0;
          if (a3 == 32.0)
          {
            return v5;
          }

          if (a3 > 40.0 || actualActivityIndicatorViewStyle != 16)
          {
            v5 = 14.0;
            if (a3 == 40.0)
            {
              return v5;
            }

            if (a3 > 60.0 || actualActivityIndicatorViewStyle != 16)
            {
              v5 = 19.0;
              if (a3 == 60.0)
              {
                return v5;
              }

              if ((a3 > 64.0 || actualActivityIndicatorViewStyle != 16) && a3 != 64.0 && actualActivityIndicatorViewStyle != 16)
              {
                v5 = 10.0;
                if (self->_spokeCount != 12)
                {
                  return 12.0;
                }

                return v5;
              }
            }
          }
        }
      }
    }
  }

  UIRoundToViewScale(self);
  return result;
}

- (double)_widthForGearWidth:(double)result
{
  if (result == 37.0)
  {
    return 35.0;
  }

  return result;
}

- (double)_alphaValueForStep:(int64_t)a3
{
  v5 = [(UIActivityIndicatorView *)self _spokeCount];
  v6 = [(UIActivityIndicatorView *)self _spokeFrameRatio];
  result = 1.0;
  if ((v6 * v5 - 2) <= 0xFFFFFFFFFFFFFFFCLL)
  {
    result = -0.68 / (v6 * v5 / 2) * a3 + 1.0;
    if (result < 0.32)
    {
      return 0.32;
    }
  }

  return result;
}

- (id)_imageForStep:(int64_t)a3 withColor:(id)a4
{
  v6 = a4;
  [(UIActivityIndicatorView *)self _spokeWidthForGearWidth:self->_width];
  v8 = v7;
  [(UIActivityIndicatorView *)self _spokeLengthForGearWidth:self->_width];
  v10 = v9;
  spokeCount = self->_spokeCount;
  [(UIActivityIndicatorView *)self _widthForGearWidth:self->_width];
  v13 = v12 * 0.5;
  v14 = 0.0;
  v15 = [UIBezierPath bezierPathWithRoundedRect:0.0 cornerRadius:v12 * 0.5 - v8, v10, v8 + v8, v8];
  width = self->_width;
  [(UIActivityIndicatorView *)self _widthForGearWidth:width];
  v18 = (width - v17) * 0.5;
  if (self->_shadowColor)
  {
    v19 = self->_shadowOffset.width;
    height = self->_shadowOffset.height;
    v21 = -v19;
    if (v19 >= 0.0)
    {
      v21 = 0.0;
    }

    v22 = -height;
    if (height >= 0.0)
    {
      v22 = 0.0;
    }

    v23 = v18 + v22;
    v14 = v18 + fmax(v19, 0.0);
    v24 = v18 + fmax(height, 0.0);
    v18 = v18 + v21;
    v25 = self->_width;
    v26 = fabs(v19) + v25;
    v27 = v25 + fabs(height);
  }

  else
  {
    v26 = self->_width;
    v23 = v18;
    v24 = 0.0;
    v27 = v26;
  }

  _UIGraphicsBeginImageContextWithOptions(0, 0, v26, v27, 0.0);
  ContextStack = GetContextStack(0);
  if (*ContextStack < 1)
  {
    v29 = 0;
  }

  else
  {
    v29 = ContextStack[3 * (*ContextStack - 1) + 1];
  }

  v30 = 6.28318531 / spokeCount;
  if ((self->_shadowOffset.width > 0.0 || self->_shadowOffset.height > 0.0) && self->_shadowColor)
  {
    CGContextSaveGState(v29);
    CGContextTranslateCTM(v29, v14, v24);
    if (spokeCount >= 1)
    {
      for (i = 0; i != spokeCount; ++i)
      {
        CGContextSaveGState(v29);
        CGContextTranslateCTM(v29, v13, v13);
        CGContextRotateCTM(v29, -v30 * i);
        CGContextTranslateCTM(v29, -v13, -v13);
        [(UIColor *)self->_shadowColor set];
        [v15 fill];
        CGContextRestoreGState(v29);
      }
    }

    CGContextTranslateCTM(v29, -v14, -v24);
    CGContextRestoreGState(v29);
  }

  NumberOfComponents = CGColorGetNumberOfComponents([v6 CGColor]);
  Components = CGColorGetComponents([v6 CGColor]);
  if (NumberOfComponents)
  {
    v34 = *(Components + (((NumberOfComponents << 32) - 0x100000000) >> 29));
  }

  else
  {
    v34 = 1.0;
  }

  CGContextSaveGState(v29);
  CGContextTranslateCTM(v29, v14, v24);
  v35 = [(UIActivityIndicatorView *)self _spokeFrameRatio];
  v36 = [(UIActivityIndicatorView *)self _spokeFrameRatio];
  if (spokeCount >= 1)
  {
    v37 = 0;
    v38 = a3 % v35;
    v39 = -v30;
    v40 = spokeCount;
    v41 = a3 / v36;
    do
    {
      v42 = v38 + [(UIActivityIndicatorView *)self _spokeFrameRatio]* v41;
      v43 = v42 % ([(UIActivityIndicatorView *)self _spokeFrameRatio]* spokeCount);
      CGContextSaveGState(v29);
      CGContextTranslateCTM(v29, v13, v13);
      CGContextRotateCTM(v29, v39 * v37);
      CGContextTranslateCTM(v29, -v13, -v13);
      [(UIActivityIndicatorView *)self _alphaValueForStep:v43];
      v45 = [v6 colorWithAlphaComponent:v34 * v44];
      [v45 set];

      [v15 fillWithBlendMode:17 alpha:0.85];
      CGContextRestoreGState(v29);
      ++v37;
      ++v41;
      --v40;
    }

    while (v40);
  }

  CGContextTranslateCTM(v29, -v18, -v23);
  CGContextRestoreGState(v29);
  v46 = _UIGraphicsGetImageFromCurrentImageContext(0);
  UIGraphicsEndImageContext();

  return v46;
}

- (id)_artCacheKeyWithStyle:(int64_t)a3 color:(id)a4
{
  v7 = a4;
  v8 = -[_UIActivityIndicatorViewArtworkCacheKey initWithStyle:width:spokeCount:spokeFrameRatio:shadowOffset:color:shadowColor:]([_UIActivityIndicatorViewArtworkCacheKey alloc], "initWithStyle:width:spokeCount:spokeFrameRatio:shadowOffset:color:shadowColor:", a3, self->_spokeCount, self->_spokeFrameRatio, [a4 CGColor], -[UIColor CGColor](self->_shadowColor, "CGColor"), self->_width, self->_shadowOffset.width, self->_shadowOffset.height);

  return v8;
}

- (id)_generateImagesForColor:(id)a3 highlight:(BOOL)a4
{
  v5 = a3;
  v6 = self->_spokeCount * self->_spokeFrameRatio;
  v7 = [MEMORY[0x1E695DF70] arrayWithCapacity:v6];
  if (v6 >= 1)
  {
    for (i = 0; i != v6; ++i)
    {
      v9 = [(UIActivityIndicatorView *)self _imageForStep:i withColor:v5];
      [v7 addObject:v9];
    }
  }

  return v7;
}

- (id)_generateModernImagesForImages:(id)a3 color:(id)a4
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v5, "count")}];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = v5;
  v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v16;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [*(*(&v15 + 1) + 8 * i) _flatImageWithColor:{v6, v15}];
        [v7 addObject:v13];
      }

      v10 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v10);
  }

  return v7;
}

- (id)_imagesForStyle:(int64_t)a3 color:(id)a4 highlight:(BOOL)a5
{
  v5 = a5;
  v8 = a4;
  if ([(UIActivityIndicatorView *)self _isStatusBarStyle]&& [(UIActivityIndicatorView *)self _colorRequiresDynamicTinting])
  {
    v9 = [objc_opt_class() _loadResourcesForArtworkBasedStyle:a3];
    v10 = [(UIActivityIndicatorView *)self _generateModernImagesForImages:v9 color:v8];
  }

  else
  {
    if ([(UIActivityIndicatorView *)self _isArtworkBasedStyle])
    {
      [objc_opt_class() _loadResourcesForArtworkBasedStyle:a3];
    }

    else
    {
      [(UIActivityIndicatorView *)self _generateImagesForColor:v8 highlight:v5];
    }
    v10 = ;
  }

  return v10;
}

+ (id)_imageSetNameForArtworkBasedStyle:(int64_t)a3 outImageCount:(int64_t *)a4
{
  v4 = 0;
  result = 0;
  switch(a3)
  {
    case 0:
      goto LABEL_5;
    case 1:
      goto LABEL_6;
    case 2:
      result = @"UIActivityIndicatorViewStyleGray";
      goto LABEL_16;
    case 3:
      result = @"UIActivityIndicatorViewStyleWhiteSmall";
      goto LABEL_13;
    case 4:
      result = @"UIActivityIndicatorViewStyleGraySmall";
      goto LABEL_13;
    case 5:
      result = @"UIActivityIndicatorViewStyleForBlueBackgroundSmall";
LABEL_13:
      v4 = 16;
      if (!a4)
      {
        return result;
      }

      goto LABEL_23;
    case 6:
      result = @"UIActivityIndicatorViewStyleStatusBar";
      goto LABEL_26;
    case 7:
      result = @"UIActivityIndicatorViewStyleStatusBarSync";
      goto LABEL_21;
    case 8:
    case 9:
    case 10:
    case 13:
    case 14:
    case 15:
    case 16:
      goto LABEL_22;
    case 11:
      result = @"UIActivityIndicatorViewStyleStatusBarLockScreen";
      goto LABEL_26;
    case 12:
      result = @"UIActivityIndicatorViewStyleStatusBarLockScreenSync";
      goto LABEL_21;
    case 17:
      result = @"UIActivityIndicatorViewStyleStatusBarExternal";
LABEL_26:
      v4 = 8;
      if (!a4)
      {
        return result;
      }

      goto LABEL_23;
    case 18:
      result = @"UIActivityIndicatorViewStyleStatusBarSyncExternal";
LABEL_21:
      v4 = 24;
      goto LABEL_22;
    case 19:
      result = @"UIActivityIndicatorViewStyleWhiteATV";
      goto LABEL_16;
    case 20:
      result = @"UIActivityIndicatorViewStyleWhiteLargeATV";
      goto LABEL_16;
    default:
      if (a3 == 100)
      {
LABEL_6:
        result = @"UIActivityIndicatorViewStyleWhite";
LABEL_16:
        v4 = 12;
        if (!a4)
        {
          return result;
        }

        goto LABEL_23;
      }

      result = 0;
      if (a3 == 101)
      {
LABEL_5:
        result = @"UIActivityIndicatorViewStyleWhiteLarge";
        goto LABEL_16;
      }

LABEL_22:
      if (!a4)
      {
        return result;
      }

LABEL_23:
      *a4 = v4;
      return result;
  }
}

+ (id)_loadResourcesForArtworkBasedStyle:(int64_t)a3
{
  v9 = 0;
  v3 = [a1 _imageSetNameForArtworkBasedStyle:a3 outImageCount:&v9];
  v4 = [MEMORY[0x1E695DF70] arrayWithCapacity:v9];
  if (v9 >= 1)
  {
    for (i = 0; i < v9; ++i)
    {
      v6 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@.%ld.png", v3, i];
      v7 = _UIImageWithName(v6);
      if (v7)
      {
        [v4 addObject:v7];
      }
    }
  }

  return v4;
}

- (void)traitCollectionDidChange:(id)a3
{
  v4 = a3;
  v6.receiver = self;
  v6.super_class = UIActivityIndicatorView;
  [(UIView *)&v6 traitCollectionDidChange:v4];
  v5 = [(UIActivityIndicatorView *)self _actualStyleByResolvingAutoUpdatingStyle:self->_activityIndicatorViewStyle];
  if (v5 != self->_actualActivityIndicatorViewStyle)
  {
    self->_actualActivityIndicatorViewStyle = v5;
    [(UIActivityIndicatorView *)self _updateLayoutInfo];
    [(UIView *)self invalidateIntrinsicContentSize];
    [(UIView *)self setNeedsLayout];
  }

  if (dyld_program_sdk_at_least())
  {
    [(UIView *)self traitCollection];
  }
}

- (void)setFrame:(CGRect)a3
{
  v4.receiver = self;
  v4.super_class = UIActivityIndicatorView;
  [(UIView *)&v4 setFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  [(UIView *)self bounds];
  [(UIActivityIndicatorView *)self _updateSubviewFramesWithBounds:?];
}

- (void)setBounds:(CGRect)a3
{
  v4.receiver = self;
  v4.super_class = UIActivityIndicatorView;
  [(UIView *)&v4 setBounds:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  [(UIView *)self bounds];
  [(UIActivityIndicatorView *)self _updateSubviewFramesWithBounds:?];
}

- (void)_updateSubviewFramesWithBounds:(CGRect)a3
{
  styleView = self->_styleView;
  if (styleView)
  {
    [(UIView *)self bounds:a3.origin.x];
    messageLabel = styleView;
LABEL_7:

    [(UILabel *)messageLabel setFrame:?];
    return;
  }

  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  if (!self->_animatingImageView)
  {
    v10 = [UIImageView alloc];
    v11 = [(UIImageView *)v10 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    animatingImageView = self->_animatingImageView;
    self->_animatingImageView = v11;

    [(UIView *)self addSubview:self->_animatingImageView];
  }

  [(UIActivityIndicatorView *)self _animatingImageViewFrameForBounds:x, y, width, height];
  [(UIImageView *)self->_animatingImageView setFrame:?];
  if ([(UIActivityIndicatorView *)self _isShowingMessage])
  {
    [(UIActivityIndicatorView *)self _messageLabelFrameForBounds:x, y, width, height];
    messageLabel = self->_messageLabel;
    goto LABEL_7;
  }

  [(UIView *)self->_messageLabel removeFromSuperview];
  v13 = self->_messageLabel;
  self->_messageLabel = 0;
}

- (CGRect)_animatingImageViewFrameForBounds:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  [(UIActivityIndicatorView *)self _defaultSizeConsultingCustomWidthIfApplicable:a3.origin.x];
  v7 = v6;
  v9 = self->_shadowOffset.width;
  v8 = self->_shadowOffset.height;
  v10 = fabs(v8);
  v12 = v11 + v10;
  messageLabel = self->_messageLabel;
  v14 = v9;
  v15 = v11 + v10;
  if (messageLabel)
  {
    [(_UIActivityIndicatorMessageLabel *)messageLabel verticalSpacingToSpinner];
    v17 = v12 + v16;
    [(UILabel *)self->_messageLabel intrinsicContentSize];
    v15 = v17 + v18;
    v14 = self->_shadowOffset.width;
    v8 = self->_shadowOffset.height;
    v10 = fabs(v8);
  }

  v19 = v7 + fabs(v9);
  v20 = floor((width - v19) * 0.5) + v14;
  v21 = v8 + floor((height - v15) * 0.5);
  v22 = v19 + fabs(v14);
  v23 = v12 + v10;
  result.size.height = v23;
  result.size.width = v22;
  result.origin.y = v21;
  result.origin.x = v20;
  return result;
}

- (CGRect)_messageLabelFrameForBounds:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  if ([(UIActivityIndicatorView *)self _isShowingMessage])
  {
    [(UIActivityIndicatorView *)self _animatingImageViewFrameForBounds:x, y, width, height];
    CGRectGetMaxY(v15);
    [(_UIActivityIndicatorMessageLabel *)self->_messageLabel verticalSpacingToSpinner];
    UIRoundToViewScale(self);
    v9 = v8;
    [(UILabel *)self->_messageLabel intrinsicContentSize];
    v11 = v10;
    v12 = 0.0;
  }

  else
  {
    v12 = *MEMORY[0x1E695F058];
    v9 = *(MEMORY[0x1E695F058] + 8);
    width = *(MEMORY[0x1E695F058] + 16);
    v11 = *(MEMORY[0x1E695F058] + 24);
  }

  v13 = v9;
  v14 = width;
  result.size.height = v11;
  result.size.width = v14;
  result.origin.y = v13;
  result.origin.x = v12;
  return result;
}

- (id)_defaultColorForStyle:(int64_t)a3
{
  v28 = *MEMORY[0x1E69E9840];
  switch(a3)
  {
    case 0:
    case 1:
    case 3:
    case 5:
    case 21:
      goto LABEL_9;
    case 2:
    case 4:
    case 8:
    case 9:
    case 10:
    case 13:
    case 16:
    case 22:
      goto LABEL_2;
    case 6:
    case 7:
    case 11:
    case 12:
    case 17:
    case 18:
      goto LABEL_3;
    case 14:
    case 15:
      goto LABEL_14;
    case 19:
    case 20:
      if (dyld_program_sdk_at_least() && (-[UIView traitCollection](self, "traitCollection"), v21 = objc_claimAutoreleasedReturnValue(), v22 = [v21 userInterfaceStyle], v21, v22 != 2))
      {
LABEL_3:
        v4 = +[UIColor blackColor];
      }

      else
      {
LABEL_9:
        v4 = +[UIColor whiteColor];
      }

      goto LABEL_10;
    default:
      if ((a3 - 100) >= 2)
      {
LABEL_14:
        if (os_variant_has_internal_diagnostics())
        {
          v25 = __UIFaultDebugAssertLog();
          if (os_log_type_enabled(v25, OS_LOG_TYPE_FAULT))
          {
            v26 = 134217984;
            v27 = a3;
            _os_log_fault_impl(&dword_188A29000, v25, OS_LOG_TYPE_FAULT, "Unknown UIActivityIndicatorViewStyle: %ld", &v26, 0xCu);
          }
        }

        else
        {
          v24 = *(__UILogGetCategoryCachedImpl("Assert", &_defaultColorForStyle____s_category) + 8);
          if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
          {
            v26 = 134217984;
            v27 = a3;
            _os_log_impl(&dword_188A29000, v24, OS_LOG_TYPE_ERROR, "Unknown UIActivityIndicatorViewStyle: %ld", &v26, 0xCu);
          }
        }

LABEL_2:
        v4 = [UIColor colorWithWhite:0.0 alpha:0.45];
      }

      else
      {
        v5 = +[_UIActivityIndicatorSettingsDomain rootSettings];
        v6 = [v5 customColor];

        if (v6)
        {
          v7 = [UIColor alloc];
          v8 = +[_UIActivityIndicatorSettingsDomain rootSettings];
          [v8 redValue];
          v10 = v9 / 255.0;
          v11 = +[_UIActivityIndicatorSettingsDomain rootSettings];
          [v11 greenValue];
          v13 = v12 / 255.0;
          v14 = +[_UIActivityIndicatorSettingsDomain rootSettings];
          [v14 blueValue];
          v16 = v15 / 255.0;
          v17 = +[_UIActivityIndicatorSettingsDomain rootSettings];
          [v17 alphaValue];
          v19 = [(UIColor *)v7 initWithRed:v10 green:v13 blue:v16 alpha:v18];

          goto LABEL_11;
        }

        v4 = +[UIColor secondaryLabelColor];
      }

LABEL_10:
      v19 = v4;
LABEL_11:

      return v19;
  }
}

- (id)_highlightColorForStyle:(int64_t)a3
{
  if (a3 == 21)
  {
    v5 = +[UIColor _externalSystemExtraDarkGrayColor];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (int64_t)_actualStyleByResolvingAutoUpdatingStyle:(int64_t)a3
{
  if (a3 == 22)
  {
    v3 = [(UIView *)self traitCollection];
    v4 = [v3 preferredContentSizeCategory];
    IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(v4);

    if (IsAccessibilityCategory)
    {
      return 10;
    }

    else
    {
      return 9;
    }
  }

  return a3;
}

- (int64_t)_customStyleForStyle:(int64_t)a3
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = 10;
  if (a3 > 99)
  {
    if (a3 == 101)
    {
      return v4;
    }

    if (a3 == 100)
    {
      return 9;
    }
  }

  else
  {
    if (a3 <= 0x16)
    {
      if (((1 << a3) & 0x7F3FC0) != 0)
      {
        return a3;
      }

      if (((1 << a3) & 0x38) != 0)
      {
        return 8;
      }

      if (((1 << a3) & 6) != 0)
      {
        return 9;
      }
    }

    if (!a3)
    {
      return v4;
    }
  }

  if (os_variant_has_internal_diagnostics())
  {
    v7 = __UIFaultDebugAssertLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      v8 = 134217984;
      v9 = a3;
      _os_log_fault_impl(&dword_188A29000, v7, OS_LOG_TYPE_FAULT, "Unknown UIActivityIndicatorViewStyle: %ld", &v8, 0xCu);
    }

    return 16;
  }

  else
  {
    v6 = *(__UILogGetCategoryCachedImpl("Assert", &_customStyleForStyle____s_category) + 8);
    v4 = 16;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v8 = 134217984;
      v9 = a3;
      v4 = 16;
      _os_log_impl(&dword_188A29000, v6, OS_LOG_TYPE_ERROR, "Unknown UIActivityIndicatorViewStyle: %ld", &v8, 0xCu);
    }
  }

  return v4;
}

- (int64_t)_sizeForStyle:(int64_t)a3
{
  v3 = 4;
  switch(a3)
  {
    case 0:
      return 5;
    case 1:
    case 2:
      return 3;
    case 3:
    case 8:
      return 1;
    case 4:
    case 5:
      return 7;
    case 6:
    case 7:
    case 11:
    case 12:
    case 14:
    case 15:
    case 17:
    case 18:
      return 0;
    case 9:
      return 2;
    case 10:
      return v3;
    case 13:
      return 8;
    case 16:
      return 6;
    case 19:
      return 9;
    case 20:
      return 10;
    case 21:
      return 11;
    case 22:
      v4 = [(UIView *)self traitCollection];
      v5 = [v4 preferredContentSizeCategory];
      if (UIContentSizeCategoryIsAccessibilityCategory(v5))
      {
        v3 = 4;
      }

      else
      {
        v3 = 2;
      }

      return v3;
    default:
      if (a3 == 100)
      {
        return 2;
      }

      if (a3 != 101)
      {
        return 0;
      }

      return v3;
  }
}

- (BOOL)_hasShadow
{
  if (!self->_shadowColor)
  {
    return 0;
  }

  if (self->_shadowOffset.height == *(MEMORY[0x1E695F060] + 8))
  {
    return self->_shadowOffset.width != *MEMORY[0x1E695F060];
  }

  return 1;
}

- (BOOL)_shouldGoBackToBaseStyle
{
  v3 = [(UIActivityIndicatorView *)self _isArtworkBasedStyle];
  if (v3)
  {
    LOBYTE(v3) = ![(UIActivityIndicatorView *)self _shouldGoToCustomStyle];
  }

  return v3;
}

- (int64_t)_externalStyleForStyle:(int64_t)a3
{
  if (a3 == 20)
  {
    if (dyld_program_sdk_at_least())
    {
      return 101;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    result = a3;
    if (a3 == 19)
    {
      if (dyld_program_sdk_at_least())
      {
        return 100;
      }

      else
      {
        return 1;
      }
    }
  }

  return result;
}

+ (CGSize)defaultSizeForStyle:(int64_t)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = 37.0;
  v5 = 37.0;
  switch(a3)
  {
    case 0:
    case 10:
    case 16:
      break;
    case 1:
    case 2:
    case 9:
      goto LABEL_5;
    case 3:
    case 5:
    case 8:
      v4 = 14.0;
      v5 = 14.0;
      break;
    case 4:
      v5 = 15.0;
      v4 = 14.0;
      break;
    case 6:
      v10 = [objc_opt_self() mainScreen];
      [v10 scale];
      if (v11 <= 1.0)
      {
        v4 = 12.0;
      }

      else
      {
        v4 = 10.0;
      }

      goto LABEL_21;
    case 7:
      v7 = [objc_opt_self() mainScreen];
      [v7 scale];
      if (v8 <= 1.0)
      {
        v4 = 13.0;
      }

      else
      {
        v4 = 13.5;
      }

      goto LABEL_27;
    case 11:
      v5 = 24.0;
      v4 = 12.0;
      break;
    case 12:
      v7 = [objc_opt_self() mainScreen];
      [v7 scale];
      if (v12 <= 1.0)
      {
        v4 = 17.0;
      }

      else
      {
        v4 = 17.5;
      }

LABEL_27:

      goto LABEL_30;
    case 13:
    case 21:
      v4 = 24.0;
      v5 = 24.0;
      break;
    case 14:
    case 15:
      goto LABEL_7;
    case 17:
      v4 = 20.0;
      v5 = 40.0;
      break;
    case 18:
      v4 = 27.0;
      v5 = 27.0;
      break;
    case 19:
      v9 = 0x4044000000000000;
      goto LABEL_29;
    case 20:
      v9 = 0x4050000000000000;
LABEL_29:
      v4 = *&v9;
LABEL_30:
      v5 = v4;
      break;
    default:
      if (a3 != 101)
      {
        if (a3 == 100)
        {
LABEL_5:
          v4 = 20.0;
LABEL_21:
          v5 = 20.0;
        }

        else
        {
LABEL_7:
          if (os_variant_has_internal_diagnostics())
          {
            v14 = __UIFaultDebugAssertLog();
            if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
            {
              v15 = 134217984;
              v16 = a3;
              _os_log_fault_impl(&dword_188A29000, v14, OS_LOG_TYPE_FAULT, "Unknown UIActivityIndicatorViewStyle: %ld", &v15, 0xCu);
            }
          }

          else
          {
            v6 = *(__UILogGetCategoryCachedImpl("Assert", &defaultSizeForStyle____s_category) + 8);
            if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
            {
              v15 = 134217984;
              v16 = a3;
              _os_log_impl(&dword_188A29000, v6, OS_LOG_TYPE_ERROR, "Unknown UIActivityIndicatorViewStyle: %ld", &v15, 0xCu);
            }
          }

          v4 = *MEMORY[0x1E695F060];
          v5 = *(MEMORY[0x1E695F060] + 8);
        }
      }

      break;
  }

  v13 = v4;
  result.height = v5;
  result.width = v13;
  return result;
}

- (void)setAnimating:(BOOL)a3
{
  if (a3)
  {
    [(UIActivityIndicatorView *)self startAnimating];
  }

  else
  {
    [(UIActivityIndicatorView *)self stopAnimating];
  }
}

- (CGSize)shadowOffset
{
  width = self->_shadowOffset.width;
  height = self->_shadowOffset.height;
  result.height = height;
  result.width = width;
  return result;
}

@end