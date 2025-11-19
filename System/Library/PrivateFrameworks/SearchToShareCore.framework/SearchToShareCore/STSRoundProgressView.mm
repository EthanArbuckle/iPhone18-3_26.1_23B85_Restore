@interface STSRoundProgressView
- (STSRoundProgressView)initWithFrame:(CGRect)a3 style:(int64_t)a4;
- (void)_setContentsScale:(double)a3;
- (void)_setProgressArcLayer:(id)a3;
- (void)_setupSubviews;
- (void)_updateSublayersContentsScale;
- (void)_updateUIProgress;
- (void)didMoveToWindow;
- (void)increaseUIProgress:(id)a3;
- (void)layoutSubviews;
- (void)recalculateIncreaseProgress:(double)a3 withTimeDiff:(double)a4;
- (void)resetProgress;
- (void)setInitialIncreaseRatePerFrame:(double)a3;
- (void)setPieRadius:(double)a3;
- (void)setProgress:(double)a3;
- (void)startProgressTimer;
- (void)stopProgressTimer;
@end

@implementation STSRoundProgressView

- (STSRoundProgressView)initWithFrame:(CGRect)a3 style:(int64_t)a4
{
  v9.receiver = self;
  v9.super_class = STSRoundProgressView;
  v5 = [(STSRoundProgressView *)&v9 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v6 = v5;
  if (v5)
  {
    v5->_style = a4;
    v7 = [MEMORY[0x277D75348] clearColor];
    [(STSRoundProgressView *)v6 setBackgroundColor:v7];

    [(STSRoundProgressView *)v6 _setupSubviews];
  }

  return v6;
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = STSRoundProgressView;
  [(STSRoundProgressView *)&v3 layoutSubviews];
  [(STSRoundProgressView *)self _setupSubviews];
}

- (void)didMoveToWindow
{
  v7.receiver = self;
  v7.super_class = STSRoundProgressView;
  [(STSRoundProgressView *)&v7 didMoveToWindow];
  v3 = [(STSRoundProgressView *)self window];
  v4 = [v3 screen];
  [v4 scale];
  v6 = v5;

  [(STSRoundProgressView *)self _setContentsScale:v6];
}

- (void)_setContentsScale:(double)a3
{
  if (self->__contentsScale != a3)
  {
    self->__contentsScale = a3;
    [(STSRoundProgressView *)self _updateSublayersContentsScale];
  }
}

- (void)_setProgressArcLayer:(id)a3
{
  v5 = a3;
  if (self->__progressArcLayer != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->__progressArcLayer, a3);
    [(STSRoundProgressView *)self _updateSublayersContentsScale];
    v5 = v6;
  }
}

- (void)_updateSublayersContentsScale
{
  [(STSRoundProgressView *)self _contentsScale];
  v4 = v3;
  v5 = [(STSRoundProgressView *)self _progressArcLayer];
  [v5 setContentsScale:v4];
}

- (void)_setupSubviews
{
  [(STSRoundProgressView *)self bounds];
  v4 = v3;
  v6 = v5;
  v9 = [objc_alloc(MEMORY[0x277D75D18]) initWithFrame:{v7, v8, v3, v5}];
  [v9 setAutoresizingMask:18];
  [(STSRoundProgressView *)self addSubview:v9];
  v10 = [v9 layer];
  style = self->_style;
  if (style == 1)
  {
    v32 = [MEMORY[0x277D75348] blackColor];
    v14 = 0;
    v13 = 1;
    v12 = 0.5;
  }

  else
  {
    v12 = 1.0;
    if (style)
    {
      v32 = 0;
      v13 = 0;
      v14 = 0;
    }

    else
    {
      v32 = [MEMORY[0x277D75348] whiteColor];
      v13 = 1;
      v14 = 1;
    }
  }

  [v9 setAlpha:v12];
  v15 = v4 * 0.5;
  if (v4 * 0.5 >= v6 * 0.5)
  {
    v15 = v6 * 0.5;
  }

  v16 = ceil(v15 / 5.5);
  [(STSRoundProgressView *)self setPieRadius:v15 - v16 * 0.5];
  progressTimer = self->_progressTimer;
  self->_progressTimer = 0;

  [(STSRoundProgressView *)self resetProgress];
  if (v13)
  {
    v18 = [MEMORY[0x277CD9F90] layer];
    sliceLayer = self->_sliceLayer;
    self->_sliceLayer = v18;

    [(CAShapeLayer *)self->_sliceLayer setZPosition:0.0];
    [(CAShapeLayer *)self->_sliceLayer setStrokeColor:0];
    v20 = self->_sliceLayer;
    v21 = v32;
    -[CAShapeLayer setFillColor:](v20, "setFillColor:", [v32 CGColor]);
    v22 = [MEMORY[0x277CD9F90] layer];
    circleLayer = self->_circleLayer;
    self->_circleLayer = v22;

    [(CAShapeLayer *)self->_circleLayer setZPosition:0.0];
    v24 = self->_circleLayer;
    v25 = v32;
    -[CAShapeLayer setStrokeColor:](v24, "setStrokeColor:", [v32 CGColor]);
    [(CAShapeLayer *)self->_circleLayer setFillColor:0];
    [(CAShapeLayer *)self->_circleLayer setLineWidth:v16];
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

  if (v14)
  {
    v30 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.75];
    [v10 setShadowColor:{objc_msgSend(v30, "CGColor")}];

    [v10 setShadowOffset:{*MEMORY[0x277CBF3A8], *(MEMORY[0x277CBF3A8] + 8)}];
    LODWORD(v31) = 1.0;
    [v10 setShadowOpacity:v31];
    [v10 setShadowRadius:0.5];
  }

  [(STSRoundProgressView *)self _updateUIProgress];
}

- (void)setPieRadius:(double)a3
{
  self->_pieRadius = a3;
  [(STSRoundProgressView *)self bounds];
  x = v12.origin.x;
  y = v12.origin.y;
  width = v12.size.width;
  height = v12.size.height;
  MidX = CGRectGetMidX(v12);
  v13.origin.x = x;
  v13.origin.y = y;
  v13.size.width = width;
  v13.size.height = height;
  MidY = CGRectGetMidY(v13);
  self->_pieCenter.x = MidX;
  self->_pieCenter.y = MidY;
  v10 = [(STSRoundProgressView *)self layer];
  [v10 setCornerRadius:self->_pieRadius];
}

- (void)stopProgressTimer
{
  progressTimer = self->_progressTimer;
  if (progressTimer)
  {
    [(NSTimer *)progressTimer invalidate];
    v4 = self->_progressTimer;
    self->_progressTimer = 0;
  }
}

- (void)startProgressTimer
{
  if (self->_uiProgress < 1.0 && !self->_progressTimer)
  {
    v3 = [MEMORY[0x277CBEBB8] scheduledTimerWithTimeInterval:self target:sel_increaseUIProgress_ selector:0 userInfo:1 repeats:0.0166666667];
    progressTimer = self->_progressTimer;
    self->_progressTimer = v3;

    MEMORY[0x2821F96F8](v3, progressTimer);
  }
}

- (void)increaseUIProgress:(id)a3
{
  v10 = a3;
  realProgress = self->_realProgress;
  if (realProgress != 0.0)
  {
    uiProgress = self->_uiProgress;
    if (uiProgress >= realProgress)
    {
LABEL_11:
      if (uiProgress < 1.0)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }
  }

  v6 = self->_uiProgress;
  increaseRate = self->_increaseRate;
  v8 = 1.0;
  if (realProgress >= 1.0)
  {
    v9 = v6 + increaseRate;
    if (v6 + increaseRate <= 1.0)
    {
LABEL_10:
      self->_uiProgress = v9;
      [(STSRoundProgressView *)self _updateUIProgress];
      uiProgress = self->_uiProgress;
      goto LABEL_11;
    }

LABEL_9:
    v9 = v8;
    goto LABEL_10;
  }

  if (v6 + increaseRate * 1.1 < 1.0 && (realProgress != 0.0 || v6 < 0.05))
  {
    v8 = v6 + increaseRate;
    goto LABEL_9;
  }

LABEL_12:
  [(STSRoundProgressView *)self stopProgressTimer];
LABEL_13:
}

- (void)_updateUIProgress
{
  [(STSRoundProgressView *)self toRadian:self->_uiProgress];
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

  v9 = [(STSRoundProgressView *)self _progressArcLayer];
  if (v9)
  {
    v10 = v9;
    [v9 setStartAngle:4.71238898];
    [v10 setEndAngle:v4];
    v9 = v10;
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
    [(STSRoundProgressView *)self startProgressTimer];
  }

  if (a3 > 0.0)
  {
    realProgress = self->_realProgress;
    if (realProgress < 1.0 && realProgress < a3)
    {
      if (a3 >= 1.0)
      {
        v12 = 1.0 - self->_uiProgress;
        v13 = 0.1;
      }

      else
      {
        v7 = [MEMORY[0x277CBEAA8] date];
        [v7 timeIntervalSinceDate:self->_prevUpdateTime];
        v9 = v8;

        v10 = [MEMORY[0x277CBEAA8] date];
        prevUpdateTime = self->_prevUpdateTime;
        self->_prevUpdateTime = v10;

        v12 = 1.0 - self->_uiProgress;
        v13 = v9 * (v12 / (a3 - self->_realProgress));
      }

      [(STSRoundProgressView *)self recalculateIncreaseProgress:v12 withTimeDiff:v13];
      self->_realProgress = a3;
    }
  }
}

- (void)resetProgress
{
  self->_uiProgress = 0.0;
  self->_increaseRate = 0.00166666667;
  self->_realProgress = 0.0;
  v3 = [MEMORY[0x277CBEAA8] date];
  prevUpdateTime = self->_prevUpdateTime;
  self->_prevUpdateTime = v3;

  [(STSRoundProgressView *)self stopProgressTimer];

  [(STSRoundProgressView *)self _updateUIProgress];
}

@end