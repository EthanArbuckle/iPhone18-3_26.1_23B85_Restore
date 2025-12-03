@interface _TVSpinnerView
- (_TVSpinnerView)initWithFrame:(CGRect)frame color:(id)color;
- (id)_spinnerImageForTraitCollection:(id)collection size:(CGSize)size alpha:(double)alpha;
- (void)_addAnimations;
- (void)_applicationDidBecomeActiveNotification:(id)notification;
- (void)_applicationWillResignActiveNotification:(id)notification;
- (void)_removeAnimations;
- (void)_updateImagesForTraitCollection:(id)collection;
- (void)dealloc;
- (void)didMoveToWindow;
- (void)startAnimating;
- (void)stopAnimating;
- (void)traitCollectionDidChange:(id)change;
- (void)willMoveToWindow:(id)window;
@end

@implementation _TVSpinnerView

- (_TVSpinnerView)initWithFrame:(CGRect)frame color:(id)color
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  colorCopy = color;
  v37.receiver = self;
  v37.super_class = _TVSpinnerView;
  height = [(_TVSpinnerView *)&v37 initWithFrame:x, y, width, height];
  v12 = height;
  if (!height)
  {
    goto LABEL_14;
  }

  objc_storeStrong(&height->_color, color);
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  if ([currentDevice _graphicsQuality] != 10)
  {
    goto LABEL_5;
  }

  color = v12->_color;

  if (!color)
  {
    v15 = [MEMORY[0x277D75348] colorWithRed:0.0 green:0.0 blue:0.0 alpha:0.6];
    currentDevice = v12->_color;
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

    layer5 = _TVCreateSpinnerImage(colorCopy, v21);
    layer = [(UIView *)v12->_spinnerContainer layer];
    [layer setContents:{objc_msgSend(layer5, "CGImage")}];

    layer2 = [(UIView *)v12->_spinnerContainer layer];
    [layer5 scale];
    [layer2 setContentsScale:?];

    [(_TVSpinnerView *)v12 addSubview:v12->_spinnerContainer];
  }

  else
  {
    layer3 = [(UIView *)v12->_spinnerContainer layer];
    [layer3 setCompositingFilter:*MEMORY[0x277CDA5D0]];

    [(_TVSpinnerView *)v12 addSubview:v12->_spinnerContainer];
    v26 = objc_alloc(MEMORY[0x277D75D18]);
    [(_TVSpinnerView *)v12 bounds];
    v27 = [v26 initWithFrame:?];
    spinnerOverlayContainer = v12->_spinnerOverlayContainer;
    v12->_spinnerOverlayContainer = v27;

    [(UIView *)v12->_spinnerOverlayContainer setAutoresizingMask:18];
    [(UIView *)v12->_spinnerOverlayContainer setContentMode:1];
    traitCollection = [(_TVSpinnerView *)v12 traitCollection];
    userInterfaceStyle = [traitCollection userInterfaceStyle];
    v31 = MEMORY[0x277CDA5E8];
    if (userInterfaceStyle != 2)
    {
      v31 = MEMORY[0x277CDA5D8];
    }

    v32 = *v31;

    layer4 = [(UIView *)v12->_spinnerOverlayContainer layer];
    [layer4 setCompositingFilter:v32];

    [(_TVSpinnerView *)v12 addSubview:v12->_spinnerOverlayContainer];
    traitCollection2 = [(_TVSpinnerView *)v12 traitCollection];
    [(_TVSpinnerView *)v12 _updateImagesForTraitCollection:traitCollection2];

    layer5 = [(_TVSpinnerView *)v12 layer];
    [layer5 setAllowsGroupOpacity:0];
    [layer5 setAllowsGroupBlending:0];
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v12 selector:sel__applicationDidBecomeActiveNotification_ name:*MEMORY[0x277D76648] object:0];
    [defaultCenter addObserver:v12 selector:sel__applicationWillResignActiveNotification_ name:*MEMORY[0x277D76768] object:0];
  }

LABEL_14:
  return v12;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self name:*MEMORY[0x277D76648] object:0];
  [defaultCenter removeObserver:self name:*MEMORY[0x277D76768] object:0];

  v4.receiver = self;
  v4.super_class = _TVSpinnerView;
  [(_TVSpinnerView *)&v4 dealloc];
}

- (void)willMoveToWindow:(id)window
{
  v5.receiver = self;
  v5.super_class = _TVSpinnerView;
  [(_TVSpinnerView *)&v5 willMoveToWindow:?];
  if (!window)
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
  window = [(_TVSpinnerView *)self window];
  if (window)
  {
    shouldResumeAnimation = self->_shouldResumeAnimation;

    if (shouldResumeAnimation)
    {
      [(_TVSpinnerView *)self startAnimating];
    }
  }
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  v14.receiver = self;
  v14.super_class = _TVSpinnerView;
  [(_TVSpinnerView *)&v14 traitCollectionDidChange:changeCopy];
  traitCollection = [(_TVSpinnerView *)self traitCollection];
  if (![traitCollection userInterfaceStyle])
  {
LABEL_6:

    goto LABEL_7;
  }

  userInterfaceStyle = [changeCopy userInterfaceStyle];
  traitCollection2 = [(_TVSpinnerView *)self traitCollection];
  userInterfaceStyle2 = [traitCollection2 userInterfaceStyle];

  if (userInterfaceStyle != userInterfaceStyle2)
  {
    traitCollection3 = [(_TVSpinnerView *)self traitCollection];
    [(_TVSpinnerView *)self _updateImagesForTraitCollection:traitCollection3];

    traitCollection4 = [(_TVSpinnerView *)self traitCollection];
    userInterfaceStyle3 = [traitCollection4 userInterfaceStyle];
    v12 = MEMORY[0x277CDA5E8];
    if (userInterfaceStyle3 != 2)
    {
      v12 = MEMORY[0x277CDA5D8];
    }

    v13 = *v12;

    traitCollection = [(UIView *)self->_spinnerOverlayContainer layer];
    [traitCollection setCompositingFilter:v13];

    goto LABEL_6;
  }

LABEL_7:
}

- (void)_applicationDidBecomeActiveNotification:(id)notification
{
  window = [(_TVSpinnerView *)self window];
  if (window)
  {
    shouldResumeAnimation = self->_shouldResumeAnimation;

    if (shouldResumeAnimation)
    {

      [(_TVSpinnerView *)self startAnimating];
    }
  }
}

- (void)_applicationWillResignActiveNotification:(id)notification
{
  window = [(_TVSpinnerView *)self window];

  if (window)
  {
    self->_shouldResumeAnimation = self->_animating;

    [(_TVSpinnerView *)self stopAnimating];
  }
}

- (void)startAnimating
{
  if (!self->_animating)
  {
    window = [(_TVSpinnerView *)self window];

    if (window)
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

- (id)_spinnerImageForTraitCollection:(id)collection size:(CGSize)size alpha:(double)alpha
{
  height = size.height;
  width = size.width;
  collectionCopy = collection;
  if ([collectionCopy userInterfaceStyle] == 2 || (v9 = objc_msgSend(collectionCopy, "userInterfaceStyle"), v10 = 0.0, v9 == 1000))
  {
    v10 = 1.0;
  }

  if (width >= height)
  {
    height = width;
  }

  v11 = [MEMORY[0x277D75348] colorWithWhite:v10 alpha:alpha];
  v12 = _TVCreateSpinnerImage(v11, height);

  return v12;
}

- (void)_updateImagesForTraitCollection:(id)collection
{
  collectionCopy = collection;
  [(_TVSpinnerView *)self frame];
  v15 = [(_TVSpinnerView *)self _spinnerImageForTraitCollection:collectionCopy size:v5 alpha:v6, 0.75];
  layer = [(UIView *)self->_spinnerContainer layer];
  v8 = v15;
  [layer setContents:{objc_msgSend(v15, "CGImage")}];

  layer2 = [(UIView *)self->_spinnerContainer layer];
  [v15 scale];
  [layer2 setContentsScale:?];

  [(_TVSpinnerView *)self frame];
  v12 = [(_TVSpinnerView *)self _spinnerImageForTraitCollection:collectionCopy size:v10 alpha:v11, 0.3];

  layer3 = [(UIView *)self->_spinnerOverlayContainer layer];
  [layer3 setContents:{objc_msgSend(v12, "CGImage")}];

  layer4 = [(UIView *)self->_spinnerOverlayContainer layer];
  [v12 scale];
  [layer4 setContentsScale:?];
}

- (void)_addAnimations
{
  v18[2] = *MEMORY[0x277D85DE8];
  layer = [(_TVSpinnerView *)self layer];
  v4 = [layer animationForKey:@"repeatingGroupAnimation"];

  if (!v4)
  {
    [(_TVSpinnerView *)self setAlpha:0.0];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __32___TVSpinnerView__addAnimations__block_invoke;
    v17[3] = &unk_279D6E7F8;
    v17[4] = self;
    [MEMORY[0x277D75D18] animateWithDuration:4 delay:v17 options:&__block_literal_global_25 animations:0.5 completion:0.0];
    animation = [MEMORY[0x277CD9E10] animation];
    [animation setKeyPath:@"opacity"];
    [animation setDuration:0.0833333333];
    LODWORD(v6) = 2139095040;
    [animation setRepeatCount:v6];
    v7 = [MEMORY[0x277CD9EF8] functionWithName:*MEMORY[0x277CDA7B8]];
    [animation setTimingFunction:v7];

    [animation setFromValue:&unk_287E48818];
    [animation setToValue:&unk_287E48828];
    animation2 = [MEMORY[0x277CD9EC8] animation];
    v9 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:12];
    v10 = -30;
    do
    {
      v10 += 30;
      v11 = [MEMORY[0x277CCABB0] numberWithDouble:v10 * 0.0174532925];
      [v9 addObject:v11];
    }

    while (v10 < 0x14A);
    [animation2 setKeyPath:@"transform.rotation.z"];
    [animation2 setValues:v9];
    [animation2 setCalculationMode:@"discrete"];
    LODWORD(v12) = 2139095040;
    [animation2 setRepeatCount:v12];
    [animation2 setDuration:1.0];
    animation3 = [MEMORY[0x277CD9E00] animation];
    v18[0] = animation;
    v18[1] = animation2;
    v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:2];
    [animation3 setAnimations:v14];

    [animation3 setDuration:1.0e100];
    [MEMORY[0x277CD9FF0] begin];
    layer2 = [(UIView *)self->_spinnerContainer layer];
    [layer2 addAnimation:animation3 forKey:@"repeatingGroupAnimation"];

    layer3 = [(UIView *)self->_spinnerOverlayContainer layer];
    [layer3 addAnimation:animation3 forKey:@"repeatingGroupAnimation"];

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