@interface SBFolderScrollAccessoryView
- (CGSize)intrinsicContentSize;
- (SBFolderScrollAccessoryView)initWithFolder:(id)folder pageControl:(id)control;
- (id)_layoutPageControlConfiguredForNumberOfPages:(int64_t)pages;
- (id)_layoutPageControlMatchingPageControl:(id)control;
- (id)_pageControlContentView;
- (id)_pageIndicatorsView;
- (int64_t)_numberOfPagesForWidth:(double)width maxPageCount:(unint64_t)count;
- (void)_applyCurrentMode;
- (void)_applyMatchingAnimationsForAuxiliaryViewMatchingContentView:(id)view;
- (void)_clearMatchingAnimationsForAuxiliaryView;
- (void)_getCustomPaddingForNumberOfPages:(unint64_t)pages backgroundViewSize:(CGSize)size horizontalPadding:(double *)padding verticalPadding:(double *)verticalPadding layoutPageControl:(id *)control;
- (void)_setUpAnimation;
- (void)_updateForModePropertyChanged;
- (void)_updateGlassBackgroundAllowingGrouping:(BOOL)grouping;
- (void)dealloc;
- (void)layoutSubviews;
- (void)setAuxiliaryView:(id)view;
- (void)setBackgroundView:(id)view;
- (void)setMode:(int64_t)mode;
@end

@implementation SBFolderScrollAccessoryView

- (CGSize)intrinsicContentSize
{
  auxiliaryView = [(SBFolderScrollAccessoryView *)self auxiliaryView];
  v4 = auxiliaryView;
  if (auxiliaryView)
  {
    [auxiliaryView intrinsicContentSize];
    v6 = v5;
    v8 = v7;
    folder = [(SBFolderScrollAccessoryView *)self folder];
    v10 = -[SBFolderScrollAccessoryView _numberOfPagesForWidth:maxPageCount:](self, "_numberOfPagesForWidth:maxPageCount:", [folder maxListCount], v6);

    pageControl = [(SBFolderScrollAccessoryView *)self pageControl];
    numberOfPages = [pageControl numberOfPages];

    v22 = 0.0;
    v23 = 0.0;
    if (numberOfPages >= v10)
    {
      v13 = v10;
    }

    else
    {
      v13 = numberOfPages;
    }

    v21 = 0;
    [(SBFolderScrollAccessoryView *)self _getCustomPaddingForNumberOfPages:v13 backgroundViewSize:&v23 horizontalPadding:&v22 verticalPadding:&v21 layoutPageControl:v6, v8];
    pageControl2 = v21;
    [pageControl2 _setCustomHorizontalPadding:v23];
    [pageControl2 _setCustomVerticalPadding:v22];
    [pageControl2 sizeForNumberOfPages:v13];
  }

  else
  {
    pageControl2 = [(SBFolderScrollAccessoryView *)self pageControl];
    [pageControl2 intrinsicContentSize];
  }

  v17 = v15;
  v18 = v16;

  v19 = v17;
  v20 = v18;
  result.height = v20;
  result.width = v19;
  return result;
}

- (void)layoutSubviews
{
  v31.receiver = self;
  v31.super_class = SBFolderScrollAccessoryView;
  [(SBFolderScrollAccessoryView *)&v31 layoutSubviews];
  [(SBFolderScrollAccessoryView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  pageControl = [(SBFolderScrollAccessoryView *)self pageControl];
  auxiliaryView = [(SBFolderScrollAccessoryView *)self auxiliaryView];
  folder = [(SBFolderScrollAccessoryView *)self folder];
  maxListCount = [folder maxListCount];

  traitCollection = [(SBFolderScrollAccessoryView *)self traitCollection];
  [traitCollection displayScale];
  v17 = v16;

  if (auxiliaryView)
  {
    [auxiliaryView intrinsicContentSize];
    v19 = v18;
    v21 = v20;
    v22 = [(SBFolderScrollAccessoryView *)self _numberOfPagesForWidth:maxListCount maxPageCount:?];
    superview = [auxiliaryView superview];
    [superview bounds];

    BSRectWithSize();
    UIRectCenteredIntegralRectScale();
    BSRectWithSize();
    [auxiliaryView setBounds:v17];
    UIRectGetCenter();
    [auxiliaryView setCenter:?];
    [pageControl _setCustomIndicatorSpacing:6.0];
    [pageControl _setPreferredNumberOfVisibleIndicators:v22];
    numberOfPages = [pageControl numberOfPages];
    if (numberOfPages < v22)
    {
      v22 = numberOfPages;
    }

    v29 = 0.0;
    v30 = 0.0;
    [(SBFolderScrollAccessoryView *)self _getCustomPaddingForNumberOfPages:v22 backgroundViewSize:&v30 horizontalPadding:&v29 verticalPadding:0 layoutPageControl:v19, v21];
    [pageControl _setCustomHorizontalPadding:v30];
    [pageControl _setCustomVerticalPadding:v29];
    [pageControl sizeForNumberOfPages:v22];
    BSRectWithSize();
    UIRectCenteredIntegralRectScale();
    [pageControl setFrame:v17];
    backgroundView = [(SBFolderScrollAccessoryView *)self backgroundView];

    if (backgroundView)
    {
      [pageControl bounds];
      v27 = v26 * 0.5;
    }

    else
    {
      v27 = 0.0;
    }

    _pageControlContentView = [(SBFolderScrollAccessoryView *)self _pageControlContentView];
    [_pageControlContentView _setContinuousCornerRadius:v27];
  }

  else
  {
    [pageControl _setPreferredNumberOfVisibleIndicators:maxListCount];
    [pageControl setFrame:{v4, v6, v8, v10}];
  }
}

- (id)_pageControlContentView
{
  pageControl = [(SBFolderScrollAccessoryView *)self pageControl];
  subviews = [pageControl subviews];
  firstObject = [subviews firstObject];

  return firstObject;
}

- (SBFolderScrollAccessoryView)initWithFolder:(id)folder pageControl:(id)control
{
  v17[2] = *MEMORY[0x1E69E9840];
  folderCopy = folder;
  controlCopy = control;
  v16.receiver = self;
  v16.super_class = SBFolderScrollAccessoryView;
  v9 = [(SBFolderScrollAccessoryView *)&v16 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_folder, folder);
    objc_storeStrong(&v10->_pageControl, control);
    [(SBFolderScrollAccessoryView *)v10 addSubview:controlCopy];
    [(SBFolderScrollAccessoryView *)v10 _setUpAnimation];
    v11 = objc_opt_self();
    v17[0] = v11;
    v12 = objc_opt_self();
    v17[1] = v12;
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:2];
    v14 = [(SBFolderScrollAccessoryView *)v10 registerForTraitChanges:v13 withTarget:v10 action:sel__updateGlassBackground];

    [(SBFolderScrollAccessoryView *)v10 _updateGlassBackground];
  }

  return v10;
}

- (void)dealloc
{
  modeAnimatableProperty = [(SBFolderScrollAccessoryView *)self modeAnimatableProperty];
  [modeAnimatableProperty invalidate];

  v4.receiver = self;
  v4.super_class = SBFolderScrollAccessoryView;
  [(SBFolderScrollAccessoryView *)&v4 dealloc];
}

- (void)_updateGlassBackgroundAllowingGrouping:(BOOL)grouping
{
  groupingCopy = grouping;
  backgroundView = [(SBFolderScrollAccessoryView *)self backgroundView];

  if (backgroundView)
  {
    traitCollection = [(SBFolderScrollAccessoryView *)self traitCollection];
    v6 = [MEMORY[0x1E69DD1B8] sbh_dockGlassUserInterfaceStyleFromTraitCollection:traitCollection];
    _pageControlContentView = [(SBFolderScrollAccessoryView *)self _pageControlContentView];
    [_pageControlContentView sbh_applySearchPillGlassWithUserInterfaceStyle:v6 grouping:groupingCopy];
  }
}

- (void)setAuxiliaryView:(id)view
{
  viewCopy = view;
  v6 = viewCopy;
  if (self->_auxiliaryView != viewCopy)
  {
    v15 = viewCopy;
    [(SBFolderScrollAccessoryView *)self _clearMatchingAnimationsForAuxiliaryView];
    [(UIView *)self->_auxiliaryView removeFromSuperview];
    objc_storeStrong(&self->_auxiliaryView, view);
    pageControl = [(SBFolderScrollAccessoryView *)self pageControl];
    v8 = pageControl;
    if (v15)
    {
      [(SBFolderScrollAccessoryView *)self addSubview:?];
      v9 = MEMORY[0x1E69DCAB8];
      v10 = [MEMORY[0x1E69DCAD8] configurationWithPointSize:11.0];
      v11 = [v9 systemImageNamed:@"circlebadge.fill" withConfiguration:v10];

      [v8 setPreferredIndicatorImage:v11];
      _pageControlContentView = [(SBFolderScrollAccessoryView *)self _pageControlContentView];
      if (_pageControlContentView)
      {
        [(SBFolderScrollAccessoryView *)self _applyMatchingAnimationsForAuxiliaryViewMatchingContentView:_pageControlContentView];
        backgroundView = [(SBFolderScrollAccessoryView *)self backgroundView];

        if (backgroundView)
        {
          [(SBFolderScrollAccessoryView *)self _updateGlassBackgroundAllowingGrouping:0];
        }
      }

      [(UIView *)v15 setUserInteractionEnabled:0];
      [(SBFolderScrollAccessoryView *)self _updateForModePropertyChanged];
      v14 = [(SBFolderScrollAccessoryView *)self _layoutPageControlMatchingPageControl:v8];
      [(SBFolderScrollAccessoryView *)self setLayoutPageControl:v14];
    }

    else
    {
      [pageControl setPreferredIndicatorImage:?];
      [(SBFolderScrollAccessoryView *)self setLayoutPageControl:0];
    }

    v6 = v15;
  }

  MEMORY[0x1EEE66BB8](viewCopy, v6);
}

- (void)setBackgroundView:(id)view
{
  viewCopy = view;
  if (self->_backgroundView != viewCopy)
  {
    v8 = viewCopy;
    objc_storeStrong(&self->_backgroundView, view);
    viewCopy = v8;
    if (v8)
    {
      pageControl = [(SBFolderScrollAccessoryView *)self pageControl];
      v7 = objc_alloc_init(MEMORY[0x1E69DD250]);
      [pageControl _setPlatterBackgroundView:v7];

      [(SBFolderScrollAccessoryView *)self _updateGlassBackground];
      [(SBFolderScrollAccessoryView *)self setNeedsLayout];

      viewCopy = v8;
    }
  }
}

- (void)setMode:(int64_t)mode
{
  if (self->_mode != mode)
  {
    self->_mode = mode;
    [(SBFolderScrollAccessoryView *)self _applyCurrentMode];
  }
}

- (void)_setUpAnimation
{
  v16[1] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E69D3FC8]);
  pageControlFadeInSettings = self->_pageControlFadeInSettings;
  self->_pageControlFadeInSettings = v3;

  [(SBFFluidBehaviorSettings *)self->_pageControlFadeInSettings setDampingRatio:0.6529];
  [(SBFFluidBehaviorSettings *)self->_pageControlFadeInSettings setResponse:0.4558];
  v5 = self->_pageControlFadeInSettings;
  v17 = CAFrameRateRangeMake(20.0, 120.0, 30.0);
  [(SBFFluidBehaviorSettings *)v5 setFrameRateRange:1114139 highFrameRateReason:*&v17.minimum, *&v17.maximum, *&v17.preferred];
  v6 = objc_alloc_init(MEMORY[0x1E69D3FC8]);
  auxiliaryViewFadeInSettings = self->_auxiliaryViewFadeInSettings;
  self->_auxiliaryViewFadeInSettings = v6;

  [(SBFFluidBehaviorSettings *)self->_auxiliaryViewFadeInSettings setDampingRatio:1.2883];
  [(SBFFluidBehaviorSettings *)self->_auxiliaryViewFadeInSettings setResponse:0.3598];
  v8 = self->_auxiliaryViewFadeInSettings;
  v18 = CAFrameRateRangeMake(20.0, 120.0, 30.0);
  [(SBFFluidBehaviorSettings *)v8 setFrameRateRange:1114139 highFrameRateReason:*&v18.minimum, *&v18.maximum, *&v18.preferred];
  v9 = objc_alloc_init(MEMORY[0x1E69DD268]);
  modeAnimatableProperty = self->_modeAnimatableProperty;
  self->_modeAnimatableProperty = v9;

  [(UIViewFloatAnimatableProperty *)self->_modeAnimatableProperty setValue:0.0];
  objc_initWeak(&location, self);
  v11 = MEMORY[0x1E69DD250];
  v16[0] = self->_modeAnimatableProperty;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:1];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __46__SBFolderScrollAccessoryView__setUpAnimation__block_invoke;
  v13[3] = &unk_1E808C278;
  objc_copyWeak(&v14, &location);
  [v11 _createTransformerWithInputAnimatableProperties:v12 presentationValueChangedCallback:v13];

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

void __46__SBFolderScrollAccessoryView__setUpAnimation__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateForModePropertyChanged];
}

- (void)_applyCurrentMode
{
  mode = [(SBFolderScrollAccessoryView *)self mode];
  if (mode)
  {
    [(SBFolderScrollAccessoryView *)self auxiliaryViewFadeInSettings];
  }

  else
  {
    [(SBFolderScrollAccessoryView *)self pageControlFadeInSettings];
  }
  v4 = ;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __48__SBFolderScrollAccessoryView__applyCurrentMode__block_invoke;
  v5[3] = &unk_1E80897D8;
  v6 = mode == 0;
  v5[4] = self;
  [MEMORY[0x1E69DD250] sb_animateWithSettings:v4 mode:3 animations:v5 completion:0];
}

void __48__SBFolderScrollAccessoryView__applyCurrentMode__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) modeAnimatableProperty];
  v4 = v2;
  v3 = 1.0;
  if (v1)
  {
    v3 = 0.0;
  }

  [v2 setValue:v3];
}

- (void)_updateForModePropertyChanged
{
  modeAnimatableProperty = [(SBFolderScrollAccessoryView *)self modeAnimatableProperty];
  [modeAnimatableProperty presentationValue];
  v32 = v4;

  if ([(SBFolderScrollAccessoryView *)self mode])
  {
    *&v5.f64[0] = v32;
    v5.f64[1] = *&v32 * 0.02;
    v6 = vdivq_f64(v5, vdupq_n_s64(0xBFD6666666666666));
    __asm { FMOV            V1.2D, #1.0 }

    v33 = vminnmq_f64(vmaxnmq_f64(vaddq_f64(v6, _Q1), xmmword_1BEE85C80), _Q1);
    v12 = *&v32 + -0.3;
    v13 = 0.7;
    v14 = (*&v32 + -0.3) / 0.7;
    v15 = v14 + 0.0;
    v16 = 0.98;
  }

  else
  {
    v17.f64[0] = *&v32 + -0.7;
    v17.f64[1] = (*&v32 + -0.7) * 0.02;
    v18 = vdivq_f64(v17, xmmword_1BEE85C90);
    v19.i64[0] = *&vaddq_f64(v18, 0);
    v19.i64[1] = *&vsubq_f64(vdupq_n_s64(0x3FEF5C28F5C28F5CuLL), v18).f64[1];
    *&v18.f64[1] = v19.i64[1];
    __asm { FMOV            V1.2D, #1.0 }

    v33 = vminnmq_f64(vbslq_s8(vcgtq_f64(v18, xmmword_1BEE85C80), v19, xmmword_1BEE85C80), _Q1);
    v12 = *&v32 + -1.0;
    v13 = 0.35;
    v16 = 1.0;
    v14 = (*&v32 + -1.0) / 0.35 + 1.0;
    v15 = v14;
  }

  v21 = v14 <= 0.0;
  v22 = 0.0;
  if (!v21)
  {
    v22 = v15;
  }

  v23 = fmin(v22, 1.0);
  v24 = fmin(fmax(v12 * 0.02 / v13 + v16, 0.98), 1.0);
  pageControl = [(SBFolderScrollAccessoryView *)self pageControl];
  [pageControl _setIndicatorOpacity:v33.f64[0]];
  memset(&v36, 0, sizeof(v36));
  v26 = BSFloatEqualToFloat();
  v27 = MEMORY[0x1E695EFD0];
  if (v26)
  {
    v28 = *(MEMORY[0x1E695EFD0] + 16);
    *&v36.a = *MEMORY[0x1E695EFD0];
    *&v36.c = v28;
    *&v36.tx = *(MEMORY[0x1E695EFD0] + 32);
  }

  else
  {
    CGAffineTransformMakeScale(&v36, v33.f64[1], v33.f64[1]);
  }

  _pageIndicatorsView = [(SBFolderScrollAccessoryView *)self _pageIndicatorsView];
  v35 = v36;
  [_pageIndicatorsView setTransform:&v35];

  auxiliaryView = [(SBFolderScrollAccessoryView *)self auxiliaryView];
  [auxiliaryView setAlpha:v23];
  memset(&v35, 0, sizeof(v35));
  if (BSFloatEqualToFloat())
  {
    v31 = v27[1];
    *&v35.a = *v27;
    *&v35.c = v31;
    *&v35.tx = v27[2];
  }

  else
  {
    CGAffineTransformMakeScale(&v35, v24, v24);
  }

  v34 = v35;
  [auxiliaryView setTransform:&v34];
}

- (id)_pageIndicatorsView
{
  pageControl = [(SBFolderScrollAccessoryView *)self pageControl];
  subviews = [pageControl subviews];
  firstObject = [subviews firstObject];

  if (firstObject && ([firstObject subviews], v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "count"), v5, v6 >= 2))
  {
    subviews2 = [firstObject subviews];
    v8 = [subviews2 objectAtIndex:1];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (int64_t)_numberOfPagesForWidth:(double)width maxPageCount:(unint64_t)count
{
  auxiliaryView = [(SBFolderScrollAccessoryView *)self auxiliaryView];

  if (!auxiliaryView)
  {
    return count;
  }

  traitCollection = [(SBFolderScrollAccessoryView *)self traitCollection];
  [traitCollection displayScale];
  BSFloatRoundForScale();
  v10 = v9;

  v11 = vcvtmd_s64_f64((width - v10 - v10 + 7.5) / 14.0);
  if (v11 >= count)
  {
    return count;
  }

  else
  {
    return v11;
  }
}

- (id)_layoutPageControlMatchingPageControl:(id)control
{
  v3 = MEMORY[0x1E69DCD10];
  controlCopy = control;
  v5 = objc_alloc_init(v3);
  [v5 setHidden:1];
  preferredIndicatorImage = [controlCopy preferredIndicatorImage];
  [v5 setPreferredIndicatorImage:preferredIndicatorImage];

  backgroundStyle = [controlCopy backgroundStyle];
  [v5 setBackgroundStyle:backgroundStyle];
  [v5 _setCustomHorizontalPadding:0.0];
  [v5 _setCustomVerticalPadding:0.0];

  return v5;
}

- (id)_layoutPageControlConfiguredForNumberOfPages:(int64_t)pages
{
  layoutPageControl = [(SBFolderScrollAccessoryView *)self layoutPageControl];
  if ([layoutPageControl numberOfPages] != pages || (objc_msgSend(layoutPageControl, "_customHorizontalPadding"), !BSFloatIsZero()) || (objc_msgSend(layoutPageControl, "_customVerticalPadding"), (BSFloatIsZero() & 1) == 0))
  {
    [layoutPageControl setNumberOfPages:pages];
    [layoutPageControl _setCustomIndicatorSpacing:6.0];
    [layoutPageControl _setCustomHorizontalPadding:0.0];
    [layoutPageControl _setCustomVerticalPadding:0.0];
    [layoutPageControl intrinsicContentSize];
    BSRectWithSize();
    [layoutPageControl setFrame:?];
    [layoutPageControl setNeedsLayout];
    [layoutPageControl layoutIfNeeded];
  }

  return layoutPageControl;
}

- (void)_getCustomPaddingForNumberOfPages:(unint64_t)pages backgroundViewSize:(CGSize)size horizontalPadding:(double *)padding verticalPadding:(double *)verticalPadding layoutPageControl:(id *)control
{
  height = size.height;
  width = size.width;
  v27 = [(SBFolderScrollAccessoryView *)self _layoutPageControlConfiguredForNumberOfPages:?];
  [v27 _indicatorFrameForPage:0];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  [v27 _indicatorFrameForPage:pages - 1];
  v31.origin.x = v21;
  v31.origin.y = v22;
  v31.size.width = v23;
  v31.size.height = v24;
  v29.origin.x = v14;
  v29.origin.y = v16;
  v29.size.width = v18;
  v29.size.height = v20;
  v30 = CGRectUnion(v29, v31);
  if (padding)
  {
    *padding = (width - v30.size.width) * 0.5;
  }

  if (verticalPadding)
  {
    *verticalPadding = (height - v30.size.height) * 0.5;
  }

  v25 = v27;
  if (control)
  {
    v26 = v27;
    v25 = v27;
    *control = v27;
  }
}

- (void)_clearMatchingAnimationsForAuxiliaryView
{
  auxiliaryView = [(SBFolderScrollAccessoryView *)self auxiliaryView];
  layer = [auxiliaryView layer];

  [layer removeAnimationForKey:@"SBFolderScrollAccessoryAuxiliaryViewMatchMoveAnimation"];
  [layer removeAnimationForKey:@"SBFolderScrollAccessoryAuxiliaryViewScaleAnimation"];
}

- (void)_applyMatchingAnimationsForAuxiliaryViewMatchingContentView:(id)view
{
  v12[1] = *MEMORY[0x1E69E9840];
  viewCopy = view;
  auxiliaryView = [(SBFolderScrollAccessoryView *)self auxiliaryView];
  layer = [auxiliaryView layer];

  layer2 = [viewCopy layer];

  v8 = objc_alloc_init(MEMORY[0x1E69793B8]);
  [v8 setSourceLayer:layer2];
  [v8 setUsesNormalizedCoordinates:1];
  v9 = [MEMORY[0x1E696B098] valueWithCGPoint:{0.5, 0.5}];
  v12[0] = v9;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];
  [v8 setSourcePoints:v10];

  [v8 setDuration:INFINITY];
  [v8 setRemovedOnCompletion:0];
  [layer addAnimation:v8 forKey:@"SBFolderScrollAccessoryAuxiliaryViewMatchMoveAnimation"];
  v11 = objc_alloc_init(MEMORY[0x1E69793C0]);
  [v11 setSourceLayer:layer2];
  [v11 setKeyPath:@"transform"];
  [v11 setAdditive:1];
  [v11 setDuration:INFINITY];
  [v11 setRemovedOnCompletion:0];
  [layer addAnimation:v11 forKey:@"SBFolderScrollAccessoryAuxiliaryViewScaleAnimation"];
}

@end