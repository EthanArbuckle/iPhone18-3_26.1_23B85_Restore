@interface PLRoundProgressView
- (PLRoundProgressView)initWithFrame:(CGRect)a3 style:(int64_t)a4;
- (void)_setContentsScale:(double)a3;
- (void)_setProgressArcLayer:(id)a3;
- (void)_updateSublayersContentsScale;
- (void)_updateSubviews;
- (void)_updateUIProgress;
- (void)dealloc;
- (void)didMoveToWindow;
- (void)increaseUIProgress:(id)a3;
- (void)layoutSubviews;
- (void)recalculateIncreaseProgress:(double)a3 withTimeDiff:(double)a4;
- (void)resetProgress;
- (void)setInitialIncreaseRatePerFrame:(double)a3;
- (void)setManualColor:(id)a3;
- (void)setPieRadius:(double)a3;
- (void)setProgress:(double)a3;
- (void)startProgressTimer;
- (void)stopProgressTimer;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation PLRoundProgressView

- (void)setManualColor:(id)a3
{
  manualColor = self->_manualColor;
  if (manualColor != a3)
  {
    self->_manualColor = a3;

    [(PLRoundProgressView *)self _updateSubviews];
  }
}

- (void)traitCollectionDidChange:(id)a3
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

- (void)setProgress:(double)a3
{
  self->_progress = a3;
  if (!self->_progressTimer && self->_realProgress <= 1.0)
  {
    [(PLRoundProgressView *)self startProgressTimer];
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

      [(PLRoundProgressView *)self recalculateIncreaseProgress:v9 withTimeDiff:v10];
      self->_realProgress = a3;
    }
  }
}

- (void)recalculateIncreaseProgress:(double)a3 withTimeDiff:(double)a4
{
  v4 = a3 / a4 / 60.0;
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

- (void)setInitialIncreaseRatePerFrame:(double)a3
{
  if (!self->_progressTimer)
  {
    self->_increaseRate = a3;
  }
}

- (void)_updateUIProgress
{
  [(PLRoundProgressView *)self toRadian:self->_uiProgress];
  v4 = v3 + 4.71238898;
  v5 = [(PLRoundProgressView *)self _sliceLayer];
  if (v5)
  {
    v6 = v5;
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

  v11 = [(PLRoundProgressView *)self _progressArcLayer];
  if (v11)
  {
    v12 = v11;
    [(PLProgressArcLayer *)v11 setStartAngle:4.71238898];

    [(PLProgressArcLayer *)v12 setEndAngle:v4];
  }
}

- (void)increaseUIProgress:(id)a3
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

- (void)setPieRadius:(double)a3
{
  self->_pieRadius = a3;
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
  v10 = [(PLRoundProgressView *)self layer];
  pieRadius = self->_pieRadius;

  [v10 setCornerRadius:pieRadius];
}

- (void)_updateSubviews
{
  [(PLRoundProgressView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = [(PLRoundProgressView *)self _contentView];
  if (!v11)
  {
    v12 = objc_alloc(MEMORY[0x277D75D18]);
    v11 = [v12 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
    [(UIView *)v11 setAutoresizingMask:18];
    [(PLRoundProgressView *)self addSubview:v11];
    [(PLRoundProgressView *)self _setContentView:v11];
  }

  [(UIView *)v11 setFrame:v4, v6, v8, v10];
  v13 = [(UIView *)v11 layer];
  v14 = 0;
  v15 = 0;
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
      v15 = [MEMORY[0x277D75348] labelColor];
      v14 = 0;
      goto LABEL_10;
    }

    v15 = 0;
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

      v15 = [MEMORY[0x277D75348] blackColor];
      v14 = 0;
      v19 = 0;
LABEL_10:
      v18 = 1;
      v17 = 0.5;
      goto LABEL_14;
    }

    v15 = [MEMORY[0x277D75348] whiteColor];
    v14 = 0;
    v18 = 1;
  }

  v19 = 1;
LABEL_14:
  if ([(PLRoundProgressView *)self manualColor])
  {
    v15 = [(PLRoundProgressView *)self manualColor];
    *&v46 = 1.0;
    if ([(UIColor *)v15 getRed:0 green:0 blue:0 alpha:&v46])
    {
      v15 = [(UIColor *)v15 colorWithAlphaComponent:1.0];
    }

    v17 = *&v46;
  }

  [(UIView *)v11 setAlpha:v17];
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
      [(CALayer *)v13 bounds];
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
      v36 = [(PLRoundProgressView *)self _progressArcLayer];
      if (!v36)
      {
        v36 = objc_alloc_init(PLProgressArcLayer);
        [(CALayer *)v13 addSublayer:v36];
        [(PLRoundProgressView *)self _setProgressArcLayer:v36];
      }

      [(PLProgressArcLayer *)v36 setPosition:MidX, MidY];
      v37 = *MEMORY[0x277CBF348];
      v38 = *(MEMORY[0x277CBF348] + 8);
      [(PLProgressArcLayer *)v36 setBounds:*MEMORY[0x277CBF348], v38, width, height];
      [(PLProgressArcLayer *)v36 setRadius:v22];
      [(PLProgressArcLayer *)v36 setLineWidth:v21];
      v39 = [(PLRoundProgressView *)self _irisGlyphLayer];
      if (!v39)
      {
        v39 = [MEMORY[0x277CD9ED0] layer];
        v40 = @"-Compact";
        if (v45 >= 30.0)
        {
          v40 = @"-Regular";
        }

        v41 = [MEMORY[0x277CCACA8] stringWithFormat:@"PLProgressIris%@-PhotoIris", 30.0, v45, v40];
        v42 = [MEMORY[0x277D755B8] imageNamed:v41 inBundle:PLPhotoLibraryFrameworkBundle()];
        [v42 size];
        [(CALayer *)v39 setBounds:v37, v38, v43, v44];
        -[CALayer setContents:](v39, "setContents:", [v42 CGImage]);
        [(PLRoundProgressView *)self _setIrisGlyphLayer:v39];
        [(CALayer *)v13 addSublayer:v39];
      }

      [(CALayer *)v39 setPosition:MidX, MidY];
      if (v19)
      {
        goto LABEL_24;
      }

      goto LABEL_25;
    }
  }

  v24 = [(PLRoundProgressView *)self _sliceLayer];
  if (!v24)
  {
    v24 = [MEMORY[0x277CD9F90] layer];
    [(CALayer *)v13 addSublayer:v24];
    [(PLRoundProgressView *)self _setSliceLayer:v24];
  }

  [(CAShapeLayer *)v24 setZPosition:0.0];
  [(CAShapeLayer *)v24 setStrokeColor:0];
  [(CAShapeLayer *)v24 setFillColor:[(UIColor *)v15 CGColor]];
  v25 = [(PLRoundProgressView *)self _circleLayer];
  if (!v25)
  {
    v25 = [MEMORY[0x277CD9F90] layer];
    [(CALayer *)v13 addSublayer:v25];
    [(PLRoundProgressView *)self _setCircleLayer:v25];
  }

  [(CAShapeLayer *)v25 setZPosition:0.0];
  [(CAShapeLayer *)v25 setStrokeColor:[(UIColor *)v15 CGColor]];
  [(CAShapeLayer *)v25 setFillColor:0];
  [(CAShapeLayer *)v25 setLineWidth:v21];
  pieRadius = self->_pieRadius;
  v27 = self->_pieCenter.x;
  v28 = self->_pieCenter.y;
  Mutable = CGPathCreateMutable();
  CGPathAddArc(Mutable, 0, v27, v28, pieRadius + -1.0, 0.0, 6.28318531, 0);
  CGPathCloseSubpath(Mutable);
  [(CAShapeLayer *)v25 setPath:Mutable];
  CGPathRelease(Mutable);
  if (v14)
  {
    goto LABEL_32;
  }

LABEL_23:
  if (v19)
  {
LABEL_24:
    -[CALayer setShadowColor:](v13, "setShadowColor:", [objc_msgSend(MEMORY[0x277D75348] colorWithWhite:0.0 alpha:{0.75), "CGColor"}]);
    [(CALayer *)v13 setShadowOffset:*MEMORY[0x277CBF3A8], *(MEMORY[0x277CBF3A8] + 8)];
    LODWORD(v23) = 1.0;
    [(CALayer *)v13 setShadowOpacity:v23];
    [(CALayer *)v13 setShadowRadius:0.5];
  }

LABEL_25:
  [(PLRoundProgressView *)self _updateUIProgress];
}

- (void)_updateSublayersContentsScale
{
  [(PLRoundProgressView *)self _contentsScale];
  v4 = v3;
  v5 = [(PLRoundProgressView *)self _progressArcLayer];

  [(PLProgressArcLayer *)v5 setContentsScale:v4];
}

- (void)_setProgressArcLayer:(id)a3
{
  progressArcLayer = self->__progressArcLayer;
  if (progressArcLayer != a3)
  {

    self->__progressArcLayer = a3;

    [(PLRoundProgressView *)self _updateSublayersContentsScale];
  }
}

- (void)_setContentsScale:(double)a3
{
  if (self->__contentsScale != a3)
  {
    self->__contentsScale = a3;
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

- (PLRoundProgressView)initWithFrame:(CGRect)a3 style:(int64_t)a4
{
  v8.receiver = self;
  v8.super_class = PLRoundProgressView;
  v5 = [(PLRoundProgressView *)&v8 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v6 = v5;
  if (v5)
  {
    v5->_style = a4;
    v5->_allowFake25PercentProgress = 1;
    v5->_skipResetOnRelayout = 0;
    -[PLRoundProgressView setBackgroundColor:](v5, "setBackgroundColor:", [MEMORY[0x277D75348] clearColor]);
    [(PLRoundProgressView *)v6 _updateSubviews];
  }

  return v6;
}

@end