@interface UITextMagnifier
- (CGPoint)animationPoint;
- (CGPoint)magnificationPoint;
- (CGPoint)terminalPoint;
- (UITextMagnifier)initWithFrame:(CGRect)frame;
- (void)animateToAutoscrollRenderer;
- (void)animateToMagnifierRenderer;
- (void)beginMagnifyingTarget:(id)target text:(id)text magnificationPoint:(CGPoint)point offset:(CGPoint)offset animated:(BOOL)animated;
- (void)beginZoomDownAnimation:(id)animation withDuration:(double)duration postponeHandler:(id)handler;
- (void)beginZoomUpAnimation:(id)animation withDuration:(double)duration;
- (void)detectLostTouches:(id)touches;
- (void)remove;
- (void)setAutoscrollDirections:(int)directions;
- (void)setFrame:(CGRect)frame;
- (void)setMagnificationPoint:(CGPoint)point;
- (void)setNeedsDisplay;
- (void)setToMagnifierRenderer;
- (void)stopMagnifying:(BOOL)magnifying;
@end

@implementation UITextMagnifier

- (UITextMagnifier)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v14.receiver = self;
  v14.super_class = UITextMagnifier;
  v7 = [(UIView *)&v14 initWithFrame:?];
  if (v7)
  {
    v8 = +[UIColor clearColor];
    [(UIView *)v7 setBackgroundColor:v8];

    v9 = objc_alloc_init(UITextMagnifierTimeWeightedPoint);
    weightedPoint = v7->_weightedPoint;
    v7->_weightedPoint = v9;

    v11 = [objc_alloc(objc_msgSend(objc_opt_class() "renderClass"))];
    magnifierRenderer = v7->_magnifierRenderer;
    v7->_magnifierRenderer = v11;

    [(UIView *)v7 addSubview:v7->_magnifierRenderer];
  }

  return v7;
}

- (CGPoint)magnificationPoint
{
  x = self->_magnificationPoint.x;
  y = self->_magnificationPoint.y;
  result.y = y;
  result.x = x;
  return result;
}

- (void)setMagnificationPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  [(UITextMagnifierTimeWeightedPoint *)self->_weightedPoint addPoint:?];
  [(UITextMagnifier *)self adjustMagnificationPoint:x, y];
  v8 = v6;
  v9 = v7;
  if (v6 != self->_magnificationPoint.x || v7 != self->_magnificationPoint.y)
  {
    self->_magnificationPoint.x = v6;
    self->_magnificationPoint.y = v7;
    if (!self->_isAnimating)
    {
      [(UITextMagnifier *)self updateFrameAndOffset];
      [(UITextMagnifier *)self setNeedsDisplay];
    }
  }

  self->_animationPoint.x = v8;
  self->_animationPoint.y = v9;
}

- (CGPoint)terminalPoint
{
  [(UITextMagnifierTimeWeightedPoint *)self->_weightedPoint weightedPoint];
  result.y = v3;
  result.x = v2;
  return result;
}

- (void)animateToAutoscrollRenderer
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __46__UITextMagnifier_animateToAutoscrollRenderer__block_invoke;
  v2[3] = &unk_1E70F3590;
  v2[4] = self;
  [UIView animateWithDuration:v2 animations:0.1];
}

uint64_t __46__UITextMagnifier_animateToAutoscrollRenderer__block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 488) setAlpha:0.0];
  v2 = *(*(a1 + 32) + 496);

  return [v2 setAlpha:0.8];
}

- (void)setToMagnifierRenderer
{
  [(UIView *)self->_magnifierRenderer setAlpha:1.0];
  [(UIView *)self->_autoscrollRenderer setAlpha:0.0];
  magnifierRenderer = self->_magnifierRenderer;

  [(UIView *)magnifierRenderer setNeedsDisplay];
}

- (void)animateToMagnifierRenderer
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __45__UITextMagnifier_animateToMagnifierRenderer__block_invoke;
  v2[3] = &unk_1E70F3590;
  v2[4] = self;
  [UIView animateWithDuration:v2 animations:0.1];
}

- (void)setAutoscrollDirections:(int)directions
{
  if (directions)
  {
    if (self->_autoscrollDirections != directions || ([(UIView *)self->_autoscrollRenderer alpha], v5 <= 0.0))
    {
      if (!self->_autoscrollRenderer)
      {
        v6 = objc_alloc([objc_opt_class() renderClass]);
        [(UIView *)self bounds];
        v7 = [v6 initWithFrame:?];
        autoscrollRenderer = self->_autoscrollRenderer;
        self->_autoscrollRenderer = v7;

        [(UIView *)self addSubview:self->_autoscrollRenderer];
        [(UIView *)self->_autoscrollRenderer setAlpha:0.0];
      }

      self->_autoscrollDirections = directions;
      [(UIView *)self->_autoscrollRenderer setNeedsDisplay];
      [(UIView *)self->_autoscrollRenderer alpha];
      if (v9 == 0.0)
      {

        [(UITextMagnifier *)self animateToAutoscrollRenderer];
      }
    }
  }

  else
  {
    [(UITextMagnifier *)self animateToMagnifierRenderer];
    self->_autoscrollDirections = 0;
  }
}

- (void)setFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = UITextMagnifier;
  [(UIView *)&v6 setFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  magnifierRenderer = self->_magnifierRenderer;
  [(UIView *)self bounds];
  [(UIView *)magnifierRenderer setFrame:?];
  autoscrollRenderer = self->_autoscrollRenderer;
  [(UIView *)self bounds];
  [(UIView *)autoscrollRenderer setFrame:?];
}

- (void)setNeedsDisplay
{
  v3.receiver = self;
  v3.super_class = UITextMagnifier;
  [(UIView *)&v3 setNeedsDisplay];
  [(UIView *)self->_magnifierRenderer setNeedsDisplay];
}

- (void)beginZoomUpAnimation:(id)animation withDuration:(double)duration
{
  if (self->_isAnimating)
  {
    self->_delayedAnimationType = 1;
  }

  else
  {
    v7[5] = v4;
    v7[6] = v5;
    self->_isAnimating = 1;
    self->_delayedAnimationType = 0;
    v6[4] = self;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __53__UITextMagnifier_beginZoomUpAnimation_withDuration___block_invoke;
    v7[3] = &unk_1E70F3590;
    v7[4] = self;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __53__UITextMagnifier_beginZoomUpAnimation_withDuration___block_invoke_2;
    v6[3] = &unk_1E70F5AC0;
    [UIView animateWithDuration:v7 animations:v6 completion:duration];
  }
}

uint64_t __53__UITextMagnifier_beginZoomUpAnimation_withDuration___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setAlpha:1.0];
  v2 = *(a1 + 32);
  v3 = *(MEMORY[0x1E695EFD0] + 16);
  v5[0] = *MEMORY[0x1E695EFD0];
  v5[1] = v3;
  v5[2] = *(MEMORY[0x1E695EFD0] + 32);
  return [v2 setTransform:v5];
}

void *__53__UITextMagnifier_beginZoomUpAnimation_withDuration___block_invoke_2(uint64_t a1)
{
  *(*(a1 + 32) + 508) = 0;
  [*(a1 + 32) setNeedsDisplay];
  result = *(a1 + 32);
  if (result[64] == 2)
  {

    return [result zoomDownAnimation];
  }

  return result;
}

- (void)beginZoomDownAnimation:(id)animation withDuration:(double)duration postponeHandler:(id)handler
{
  animationCopy = animation;
  handlerCopy = handler;
  v10 = handlerCopy;
  if (self->_isAnimating)
  {
    self->_delayedAnimationType = 2;
    if (handlerCopy)
    {
      (*(handlerCopy + 2))(handlerCopy);
    }
  }

  else
  {
    self->_isAnimating = 1;
    self->_delayedAnimationType = 0;
    [(UITextMagnifier *)self setNeedsDisplay];
    [MEMORY[0x1E6979518] flush];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __71__UITextMagnifier_beginZoomDownAnimation_withDuration_postponeHandler___block_invoke;
    v11[3] = &unk_1E70F5AC0;
    v11[4] = self;
    [UIView animateWithDuration:animationCopy animations:v11 completion:duration];
  }
}

void *__71__UITextMagnifier_beginZoomDownAnimation_withDuration_postponeHandler___block_invoke(uint64_t a1)
{
  *(*(a1 + 32) + 508) = 0;
  v2 = [*(a1 + 32) target];

  if (!v2)
  {
    [*(a1 + 32) remove];
  }

  result = *(a1 + 32);
  if (result[64] == 1)
  {
    v4 = *(MEMORY[0x1E695EFD0] + 16);
    v5[0] = *MEMORY[0x1E695EFD0];
    v5[1] = v4;
    v5[2] = *(MEMORY[0x1E695EFD0] + 32);
    [result setTransform:v5];
    [*(a1 + 32) updateFrameAndOffset];
    return [*(a1 + 32) zoomUpAnimation];
  }

  return result;
}

- (void)remove
{
  [(UIView *)self removeFromSuperview];
  v3 = *(MEMORY[0x1E695EFD0] + 16);
  v4[0] = *MEMORY[0x1E695EFD0];
  v4[1] = v3;
  v4[2] = *(MEMORY[0x1E695EFD0] + 32);
  [(UIView *)self setTransform:v4];
}

- (void)detectLostTouches:(id)touches
{
  target = [(UITextMagnifier *)self target];

  if (target)
  {
    if ([UIApp _isTrackingAnyTouch])
    {

      [(UITextMagnifier *)self performSelector:sel_detectLostTouches_ withObject:0 afterDelay:0.75];
    }

    else
    {

      [(UITextMagnifier *)self stopMagnifying:0];
    }
  }
}

- (void)beginMagnifyingTarget:(id)target text:(id)text magnificationPoint:(CGPoint)point offset:(CGPoint)offset animated:(BOOL)animated
{
  y = point.y;
  x = point.x;
  targetCopy = target;
  textCopy = text;
  [(UITextMagnifier *)self setTarget:targetCopy];
  [(UITextMagnifier *)self setText:textCopy];

  [(UITextMagnifier *)self performSelector:sel_detectLostTouches_ withObject:0 afterDelay:0.75];
  [(UITextMagnifierTimeWeightedPoint *)self->_weightedPoint clearHistory];
  [(UITextMagnifier *)self setToMagnifierRenderer];
  window = [(UIView *)self window];

  if (!window)
  {
    _window = [targetCopy _window];
    windowScene = [_window windowScene];
    v15 = windowScene;
    if (windowScene)
    {
      v16 = windowScene;
    }

    else
    {
      v16 = +[UIWindowScene _keyWindowScene];
    }

    v17 = v16;

    keyboardSceneDelegate = [v17 keyboardSceneDelegate];
    containerWindow = [keyboardSceneDelegate containerWindow];

    [containerWindow addSubview:self];
    [targetCopy _convertVisualAltitude:self toView:0.0];
    [(UIView *)self _setVisualAltitude:?];
  }

  [(UIView *)self->_autoscrollRenderer update];
  [(UIView *)self->_magnifierRenderer update];
  [(UITextMagnifier *)self setMagnificationPoint:x, y];
  [(UITextMagnifier *)self zoomUpAnimation];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter addObserver:self selector:sel_windowWillRotate_ name:@"UIWindowWillRotateNotification" object:0];
}

- (void)stopMagnifying:(BOOL)magnifying
{
  magnifyingCopy = magnifying;
  [MEMORY[0x1E69E58C0] cancelPreviousPerformRequestsWithTarget:self selector:sel_detectLostTouches_ object:0];
  if (magnifyingCopy)
  {
    [(UITextMagnifier *)self zoomDownAnimation];
  }

  else
  {
    [(UITextMagnifier *)self remove];
  }

  [(UITextMagnifier *)self setTarget:0];
  [(UITextMagnifier *)self setText:0];
  self->_magnificationPoint = vdupq_n_s64(0xC08F400000000000);
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];
}

- (CGPoint)animationPoint
{
  x = self->_animationPoint.x;
  y = self->_animationPoint.y;
  result.y = y;
  result.x = x;
  return result;
}

@end