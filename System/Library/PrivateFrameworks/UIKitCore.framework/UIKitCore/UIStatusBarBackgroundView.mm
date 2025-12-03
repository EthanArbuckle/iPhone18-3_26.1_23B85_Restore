@interface UIStatusBarBackgroundView
- (UIStatusBarBackgroundView)initWithFrame:(CGRect)frame style:(id)style backgroundColor:(id)color;
- (id)_baseImage;
- (id)_glowImage;
- (void)_setGlowAnimationEnabled:(BOOL)enabled waitForNextCycle:(BOOL)cycle;
- (void)_startGlowAnimationWaitForNextCycle:(BOOL)cycle;
- (void)_stopGlowAnimation;
@end

@implementation UIStatusBarBackgroundView

- (UIStatusBarBackgroundView)initWithFrame:(CGRect)frame style:(id)style backgroundColor:(id)color
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  styleCopy = style;
  colorCopy = color;
  v23.receiver = self;
  v23.super_class = UIStatusBarBackgroundView;
  height = [(UIView *)&v23 initWithFrame:x, y, width, height];
  v15 = height;
  if (height)
  {
    objc_storeStrong(&height->_style, style);
    if (colorCopy)
    {
      [(UIView *)v15 setBackgroundColor:colorCopy];
    }

    _baseImage = [(UIStatusBarBackgroundView *)v15 _baseImage];
    if (_baseImage)
    {
      layer = [(UIView *)v15 layer];
      [layer setContents:{objc_msgSend(_baseImage, "CGImage")}];

      [_baseImage scale];
      [(UIView *)v15 setContentScaleFactor:?];
      [_baseImage size];
      v19 = v18;
      if (v18 > 1.0)
      {
        v20 = floor((v18 + -1.0) * 0.5);
        layer2 = [(UIView *)v15 layer];
        [layer2 setContentsCenter:{v20 / v19, 0.0, (v19 - (v20 + v20)) / v19, 1.0}];
      }
    }

    [(UIView *)v15 setAutoresizingMask:18];
  }

  return v15;
}

- (void)_setGlowAnimationEnabled:(BOOL)enabled waitForNextCycle:(BOOL)cycle
{
  self->_glowEnabled = enabled;
  if (enabled && !self->_suppressGlow)
  {
    [(UIStatusBarBackgroundView *)self _startGlowAnimationWaitForNextCycle:cycle];
  }

  else
  {
    [(UIStatusBarBackgroundView *)self _stopGlowAnimation];
  }
}

- (void)_startGlowAnimationWaitForNextCycle:(BOOL)cycle
{
  if (self->_glowView)
  {
    return;
  }

  cycleCopy = cycle;
  if (![(UIStatusBarBackgroundView *)self _styleCanGlow])
  {
    return;
  }

  _glowImage = [(UIStatusBarBackgroundView *)self _glowImage];
  if (_glowImage)
  {
    v5 = CACurrentMediaTime();
    v6 = floor(v5 / 1.5) * 1.5;
    if (cycleCopy)
    {
      v7 = v6 + 1.5;
    }

    else
    {
      v7 = v6;
    }

    [UIStatusBarServer getGlowAnimationEndTimeForStyle:self->_style];
    v9 = v8;
    if (v8 == 1.79769313e308)
    {
      v16 = 3.4028e38;
    }

    else
    {
      [(UIStatusBarStyleAttributes *)self->_style glowAnimationDuration];
      v11 = v10 == 1.79769313e308;
      v12 = v9 - v10;
      if (v11 || v5 > v9 || v5 < v12)
      {
        goto LABEL_21;
      }

      v15 = v9 - v5 - (v7 - v5);
      v16 = 0.0;
      if (v15 >= 1.5)
      {
        v17 = v15;
        v16 = ceil(v17 / 1.5);
        if (v16 < 0.0)
        {
          goto LABEL_21;
        }
      }
    }

    v18 = [UIImageView alloc];
    [(UIView *)self bounds];
    v19 = [(UIImageView *)v18 initWithFrame:?];
    glowView = self->_glowView;
    self->_glowView = v19;

    [(UIView *)self->_glowView setAutoresizingMask:18];
    [(UIImageView *)self->_glowView setImage:_glowImage];
    [(UIView *)self->_glowView setAlpha:0.0];
    [(UIView *)self addSubview:self->_glowView];
    animation = [MEMORY[0x1E6979318] animation];
    [animation setKeyPath:@"opacity"];
    v22 = [MEMORY[0x1E696AD98] numberWithFloat:0.0];
    [animation setFromValue:v22];

    LODWORD(v23) = 1.0;
    v24 = [MEMORY[0x1E696AD98] numberWithFloat:v23];
    [animation setToValue:v24];

    [animation setDuration:0.75];
    [animation setRemovedOnCompletion:0];
    v25 = [MEMORY[0x1E69793D0] functionWithName:*MEMORY[0x1E6979EB8]];
    [animation setTimingFunction:v25];

    [animation setBeginTime:v7];
    *&v26 = v16;
    [animation setRepeatCount:v26];
    [animation setFrameInterval:0.05];
    [animation setAutoreverses:1];
    layer = [(UIView *)self->_glowView layer];
    [layer addAnimation:animation forKey:@"opacity"];
  }

LABEL_21:
}

- (void)_stopGlowAnimation
{
  glowView = self->_glowView;
  if (glowView)
  {
    layer = [(UIView *)glowView layer];
    [layer removeAllAnimations];

    [(UIView *)self->_glowView removeFromSuperview];
    v5 = self->_glowView;
    self->_glowView = 0;
  }
}

- (id)_baseImage
{
  _backgroundImageName = [(UIStatusBarBackgroundView *)self _backgroundImageName];
  if (_backgroundImageName)
  {
    v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@_Base.png", _backgroundImageName];
    v4 = [UIImage kitImageNamed:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)_glowImage
{
  _backgroundImageName = [(UIStatusBarBackgroundView *)self _backgroundImageName];
  if (_backgroundImageName)
  {
    v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@_Glow.png", _backgroundImageName];
    v4 = [UIImage kitImageNamed:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end