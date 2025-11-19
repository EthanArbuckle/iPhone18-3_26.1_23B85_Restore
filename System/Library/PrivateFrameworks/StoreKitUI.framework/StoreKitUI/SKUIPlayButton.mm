@interface SKUIPlayButton
+ (CGSize)sizeThatFitsWidth:(double)a3 viewElement:(id)a4 context:(id)a5;
- (CGSize)buttonSize;
- (float)buttonCornerRadius;
- (id)cancelImage;
- (id)defaultBackgroundColor;
- (id)images;
- (id)outerBorderColor;
- (id)playImage;
- (void)_updateEnabledState;
- (void)layoutSubviews;
- (void)playIndicatorDidChange:(BOOL)a3;
- (void)refresh;
- (void)reloadWithItemStatus:(id)a3 animated:(BOOL)a4;
- (void)setBackgroundType:(int64_t)a3;
- (void)setEnabled:(BOOL)a3;
- (void)setRadio:(BOOL)a3;
- (void)setStyle:(int64_t)a3;
- (void)tintColorDidChange;
@end

@implementation SKUIPlayButton

+ (CGSize)sizeThatFitsWidth:(double)a3 viewElement:(id)a4 context:(id)a5
{
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    +[SKUIPlayButton sizeThatFitsWidth:viewElement:context:];
  }

  v6 = fmin(a3, 36.0);
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
      v7 = [(SKUIPlayButtonControl *)self imageView];
      [v7 setFrame:{0.0, 4.0, v4, v6}];
    }
  }
}

- (void)setEnabled:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = SKUIPlayButton;
  [(SKUIPlayButtonControl *)&v5 setEnabled:a3];
  if ([(SKUIPlayButton *)self style]== 2)
  {
    if ([(SKUIPlayButtonControl *)self showingPlayIndicator])
    {
      v4 = [(SKUIPlayButtonControl *)self imageView];
      [v4 setAlpha:1.0];
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
      v3 = [(SKUIPlayButtonControl *)self imageView];
      v4 = [(SKUIPlayButton *)self tintColor];
      [v3 setTintColor:v4];
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
  v3 = [(SKUIPlayButtonControl *)self customToggleImage];

  if (v3)
  {
    v4 = [(SKUIPlayButtonControl *)self customToggleImage];
  }

  else
  {
    showStop = self->_showStop;
    v6 = [(SKUIPlayButton *)self images];
    v7 = v6;
    if (showStop)
    {
      [v6 stopImage];
    }

    else
    {
      [v6 pauseImage];
    }
    v4 = ;
  }

  return v4;
}

- (id)defaultBackgroundColor
{
  if ([(SKUIPlayButton *)self style]== 2 && [(SKUIPlayButtonControl *)self backgroundType]== 1)
  {
    v3 = [MEMORY[0x277D75348] whiteColor];
  }

  else
  {
    v5.receiver = self;
    v5.super_class = SKUIPlayButton;
    v3 = [(SKUIPlayButtonControl *)&v5 defaultBackgroundColor];
  }

  return v3;
}

- (id)outerBorderColor
{
  if ([(SKUIPlayButton *)self style]== 2 || [(SKUIPlayButtonControl *)self isIndeterminate])
  {
    v3 = [(SKUIPlayButton *)self tintColor];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)playImage
{
  v3 = [(SKUIPlayButtonControl *)self customPlayImage];

  if (v3)
  {
    v4 = [(SKUIPlayButtonControl *)self customPlayImage];
  }

  else
  {
    v5 = [(SKUIPlayButton *)self images];
    v4 = [v5 playImage];
  }

  return v4;
}

- (void)playIndicatorDidChange:(BOOL)a3
{
  v3 = a3;
  if ([(SKUIPlayButton *)self style]== 2 && v3)
  {
    v5 = [(SKUIPlayButtonControl *)self imageView];
    [v5 setAlpha:1.0];

    v10 = [(SKUIPlayButtonControl *)self imageView];
    v6 = [(SKUIPlayButton *)self tintColor];
    [v10 setTintColor:v6];
  }

  else
  {
    if ([(SKUIPlayButton *)self style]!= 2)
    {
      return;
    }

    v7 = [(SKUIPlayButtonControl *)self imageView];
    v8 = [MEMORY[0x277D75348] blackColor];
    [v7 setTintColor:v8];

    v10 = [(SKUIPlayButtonControl *)self imageView];
    [(SKUIPlayButtonControl *)self playButtonDefaultAlpha];
    [v10 setAlpha:v9];
  }
}

- (void)refresh
{
  self->_showStop = 0;
  v2.receiver = self;
  v2.super_class = SKUIPlayButton;
  [(SKUIPlayButtonControl *)&v2 refresh];
}

- (void)reloadWithItemStatus:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v12 = a3;
  v6 = [v12 playState];
  v7 = [(SKUIPlayButtonControl *)self isIndeterminate];
  if (v6 == 1)
  {
    if (!v7)
    {
      [(SKUIPlayButtonControl *)self beginIndeterminateAnimation];
    }
  }

  else
  {
    if (v7)
    {
      [(SKUIPlayButtonControl *)self endIndeterminateAnimation];
    }

    [v12 duration];
    v9 = v8;
    if (self->_showStop != [v12 hideDuration])
    {
      self->_showStop = [v12 hideDuration];
      [(SKUIPlayButtonControl *)self showPlayIndicator:[(SKUIPlayButtonControl *)self showingPlayIndicator] force:1];
    }

    if (v9 < 2.22044605e-16 || [v12 hideDuration])
    {
      v10 = 0.0;
    }

    else
    {
      [v12 currentTime];
      v10 = v11 / v9;
      *&v10 = v10;
    }

    [(SKUIPlayButtonControl *)self setProgress:v4 animated:v10];
  }
}

- (void)setBackgroundType:(int64_t)a3
{
  self->_showStop = 0;
  v3.receiver = self;
  v3.super_class = SKUIPlayButton;
  [(SKUIPlayButtonControl *)&v3 setBackgroundType:a3];
}

- (void)setStyle:(int64_t)a3
{
  if (self->_style != a3)
  {
    self->_style = a3;
    v5 = [SKUIPlayButtonImageCache imageCacheForStyle:?];
    imageCache = self->_imageCache;
    self->_imageCache = v5;

    [(SKUIPlayButton *)self refresh];
    if (a3 == 2)
    {
      v7 = [(SKUIPlayButton *)self playImage];
      v13 = [v7 imageWithRenderingMode:2];

      v8 = [(SKUIPlayButtonControl *)self imageView];
      v9 = [v8 image];

      if (v9 != v13)
      {
        v10 = [(SKUIPlayButtonControl *)self imageView];
        [v10 setImage:v13];
      }

      if ([(SKUIPlayButtonControl *)self backgroundType]== 1)
      {
        v11 = [(SKUIPlayButton *)self defaultBackgroundColor];
        [(SKUIPlayButtonControl *)self setControlColor:v11];
      }

      else
      {
        v11 = [(SKUIPlayButtonControl *)self imageView];
        v12 = [(SKUIPlayButton *)self tintColor];
        [v11 setTintColor:v12];
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

- (void)setRadio:(BOOL)a3
{
  if (a3)
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
      v7 = [(SKUIPlayButtonControl *)self imageView];
      [v7 setFrame:{0.0, 4.0, v4, v6}];
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