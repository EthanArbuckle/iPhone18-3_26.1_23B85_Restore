@interface VSCircularProgressView
- (CGRect)_progressFrame;
- (CGSize)sizeThatFits:(CGSize)a3;
- (VSCircularProgressView)initWithFrame:(CGRect)a3;
- (id)_indeterminatePath;
- (id)_progressPath;
- (void)_addIndeterminateLayer;
- (void)_addProgressLayer;
- (void)_applicationWillEnterForeground:(id)a3;
- (void)_configureProgress:(BOOL)a3;
- (void)_removeIndeterminateLayer;
- (void)_removeProgressLayer;
- (void)_startIndeterminateAnimation;
- (void)dealloc;
- (void)didMoveToWindow;
- (void)layoutSubviews;
- (void)setProgress:(double)a3;
- (void)setProgressBgColor:(id)a3;
- (void)setProgressFillColor:(id)a3;
- (void)tintColorDidChange;
@end

@implementation VSCircularProgressView

- (VSCircularProgressView)initWithFrame:(CGRect)a3
{
  v15[1] = *MEMORY[0x277D85DE8];
  v14.receiver = self;
  v14.super_class = VSCircularProgressView;
  v3 = [(VSCircularProgressView *)&v14 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    v3->_progressWidth = 2.0;
    v3->_indeterminateWidth = 2.0;
    v3->_centerSquareWidth = 8.0;
    v5 = [MEMORY[0x277D75348] systemBlueColor];
    progressFillColor = v4->_progressFillColor;
    v4->_progressFillColor = v5;

    v7 = [MEMORY[0x277D75348] systemLightGrayColor];
    progressBgColor = v4->_progressBgColor;
    v4->_progressBgColor = v7;

    [(VSCircularProgressView *)v4 setClipsToBounds:1];
    v9 = [MEMORY[0x277CCAB98] defaultCenter];
    [v9 addObserver:v4 selector:sel__applicationWillEnterForeground_ name:*MEMORY[0x277D76758] object:0];

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
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = VSCircularProgressView;
  [(VSCircularProgressView *)&v4 dealloc];
}

- (void)layoutSubviews
{
  v51.receiver = self;
  v51.super_class = VSCircularProgressView;
  [(VSCircularProgressView *)&v51 layoutSubviews];
  v3 = [(VSCircularProgressView *)self progressLayer];

  if (v3)
  {
    [(VSCircularProgressView *)self _progressFrame];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v12 = [(VSCircularProgressView *)self progressLayer];
    [v12 setFrame:{v5, v7, v9, v11}];

    v13 = [(VSCircularProgressView *)self progressBackgroundLayer];
    [v13 setFrame:{v5, v7, v9, v11}];

    v14 = [(VSCircularProgressView *)self progressLayer];
    v15 = [(VSCircularProgressView *)self _progressPath];
    [v14 setPath:{objc_msgSend(v15, "CGPath")}];

    v16 = [(VSCircularProgressView *)self progressBackgroundLayer];
    v17 = [(VSCircularProgressView *)self _progressPath];
    [v16 setPath:{objc_msgSend(v17, "CGPath")}];

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
    v30 = [(VSCircularProgressView *)self centerLayer];
    [v30 setFrame:{v25, v29, v19, v21}];
  }

  v31 = [(VSCircularProgressView *)self indeterminateLayer];

  if (v31)
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
    v48 = [(VSCircularProgressView *)self indeterminateLayer];
    [v48 setFrame:{v41, v43, v45, v47}];

    v49 = [(VSCircularProgressView *)self indeterminateLayer];
    v50 = [(VSCircularProgressView *)self _indeterminatePath];
    [v49 setPath:{objc_msgSend(v50, "CGPath")}];
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
    v3 = [(VSCircularProgressView *)self tintColor];
    v4 = [(VSCircularProgressView *)self traitCollection];
    v5 = [v3 resolvedColorWithTraitCollection:v4];
    v6 = [v5 CGColor];

    v7 = [(VSCircularProgressView *)self indeterminateLayer];
    [v7 setStrokeColor:v6];
  }
}

- (CGSize)sizeThatFits:(CGSize)a3
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

- (void)setProgress:(double)a3
{
  if (self->_progress != a3)
  {
    self->_progress = a3;
    v5 = [(VSCircularProgressView *)self progressLayer];

    if (!v5)
    {
      [(VSCircularProgressView *)self _addProgressLayer];
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

    v7 = [(VSCircularProgressView *)self progressLayer];
    [v7 setStrokeEnd:v6];

    [(VSCircularProgressView *)self setNeedsDisplay];
  }
}

- (void)setProgressFillColor:(id)a3
{
  v5 = a3;
  if (self->_progressFillColor != v5)
  {
    objc_storeStrong(&self->_progressFillColor, a3);
    objc_initWeak(&location, self);
    v6 = [(VSCircularProgressView *)self traitCollection];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __47__VSCircularProgressView_setProgressFillColor___block_invoke;
    v7[3] = &unk_279E19618;
    objc_copyWeak(&v9, &location);
    v8 = v5;
    [v6 performAsCurrentTraitCollection:v7];

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

- (void)setProgressBgColor:(id)a3
{
  v5 = a3;
  if (self->_progressBgColor != v5)
  {
    v9 = v5;
    objc_storeStrong(&self->_progressBgColor, a3);
    v6 = [(VSCircularProgressView *)self progressBackgroundLayer];
    v7 = [(VSCircularProgressView *)self traitCollection];
    v8 = [(UIColor *)v9 resolvedColorWithTraitCollection:v7];
    [v6 setStrokeColor:{objc_msgSend(v8, "CGColor")}];

    v5 = v9;
  }
}

- (void)_configureProgress:(BOOL)a3
{
  if (a3)
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
  v3 = [(VSCircularProgressView *)self progressLayer];

  if (!v3)
  {
    v4 = objc_alloc_init(MEMORY[0x277CD9F90]);
    [v4 setCornerRadius:1.5];
    v5 = [(VSCircularProgressView *)self layer];
    [v5 addSublayer:v4];

    [(VSCircularProgressView *)self setCenterLayer:v4];
    v6 = objc_alloc_init(MEMORY[0x277CD9F90]);
    [(VSCircularProgressView *)self progressWidth];
    [v6 setLineWidth:?];
    v7 = [MEMORY[0x277D75348] clearColor];
    [v6 setFillColor:{objc_msgSend(v7, "CGColor")}];

    v8 = [(VSCircularProgressView *)self _progressPath];
    [v6 setPath:{objc_msgSend(v8, "CGPath")}];

    v9 = [(VSCircularProgressView *)self layer];
    [v9 addSublayer:v6];

    [(VSCircularProgressView *)self setProgressBackgroundLayer:v6];
    v10 = objc_alloc_init(MEMORY[0x277CD9F90]);
    v11 = [MEMORY[0x277D75348] clearColor];
    [v10 setFillColor:{objc_msgSend(v11, "CGColor")}];

    [(VSCircularProgressView *)self progressWidth];
    [v10 setLineWidth:?];
    [v10 setLineCap:*MEMORY[0x277CDA780]];
    v12 = [(VSCircularProgressView *)self _progressPath];
    [v10 setPath:{objc_msgSend(v12, "CGPath")}];

    [v10 setStrokeEnd:0.0];
    v13 = [(VSCircularProgressView *)self layer];
    [v13 addSublayer:v10];

    [(VSCircularProgressView *)self setProgressLayer:v10];
    objc_initWeak(&location, self);
    v14 = [(VSCircularProgressView *)self traitCollection];
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
    [v14 performAsCurrentTraitCollection:v18];

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
  v3 = [(VSCircularProgressView *)self progressLayer];
  [v3 removeFromSuperlayer];

  [(VSCircularProgressView *)self setProgressLayer:0];
  v4 = [(VSCircularProgressView *)self progressBackgroundLayer];
  [v4 removeFromSuperlayer];

  [(VSCircularProgressView *)self setProgressBackgroundLayer:0];
  v5 = [(VSCircularProgressView *)self centerLayer];
  [v5 removeFromSuperlayer];

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
  v3 = [(VSCircularProgressView *)self indeterminateLayer];

  if (!v3)
  {
    v11 = objc_alloc_init(MEMORY[0x277CD9F90]);
    v4 = [(VSCircularProgressView *)self tintColor];
    v5 = [(VSCircularProgressView *)self traitCollection];
    v6 = [v4 resolvedColorWithTraitCollection:v5];
    v7 = [v6 CGColor];

    [v11 setStrokeColor:v7];
    v8 = [MEMORY[0x277D75348] clearColor];
    [v11 setFillColor:{objc_msgSend(v8, "CGColor")}];

    [(VSCircularProgressView *)self indeterminateWidth];
    [v11 setLineWidth:?];
    [v11 setLineCap:*MEMORY[0x277CDA780]];
    v9 = [(VSCircularProgressView *)self _indeterminatePath];
    [v11 setPath:{objc_msgSend(v9, "CGPath")}];

    v10 = [(VSCircularProgressView *)self layer];
    [v10 addSublayer:v11];

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
  v4 = [(VSCircularProgressView *)self indeterminateLayer];
  [v4 addAnimation:v5 forKey:@"indeterminateAnimation"];
}

- (void)_removeIndeterminateLayer
{
  v3 = [(VSCircularProgressView *)self indeterminateLayer];
  [v3 removeFromSuperlayer];

  [(VSCircularProgressView *)self setIndeterminateLayer:0];
}

- (void)_applicationWillEnterForeground:(id)a3
{
  v4 = [(VSCircularProgressView *)self indeterminateLayer];
  v5 = [v4 animationForKey:@"indeterminateAnimation"];

  if (!v5 && [(VSCircularProgressView *)self isIndeterminate])
  {
    [(VSCircularProgressView *)self _startIndeterminateAnimation];
  }
}

@end