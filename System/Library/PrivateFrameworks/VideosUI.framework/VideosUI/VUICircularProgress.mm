@interface VUICircularProgress
- (CGSize)vui_layoutSubviews:(CGSize)subviews computationOnly:(BOOL)only;
- (CGSize)vui_sizeThatFits:(CGSize)fits;
- (VUICircularProgress)initWithFrame:(CGRect)frame;
- (id)_indeterminatePath;
- (id)_progressPath;
- (void)_addActivityIndicatorView;
- (void)_addIndeterminateLayer;
- (void)_addProgressLayer;
- (void)_applicationWillEnterForeground:(id)foreground;
- (void)_configureProgress:(BOOL)progress;
- (void)_removeActivityIndicatorView;
- (void)_removeIndeterminateLayer;
- (void)_removeProgressLayer;
- (void)_startActivityIndicatorViewAnimation;
- (void)_startIndeterminateAnimation;
- (void)_updateColors;
- (void)dealloc;
- (void)setIndeterminate:(BOOL)indeterminate;
- (void)setProgress:(double)progress;
- (void)setProgressBgColor:(id)color;
- (void)setProgressFillColor:(id)color;
- (void)tintColorDidChange;
- (void)vui_didMoveToWindow;
@end

@implementation VUICircularProgress

- (VUICircularProgress)initWithFrame:(CGRect)frame
{
  v17[1] = *MEMORY[0x1E69E9840];
  v16.receiver = self;
  v16.super_class = VUICircularProgress;
  v3 = [(VUICircularProgress *)&v16 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    v3->_progressWidth = 2.0;
    v3->_indeterminateWidth = 2.0;
    v3->_centerSquareWidth = 8.0;
    v3->_centerSquareCornerRadius = 1.5;
    vui_keyColor = [MEMORY[0x1E69DC888] vui_keyColor];
    progressFillColor = v4->_progressFillColor;
    v4->_progressFillColor = vui_keyColor;

    vui_systemLightGrayColor = [MEMORY[0x1E69DC888] vui_systemLightGrayColor];
    progressBgColor = v4->_progressBgColor;
    v4->_progressBgColor = vui_systemLightGrayColor;

    v4->_progressBgHidden = 0;
    v4->_indeterminateType = 0;
    [(VUICircularProgress *)v4 setVuiClipsToBounds:1];
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v4 selector:sel__applicationWillEnterForeground_ name:*MEMORY[0x1E69DF7E8] object:0];

    v10 = objc_initWeak(&location, v4);
    v17[0] = objc_opt_class();
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:1];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __37__VUICircularProgress_initWithFrame___block_invoke;
    v13[3] = &unk_1E872E760;
    objc_copyWeak(&v14, &location);
    [(VUICircularProgress *)v4 vui_registerForTraitChanges:v11 withHandler:v13];

    objc_destroyWeak(&v14);
    objc_destroyWeak(&location);
  }

  return v4;
}

void __37__VUICircularProgress_initWithFrame___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __37__VUICircularProgress_initWithFrame___block_invoke_2;
  v8[3] = &unk_1E872E4B8;
  objc_copyWeak(&v9, (a1 + 32));
  [WeakRetained vui_performAsCurrentTraitCollection:v8];

  objc_destroyWeak(&v9);
}

void __37__VUICircularProgress_initWithFrame___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateColors];
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = VUICircularProgress;
  [(VUICircularProgress *)&v4 dealloc];
}

- (CGSize)vui_layoutSubviews:(CGSize)subviews computationOnly:(BOOL)only
{
  height = subviews.height;
  width = subviews.width;
  if (only)
  {
    [(VUICircularProgress *)self vui_sizeThatFits:subviews.width, subviews.height];
    width = v7;
    height = v8;
  }

  else
  {
    progressLayer = [(VUICircularProgress *)self progressLayer];

    if (progressLayer)
    {
      [(VUICircularProgress *)self bounds];
      v11 = v10;
      v13 = v12;
      v15 = v14;
      v17 = v16;
      progressLayer2 = [(VUICircularProgress *)self progressLayer];
      [progressLayer2 setFrame:{v11, v13, v15, v17}];

      progressBackgroundLayer = [(VUICircularProgress *)self progressBackgroundLayer];
      v67 = v17;
      v68 = v15;
      [progressBackgroundLayer setFrame:{v11, v13, v15, v17}];

      progressLayer3 = [(VUICircularProgress *)self progressLayer];
      _progressPath = [(VUICircularProgress *)self _progressPath];
      [progressLayer3 setPath:{objc_msgSend(_progressPath, "vuiCGPath")}];

      progressBackgroundLayer2 = [(VUICircularProgress *)self progressBackgroundLayer];
      _progressPath2 = [(VUICircularProgress *)self _progressPath];
      [progressBackgroundLayer2 setPath:{objc_msgSend(_progressPath2, "vuiCGPath")}];

      progressBackgroundLayer3 = [(VUICircularProgress *)self progressBackgroundLayer];
      [progressBackgroundLayer3 setHidden:{-[VUICircularProgress progressBgHidden](self, "progressBgHidden")}];

      centerLayer = [(VUICircularProgress *)self centerLayer];

      if (centerLayer)
      {
        [(VUICircularProgress *)self centerSquareWidth];
        v65 = v26;
        [(VUICircularProgress *)self centerSquareWidth];
        v27 = v13;
        v28 = v11;
        v30 = v29;
        [(VUICircularProgress *)self bounds];
        v32 = v31;
        [(VUICircularProgress *)self centerSquareWidth];
        v34 = (v32 - v33) * 0.5;
        [(VUICircularProgress *)self bounds];
        v35 = height;
        v37 = v36;
        [(VUICircularProgress *)self centerSquareWidth];
        v39 = (v37 - v38) * 0.5;
        centerLayer2 = [(VUICircularProgress *)self centerLayer];
        v41 = v39;
        height = v35;
        v42 = v30;
        v11 = v28;
        v13 = v27;
        [centerLayer2 setFrame:{v34, v41, v65, v42}];
      }

      centerImageView = [(VUICircularProgress *)self centerImageView];

      if (centerImageView)
      {
        centerImage = [(VUICircularProgress *)self centerImage];
        [centerImage size];
        v46 = v45;
        v66 = height;
        v48 = v47;

        v70.origin.x = v11;
        v70.origin.y = v13;
        v70.size.width = v68;
        v70.size.height = v67;
        CGRectGetMidX(v70);
        v64 = width;
        VUIRoundValue();
        v50 = v49;
        v71.origin.x = v11;
        v71.origin.y = v13;
        v71.size.width = v68;
        v71.size.height = v67;
        CGRectGetMidY(v71);
        VUIRoundValue();
        v52 = v51;
        centerImageView2 = [(VUICircularProgress *)self centerImageView];
        v54 = v52;
        v55 = v48;
        width = v64;
        height = v66;
        [centerImageView2 setFrame:{v50, v54, v46, v55}];
      }
    }

    indeterminateLayer = [(VUICircularProgress *)self indeterminateLayer];

    if (indeterminateLayer)
    {
      indeterminateLayer2 = [(VUICircularProgress *)self indeterminateLayer];
      [(VUICircularProgress *)self bounds];
      [indeterminateLayer2 setFrame:?];

      indeterminateLayer3 = [(VUICircularProgress *)self indeterminateLayer];
      _indeterminatePath = [(VUICircularProgress *)self _indeterminatePath];
      [indeterminateLayer3 setPath:{objc_msgSend(_indeterminatePath, "vuiCGPath")}];
    }

    activityIndicatorView = [(VUICircularProgress *)self activityIndicatorView];

    if (activityIndicatorView)
    {
      activityIndicatorView2 = [(VUICircularProgress *)self activityIndicatorView];
      [(VUICircularProgress *)self bounds];
      [activityIndicatorView2 setFrame:?];
    }
  }

  v62 = width;
  v63 = height;
  result.height = v63;
  result.width = v62;
  return result;
}

- (void)vui_didMoveToWindow
{
  v3.receiver = self;
  v3.super_class = VUICircularProgress;
  [(VUICircularProgress *)&v3 vui_didMoveToWindow];
  [(VUICircularProgress *)self _configureProgress:[(VUICircularProgress *)self isIndeterminate]];
}

- (void)tintColorDidChange
{
  if ([(VUICircularProgress *)self isIndeterminate])
  {
    vuiTintColor = [(VUICircularProgress *)self vuiTintColor];
    vuiTraitCollection = [(VUICircularProgress *)self vuiTraitCollection];
    v8 = [vuiTintColor resolvedColorWithTraitCollection:vuiTraitCollection];

    v5 = v8;
    cGColor = [v8 CGColor];
    indeterminateLayer = [(VUICircularProgress *)self indeterminateLayer];
    [indeterminateLayer setStrokeColor:cGColor];
  }
}

- (CGSize)vui_sizeThatFits:(CGSize)fits
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

- (void)setIndeterminate:(BOOL)indeterminate
{
  if (self->_indeterminate != indeterminate)
  {
    indeterminateCopy = indeterminate;
    self->_indeterminate = indeterminate;
    if ([(VUICircularProgress *)self vui_isInAWindow])
    {
      [(VUICircularProgress *)self _configureProgress:indeterminateCopy];
    }

    [(VUICircularProgress *)self vui_setNeedsLayout];
  }
}

- (void)setProgress:(double)progress
{
  if (self->_progress != progress)
  {
    self->_progress = progress;
    progressLayer = [(VUICircularProgress *)self progressLayer];

    if (!progressLayer)
    {
      [(VUICircularProgress *)self _addProgressLayer];
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

    progressLayer2 = [(VUICircularProgress *)self progressLayer];
    [progressLayer2 setStrokeEnd:progressCopy];

    [(VUICircularProgress *)self vui_setNeedsDisplay];
  }
}

- (void)setProgressFillColor:(id)color
{
  colorCopy = color;
  if (self->_progressFillColor != colorCopy)
  {
    objc_storeStrong(&self->_progressFillColor, color);
    objc_initWeak(&location, self);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __44__VUICircularProgress_setProgressFillColor___block_invoke;
    v6[3] = &unk_1E872F038;
    objc_copyWeak(&v8, &location);
    v7 = colorCopy;
    [(VUICircularProgress *)self vui_performAsCurrentTraitCollection:v6];

    objc_destroyWeak(&v8);
    objc_destroyWeak(&location);
  }
}

void __44__VUICircularProgress_setProgressFillColor___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [MEMORY[0x1E6979518] begin];
  [MEMORY[0x1E6979518] setValue:*MEMORY[0x1E695E4D0] forKey:*MEMORY[0x1E697A020]];
  v2 = [WeakRetained centerLayer];
  [v2 setBackgroundColor:{objc_msgSend(*(a1 + 32), "CGColor")}];

  v3 = [WeakRetained progressLayer];
  [v3 setStrokeColor:{objc_msgSend(*(a1 + 32), "CGColor")}];

  v4 = [WeakRetained activityIndicatorView];
  [v4 setColor:*(a1 + 32)];

  v5 = [WeakRetained centerImageView];
  [v5 _setTintColor:*(a1 + 32)];

  [MEMORY[0x1E6979518] commit];
}

- (void)setProgressBgColor:(id)color
{
  colorCopy = color;
  if (self->_progressBgColor != colorCopy)
  {
    objc_storeStrong(&self->_progressBgColor, color);
    objc_initWeak(&location, self);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __42__VUICircularProgress_setProgressBgColor___block_invoke;
    v6[3] = &unk_1E872F038;
    objc_copyWeak(&v8, &location);
    v7 = colorCopy;
    [(VUICircularProgress *)self vui_performAsCurrentTraitCollection:v6];

    objc_destroyWeak(&v8);
    objc_destroyWeak(&location);
  }
}

void __42__VUICircularProgress_setProgressBgColor___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained progressBackgroundLayer];
  [v2 setStrokeColor:{objc_msgSend(*(a1 + 32), "CGColor")}];
}

- (void)_updateColors
{
  indeterminateLayer = [(VUICircularProgress *)self indeterminateLayer];
  vuiTintColor = [(VUICircularProgress *)self vuiTintColor];
  [indeterminateLayer setStrokeColor:{objc_msgSend(vuiTintColor, "CGColor")}];

  centerLayer = [(VUICircularProgress *)self centerLayer];
  progressFillColor = [(VUICircularProgress *)self progressFillColor];
  [centerLayer setBackgroundColor:{objc_msgSend(progressFillColor, "CGColor")}];

  centerImageView = [(VUICircularProgress *)self centerImageView];
  progressFillColor2 = [(VUICircularProgress *)self progressFillColor];
  [centerImageView _setTintColor:progressFillColor2];

  progressLayer = [(VUICircularProgress *)self progressLayer];
  progressFillColor3 = [(VUICircularProgress *)self progressFillColor];
  [progressLayer setStrokeColor:{objc_msgSend(progressFillColor3, "CGColor")}];

  progressBackgroundLayer = [(VUICircularProgress *)self progressBackgroundLayer];
  progressBgColor = [(VUICircularProgress *)self progressBgColor];
  [progressBackgroundLayer setStrokeColor:{objc_msgSend(progressBgColor, "CGColor")}];
}

- (void)_configureProgress:(BOOL)progress
{
  progressCopy = progress;
  indeterminateType = [(VUICircularProgress *)self indeterminateType];
  if (progressCopy)
  {
    if (indeterminateType)
    {
      [(VUICircularProgress *)self _addActivityIndicatorView];
      [(VUICircularProgress *)self _removeProgressLayer];
      [(VUICircularProgress *)self _startActivityIndicatorViewAnimation];
    }

    else
    {
      [(VUICircularProgress *)self _addIndeterminateLayer];
      [(VUICircularProgress *)self _removeProgressLayer];
      [(VUICircularProgress *)self _startIndeterminateAnimation];
    }
  }

  else
  {
    if (indeterminateType)
    {
      [(VUICircularProgress *)self _removeActivityIndicatorView];
    }

    else
    {
      [(VUICircularProgress *)self _removeIndeterminateLayer];
    }

    [(VUICircularProgress *)self _addProgressLayer];
  }

  [(VUICircularProgress *)self vui_setNeedsLayout];
}

- (id)_progressPath
{
  [(VUICircularProgress *)self bounds];
  VUIFloorValue();
  v4 = v3;
  VUIFloorValue();
  v6 = v5;
  [(VUICircularProgress *)self progressWidth];
  VUIFloorValue();

  return [VUIBezierPath vui_bezierPathWithArcCenter:1 radius:v4 startAngle:v6 endAngle:v7 clockwise:-1.57079633, 4.71238898];
}

- (void)_addProgressLayer
{
  progressLayer = [(VUICircularProgress *)self progressLayer];

  if (!progressLayer)
  {
    centerImage = [(VUICircularProgress *)self centerImage];

    if (centerImage)
    {
      v5 = objc_opt_new();
      centerImage2 = [(VUICircularProgress *)self centerImage];
      [v5 setImage:centerImage2];

      [(VUICircularProgress *)self setCenterImageView:v5];
      [(VUICircularProgress *)self addSubview:v5];
    }

    else
    {
      v5 = objc_opt_new();
      [(VUICircularProgress *)self centerSquareCornerRadius];
      [v5 setCornerRadius:?];
      vuiLayer = [(VUICircularProgress *)self vuiLayer];
      [vuiLayer addSublayer:v5];

      [(VUICircularProgress *)self setCenterLayer:v5];
    }

    v8 = objc_opt_new();
    [(VUICircularProgress *)self progressWidth];
    [v8 setLineWidth:?];
    clearColor = [MEMORY[0x1E69DC888] clearColor];
    [v8 setFillColor:{objc_msgSend(clearColor, "CGColor")}];

    _progressPath = [(VUICircularProgress *)self _progressPath];
    [v8 setPath:{objc_msgSend(_progressPath, "vuiCGPath")}];

    vuiLayer2 = [(VUICircularProgress *)self vuiLayer];
    [vuiLayer2 addSublayer:v8];

    [(VUICircularProgress *)self setProgressBackgroundLayer:v8];
    v12 = objc_opt_new();
    clearColor2 = [MEMORY[0x1E69DC888] clearColor];
    [v12 setFillColor:{objc_msgSend(clearColor2, "CGColor")}];

    [(VUICircularProgress *)self progressWidth];
    [v12 setLineWidth:?];
    [v12 setLineCap:*MEMORY[0x1E6979E78]];
    _progressPath2 = [(VUICircularProgress *)self _progressPath];
    [v12 setPath:{objc_msgSend(_progressPath2, "vuiCGPath")}];

    [v12 setStrokeEnd:0.0];
    vuiLayer3 = [(VUICircularProgress *)self vuiLayer];
    [vuiLayer3 addSublayer:v12];

    [(VUICircularProgress *)self setProgressLayer:v12];
    objc_initWeak(&location, self);
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __40__VUICircularProgress__addProgressLayer__block_invoke;
    v18[3] = &unk_1E872D9B8;
    objc_copyWeak(&v21, &location);
    v16 = v8;
    v19 = v16;
    v17 = v12;
    v20 = v17;
    [(VUICircularProgress *)self vui_performAsCurrentTraitCollection:v18];

    objc_destroyWeak(&v21);
    objc_destroyWeak(&location);
  }
}

void __40__VUICircularProgress__addProgressLayer__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v2 = [WeakRetained centerLayer];
  v3 = [WeakRetained progressFillColor];
  [v2 setBackgroundColor:{objc_msgSend(v3, "CGColor")}];

  v4 = [WeakRetained centerImageView];
  v5 = [WeakRetained progressFillColor];
  [v4 _setTintColor:v5];

  v6 = *(a1 + 32);
  v7 = [WeakRetained progressBgColor];
  [v6 setStrokeColor:{objc_msgSend(v7, "CGColor")}];

  v8 = *(a1 + 40);
  v9 = [WeakRetained progressFillColor];
  [v8 setStrokeColor:{objc_msgSend(v9, "CGColor")}];
}

- (void)_removeProgressLayer
{
  progressLayer = [(VUICircularProgress *)self progressLayer];
  [progressLayer removeFromSuperlayer];

  [(VUICircularProgress *)self setProgressLayer:0];
  progressBackgroundLayer = [(VUICircularProgress *)self progressBackgroundLayer];
  [progressBackgroundLayer removeFromSuperlayer];

  [(VUICircularProgress *)self setProgressBackgroundLayer:0];
  centerLayer = [(VUICircularProgress *)self centerLayer];
  [centerLayer removeFromSuperlayer];

  [(VUICircularProgress *)self setCenterLayer:0];
  centerImageView = [(VUICircularProgress *)self centerImageView];
  [centerImageView removeFromSuperview];

  [(VUICircularProgress *)self setCenterImageView:0];
}

- (id)_indeterminatePath
{
  [(VUICircularProgress *)self bounds];
  VUIFloorValue();
  v4 = v3;
  VUIFloorValue();
  v6 = v5;
  [(VUICircularProgress *)self indeterminateWidth];
  VUIFloorValue();

  return [VUIBezierPath vui_bezierPathWithArcCenter:1 radius:v4 startAngle:v6 endAngle:v7 clockwise:-1.57079633, 3.53429174];
}

- (void)_addActivityIndicatorView
{
  activityIndicatorView = [(VUICircularProgress *)self activityIndicatorView];

  if (!activityIndicatorView)
  {
    v4 = [VUIActivityIndicatorView vui_activityIndicatorViewWithActivityIndicatorStyle:0];
    clearColor = [MEMORY[0x1E69DC888] clearColor];
    [v4 setVuiBackgroundColor:clearColor];

    objc_initWeak(&location, self);
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __48__VUICircularProgress__addActivityIndicatorView__block_invoke;
    v7[3] = &unk_1E872F038;
    objc_copyWeak(&v9, &location);
    v6 = v4;
    v8 = v6;
    [(VUICircularProgress *)self vui_performAsCurrentTraitCollection:v7];
    [(VUICircularProgress *)self vui_addSubview:v6 oldView:0];
    [(VUICircularProgress *)self setActivityIndicatorView:v6];

    objc_destroyWeak(&v9);
    objc_destroyWeak(&location);
  }
}

void __48__VUICircularProgress__addActivityIndicatorView__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained vuiTintColor];
  [*(a1 + 32) setColor:v2];
}

- (void)_startActivityIndicatorViewAnimation
{
  activityIndicatorView = [(VUICircularProgress *)self activityIndicatorView];
  [activityIndicatorView vui_startAnimating];
}

- (void)_removeActivityIndicatorView
{
  activityIndicatorView = [(VUICircularProgress *)self activityIndicatorView];
  [activityIndicatorView vui_removeFromSuperView];

  [(VUICircularProgress *)self setActivityIndicatorView:0];
}

- (void)_addIndeterminateLayer
{
  indeterminateLayer = [(VUICircularProgress *)self indeterminateLayer];

  if (!indeterminateLayer)
  {
    v4 = objc_opt_new();
    objc_initWeak(&location, self);
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __45__VUICircularProgress__addIndeterminateLayer__block_invoke;
    v8[3] = &unk_1E872F038;
    objc_copyWeak(&v10, &location);
    v5 = v4;
    v9 = v5;
    [(VUICircularProgress *)self vui_performAsCurrentTraitCollection:v8];
    clearColor = [MEMORY[0x1E69DC888] clearColor];
    [v5 setFillColor:{objc_msgSend(clearColor, "CGColor")}];

    [(VUICircularProgress *)self indeterminateWidth];
    [v5 setLineWidth:?];
    [v5 setLineCap:*MEMORY[0x1E6979E78]];
    vuiLayer = [(VUICircularProgress *)self vuiLayer];
    [vuiLayer addSublayer:v5];

    [(VUICircularProgress *)self setIndeterminateLayer:v5];
    objc_destroyWeak(&v10);
    objc_destroyWeak(&location);
  }
}

void __45__VUICircularProgress__addIndeterminateLayer__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained vuiTintColor];
  v3 = [v2 CGColor];

  [*(a1 + 32) setStrokeColor:v3];
}

- (void)_startIndeterminateAnimation
{
  v5 = [MEMORY[0x1E6979318] animationWithKeyPath:@"transform.rotation.z"];
  [v5 setToValue:&unk_1F5E5EDC0];
  [v5 setDuration:1.0];
  LODWORD(v3) = 2139095040;
  [v5 setRepeatCount:v3];
  indeterminateLayer = [(VUICircularProgress *)self indeterminateLayer];
  [indeterminateLayer addAnimation:v5 forKey:@"indeterminateAnimation"];
}

- (void)_removeIndeterminateLayer
{
  indeterminateLayer = [(VUICircularProgress *)self indeterminateLayer];
  [indeterminateLayer removeFromSuperlayer];

  [(VUICircularProgress *)self setIndeterminateLayer:0];
}

- (void)_applicationWillEnterForeground:(id)foreground
{
  indeterminateLayer = [(VUICircularProgress *)self indeterminateLayer];
  v5 = [indeterminateLayer animationForKey:@"indeterminateAnimation"];

  if (!v5 && [(VUICircularProgress *)self isIndeterminate])
  {
    [(VUICircularProgress *)self _startIndeterminateAnimation];
  }
}

@end