@interface SBIconProgressView
+ (id)_pieImageAtFraction:(double)fraction scale:(double)scale;
+ (id)_pieImagesMemoryPoolForScale:(double)scale;
- (CGRect)circleBoundingRect;
- (SBIconProgressView)initWithFrame:(CGRect)frame;
- (SBIconProgressViewDelegate)delegate;
- (double)_circleScaleFactor;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (void)_clearDisplayLink;
- (void)_drawIncomingCircleWithCenter:(CGPoint)center;
- (void)_drawOutgoingCircleWithCenter:(CGPoint)center;
- (void)_drawPauseUIWithCenter:(CGPoint)center;
- (void)_drawPieWithCenter:(CGPoint)center;
- (void)_ensureDisplayLink;
- (void)_onDisplayLink:(id)link;
- (void)_updateFractionTransitionAnimated:(BOOL)animated;
- (void)_updatePausedTransitionAnimated:(BOOL)animated;
- (void)_updateStateTransitionAnimated:(BOOL)animated;
- (void)_updateTransitionsAnimated:(BOOL)animated;
- (void)dealloc;
- (void)drawRect:(CGRect)rect;
- (void)setCanAnimate:(BOOL)animate;
- (void)setIconImageInfo:(SBIconImageInfo *)info;
- (void)setState:(int64_t)state paused:(BOOL)paused fractionLoaded:(double)loaded animated:(BOOL)animated;
@end

@implementation SBIconProgressView

- (SBIconProgressView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = SBIconProgressView;
  v3 = [(SBIconProgressView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(SBIconProgressView *)v3 setNeedsDisplayOnBoundsChange:1];
    [(SBIconProgressView *)v4 setOpaque:0];
    [(SBIconProgressView *)v4 setWantsDeepColorDrawing:0];
    v4->_canAnimate = 1;
  }

  return v4;
}

- (void)dealloc
{
  [(CADisplayLink *)self->_displayLink invalidate];
  v3.receiver = self;
  v3.super_class = SBIconProgressView;
  [(SBIconProgressView *)&v3 dealloc];
}

- (void)setState:(int64_t)state paused:(BOOL)paused fractionLoaded:(double)loaded animated:(BOOL)animated
{
  self->_modelState = state;
  self->_modelPaused = paused;
  self->_modelFraction = loaded;
  [(SBIconProgressView *)self _updateTransitionsAnimated:animated];
}

- (void)setCanAnimate:(BOOL)animate
{
  self->_canAnimate = animate;
  if (!animate)
  {
    [(SBIconProgressView *)self _clearDisplayLink];

    [(SBIconProgressView *)self _updateTransitionsAnimated:0];
  }
}

- (void)setIconImageInfo:(SBIconImageInfo *)info
{
  if (v6 != self->_iconImageInfo.continuousCornerRadius)
  {
    self->_iconImageInfo.size.width = v3;
    self->_iconImageInfo.size.height = v4;
    self->_iconImageInfo.scale = v5;
    self->_iconImageInfo.continuousCornerRadius = v6;
    [(SBIconProgressView *)self setNeedsDisplay];
  }
}

- (void)_updateTransitionsAnimated:(BOOL)animated
{
  animatedCopy = animated;
  canAnimate = self->_canAnimate;
  if ([(_SBIconProgressPausedTransition *)self->_activePausedTransition isCompleteWithView:self])
  {
    [(SBIconProgressView *)self setActivePausedTransition:0];
  }

  v6 = canAnimate & animatedCopy;
  if ([(_SBIconProgressStateTransition *)self->_activeStateTransition isCompleteWithView:self])
  {
    [(SBIconProgressView *)self setActiveStateTransition:0];
  }

  [(SBIconProgressView *)self _updatePausedTransitionAnimated:v6];
  [(SBIconProgressView *)self _updateStateTransitionAnimated:v6];
  v7 = !self->_activePausedTransition && !self->_activeStateTransition && !self->_displayedState && self->_modelState == 0;
  if ([(_SBIconProgressFractionTransition *)self->_activeFractionTransition isCompleteWithView:self])
  {
    [(SBIconProgressView *)self setActiveFractionTransition:0];
  }

  [(SBIconProgressView *)self _updateFractionTransitionAnimated:v6];
  _hasActiveTransitions = [(SBIconProgressView *)self _hasActiveTransitions];
  if ((_hasActiveTransitions & v6) == 1)
  {
    [(SBIconProgressView *)self _ensureDisplayLink];
  }

  else
  {
    v9 = _hasActiveTransitions;
    [(SBIconProgressView *)self _clearDisplayLink];
    if (v9)
    {
      [(_SBIconProgressStateTransition *)self->_activeStateTransition completeTransitionAndUpdateView:self];
      [(_SBIconProgressPausedTransition *)self->_activePausedTransition completeTransitionAndUpdateView:self];
      [(_SBIconProgressFractionTransition *)self->_activeFractionTransition completeTransitionAndUpdateView:self];
      [(SBIconProgressView *)self _updateTransitionsAnimated:0];
    }
  }

  if (v7)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained progressViewCanBeRemoved:self];
  }
}

- (void)_updatePausedTransitionAnimated:(BOOL)animated
{
  activePausedTransition = self->_activePausedTransition;
  if (activePausedTransition)
  {
    modelPaused = self->_modelPaused;

    [(_SBIconProgressPausedTransition *)activePausedTransition updateToPaused:modelPaused];
  }

  else if (self->_displayingPaused != self->_modelPaused)
  {
    v6 = [_SBIconProgressPausedTransition newTransitionToPaused:?];
    v7 = self->_activePausedTransition;
    self->_activePausedTransition = v6;

    MEMORY[0x1EEE66BB8](v6, v7);
  }
}

- (void)_updateStateTransitionAnimated:(BOOL)animated
{
  if (!self->_activeStateTransition)
  {
    displayedState = self->_displayedState;
    modelState = self->_modelState;
    if (displayedState != modelState && (!animated || !self->_activePausedTransition && !self->_displayingPaused))
    {
      if (displayedState == 2)
      {
        if (modelState)
        {
          v6 = 2;
        }

        else
        {
          if (!BSFloatEqualToFloat())
          {
            self->_modelFraction = 1.0;
            return;
          }

          v6 = self->_displayedState;
          modelState = self->_modelState;
        }
      }

      else if (displayedState == 1)
      {
        v6 = 1;
      }

      else
      {
        if (displayedState)
        {
          return;
        }

        v6 = 0;
        modelState = 1;
      }

      v7 = [_SBIconProgressStateTransition newTransitionFromState:v6 toState:modelState];
      activeStateTransition = self->_activeStateTransition;
      self->_activeStateTransition = v7;

      MEMORY[0x1EEE66BB8](v7, activeStateTransition);
    }
  }
}

- (void)_updateFractionTransitionAnimated:(BOOL)animated
{
  animatedCopy = animated;
  if (animated && (self->_activePausedTransition || self->_activeStateTransition || self->_displayedState != 2 || self->_displayingPaused))
  {
    activeFractionTransition = self->_activeFractionTransition;
    self->_activeFractionTransition = 0;
  }

  else if ((BSFloatEqualToFloat() & 1) == 0 && (!animatedCopy || (BSFloatGreaterThanFloat() & 1) == 0))
  {
    v6 = self->_activeFractionTransition;
    if (v6)
    {
      modelFraction = self->_modelFraction;

      [(_SBIconProgressFractionTransition *)v6 updateToFraction:modelFraction];
    }

    else
    {
      v8 = [_SBIconProgressFractionTransition newTransitionToFraction:self->_modelFraction];
      v9 = self->_activeFractionTransition;
      self->_activeFractionTransition = v8;

      MEMORY[0x1EEE66BB8](v8, v9);
    }
  }
}

- (void)_onDisplayLink:(id)link
{
  linkCopy = link;
  Current = CFAbsoluteTimeGetCurrent();
  v5 = Current - self->_lastUpdate;
  self->_lastUpdate = Current;
  v6 = objc_autoreleasePoolPush();
  [(_SBIconProgressStateTransition *)self->_activeStateTransition updateView:self withElapsedTime:v5];
  v7 = [(_SBIconProgressStateTransition *)self->_activeStateTransition isCompleteWithView:self];
  [(_SBIconProgressPausedTransition *)self->_activePausedTransition updateView:self withElapsedTime:v5];
  v8 = [(_SBIconProgressPausedTransition *)self->_activePausedTransition isCompleteWithView:self];
  [(_SBIconProgressFractionTransition *)self->_activeFractionTransition updateView:self withElapsedTime:v5];
  if ([(_SBIconProgressFractionTransition *)self->_activeFractionTransition isCompleteWithView:self]|| v8 || v7)
  {
    [(SBIconProgressView *)self _updateTransitionsAnimated:1];
  }

  objc_autoreleasePoolPop(v6);
}

- (void)_ensureDisplayLink
{
  if (!self->_displayLink)
  {
    self->_lastUpdate = CFAbsoluteTimeGetCurrent();
    v3 = [MEMORY[0x1E6979330] displayLinkWithTarget:self selector:sel__onDisplayLink_];
    displayLink = self->_displayLink;
    self->_displayLink = v3;

    [(CADisplayLink *)self->_displayLink setPreferredFramesPerSecond:30];
    v5 = self->_displayLink;
    mainRunLoop = [MEMORY[0x1E695DFD0] mainRunLoop];
    [(CADisplayLink *)v5 addToRunLoop:mainRunLoop forMode:*MEMORY[0x1E695DA28]];
  }
}

- (void)_clearDisplayLink
{
  [(CADisplayLink *)self->_displayLink invalidate];
  displayLink = self->_displayLink;
  self->_displayLink = 0;
}

- (double)_circleScaleFactor
{
  if (self->_iconImageInfo.continuousCornerRadius == 0.0)
  {
    return 1.0;
  }

  else
  {
    return self->_iconImageInfo.size.width / 60.0;
  }
}

- (void)drawRect:(CGRect)rect
{
  if (fabs(self->_backgroundAlpha) >= 2.22044605e-16)
  {
    [(SBIconProgressView *)self bounds];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;
    UIRectGetCenter();
    v13 = v12;
    v15 = v14;
    v16 = [MEMORY[0x1E69DC888] colorWithWhite:0.0 alpha:self->_backgroundAlpha * 0.7];
    [v16 set];

    v17 = [MEMORY[0x1E69DC728] bezierPathWithRoundedRect:v5 cornerRadius:{v7, v9, v11, self->_iconImageInfo.continuousCornerRadius}];
    [v17 fill];

    if (BSFloatEqualToFloat())
    {
      [(SBIconProgressView *)self _drawPieWithCenter:v13, v15];
    }

    else
    {
      circleRadiusFraction = self->_circleRadiusFraction;
      if (circleRadiusFraction <= 1.0)
      {
        if (circleRadiusFraction > 0.0)
        {
          [(SBIconProgressView *)self _drawIncomingCircleWithCenter:v13, v15];
        }
      }

      else
      {
        [(SBIconProgressView *)self _drawOutgoingCircleWithCenter:v13, v15];
      }
    }

    if (fabs(self->_pauseRadiusFraction) >= 2.22044605e-16)
    {

      [(SBIconProgressView *)self _drawPauseUIWithCenter:v13, v15];
    }
  }
}

+ (id)_pieImagesMemoryPoolForScale:(double)scale
{
  v4 = _pieImagesMemoryPoolForScale____pools;
  v5 = [MEMORY[0x1E696AD98] numberWithDouble:?];
  v6 = [v4 objectForKey:v5];

  if (!v6)
  {
    if (!_pieImagesMemoryPoolForScale____pools)
    {
      v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v8 = _pieImagesMemoryPoolForScale____pools;
      _pieImagesMemoryPoolForScale____pools = v7;
    }

    v9 = [MEMORY[0x1E69DCAB8] sbf_bytesNeededForSize:4 scale:42.0 withContextType:{42.0, scale}];
    v6 = [objc_alloc(MEMORY[0x1E698B698]) initWithLabel:"iconProgressPieImages" slotLength:v9];
    v10 = _pieImagesMemoryPoolForScale____pools;
    v11 = [MEMORY[0x1E696AD98] numberWithDouble:scale];
    [v10 setObject:v6 forKey:v11];
  }

  return v6;
}

+ (id)_pieImageAtFraction:(double)fraction scale:(double)scale
{
  if (_pieImageAtFraction_scale__onceToken != -1)
  {
    +[SBIconProgressView _pieImageAtFraction:scale:];
  }

  LODWORD(v4) = vcvtad_u64_f64(fraction * 100.0);
  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v4];
  v9 = [_pieImageAtFraction_scale__pieImageCache objectForKey:v8];
  if (!v9)
  {
    v10 = [self _pieImagesMemoryPoolForScale:scale];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __48__SBIconProgressView__pieImageAtFraction_scale___block_invoke_2;
    v12[3] = &__block_descriptor_56_e5_v8__0l;
    v13 = xmmword_1BEE85610;
    fractionCopy = fraction;
    v9 = [MEMORY[0x1E69DCAB8] sbf_imageFromContextWithSize:4 scale:v10 type:v12 pool:42.0 drawing:{42.0, scale}];
    if (v9)
    {
      [_pieImageAtFraction_scale__pieImageCache setObject:v9 forKey:v8];
    }
  }

  return v9;
}

uint64_t __48__SBIconProgressView__pieImageAtFraction_scale___block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v1 = _pieImageAtFraction_scale__pieImageCache;
  _pieImageAtFraction_scale__pieImageCache = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

void __48__SBIconProgressView__pieImageAtFraction_scale___block_invoke_2(double *a1)
{
  v5 = [MEMORY[0x1E69DC728] bezierPathWithArcCenter:1 radius:a1[4] startAngle:a1[5] endAngle:18.0 clockwise:{0.0, 6.28318531}];
  [v5 setLineWidth:3.0];
  [v5 strokeWithBlendMode:17 alpha:1.0];
  v2 = a1[6];
  if (fabs(v2) >= 2.22044605e-16)
  {
    v3 = v2 * 6.28318531 + -1.57079633;
    v4 = [MEMORY[0x1E69DC728] bezierPath];
    [v4 moveToPoint:{a1[4], a1[5]}];
    [v4 addLineToPoint:{a1[4], a1[5] + -18.0}];
    [v4 addArcWithCenter:1 radius:a1[4] startAngle:a1[5] endAngle:18.0 clockwise:{-1.57079633, v3}];
    [v4 addLineToPoint:{a1[4], a1[5]}];
    [v4 fillWithBlendMode:17 alpha:1.0];
  }
}

- (void)_drawPieWithCenter:(CGPoint)center
{
  y = center.y;
  x = center.x;
  traitCollection = [(SBIconProgressView *)self traitCollection];
  [traitCollection displayScale];
  v8 = v7;

  v14 = [objc_opt_class() _pieImageAtFraction:self->_displayedFraction scale:v8];
  [v14 size];
  v10 = v9;
  v12 = v11;
  [(SBIconProgressView *)self _circleScaleFactor];
  [v14 drawInRect:16 blendMode:ceil(x - v10 * v13 * 0.5) alpha:{ceil(y - v12 * v13 * 0.5), v10 * v13, v12 * v13, 1.0}];
}

- (void)_drawOutgoingCircleWithCenter:(CGPoint)center
{
  y = center.y;
  x = center.x;
  CurrentContext = UIGraphicsGetCurrentContext();
  CGContextSaveGState(CurrentContext);
  v7 = [MEMORY[0x1E69DC888] colorWithWhite:1.0 alpha:self->_foregroundAlpha * 0.2];
  [v7 set];

  v8 = [MEMORY[0x1E69DC728] bezierPathWithArcCenter:1 radius:x startAngle:y endAngle:fmax(self->_circleRadiusFraction * 18.0 clockwise:{19.5), 0.0, 6.28318531}];
  [v8 fillWithBlendMode:17 alpha:1.0];
  CGContextRestoreGState(CurrentContext);
}

- (void)_drawIncomingCircleWithCenter:(CGPoint)center
{
  y = center.y;
  x = center.x;
  v6 = [MEMORY[0x1E69DC888] colorWithWhite:1.0 alpha:0.2];
  [v6 set];

  v7 = self->_circleRadiusFraction * 18.0;
  v8 = [MEMORY[0x1E69DC728] bezierPathWithArcCenter:1 radius:x startAngle:y endAngle:v7 clockwise:{0.0, 6.28318531}];
  v10 = v8;
  v9 = 3.0;
  if (v7 <= 3.0)
  {
    v9 = v7;
  }

  [v8 setLineWidth:v9];
  [v10 strokeWithBlendMode:17 alpha:1.0];
}

- (void)_drawPauseUIWithCenter:(CGPoint)center
{
  y = center.y;
  x = center.x;
  v10 = [MEMORY[0x1E69DC728] bezierPathWithArcCenter:1 radius:center.x startAngle:center.y endAngle:self->_pauseRadiusFraction * 13.0 clockwise:{0.0, 6.28318531}];
  [v10 addClip];
  v5 = [MEMORY[0x1E69DC888] colorWithWhite:0.0 alpha:0.7];
  [v5 set];

  [v10 fillWithBlendMode:17 alpha:1.0];
  v6 = [MEMORY[0x1E69DC888] colorWithWhite:1.0 alpha:0.2];
  [v6 set];

  v7 = y + -6.0;
  v8 = [MEMORY[0x1E69DC728] bezierPathWithRect:{x + -5.5, v7, 4.0, 12.0}];
  [v8 fillWithBlendMode:17 alpha:1.0];

  v9 = [MEMORY[0x1E69DC728] bezierPathWithRect:{x + 1.5, v7, 4.0, 12.0}];
  [v9 fillWithBlendMode:17 alpha:1.0];
}

- (CGRect)circleBoundingRect
{
  [(SBIconProgressView *)self bounds];
  UIRectGetCenter();
  v4 = v3;
  v6 = v5;
  [(SBIconProgressView *)self _circleScaleFactor];
  v8 = v7 * 21.0;
  v9 = v4 - v7 * 21.0;
  v10 = v6 - v8;
  v11 = v8 + v8;
  v12 = v11;
  result.size.height = v12;
  result.size.width = v11;
  result.origin.y = v10;
  result.origin.x = v9;
  return result;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(SBIconProgressView *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  v4 = [MEMORY[0x1E698E680] builderWithObject:self];
  [(SBIconProgressView *)self frame];
  v5 = [v4 appendRect:@"frame" withName:?];
  v6 = [v4 appendInteger:self->_modelState withName:@"state"];
  v7 = [v4 appendBool:self->_modelPaused withName:@"paused"];
  v8 = [v4 appendFloat:@"fraction" withName:self->_modelFraction];
  v9 = [v4 appendBool:-[SBIconProgressView canAnimate](self withName:{"canAnimate"), @"canAnimate"}];

  return v4;
}

- (SBIconProgressViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end