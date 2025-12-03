@interface _UITextCursorTrailingGlowView
- (CGPath)pathForRect:(CGRect)rect;
- (CGRect)estimatedCurrentFrame;
- (_UITextCursorTrailingGlowView)initWithFrame:(CGRect)frame;
- (void)_animate;
- (void)_updateShapeAndAnimate;
- (void)animationDidStop:(id)stop finished:(BOOL)finished;
- (void)cursorDidMoveToFrame:(CGRect)frame fromPreviousFrame:(CGRect)previousFrame isNewLine:(BOOL)line;
- (void)setTintColor:(id)color;
- (void)setTrailingAnimationEnabled:(BOOL)enabled;
@end

@implementation _UITextCursorTrailingGlowView

- (_UITextCursorTrailingGlowView)initWithFrame:(CGRect)frame
{
  v15.receiver = self;
  v15.super_class = _UITextCursorTrailingGlowView;
  v3 = [(UIView *)&v15 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(UIView *)v3 setUserInteractionEnabled:0];
    v5 = [_UIShapeView alloc];
    v6 = [(UIView *)v5 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    shapeView = v4->_shapeView;
    v4->_shapeView = v6;

    [(UIView *)v4 addSubview:v4->_shapeView];
    v8 = [[UIDictationGlowEffect alloc] initWithView:v4];
    dictationGlowEffect = v4->_dictationGlowEffect;
    v4->_dictationGlowEffect = v8;

    v10 = +[_UIDictationSettingsDomain rootSettings];
    [v10 trailingGlowBlurRadius];
    [(UIDictationGlowEffect *)v4->_dictationGlowEffect setBlurRadius:?];

    v11 = +[_UIDictationSettingsDomain rootSettings];
    [v11 trailingGlowAlpha];
    [(UIView *)v4 setAlpha:?];

    tintColor = [(UIView *)v4 tintColor];
    [(UIView *)v4 alpha];
    v13 = [tintColor colorWithAlphaComponent:?];
    [(UIDictationGlowEffect *)v4->_dictationGlowEffect setTintColor:v13];
  }

  return v4;
}

- (void)setTrailingAnimationEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v5 = +[_UIDictationSettingsDomain rootSettings];
  trailAnimationEnabled = [v5 trailAnimationEnabled];

  if (trailAnimationEnabled)
  {
    self->_trailingAnimationEnabled = enabledCopy;
    if (enabledCopy)
    {
      if ([(UIView *)self isHidden])
      {
        [(UIView *)self setHidden:0];
      }

      [(_UITextCursorTrailingGlowView *)self _updateShapeAndAnimate];
    }

    else if (self->_animation)
    {
      layer = [(UIView *)self->_shapeView layer];
      mask = [layer mask];
      [mask removeAnimationForKey:@"mask animation"];

      animation = self->_animation;
      self->_animation = 0;

      [(UIView *)self setHidden:1];
    }
  }
}

- (void)_updateShapeAndAnimate
{
  if (self->_needsToUpdateAnimation)
  {
    self->_needsToUpdateAnimation = 0;
    [(UIView *)self bounds];
    [(UIView *)self bounds];
    [(UIView *)self bounds];
    v5 = v4;
    [(UIView *)self bounds];
    [(UIView *)self->_shapeView setFrame:0.0, 0.0, v5];
    tintColor = [(UIView *)self tintColor];
    cGColor = [tintColor CGColor];
    shapeLayer = [(_UIShapeView *)self->_shapeView shapeLayer];
    [shapeLayer setFillColor:cGColor];

    [(_UITextCursorTrailingGlowView *)self _animate];
  }
}

- (void)_animate
{
  [(UIView *)self bounds];
  x = v20.origin.x;
  y = v20.origin.y;
  width = v20.size.width;
  height = v20.size.height;
  MaxX = CGRectGetMaxX(v20);
  v8 = [MEMORY[0x1E6979318] animationWithKeyPath:@"path"];
  animation = self->_animation;
  self->_animation = v8;

  v10 = +[_UIDictationSettingsDomain rootSettings];
  [v10 trailingGlowDuration];
  [(CABasicAnimation *)self->_animation setDuration:?];

  v11 = [MEMORY[0x1E69793D0] functionWithName:*MEMORY[0x1E6979ED0]];
  [(CABasicAnimation *)self->_animation setTimingFunction:v11];

  [(CABasicAnimation *)self->_animation setFromValue:[(_UITextCursorTrailingGlowView *)self pathForRect:x, y, width, height]];
  [(CABasicAnimation *)self->_animation setToValue:[(_UITextCursorTrailingGlowView *)self pathForRect:MaxX, y, 0.0, height]];
  [(CABasicAnimation *)self->_animation setDelegate:self];
  v12 = +[_UIDictationSettingsDomain rootSettings];
  [v12 trailFrameRate];
  *&y = v13;
  v14 = +[_UIDictationSettingsDomain rootSettings];
  [v14 trailFrameRate];
  v16 = v15;
  v19 = CAFrameRateRangeMake(30.0, *&y, v16);
  [(CABasicAnimation *)self->_animation setPreferredFrameRateRange:*&v19.minimum, *&v19.maximum, *&v19.preferred];

  shapeLayer = [(_UIShapeView *)self->_shapeView shapeLayer];
  [shapeLayer addAnimation:self->_animation forKey:@"mask animation"];

  [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
  self->_animationStartTime = v18;
}

- (CGPath)pathForRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v7 = +[UIBezierPath bezierPath];
  v8 = +[_UIDictationSettingsDomain rootSettings];
  [v8 headHeight];
  v10 = (1.0 - v9) * 0.5;

  v11 = +[_UIDictationSettingsDomain rootSettings];
  [v11 tailHeight];
  v13 = (1.0 - v12) * 0.5;

  v20.origin.x = x;
  v20.origin.y = y;
  v20.size.width = width;
  v20.size.height = height;
  MinX = CGRectGetMinX(v20);
  v21.origin.x = x;
  v21.origin.y = y;
  v21.size.width = width;
  v21.size.height = height;
  [v7 moveToPoint:{MinX, CGRectGetMaxY(v21) * (1.0 - v13)}];
  v22.origin.x = x;
  v22.origin.y = y;
  v22.size.width = width;
  v22.size.height = height;
  v15 = CGRectGetMinX(v22);
  v23.origin.x = x;
  v23.origin.y = y;
  v23.size.width = width;
  v23.size.height = height;
  [v7 addLineToPoint:{v15, v13 * CGRectGetMaxY(v23)}];
  v24.origin.x = x;
  v24.origin.y = y;
  v24.size.width = width;
  v24.size.height = height;
  MaxX = CGRectGetMaxX(v24);
  v25.origin.x = x;
  v25.origin.y = y;
  v25.size.width = width;
  v25.size.height = height;
  [v7 addLineToPoint:{MaxX, v10 * CGRectGetMaxY(v25)}];
  v26.origin.x = x;
  v26.origin.y = y;
  v26.size.width = width;
  v26.size.height = height;
  v17 = CGRectGetMaxX(v26);
  v27.origin.x = x;
  v27.origin.y = y;
  v27.size.width = width;
  v27.size.height = height;
  [v7 addLineToPoint:{v17, (1.0 - v10) * CGRectGetMaxY(v27)}];
  [v7 closePath];
  cGPath = [v7 CGPath];

  return cGPath;
}

- (void)setTintColor:(id)color
{
  v7.receiver = self;
  v7.super_class = _UITextCursorTrailingGlowView;
  colorCopy = color;
  [(UIView *)&v7 setTintColor:colorCopy];
  v5 = [_UIDictationSettingsDomain rootSettings:v7.receiver];
  [v5 trailingGlowAlpha];
  v6 = [colorCopy colorWithAlphaComponent:?];

  [(UIDictationGlowEffect *)self->_dictationGlowEffect setTintColor:v6];
}

- (void)cursorDidMoveToFrame:(CGRect)frame fromPreviousFrame:(CGRect)previousFrame isNewLine:(BOOL)line
{
  height = previousFrame.size.height;
  width = previousFrame.size.width;
  y = previousFrame.origin.y;
  x = previousFrame.origin.x;
  v9 = frame.size.height;
  v10 = frame.size.width;
  v11 = frame.origin.y;
  v12 = frame.origin.x;
  if (line && self->_animation)
  {
    [(_UITextCursorTrailingGlowView *)self setTrailingAnimationEnabled:0];
  }

  if (v11 == y)
  {
    v18.origin.x = x;
    v18.origin.y = y;
    v18.size.width = width;
    v18.size.height = height;
    v21.origin.x = v12;
    v21.origin.y = v11;
    v21.size.width = v10;
    v21.size.height = v9;
    if (!CGRectEqualToRect(v18, v21) && x < v12)
    {
      if (self->_animation)
      {
        [(_UITextCursorTrailingGlowView *)self estimatedCurrentFrame];
        x = v14;
        y = v15;
        width = v16;
        height = v17;
      }

      v19.origin.x = x;
      v19.origin.y = y;
      v19.size.width = width;
      v19.size.height = height;
      v22.origin.x = v12;
      v22.origin.y = v11;
      v22.size.width = v10;
      v22.size.height = v9;
      v20 = CGRectUnion(v19, v22);
      [(UIView *)self setFrame:v20.origin.x, v20.origin.y, v20.size.width, v20.size.height];
      self->_needsToUpdateAnimation = 1;
    }
  }
}

- (CGRect)estimatedCurrentFrame
{
  [(UIView *)self frame];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
  v12 = v11;
  [(CABasicAnimation *)self->_animation duration];
  v14 = fmax(fmin((v12 - self->_animationStartTime) / v13, 1.0), 0.0);
  timingFunction = [(CABasicAnimation *)self->_animation timingFunction];
  *&v16 = v14;
  [timingFunction _solveForInput:v16];
  v18 = v17;

  v24.origin.x = v4;
  v24.origin.y = v6;
  v24.size.width = v8;
  v24.size.height = v10;
  MaxX = CGRectGetMaxX(v24);
  v25.origin.x = v4;
  v25.origin.y = v6;
  v25.size.width = v8;
  v25.size.height = v10;
  v20 = MaxX * v18 + (1.0 - v18) * CGRectGetMinX(v25);
  v21 = MaxX - v20;
  v22 = v6;
  v23 = v10;
  result.size.height = v23;
  result.size.width = v21;
  result.origin.y = v22;
  result.origin.x = v20;
  return result;
}

- (void)animationDidStop:(id)stop finished:(BOOL)finished
{
  if (finished)
  {
    animation = self->_animation;
    self->_animation = 0;

    [(UIView *)self setHidden:1];
    transitionBlock = [(_UITextCursorTrailingGlowView *)self transitionBlock];

    if (transitionBlock)
    {
      transitionBlock2 = [(_UITextCursorTrailingGlowView *)self transitionBlock];
      transitionBlock2[2]();
    }
  }
}

@end