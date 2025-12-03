@interface _UIDynamicCaretInput
- (BOOL)hasInk;
- (BOOL)isInking;
- (_UIDynamicCaretInput)initWithFrame:(CGRect)frame;
- (void)_fadeInk;
- (void)addInkPoint:(CGPoint)point fromLastPoint:(BOOL)lastPoint;
- (void)addTouchAtPoint:(CGPoint)point;
- (void)cancelTouchAtPoint:(CGPoint)point;
- (void)clearAndNotify:(BOOL)notify;
- (void)clearFadeTimer;
- (void)committedStrokes;
- (void)dealloc;
- (void)drawPoint:(CGPoint)point;
- (void)drawRect:(CGRect)rect;
- (void)endTouchAtPoint:(CGPoint)point;
- (void)log;
- (void)send;
- (void)setFrame:(CGRect)frame;
- (void)setNeedsDisplayInRect:(CGRect)rect;
- (void)startTouchAtPoint:(CGPoint)point;
@end

@implementation _UIDynamicCaretInput

- (_UIDynamicCaretInput)initWithFrame:(CGRect)frame
{
  width = frame.size.width;
  v19[1] = *MEMORY[0x1E69E9840];
  v18.receiver = self;
  v18.super_class = _UIDynamicCaretInput;
  v4 = [(UIView *)&v18 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v5 = v4;
  if (v4)
  {
    [(UIView *)v4 setOpaque:0];
    [(UIView *)v5 setUserInteractionEnabled:0];
    [(UIView *)v5 setAutoresizingMask:18];
    v6 = [[UIDelayedAction alloc] initWithTarget:v5 action:sel_committedStrokes userInfo:0 delay:2.0];
    [(_UIDynamicCaretInput *)v5 setCommittedAction:v6];

    v7 = [MEMORY[0x1E6979378] filterWithType:*MEMORY[0x1E6979928]];
    [v7 setName:@"gaussianBlur"];
    [v7 setValue:&unk_1EFE2EE48 forKey:@"inputRadius"];
    v19[0] = v7;
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:1];
    layer = [(UIView *)v5 layer];
    [layer setFilters:v8];

    v10 = width * 0.3;
    v11 = [[_UIDynamicCaretDot alloc] initWithFrame:0.0, 0.0, v10, v10];
    [(_UIDynamicCaretInput *)v5 setDotView:v11];

    dotView = [(_UIDynamicCaretInput *)v5 dotView];
    layer2 = [dotView layer];
    [layer2 setCornerRadius:v10 * 0.5];

    dotView2 = [(_UIDynamicCaretInput *)v5 dotView];
    [dotView2 setAlpha:0.5];

    dotView3 = [(_UIDynamicCaretInput *)v5 dotView];
    [dotView3 setHidden:1];

    dotView4 = [(_UIDynamicCaretInput *)v5 dotView];
    [(UIView *)v5 addSubview:dotView4];
  }

  return v5;
}

- (void)dealloc
{
  CGContextRelease(self->_bitmapContext);
  v3.receiver = self;
  v3.super_class = _UIDynamicCaretInput;
  [(UIView *)&v3 dealloc];
}

- (void)setFrame:(CGRect)frame
{
  width = frame.size.width;
  v10.receiver = self;
  v10.super_class = _UIDynamicCaretInput;
  [(UIView *)&v10 setFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  dotView = [(_UIDynamicCaretInput *)self dotView];
  [dotView setBounds:{0.0, 0.0, width * 0.3, width * 0.3}];

  dotView2 = [(_UIDynamicCaretInput *)self dotView];
  layer = [dotView2 layer];
  [layer setCornerRadius:width * 0.3 * 0.5];

  layer2 = [(UIView *)self layer];
  v9 = [MEMORY[0x1E696AD98] numberWithDouble:width * 0.05];
  [layer2 setValue:v9 forKeyPath:@"filters.gaussianBlur.inputRadius"];
}

- (BOOL)hasInk
{
  accumulatedStrokes = [(_UIDynamicCaretInput *)self accumulatedStrokes];
  v3 = [accumulatedStrokes numberOfStrokes] != 0;

  return v3;
}

- (BOOL)isInking
{
  dotView = [(_UIDynamicCaretInput *)self dotView];
  isHidden = [dotView isHidden];

  return isHidden ^ 1;
}

- (void)setNeedsDisplayInRect:(CGRect)rect
{
  [(UIView *)self bounds:rect.origin.x];
  v4.receiver = self;
  v4.super_class = _UIDynamicCaretInput;
  [(UIView *)&v4 setNeedsDisplayInRect:?];
}

- (void)clearFadeTimer
{
  fadeTimer = [(_UIDynamicCaretInput *)self fadeTimer];
  [fadeTimer invalidate];

  [(_UIDynamicCaretInput *)self setFadeTimer:0];
}

- (void)_fadeInk
{
  dotView = [(_UIDynamicCaretInput *)self dotView];
  isHidden = [dotView isHidden];

  if (isHidden)
  {
    fadeCount = self->_fadeCount;
    self->_fadeCount = fadeCount - 1;
    if (fadeCount <= 1)
    {
      [(_UIDynamicCaretInput *)self clearFadeTimer];
    }
  }

  CGContextSetRGBFillColor(self->_bitmapContext, 0.13, 0.13, 0.13, 0.1);
  CGContextFillRect(self->_bitmapContext, self->_inkedAreaOfBitmapContext);

  [(UIView *)self setNeedsDisplay];
}

- (void)drawRect:(CGRect)rect
{
  if (self->_bitmapContext)
  {
    [(UIView *)self bounds:rect.origin.x];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;
    ContextStack = GetContextStack(0);
    if (*ContextStack < 1)
    {
      v13 = 0;
    }

    else
    {
      v13 = ContextStack[3 * (*ContextStack - 1) + 1];
    }

    CGContextSaveGState(v13);
    Image = CGBitmapContextCreateImage(self->_bitmapContext);
    v16.origin.x = v5;
    v16.origin.y = v7;
    v16.size.width = v9;
    v16.size.height = v11;
    CGContextDrawImage(v13, v16, Image);
    CFRelease(Image);

    CGContextRestoreGState(v13);
  }
}

- (void)drawPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  bitmapContext = self->_bitmapContext;
  if (!bitmapContext)
  {
    DeviceRGB = CGColorSpaceCreateDeviceRGB();
    [(UIView *)self bounds];
    v9 = v8;
    [(UIView *)self bounds];
    self->_bitmapContext = CGBitmapContextCreate(0, v9, v10, 8uLL, 0, DeviceRGB, 0x2002u);
    CFRelease(DeviceRGB);
    v11 = self->_bitmapContext;
    [(UIView *)self bounds];
    CGContextClearRect(v11, v16);
    bitmapContext = self->_bitmapContext;
  }

  CGContextSetRGBFillColor(bitmapContext, 1.0, 1.0, 1.0, 1.0);
  [(_UIDynamicCaretInput *)self inkWidth];
  v13 = x - v12;
  v14 = y - v12;
  v15 = v12 + v12;
  v17.origin.x = v13;
  v17.origin.y = v14;
  v17.size.width = v15;
  v17.size.height = v15;
  CGContextFillEllipseInRect(self->_bitmapContext, v17);
  v18.origin.x = v13;
  v18.origin.y = v14;
  v18.size.width = v15;
  v18.size.height = v15;
  self->_inkedAreaOfBitmapContext = NSUnionRect(self->_inkedAreaOfBitmapContext, v18);
}

- (void)log
{
  accumulatedStrokes = [(_UIDynamicCaretInput *)self accumulatedStrokes];
  if ([accumulatedStrokes numberOfStrokes])
  {
    v2 = objc_alloc_init(MEMORY[0x1E696AB78]);
    [v2 setDateFormat:@"%Y-%m-%d-%H%M%S"];
    date = [MEMORY[0x1E695DF00] date];
    v4 = [v2 stringFromDate:date];

    if (geteuid())
    {
      v5 = NSHomeDirectory();
    }

    else
    {
      v5 = &stru_1EFB14550;
    }

    v6 = [(__CFString *)v5 stringByAppendingPathComponent:@"/Library/Logs/CrashReporter/HandwritingCapture/"];

    v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Capture_%@.log", v4];
    v8 = [v6 stringByAppendingPathComponent:v7];

    v9 = fopen([v8 UTF8String], "w+");
    if (v9 || *__error() == 2 && ([MEMORY[0x1E696AC08] defaultManager], v15 = objc_claimAutoreleasedReturnValue(), v16 = objc_msgSend(v15, "createDirectoryAtPath:withIntermediateDirectories:attributes:error:", v6, 1, 0, 0), v15, v16) && (v9 = fopen(objc_msgSend(v8, "UTF8String"), "w+")) != 0)
    {
      v10 = v9;
      if ([accumulatedStrokes numberOfStrokes])
      {
        v11 = 0;
        do
        {
          if ([accumulatedStrokes numberOfPointsInStrokeAtIndex:v11])
          {
            v12 = 0;
            do
            {
              [accumulatedStrokes pointAtIndex:v12 inStrokeAtIndex:v11];
              fprintf(v10, "%d %d\n", v13, v14);
              ++v12;
            }

            while (v12 < [accumulatedStrokes numberOfPointsInStrokeAtIndex:v11]);
          }

          fwrite(";\n", 2uLL, 1uLL, v10);
          ++v11;
        }

        while (v11 < [accumulatedStrokes numberOfStrokes]);
      }

      fclose(v10);
    }
  }
}

- (void)committedStrokes
{
  [(_UIDynamicCaretInput *)self send];

  [(_UIDynamicCaretInput *)self clearAndNotify:1];
}

- (void)clearAndNotify:(BOOL)notify
{
  notifyCopy = notify;
  v5 = objc_alloc_init(MEMORY[0x1E69D9598]);
  [(_UIDynamicCaretInput *)self setAccumulatedStrokes:v5];

  [(_UIDynamicCaretInput *)self clearFadeTimer];
  bitmapContext = self->_bitmapContext;
  if (bitmapContext)
  {
    [(UIView *)self bounds];
    CGContextClearRect(bitmapContext, v10);
    v7 = *(MEMORY[0x1E695F050] + 16);
    self->_inkedAreaOfBitmapContext.origin = *MEMORY[0x1E695F050];
    self->_inkedAreaOfBitmapContext.size = v7;
    [(UIView *)self setNeedsDisplay];
  }

  [(UIView *)self setNeedsDisplay];
  if (notifyCopy)
  {
    v8 = +[UIKeyboardImpl activeInstance];
    [v8 clearInput];
  }
}

- (void)send
{
  accumulatedStrokes = [(_UIDynamicCaretInput *)self accumulatedStrokes];
  numberOfStrokes = [accumulatedStrokes numberOfStrokes];

  if (numberOfStrokes)
  {
    v6 = +[UIKeyboardImpl activeInstance];
    accumulatedStrokes2 = [(_UIDynamicCaretInput *)self accumulatedStrokes];
    [v6 addInputObject:accumulatedStrokes2];
  }
}

- (void)addInkPoint:(CGPoint)point fromLastPoint:(BOOL)lastPoint
{
  lastPointCopy = lastPoint;
  x = point.x;
  y = point.y;
  accumulatedStrokes = [(_UIDynamicCaretInput *)self accumulatedStrokes];

  if (!accumulatedStrokes)
  {
    v7 = objc_alloc_init(MEMORY[0x1E69D9598]);
    [(_UIDynamicCaretInput *)self setAccumulatedStrokes:v7];
  }

  accumulatedStrokes2 = [(_UIDynamicCaretInput *)self accumulatedStrokes];
  [accumulatedStrokes2 addPoint:{x, y}];

  if (lastPointCopy)
  {
    v9 = sqrt((x - self->_lastViewLoc.x) * (x - self->_lastViewLoc.x) + (y - self->_lastViewLoc.y) * (y - self->_lastViewLoc.y));
    v10 = y;
    *&v11 = x;
    if (v9 <= 0.0)
    {
      goto LABEL_10;
    }

    *(&v11 + 1) = y;
    v16 = vdupq_lane_s64(COERCE__INT64(v9), 0);
    *v17 = v11;
    v12 = 1;
    do
    {
      [(_UIDynamicCaretInput *)self drawPoint:vcvtq_f64_f32(vcvt_f32_f64(vaddq_f64(self->_lastViewLoc, vdivq_f64(vmulq_n_f64(vsubq_f64(*v17, self->_lastViewLoc), (v12 - 1)), v16))))];
      v13 = v12++;
    }

    while (v13 < v9);
  }

  else
  {
    [(_UIDynamicCaretInput *)self drawPoint:x, y];
  }

  *&v11 = x;
  v10 = y;
LABEL_10:
  *&self->_lastViewLoc.x = v11;
  self->_lastViewLoc.y = v10;
  committedAction = [(_UIDynamicCaretInput *)self committedAction];
  [committedAction touch];
}

- (void)startTouchAtPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  dotView = [(_UIDynamicCaretInput *)self dotView];
  [dotView setHidden:0];

  dotView2 = [(_UIDynamicCaretInput *)self dotView];
  [dotView2 setCenter:{x, y}];

  [(_UIDynamicCaretInput *)self addInkPoint:0 fromLastPoint:x, y];
  fadeTimer = [(_UIDynamicCaretInput *)self fadeTimer];

  if (!fadeTimer)
  {
    v9 = [MEMORY[0x1E695DFF0] scheduledTimerWithTimeInterval:self target:sel__fadeInk selector:0 userInfo:1 repeats:0.0333333333];
    [(_UIDynamicCaretInput *)self setFadeTimer:v9];

    currentRunLoop = [MEMORY[0x1E695DFD0] currentRunLoop];
    fadeTimer2 = [(_UIDynamicCaretInput *)self fadeTimer];
    [currentRunLoop addTimer:fadeTimer2 forMode:*MEMORY[0x1E695D918]];
  }
}

- (void)addTouchAtPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  if ((point.x - self->_lastViewLoc.x) * (point.x - self->_lastViewLoc.x) + (point.y - self->_lastViewLoc.y) * (point.y - self->_lastViewLoc.y) > 0.25)
  {
    [(_UIDynamicCaretInput *)self addInkPoint:1 fromLastPoint:point.x, point.y];
  }

  dotView = [(_UIDynamicCaretInput *)self dotView];
  [dotView setCenter:{x, y}];
}

- (void)endTouchAtPoint:(CGPoint)point
{
  v4 = [(_UIDynamicCaretInput *)self dotView:point.x];
  isHidden = [v4 isHidden];

  if ((isHidden & 1) == 0)
  {
    dotView = [(_UIDynamicCaretInput *)self dotView];
    [dotView setHidden:1];

    self->_fadeCount = 30;
    [(UIView *)self setNeedsDisplay];
    [(_UIDynamicCaretInput *)self committedStrokes];
    committedAction = [(_UIDynamicCaretInput *)self committedAction];
    [committedAction cancel];
  }
}

- (void)cancelTouchAtPoint:(CGPoint)point
{
  [(_UIDynamicCaretInput *)self endTouchAtPoint:point.x, point.y];

  [(_UIDynamicCaretInput *)self clearAndNotify:1];
}

@end