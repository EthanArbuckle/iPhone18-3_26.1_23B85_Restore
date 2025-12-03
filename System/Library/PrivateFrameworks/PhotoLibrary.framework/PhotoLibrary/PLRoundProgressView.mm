@interface PLRoundProgressView
- (PLRoundProgressView)initWithFrame:(CGRect)frame style:(int64_t)style;
- (void)_setContentsScale:(double)scale;
- (void)_setProgressArcLayer:(id)layer;
- (void)_updateSublayersContentsScale;
- (void)_updateSubviews;
- (void)_updateUIProgress;
- (void)dealloc;
- (void)didMoveToWindow;
- (void)increaseUIProgress:(id)progress;
- (void)layoutSubviews;
- (void)recalculateIncreaseProgress:(double)progress withTimeDiff:(double)diff;
- (void)resetProgress;
- (void)setInitialIncreaseRatePerFrame:(double)frame;
- (void)setManualColor:(id)color;
- (void)setPieRadius:(double)radius;
- (void)setProgress:(double)progress;
- (void)startProgressTimer;
- (void)stopProgressTimer;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation PLRoundProgressView

- (void)setManualColor:(id)color
{
  manualColor = self->_manualColor;
  if (manualColor != color)
  {
    self->_manualColor = color;

    [(PLRoundProgressView *)self _updateSubviews];
  }
}

- (void)traitCollectionDidChange:(id)change
{
  v5.receiver = self;
  v5.super_class = PLRoundProgressView;
  [(PLRoundProgressView *)&v5 traitCollectionDidChange:?];
  if (self->_style == 3)
  {
    if ([-[PLRoundProgressView traitCollection](self "traitCollection")])
    {
      [(PLRoundProgressView *)self _updateSubviews];
    }
  }
}

- (void)resetProgress
{
  self->_uiProgress = 0.0;
  self->_increaseRate = 0.00166666667;
  self->_realProgress = 0.0;

  self->_prevUpdateTime = [MEMORY[0x277CBEAA8] date];
  [(PLRoundProgressView *)self stopProgressTimer];

  [(PLRoundProgressView *)self _updateUIProgress];
}

- (void)setProgress:(double)progress
{
  self->_progress = progress;
  if (!self->_progressTimer && self->_realProgress <= 1.0)
  {
    [(PLRoundProgressView *)self startProgressTimer];
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

      [(PLRoundProgressView *)self recalculateIncreaseProgress:v9 withTimeDiff:v10];
      self->_realProgress = progress;
    }
  }
}

- (void)recalculateIncreaseProgress:(double)progress withTimeDiff:(double)diff
{
  v4 = progress / diff / 60.0;
  if (v4 < 0.000166666667)
  {
    v4 = 0.000166666667;
  }

  if (v4 > 0.0166666667)
  {
    v4 = 0.0166666667;
  }

  self->_increaseRate = v4;
}

- (void)setInitialIncreaseRatePerFrame:(double)frame
{
  if (!self->_progressTimer)
  {
    self->_increaseRate = frame;
  }
}

- (void)_updateUIProgress
{
  [(PLRoundProgressView *)self toRadian:self->_uiProgress];
  v4 = v3 + 4.71238898;
  _sliceLayer = [(PLRoundProgressView *)self _sliceLayer];
  if (_sliceLayer)
  {
    v6 = _sliceLayer;
    pieRadius = self->_pieRadius;
    x = self->_pieCenter.x;
    y = self->_pieCenter.y;
    Mutable = CGPathCreateMutable();
    CGPathMoveToPoint(Mutable, 0, x, y);
    CGPathAddArc(Mutable, 0, x, y, pieRadius, 4.71238898, v4, 0);
    CGPathCloseSubpath(Mutable);
    [(CAShapeLayer *)v6 setPath:Mutable];
    CFRelease(Mutable);
  }

  _progressArcLayer = [(PLRoundProgressView *)self _progressArcLayer];
  if (_progressArcLayer)
  {
    v12 = _progressArcLayer;
    [(PLProgressArcLayer *)_progressArcLayer setStartAngle:4.71238898];

    [(PLProgressArcLayer *)v12 setEndAngle:v4];
  }
}

- (void)increaseUIProgress:(id)progress
{
  realProgress = self->_realProgress;
  uiProgress = self->_uiProgress;
  if (realProgress != 0.0 && uiProgress >= realProgress)
  {
LABEL_13:
    if (uiProgress < 1.0)
    {
      return;
    }

    goto LABEL_18;
  }

  increaseRate = self->_increaseRate;
  v8 = 1.0;
  if (realProgress >= 1.0)
  {
    v9 = uiProgress + increaseRate;
    if (v9 <= 1.0)
    {
LABEL_12:
      self->_uiProgress = v9;
      [(PLRoundProgressView *)self _updateUIProgress];
      uiProgress = self->_uiProgress;
      goto LABEL_13;
    }

LABEL_11:
    v9 = v8;
    goto LABEL_12;
  }

  if (uiProgress + increaseRate * 1.1 < 1.0)
  {
    if (realProgress != 0.0)
    {
LABEL_9:
      v8 = uiProgress + increaseRate;
      goto LABEL_11;
    }

    if (uiProgress < 0.25 && [(PLRoundProgressView *)self allowFake25PercentProgress])
    {
      uiProgress = self->_uiProgress;
      increaseRate = self->_increaseRate;
      goto LABEL_9;
    }
  }

LABEL_18:

  [(PLRoundProgressView *)self stopProgressTimer];
}

- (void)startProgressTimer
{
  if (self->_uiProgress < 1.0 && !self->_progressTimer)
  {
    v3[0] = 0;
    v3[1] = v3;
    v3[2] = 0x3052000000;
    v3[3] = __Block_byref_object_copy__2690;
    v3[4] = __Block_byref_object_dispose__2691;
    v3[5] = self;
    v2[0] = MEMORY[0x277D85DD0];
    v2[1] = 3221225472;
    v2[2] = __41__PLRoundProgressView_startProgressTimer__block_invoke;
    v2[3] = &unk_2782A1CC0;
    v2[4] = v3;
    self->_progressTimer = [MEMORY[0x277CBEBB8] scheduledTimerWithTimeInterval:1 repeats:v2 block:0.0166666667];
    _Block_object_dispose(v3, 8);
  }
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

- (void)setPieRadius:(double)radius
{
  self->_pieRadius = radius;
  [(PLRoundProgressView *)self bounds];
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
  layer = [(PLRoundProgressView *)self layer];
  pieRadius = self->_pieRadius;

  [layer setCornerRadius:pieRadius];
}

- (void)_updateSubviews
{
  [(PLRoundProgressView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  _contentView = [(PLRoundProgressView *)self _contentView];
  if (!_contentView)
  {
    v12 = objc_alloc(MEMORY[0x277D75D18]);
    _contentView = [v12 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
    [(UIView *)_contentView setAutoresizingMask:18];
    [(PLRoundProgressView *)self addSubview:_contentView];
    [(PLRoundProgressView *)self _setContentView:_contentView];
  }

  [(UIView *)_contentView setFrame:v4, v6, v8, v10];
  layer = [(UIView *)_contentView layer];
  v14 = 0;
  labelColor = 0;
  style = self->_style;
  v17 = 1.0;
  if (style > 1)
  {
    if (style != 2)
    {
      v18 = 0;
      v19 = 0;
      if (style != 3)
      {
        goto LABEL_14;
      }

      v19 = [-[PLRoundProgressView traitCollection](self "traitCollection")] != 2;
      labelColor = [MEMORY[0x277D75348] labelColor];
      v14 = 0;
      goto LABEL_10;
    }

    labelColor = 0;
    v18 = 0;
    v14 = 1;
  }

  else
  {
    if (style)
    {
      v18 = 0;
      v19 = 0;
      if (style != 1)
      {
        goto LABEL_14;
      }

      labelColor = [MEMORY[0x277D75348] blackColor];
      v14 = 0;
      v19 = 0;
LABEL_10:
      v18 = 1;
      v17 = 0.5;
      goto LABEL_14;
    }

    labelColor = [MEMORY[0x277D75348] whiteColor];
    v14 = 0;
    v18 = 1;
  }

  v19 = 1;
LABEL_14:
  if ([(PLRoundProgressView *)self manualColor])
  {
    labelColor = [(PLRoundProgressView *)self manualColor];
    *&v46 = 1.0;
    if ([(UIColor *)labelColor getRed:0 green:0 blue:0 alpha:&v46])
    {
      labelColor = [(UIColor *)labelColor colorWithAlphaComponent:1.0];
    }

    v17 = *&v46;
  }

  [(UIView *)_contentView setAlpha:v17];
  v20 = v8 * 0.5;
  if (v8 * 0.5 >= v10 * 0.5)
  {
    v20 = v10 * 0.5;
  }

  v21 = ceil(v20 / 5.5);
  v22 = v20 - v21 * 0.5;
  [(PLRoundProgressView *)self setPieRadius:v22];
  if ([(PLRoundProgressView *)self skipResetOnRelayout])
  {
    if (!v18)
    {
      goto LABEL_22;
    }
  }

  else
  {
    [(PLRoundProgressView *)self resetProgress];
    if (!v18)
    {
LABEL_22:
      if (!v14)
      {
        goto LABEL_23;
      }

LABEL_32:
      v45 = v8;
      [(CALayer *)layer bounds];
      x = v47.origin.x;
      y = v47.origin.y;
      width = v47.size.width;
      height = v47.size.height;
      MidX = CGRectGetMidX(v47);
      v48.origin.x = x;
      v48.origin.y = y;
      v48.size.width = width;
      v48.size.height = height;
      MidY = CGRectGetMidY(v48);
      _progressArcLayer = [(PLRoundProgressView *)self _progressArcLayer];
      if (!_progressArcLayer)
      {
        _progressArcLayer = objc_alloc_init(PLProgressArcLayer);
        [(CALayer *)layer addSublayer:_progressArcLayer];
        [(PLRoundProgressView *)self _setProgressArcLayer:_progressArcLayer];
      }

      [(PLProgressArcLayer *)_progressArcLayer setPosition:MidX, MidY];
      v37 = *MEMORY[0x277CBF348];
      v38 = *(MEMORY[0x277CBF348] + 8);
      [(PLProgressArcLayer *)_progressArcLayer setBounds:*MEMORY[0x277CBF348], v38, width, height];
      [(PLProgressArcLayer *)_progressArcLayer setRadius:v22];
      [(PLProgressArcLayer *)_progressArcLayer setLineWidth:v21];
      _irisGlyphLayer = [(PLRoundProgressView *)self _irisGlyphLayer];
      if (!_irisGlyphLayer)
      {
        _irisGlyphLayer = [MEMORY[0x277CD9ED0] layer];
        v40 = @"-Compact";
        if (v45 >= 30.0)
        {
          v40 = @"-Regular";
        }

        v41 = [MEMORY[0x277CCACA8] stringWithFormat:@"PLProgressIris%@-PhotoIris", 30.0, v45, v40];
        v42 = [MEMORY[0x277D755B8] imageNamed:v41 inBundle:PLPhotoLibraryFrameworkBundle()];
        [v42 size];
        [(CALayer *)_irisGlyphLayer setBounds:v37, v38, v43, v44];
        -[CALayer setContents:](_irisGlyphLayer, "setContents:", [v42 CGImage]);
        [(PLRoundProgressView *)self _setIrisGlyphLayer:_irisGlyphLayer];
        [(CALayer *)layer addSublayer:_irisGlyphLayer];
      }

      [(CALayer *)_irisGlyphLayer setPosition:MidX, MidY];
      if (v19)
      {
        goto LABEL_24;
      }

      goto LABEL_25;
    }
  }

  _sliceLayer = [(PLRoundProgressView *)self _sliceLayer];
  if (!_sliceLayer)
  {
    _sliceLayer = [MEMORY[0x277CD9F90] layer];
    [(CALayer *)layer addSublayer:_sliceLayer];
    [(PLRoundProgressView *)self _setSliceLayer:_sliceLayer];
  }

  [(CAShapeLayer *)_sliceLayer setZPosition:0.0];
  [(CAShapeLayer *)_sliceLayer setStrokeColor:0];
  [(CAShapeLayer *)_sliceLayer setFillColor:[(UIColor *)labelColor CGColor]];
  _circleLayer = [(PLRoundProgressView *)self _circleLayer];
  if (!_circleLayer)
  {
    _circleLayer = [MEMORY[0x277CD9F90] layer];
    [(CALayer *)layer addSublayer:_circleLayer];
    [(PLRoundProgressView *)self _setCircleLayer:_circleLayer];
  }

  [(CAShapeLayer *)_circleLayer setZPosition:0.0];
  [(CAShapeLayer *)_circleLayer setStrokeColor:[(UIColor *)labelColor CGColor]];
  [(CAShapeLayer *)_circleLayer setFillColor:0];
  [(CAShapeLayer *)_circleLayer setLineWidth:v21];
  pieRadius = self->_pieRadius;
  v27 = self->_pieCenter.x;
  v28 = self->_pieCenter.y;
  Mutable = CGPathCreateMutable();
  CGPathAddArc(Mutable, 0, v27, v28, pieRadius + -1.0, 0.0, 6.28318531, 0);
  CGPathCloseSubpath(Mutable);
  [(CAShapeLayer *)_circleLayer setPath:Mutable];
  CGPathRelease(Mutable);
  if (v14)
  {
    goto LABEL_32;
  }

LABEL_23:
  if (v19)
  {
LABEL_24:
    -[CALayer setShadowColor:](layer, "setShadowColor:", [objc_msgSend(MEMORY[0x277D75348] colorWithWhite:0.0 alpha:{0.75), "CGColor"}]);
    [(CALayer *)layer setShadowOffset:*MEMORY[0x277CBF3A8], *(MEMORY[0x277CBF3A8] + 8)];
    LODWORD(v23) = 1.0;
    [(CALayer *)layer setShadowOpacity:v23];
    [(CALayer *)layer setShadowRadius:0.5];
  }

LABEL_25:
  [(PLRoundProgressView *)self _updateUIProgress];
}

- (void)_updateSublayersContentsScale
{
  [(PLRoundProgressView *)self _contentsScale];
  v4 = v3;
  _progressArcLayer = [(PLRoundProgressView *)self _progressArcLayer];

  [(PLProgressArcLayer *)_progressArcLayer setContentsScale:v4];
}

- (void)_setProgressArcLayer:(id)layer
{
  progressArcLayer = self->__progressArcLayer;
  if (progressArcLayer != layer)
  {

    self->__progressArcLayer = layer;

    [(PLRoundProgressView *)self _updateSublayersContentsScale];
  }
}

- (void)_setContentsScale:(double)scale
{
  if (self->__contentsScale != scale)
  {
    self->__contentsScale = scale;
    [(PLRoundProgressView *)self _updateSublayersContentsScale];
  }
}

- (void)didMoveToWindow
{
  v3.receiver = self;
  v3.super_class = PLRoundProgressView;
  [(PLRoundProgressView *)&v3 didMoveToWindow];
  [objc_msgSend(-[PLRoundProgressView window](self "window")];
  [(PLRoundProgressView *)self _setContentsScale:?];
}

- (void)dealloc
{
  [(NSTimer *)self->_progressTimer invalidate];

  v3.receiver = self;
  v3.super_class = PLRoundProgressView;
  [(PLRoundProgressView *)&v3 dealloc];
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = PLRoundProgressView;
  [(PLRoundProgressView *)&v3 layoutSubviews];
  [(PLRoundProgressView *)self _updateSubviews];
}

- (PLRoundProgressView)initWithFrame:(CGRect)frame style:(int64_t)style
{
  v8.receiver = self;
  v8.super_class = PLRoundProgressView;
  v5 = [(PLRoundProgressView *)&v8 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v6 = v5;
  if (v5)
  {
    v5->_style = style;
    v5->_allowFake25PercentProgress = 1;
    v5->_skipResetOnRelayout = 0;
    -[PLRoundProgressView setBackgroundColor:](v5, "setBackgroundColor:", [MEMORY[0x277D75348] clearColor]);
    [(PLRoundProgressView *)v6 _updateSubviews];
  }

  return v6;
}

@end