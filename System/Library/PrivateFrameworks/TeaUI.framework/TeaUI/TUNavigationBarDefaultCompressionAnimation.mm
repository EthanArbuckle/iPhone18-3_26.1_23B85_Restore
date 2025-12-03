@interface TUNavigationBarDefaultCompressionAnimation
- (BOOL)animationShouldBeginForScrollView:(id)view currentlyFullyCompressed:(BOOL)compressed;
- (TUAnimationFloatFunction)opacityFunction;
- (TUAnimationFloatFunction)scaleFunction;
- (TUAnimationFloatFunction)translateFunction;
- (TUNavigationBarDefaultCompressionAnimation)initWithNavigationBar:(id)bar tabBarController:(id)controller;
- (double)maximumBarHeightForTraitCollection:(id)collection;
- (void)animateFloatingTabBarHiddenIfNeeded:(BOOL)needed;
- (void)prepareForUpdates;
- (void)reloadWithTraitCollection:(id)collection;
- (void)scrollViewIsAtTop:(BOOL)top offset:(double)offset;
- (void)setHideTitleOnTop:(BOOL)top;
- (void)updateWithPercentage:(double)percentage;
@end

@implementation TUNavigationBarDefaultCompressionAnimation

- (TUNavigationBarDefaultCompressionAnimation)initWithNavigationBar:(id)bar tabBarController:(id)controller
{
  barCopy = bar;
  controllerCopy = controller;
  v12.receiver = self;
  v12.super_class = TUNavigationBarDefaultCompressionAnimation;
  v9 = [(TUNavigationBarDefaultCompressionAnimation *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_navigationBar, bar);
    v10->_compressTitleView = 1;
    v10->_translationOffset = -3.5;
    objc_storeStrong(&v10->_tabBarController, controller);
  }

  return v10;
}

- (void)prepareForUpdates
{
  navigationBar = [(TUNavigationBarDefaultCompressionAnimation *)self navigationBar];
  ts_fetchCompressibleTitleView = [navigationBar ts_fetchCompressibleTitleView];
  [(TUNavigationBarDefaultCompressionAnimation *)self setCompressibleTitleView:ts_fetchCompressibleTitleView];

  navigationBar2 = [(TUNavigationBarDefaultCompressionAnimation *)self navigationBar];
  ts_barButtonViews = [navigationBar2 ts_barButtonViews];
  [(TUNavigationBarDefaultCompressionAnimation *)self setBarButtonItemViews:ts_barButtonViews];
}

- (void)updateWithPercentage:(double)percentage
{
  v58 = *MEMORY[0x1E69E9840];
  compressibleTitleView = [(TUNavigationBarDefaultCompressionAnimation *)self compressibleTitleView];

  if (!compressibleTitleView)
  {
    navigationBar = [(TUNavigationBarDefaultCompressionAnimation *)self navigationBar];
    ts_fetchCompressibleTitleView = [navigationBar ts_fetchCompressibleTitleView];
    [(TUNavigationBarDefaultCompressionAnimation *)self setCompressibleTitleView:ts_fetchCompressibleTitleView];
  }

  opacityFunction = [(TUNavigationBarDefaultCompressionAnimation *)self opacityFunction];
  [opacityFunction solveForTime:percentage];
  v10 = v9;

  scaleFunction = [(TUNavigationBarDefaultCompressionAnimation *)self scaleFunction];
  [scaleFunction solveForTime:percentage];
  v13 = v12;

  translateFunction = [(TUNavigationBarDefaultCompressionAnimation *)self translateFunction];
  [translateFunction solveForTime:percentage];
  v16 = v15;

  if ([(TUNavigationBarDefaultCompressionAnimation *)self compressTitleView])
  {
    compressibleTitleView2 = [(TUNavigationBarDefaultCompressionAnimation *)self compressibleTitleView];
    [compressibleTitleView2 setContentAlpha:v10];
  }

  barButtonItemViews = [(TUNavigationBarDefaultCompressionAnimation *)self barButtonItemViews];
  if (!barButtonItemViews || (v19 = barButtonItemViews, -[TUNavigationBarDefaultCompressionAnimation barButtonItemViews](self, "barButtonItemViews"), v20 = objc_claimAutoreleasedReturnValue(), v21 = [v20 count], v20, v19, !v21))
  {
    navigationBar2 = [(TUNavigationBarDefaultCompressionAnimation *)self navigationBar];
    ts_barButtonViews = [navigationBar2 ts_barButtonViews];
    [(TUNavigationBarDefaultCompressionAnimation *)self setBarButtonItemViews:ts_barButtonViews];
  }

  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  barButtonItemViews2 = [(TUNavigationBarDefaultCompressionAnimation *)self barButtonItemViews];
  v25 = [barButtonItemViews2 countByEnumeratingWithState:&v53 objects:v57 count:16];
  if (v25)
  {
    v26 = v25;
    v27 = *v54;
    do
    {
      for (i = 0; i != v26; ++i)
      {
        if (*v54 != v27)
        {
          objc_enumerationMutation(barButtonItemViews2);
        }

        v29 = *(*(&v53 + 1) + 8 * i);
        [v29 setContentAlpha:v10];
        view = [v29 view];
        CATransform3DMakeTranslation(&v52, 0.0, v16, 0.0);
        [view setTransform3D:&v52];
      }

      v26 = [barButtonItemViews2 countByEnumeratingWithState:&v53 objects:v57 count:16];
    }

    while (v26);
  }

  navigationBar3 = [(TUNavigationBarDefaultCompressionAnimation *)self navigationBar];
  items = [navigationBar3 items];
  firstObject = [items firstObject];
  _bottomPalette = [firstObject _bottomPalette];
  contentView = [_bottomPalette contentView];
  v36 = [contentView conformsToProtocol:&unk_1F539EE30];

  v37 = 0.0;
  if (v36)
  {
    navigationBar4 = [(TUNavigationBarDefaultCompressionAnimation *)self navigationBar];
    items2 = [navigationBar4 items];
    firstObject2 = [items2 firstObject];
    _bottomPalette2 = [firstObject2 _bottomPalette];
    contentView2 = [_bottomPalette2 contentView];

    [contentView2 compressWithScale:v13 opacity:v10];
    [contentView2 paletteHeight];
    v37 = v43;
  }

  navigationBar5 = [(TUNavigationBarDefaultCompressionAnimation *)self navigationBar];
  navigationBar6 = navigationBar5;
  if (percentage <= 0.0)
  {
    v50 = *(MEMORY[0x1E695EFD0] + 16);
    *&v52.m11 = *MEMORY[0x1E695EFD0];
    *&v52.m13 = v50;
    *&v52.m21 = *(MEMORY[0x1E695EFD0] + 32);
  }

  else
  {
    [navigationBar5 bounds];
    v46 = v37 + CGRectGetHeight(v59);
    [(TUNavigationBarDefaultCompressionAnimation *)self translationOffset];
    v48 = v46 + v47;

    navigationBar6 = [(TUNavigationBarDefaultCompressionAnimation *)self navigationBar];
    v49 = *(MEMORY[0x1E695EFD0] + 16);
    *&v51.a = *MEMORY[0x1E695EFD0];
    *&v51.c = v49;
    *&v51.tx = *(MEMORY[0x1E695EFD0] + 32);
    CGAffineTransformTranslate(&v52, &v51, 0.0, -(v48 * percentage));
  }

  [navigationBar6 setTransform:&v52];

  [(TUNavigationBarDefaultCompressionAnimation *)self animateFloatingTabBarHiddenIfNeeded:percentage > 0.0];
}

- (double)maximumBarHeightForTraitCollection:(id)collection
{
  navigationBar = [(TUNavigationBarDefaultCompressionAnimation *)self navigationBar];
  [navigationBar frame];
  Height = CGRectGetHeight(v6);

  return Height;
}

- (BOOL)animationShouldBeginForScrollView:(id)view currentlyFullyCompressed:(BOOL)compressed
{
  viewCopy = view;
  window = [viewCopy window];
  [window safeAreaInsets];
  v8 = v7;
  [viewCopy contentOffset];
  v10 = v9;
  [viewCopy contentInset];
  if (v10 >= -v11)
  {
    [viewCopy contentOffset];
    v14 = v13;

    isDragging = v14 < -v8 || !compressed;
  }

  else
  {
    isDragging = [viewCopy isDragging];
  }

  return isDragging;
}

- (void)scrollViewIsAtTop:(BOOL)top offset:(double)offset
{
  topCopy = top;
  if ([(TUNavigationBarDefaultCompressionAnimation *)self hideTitleOnTop])
  {
    v6 = !topCopy;
    [(TUNavigationBarDefaultCompressionAnimation *)self setCompressTitleView:v6];
    if (v6)
    {
      navigationBar = [(TUNavigationBarDefaultCompressionAnimation *)self navigationBar];
      v9 = navigationBar;
      if (navigationBar)
      {
        [navigationBar transform];
      }

      else
      {
        memset(&v12, 0, sizeof(v12));
      }

      IsIdentity = CGAffineTransformIsIdentity(&v12);

      if (IsIdentity)
      {
        compressibleTitleView = [(TUNavigationBarDefaultCompressionAnimation *)self compressibleTitleView];
        [compressibleTitleView setContentAlpha:1.0];

        [(TUNavigationBarDefaultCompressionAnimation *)self animateFloatingTabBarHiddenIfNeeded:0];
      }
    }

    else
    {
      compressibleTitleView2 = [(TUNavigationBarDefaultCompressionAnimation *)self compressibleTitleView];
      [compressibleTitleView2 setContentAlpha:0.0];

      [(TUNavigationBarDefaultCompressionAnimation *)self animateFloatingTabBarHiddenIfNeeded:1];
    }
  }
}

- (void)setHideTitleOnTop:(BOOL)top
{
  topCopy = top;
  hideTitleOnTop = [(TUNavigationBarDefaultCompressionAnimation *)self hideTitleOnTop];
  self->_hideTitleOnTop = topCopy;
  if (topCopy && !hideTitleOnTop)
  {
    compressibleTitleView = [(TUNavigationBarDefaultCompressionAnimation *)self compressibleTitleView];
    [compressibleTitleView setContentAlpha:0.0];

    [(TUNavigationBarDefaultCompressionAnimation *)self animateFloatingTabBarHiddenIfNeeded:1];
  }
}

- (void)reloadWithTraitCollection:(id)collection
{
  navigationBar = [(TUNavigationBarDefaultCompressionAnimation *)self navigationBar];
  ts_fetchCompressibleTitleView = [navigationBar ts_fetchCompressibleTitleView];
  [(TUNavigationBarDefaultCompressionAnimation *)self setCompressibleTitleView:ts_fetchCompressibleTitleView];

  compressibleTitleView = [(TUNavigationBarDefaultCompressionAnimation *)self compressibleTitleView];
  view = [compressibleTitleView view];
  [view setMaskView:0];

  navigationBar2 = [(TUNavigationBarDefaultCompressionAnimation *)self navigationBar];
  ts_barButtonViews = [navigationBar2 ts_barButtonViews];
  [(TUNavigationBarDefaultCompressionAnimation *)self setBarButtonItemViews:ts_barButtonViews];

  navigationBar3 = [(TUNavigationBarDefaultCompressionAnimation *)self navigationBar];
  [navigationBar3 ts_resetButtonTransforms];
}

- (TUAnimationFloatFunction)opacityFunction
{
  opacityFunction = self->_opacityFunction;
  if (!opacityFunction)
  {
    v4 = objc_alloc_init(TUAnimationFloatFunction);
    v5 = [MEMORY[0x1E69793D0] functionWithName:*MEMORY[0x1E6979EB8]];
    [(TUAnimationFloatFunction *)v4 setTimingFunction:v5];

    [(TUAnimationFloatFunction *)v4 setSpeed:2.0];
    [(TUAnimationFloatFunction *)v4 setStartValue:1.0];
    [(TUAnimationFloatFunction *)v4 setEndValue:0.0];
    v6 = self->_opacityFunction;
    self->_opacityFunction = v4;

    opacityFunction = self->_opacityFunction;
  }

  return opacityFunction;
}

- (TUAnimationFloatFunction)scaleFunction
{
  scaleFunction = self->_scaleFunction;
  if (!scaleFunction)
  {
    v4 = objc_alloc_init(TUAnimationFloatFunction);
    v5 = [MEMORY[0x1E69793D0] functionWithName:*MEMORY[0x1E6979ED8]];
    [(TUAnimationFloatFunction *)v4 setTimingFunction:v5];

    [(TUAnimationFloatFunction *)v4 setSpeed:1.38];
    [(TUAnimationFloatFunction *)v4 setStartValue:1.0];
    [(TUAnimationFloatFunction *)v4 setEndValue:0.7];
    v6 = self->_scaleFunction;
    self->_scaleFunction = v4;

    scaleFunction = self->_scaleFunction;
  }

  return scaleFunction;
}

- (TUAnimationFloatFunction)translateFunction
{
  translateFunction = self->_translateFunction;
  if (!translateFunction)
  {
    v4 = objc_alloc_init(TUAnimationFloatFunction);
    v5 = [MEMORY[0x1E69793D0] functionWithName:*MEMORY[0x1E6979ED8]];
    [(TUAnimationFloatFunction *)v4 setTimingFunction:v5];

    [(TUAnimationFloatFunction *)v4 setStartValue:0.0];
    navigationBar = [(TUNavigationBarDefaultCompressionAnimation *)self navigationBar];
    [navigationBar frame];
    [(TUAnimationFloatFunction *)v4 setEndValue:CGRectGetHeight(v10) * 0.5];

    v7 = self->_translateFunction;
    self->_translateFunction = v4;

    translateFunction = self->_translateFunction;
  }

  return translateFunction;
}

- (void)animateFloatingTabBarHiddenIfNeeded:(BOOL)needed
{
  neededCopy = needed;
  tabBarController = [(TUNavigationBarDefaultCompressionAnimation *)self tabBarController];
  if (tabBarController)
  {
    tabBarController5 = tabBarController;
    tabBarController2 = [(TUNavigationBarDefaultCompressionAnimation *)self tabBarController];
    _uip_sidebar = [tabBarController2 _uip_sidebar];
    if ([_uip_sidebar _isVisible])
    {
    }

    else
    {
      tabBarController3 = [(TUNavigationBarDefaultCompressionAnimation *)self tabBarController];
      traitCollection = [tabBarController3 traitCollection];
      horizontalSizeClass = [traitCollection horizontalSizeClass];

      if (horizontalSizeClass != 2)
      {
        return;
      }

      tabBarController4 = [(TUNavigationBarDefaultCompressionAnimation *)self tabBarController];
      _uip_isTabBarHidden = [tabBarController4 _uip_isTabBarHidden];

      if (_uip_isTabBarHidden == neededCopy)
      {
        return;
      }

      tabBarController5 = [(TUNavigationBarDefaultCompressionAnimation *)self tabBarController];
      [tabBarController5 _uip_setTabBarHidden:neededCopy animated:{objc_msgSend(MEMORY[0x1E69DD250], "areAnimationsEnabled")}];
    }
  }
}

@end