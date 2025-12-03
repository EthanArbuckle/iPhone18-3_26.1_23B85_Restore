@interface VUISBIconProgressView
+ (id)_pieImageAtFraction:(double)fraction;
+ (id)_pieImagesMemoryPool;
- (CGRect)circleBoundingRect;
- (VUISBIconProgressView)initWithFrame:(CGRect)frame;
- (id)_maskImage;
- (void)_clearDisplayLink;
- (void)_clearTransitionIfComplete:(id *)complete;
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
- (void)setOverlayImage:(id)image;
- (void)setState:(int64_t)state paused:(BOOL)paused fractionLoaded:(double)loaded animated:(BOOL)animated;
@end

@implementation VUISBIconProgressView

- (VUISBIconProgressView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = VUISBIconProgressView;
  v3 = [(VUISBIconProgressView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(VUISBIconProgressView *)v3 setNeedsDisplayOnBoundsChange:1];
    [(VUISBIconProgressView *)v4 setOpaque:0];
    v4->_canAnimate = 1;
  }

  return v4;
}

- (void)dealloc
{
  [(CADisplayLink *)self->_displayLink invalidate];

  v3.receiver = self;
  v3.super_class = VUISBIconProgressView;
  [(VUISBIconProgressView *)&v3 dealloc];
}

- (void)setState:(int64_t)state paused:(BOOL)paused fractionLoaded:(double)loaded animated:(BOOL)animated
{
  self->_modelState = state;
  self->_modelPaused = paused;
  self->_modelFraction = loaded;
  [(VUISBIconProgressView *)self _updateTransitionsAnimated:animated];
}

- (void)setCanAnimate:(BOOL)animate
{
  self->_canAnimate = animate;
  if (!animate)
  {
    [(VUISBIconProgressView *)self _clearDisplayLink];

    [(VUISBIconProgressView *)self _updateTransitionsAnimated:0];
  }
}

- (void)setOverlayImage:(id)image
{
  if (self->_overlayImage != image)
  {

    self->_maskImage = 0;
    self->_overlayImage = image;

    [(VUISBIconProgressView *)self setNeedsDisplay];
  }
}

- (void)_updateTransitionsAnimated:(BOOL)animated
{
  v4 = self->_canAnimate && animated;
  [(VUISBIconProgressView *)self _clearTransitionIfComplete:&self->_activePausedTransition];
  [(VUISBIconProgressView *)self _clearTransitionIfComplete:&self->_activeStateTransition];
  [(VUISBIconProgressView *)self _updatePausedTransitionAnimated:v4];
  [(VUISBIconProgressView *)self _updateStateTransitionAnimated:v4];
  if (*&self->_activeStateTransition == 0 && !self->_displayedState && !self->_modelState)
  {
    [(VUISBIconProgressViewDelegate *)self->_delegate progressViewCanBeRemoved:self];
  }

  [(VUISBIconProgressView *)self _clearTransitionIfComplete:&self->_activeFractionTransition];
  [(VUISBIconProgressView *)self _updateFractionTransitionAnimated:v4];
  _hasActiveTransitions = [(VUISBIconProgressView *)self _hasActiveTransitions];
  if (_hasActiveTransitions && v4)
  {

    [(VUISBIconProgressView *)self _ensureDisplayLink];
  }

  else
  {
    v6 = _hasActiveTransitions;
    [(VUISBIconProgressView *)self _clearDisplayLink];
    if (v6)
    {
      [(_VUISBInstallProgressStateTransition *)self->_activeStateTransition completeTransitionAndUpdateView:self];
      [(_VUISBIconProgressPausedTransition *)self->_activePausedTransition completeTransitionAndUpdateView:self];
      [(_VUISBIconProgressFractionTransition *)self->_activeFractionTransition completeTransitionAndUpdateView:self];

      [(VUISBIconProgressView *)self _updateTransitionsAnimated:0];
    }
  }
}

- (void)_updatePausedTransitionAnimated:(BOOL)animated
{
  activePausedTransition = self->_activePausedTransition;
  if (activePausedTransition)
  {
    modelPaused = self->_modelPaused;

    [(_VUISBIconProgressPausedTransition *)activePausedTransition updateToPaused:modelPaused];
  }

  else if (self->_displayingPaused != self->_modelPaused)
  {
    self->_activePausedTransition = [_VUISBIconProgressPausedTransition newTransitionToPaused:?];
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
        if (!modelState && fabs(self->_displayedFraction + -1.0) >= 2.22044605e-16)
        {
          self->_modelFraction = 1.0;
          return;
        }

        v5 = 2;
      }

      else if (displayedState == 1)
      {
        v5 = 1;
      }

      else
      {
        if (displayedState)
        {
          return;
        }

        v5 = 0;
        modelState = 1;
      }

      self->_activeStateTransition = [_VUISBInstallProgressStateTransition newTransitionFromState:v5 toState:modelState];
    }
  }
}

- (void)_updateFractionTransitionAnimated:(BOOL)animated
{
  if (animated && (self->_activePausedTransition || self->_activeStateTransition || self->_displayedState != 2 || self->_displayingPaused))
  {

    self->_activeFractionTransition = 0;
  }

  else
  {
    modelFraction = self->_modelFraction;
    displayedFraction = self->_displayedFraction;
    if (vabdd_f64(modelFraction, displayedFraction) >= 2.22044605e-16 && (!animated || displayedFraction - modelFraction <= 0.00000011920929))
    {
      activeFractionTransition = self->_activeFractionTransition;
      if (activeFractionTransition)
      {

        [(_VUISBIconProgressFractionTransition *)activeFractionTransition updateToFraction:?];
      }

      else
      {
        self->_activeFractionTransition = [_VUISBIconProgressFractionTransition newTransitionToFraction:?];
      }
    }
  }
}

- (void)_clearTransitionIfComplete:(id *)complete
{
  if ([*complete isCompleteWithView:self])
  {

    *complete = 0;
  }
}

- (void)_onDisplayLink:(id)link
{
  Current = CFAbsoluteTimeGetCurrent();
  v5 = Current - self->_lastUpdate;
  self->_lastUpdate = Current;
  v6 = objc_autoreleasePoolPush();
  [(_VUISBInstallProgressStateTransition *)self->_activeStateTransition updateView:self withElapsedTime:v5];
  v7 = [(_VUISBInstallProgressStateTransition *)self->_activeStateTransition isCompleteWithView:self];
  [(_VUISBIconProgressPausedTransition *)self->_activePausedTransition updateView:self withElapsedTime:v5];
  v8 = [(_VUISBIconProgressPausedTransition *)self->_activePausedTransition isCompleteWithView:self];
  [(_VUISBIconProgressFractionTransition *)self->_activeFractionTransition updateView:self withElapsedTime:v5];
  if ([(_VUISBIconProgressFractionTransition *)self->_activeFractionTransition isCompleteWithView:self]|| v8 || v7)
  {
    [(VUISBIconProgressView *)self _updateTransitionsAnimated:1];
  }

  objc_autoreleasePoolPop(v6);
}

- (void)_ensureDisplayLink
{
  if (!self->_displayLink)
  {
    self->_lastUpdate = CFAbsoluteTimeGetCurrent();
    v3 = [MEMORY[0x1E6979330] displayLinkWithTarget:self selector:sel__onDisplayLink_];
    self->_displayLink = v3;
    [(CADisplayLink *)v3 setPreferredFramesPerSecond:30];
    displayLink = self->_displayLink;
    mainRunLoop = [MEMORY[0x1E695DFD0] mainRunLoop];
    v6 = *MEMORY[0x1E695DA28];

    [(CADisplayLink *)displayLink addToRunLoop:mainRunLoop forMode:v6];
  }
}

- (void)_clearDisplayLink
{
  [(CADisplayLink *)self->_displayLink invalidate];
  v3 = self->_displayLink;
  self->_displayLink = 0;
}

- (void)drawRect:(CGRect)rect
{
  if (fabs(self->_backgroundAlpha) >= 2.22044605e-16)
  {
    [(VUISBIconProgressView *)self bounds];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;
    UIRectGetCenter();
    v13 = v12;
    v15 = v14;
    overlayImage = self->_overlayImage;
    if (overlayImage)
    {
      [(UIImage *)overlayImage drawInRect:17 blendMode:v5 alpha:v7, v9, v11, self->_backgroundAlpha * 0.7];
    }

    else
    {
      [objc_msgSend(MEMORY[0x1E69DC888] colorWithWhite:0.0 alpha:{self->_backgroundAlpha * 0.7), "set"}];
      v19.origin.x = v5;
      v19.origin.y = v7;
      v19.size.width = v9;
      v19.size.height = v11;
      UIRectFill(v19);
    }

    circleRadiusFraction = self->_circleRadiusFraction;
    if (fabs(circleRadiusFraction + -1.0) >= 2.22044605e-16)
    {
      if (circleRadiusFraction <= 1.0)
      {
        if (circleRadiusFraction > 0.0)
        {
          [(VUISBIconProgressView *)self _drawIncomingCircleWithCenter:v13, v15];
        }
      }

      else
      {
        [(VUISBIconProgressView *)self _drawOutgoingCircleWithCenter:v13, v15];
      }
    }

    else
    {
      [(VUISBIconProgressView *)self _drawPieWithCenter:v13, v15];
    }

    if (fabs(self->_pauseRadiusFraction) >= 2.22044605e-16)
    {

      [(VUISBIconProgressView *)self _drawPauseUIWithCenter:v13, v15];
    }
  }
}

+ (id)_pieImagesMemoryPool
{
  if (_pieImagesMemoryPool_onceToken != -1)
  {
    +[VUISBIconProgressView _pieImagesMemoryPool];
  }

  return _pieImagesMemoryPool___pool;
}

uint64_t __45__VUISBIconProgressView__pieImagesMemoryPool__block_invoke()
{
  v0 = MEMORY[0x1E69DCAB8];
  [objc_msgSend(MEMORY[0x1E69DCEB0] "mainScreen")];
  v2 = [v0 vui_bytesNeededForSize:0 scale:78.0 withContextType:{78.0, v1}];
  result = [objc_alloc(MEMORY[0x1E698B698]) initWithLabel:"iconProgressPieImages" slotLength:v2];
  _pieImagesMemoryPool___pool = result;
  return result;
}

+ (id)_pieImageAtFraction:(double)fraction
{
  if (_pieImageAtFraction__onceToken != -1)
  {
    +[VUISBIconProgressView _pieImageAtFraction:];
  }

  LODWORD(v3) = vcvtad_u64_f64(fraction * 100.0);
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v3];
  v7 = [_pieImageAtFraction__pieImageCache objectForKey:v6];
  if (!v7)
  {
    _pieImagesMemoryPool = [self _pieImagesMemoryPool];
    v9 = MEMORY[0x1E69DCAB8];
    [objc_msgSend(MEMORY[0x1E69DCEB0] "mainScreen")];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __45__VUISBIconProgressView__pieImageAtFraction___block_invoke_2;
    v12[3] = &__block_descriptor_72_e5_v8__0l;
    v13 = vdupq_n_s64(0x4053800000000000uLL);
    v14 = xmmword_1E4296D50;
    fractionCopy = fraction;
    v7 = [v9 vui_imageFromContextWithSize:0 scale:_pieImagesMemoryPool type:v12 pool:78.0 drawing:{78.0, v10}];
    if (v7)
    {
      [_pieImageAtFraction__pieImageCache setObject:v7 forKey:v6];
    }
  }

  return v7;
}

id __45__VUISBIconProgressView__pieImageAtFraction___block_invoke()
{
  result = objc_alloc_init(MEMORY[0x1E695DF90]);
  _pieImageAtFraction__pieImageCache = result;
  return result;
}

uint64_t __45__VUISBIconProgressView__pieImageAtFraction___block_invoke_2(CGFloat *a1)
{
  [objc_msgSend(MEMORY[0x1E69DC888] colorWithWhite:0.0 alpha:{0.7), "set"}];
  v8.origin.x = *MEMORY[0x1E695EFF8];
  v8.origin.y = *(MEMORY[0x1E695EFF8] + 8);
  v8.size.width = a1[4];
  v8.size.height = a1[5];
  UIRectFill(v8);
  [objc_msgSend(MEMORY[0x1E69DC888] colorWithWhite:1.0 alpha:{0.2), "set"}];
  v2 = [MEMORY[0x1E69DC728] bezierPathWithArcCenter:1 radius:a1[6] startAngle:a1[7] endAngle:36.0 clockwise:{0.0, 6.28318531}];
  [v2 setLineWidth:3.0];
  result = [v2 strokeWithBlendMode:17 alpha:1.0];
  v4 = a1[8];
  if (fabs(v4) >= 2.22044605e-16)
  {
    v5 = v4 * 6.28318531 + -1.57079633;
    v6 = [MEMORY[0x1E69DC728] bezierPath];
    [v6 moveToPoint:{a1[6], a1[7]}];
    [v6 addLineToPoint:{a1[6], a1[7] + -36.0}];
    [v6 addArcWithCenter:1 radius:a1[6] startAngle:a1[7] endAngle:36.0 clockwise:{-1.57079633, v5}];
    [v6 addLineToPoint:{a1[6], a1[7]}];

    return [v6 fillWithBlendMode:17 alpha:1.0];
  }

  return result;
}

- (void)_drawPieWithCenter:(CGPoint)center
{
  y = center.y;
  x = center.x;
  v5 = [objc_opt_class() _pieImageAtFraction:self->_displayedFraction];
  [v5 size];
  v7 = v6;
  v9 = v8;
  v10 = ceil(x - v6 * 0.5);
  v11 = ceil(y - v8 * 0.5);

  [v5 drawInRect:17 blendMode:v10 alpha:{v11, v7, v9, 1.0}];
}

- (void)_drawOutgoingCircleWithCenter:(CGPoint)center
{
  y = center.y;
  x = center.x;
  CurrentContext = UIGraphicsGetCurrentContext();
  CGContextSaveGState(CurrentContext);
  if (self->_overlayImage)
  {
    [(VUISBIconProgressView *)self bounds];
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v14 = v13;
    maskImage = self->_maskImage;
    if (!maskImage || (([(UIImage *)maskImage size], v18 = vabdd_f64(v17, v14), maskImage = self->_maskImage, vabdd_f64(v16, v12) < 2.22044605e-16) ? (v19 = v18 < 2.22044605e-16) : (v19 = 0), !v19))
    {

      maskImage = [(VUISBIconProgressView *)self _maskImage];
      self->_maskImage = maskImage;
    }

    cGImage = [(UIImage *)maskImage CGImage];
    v22.origin.x = v8;
    v22.origin.y = v10;
    v22.size.width = v12;
    v22.size.height = v14;
    CGContextClipToMask(CurrentContext, v22, cGImage);
  }

  [objc_msgSend(MEMORY[0x1E69DC888] colorWithWhite:1.0 alpha:{self->_foregroundAlpha * 0.2), "set"}];
  [objc_msgSend(MEMORY[0x1E69DC728] bezierPathWithArcCenter:1 radius:x startAngle:y endAngle:fmax(self->_circleRadiusFraction * 36.0 clockwise:{37.5), 0.0, 6.28318531), "fillWithBlendMode:alpha:", 17, 1.0}];

  CGContextRestoreGState(CurrentContext);
}

- (void)_drawIncomingCircleWithCenter:(CGPoint)center
{
  y = center.y;
  x = center.x;
  [objc_msgSend(MEMORY[0x1E69DC888] colorWithWhite:1.0 alpha:{0.2), "set"}];
  v6 = self->_circleRadiusFraction * 36.0;
  v7 = [MEMORY[0x1E69DC728] bezierPathWithArcCenter:1 radius:x startAngle:y endAngle:v6 clockwise:{0.0, 6.28318531}];
  v8 = v7;
  v9 = 3.0;
  if (v6 <= 3.0)
  {
    v9 = v6;
  }

  [v7 setLineWidth:v9];

  [v8 strokeWithBlendMode:17 alpha:1.0];
}

- (void)_drawPauseUIWithCenter:(CGPoint)center
{
  y = center.y;
  x = center.x;
  v5 = [MEMORY[0x1E69DC728] bezierPathWithArcCenter:1 radius:center.x startAngle:center.y endAngle:self->_pauseRadiusFraction * 13.0 clockwise:{0.0, 6.28318531}];
  [v5 addClip];
  [objc_msgSend(MEMORY[0x1E69DC888] colorWithWhite:0.0 alpha:{0.7), "set"}];
  [v5 fillWithBlendMode:17 alpha:1.0];
  [objc_msgSend(MEMORY[0x1E69DC888] colorWithWhite:1.0 alpha:{0.2), "set"}];
  v6 = y + -6.0;
  [objc_msgSend(MEMORY[0x1E69DC728] bezierPathWithRect:{x + -5.5, v6, 4.0, 12.0), "fillWithBlendMode:alpha:", 17, 1.0}];
  v7 = [MEMORY[0x1E69DC728] bezierPathWithRect:{x + 1.5, v6, 4.0, 12.0}];

  [v7 fillWithBlendMode:17 alpha:1.0];
}

- (id)_maskImage
{
  [(VUISBIconProgressView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [objc_msgSend(MEMORY[0x1E69DCEB0] "mainScreen")];
  v12 = v11;
  v15.width = v8;
  v15.height = v10;
  UIGraphicsBeginImageContextWithOptions(v15, 0, v12);
  [(UIImage *)self->_overlayImage drawInRect:17 blendMode:v4 alpha:v6, v8, v10, 1.0];
  ImageFromCurrentImageContext = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();
  return ImageFromCurrentImageContext;
}

- (CGRect)circleBoundingRect
{
  [(VUISBIconProgressView *)self bounds];
  UIRectGetCenter();
  v3 = v2 + -39.0;
  v5 = v4 + -39.0;
  v6 = 78.0;
  v7 = 78.0;
  result.size.height = v7;
  result.size.width = v6;
  result.origin.y = v5;
  result.origin.x = v3;
  return result;
}

@end