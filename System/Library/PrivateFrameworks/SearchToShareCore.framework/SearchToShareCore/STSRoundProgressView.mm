@interface STSRoundProgressView
- (STSRoundProgressView)initWithFrame:(CGRect)frame style:(int64_t)style;
- (void)_setContentsScale:(double)scale;
- (void)_setProgressArcLayer:(id)layer;
- (void)_setupSubviews;
- (void)_updateSublayersContentsScale;
- (void)_updateUIProgress;
- (void)didMoveToWindow;
- (void)increaseUIProgress:(id)progress;
- (void)layoutSubviews;
- (void)recalculateIncreaseProgress:(double)progress withTimeDiff:(double)diff;
- (void)resetProgress;
- (void)setInitialIncreaseRatePerFrame:(double)frame;
- (void)setPieRadius:(double)radius;
- (void)setProgress:(double)progress;
- (void)startProgressTimer;
- (void)stopProgressTimer;
@end

@implementation STSRoundProgressView

- (STSRoundProgressView)initWithFrame:(CGRect)frame style:(int64_t)style
{
  v9.receiver = self;
  v9.super_class = STSRoundProgressView;
  v5 = [(STSRoundProgressView *)&v9 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v6 = v5;
  if (v5)
  {
    v5->_style = style;
    clearColor = [MEMORY[0x277D75348] clearColor];
    [(STSRoundProgressView *)v6 setBackgroundColor:clearColor];

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
  window = [(STSRoundProgressView *)self window];
  screen = [window screen];
  [screen scale];
  v6 = v5;

  [(STSRoundProgressView *)self _setContentsScale:v6];
}

- (void)_setContentsScale:(double)scale
{
  if (self->__contentsScale != scale)
  {
    self->__contentsScale = scale;
    [(STSRoundProgressView *)self _updateSublayersContentsScale];
  }
}

- (void)_setProgressArcLayer:(id)layer
{
  layerCopy = layer;
  if (self->__progressArcLayer != layerCopy)
  {
    v6 = layerCopy;
    objc_storeStrong(&self->__progressArcLayer, layer);
    [(STSRoundProgressView *)self _updateSublayersContentsScale];
    layerCopy = v6;
  }
}

- (void)_updateSublayersContentsScale
{
  [(STSRoundProgressView *)self _contentsScale];
  v4 = v3;
  _progressArcLayer = [(STSRoundProgressView *)self _progressArcLayer];
  [_progressArcLayer setContentsScale:v4];
}

- (void)_setupSubviews
{
  [(STSRoundProgressView *)self bounds];
  v4 = v3;
  v6 = v5;
  v9 = [objc_alloc(MEMORY[0x277D75D18]) initWithFrame:{v7, v8, v3, v5}];
  [v9 setAutoresizingMask:18];
  [(STSRoundProgressView *)self addSubview:v9];
  layer = [v9 layer];
  style = self->_style;
  if (style == 1)
  {
    blackColor = [MEMORY[0x277D75348] blackColor];
    v14 = 0;
    v13 = 1;
    v12 = 0.5;
  }

  else
  {
    v12 = 1.0;
    if (style)
    {
      blackColor = 0;
      v13 = 0;
      v14 = 0;
    }

    else
    {
      blackColor = [MEMORY[0x277D75348] whiteColor];
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
    layer2 = [MEMORY[0x277CD9F90] layer];
    sliceLayer = self->_sliceLayer;
    self->_sliceLayer = layer2;

    [(CAShapeLayer *)self->_sliceLayer setZPosition:0.0];
    [(CAShapeLayer *)self->_sliceLayer setStrokeColor:0];
    v20 = self->_sliceLayer;
    v21 = blackColor;
    -[CAShapeLayer setFillColor:](v20, "setFillColor:", [blackColor CGColor]);
    layer3 = [MEMORY[0x277CD9F90] layer];
    circleLayer = self->_circleLayer;
    self->_circleLayer = layer3;

    [(CAShapeLayer *)self->_circleLayer setZPosition:0.0];
    v24 = self->_circleLayer;
    v25 = blackColor;
    -[CAShapeLayer setStrokeColor:](v24, "setStrokeColor:", [blackColor CGColor]);
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
    [layer addSublayer:self->_circleLayer];
    [layer addSublayer:self->_sliceLayer];
  }

  if (v14)
  {
    v30 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.75];
    [layer setShadowColor:{objc_msgSend(v30, "CGColor")}];

    [layer setShadowOffset:{*MEMORY[0x277CBF3A8], *(MEMORY[0x277CBF3A8] + 8)}];
    LODWORD(v31) = 1.0;
    [layer setShadowOpacity:v31];
    [layer setShadowRadius:0.5];
  }

  [(STSRoundProgressView *)self _updateUIProgress];
}

- (void)setPieRadius:(double)radius
{
  self->_pieRadius = radius;
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
  layer = [(STSRoundProgressView *)self layer];
  [layer setCornerRadius:self->_pieRadius];
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

- (void)increaseUIProgress:(id)progress
{
  progressCopy = progress;
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

  _progressArcLayer = [(STSRoundProgressView *)self _progressArcLayer];
  if (_progressArcLayer)
  {
    v10 = _progressArcLayer;
    [_progressArcLayer setStartAngle:4.71238898];
    [v10 setEndAngle:v4];
    _progressArcLayer = v10;
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
    [(STSRoundProgressView *)self startProgressTimer];
  }

  if (progress > 0.0)
  {
    realProgress = self->_realProgress;
    if (realProgress < 1.0 && realProgress < progress)
    {
      if (progress >= 1.0)
      {
        v12 = 1.0 - self->_uiProgress;
        v13 = 0.1;
      }

      else
      {
        date = [MEMORY[0x277CBEAA8] date];
        [date timeIntervalSinceDate:self->_prevUpdateTime];
        v9 = v8;

        date2 = [MEMORY[0x277CBEAA8] date];
        prevUpdateTime = self->_prevUpdateTime;
        self->_prevUpdateTime = date2;

        v12 = 1.0 - self->_uiProgress;
        v13 = v9 * (v12 / (progress - self->_realProgress));
      }

      [(STSRoundProgressView *)self recalculateIncreaseProgress:v12 withTimeDiff:v13];
      self->_realProgress = progress;
    }
  }
}

- (void)resetProgress
{
  self->_uiProgress = 0.0;
  self->_increaseRate = 0.00166666667;
  self->_realProgress = 0.0;
  date = [MEMORY[0x277CBEAA8] date];
  prevUpdateTime = self->_prevUpdateTime;
  self->_prevUpdateTime = date;

  [(STSRoundProgressView *)self stopProgressTimer];

  [(STSRoundProgressView *)self _updateUIProgress];
}

@end