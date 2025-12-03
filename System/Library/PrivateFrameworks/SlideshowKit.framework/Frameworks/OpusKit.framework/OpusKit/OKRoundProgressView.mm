@interface OKRoundProgressView
- (OKRoundProgressView)initWithFrame:(CGRect)frame style:(int64_t)style;
- (void)_setContentsScale:(double)scale;
- (void)_setProgressArcLayer:(id)layer;
- (void)_setupSubviews;
- (void)_updateSublayersContentsScale;
- (void)_updateUIProgress;
- (void)dealloc;
- (void)didMoveToWindow;
- (void)increaseUIProgress:(id)progress;
- (void)recalculateIncreaseProgress:(double)progress withTimeDiff:(double)diff;
- (void)resetProgress;
- (void)setInitialIncreaseRatePerFrame:(double)frame;
- (void)setPieRadius:(double)radius;
- (void)setProgress:(double)progress;
- (void)startProgressTimer;
- (void)stopProgressTimer;
@end

@implementation OKRoundProgressView

- (OKRoundProgressView)initWithFrame:(CGRect)frame style:(int64_t)style
{
  v8.receiver = self;
  v8.super_class = OKRoundProgressView;
  v5 = [(OKRoundProgressView *)&v8 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v6 = v5;
  if (v5)
  {
    v5->_style = style;
    -[OKRoundProgressView setBackgroundColor:](v5, "setBackgroundColor:", [MEMORY[0x277D75348] clearColor]);
    [(OKRoundProgressView *)v6 _setupSubviews];
  }

  return v6;
}

- (void)dealloc
{
  [(NSTimer *)self->_progressTimer invalidate];

  v3.receiver = self;
  v3.super_class = OKRoundProgressView;
  [(OKRoundProgressView *)&v3 dealloc];
}

- (void)didMoveToWindow
{
  v3.receiver = self;
  v3.super_class = OKRoundProgressView;
  [(OKRoundProgressView *)&v3 didMoveToWindow];
  [objc_msgSend(-[OKRoundProgressView window](self "window")];
  [(OKRoundProgressView *)self _setContentsScale:?];
}

- (void)_setContentsScale:(double)scale
{
  if (self->__contentsScale != scale)
  {
    self->__contentsScale = scale;
    [(OKRoundProgressView *)self _updateSublayersContentsScale];
  }
}

- (void)_setProgressArcLayer:(id)layer
{
  progressArcLayer = self->__progressArcLayer;
  if (progressArcLayer != layer)
  {

    self->__progressArcLayer = layer;

    [(OKRoundProgressView *)self _updateSublayersContentsScale];
  }
}

- (void)_updateSublayersContentsScale
{
  [(OKRoundProgressView *)self _contentsScale];
  v4 = v3;
  _progressArcLayer = [(OKRoundProgressView *)self _progressArcLayer];

  [(OKProgressArcLayer *)_progressArcLayer setContentsScale:v4];
}

- (void)_setupSubviews
{
  [(OKRoundProgressView *)self bounds];
  v4 = v3;
  v6 = v5;
  v9 = [objc_alloc(MEMORY[0x277D75D18]) initWithFrame:{v7, v8, v3, v5}];
  [v9 setAutoresizingMask:18];
  [(OKRoundProgressView *)self addSubview:v9];
  layer = [v9 layer];
  style = self->_style;
  if (style == 1)
  {
    blackColor = [MEMORY[0x277D75348] blackColor];
    v15 = 0;
    v14 = 1;
    v12 = 0.5;
  }

  else
  {
    v12 = 1.0;
    if (style)
    {
      blackColor = 0;
      v14 = 0;
      v15 = 0;
    }

    else
    {
      blackColor = [MEMORY[0x277D75348] whiteColor];
      v14 = 1;
      v15 = 1;
    }
  }

  [v9 setAlpha:v12];
  v16 = v4 * 0.5;
  if (v4 * 0.5 >= v6 * 0.5)
  {
    v16 = v6 * 0.5;
  }

  v17 = ceil(v16 / 5.5);
  [(OKRoundProgressView *)self setPieRadius:v16 - v17 * 0.5];
  self->_progressTimer = 0;
  [(OKRoundProgressView *)self resetProgress];
  if (v14)
  {
    layer2 = [MEMORY[0x277CD9F90] layer];
    self->_sliceLayer = layer2;
    [(CAShapeLayer *)layer2 setZPosition:0.0];
    [(CAShapeLayer *)self->_sliceLayer setStrokeColor:0];
    -[CAShapeLayer setFillColor:](self->_sliceLayer, "setFillColor:", [blackColor CGColor]);
    layer3 = [MEMORY[0x277CD9F90] layer];
    self->_circleLayer = layer3;
    [(CAShapeLayer *)layer3 setZPosition:0.0];
    -[CAShapeLayer setStrokeColor:](self->_circleLayer, "setStrokeColor:", [blackColor CGColor]);
    [(CAShapeLayer *)self->_circleLayer setFillColor:0];
    [(CAShapeLayer *)self->_circleLayer setLineWidth:v17];
    pieRadius = self->_pieRadius;
    x = self->_pieCenter.x;
    y = self->_pieCenter.y;
    Mutable = CGPathCreateMutable();
    CGPathAddArc(Mutable, 0, x, y, pieRadius + -1.0, 0.0, 6.28318531, 0);
    CGPathCloseSubpath(Mutable);
    [(CAShapeLayer *)self->_circleLayer setPath:Mutable];
    CGPathRelease(Mutable);
    [layer addSublayer:self->_circleLayer];
    [layer addSublayer:self->_sliceLayer];
  }

  if (v15)
  {
    [layer setShadowColor:{objc_msgSend(objc_msgSend(MEMORY[0x277D75348], "colorWithWhite:alpha:", 0.0, 0.75), "CGColor")}];
    [layer setShadowOffset:{*MEMORY[0x277CBF3A8], *(MEMORY[0x277CBF3A8] + 8)}];
    LODWORD(v24) = 1.0;
    [layer setShadowOpacity:v24];
    [layer setShadowRadius:0.5];
  }

  [(OKRoundProgressView *)self _updateUIProgress];
}

- (void)setPieRadius:(double)radius
{
  self->_pieRadius = radius;
  [(OKRoundProgressView *)self bounds];
  x = v13.origin.x;
  y = v13.origin.y;
  width = v13.size.width;
  height = v13.size.height;
  MidX = CGRectGetMidX(v13);
  v14.origin.x = x;
  v14.origin.y = y;
  v14.size.width = width;
  v14.size.height = height;
  MidY = CGRectGetMidY(v14);
  self->_pieCenter.x = MidX;
  self->_pieCenter.y = MidY;
  layer = [(OKRoundProgressView *)self layer];
  pieRadius = self->_pieRadius;

  [layer setCornerRadius:pieRadius];
}

- (void)stopProgressTimer
{
  progressTimer = self->_progressTimer;
  if (progressTimer)
  {
    [(NSTimer *)progressTimer invalidate];

    self->_progressTimer = 0;
  }
}

- (void)startProgressTimer
{
  if (self->_uiProgress < 1.0 && !self->_progressTimer)
  {
    self->_progressTimer = [MEMORY[0x277CBEBB8] scheduledTimerWithTimeInterval:self target:sel_increaseUIProgress_ selector:0 userInfo:1 repeats:0.0166666667];
  }
}

- (void)increaseUIProgress:(id)progress
{
  realProgress = self->_realProgress;
  if (realProgress != 0.0)
  {
    uiProgress = self->_uiProgress;
    if (uiProgress >= realProgress)
    {
LABEL_14:
      if (uiProgress < 1.0)
      {
        return;
      }

      goto LABEL_15;
    }
  }

  v6 = self->_uiProgress;
  increaseRate = self->_increaseRate;
  v8 = 1.0;
  if (realProgress >= 1.0)
  {
    v10 = v6 + increaseRate;
    if (v6 + increaseRate <= 1.0)
    {
LABEL_13:
      self->_uiProgress = v10;
      [(OKRoundProgressView *)self _updateUIProgress];
      uiProgress = self->_uiProgress;
      goto LABEL_14;
    }

LABEL_12:
    v10 = v8;
    goto LABEL_13;
  }

  if (v6 + increaseRate * 1.1 < 1.0 && (realProgress != 0.0 || v6 < 0.25))
  {
    v8 = v6 + increaseRate;
    goto LABEL_12;
  }

LABEL_15:

  [(OKRoundProgressView *)self stopProgressTimer];
}

- (void)_updateUIProgress
{
  [(OKRoundProgressView *)self toRadian:self->_uiProgress];
  v4 = v3 + 4.71238898;
  if (self->_sliceLayer)
  {
    pieRadius = self->_pieRadius;
    x = self->_pieCenter.x;
    y = self->_pieCenter.y;
    Mutable = CGPathCreateMutable();
    CGPathMoveToPoint(Mutable, 0, x, y);
    CGPathAddArc(Mutable, 0, x, y, pieRadius, 4.71238898, v4, 0);
    CGPathCloseSubpath(Mutable);
    [(CAShapeLayer *)self->_sliceLayer setPath:Mutable];
    CFRelease(Mutable);
  }

  _progressArcLayer = [(OKRoundProgressView *)self _progressArcLayer];
  if (_progressArcLayer)
  {
    v10 = _progressArcLayer;
    [(OKProgressArcLayer *)_progressArcLayer setStartAngle:4.71238898];

    [(OKProgressArcLayer *)v10 setEndAngle:v4];
  }
}

- (void)setInitialIncreaseRatePerFrame:(double)frame
{
  if (!self->_progressTimer)
  {
    self->_increaseRate = frame;
  }
}

- (void)recalculateIncreaseProgress:(double)progress withTimeDiff:(double)diff
{
  v4 = progress / diff / 60.0;
  if (v4 < 0.000166666667)
  {
    v4 = 0.000166666667;
  }

  self->_increaseRate = v4;
}

- (void)setProgress:(double)progress
{
  self->_progress = progress;
  if (!self->_progressTimer && self->_realProgress <= 1.0)
  {
    [(OKRoundProgressView *)self startProgressTimer];
  }

  if (progress > 0.0)
  {
    realProgress = self->_realProgress;
    if (realProgress < 1.0 && realProgress < progress)
    {
      if (progress >= 1.0)
      {
        v9 = 1.0 - self->_uiProgress;
        v10 = 0.1;
      }

      else
      {
        [objc_msgSend(MEMORY[0x277CBEAA8] "date")];
        v8 = v7;

        self->_prevUpdateTime = [MEMORY[0x277CBEAA8] date];
        v9 = 1.0 - self->_uiProgress;
        v10 = v8 * (v9 / (progress - self->_realProgress));
      }

      [(OKRoundProgressView *)self recalculateIncreaseProgress:v9 withTimeDiff:v10];
      self->_realProgress = progress;
    }
  }
}

- (void)resetProgress
{
  self->_uiProgress = 0.0;
  self->_increaseRate = 0.00166666667;
  self->_realProgress = 0.0;

  self->_prevUpdateTime = [MEMORY[0x277CBEAA8] date];

  [(OKRoundProgressView *)self stopProgressTimer];
}

@end