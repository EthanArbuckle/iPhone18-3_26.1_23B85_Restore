@interface UIStatusBarBackgroundView
- (UIStatusBarBackgroundView)initWithFrame:(CGRect)a3 style:(id)a4 backgroundColor:(id)a5;
- (id)_baseImage;
- (id)_glowImage;
- (void)_setGlowAnimationEnabled:(BOOL)a3 waitForNextCycle:(BOOL)a4;
- (void)_startGlowAnimationWaitForNextCycle:(BOOL)a3;
- (void)_stopGlowAnimation;
@end

@implementation UIStatusBarBackgroundView

- (UIStatusBarBackgroundView)initWithFrame:(CGRect)a3 style:(id)a4 backgroundColor:(id)a5
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v12 = a4;
  v13 = a5;
  v23.receiver = self;
  v23.super_class = UIStatusBarBackgroundView;
  v14 = [(UIView *)&v23 initWithFrame:x, y, width, height];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_style, a4);
    if (v13)
    {
      [(UIView *)v15 setBackgroundColor:v13];
    }

    v16 = [(UIStatusBarBackgroundView *)v15 _baseImage];
    if (v16)
    {
      v17 = [(UIView *)v15 layer];
      [v17 setContents:{objc_msgSend(v16, "CGImage")}];

      [v16 scale];
      [(UIView *)v15 setContentScaleFactor:?];
      [v16 size];
      v19 = v18;
      if (v18 > 1.0)
      {
        v20 = floor((v18 + -1.0) * 0.5);
        v21 = [(UIView *)v15 layer];
        [v21 setContentsCenter:{v20 / v19, 0.0, (v19 - (v20 + v20)) / v19, 1.0}];
      }
    }

    [(UIView *)v15 setAutoresizingMask:18];
  }

  return v15;
}

- (void)_setGlowAnimationEnabled:(BOOL)a3 waitForNextCycle:(BOOL)a4
{
  self->_glowEnabled = a3;
  if (a3 && !self->_suppressGlow)
  {
    [(UIStatusBarBackgroundView *)self _startGlowAnimationWaitForNextCycle:a4];
  }

  else
  {
    [(UIStatusBarBackgroundView *)self _stopGlowAnimation];
  }
}

- (void)_startGlowAnimationWaitForNextCycle:(BOOL)a3
{
  if (self->_glowView)
  {
    return;
  }

  v3 = a3;
  if (![(UIStatusBarBackgroundView *)self _styleCanGlow])
  {
    return;
  }

  v28 = [(UIStatusBarBackgroundView *)self _glowImage];
  if (v28)
  {
    v5 = CACurrentMediaTime();
    v6 = floor(v5 / 1.5) * 1.5;
    if (v3)
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
    [(UIImageView *)self->_glowView setImage:v28];
    [(UIView *)self->_glowView setAlpha:0.0];
    [(UIView *)self addSubview:self->_glowView];
    v21 = [MEMORY[0x1E6979318] animation];
    [v21 setKeyPath:@"opacity"];
    v22 = [MEMORY[0x1E696AD98] numberWithFloat:0.0];
    [v21 setFromValue:v22];

    LODWORD(v23) = 1.0;
    v24 = [MEMORY[0x1E696AD98] numberWithFloat:v23];
    [v21 setToValue:v24];

    [v21 setDuration:0.75];
    [v21 setRemovedOnCompletion:0];
    v25 = [MEMORY[0x1E69793D0] functionWithName:*MEMORY[0x1E6979EB8]];
    [v21 setTimingFunction:v25];

    [v21 setBeginTime:v7];
    *&v26 = v16;
    [v21 setRepeatCount:v26];
    [v21 setFrameInterval:0.05];
    [v21 setAutoreverses:1];
    v27 = [(UIView *)self->_glowView layer];
    [v27 addAnimation:v21 forKey:@"opacity"];
  }

LABEL_21:
}

- (void)_stopGlowAnimation
{
  glowView = self->_glowView;
  if (glowView)
  {
    v4 = [(UIView *)glowView layer];
    [v4 removeAllAnimations];

    [(UIView *)self->_glowView removeFromSuperview];
    v5 = self->_glowView;
    self->_glowView = 0;
  }
}

- (id)_baseImage
{
  v2 = [(UIStatusBarBackgroundView *)self _backgroundImageName];
  if (v2)
  {
    v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@_Base.png", v2];
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
  v2 = [(UIStatusBarBackgroundView *)self _backgroundImageName];
  if (v2)
  {
    v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@_Glow.png", v2];
    v4 = [UIImage kitImageNamed:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end