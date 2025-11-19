@interface _TVSpinnerView
- (_TVSpinnerView)initWithFrame:(CGRect)a3 color:(id)a4;
- (id)_spinnerImageForTraitCollection:(id)a3 size:(CGSize)a4 alpha:(double)a5;
- (void)_addAnimations;
- (void)_applicationDidBecomeActiveNotification:(id)a3;
- (void)_applicationWillResignActiveNotification:(id)a3;
- (void)_removeAnimations;
- (void)_updateImagesForTraitCollection:(id)a3;
- (void)dealloc;
- (void)didMoveToWindow;
- (void)startAnimating;
- (void)stopAnimating;
- (void)traitCollectionDidChange:(id)a3;
- (void)willMoveToWindow:(id)a3;
@end

@implementation _TVSpinnerView

- (_TVSpinnerView)initWithFrame:(CGRect)a3 color:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v10 = a4;
  v37.receiver = self;
  v37.super_class = _TVSpinnerView;
  v11 = [(_TVSpinnerView *)&v37 initWithFrame:x, y, width, height];
  v12 = v11;
  if (!v11)
  {
    goto LABEL_14;
  }

  objc_storeStrong(&v11->_color, a4);
  v13 = [MEMORY[0x277D75418] currentDevice];
  if ([v13 _graphicsQuality] != 10)
  {
    goto LABEL_5;
  }

  color = v12->_color;

  if (!color)
  {
    v15 = [MEMORY[0x277D75348] colorWithRed:0.0 green:0.0 blue:0.0 alpha:0.6];
    v13 = v12->_color;
    v12->_color = v15;
LABEL_5:
  }

  v16 = v12->_color;
  v17 = objc_alloc(MEMORY[0x277D75D18]);
  [(_TVSpinnerView *)v12 bounds];
  v18 = [v17 initWithFrame:?];
  spinnerContainer = v12->_spinnerContainer;
  v12->_spinnerContainer = v18;

  [(UIView *)v12->_spinnerContainer setAutoresizingMask:18];
  [(UIView *)v12->_spinnerContainer setContentMode:1];
  if (v16)
  {
    v38.origin.x = x;
    v38.origin.y = y;
    v38.size.width = width;
    v38.size.height = height;
    v20 = CGRectGetWidth(v38);
    v39.origin.x = x;
    v39.origin.y = y;
    v39.size.width = width;
    v39.size.height = height;
    v21 = CGRectGetHeight(v39);
    if (v20 >= v21)
    {
      v21 = v20;
    }

    v22 = _TVCreateSpinnerImage(v10, v21);
    v23 = [(UIView *)v12->_spinnerContainer layer];
    [v23 setContents:{objc_msgSend(v22, "CGImage")}];

    v24 = [(UIView *)v12->_spinnerContainer layer];
    [v22 scale];
    [v24 setContentsScale:?];

    [(_TVSpinnerView *)v12 addSubview:v12->_spinnerContainer];
  }

  else
  {
    v25 = [(UIView *)v12->_spinnerContainer layer];
    [v25 setCompositingFilter:*MEMORY[0x277CDA5D0]];

    [(_TVSpinnerView *)v12 addSubview:v12->_spinnerContainer];
    v26 = objc_alloc(MEMORY[0x277D75D18]);
    [(_TVSpinnerView *)v12 bounds];
    v27 = [v26 initWithFrame:?];
    spinnerOverlayContainer = v12->_spinnerOverlayContainer;
    v12->_spinnerOverlayContainer = v27;

    [(UIView *)v12->_spinnerOverlayContainer setAutoresizingMask:18];
    [(UIView *)v12->_spinnerOverlayContainer setContentMode:1];
    v29 = [(_TVSpinnerView *)v12 traitCollection];
    v30 = [v29 userInterfaceStyle];
    v31 = MEMORY[0x277CDA5E8];
    if (v30 != 2)
    {
      v31 = MEMORY[0x277CDA5D8];
    }

    v32 = *v31;

    v33 = [(UIView *)v12->_spinnerOverlayContainer layer];
    [v33 setCompositingFilter:v32];

    [(_TVSpinnerView *)v12 addSubview:v12->_spinnerOverlayContainer];
    v34 = [(_TVSpinnerView *)v12 traitCollection];
    [(_TVSpinnerView *)v12 _updateImagesForTraitCollection:v34];

    v22 = [(_TVSpinnerView *)v12 layer];
    [v22 setAllowsGroupOpacity:0];
    [v22 setAllowsGroupBlending:0];
    v35 = [MEMORY[0x277CCAB98] defaultCenter];
    [v35 addObserver:v12 selector:sel__applicationDidBecomeActiveNotification_ name:*MEMORY[0x277D76648] object:0];
    [v35 addObserver:v12 selector:sel__applicationWillResignActiveNotification_ name:*MEMORY[0x277D76768] object:0];
  }

LABEL_14:
  return v12;
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self name:*MEMORY[0x277D76648] object:0];
  [v3 removeObserver:self name:*MEMORY[0x277D76768] object:0];

  v4.receiver = self;
  v4.super_class = _TVSpinnerView;
  [(_TVSpinnerView *)&v4 dealloc];
}

- (void)willMoveToWindow:(id)a3
{
  v5.receiver = self;
  v5.super_class = _TVSpinnerView;
  [(_TVSpinnerView *)&v5 willMoveToWindow:?];
  if (!a3)
  {
    self->_shouldResumeAnimation = self->_animating;
    [(_TVSpinnerView *)self stopAnimating];
  }
}

- (void)didMoveToWindow
{
  v5.receiver = self;
  v5.super_class = _TVSpinnerView;
  [(_TVSpinnerView *)&v5 didMoveToWindow];
  v3 = [(_TVSpinnerView *)self window];
  if (v3)
  {
    shouldResumeAnimation = self->_shouldResumeAnimation;

    if (shouldResumeAnimation)
    {
      [(_TVSpinnerView *)self startAnimating];
    }
  }
}

- (void)traitCollectionDidChange:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = _TVSpinnerView;
  [(_TVSpinnerView *)&v14 traitCollectionDidChange:v4];
  v5 = [(_TVSpinnerView *)self traitCollection];
  if (![v5 userInterfaceStyle])
  {
LABEL_6:

    goto LABEL_7;
  }

  v6 = [v4 userInterfaceStyle];
  v7 = [(_TVSpinnerView *)self traitCollection];
  v8 = [v7 userInterfaceStyle];

  if (v6 != v8)
  {
    v9 = [(_TVSpinnerView *)self traitCollection];
    [(_TVSpinnerView *)self _updateImagesForTraitCollection:v9];

    v10 = [(_TVSpinnerView *)self traitCollection];
    v11 = [v10 userInterfaceStyle];
    v12 = MEMORY[0x277CDA5E8];
    if (v11 != 2)
    {
      v12 = MEMORY[0x277CDA5D8];
    }

    v13 = *v12;

    v5 = [(UIView *)self->_spinnerOverlayContainer layer];
    [v5 setCompositingFilter:v13];

    goto LABEL_6;
  }

LABEL_7:
}

- (void)_applicationDidBecomeActiveNotification:(id)a3
{
  v4 = [(_TVSpinnerView *)self window];
  if (v4)
  {
    shouldResumeAnimation = self->_shouldResumeAnimation;

    if (shouldResumeAnimation)
    {

      [(_TVSpinnerView *)self startAnimating];
    }
  }
}

- (void)_applicationWillResignActiveNotification:(id)a3
{
  v4 = [(_TVSpinnerView *)self window];

  if (v4)
  {
    self->_shouldResumeAnimation = self->_animating;

    [(_TVSpinnerView *)self stopAnimating];
  }
}

- (void)startAnimating
{
  if (!self->_animating)
  {
    v3 = [(_TVSpinnerView *)self window];

    if (v3)
    {
      self->_animating = 1;

      [(_TVSpinnerView *)self _addAnimations];
    }

    else
    {
      self->_shouldResumeAnimation = 1;
    }
  }
}

- (void)stopAnimating
{
  if (self->_animating)
  {
    self->_animating = 0;
    [(_TVSpinnerView *)self _removeAnimations];
  }
}

- (id)_spinnerImageForTraitCollection:(id)a3 size:(CGSize)a4 alpha:(double)a5
{
  height = a4.height;
  width = a4.width;
  v8 = a3;
  if ([v8 userInterfaceStyle] == 2 || (v9 = objc_msgSend(v8, "userInterfaceStyle"), v10 = 0.0, v9 == 1000))
  {
    v10 = 1.0;
  }

  if (width >= height)
  {
    height = width;
  }

  v11 = [MEMORY[0x277D75348] colorWithWhite:v10 alpha:a5];
  v12 = _TVCreateSpinnerImage(v11, height);

  return v12;
}

- (void)_updateImagesForTraitCollection:(id)a3
{
  v4 = a3;
  [(_TVSpinnerView *)self frame];
  v15 = [(_TVSpinnerView *)self _spinnerImageForTraitCollection:v4 size:v5 alpha:v6, 0.75];
  v7 = [(UIView *)self->_spinnerContainer layer];
  v8 = v15;
  [v7 setContents:{objc_msgSend(v15, "CGImage")}];

  v9 = [(UIView *)self->_spinnerContainer layer];
  [v15 scale];
  [v9 setContentsScale:?];

  [(_TVSpinnerView *)self frame];
  v12 = [(_TVSpinnerView *)self _spinnerImageForTraitCollection:v4 size:v10 alpha:v11, 0.3];

  v13 = [(UIView *)self->_spinnerOverlayContainer layer];
  [v13 setContents:{objc_msgSend(v12, "CGImage")}];

  v14 = [(UIView *)self->_spinnerOverlayContainer layer];
  [v12 scale];
  [v14 setContentsScale:?];
}

- (void)_addAnimations
{
  v18[2] = *MEMORY[0x277D85DE8];
  v3 = [(_TVSpinnerView *)self layer];
  v4 = [v3 animationForKey:@"repeatingGroupAnimation"];

  if (!v4)
  {
    [(_TVSpinnerView *)self setAlpha:0.0];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __32___TVSpinnerView__addAnimations__block_invoke;
    v17[3] = &unk_279D6E7F8;
    v17[4] = self;
    [MEMORY[0x277D75D18] animateWithDuration:4 delay:v17 options:&__block_literal_global_25 animations:0.5 completion:0.0];
    v5 = [MEMORY[0x277CD9E10] animation];
    [v5 setKeyPath:@"opacity"];
    [v5 setDuration:0.0833333333];
    LODWORD(v6) = 2139095040;
    [v5 setRepeatCount:v6];
    v7 = [MEMORY[0x277CD9EF8] functionWithName:*MEMORY[0x277CDA7B8]];
    [v5 setTimingFunction:v7];

    [v5 setFromValue:&unk_287E48818];
    [v5 setToValue:&unk_287E48828];
    v8 = [MEMORY[0x277CD9EC8] animation];
    v9 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:12];
    v10 = -30;
    do
    {
      v10 += 30;
      v11 = [MEMORY[0x277CCABB0] numberWithDouble:v10 * 0.0174532925];
      [v9 addObject:v11];
    }

    while (v10 < 0x14A);
    [v8 setKeyPath:@"transform.rotation.z"];
    [v8 setValues:v9];
    [v8 setCalculationMode:@"discrete"];
    LODWORD(v12) = 2139095040;
    [v8 setRepeatCount:v12];
    [v8 setDuration:1.0];
    v13 = [MEMORY[0x277CD9E00] animation];
    v18[0] = v5;
    v18[1] = v8;
    v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:2];
    [v13 setAnimations:v14];

    [v13 setDuration:1.0e100];
    [MEMORY[0x277CD9FF0] begin];
    v15 = [(UIView *)self->_spinnerContainer layer];
    [v15 addAnimation:v13 forKey:@"repeatingGroupAnimation"];

    v16 = [(UIView *)self->_spinnerOverlayContainer layer];
    [v16 addAnimation:v13 forKey:@"repeatingGroupAnimation"];

    [MEMORY[0x277CD9FF0] commit];
  }
}

- (void)_removeAnimations
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __35___TVSpinnerView__removeAnimations__block_invoke;
  v3[3] = &unk_279D6E7F8;
  v3[4] = self;
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __35___TVSpinnerView__removeAnimations__block_invoke_2;
  v2[3] = &unk_279D6EBD0;
  v2[4] = self;
  [MEMORY[0x277D75D18] animateWithDuration:4 delay:v3 options:v2 animations:0.5 completion:0.0];
}

@end