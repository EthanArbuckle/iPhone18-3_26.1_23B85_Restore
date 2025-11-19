@interface OKRoundProgressView
- (OKRoundProgressView)initWithFrame:(CGRect)a3 style:(int64_t)a4;
- (void)_setContentsScale:(double)a3;
- (void)_setProgressArcLayer:(id)a3;
- (void)_setupSubviews;
- (void)_updateSublayersContentsScale;
- (void)_updateUIProgress;
- (void)dealloc;
- (void)didMoveToWindow;
- (void)increaseUIProgress:(id)a3;
- (void)recalculateIncreaseProgress:(double)a3 withTimeDiff:(double)a4;
- (void)resetProgress;
- (void)setInitialIncreaseRatePerFrame:(double)a3;
- (void)setPieRadius:(double)a3;
- (void)setProgress:(double)a3;
- (void)startProgressTimer;
- (void)stopProgressTimer;
@end

@implementation OKRoundProgressView

- (OKRoundProgressView)initWithFrame:(CGRect)a3 style:(int64_t)a4
{
  v8.receiver = self;
  v8.super_class = OKRoundProgressView;
  v5 = [(OKRoundProgressView *)&v8 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v6 = v5;
  if (v5)
  {
    v5->_style = a4;
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

- (void)_setContentsScale:(double)a3
{
  if (self->__contentsScale != a3)
  {
    self->__contentsScale = a3;
    [(OKRoundProgressView *)self _updateSublayersContentsScale];
  }
}

- (void)_setProgressArcLayer:(id)a3
{
  progressArcLayer = self->__progressArcLayer;
  if (progressArcLayer != a3)
  {

    self->__progressArcLayer = a3;

    [(OKRoundProgressView *)self _updateSublayersContentsScale];
  }
}

- (void)_updateSublayersContentsScale
{
  [(OKRoundProgressView *)self _contentsScale];
  v4 = v3;
  v5 = [(OKRoundProgressView *)self _progressArcLayer];

  [(OKProgressArcLayer *)v5 setContentsScale:v4];
}

- (void)_setupSubviews
{
  [(OKRoundProgressView *)self bounds];
  v4 = v3;
  v6 = v5;
  v9 = [objc_alloc(MEMORY[0x277D75D18]) initWithFrame:{v7, v8, v3, v5}];
  [v9 setAutoresizingMask:18];
  [(OKRoundProgressView *)self addSubview:v9];
  v10 = [v9 layer];
  style = self->_style;
  if (style == 1)
  {
    v13 = [MEMORY[0x277D75348] blackColor];
    v15 = 0;
    v14 = 1;
    v12 = 0.5;
  }

  else
  {
    v12 = 1.0;
    if (style)
    {
      v13 = 0;
      v14 = 0;
      v15 = 0;
    }

    else
    {
      v13 = [MEMORY[0x277D75348] whiteColor];
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
    v18 = [MEMORY[0x277CD9F90] layer];
    self->_sliceLayer = v18;
    [(CAShapeLayer *)v18 setZPosition:0.0];
    [(CAShapeLayer *)self->_sliceLayer setStrokeColor:0];
    -[CAShapeLayer setFillColor:](self->_sliceLayer, "setFillColor:", [v13 CGColor]);
    v19 = [MEMORY[0x277CD9F90] layer];
    self->_circleLayer = v19;
    [(CAShapeLayer *)v19 setZPosition:0.0];
    -[CAShapeLayer setStrokeColor:](self->_circleLayer, "setStrokeColor:", [v13 CGColor]);
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
    [v10 addSublayer:self->_circleLayer];
    [v10 addSublayer:self->_sliceLayer];
  }

  if (v15)
  {
    [v10 setShadowColor:{objc_msgSend(objc_msgSend(MEMORY[0x277D75348], "colorWithWhite:alpha:", 0.0, 0.75), "CGColor")}];
    [v10 setShadowOffset:{*MEMORY[0x277CBF3A8], *(MEMORY[0x277CBF3A8] + 8)}];
    LODWORD(v24) = 1.0;
    [v10 setShadowOpacity:v24];
    [v10 setShadowRadius:0.5];
  }

  [(OKRoundProgressView *)self _updateUIProgress];
}

- (void)setPieRadius:(double)a3
{
  self->_pieRadius = a3;
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
  v10 = [(OKRoundProgressView *)self layer];
  pieRadius = self->_pieRadius;

  [v10 setCornerRadius:pieRadius];
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

- (void)increaseUIProgress:(id)a3
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

  v9 = [(OKRoundProgressView *)self _progressArcLayer];
  if (v9)
  {
    v10 = v9;
    [(OKProgressArcLayer *)v9 setStartAngle:4.71238898];

    [(OKProgressArcLayer *)v10 setEndAngle:v4];
  }
}

- (void)setInitialIncreaseRatePerFrame:(double)a3
{
  if (!self->_progressTimer)
  {
    self->_increaseRate = a3;
  }
}

- (void)recalculateIncreaseProgress:(double)a3 withTimeDiff:(double)a4
{
  v4 = a3 / a4 / 60.0;
  if (v4 < 0.000166666667)
  {
    v4 = 0.000166666667;
  }

  self->_increaseRate = v4;
}

- (void)setProgress:(double)a3
{
  self->_progress = a3;
  if (!self->_progressTimer && self->_realProgress <= 1.0)
  {
    [(OKRoundProgressView *)self startProgressTimer];
  }

  if (a3 > 0.0)
  {
    realProgress = self->_realProgress;
    if (realProgress < 1.0 && realProgress < a3)
    {
      if (a3 >= 1.0)
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
        v10 = v8 * (v9 / (a3 - self->_realProgress));
      }

      [(OKRoundProgressView *)self recalculateIncreaseProgress:v9 withTimeDiff:v10];
      self->_realProgress = a3;
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