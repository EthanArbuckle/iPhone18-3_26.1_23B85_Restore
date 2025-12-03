@interface VSCircularProgressView
- (CGRect)_progressFrame;
- (CGSize)sizeThatFits:(CGSize)fits;
- (VSCircularProgressView)initWithFrame:(CGRect)frame;
- (id)_indeterminatePath;
- (id)_progressPath;
- (void)_addIndeterminateLayer;
- (void)_addProgressLayer;
- (void)_applicationWillEnterForeground:(id)foreground;
- (void)_configureProgress:(BOOL)progress;
- (void)_removeIndeterminateLayer;
- (void)_removeProgressLayer;
- (void)_startIndeterminateAnimation;
- (void)dealloc;
- (void)didMoveToWindow;
- (void)layoutSubviews;
- (void)setProgress:(double)progress;
- (void)setProgressBgColor:(id)color;
- (void)setProgressFillColor:(id)color;
- (void)tintColorDidChange;
@end

@implementation VSCircularProgressView

- (VSCircularProgressView)initWithFrame:(CGRect)frame
{
  v15[1] = *MEMORY[0x277D85DE8];
  v14.receiver = self;
  v14.super_class = VSCircularProgressView;
  v3 = [(VSCircularProgressView *)&v14 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    v3->_progressWidth = 2.0;
    v3->_indeterminateWidth = 2.0;
    v3->_centerSquareWidth = 8.0;
    systemBlueColor = [MEMORY[0x277D75348] systemBlueColor];
    progressFillColor = v4->_progressFillColor;
    v4->_progressFillColor = systemBlueColor;

    systemLightGrayColor = [MEMORY[0x277D75348] systemLightGrayColor];
    progressBgColor = v4->_progressBgColor;
    v4->_progressBgColor = systemLightGrayColor;

    [(VSCircularProgressView *)v4 setClipsToBounds:1];
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v4 selector:sel__applicationWillEnterForeground_ name:*MEMORY[0x277D76758] object:0];

    v15[0] = objc_opt_class();
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:1];
    v11 = [(VSCircularProgressView *)v4 registerForTraitChanges:v10 withHandler:&__block_literal_global_21];
  }

  v12 = *MEMORY[0x277D85DE8];
  return v4;
}

void __40__VSCircularProgressView_initWithFrame___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = v4;
  objc_initWeak(&location, v6);
  v7 = [v6 traitCollection];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __40__VSCircularProgressView_initWithFrame___block_invoke_2;
  v8[3] = &unk_279E19D48;
  objc_copyWeak(&v9, &location);
  [v7 performAsCurrentTraitCollection:v8];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __40__VSCircularProgressView_initWithFrame___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained indeterminateLayer];
  v2 = [WeakRetained tintColor];
  [v1 setStrokeColor:{objc_msgSend(v2, "CGColor")}];

  v3 = [WeakRetained centerLayer];
  v4 = [WeakRetained progressFillColor];
  [v3 setBackgroundColor:{objc_msgSend(v4, "CGColor")}];

  v5 = [WeakRetained progressLayer];
  v6 = [WeakRetained progressFillColor];
  [v5 setStrokeColor:{objc_msgSend(v6, "CGColor")}];

  v7 = [WeakRetained progressBackgroundLayer];
  v8 = [WeakRetained progressBgColor];
  [v7 setStrokeColor:{objc_msgSend(v8, "CGColor")}];
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = VSCircularProgressView;
  [(VSCircularProgressView *)&v4 dealloc];
}

- (void)layoutSubviews
{
  v51.receiver = self;
  v51.super_class = VSCircularProgressView;
  [(VSCircularProgressView *)&v51 layoutSubviews];
  progressLayer = [(VSCircularProgressView *)self progressLayer];

  if (progressLayer)
  {
    [(VSCircularProgressView *)self _progressFrame];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;
    progressLayer2 = [(VSCircularProgressView *)self progressLayer];
    [progressLayer2 setFrame:{v5, v7, v9, v11}];

    progressBackgroundLayer = [(VSCircularProgressView *)self progressBackgroundLayer];
    [progressBackgroundLayer setFrame:{v5, v7, v9, v11}];

    progressLayer3 = [(VSCircularProgressView *)self progressLayer];
    _progressPath = [(VSCircularProgressView *)self _progressPath];
    [progressLayer3 setPath:{objc_msgSend(_progressPath, "CGPath")}];

    progressBackgroundLayer2 = [(VSCircularProgressView *)self progressBackgroundLayer];
    _progressPath2 = [(VSCircularProgressView *)self _progressPath];
    [progressBackgroundLayer2 setPath:{objc_msgSend(_progressPath2, "CGPath")}];

    [(VSCircularProgressView *)self centerSquareWidth];
    v19 = v18;
    [(VSCircularProgressView *)self centerSquareWidth];
    v21 = v20;
    [(VSCircularProgressView *)self bounds];
    v23 = v22;
    [(VSCircularProgressView *)self centerSquareWidth];
    v25 = (v23 - v24) * 0.5;
    [(VSCircularProgressView *)self bounds];
    v27 = v26;
    [(VSCircularProgressView *)self centerSquareWidth];
    v29 = (v27 - v28) * 0.5;
    centerLayer = [(VSCircularProgressView *)self centerLayer];
    [centerLayer setFrame:{v25, v29, v19, v21}];
  }

  indeterminateLayer = [(VSCircularProgressView *)self indeterminateLayer];

  if (indeterminateLayer)
  {
    [(VSCircularProgressView *)self indeterminateWidth];
    UIEdgeInsetsMakeWithEdges();
    v33 = v32;
    v35 = v34;
    v37 = v36;
    v39 = v38;
    [(VSCircularProgressView *)self bounds];
    v41 = v35 + v40;
    v43 = v33 + v42;
    v45 = v44 - (v35 + v39);
    v47 = v46 - (v33 + v37);
    indeterminateLayer2 = [(VSCircularProgressView *)self indeterminateLayer];
    [indeterminateLayer2 setFrame:{v41, v43, v45, v47}];

    indeterminateLayer3 = [(VSCircularProgressView *)self indeterminateLayer];
    _indeterminatePath = [(VSCircularProgressView *)self _indeterminatePath];
    [indeterminateLayer3 setPath:{objc_msgSend(_indeterminatePath, "CGPath")}];
  }
}

- (void)didMoveToWindow
{
  v3.receiver = self;
  v3.super_class = VSCircularProgressView;
  [(VSCircularProgressView *)&v3 didMoveToWindow];
  [(VSCircularProgressView *)self _configureProgress:[(VSCircularProgressView *)self isIndeterminate]];
}

- (void)tintColorDidChange
{
  if ([(VSCircularProgressView *)self isIndeterminate])
  {
    tintColor = [(VSCircularProgressView *)self tintColor];
    traitCollection = [(VSCircularProgressView *)self traitCollection];
    v5 = [tintColor resolvedColorWithTraitCollection:traitCollection];
    cGColor = [v5 CGColor];

    indeterminateLayer = [(VSCircularProgressView *)self indeterminateLayer];
    [indeterminateLayer setStrokeColor:cGColor];
  }
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  width = fits.width;
  v4 = 28.0;
  if (width == 0.0)
  {
    v7 = 28.0;
  }

  else
  {
    if (width > 28.0)
    {
      width = 28.0;
    }

    if (fits.height <= 28.0)
    {
      height = fits.height;
    }

    else
    {
      height = 28.0;
    }

    v6 = fits.height == 0.0;
    if (fits.height == 0.0)
    {
      v7 = 28.0;
    }

    else
    {
      v7 = height;
    }

    if (!v6)
    {
      v4 = width;
    }
  }

  result.height = v7;
  result.width = v4;
  return result;
}

- (void)setProgress:(double)progress
{
  if (self->_progress != progress)
  {
    self->_progress = progress;
    progressLayer = [(VSCircularProgressView *)self progressLayer];

    if (!progressLayer)
    {
      [(VSCircularProgressView *)self _addProgressLayer];
    }

    progressCopy = 1.0;
    if (progress <= 0.99)
    {
      if (progress <= 0.0)
      {
        progressCopy = 0.0;
      }

      else
      {
        progressCopy = progress;
      }
    }

    progressLayer2 = [(VSCircularProgressView *)self progressLayer];
    [progressLayer2 setStrokeEnd:progressCopy];

    [(VSCircularProgressView *)self setNeedsDisplay];
  }
}

- (void)setProgressFillColor:(id)color
{
  colorCopy = color;
  if (self->_progressFillColor != colorCopy)
  {
    objc_storeStrong(&self->_progressFillColor, color);
    objc_initWeak(&location, self);
    traitCollection = [(VSCircularProgressView *)self traitCollection];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __47__VSCircularProgressView_setProgressFillColor___block_invoke;
    v7[3] = &unk_279E19618;
    objc_copyWeak(&v9, &location);
    v8 = colorCopy;
    [traitCollection performAsCurrentTraitCollection:v7];

    objc_destroyWeak(&v9);
    objc_destroyWeak(&location);
  }
}

void __47__VSCircularProgressView_setProgressFillColor___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained centerLayer];
  [v2 setBackgroundColor:{objc_msgSend(*(a1 + 32), "CGColor")}];

  v3 = [WeakRetained progressLayer];
  [v3 setStrokeColor:{objc_msgSend(*(a1 + 32), "CGColor")}];
}

- (void)setProgressBgColor:(id)color
{
  colorCopy = color;
  if (self->_progressBgColor != colorCopy)
  {
    v9 = colorCopy;
    objc_storeStrong(&self->_progressBgColor, color);
    progressBackgroundLayer = [(VSCircularProgressView *)self progressBackgroundLayer];
    traitCollection = [(VSCircularProgressView *)self traitCollection];
    v8 = [(UIColor *)v9 resolvedColorWithTraitCollection:traitCollection];
    [progressBackgroundLayer setStrokeColor:{objc_msgSend(v8, "CGColor")}];

    colorCopy = v9;
  }
}

- (void)_configureProgress:(BOOL)progress
{
  if (progress)
  {
    [(VSCircularProgressView *)self _addIndeterminateLayer];
    [(VSCircularProgressView *)self _removeProgressLayer];
    [(VSCircularProgressView *)self _startIndeterminateAnimation];
  }

  else
  {
    [(VSCircularProgressView *)self _removeIndeterminateLayer];
    [(VSCircularProgressView *)self _addProgressLayer];
  }

  [(VSCircularProgressView *)self setNeedsLayout];
}

- (CGRect)_progressFrame
{
  [(VSCircularProgressView *)self progressWidth];
  UIEdgeInsetsMakeWithEdges();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(VSCircularProgressView *)self bounds];
  v12 = v6 + v11;
  v14 = v4 + v13;
  v16 = v15 - (v6 + v10);
  v18 = v17 - (v4 + v8);
  result.size.height = v18;
  result.size.width = v16;
  result.origin.y = v14;
  result.origin.x = v12;
  return result;
}

- (id)_progressPath
{
  [(VSCircularProgressView *)self _progressFrame];
  v3 = MEMORY[0x277D75208];

  return [v3 bezierPathWithArcCenter:1 radius:v2 * 0.5 startAngle:? endAngle:? clockwise:?];
}

- (void)_addProgressLayer
{
  progressLayer = [(VSCircularProgressView *)self progressLayer];

  if (!progressLayer)
  {
    v4 = objc_alloc_init(MEMORY[0x277CD9F90]);
    [v4 setCornerRadius:1.5];
    layer = [(VSCircularProgressView *)self layer];
    [layer addSublayer:v4];

    [(VSCircularProgressView *)self setCenterLayer:v4];
    v6 = objc_alloc_init(MEMORY[0x277CD9F90]);
    [(VSCircularProgressView *)self progressWidth];
    [v6 setLineWidth:?];
    clearColor = [MEMORY[0x277D75348] clearColor];
    [v6 setFillColor:{objc_msgSend(clearColor, "CGColor")}];

    _progressPath = [(VSCircularProgressView *)self _progressPath];
    [v6 setPath:{objc_msgSend(_progressPath, "CGPath")}];

    layer2 = [(VSCircularProgressView *)self layer];
    [layer2 addSublayer:v6];

    [(VSCircularProgressView *)self setProgressBackgroundLayer:v6];
    v10 = objc_alloc_init(MEMORY[0x277CD9F90]);
    clearColor2 = [MEMORY[0x277D75348] clearColor];
    [v10 setFillColor:{objc_msgSend(clearColor2, "CGColor")}];

    [(VSCircularProgressView *)self progressWidth];
    [v10 setLineWidth:?];
    [v10 setLineCap:*MEMORY[0x277CDA780]];
    _progressPath2 = [(VSCircularProgressView *)self _progressPath];
    [v10 setPath:{objc_msgSend(_progressPath2, "CGPath")}];

    [v10 setStrokeEnd:0.0];
    layer3 = [(VSCircularProgressView *)self layer];
    [layer3 addSublayer:v10];

    [(VSCircularProgressView *)self setProgressLayer:v10];
    objc_initWeak(&location, self);
    traitCollection = [(VSCircularProgressView *)self traitCollection];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __43__VSCircularProgressView__addProgressLayer__block_invoke;
    v18[3] = &unk_279E1A720;
    objc_copyWeak(&v22, &location);
    v15 = v4;
    v19 = v15;
    v16 = v6;
    v20 = v16;
    v17 = v10;
    v21 = v17;
    [traitCollection performAsCurrentTraitCollection:v18];

    objc_destroyWeak(&v22);
    objc_destroyWeak(&location);
  }
}

void __43__VSCircularProgressView__addProgressLayer__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v2 = *(a1 + 32);
  v3 = [WeakRetained progressFillColor];
  [v2 setBackgroundColor:{objc_msgSend(v3, "CGColor")}];

  v4 = *(a1 + 40);
  v5 = [WeakRetained progressBgColor];
  [v4 setStrokeColor:{objc_msgSend(v5, "CGColor")}];

  v6 = *(a1 + 48);
  v7 = [WeakRetained progressFillColor];
  [v6 setStrokeColor:{objc_msgSend(v7, "CGColor")}];
}

- (void)_removeProgressLayer
{
  progressLayer = [(VSCircularProgressView *)self progressLayer];
  [progressLayer removeFromSuperlayer];

  [(VSCircularProgressView *)self setProgressLayer:0];
  progressBackgroundLayer = [(VSCircularProgressView *)self progressBackgroundLayer];
  [progressBackgroundLayer removeFromSuperlayer];

  [(VSCircularProgressView *)self setProgressBackgroundLayer:0];
  centerLayer = [(VSCircularProgressView *)self centerLayer];
  [centerLayer removeFromSuperlayer];

  [(VSCircularProgressView *)self setCenterLayer:0];
}

- (id)_indeterminatePath
{
  [(VSCircularProgressView *)self indeterminateWidth];
  UIEdgeInsetsMakeWithEdges();
  v4 = v3;
  v6 = v5;
  [(VSCircularProgressView *)self bounds];
  v8 = MEMORY[0x277D75208];

  return [v8 bezierPathWithArcCenter:1 radius:(v7 - (v4 + v6)) * 0.5 startAngle:? endAngle:? clockwise:?];
}

- (void)_addIndeterminateLayer
{
  indeterminateLayer = [(VSCircularProgressView *)self indeterminateLayer];

  if (!indeterminateLayer)
  {
    v11 = objc_alloc_init(MEMORY[0x277CD9F90]);
    tintColor = [(VSCircularProgressView *)self tintColor];
    traitCollection = [(VSCircularProgressView *)self traitCollection];
    v6 = [tintColor resolvedColorWithTraitCollection:traitCollection];
    cGColor = [v6 CGColor];

    [v11 setStrokeColor:cGColor];
    clearColor = [MEMORY[0x277D75348] clearColor];
    [v11 setFillColor:{objc_msgSend(clearColor, "CGColor")}];

    [(VSCircularProgressView *)self indeterminateWidth];
    [v11 setLineWidth:?];
    [v11 setLineCap:*MEMORY[0x277CDA780]];
    _indeterminatePath = [(VSCircularProgressView *)self _indeterminatePath];
    [v11 setPath:{objc_msgSend(_indeterminatePath, "CGPath")}];

    layer = [(VSCircularProgressView *)self layer];
    [layer addSublayer:v11];

    [(VSCircularProgressView *)self setIndeterminateLayer:v11];
  }
}

- (void)_startIndeterminateAnimation
{
  v5 = [MEMORY[0x277CD9E10] animationWithKeyPath:@"transform.rotation.z"];
  [v5 setToValue:&unk_2880D2788];
  [v5 setDuration:1.0];
  LODWORD(v3) = 2139095040;
  [v5 setRepeatCount:v3];
  indeterminateLayer = [(VSCircularProgressView *)self indeterminateLayer];
  [indeterminateLayer addAnimation:v5 forKey:@"indeterminateAnimation"];
}

- (void)_removeIndeterminateLayer
{
  indeterminateLayer = [(VSCircularProgressView *)self indeterminateLayer];
  [indeterminateLayer removeFromSuperlayer];

  [(VSCircularProgressView *)self setIndeterminateLayer:0];
}

- (void)_applicationWillEnterForeground:(id)foreground
{
  indeterminateLayer = [(VSCircularProgressView *)self indeterminateLayer];
  v5 = [indeterminateLayer animationForKey:@"indeterminateAnimation"];

  if (!v5 && [(VSCircularProgressView *)self isIndeterminate])
  {
    [(VSCircularProgressView *)self _startIndeterminateAnimation];
  }
}

@end