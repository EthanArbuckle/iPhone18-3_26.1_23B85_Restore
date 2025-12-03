@interface PXRoundProgressView
+ (CGSize)sizeForSizeClass:(int64_t)class;
+ (int64_t)_sizeClassForSize:(CGSize)size;
- (PXRoundProgressView)initWithFrame:(CGRect)frame style:(int64_t)style;
- (void)_recalculateIncreaseProgress:(double)progress withTimeDiff:(double)diff;
- (void)_resetProgress;
- (void)_setContentsScale:(double)scale;
- (void)_setPieRadius:(double)radius;
- (void)_setProgressArcLayer:(id)layer;
- (void)_updateSublayersContentsScale;
- (void)_updateSubviews;
- (void)_updateUIProgress;
- (void)dealloc;
- (void)didMoveToWindow;
- (void)increaseUIProgress:(id)progress;
- (void)layoutSubviews;
- (void)removeFromSuperview;
- (void)setProgress:(float)progress;
- (void)setStyle:(int64_t)style;
- (void)startProgressTimer;
- (void)stopProgressTimer;
@end

@implementation PXRoundProgressView

- (void)_resetProgress
{
  self->_uiProgress = 0.0;
  self->_increaseRate = 0.00166666667;
  self->_realProgress = 0.0;
  date = [MEMORY[0x1E695DF00] date];
  prevUpdateTime = self->_prevUpdateTime;
  self->_prevUpdateTime = date;

  [(PXRoundProgressView *)self stopProgressTimer];

  [(PXRoundProgressView *)self _updateUIProgress];
}

- (void)setProgress:(float)progress
{
  self->_progress = progress;
  if (!self->_progressTimer && self->_realProgress <= 1.0)
  {
    [(PXRoundProgressView *)self startProgressTimer];
  }

  if (progress > 0.0)
  {
    progressCopy = progress;
    realProgress = self->_realProgress;
    if (realProgress < 1.0 && realProgress < progressCopy)
    {
      if (progress >= 1.0)
      {
        v13 = 1.0 - self->_uiProgress;
        v14 = 0.1;
      }

      else
      {
        date = [MEMORY[0x1E695DF00] date];
        [date timeIntervalSinceDate:self->_prevUpdateTime];
        v10 = v9;

        date2 = [MEMORY[0x1E695DF00] date];
        prevUpdateTime = self->_prevUpdateTime;
        self->_prevUpdateTime = date2;

        v13 = 1.0 - self->_uiProgress;
        v14 = v10 * (v13 / (progressCopy - self->_realProgress));
      }

      [(PXRoundProgressView *)self _recalculateIncreaseProgress:v13 withTimeDiff:v14];
      self->_realProgress = progressCopy;
    }
  }
}

- (void)_recalculateIncreaseProgress:(double)progress withTimeDiff:(double)diff
{
  v4 = progress / diff / 60.0;
  if (v4 < 0.000166666667)
  {
    v4 = 0.000166666667;
  }

  self->_increaseRate = v4;
}

- (void)_updateUIProgress
{
  [PXRoundProgressView toRadian:self->_uiProgress];
  v4 = v3 + 4.71238898;
  _sliceLayer = [(PXRoundProgressView *)self _sliceLayer];
  if (_sliceLayer)
  {
    pieRadius = self->_pieRadius;
    _circleLayer = [(PXRoundProgressView *)self _circleLayer];
    if ([(PXRoundProgressView *)self style]== 5 && _circleLayer)
    {
      v7 = self->_pieRadius;
      [_circleLayer lineWidth];
      pieRadius = v7 - v8;
    }

    x = self->_pieCenter.x;
    y = self->_pieCenter.y;
    Mutable = CGPathCreateMutable();
    CGPathMoveToPoint(Mutable, 0, x, y);
    CGPathAddArc(Mutable, 0, x, y, pieRadius, 4.71238898, v4, 0);
    CGPathCloseSubpath(Mutable);
    [_sliceLayer setPath:Mutable];
    CFRelease(Mutable);
  }

  _foregroundCircleLayer = [(PXRoundProgressView *)self _foregroundCircleLayer];
  if (_foregroundCircleLayer)
  {
    v13 = self->_pieRadius;
    v14 = self->_pieCenter.x;
    v15 = self->_pieCenter.y;
    v16 = CGPathCreateMutable();
    CGPathCloseSubpath(v16);
    CGPathAddArc(v16, 0, v14, v15, v13 + -1.0, 4.71238898, v4, 0);
    [_foregroundCircleLayer setPath:v16];
    [_foregroundCircleLayer setLineCap:*MEMORY[0x1E6979E78]];
    CFRelease(v16);
  }

  _progressArcLayer = [(PXRoundProgressView *)self _progressArcLayer];
  v18 = _progressArcLayer;
  if (_progressArcLayer)
  {
    [_progressArcLayer setStartAngle:4.71238898];
    [v18 setEndAngle:v4];
  }
}

- (void)increaseUIProgress:(id)progress
{
  progressCopy = progress;
  realProgress = self->_realProgress;
  uiProgress = self->_uiProgress;
  v7 = realProgress == 0.0 || uiProgress < realProgress;
  v12 = progressCopy;
  if (!v7)
  {
LABEL_17:
    if (uiProgress < 1.0)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  increaseRate = self->_increaseRate;
  v9 = 1.0;
  if (realProgress >= 1.0)
  {
    v11 = uiProgress + increaseRate;
    if (v11 <= 1.0)
    {
LABEL_16:
      self->_uiProgress = v11;
      [(PXRoundProgressView *)self _updateUIProgress];
      uiProgress = self->_uiProgress;
      progressCopy = v12;
      goto LABEL_17;
    }

LABEL_15:
    v11 = v9;
    goto LABEL_16;
  }

  if (uiProgress + increaseRate * 1.1 < 1.0 && (realProgress != 0.0 || uiProgress < 0.25))
  {
    v9 = uiProgress + increaseRate;
    goto LABEL_15;
  }

LABEL_18:
  [(PXRoundProgressView *)self stopProgressTimer];
  progressCopy = v12;
LABEL_19:
}

- (void)startProgressTimer
{
  if (self->_uiProgress < 1.0 && !self->_progressTimer)
  {
    v7[0] = 0;
    v7[1] = v7;
    v7[2] = 0x3032000000;
    v7[3] = __Block_byref_object_copy__16255;
    v7[4] = __Block_byref_object_dispose__16256;
    selfCopy = self;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __41__PXRoundProgressView_startProgressTimer__block_invoke;
    v6[3] = &unk_1E7BB8368;
    v6[4] = v7;
    v3 = [MEMORY[0x1E695DFF0] timerWithTimeInterval:1 repeats:v6 block:0.0166666667];
    progressTimer = self->_progressTimer;
    self->_progressTimer = v3;

    currentRunLoop = [MEMORY[0x1E695DFD0] currentRunLoop];
    [currentRunLoop addTimer:self->_progressTimer forMode:*MEMORY[0x1E695DA28]];

    _Block_object_dispose(v7, 8);
  }
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

- (void)_setPieRadius:(double)radius
{
  self->_pieRadius = radius;
  [(PXRoundProgressView *)self bounds];
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
  layer = [(PXRoundProgressView *)self layer];
  [layer setCornerRadius:self->_pieRadius];
}

- (void)_updateSubviews
{
  [(PXRoundProgressView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  _contentView = [(PXRoundProgressView *)self _contentView];
  if (!_contentView)
  {
    v12 = objc_alloc(MEMORY[0x1E69DD250]);
    _contentView = [v12 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
    [_contentView setAutoresizingMask:18];
    [(PXRoundProgressView *)self addSubview:_contentView];
    [(PXRoundProgressView *)self _setContentView:_contentView];
  }

  [_contentView setFrame:{v4, v6, v8, v10}];
  layer = [_contentView layer];
  v14 = 0;
  v69 = 0;
  style = self->_style;
  v16 = 1.0;
  v17 = 5.5;
  if (style <= 2)
  {
    if (style)
    {
      if (style != 1)
      {
        if (style == 2)
        {
          blackColor = [MEMORY[0x1E69DC888] blackColor];
          v69 = 0;
          v14 = 0;
          v19 = 0;
          v20 = 0;
          v21 = 1;
          v16 = 0.5;
          goto LABEL_11;
        }

        goto LABEL_19;
      }
    }

    else
    {
      v25 = PXAssertGetLog();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_1B3F73000, v25, OS_LOG_TYPE_FAULT, "invalid PXRoundProgressViewStyle", buf, 2u);
      }
    }

    blackColor = [MEMORY[0x1E69DC888] whiteColor];
    v69 = 0;
    v14 = 0;
    v19 = 0;
    v21 = 1;
LABEL_22:
    v22 = 1;
    goto LABEL_23;
  }

  if (style <= 4)
  {
    if (style != 3)
    {
      blackColor = [MEMORY[0x1E69DC888] grayColor];
      v69 = 0;
      v14 = 0;
      v19 = 0;
      v20 = 0;
      v21 = 1;
      v17 = 10.5;
LABEL_11:
      v22 = 1;
      goto LABEL_24;
    }

    v69 = 0;
    blackColor = 0;
    v19 = 0;
    v21 = 0;
    v22 = 0;
    v14 = 1;
    goto LABEL_23;
  }

  if (style == 5)
  {
    blackColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
    v69 = 0;
    v14 = 0;
    v19 = 0;
    v21 = 1;
    v16 = 0.8;
    goto LABEL_22;
  }

  if (style != 6)
  {
LABEL_19:
    blackColor = 0;
    v19 = 0;
    v21 = 0;
    v22 = 0;
    v20 = 0;
    goto LABEL_24;
  }

  whiteColor = [MEMORY[0x1E69DC888] whiteColor];
  blackColor = [whiteColor colorWithAlphaComponent:0.2];

  whiteColor2 = [MEMORY[0x1E69DC888] whiteColor];
  v69 = [whiteColor2 colorWithAlphaComponent:0.9];

  v14 = 0;
  v22 = 0;
  v19 = 1;
  v17 = 6.5999999;
  v21 = 1;
LABEL_23:
  v20 = 1;
LABEL_24:
  [_contentView setAlpha:v16];
  v26 = v8 * 0.5;
  if (v8 * 0.5 >= v10 * 0.5)
  {
    v26 = v10 * 0.5;
  }

  v27 = ceil(v26 / v17);
  v28 = v26 - v27 * 0.5;
  [(PXRoundProgressView *)self _setPieRadius:v28];
  if (v22)
  {
    _sliceLayer = [(PXRoundProgressView *)self _sliceLayer];
    if (!_sliceLayer)
    {
      _sliceLayer = [MEMORY[0x1E69794A0] layer];
      [layer addSublayer:_sliceLayer];
      [(PXRoundProgressView *)self _setSliceLayer:_sliceLayer];
    }

    [_sliceLayer setZPosition:0.0];
    [_sliceLayer setStrokeColor:0];
    [_sliceLayer setFillColor:{objc_msgSend(blackColor, "CGColor")}];

    if (!v21)
    {
LABEL_28:
      if (!v19)
      {
        goto LABEL_29;
      }

      goto LABEL_38;
    }
  }

  else if (!v21)
  {
    goto LABEL_28;
  }

  _circleLayer = [(PXRoundProgressView *)self _circleLayer];
  if (!_circleLayer)
  {
    _circleLayer = [MEMORY[0x1E69794A0] layer];
    [layer addSublayer:_circleLayer];
    [(PXRoundProgressView *)self _setCircleLayer:_circleLayer];
  }

  [_circleLayer setZPosition:0.0];
  [_circleLayer setStrokeColor:{objc_msgSend(blackColor, "CGColor")}];
  [_circleLayer setFillColor:0];
  [_circleLayer setLineWidth:v27];
  pieRadius = self->_pieRadius;
  x = self->_pieCenter.x;
  y = self->_pieCenter.y;
  Mutable = CGPathCreateMutable();
  CGPathAddArc(Mutable, 0, x, y, pieRadius + -1.0, 0.0, 6.28318531, 0);
  CGPathCloseSubpath(Mutable);
  [_circleLayer setPath:Mutable];
  CGPathRelease(Mutable);

  if (!v19)
  {
LABEL_29:
    if (!v14)
    {
      goto LABEL_30;
    }

LABEL_41:
    v66 = v10;
    v67 = v8;
    [layer bounds];
    v38 = v71.origin.x;
    v39 = v71.origin.y;
    width = v71.size.width;
    height = v71.size.height;
    MidX = CGRectGetMidX(v71);
    v72.origin.x = v38;
    v72.origin.y = v39;
    v72.size.width = width;
    v72.size.height = height;
    MidY = CGRectGetMidY(v72);
    _progressArcLayer = [(PXRoundProgressView *)self _progressArcLayer];
    if (!_progressArcLayer)
    {
      _progressArcLayer = objc_alloc_init(PXProgressArcLayer);
      [layer addSublayer:_progressArcLayer];
      [(PXRoundProgressView *)self _setProgressArcLayer:_progressArcLayer];
    }

    [(PXProgressArcLayer *)_progressArcLayer setPosition:MidX, MidY];
    v45 = *MEMORY[0x1E695EFF8];
    v46 = *(MEMORY[0x1E695EFF8] + 8);
    [(PXProgressArcLayer *)_progressArcLayer setBounds:*MEMORY[0x1E695EFF8], v46, width, height];
    [(PXProgressArcLayer *)_progressArcLayer setRadius:v28];
    [(PXProgressArcLayer *)_progressArcLayer setLineWidth:v27];
    _irisGlyphLayer = [(PXRoundProgressView *)self _irisGlyphLayer];
    if (!_irisGlyphLayer)
    {
      _irisGlyphLayer = [MEMORY[0x1E6979398] layer];
      v48 = *MEMORY[0x1E695F060];
      v49 = *(MEMORY[0x1E695F060] + 8);
      v50 = *MEMORY[0x1E69DDCE0];
      v51 = *(MEMORY[0x1E69DDCE0] + 8);
      v64 = *(MEMORY[0x1E69DDCE0] + 24);
      v65 = *(MEMORY[0x1E69DDCE0] + 16);
      v52 = [objc_opt_class() _sizeClassForSize:{v67, v66}];
      v53 = 21.0;
      if (v52 == 2)
      {
        v54 = 21.0;
      }

      else
      {
        v54 = v48;
      }

      if (v52 != 2)
      {
        v53 = v49;
      }

      if (v52 == 1)
      {
        v55 = 13.0;
      }

      else
      {
        v55 = v54;
      }

      if (v52 == 1)
      {
        v56 = 13.0;
      }

      else
      {
        v56 = v53;
      }

      v57 = [MEMORY[0x1E69DCAB8] systemImageNamed:{@"livephoto", 13.0, v53, v54}];
      [v57 imageWithRenderingMode:2];
      v58 = v68 = blackColor;

      whiteColor3 = [MEMORY[0x1E69DC888] whiteColor];
      traitCollection = [(PXRoundProgressView *)self traitCollection];
      [traitCollection displayScale];
      v62 = [v58 px_tintedImageWithColor:whiteColor3 size:v55 scale:v56 insets:{v61, v50, v51, v65, v64}];

      blackColor = v68;
      cGImage = [v62 CGImage];
      [_irisGlyphLayer setBounds:{v45, v46, v55, v56}];
      [_irisGlyphLayer setContents:cGImage];
      [(PXRoundProgressView *)self _setIrisGlyphLayer:_irisGlyphLayer];
      [layer addSublayer:_irisGlyphLayer];
    }

    [_irisGlyphLayer setPosition:{MidX, MidY}];

    if (v20)
    {
      goto LABEL_31;
    }

LABEL_57:
    [layer setShadowOpacity:0.0];
    goto LABEL_58;
  }

LABEL_38:
  _foregroundCircleLayer = [(PXRoundProgressView *)self _foregroundCircleLayer];
  if (!_foregroundCircleLayer)
  {
    _foregroundCircleLayer = [MEMORY[0x1E69794A0] layer];
    [layer addSublayer:_foregroundCircleLayer];
    [(PXRoundProgressView *)self _setForegroundCircleLayer:_foregroundCircleLayer];
  }

  [_foregroundCircleLayer setZPosition:0.0];
  [_foregroundCircleLayer setStrokeColor:{objc_msgSend(v69, "CGColor")}];
  [_foregroundCircleLayer setFillColor:0];
  [_foregroundCircleLayer setLineWidth:v27];

  if (v14)
  {
    goto LABEL_41;
  }

LABEL_30:
  if (!v20)
  {
    goto LABEL_57;
  }

LABEL_31:
  v29 = [MEMORY[0x1E69DC888] colorWithWhite:0.0 alpha:0.75];
  [layer setShadowColor:{objc_msgSend(v29, "CGColor")}];

  [layer setShadowOffset:{*MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)}];
  LODWORD(v30) = 1.0;
  [layer setShadowOpacity:v30];
  [layer setShadowRadius:0.5];
LABEL_58:
  [(PXRoundProgressView *)self _updateUIProgress];
}

- (void)_updateSublayersContentsScale
{
  [(PXRoundProgressView *)self _contentsScale];
  v4 = v3;
  _progressArcLayer = [(PXRoundProgressView *)self _progressArcLayer];
  [_progressArcLayer setContentsScale:v4];
}

- (void)_setProgressArcLayer:(id)layer
{
  layerCopy = layer;
  if (self->__progressArcLayer != layerCopy)
  {
    v6 = layerCopy;
    objc_storeStrong(&self->__progressArcLayer, layer);
    [(PXRoundProgressView *)self _updateSublayersContentsScale];
    layerCopy = v6;
  }
}

- (void)_setContentsScale:(double)scale
{
  if (self->__contentsScale != scale)
  {
    self->__contentsScale = scale;
    [(PXRoundProgressView *)self _updateSublayersContentsScale];
  }
}

- (void)didMoveToWindow
{
  v8.receiver = self;
  v8.super_class = PXRoundProgressView;
  [(PXRoundProgressView *)&v8 didMoveToWindow];
  window = [(PXRoundProgressView *)self window];
  screen = [window screen];
  [screen scale];
  v6 = v5;

  [(PXRoundProgressView *)self _setContentsScale:v6];
  window2 = [(PXRoundProgressView *)self window];

  if (!window2)
  {
    [(PXRoundProgressView *)self stopProgressTimer];
  }
}

- (void)removeFromSuperview
{
  [(NSTimer *)self->_progressTimer invalidate];
  progressTimer = self->_progressTimer;
  self->_progressTimer = 0;

  v4.receiver = self;
  v4.super_class = PXRoundProgressView;
  [(PXRoundProgressView *)&v4 removeFromSuperview];
}

- (void)dealloc
{
  [(NSTimer *)self->_progressTimer invalidate];
  v3.receiver = self;
  v3.super_class = PXRoundProgressView;
  [(PXRoundProgressView *)&v3 dealloc];
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = PXRoundProgressView;
  [(PXRoundProgressView *)&v3 layoutSubviews];
  [(PXRoundProgressView *)self _updateSubviews];
}

- (void)setStyle:(int64_t)style
{
  if (self->_style != style)
  {
    self->_style = style;
    _contentView = [(PXRoundProgressView *)self _contentView];
    layer = [_contentView layer];

    sublayers = [layer sublayers];
    [sublayers makeObjectsPerformSelector:sel_removeFromSuperlayer];

    [(PXRoundProgressView *)self _setSliceLayer:0];
    [(PXRoundProgressView *)self _setCircleLayer:0];
    [(PXRoundProgressView *)self _setForegroundCircleLayer:0];
    [(PXRoundProgressView *)self _setProgressArcLayer:0];
    [(PXRoundProgressView *)self _setIrisGlyphLayer:0];
    [(PXRoundProgressView *)self setNeedsLayout];
  }
}

- (PXRoundProgressView)initWithFrame:(CGRect)frame style:(int64_t)style
{
  v9.receiver = self;
  v9.super_class = PXRoundProgressView;
  v5 = [(PXRoundProgressView *)&v9 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v6 = v5;
  if (v5)
  {
    v5->_style = style;
    clearColor = [MEMORY[0x1E69DC888] clearColor];
    [(PXRoundProgressView *)v6 setBackgroundColor:clearColor];

    [(PXRoundProgressView *)v6 _updateSubviews];
  }

  return v6;
}

+ (int64_t)_sizeClassForSize:(CGSize)size
{
  width = size.width;
  [self sizeForSizeClass:{2, size.width, size.height}];
  if (width < v4)
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

+ (CGSize)sizeForSizeClass:(int64_t)class
{
  v9 = *MEMORY[0x1E69E9840];
  if (class == 1)
  {
    v4 = 22.0;
    v5 = 22.0;
  }

  else if (class == 2)
  {
    v4 = 33.0;
    v5 = 33.0;
  }

  else
  {
    v6 = PXAssertGetLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      v7 = 134217984;
      classCopy = class;
      _os_log_fault_impl(&dword_1B3F73000, v6, OS_LOG_TYPE_FAULT, "invalid PXRoundProgressViewSizeClass %ti", &v7, 0xCu);
    }

    v4 = *MEMORY[0x1E695F060];
    v5 = *(MEMORY[0x1E695F060] + 8);
  }

  result.height = v5;
  result.width = v4;
  return result;
}

@end