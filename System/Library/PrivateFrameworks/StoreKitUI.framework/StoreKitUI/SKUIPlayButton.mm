@interface SKUIPlayButton
+ (CGSize)sizeThatFitsWidth:(double)width viewElement:(id)element context:(id)context;
- (CGSize)buttonSize;
- (float)buttonCornerRadius;
- (id)cancelImage;
- (id)defaultBackgroundColor;
- (id)images;
- (id)outerBorderColor;
- (id)playImage;
- (void)_updateEnabledState;
- (void)layoutSubviews;
- (void)playIndicatorDidChange:(BOOL)change;
- (void)refresh;
- (void)reloadWithItemStatus:(id)status animated:(BOOL)animated;
- (void)setBackgroundType:(int64_t)type;
- (void)setEnabled:(BOOL)enabled;
- (void)setRadio:(BOOL)radio;
- (void)setStyle:(int64_t)style;
- (void)tintColorDidChange;
@end

@implementation SKUIPlayButton

+ (CGSize)sizeThatFitsWidth:(double)width viewElement:(id)element context:(id)context
{
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    +[SKUIPlayButton sizeThatFitsWidth:viewElement:context:];
  }

  v6 = fmin(width, 36.0);
  v7 = v6;
  result.height = v7;
  result.width = v6;
  return result;
}

- (void)layoutSubviews
{
  v8.receiver = self;
  v8.super_class = SKUIPlayButton;
  [(SKUIPlayButtonControl *)&v8 layoutSubviews];
  if ([(SKUIPlayButton *)self style]== 2)
  {
    if ([(SKUIPlayButtonControl *)self showingPlayIndicator])
    {
      [(SKUIPlayButton *)self buttonSize];
      v4 = v3;
      v6 = v5;
      imageView = [(SKUIPlayButtonControl *)self imageView];
      [imageView setFrame:{0.0, 4.0, v4, v6}];
    }
  }
}

- (void)setEnabled:(BOOL)enabled
{
  v5.receiver = self;
  v5.super_class = SKUIPlayButton;
  [(SKUIPlayButtonControl *)&v5 setEnabled:enabled];
  if ([(SKUIPlayButton *)self style]== 2)
  {
    if ([(SKUIPlayButtonControl *)self showingPlayIndicator])
    {
      imageView = [(SKUIPlayButtonControl *)self imageView];
      [imageView setAlpha:1.0];
    }
  }
}

- (void)tintColorDidChange
{
  v5.receiver = self;
  v5.super_class = SKUIPlayButton;
  [(SKUIPlayButtonControl *)&v5 tintColorDidChange];
  if ([(SKUIPlayButton *)self style]== 2)
  {
    if ([(SKUIPlayButtonControl *)self showingPlayIndicator])
    {
      imageView = [(SKUIPlayButtonControl *)self imageView];
      tintColor = [(SKUIPlayButton *)self tintColor];
      [imageView setTintColor:tintColor];
    }
  }
}

- (CGSize)buttonSize
{
  v2 = 36.0;
  if (self->_style != 1)
  {
    v2 = 28.0;
  }

  v3 = v2;
  result.height = v3;
  result.width = v2;
  return result;
}

- (float)buttonCornerRadius
{
  result = 14.0;
  if (self->_style == 1)
  {
    return 18.0;
  }

  return result;
}

- (id)cancelImage
{
  customToggleImage = [(SKUIPlayButtonControl *)self customToggleImage];

  if (customToggleImage)
  {
    customToggleImage2 = [(SKUIPlayButtonControl *)self customToggleImage];
  }

  else
  {
    showStop = self->_showStop;
    images = [(SKUIPlayButton *)self images];
    v7 = images;
    if (showStop)
    {
      [images stopImage];
    }

    else
    {
      [images pauseImage];
    }
    customToggleImage2 = ;
  }

  return customToggleImage2;
}

- (id)defaultBackgroundColor
{
  if ([(SKUIPlayButton *)self style]== 2 && [(SKUIPlayButtonControl *)self backgroundType]== 1)
  {
    whiteColor = [MEMORY[0x277D75348] whiteColor];
  }

  else
  {
    v5.receiver = self;
    v5.super_class = SKUIPlayButton;
    whiteColor = [(SKUIPlayButtonControl *)&v5 defaultBackgroundColor];
  }

  return whiteColor;
}

- (id)outerBorderColor
{
  if ([(SKUIPlayButton *)self style]== 2 || [(SKUIPlayButtonControl *)self isIndeterminate])
  {
    tintColor = [(SKUIPlayButton *)self tintColor];
  }

  else
  {
    tintColor = 0;
  }

  return tintColor;
}

- (id)playImage
{
  customPlayImage = [(SKUIPlayButtonControl *)self customPlayImage];

  if (customPlayImage)
  {
    customPlayImage2 = [(SKUIPlayButtonControl *)self customPlayImage];
  }

  else
  {
    images = [(SKUIPlayButton *)self images];
    customPlayImage2 = [images playImage];
  }

  return customPlayImage2;
}

- (void)playIndicatorDidChange:(BOOL)change
{
  changeCopy = change;
  if ([(SKUIPlayButton *)self style]== 2 && changeCopy)
  {
    imageView = [(SKUIPlayButtonControl *)self imageView];
    [imageView setAlpha:1.0];

    imageView2 = [(SKUIPlayButtonControl *)self imageView];
    tintColor = [(SKUIPlayButton *)self tintColor];
    [imageView2 setTintColor:tintColor];
  }

  else
  {
    if ([(SKUIPlayButton *)self style]!= 2)
    {
      return;
    }

    imageView3 = [(SKUIPlayButtonControl *)self imageView];
    blackColor = [MEMORY[0x277D75348] blackColor];
    [imageView3 setTintColor:blackColor];

    imageView2 = [(SKUIPlayButtonControl *)self imageView];
    [(SKUIPlayButtonControl *)self playButtonDefaultAlpha];
    [imageView2 setAlpha:v9];
  }
}

- (void)refresh
{
  self->_showStop = 0;
  v2.receiver = self;
  v2.super_class = SKUIPlayButton;
  [(SKUIPlayButtonControl *)&v2 refresh];
}

- (void)reloadWithItemStatus:(id)status animated:(BOOL)animated
{
  animatedCopy = animated;
  statusCopy = status;
  playState = [statusCopy playState];
  isIndeterminate = [(SKUIPlayButtonControl *)self isIndeterminate];
  if (playState == 1)
  {
    if (!isIndeterminate)
    {
      [(SKUIPlayButtonControl *)self beginIndeterminateAnimation];
    }
  }

  else
  {
    if (isIndeterminate)
    {
      [(SKUIPlayButtonControl *)self endIndeterminateAnimation];
    }

    [statusCopy duration];
    v9 = v8;
    if (self->_showStop != [statusCopy hideDuration])
    {
      self->_showStop = [statusCopy hideDuration];
      [(SKUIPlayButtonControl *)self showPlayIndicator:[(SKUIPlayButtonControl *)self showingPlayIndicator] force:1];
    }

    if (v9 < 2.22044605e-16 || [statusCopy hideDuration])
    {
      v10 = 0.0;
    }

    else
    {
      [statusCopy currentTime];
      v10 = v11 / v9;
      *&v10 = v10;
    }

    [(SKUIPlayButtonControl *)self setProgress:animatedCopy animated:v10];
  }
}

- (void)setBackgroundType:(int64_t)type
{
  self->_showStop = 0;
  v3.receiver = self;
  v3.super_class = SKUIPlayButton;
  [(SKUIPlayButtonControl *)&v3 setBackgroundType:type];
}

- (void)setStyle:(int64_t)style
{
  if (self->_style != style)
  {
    self->_style = style;
    v5 = [SKUIPlayButtonImageCache imageCacheForStyle:?];
    imageCache = self->_imageCache;
    self->_imageCache = v5;

    [(SKUIPlayButton *)self refresh];
    if (style == 2)
    {
      playImage = [(SKUIPlayButton *)self playImage];
      v13 = [playImage imageWithRenderingMode:2];

      imageView = [(SKUIPlayButtonControl *)self imageView];
      image = [imageView image];

      if (image != v13)
      {
        imageView2 = [(SKUIPlayButtonControl *)self imageView];
        [imageView2 setImage:v13];
      }

      if ([(SKUIPlayButtonControl *)self backgroundType]== 1)
      {
        defaultBackgroundColor = [(SKUIPlayButton *)self defaultBackgroundColor];
        [(SKUIPlayButtonControl *)self setControlColor:defaultBackgroundColor];
      }

      else
      {
        defaultBackgroundColor = [(SKUIPlayButtonControl *)self imageView];
        tintColor = [(SKUIPlayButton *)self tintColor];
        [defaultBackgroundColor setTintColor:tintColor];
      }

      [(SKUIPlayButtonControl *)self updateOuterProgressLayerStroke];
      [(SKUIPlayButtonControl *)self setShowBorder:0];
      [(SKUIPlayButtonControl *)self setShowOuterBorder:1];
    }

    else
    {
      [(SKUIPlayButtonControl *)self setShowOuterBorder:0];

      [(SKUIPlayButtonControl *)self setShowBorder:1];
    }
  }
}

- (id)images
{
  imageCache = self->_imageCache;
  if (!imageCache)
  {
    v4 = [SKUIPlayButtonImageCache imageCacheForStyle:self->_style];
    v5 = self->_imageCache;
    self->_imageCache = v4;

    imageCache = self->_imageCache;
  }

  return imageCache;
}

- (void)setRadio:(BOOL)radio
{
  if (radio)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  [(SKUIPlayButton *)self setStyle:v3];
}

- (void)_updateEnabledState
{
  v8.receiver = self;
  v8.super_class = SKUIPlayButton;
  [(SKUIPlayButtonControl *)&v8 _updateEnabledState];
  if ([(SKUIPlayButton *)self style]== 2)
  {
    if ([(SKUIPlayButtonControl *)self showingPlayIndicator])
    {
      [(SKUIPlayButton *)self buttonSize];
      v4 = v3;
      v6 = v5;
      imageView = [(SKUIPlayButtonControl *)self imageView];
      [imageView setFrame:{0.0, 4.0, v4, v6}];
    }
  }
}

+ (void)sizeThatFitsWidth:viewElement:context:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "+[SKUIPlayButton sizeThatFitsWidth:viewElement:context:]";
}

@end