@interface TKDownloadIndicatorView
+ (CGSize)_intrinsicDownloadIndicatorViewSize;
- (CGSize)intrinsicContentSize;
- (TKDownloadIndicatorView)init;
- (TKDownloadIndicatorView)initWithFrame:(CGRect)frame;
- (void)_handleDisplayLinkDidFire:(id)fire;
- (void)_stopProgressAnimation;
- (void)dealloc;
- (void)drawRect:(CGRect)rect;
- (void)setBounds:(CGRect)bounds;
- (void)setFrame:(CGRect)frame;
- (void)setProgress:(float)progress animated:(BOOL)animated completion:(id)completion;
@end

@implementation TKDownloadIndicatorView

- (TKDownloadIndicatorView)init
{
  v3 = *MEMORY[0x277CBF3A0];
  v4 = *(MEMORY[0x277CBF3A0] + 8);
  [objc_opt_class() _intrinsicDownloadIndicatorViewSize];

  return [(TKDownloadIndicatorView *)self initWithFrame:v3, v4, v5, v6];
}

- (TKDownloadIndicatorView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = TKDownloadIndicatorView;
  v3 = [(TKDownloadIndicatorView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(TKDownloadIndicatorView *)v3 setOpaque:0];
  }

  return v4;
}

- (void)dealloc
{
  [(CADisplayLink *)self->_displayLink invalidate];
  v3.receiver = self;
  v3.super_class = TKDownloadIndicatorView;
  [(TKDownloadIndicatorView *)&v3 dealloc];
}

+ (CGSize)_intrinsicDownloadIndicatorViewSize
{
  v2 = 20.0;
  v3 = 20.0;
  result.height = v3;
  result.width = v2;
  return result;
}

- (CGSize)intrinsicContentSize
{
  v2 = objc_opt_class();

  [v2 _intrinsicDownloadIndicatorViewSize];
  result.height = v4;
  result.width = v3;
  return result;
}

- (void)setBounds:(CGRect)bounds
{
  v4.receiver = self;
  v4.super_class = TKDownloadIndicatorView;
  [(TKDownloadIndicatorView *)&v4 setBounds:bounds.origin.x, bounds.origin.y, bounds.size.width, bounds.size.height];
  [(TKDownloadIndicatorView *)self setNeedsDisplay];
}

- (void)setFrame:(CGRect)frame
{
  v4.receiver = self;
  v4.super_class = TKDownloadIndicatorView;
  [(TKDownloadIndicatorView *)&v4 setFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  [(TKDownloadIndicatorView *)self setNeedsDisplay];
}

- (void)drawRect:(CGRect)rect
{
  CurrentContext = UIGraphicsGetCurrentContext();
  CGContextSaveGState(CurrentContext);
  v24 = [MEMORY[0x277D75348] colorWithRed:0.56640625 green:0.56640625 blue:0.5859375 alpha:1.0];
  [v24 setFill];
  [v24 setStroke];
  traitCollection = [(TKDownloadIndicatorView *)self traitCollection];
  [traitCollection displayScale];
  TKFloatGetSafeScaleForValue(v6);
  v8 = v7;

  [(TKDownloadIndicatorView *)self bounds];
  x = v26.origin.x;
  y = v26.origin.y;
  width = v26.size.width;
  height = v26.size.height;
  MidX = CGRectGetMidX(v26);
  v14 = TKFloatRoundForScale(MidX, v8);
  v27.origin.x = x;
  v27.origin.y = y;
  v27.size.width = width;
  v27.size.height = height;
  MidY = CGRectGetMidY(v27);
  v23 = TKFloatRoundForScale(MidY, v8);
  v28.origin.x = x;
  v28.origin.y = y;
  v28.size.width = width;
  v28.size.height = height;
  v16 = CGRectGetWidth(v28) * 0.5;
  v29.origin.x = x;
  v29.origin.y = y;
  v29.size.width = width;
  v29.size.height = height;
  v17 = CGRectGetHeight(v29) * 0.5;
  if (v16 < v17)
  {
    v17 = v16;
  }

  v18 = TKFloatFloorForScale(v17, v8);
  if (self->_isAnimatingProgress)
  {
    v19 = &OBJC_IVAR___TKDownloadIndicatorView__currentAnimatedProgress;
  }

  else
  {
    v19 = &OBJC_IVAR___TKDownloadIndicatorView__progress;
  }

  v20 = *(&self->super.super.super.isa + *v19) * 6.28318531 + -1.57079633;
  v21 = objc_alloc_init(MEMORY[0x277D75208]);
  [v21 moveToPoint:{v14, v23}];
  [v21 addLineToPoint:{v14, 0.0}];
  [v21 addArcWithCenter:1 radius:v14 startAngle:v23 endAngle:v18 clockwise:{-1.57079633, v20}];
  [v21 closePath];
  [v21 fill];
  v22 = objc_alloc_init(MEMORY[0x277D75208]);
  [v22 setLineWidth:1.0];
  [v22 moveToPoint:{v14, 0.0}];
  [v22 addArcWithCenter:1 radius:v14 startAngle:v23 endAngle:v18 + -0.5 clockwise:{-1.57079633, 4.71238898}];
  [v22 stroke];
  CGContextRestoreGState(CurrentContext);
}

- (void)setProgress:(float)progress animated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  completionCopy = completion;
  progressCopy = progress;
  if (progress < 0.0)
  {
    progressCopy = 0.0;
  }

  v10 = fmin(progressCopy, 1.0);
  progress = self->_progress;
  v27 = completionCopy;
  if (llroundf(progress * 8388600.0) == llroundf(v10 * 8388600.0))
  {
    if (!completionCopy)
    {
      goto LABEL_23;
    }

    (completionCopy[2])(completionCopy);
  }

  else
  {
    self->_progress = v10;
    window = [(TKDownloadIndicatorView *)self window];
    screen = [window screen];

    if (animatedCopy && screen)
    {
      v14 = CACurrentMediaTime();
      self->_progressAnimationStartTime = v14;
      self->_progressAnimationEndTime = v14 + 1.2;
      if (self->_isAnimatingProgress)
      {
        progress = self->_currentAnimatedProgress;
      }

      self->_initialAnimatedProgress = progress;
      self->_currentAnimatedProgress = progress;
      v15 = v27;
      if (!self->_displayLink)
      {
        v16 = [screen displayLinkWithTarget:self selector:sel__handleDisplayLinkDidFire_];
        displayLink = self->_displayLink;
        self->_displayLink = v16;

        v18 = self->_displayLink;
        mainRunLoop = [MEMORY[0x277CBEB88] mainRunLoop];
        [(CADisplayLink *)v18 addToRunLoop:mainRunLoop forMode:*MEMORY[0x277CBE738]];

        v15 = v27;
      }

      if (!self->_progressAnimationTimingFunction)
      {
        v20 = [MEMORY[0x277CD9EF8] functionWithName:*MEMORY[0x277CDA7B8]];
        progressAnimationTimingFunction = self->_progressAnimationTimingFunction;
        self->_progressAnimationTimingFunction = v20;

        v15 = v27;
      }

      if (v15)
      {
        progressAnimationCompletionHandlers = self->_progressAnimationCompletionHandlers;
        v23 = v27;
        if (!progressAnimationCompletionHandlers)
        {
          v24 = objc_alloc_init(MEMORY[0x277CBEB18]);
          v25 = self->_progressAnimationCompletionHandlers;
          self->_progressAnimationCompletionHandlers = v24;

          v23 = v27;
          progressAnimationCompletionHandlers = self->_progressAnimationCompletionHandlers;
        }

        v26 = MEMORY[0x21CF0DA20](v23);
        [(NSMutableArray *)progressAnimationCompletionHandlers addObject:v26];
      }

      self->_isAnimatingProgress = 1;
      [(TKDownloadIndicatorView *)self setNeedsDisplay];
    }

    else
    {
      [(TKDownloadIndicatorView *)self _stopProgressAnimation];
      [(TKDownloadIndicatorView *)self setNeedsDisplay];
      if (v27)
      {
        v27[2]();
      }
    }
  }

  completionCopy = v27;
LABEL_23:
}

- (void)_handleDisplayLinkDidFire:(id)fire
{
  if (llround(self->_progressAnimationStartTime * 8388608.0) != llround(self->_progressAnimationEndTime * 8388608.0))
  {
    [fire timestamp];
    v5 = (v4 - self->_progressAnimationStartTime) / (self->_progressAnimationEndTime - self->_progressAnimationStartTime);
    if (v5 >= 0.99)
    {
      [(TKDownloadIndicatorView *)self _stopProgressAnimation];
    }

    else
    {
      progressAnimationTimingFunction = self->_progressAnimationTimingFunction;
      if (progressAnimationTimingFunction)
      {
        [(CAMediaTimingFunction *)progressAnimationTimingFunction _solveForInput:?];
      }

      self->_currentAnimatedProgress = self->_initialAnimatedProgress + ((self->_progress - self->_initialAnimatedProgress) * v5);
    }

    [(TKDownloadIndicatorView *)self setNeedsDisplay];
  }
}

- (void)_stopProgressAnimation
{
  v17 = *MEMORY[0x277D85DE8];
  [(CADisplayLink *)self->_displayLink invalidate];
  displayLink = self->_displayLink;
  self->_displayLink = 0;

  self->_isAnimatingProgress = 0;
  self->_currentAnimatedProgress = 0.0;
  self->_initialAnimatedProgress = 0.0;
  self->_progressAnimationStartTime = 0.0;
  self->_progressAnimationEndTime = 0.0;
  progressAnimationTimingFunction = self->_progressAnimationTimingFunction;
  self->_progressAnimationTimingFunction = 0;

  v5 = [(NSMutableArray *)self->_progressAnimationCompletionHandlers copy];
  [(NSMutableArray *)self->_progressAnimationCompletionHandlers removeAllObjects];
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      v10 = 0;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v6);
        }

        (*(*(*(&v12 + 1) + 8 * v10) + 16))(*(*(&v12 + 1) + 8 * v10));
        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }

  v11 = *MEMORY[0x277D85DE8];
}

@end