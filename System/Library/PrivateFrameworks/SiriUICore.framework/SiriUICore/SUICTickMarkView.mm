@interface SUICTickMarkView
+ (void)initialize;
- (CGImage)imageMask:(BOOL)mask;
- (SUICTickMarkView)init;
- (void)didMoveToSuperview;
- (void)drawRect:(CGRect)rect;
- (void)handleSafetyTimer:(id)timer;
- (void)layoutSubviews;
- (void)setHidden:(BOOL)hidden;
- (void)setUpDisplayLink;
- (void)startAnimationsForTickMark:(BOOL)mark fadeInFrames:(int64_t)frames pauseFrames:(int64_t)pauseFrames fadeOutFrames:(int64_t)outFrames completion:(id)completion;
- (void)tearDownDisplayLink;
@end

@implementation SUICTickMarkView

+ (void)initialize
{
  v6.receiver = self;
  v6.super_class = &OBJC_METACLASS___SUICTickMarkView;
  objc_msgSendSuper2(&v6, sel_initialize);
  v2 = [MEMORY[0x1E69DC888] colorWithRed:0.96875 green:0.25390625 blue:0.36328125 alpha:1.0];
  v3 = __redColor;
  __redColor = v2;

  v4 = [MEMORY[0x1E69DC888] colorWithRed:0.15625 green:0.52734375 blue:0.9921875 alpha:1.0];
  v5 = __blueColor;
  __blueColor = v4;
}

- (SUICTickMarkView)init
{
  v9.receiver = self;
  v9.super_class = SUICTickMarkView;
  v2 = [(SUICTickMarkView *)&v9 init];
  v3 = v2;
  if (v2)
  {
    v2->_shown = 0;
    v2->_currentPreferredFrameRate = 3;
    v2->_animState = 0;
    v2->_currentFrame = 0;
    displayLink = v2->_displayLink;
    v2->_displayLink = 0;

    safetyTimer = v3->_safetyTimer;
    v3->_safetyTimer = 0;

    [(SUICTickMarkView *)v3 setOpaque:0];
    v6 = objc_alloc_init(MEMORY[0x1E696AD10]);
    completionLock = v3->_completionLock;
    v3->_completionLock = v6;

    [(SUICTickMarkView *)v3 setUpDisplayLink];
  }

  return v3;
}

- (void)drawRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  CurrentContext = UIGraphicsGetCurrentContext();
  v29.origin.x = x;
  v29.origin.y = y;
  v29.size.width = width;
  v29.size.height = height;
  CGContextClearRect(CurrentContext, v29);
  animState = self->_animState;
  switch(animState)
  {
    case 3:
      v24 = [MEMORY[0x1E69DC888] colorWithRed:0.0 green:0.0 blue:0.0 alpha:1.0 - (self->_currentFrame / self->_fadeOutFrames)];
      CGContextSetFillColorWithColor(CurrentContext, [v24 CGColor]);
      v34.origin.x = x;
      v34.origin.y = y;
      v34.size.width = width;
      v34.size.height = height;
      CGContextFillRect(CurrentContext, v34);
      v27 = self->_currentFrame + 1;
      self->_currentFrame = v27;
      if (v27 == self->_fadeOutFrames)
      {
        self->_animState = 0;
        if (self->_completionBlock)
        {
          [(NSLock *)self->_completionLock lock];
          if (self->_completionCalled)
          {
            [(NSLock *)self->_completionLock unlock];
          }

          else
          {
            self->_completionCalled = 1;
            [(NSLock *)self->_completionLock unlock];
            (*(self->_completionBlock + 2))();
          }
        }
      }

      break;
    case 2:
      v24 = [MEMORY[0x1E69DC888] colorWithRed:0.0 green:0.0 blue:0.0 alpha:1.0];
      CGContextSetFillColorWithColor(CurrentContext, [v24 CGColor]);
      v33.origin.x = x;
      v33.origin.y = y;
      v33.size.width = width;
      v33.size.height = height;
      CGContextFillRect(CurrentContext, v33);
      v26 = self->_currentFrame + 1;
      self->_currentFrame = v26;
      if (v26 == self->_pauseFrames)
      {
        self->_animState = 3;
        self->_currentFrame = 0;
      }

      break;
    case 1:
      v11 = width;
      v12 = self->_currentFrame / self->_fadeInFrames;
      *&v9 = (v12 + -0.4) / 0.8;
      [SUICSigmoid sigmoid_norm:v9];
      v14 = v13 * v11;
      *&v15 = (v12 + -0.6) / 0.3;
      [SUICSigmoid sigmoid_norm:v15];
      v17 = 1.0 - v16;
      *&v18 = (v12 + -0.35) / 0.6;
      [SUICSigmoid sigmoid_norm:v18];
      v20 = v19 * v11;
      *&v21 = (v12 + -0.3) / 0.4;
      [SUICSigmoid sigmoid_norm:v21];
      v23 = v22 * v11;
      CGContextSetFillColorWithColor(CurrentContext, [__redColor CGColor]);
      v30.size.width = v23;
      v30.origin.x = x;
      v30.origin.y = y;
      v30.size.height = height;
      CGContextFillRect(CurrentContext, v30);
      CGContextSetFillColorWithColor(CurrentContext, [__blueColor CGColor]);
      v31.size.width = v20;
      v31.origin.x = x;
      v31.origin.y = y;
      v31.size.height = height;
      CGContextFillRect(CurrentContext, v31);
      v24 = [MEMORY[0x1E69DC888] colorWithRed:(v17 * 0.37891) green:(v17 * 0.98828) blue:(v17 * 0.67578) alpha:1.0];
      CGContextSetFillColorWithColor(CurrentContext, [v24 CGColor]);
      v32.size.width = v14;
      v32.origin.x = x;
      v32.origin.y = y;
      v32.size.height = height;
      CGContextFillRect(CurrentContext, v32);
      v25 = self->_currentFrame + 1;
      self->_currentFrame = v25;
      if (v25 == self->_fadeInFrames)
      {
        self->_animState = 2;
        self->_currentFrame = 0;
      }

      break;
    default:
      goto LABEL_14;
  }

LABEL_14:

  [(SUICTickMarkView *)self setNeedsDisplay];
}

- (void)startAnimationsForTickMark:(BOOL)mark fadeInFrames:(int64_t)frames pauseFrames:(int64_t)pauseFrames fadeOutFrames:(int64_t)outFrames completion:(id)completion
{
  completionCopy = completion;
  self->_fadeInFrames = frames;
  self->_pauseFrames = pauseFrames;
  self->_fadeOutFrames = outFrames;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __97__SUICTickMarkView_startAnimationsForTickMark_fadeInFrames_pauseFrames_fadeOutFrames_completion___block_invoke;
  v14[3] = &unk_1E81E7B60;
  markCopy = mark;
  v14[4] = self;
  v15 = completionCopy;
  framesCopy = frames;
  v13 = completionCopy;
  dispatch_async(MEMORY[0x1E69E96A0], v14);
}

void __97__SUICTickMarkView_startAnimationsForTickMark_fadeInFrames_pauseFrames_fadeOutFrames_completion___block_invoke(uint64_t a1)
{
  v14 = [MEMORY[0x1E6979398] layer];
  [*(a1 + 32) bounds];
  Width = CGRectGetWidth(v16);
  [*(a1 + 32) bounds];
  [v14 setFrame:{0.0, 0.0, Width, CGRectGetHeight(v17)}];
  [v14 setContents:{objc_msgSend(*(a1 + 32), "imageMask:", *(a1 + 56))}];
  v3 = [*(a1 + 32) layer];
  [v3 setMask:v14];

  v4 = v14;
  v5 = *(a1 + 32);
  if (!*(v5 + 440))
  {
    *(v5 + 456) = 0;
    v6 = MEMORY[0x1C6937B00](*(a1 + 40));
    v7 = *(a1 + 32);
    v8 = *(v7 + 464);
    *(v7 + 464) = v6;

    *(*(a1 + 32) + 424) = 30;
    v9 = *(a1 + 32);
    v10 = v9[51];
    if (v10)
    {
      [v10 setPreferredFramesPerSecond:v9[53]];
      v9 = *(a1 + 32);
    }

    v9[54] = 0;
    *(*(a1 + 32) + 440) = 1;
    v11 = [MEMORY[0x1E695DFF0] scheduledTimerWithTimeInterval:*(a1 + 32) target:sel_handleSafetyTimer_ selector:0 userInfo:0 repeats:*(a1 + 48) * 60.0];
    v12 = *(a1 + 32);
    v13 = *(v12 + 448);
    *(v12 + 448) = v11;

    v4 = v14;
  }
}

- (CGImage)imageMask:(BOOL)mask
{
  maskCopy = mask;
  v4 = MEMORY[0x1E69DCAD8];
  [(SUICTickMarkView *)self bounds];
  v5 = [v4 configurationWithPointSize:CGRectGetHeight(v10)];
  if (maskCopy)
  {
    v6 = @"checkmark";
  }

  else
  {
    v6 = @"xmark";
  }

  v7 = [MEMORY[0x1E69DCAB8] systemImageNamed:v6 withConfiguration:v5];
  cGImage = [v7 CGImage];

  return cGImage;
}

- (void)handleSafetyTimer:(id)timer
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __38__SUICTickMarkView_handleSafetyTimer___block_invoke;
  block[3] = &unk_1E81E7B88;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
  [(NSTimer *)self->_safetyTimer invalidate];
  safetyTimer = self->_safetyTimer;
  self->_safetyTimer = 0;
}

uint64_t __38__SUICTickMarkView_handleSafetyTimer___block_invoke(uint64_t result)
{
  v1 = *(result + 32);
  if (*(v1 + 440))
  {
    v2 = result;
    *(v1 + 440) = 0;
    v3 = *(result + 32);
    if (*(v3 + 464))
    {
      [*(v3 + 472) lock];
      v4 = *(v2 + 32);
      if (*(v4 + 456))
      {
        [*(v4 + 472) unlock];
      }

      else
      {
        *(v4 + 456) = 1;
        [*(*(v2 + 32) + 472) unlock];
        (*(*(*(v2 + 32) + 464) + 16))();
      }
    }

    v5 = *(v2 + 32);

    return [v5 setNeedsDisplay];
  }

  return result;
}

- (void)setUpDisplayLink
{
  if (!self->_displayLink)
  {
    v3 = [MEMORY[0x1E6979330] displayLinkWithTarget:self selector:sel_setNeedsDisplay];
    displayLink = self->_displayLink;
    self->_displayLink = v3;

    [(CADisplayLink *)self->_displayLink setPreferredFramesPerSecond:self->_currentPreferredFrameRate];
    v5 = self->_displayLink;
    currentRunLoop = [MEMORY[0x1E695DFD0] currentRunLoop];
    [(CADisplayLink *)v5 addToRunLoop:currentRunLoop forMode:*MEMORY[0x1E695D918]];
  }
}

- (void)tearDownDisplayLink
{
  [(CADisplayLink *)self->_displayLink invalidate];
  displayLink = self->_displayLink;
  self->_displayLink = 0;
}

- (void)setHidden:(BOOL)hidden
{
  hiddenCopy = hidden;
  NSLog(&cfstr_TickmarkviewSe.isa, a2, hidden);
  v7.receiver = self;
  v7.super_class = SUICTickMarkView;
  [(SUICTickMarkView *)&v7 setHidden:hiddenCopy];
  if (hiddenCopy)
  {
    safetyTimer = self->_safetyTimer;
    if (safetyTimer)
    {
      [(NSTimer *)safetyTimer invalidate];
      v6 = self->_safetyTimer;
      self->_safetyTimer = 0;
    }

    self->_animState = 0;
    [(SUICTickMarkView *)self tearDownDisplayLink];
  }

  else
  {
    [(SUICTickMarkView *)self setUpDisplayLink];
  }
}

- (void)didMoveToSuperview
{
  NSLog(&cfstr_TickmarkviewDi.isa, a2);
  superview = [(SUICTickMarkView *)self superview];

  if (!superview)
  {

    [(SUICTickMarkView *)self tearDownDisplayLink];
  }
}

- (void)layoutSubviews
{
  NSLog(&cfstr_TickmarkviewLa.isa, a2);

  [(SUICTickMarkView *)self setUpDisplayLink];
}

@end