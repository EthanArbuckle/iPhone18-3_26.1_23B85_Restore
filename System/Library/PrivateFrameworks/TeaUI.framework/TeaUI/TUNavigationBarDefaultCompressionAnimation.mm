@interface TUNavigationBarDefaultCompressionAnimation
- (BOOL)animationShouldBeginForScrollView:(id)a3 currentlyFullyCompressed:(BOOL)a4;
- (TUAnimationFloatFunction)opacityFunction;
- (TUAnimationFloatFunction)scaleFunction;
- (TUAnimationFloatFunction)translateFunction;
- (TUNavigationBarDefaultCompressionAnimation)initWithNavigationBar:(id)a3 tabBarController:(id)a4;
- (double)maximumBarHeightForTraitCollection:(id)a3;
- (void)animateFloatingTabBarHiddenIfNeeded:(BOOL)a3;
- (void)prepareForUpdates;
- (void)reloadWithTraitCollection:(id)a3;
- (void)scrollViewIsAtTop:(BOOL)a3 offset:(double)a4;
- (void)setHideTitleOnTop:(BOOL)a3;
- (void)updateWithPercentage:(double)a3;
@end

@implementation TUNavigationBarDefaultCompressionAnimation

- (TUNavigationBarDefaultCompressionAnimation)initWithNavigationBar:(id)a3 tabBarController:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = TUNavigationBarDefaultCompressionAnimation;
  v9 = [(TUNavigationBarDefaultCompressionAnimation *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_navigationBar, a3);
    v10->_compressTitleView = 1;
    v10->_translationOffset = -3.5;
    objc_storeStrong(&v10->_tabBarController, a4);
  }

  return v10;
}

- (void)prepareForUpdates
{
  v3 = [(TUNavigationBarDefaultCompressionAnimation *)self navigationBar];
  v4 = [v3 ts_fetchCompressibleTitleView];
  [(TUNavigationBarDefaultCompressionAnimation *)self setCompressibleTitleView:v4];

  v6 = [(TUNavigationBarDefaultCompressionAnimation *)self navigationBar];
  v5 = [v6 ts_barButtonViews];
  [(TUNavigationBarDefaultCompressionAnimation *)self setBarButtonItemViews:v5];
}

- (void)updateWithPercentage:(double)a3
{
  v58 = *MEMORY[0x1E69E9840];
  v5 = [(TUNavigationBarDefaultCompressionAnimation *)self compressibleTitleView];

  if (!v5)
  {
    v6 = [(TUNavigationBarDefaultCompressionAnimation *)self navigationBar];
    v7 = [v6 ts_fetchCompressibleTitleView];
    [(TUNavigationBarDefaultCompressionAnimation *)self setCompressibleTitleView:v7];
  }

  v8 = [(TUNavigationBarDefaultCompressionAnimation *)self opacityFunction];
  [v8 solveForTime:a3];
  v10 = v9;

  v11 = [(TUNavigationBarDefaultCompressionAnimation *)self scaleFunction];
  [v11 solveForTime:a3];
  v13 = v12;

  v14 = [(TUNavigationBarDefaultCompressionAnimation *)self translateFunction];
  [v14 solveForTime:a3];
  v16 = v15;

  if ([(TUNavigationBarDefaultCompressionAnimation *)self compressTitleView])
  {
    v17 = [(TUNavigationBarDefaultCompressionAnimation *)self compressibleTitleView];
    [v17 setContentAlpha:v10];
  }

  v18 = [(TUNavigationBarDefaultCompressionAnimation *)self barButtonItemViews];
  if (!v18 || (v19 = v18, -[TUNavigationBarDefaultCompressionAnimation barButtonItemViews](self, "barButtonItemViews"), v20 = objc_claimAutoreleasedReturnValue(), v21 = [v20 count], v20, v19, !v21))
  {
    v22 = [(TUNavigationBarDefaultCompressionAnimation *)self navigationBar];
    v23 = [v22 ts_barButtonViews];
    [(TUNavigationBarDefaultCompressionAnimation *)self setBarButtonItemViews:v23];
  }

  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  v24 = [(TUNavigationBarDefaultCompressionAnimation *)self barButtonItemViews];
  v25 = [v24 countByEnumeratingWithState:&v53 objects:v57 count:16];
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
          objc_enumerationMutation(v24);
        }

        v29 = *(*(&v53 + 1) + 8 * i);
        [v29 setContentAlpha:v10];
        v30 = [v29 view];
        CATransform3DMakeTranslation(&v52, 0.0, v16, 0.0);
        [v30 setTransform3D:&v52];
      }

      v26 = [v24 countByEnumeratingWithState:&v53 objects:v57 count:16];
    }

    while (v26);
  }

  v31 = [(TUNavigationBarDefaultCompressionAnimation *)self navigationBar];
  v32 = [v31 items];
  v33 = [v32 firstObject];
  v34 = [v33 _bottomPalette];
  v35 = [v34 contentView];
  v36 = [v35 conformsToProtocol:&unk_1F539EE30];

  v37 = 0.0;
  if (v36)
  {
    v38 = [(TUNavigationBarDefaultCompressionAnimation *)self navigationBar];
    v39 = [v38 items];
    v40 = [v39 firstObject];
    v41 = [v40 _bottomPalette];
    v42 = [v41 contentView];

    [v42 compressWithScale:v13 opacity:v10];
    [v42 paletteHeight];
    v37 = v43;
  }

  v44 = [(TUNavigationBarDefaultCompressionAnimation *)self navigationBar];
  v45 = v44;
  if (a3 <= 0.0)
  {
    v50 = *(MEMORY[0x1E695EFD0] + 16);
    *&v52.m11 = *MEMORY[0x1E695EFD0];
    *&v52.m13 = v50;
    *&v52.m21 = *(MEMORY[0x1E695EFD0] + 32);
  }

  else
  {
    [v44 bounds];
    v46 = v37 + CGRectGetHeight(v59);
    [(TUNavigationBarDefaultCompressionAnimation *)self translationOffset];
    v48 = v46 + v47;

    v45 = [(TUNavigationBarDefaultCompressionAnimation *)self navigationBar];
    v49 = *(MEMORY[0x1E695EFD0] + 16);
    *&v51.a = *MEMORY[0x1E695EFD0];
    *&v51.c = v49;
    *&v51.tx = *(MEMORY[0x1E695EFD0] + 32);
    CGAffineTransformTranslate(&v52, &v51, 0.0, -(v48 * a3));
  }

  [v45 setTransform:&v52];

  [(TUNavigationBarDefaultCompressionAnimation *)self animateFloatingTabBarHiddenIfNeeded:a3 > 0.0];
}

- (double)maximumBarHeightForTraitCollection:(id)a3
{
  v3 = [(TUNavigationBarDefaultCompressionAnimation *)self navigationBar];
  [v3 frame];
  Height = CGRectGetHeight(v6);

  return Height;
}

- (BOOL)animationShouldBeginForScrollView:(id)a3 currentlyFullyCompressed:(BOOL)a4
{
  v5 = a3;
  v6 = [v5 window];
  [v6 safeAreaInsets];
  v8 = v7;
  [v5 contentOffset];
  v10 = v9;
  [v5 contentInset];
  if (v10 >= -v11)
  {
    [v5 contentOffset];
    v14 = v13;

    v12 = v14 < -v8 || !a4;
  }

  else
  {
    v12 = [v5 isDragging];
  }

  return v12;
}

- (void)scrollViewIsAtTop:(BOOL)a3 offset:(double)a4
{
  v4 = a3;
  if ([(TUNavigationBarDefaultCompressionAnimation *)self hideTitleOnTop])
  {
    v6 = !v4;
    [(TUNavigationBarDefaultCompressionAnimation *)self setCompressTitleView:v6];
    if (v6)
    {
      v8 = [(TUNavigationBarDefaultCompressionAnimation *)self navigationBar];
      v9 = v8;
      if (v8)
      {
        [v8 transform];
      }

      else
      {
        memset(&v12, 0, sizeof(v12));
      }

      IsIdentity = CGAffineTransformIsIdentity(&v12);

      if (IsIdentity)
      {
        v11 = [(TUNavigationBarDefaultCompressionAnimation *)self compressibleTitleView];
        [v11 setContentAlpha:1.0];

        [(TUNavigationBarDefaultCompressionAnimation *)self animateFloatingTabBarHiddenIfNeeded:0];
      }
    }

    else
    {
      v7 = [(TUNavigationBarDefaultCompressionAnimation *)self compressibleTitleView];
      [v7 setContentAlpha:0.0];

      [(TUNavigationBarDefaultCompressionAnimation *)self animateFloatingTabBarHiddenIfNeeded:1];
    }
  }
}

- (void)setHideTitleOnTop:(BOOL)a3
{
  v3 = a3;
  v5 = [(TUNavigationBarDefaultCompressionAnimation *)self hideTitleOnTop];
  self->_hideTitleOnTop = v3;
  if (v3 && !v5)
  {
    v6 = [(TUNavigationBarDefaultCompressionAnimation *)self compressibleTitleView];
    [v6 setContentAlpha:0.0];

    [(TUNavigationBarDefaultCompressionAnimation *)self animateFloatingTabBarHiddenIfNeeded:1];
  }
}

- (void)reloadWithTraitCollection:(id)a3
{
  v4 = [(TUNavigationBarDefaultCompressionAnimation *)self navigationBar];
  v5 = [v4 ts_fetchCompressibleTitleView];
  [(TUNavigationBarDefaultCompressionAnimation *)self setCompressibleTitleView:v5];

  v6 = [(TUNavigationBarDefaultCompressionAnimation *)self compressibleTitleView];
  v7 = [v6 view];
  [v7 setMaskView:0];

  v8 = [(TUNavigationBarDefaultCompressionAnimation *)self navigationBar];
  v9 = [v8 ts_barButtonViews];
  [(TUNavigationBarDefaultCompressionAnimation *)self setBarButtonItemViews:v9];

  v10 = [(TUNavigationBarDefaultCompressionAnimation *)self navigationBar];
  [v10 ts_resetButtonTransforms];
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
    v6 = [(TUNavigationBarDefaultCompressionAnimation *)self navigationBar];
    [v6 frame];
    [(TUAnimationFloatFunction *)v4 setEndValue:CGRectGetHeight(v10) * 0.5];

    v7 = self->_translateFunction;
    self->_translateFunction = v4;

    translateFunction = self->_translateFunction;
  }

  return translateFunction;
}

- (void)animateFloatingTabBarHiddenIfNeeded:(BOOL)a3
{
  v3 = a3;
  v5 = [(TUNavigationBarDefaultCompressionAnimation *)self tabBarController];
  if (v5)
  {
    v13 = v5;
    v6 = [(TUNavigationBarDefaultCompressionAnimation *)self tabBarController];
    v7 = [v6 _uip_sidebar];
    if ([v7 _isVisible])
    {
    }

    else
    {
      v8 = [(TUNavigationBarDefaultCompressionAnimation *)self tabBarController];
      v9 = [v8 traitCollection];
      v10 = [v9 horizontalSizeClass];

      if (v10 != 2)
      {
        return;
      }

      v11 = [(TUNavigationBarDefaultCompressionAnimation *)self tabBarController];
      v12 = [v11 _uip_isTabBarHidden];

      if (v12 == v3)
      {
        return;
      }

      v13 = [(TUNavigationBarDefaultCompressionAnimation *)self tabBarController];
      [v13 _uip_setTabBarHidden:v3 animated:{objc_msgSend(MEMORY[0x1E69DD250], "areAnimationsEnabled")}];
    }
  }
}

@end