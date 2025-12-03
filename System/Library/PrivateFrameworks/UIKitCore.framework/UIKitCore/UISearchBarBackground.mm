@interface UISearchBarBackground
- (BOOL)isTranslucent;
- (UISearchBarBackground)initWithFrame:(CGRect)frame;
- (id)_backgroundImageForBarPosition:(int64_t)position barMetrics:(int64_t)metrics;
- (id)_createBackgroundImageForBarStyle:(int64_t)style alpha:(double)alpha;
- (void)_dynamicUserInterfaceTraitDidChange;
- (void)_setBackgroundImage:(id)image forBarPosition:(int64_t)position barMetrics:(int64_t)metrics;
- (void)_setBarPosition:(int64_t)position;
- (void)_updateBackgroundImage;
- (void)_updateBackgroundImageIfPossible;
- (void)didMoveToWindow;
- (void)setBarStyle:(int64_t)style;
- (void)setBarTintColor:(id)color;
- (void)setBounds:(CGRect)bounds;
- (void)setFrame:(CGRect)frame;
- (void)setSearchBarStyle:(unint64_t)style;
- (void)setTranslucent:(BOOL)translucent;
- (void)setUsesContiguousBarBackground:(BOOL)background;
- (void)setUsesEmbeddedAppearance:(BOOL)appearance;
@end

@implementation UISearchBarBackground

- (void)_updateBackgroundImageIfPossible
{
  [(UIView *)self bounds];
  if (v3 != 0.0)
  {
    [(UIView *)self bounds];
    if (v4 != 0.0)
    {
      window = [(UIView *)self window];

      if (window)
      {

        [(UISearchBarBackground *)self _updateBackgroundImage];
      }
    }
  }
}

- (void)_dynamicUserInterfaceTraitDidChange
{
  v3.receiver = self;
  v3.super_class = UISearchBarBackground;
  [(UIView *)&v3 _dynamicUserInterfaceTraitDidChange];
  [(UISearchBarBackground *)self _updateBackgroundImageIfPossible];
}

- (void)_updateBackgroundImage
{
  [(UIView *)self bounds];
  v4 = v3;
  if (v3 < 75.0)
  {
    v5 = 0;
  }

  else
  {
    v5 = 101;
  }

  v6 = [(UISearchBarBackground *)self _backgroundImageForBarPosition:self->_barPosition barMetrics:v5];
  [(UIImageView *)self setBackgroundColor:0];
  if (v6)
  {
    v23 = 0;
    [v6 _isInvisibleAndGetIsTranslucent:&v23];
    barTranslucence = self->_barTranslucence;
    if (v23 == 1)
    {
      if (barTranslucence == 2)
      {
        barTintColor = self->_barTintColor;
        if (barTintColor)
        {
          v9 = [(UIColor *)barTintColor colorWithAlphaComponent:1.0];
        }

        else
        {
          if ((self->_barStyle - 1) >= 2)
          {
            +[UIColor whiteColor];
          }

          else
          {
            +[UIColor blackColor];
          }
          v9 = ;
        }

        v14 = v9;
        [(UIImageView *)self setBackgroundColor:v9];
        goto LABEL_22;
      }
    }

    else if (barTranslucence == 1)
    {
      _UIBarManufacturedTranslucentImage(v6);
      v6 = v14 = v6;
LABEL_22:
    }

    [(_UIBarBackgroundImageView *)self setImage:v6];
    [v6 capInsets];
    if (self->_barPosition == 3 && v15 == 0.0 && v16 == 0.0 && ([v6 size], v18 = v17, -[UIView window](self, "window"), v19 = objc_claimAutoreleasedReturnValue(), __UIStatusBarManagerForWindow(v19), v20 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v20, "defaultStatusBarHeightInOrientation:", 1), v22 = v21, v20, v19, v18 == v4 - v22))
    {
      [(_UIBarBackgroundImageView *)self updateTopStripViewCreateIfNecessary];
    }

    else
    {
      [(_UIBarBackgroundImageView *)self removeTopStripView];
    }

    goto LABEL_29;
  }

  if (self->_searchBarStyle > 1)
  {
    v13 = 0;
  }

  else
  {
    barStyle = self->_barStyle;
    isTranslucent = [(UISearchBarBackground *)self isTranslucent];
    v12 = 0.96;
    if (!isTranslucent)
    {
      v12 = 1.0;
    }

    v13 = [(UISearchBarBackground *)self _createBackgroundImageForBarStyle:barStyle alpha:v12];
  }

  v6 = [v13 resizableImageWithCapInsets:{1.0, 0.0, 1.0, 0.0}];

  [(_UIBarBackgroundImageView *)self setImage:v6];
LABEL_29:
  [(UIView *)self setOpaque:0];
}

- (void)didMoveToWindow
{
  v3.receiver = self;
  v3.super_class = UISearchBarBackground;
  [(UIView *)&v3 didMoveToWindow];
  [(UISearchBarBackground *)self _updateBackgroundImageIfPossible];
}

- (void)_setBarPosition:(int64_t)position
{
  if (self->_barPosition != position)
  {
    self->_barPosition = position;
    [(UISearchBarBackground *)self _updateBackgroundImageIfPossible];
  }
}

- (UISearchBarBackground)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = UISearchBarBackground;
  v3 = [(UIImageView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    v3->_barPosition = 2;
    [(UISearchBarBackground *)v3 _updateBackgroundImageIfPossible];
  }

  return v4;
}

- (void)setBarTintColor:(id)color
{
  colorCopy = color;
  if (self->_barTintColor != colorCopy)
  {
    v6 = colorCopy;
    objc_storeStrong(&self->_barTintColor, color);
    [(UISearchBarBackground *)self _updateBackgroundImageIfPossible];
    colorCopy = v6;
  }
}

- (void)setTranslucent:(BOOL)translucent
{
  v3 = 1;
  if (!translucent)
  {
    v3 = 2;
  }

  if (v3 != self->_barTranslucence)
  {
    self->_barTranslucence = v3;
    [(UISearchBarBackground *)self _updateBackgroundImageIfPossible];
  }
}

- (BOOL)isTranslucent
{
  barStyle = self->_barStyle;
  barTintColor = self->_barTintColor;
  _screen = [(UIView *)self _screen];
  IsTranslucentOnScreen = _UIBarStyleWithTintColorIsTranslucentOnScreen(barStyle, barTintColor, _screen);

  v10 = IsTranslucentOnScreen;
  barTranslucence = self->_barTranslucence;
  if (barTranslucence)
  {
    return barTranslucence == 1;
  }

  else if ([(UISearchBarBackground *)self _hasCustomBackgroundImage])
  {
    v8 = [(UISearchBarBackground *)self _backgroundImageForBarPosition:0 barMetrics:0];
    [v8 _isInvisibleAndGetIsTranslucent:&v10];

    return v10;
  }

  return IsTranslucentOnScreen;
}

- (void)setUsesEmbeddedAppearance:(BOOL)appearance
{
  if (self->_usesEmbeddedAppearance != appearance)
  {
    self->_usesEmbeddedAppearance = appearance;
    [(UISearchBarBackground *)self _updateBackgroundImageIfPossible];
  }
}

- (void)setBarStyle:(int64_t)style
{
  if (self->_barStyle != style)
  {
    self->_barStyle = style;
    if (!self->_barTintColor)
    {
      [(UISearchBarBackground *)self _updateBackgroundImageIfPossible];
    }
  }
}

- (void)setSearchBarStyle:(unint64_t)style
{
  if (self->_searchBarStyle != style)
  {
    self->_searchBarStyle = style;
    [(_UIBarBackgroundImageView *)self setImage:0];

    [(UISearchBarBackground *)self _updateBackgroundImageIfPossible];
  }
}

- (id)_createBackgroundImageForBarStyle:(int64_t)style alpha:(double)alpha
{
  if (!_MergedGlobals_21_0)
  {
    v7 = objc_alloc_init(MEMORY[0x1E695DEE0]);
    v8 = _MergedGlobals_21_0;
    _MergedGlobals_21_0 = v7;
  }

  if (os_variant_has_internal_diagnostics())
  {
    if (!self)
    {
      v40 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v40, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_188A29000, v40, OS_LOG_TYPE_FAULT, "Attempted to begin using the effective theme of a nil view.", buf, 2u);
      }
    }
  }

  else if (!self)
  {
    v41 = *(__UILogGetCategoryCachedImpl("Assert", &qword_1ED49B0D8) + 8);
    if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_188A29000, v41, OS_LOG_TYPE_ERROR, "Attempted to begin using the effective theme of a nil view.", buf, 2u);
    }
  }

  v9 = +[UITraitCollection _currentTraitCollectionIfExists];
  traitCollection = [(UIView *)self traitCollection];
  [UITraitCollection setCurrentTraitCollection:traitCollection];

  v11 = _UISetCurrentFallbackEnvironment(self);
  v12 = _UISearchBarBackgroundFillColor(style, self->_barTintColor);
  v13 = self->_barTintColor;
  v14 = v13;
  if (style || v13)
  {
    v16 = _UISearchBarBackgroundFillColor(style, v13);
    v17 = v16;
    if (v16)
    {
      v46 = 0.0;
      *buf = 0;
      v44 = 0;
      v45 = 0.0;
      if ([v16 getHue:buf saturation:&v46 brightness:&v45 alpha:&v44])
      {
        v45 = v45 * 0.6;
        v18 = [UIColor colorWithHue:"colorWithHue:saturation:brightness:alpha:" saturation:*buf brightness:v46 alpha:?];
      }

      else
      {
        v18 = v17;
      }

      v15 = v18;
    }

    else
    {
      v15 = 0;
    }
  }

  else
  {
    if (dyld_program_sdk_at_least())
    {
      v15 = +[UIColor separatorColor];
      goto LABEL_18;
    }

    v17 = +[UIColor _barHairlineShadowColor];
    v15 = [(UIColor *)1.0 _composedColorFromSourceColor:v17 destinationColor:0 tintColor:0 alpha:?];
  }

LABEL_18:
  barPosition = self->_barPosition;
  usesContiguousBarBackground = self->_usesContiguousBarBackground;
  [(UIView *)self _currentScreenScale];
  v22 = v21;
  [(UIView *)self bounds];
  v24 = v23;
  v25 = 0.0;
  if (barPosition == 3)
  {
    window = [(UIView *)self window];
    v27 = __UIStatusBarManagerForWindow(window);
    [v27 statusBarHeight];
    v25 = v28;
  }

  v29 = -[_UISearchBarBackgroundCacheKey initWithBarPosition:usesContiguousBarBackground:scale:alpha:height:statusBarHeight:backgroundColor:strokeColor:]([_UISearchBarBackgroundCacheKey alloc], "initWithBarPosition:usesContiguousBarBackground:scale:alpha:height:statusBarHeight:backgroundColor:strokeColor:", barPosition, usesContiguousBarBackground, [v12 CGColor], objc_msgSend(v15, "CGColor"), v22, alpha, v24, v25);
  v30 = [_MergedGlobals_21_0 objectForKey:v29];
  if (!v30)
  {
    v31 = *(MEMORY[0x1E695F058] + 16);
    v32 = *(MEMORY[0x1E695F058] + 24);
    v33 = v24 - v25;
    if (barPosition == 3)
    {
      v32 = v25;
    }

    else
    {
      v25 = 0.0;
    }

    if (barPosition == 3)
    {
      v34 = v33;
    }

    else
    {
      v34 = v24;
    }

    if (barPosition == 3)
    {
      v31 = 1.0 / v22;
    }

    v42 = v31;
    v43 = v32;
    if (barPosition == 3)
    {
      v35 = 0.0;
    }

    else
    {
      v35 = *(MEMORY[0x1E695F058] + 8);
    }

    if (barPosition == 3)
    {
      v36 = 0.0;
    }

    else
    {
      v36 = *MEMORY[0x1E695F058];
    }

    _UIGraphicsBeginImageContextWithOptions(0, 0, 1.0 / v22, v24, v22);
    ContextStack = GetContextStack(0);
    if (*ContextStack < 1)
    {
      v38 = 0;
    }

    else
    {
      v38 = ContextStack[3 * (*ContextStack - 1) + 1];
    }

    CGContextSetAlpha(v38, alpha);
    [v12 set];
    UIRectFillUsingOperation(1, 0.0, v25, 1.0 / v22, v34);
    if (barPosition == 3)
    {
      [v12 set];
      UIRectFillUsingOperation(1, v36, v35, v42, v43);
    }

    if (!usesContiguousBarBackground)
    {
      [v15 set];
      UIRectFillUsingOperation(1, 0.0, v24 - 1.0 / v22, 1.0 / v22, 1.0 / v22);
    }

    if (barPosition == 2)
    {
      [v15 set];
      UIRectFillUsingOperation(1, 0.0, v25, 1.0 / v22, 1.0 / v22);
    }

    v30 = _UIGraphicsGetImageFromCurrentImageContext(0);
    UIGraphicsEndImageContext();
    if (v30)
    {
      [_MergedGlobals_21_0 setObject:v30 forKey:v29];
    }
  }

  _UIRestorePreviousFallbackEnvironment(v11);
  [UITraitCollection setCurrentTraitCollection:v9];

  return v30;
}

- (void)_setBackgroundImage:(id)image forBarPosition:(int64_t)position barMetrics:(int64_t)metrics
{
  imageCopy = image;
  if (position)
  {
    positionCopy = position;
  }

  else
  {
    positionCopy = 2;
  }

  v9 = _UIBarAppearanceStorageKeyForBarPositionAndMetrics(positionCopy, metrics);
  if (position)
  {
    v10 = 0;
  }

  else
  {
    v10 = _UIBarAppearanceStorageKeyForBarPositionAndMetrics(3, metrics);
  }

  v11 = [(UISearchBarBackground *)self _backgroundImageForBarPosition:position barMetrics:metrics];
  if (v11 != imageCopy)
  {
    v12 = imageCopy;
    if (v12)
    {
      v13 = v12;
      if (([v12 _isResizable] & 1) != 0 || (objc_msgSend(v13, "size"), v14 <= 1.0))
      {
      }

      else
      {
        v15 = [v13 resizableImageWithCapInsets:{0.0, 0.0, 0.0, 0.0}];

        v13 = v15;
        if (!v15)
        {
          goto LABEL_12;
        }
      }

      customBackgroundImages = self->_customBackgroundImages;
      if (!customBackgroundImages)
      {
        v17 = objc_alloc_init(MEMORY[0x1E695DF90]);
        v18 = self->_customBackgroundImages;
        self->_customBackgroundImages = v17;

        customBackgroundImages = self->_customBackgroundImages;
      }

      [(NSMutableDictionary *)customBackgroundImages setObject:v13 forKey:v9];
      if (v10)
      {
        [(NSMutableDictionary *)self->_customBackgroundImages setObject:v13 forKey:v10];
      }

      goto LABEL_20;
    }

LABEL_12:
    [(NSMutableDictionary *)self->_customBackgroundImages removeObjectForKey:v9];
    if (v10)
    {
      [(NSMutableDictionary *)self->_customBackgroundImages removeObjectForKey:v10];
    }

    v13 = 0;
LABEL_20:
    [(UISearchBarBackground *)self _updateBackgroundImageIfPossible];
  }
}

- (id)_backgroundImageForBarPosition:(int64_t)position barMetrics:(int64_t)metrics
{
  if (position)
  {
    positionCopy = position;
  }

  else
  {
    positionCopy = 2;
  }

  v6 = _UIBarAppearanceStorageKeyForBarPositionAndMetrics(positionCopy, metrics);
  v7 = [(NSMutableDictionary *)self->_customBackgroundImages objectForKey:v6];

  return v7;
}

- (void)setBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  [(UIView *)self bounds];
  v9 = v8;
  v11 = v10;
  v15.receiver = self;
  v15.super_class = UISearchBarBackground;
  [(UIImageView *)&v15 setBounds:x, y, width, height];
  [(UIView *)self bounds];
  if (v9 != v13 || v11 != v12)
  {
    [(UISearchBarBackground *)self _updateBackgroundImageIfPossible];
  }
}

- (void)setFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  [(UIView *)self frame];
  v9 = v8;
  v11 = v10;
  v15.receiver = self;
  v15.super_class = UISearchBarBackground;
  [(UIImageView *)&v15 setFrame:x, y, width, height];
  [(UIView *)self frame];
  if (v9 != v13 || v11 != v12)
  {
    [(UISearchBarBackground *)self _updateBackgroundImageIfPossible];
  }
}

- (void)setUsesContiguousBarBackground:(BOOL)background
{
  if (self->_usesContiguousBarBackground != background)
  {
    self->_usesContiguousBarBackground = background;
    [(UISearchBarBackground *)self _updateBackgroundImageIfPossible];
  }
}

@end