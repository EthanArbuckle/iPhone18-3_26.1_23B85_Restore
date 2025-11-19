@interface VUICircularProgress
- (CGSize)vui_layoutSubviews:(CGSize)a3 computationOnly:(BOOL)a4;
- (CGSize)vui_sizeThatFits:(CGSize)a3;
- (VUICircularProgress)initWithFrame:(CGRect)a3;
- (id)_indeterminatePath;
- (id)_progressPath;
- (void)_addActivityIndicatorView;
- (void)_addIndeterminateLayer;
- (void)_addProgressLayer;
- (void)_applicationWillEnterForeground:(id)a3;
- (void)_configureProgress:(BOOL)a3;
- (void)_removeActivityIndicatorView;
- (void)_removeIndeterminateLayer;
- (void)_removeProgressLayer;
- (void)_startActivityIndicatorViewAnimation;
- (void)_startIndeterminateAnimation;
- (void)_updateColors;
- (void)dealloc;
- (void)setIndeterminate:(BOOL)a3;
- (void)setProgress:(double)a3;
- (void)setProgressBgColor:(id)a3;
- (void)setProgressFillColor:(id)a3;
- (void)tintColorDidChange;
- (void)vui_didMoveToWindow;
@end

@implementation VUICircularProgress

- (VUICircularProgress)initWithFrame:(CGRect)a3
{
  v17[1] = *MEMORY[0x1E69E9840];
  v16.receiver = self;
  v16.super_class = VUICircularProgress;
  v3 = [(VUICircularProgress *)&v16 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    v3->_progressWidth = 2.0;
    v3->_indeterminateWidth = 2.0;
    v3->_centerSquareWidth = 8.0;
    v3->_centerSquareCornerRadius = 1.5;
    v5 = [MEMORY[0x1E69DC888] vui_keyColor];
    progressFillColor = v4->_progressFillColor;
    v4->_progressFillColor = v5;

    v7 = [MEMORY[0x1E69DC888] vui_systemLightGrayColor];
    progressBgColor = v4->_progressBgColor;
    v4->_progressBgColor = v7;

    v4->_progressBgHidden = 0;
    v4->_indeterminateType = 0;
    [(VUICircularProgress *)v4 setVuiClipsToBounds:1];
    v9 = [MEMORY[0x1E696AD88] defaultCenter];
    [v9 addObserver:v4 selector:sel__applicationWillEnterForeground_ name:*MEMORY[0x1E69DF7E8] object:0];

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
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = VUICircularProgress;
  [(VUICircularProgress *)&v4 dealloc];
}

- (CGSize)vui_layoutSubviews:(CGSize)a3 computationOnly:(BOOL)a4
{
  height = a3.height;
  width = a3.width;
  if (a4)
  {
    [(VUICircularProgress *)self vui_sizeThatFits:a3.width, a3.height];
    width = v7;
    height = v8;
  }

  else
  {
    v9 = [(VUICircularProgress *)self progressLayer];

    if (v9)
    {
      [(VUICircularProgress *)self bounds];
      v11 = v10;
      v13 = v12;
      v15 = v14;
      v17 = v16;
      v18 = [(VUICircularProgress *)self progressLayer];
      [v18 setFrame:{v11, v13, v15, v17}];

      v19 = [(VUICircularProgress *)self progressBackgroundLayer];
      v67 = v17;
      v68 = v15;
      [v19 setFrame:{v11, v13, v15, v17}];

      v20 = [(VUICircularProgress *)self progressLayer];
      v21 = [(VUICircularProgress *)self _progressPath];
      [v20 setPath:{objc_msgSend(v21, "vuiCGPath")}];

      v22 = [(VUICircularProgress *)self progressBackgroundLayer];
      v23 = [(VUICircularProgress *)self _progressPath];
      [v22 setPath:{objc_msgSend(v23, "vuiCGPath")}];

      v24 = [(VUICircularProgress *)self progressBackgroundLayer];
      [v24 setHidden:{-[VUICircularProgress progressBgHidden](self, "progressBgHidden")}];

      v25 = [(VUICircularProgress *)self centerLayer];

      if (v25)
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
        v40 = [(VUICircularProgress *)self centerLayer];
        v41 = v39;
        height = v35;
        v42 = v30;
        v11 = v28;
        v13 = v27;
        [v40 setFrame:{v34, v41, v65, v42}];
      }

      v43 = [(VUICircularProgress *)self centerImageView];

      if (v43)
      {
        v44 = [(VUICircularProgress *)self centerImage];
        [v44 size];
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
        v53 = [(VUICircularProgress *)self centerImageView];
        v54 = v52;
        v55 = v48;
        width = v64;
        height = v66;
        [v53 setFrame:{v50, v54, v46, v55}];
      }
    }

    v56 = [(VUICircularProgress *)self indeterminateLayer];

    if (v56)
    {
      v57 = [(VUICircularProgress *)self indeterminateLayer];
      [(VUICircularProgress *)self bounds];
      [v57 setFrame:?];

      v58 = [(VUICircularProgress *)self indeterminateLayer];
      v59 = [(VUICircularProgress *)self _indeterminatePath];
      [v58 setPath:{objc_msgSend(v59, "vuiCGPath")}];
    }

    v60 = [(VUICircularProgress *)self activityIndicatorView];

    if (v60)
    {
      v61 = [(VUICircularProgress *)self activityIndicatorView];
      [(VUICircularProgress *)self bounds];
      [v61 setFrame:?];
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
    v3 = [(VUICircularProgress *)self vuiTintColor];
    v4 = [(VUICircularProgress *)self vuiTraitCollection];
    v8 = [v3 resolvedColorWithTraitCollection:v4];

    v5 = v8;
    v6 = [v8 CGColor];
    v7 = [(VUICircularProgress *)self indeterminateLayer];
    [v7 setStrokeColor:v6];
  }
}

- (CGSize)vui_sizeThatFits:(CGSize)a3
{
  width = a3.width;
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

    if (a3.height <= 28.0)
    {
      height = a3.height;
    }

    else
    {
      height = 28.0;
    }

    v6 = a3.height == 0.0;
    if (a3.height == 0.0)
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

- (void)setIndeterminate:(BOOL)a3
{
  if (self->_indeterminate != a3)
  {
    v4 = a3;
    self->_indeterminate = a3;
    if ([(VUICircularProgress *)self vui_isInAWindow])
    {
      [(VUICircularProgress *)self _configureProgress:v4];
    }

    [(VUICircularProgress *)self vui_setNeedsLayout];
  }
}

- (void)setProgress:(double)a3
{
  if (self->_progress != a3)
  {
    self->_progress = a3;
    v5 = [(VUICircularProgress *)self progressLayer];

    if (!v5)
    {
      [(VUICircularProgress *)self _addProgressLayer];
    }

    v6 = 1.0;
    if (a3 <= 0.99)
    {
      if (a3 <= 0.0)
      {
        v6 = 0.0;
      }

      else
      {
        v6 = a3;
      }
    }

    v7 = [(VUICircularProgress *)self progressLayer];
    [v7 setStrokeEnd:v6];

    [(VUICircularProgress *)self vui_setNeedsDisplay];
  }
}

- (void)setProgressFillColor:(id)a3
{
  v5 = a3;
  if (self->_progressFillColor != v5)
  {
    objc_storeStrong(&self->_progressFillColor, a3);
    objc_initWeak(&location, self);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __44__VUICircularProgress_setProgressFillColor___block_invoke;
    v6[3] = &unk_1E872F038;
    objc_copyWeak(&v8, &location);
    v7 = v5;
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

- (void)setProgressBgColor:(id)a3
{
  v5 = a3;
  if (self->_progressBgColor != v5)
  {
    objc_storeStrong(&self->_progressBgColor, a3);
    objc_initWeak(&location, self);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __42__VUICircularProgress_setProgressBgColor___block_invoke;
    v6[3] = &unk_1E872F038;
    objc_copyWeak(&v8, &location);
    v7 = v5;
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
  v3 = [(VUICircularProgress *)self indeterminateLayer];
  v4 = [(VUICircularProgress *)self vuiTintColor];
  [v3 setStrokeColor:{objc_msgSend(v4, "CGColor")}];

  v5 = [(VUICircularProgress *)self centerLayer];
  v6 = [(VUICircularProgress *)self progressFillColor];
  [v5 setBackgroundColor:{objc_msgSend(v6, "CGColor")}];

  v7 = [(VUICircularProgress *)self centerImageView];
  v8 = [(VUICircularProgress *)self progressFillColor];
  [v7 _setTintColor:v8];

  v9 = [(VUICircularProgress *)self progressLayer];
  v10 = [(VUICircularProgress *)self progressFillColor];
  [v9 setStrokeColor:{objc_msgSend(v10, "CGColor")}];

  v12 = [(VUICircularProgress *)self progressBackgroundLayer];
  v11 = [(VUICircularProgress *)self progressBgColor];
  [v12 setStrokeColor:{objc_msgSend(v11, "CGColor")}];
}

- (void)_configureProgress:(BOOL)a3
{
  v3 = a3;
  v5 = [(VUICircularProgress *)self indeterminateType];
  if (v3)
  {
    if (v5)
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
    if (v5)
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
  v3 = [(VUICircularProgress *)self progressLayer];

  if (!v3)
  {
    v4 = [(VUICircularProgress *)self centerImage];

    if (v4)
    {
      v5 = objc_opt_new();
      v6 = [(VUICircularProgress *)self centerImage];
      [v5 setImage:v6];

      [(VUICircularProgress *)self setCenterImageView:v5];
      [(VUICircularProgress *)self addSubview:v5];
    }

    else
    {
      v5 = objc_opt_new();
      [(VUICircularProgress *)self centerSquareCornerRadius];
      [v5 setCornerRadius:?];
      v7 = [(VUICircularProgress *)self vuiLayer];
      [v7 addSublayer:v5];

      [(VUICircularProgress *)self setCenterLayer:v5];
    }

    v8 = objc_opt_new();
    [(VUICircularProgress *)self progressWidth];
    [v8 setLineWidth:?];
    v9 = [MEMORY[0x1E69DC888] clearColor];
    [v8 setFillColor:{objc_msgSend(v9, "CGColor")}];

    v10 = [(VUICircularProgress *)self _progressPath];
    [v8 setPath:{objc_msgSend(v10, "vuiCGPath")}];

    v11 = [(VUICircularProgress *)self vuiLayer];
    [v11 addSublayer:v8];

    [(VUICircularProgress *)self setProgressBackgroundLayer:v8];
    v12 = objc_opt_new();
    v13 = [MEMORY[0x1E69DC888] clearColor];
    [v12 setFillColor:{objc_msgSend(v13, "CGColor")}];

    [(VUICircularProgress *)self progressWidth];
    [v12 setLineWidth:?];
    [v12 setLineCap:*MEMORY[0x1E6979E78]];
    v14 = [(VUICircularProgress *)self _progressPath];
    [v12 setPath:{objc_msgSend(v14, "vuiCGPath")}];

    [v12 setStrokeEnd:0.0];
    v15 = [(VUICircularProgress *)self vuiLayer];
    [v15 addSublayer:v12];

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
  v3 = [(VUICircularProgress *)self progressLayer];
  [v3 removeFromSuperlayer];

  [(VUICircularProgress *)self setProgressLayer:0];
  v4 = [(VUICircularProgress *)self progressBackgroundLayer];
  [v4 removeFromSuperlayer];

  [(VUICircularProgress *)self setProgressBackgroundLayer:0];
  v5 = [(VUICircularProgress *)self centerLayer];
  [v5 removeFromSuperlayer];

  [(VUICircularProgress *)self setCenterLayer:0];
  v6 = [(VUICircularProgress *)self centerImageView];
  [v6 removeFromSuperview];

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
  v3 = [(VUICircularProgress *)self activityIndicatorView];

  if (!v3)
  {
    v4 = [VUIActivityIndicatorView vui_activityIndicatorViewWithActivityIndicatorStyle:0];
    v5 = [MEMORY[0x1E69DC888] clearColor];
    [v4 setVuiBackgroundColor:v5];

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
  v2 = [(VUICircularProgress *)self activityIndicatorView];
  [v2 vui_startAnimating];
}

- (void)_removeActivityIndicatorView
{
  v3 = [(VUICircularProgress *)self activityIndicatorView];
  [v3 vui_removeFromSuperView];

  [(VUICircularProgress *)self setActivityIndicatorView:0];
}

- (void)_addIndeterminateLayer
{
  v3 = [(VUICircularProgress *)self indeterminateLayer];

  if (!v3)
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
    v6 = [MEMORY[0x1E69DC888] clearColor];
    [v5 setFillColor:{objc_msgSend(v6, "CGColor")}];

    [(VUICircularProgress *)self indeterminateWidth];
    [v5 setLineWidth:?];
    [v5 setLineCap:*MEMORY[0x1E6979E78]];
    v7 = [(VUICircularProgress *)self vuiLayer];
    [v7 addSublayer:v5];

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
  v4 = [(VUICircularProgress *)self indeterminateLayer];
  [v4 addAnimation:v5 forKey:@"indeterminateAnimation"];
}

- (void)_removeIndeterminateLayer
{
  v3 = [(VUICircularProgress *)self indeterminateLayer];
  [v3 removeFromSuperlayer];

  [(VUICircularProgress *)self setIndeterminateLayer:0];
}

- (void)_applicationWillEnterForeground:(id)a3
{
  v4 = [(VUICircularProgress *)self indeterminateLayer];
  v5 = [v4 animationForKey:@"indeterminateAnimation"];

  if (!v5 && [(VUICircularProgress *)self isIndeterminate])
  {
    [(VUICircularProgress *)self _startIndeterminateAnimation];
  }
}

@end