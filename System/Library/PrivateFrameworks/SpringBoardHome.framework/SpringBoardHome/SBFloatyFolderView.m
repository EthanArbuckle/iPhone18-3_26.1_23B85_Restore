@interface SBFloatyFolderView
- (BOOL)_tapToCloseGestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4;
- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4;
- (BOOL)gestureRecognizer:(id)a3 shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)a4;
- (BOOL)locationCountsAsInsideFolder:(CGPoint)a3;
- (BOOL)scribbleInteraction:(id)a3 shouldBeginAtLocation:(CGPoint)a4;
- (CGPoint)_scrollView:(id)a3 adjustedOffsetForOffset:(CGPoint)a4 translation:(CGPoint)a5 startPoint:(CGPoint)a6 locationInView:(CGPoint)a7 horizontalVelocity:(double *)a8 verticalVelocity:(double *)a9;
- (CGPoint)visibleFolderRelativeImageCenterForIcon:(id)a3;
- (CGRect)_frameForScalingView;
- (CGRect)_pageBackgroundFrameForPageRect:(CGRect)a3;
- (SBFloatyFolderView)initWithConfiguration:(id)a3;
- (double)_rubberBandIntervalForOverscroll;
- (double)_titleFontSize;
- (double)cornerRadius;
- (id)_newPageBackgroundView;
- (id)accessibilityTintColorForBackgroundView:(id)a3;
- (id)floatyFolderConfiguration;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
- (id)legibilitySettingsForIconListViews;
- (void)_configureGesturesIfNecessary;
- (void)_didAddIconListView:(id)a3;
- (void)_handleLongPressGesture:(id)a3;
- (void)_handleOutsideTap:(id)a3;
- (void)_handlePinchGesture:(id)a3;
- (void)_layoutSubviews;
- (void)_setScrollViewNeedsToClipCorners:(BOOL)a3;
- (void)_updateScrollingState:(BOOL)a3;
- (void)dealloc;
- (void)fadeContentForMagnificationFraction:(double)a3;
- (void)fadeContentForMinificationFraction:(double)a3;
- (void)iconFadeAnimator:(id)a3 wantsToApplyAlpha:(double)a4;
- (void)scrollViewDidScroll:(id)a3;
- (void)setBackgroundAlpha:(double)a3;
- (void)setBackgroundEffect:(unint64_t)a3;
- (void)settings:(id)a3 changedValueForKey:(id)a4;
@end

@implementation SBFloatyFolderView

- (CGRect)_frameForScalingView
{
  [(SBFloatyFolderView *)self bounds];

  [(SBFloatyFolderView *)self _pageBackgroundFrameForPageRect:?];
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (id)floatyFolderConfiguration
{
  v3 = [(SBFolderView *)self listLayoutProvider];
  v4 = [(SBFolderView *)self iconLocation];
  v5 = [v3 layoutForIconLocation:v4];
  if (objc_opt_respondsToSelector())
  {
    v6 = [v5 floatyFolderVisualConfiguration];
  }

  else
  {
    v6 = objc_alloc_init(SBHFloatyFolderVisualConfiguration);
  }

  v7 = v6;

  return v7;
}

- (double)cornerRadius
{
  v2 = [(SBFloatyFolderView *)self floatyFolderConfiguration];
  [v2 continuousCornerRadius];
  v4 = v3;

  return v4;
}

- (SBFloatyFolderView)initWithConfiguration:(id)a3
{
  v4 = a3;
  v30.receiver = self;
  v30.super_class = SBFloatyFolderView;
  v5 = [(SBFolderView *)&v30 initWithConfiguration:v4];
  if (v5)
  {
    v6 = objc_opt_self();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v5->_backgroundEffect = [v4 backgroundEffect];
    }

    v8 = objc_alloc_init(SBFloatyFolderBackgroundClipView);
    scrollClipView = v5->_scrollClipView;
    v5->_scrollClipView = v8;

    [(SBFloatyFolderBackgroundClipView *)v5->_scrollClipView setBackgroundEffect:v5->_backgroundEffect];
    v10 = [(SBFloatyFolderBackgroundClipView *)v5->_scrollClipView backgroundView];
    [v10 setDelegate:v5];

    v11 = v5->_scrollClipView;
    v12 = [(SBFolderView *)v5 scrollView];
    [(SBFloatyFolderBackgroundClipView *)v11 addSubview:v12];

    v13 = [(SBFolderView *)v5 scalingView];
    [v13 addSubview:v5->_scrollClipView];
    v14 = [(SBFolderView *)v5 pageControl];
    [v13 addSubview:v14];

    v15 = [(SBFolderView *)v5 _titleTextField];
    v16 = [objc_alloc(MEMORY[0x1E69DCEC8]) initWithDelegate:v5];
    titleScribbleInteraction = v5->_titleScribbleInteraction;
    v5->_titleScribbleInteraction = v16;

    [v15 addInteraction:v5->_titleScribbleInteraction];
    [(SBFloatyFolderView *)v5 addSubview:v15];
    v18 = [(SBFloatyFolderView *)v5 floatyFolderConfiguration];
    [v18 pageControlCustomPadding];
    v20 = v19;
    v22 = v21;

    v23 = [(SBFolderView *)v5 pageControl];
    v24 = v23;
    if (v20 > 0.0)
    {
      [v23 _setCustomHorizontalPadding:v20];
    }

    if (v22 > 0.0)
    {
      [v24 _setCustomVerticalPadding:v22];
    }

    v25 = +[SBHHomeScreenDomain rootSettings];
    v26 = [v25 folderSettings];
    folderSettings = v5->_folderSettings;
    v5->_folderSettings = v26;

    [(PTSettings *)v5->_folderSettings addKeyObserver:v5];
    [(SBFloatyFolderView *)v5 _configureGesturesIfNecessary];
    [(SBFolderView *)v5 _updateTitleLegibilitySettings];
    [(SBFolderView *)v5 _updateIconListLegibilitySettings];
    v28 = [MEMORY[0x1E696AD88] defaultCenter];
    [v28 addObserver:v5 selector:sel_accessibilityReduceTransparencyDidChange_ name:*MEMORY[0x1E69DD920] object:0];
  }

  return v5;
}

- (void)dealloc
{
  [(PTSettings *)self->_folderSettings removeKeyObserver:self];
  v3.receiver = self;
  v3.super_class = SBFloatyFolderView;
  [(SBFolderView *)&v3 dealloc];
}

- (void)setBackgroundAlpha:(double)a3
{
  v4 = [(SBFloatyFolderBackgroundClipView *)self->_scrollClipView backgroundView];
  [v4 setAlpha:a3];
}

- (CGPoint)visibleFolderRelativeImageCenterForIcon:(id)a3
{
  v4 = a3;
  v5 = [(SBFolderView *)self currentIconListView];
  if ([v5 containsIcon:v4])
  {
    [v5 centerForIcon:v4];
    v7 = v6;
    v9 = v8;
    v10 = [(SBFolderView *)self scalingView];
    [v10 convertPoint:v5 fromView:{v7, v9}];
    v12 = v11;
    v14 = v13;
  }

  else
  {
    v12 = *MEMORY[0x1E695EFF8];
    v14 = *(MEMORY[0x1E695EFF8] + 8);
  }

  v15 = v12;
  v16 = v14;
  result.y = v16;
  result.x = v15;
  return result;
}

- (id)legibilitySettingsForIconListViews
{
  if (UIAccessibilityIsReduceTransparencyEnabled())
  {
    [(SBFloatyFolderView *)self _frameForScalingView];
    v3 = [(SBFolderView *)self accessibilityLegibilitySettingsForRect:2 tintStyle:?];
  }

  else
  {
    v5.receiver = self;
    v5.super_class = SBFloatyFolderView;
    v3 = [(SBFolderView *)&v5 legibilitySettingsForIconListViews];
  }

  return v3;
}

- (void)setBackgroundEffect:(unint64_t)a3
{
  if ([(SBFloatyFolderView *)self backgroundEffect]!= a3)
  {
    self->_backgroundEffect = a3;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __42__SBFloatyFolderView_setBackgroundEffect___block_invoke;
    v5[3] = &__block_descriptor_40_e46_v24__0__SBFloatyFolderBackgroundClipView_8_B16l;
    v5[4] = a3;
    [(SBFloatyFolderView *)self enumeratePageBackgroundViewsUsingBlock:v5];
  }
}

- (id)_newPageBackgroundView
{
  v3 = objc_alloc_init(SBFloatyFolderBackgroundClipView);
  v4 = [(SBFloatyFolderBackgroundClipView *)v3 backgroundView];
  [v4 setDelegate:self];

  [(SBFloatyFolderBackgroundClipView *)v3 setBackgroundEffect:[(SBFloatyFolderView *)self backgroundEffect]];
  return v3;
}

- (void)_didAddIconListView:(id)a3
{
  v4.receiver = self;
  v4.super_class = SBFloatyFolderView;
  [(SBFolderView *)&v4 _didAddIconListView:a3];
  [(SBFolderView *)self setNeedsLayout];
}

- (void)_layoutSubviews
{
  v3 = [(SBFloatyFolderView *)self floatyFolderConfiguration];
  [(SBFloatyFolderView *)self bounds];
  v59 = v5;
  v60 = v4;
  v61 = v6;
  v62 = v7;
  v8 = [(SBFloatyFolderView *)self traitCollection];
  [v8 displayScale];
  v64 = v9;

  v10 = [(SBFolderView *)self scalingView];
  [v10 bounds];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  [(SBFloatyFolderBackgroundClipView *)self->_scrollClipView setFrame:?];
  [(SBFloatyFolderBackgroundClipView *)self->_scrollClipView convertRect:v10 fromView:v12, v14, v16, v18];
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v27 = [(SBFolderView *)self scrollView];
  [v27 setFrame:{v20, v22, v24, v26}];

  v28 = [(SBFolderView *)self pageControl];
  [v3 pageControlAreaHeight];
  v30 = v29;
  memset(&slice, 0, sizeof(slice));
  memset(&remainder, 0, sizeof(remainder));
  v70.origin.x = v12;
  v70.origin.y = v14;
  v70.size.width = v16;
  v70.size.height = v18;
  CGRectDivide(v70, &slice, &remainder, v30, CGRectMaxYEdge);
  [v28 sizeToFit];
  UIRectGetCenter();
  [v28 setCenter:?];
  [(SBFloatyFolderView *)self _frameForScalingView];
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v38 = v37;
  rect = v37;
  [(SBFloatyFolderView *)self safeAreaInsets];
  v40 = v60 + v39;
  v42 = v59 + v41;
  v44 = v61 - (v39 + v43);
  memset(&v67, 0, sizeof(v67));
  v46 = v62 - (v41 + v45);
  memset(&v66, 0, sizeof(v66));
  [v3 titleBottomInset];
  v63 = v47;
  v71.origin.x = v32;
  v71.origin.y = v34;
  v71.size.width = v36;
  v65 = v36;
  v71.size.height = v38;
  MinY = CGRectGetMinY(v71);
  v72.origin.x = v40;
  v72.origin.y = v42;
  v72.size.width = v44;
  v72.size.height = v46;
  v49 = v63 + MinY + CGRectGetMinY(v72);
  v73.origin.x = v40;
  v73.origin.y = v42;
  v73.size.width = v44;
  v73.size.height = v46;
  CGRectDivide(v73, &v67, &v66, v49, CGRectMinYEdge);
  v50 = [(SBFolderView *)self _titleTextField];
  [v50 sizeThatFits:{v67.size.width, v67.size.height}];
  v52 = v51;
  [v3 titleHorizontalInset];
  v74.origin.x = v32;
  v74.origin.y = v34;
  v74.size.width = v36;
  v74.size.height = rect;
  CGRectGetWidth(v74);
  if (v52 > CGRectGetHeight(v67))
  {
    CGRectGetHeight(v67);
  }

  BSRectWithSize();
  UIRectCenteredIntegralRectScale();
  if (![v3 isTitleVerticallyCentered])
  {
    UIRectInset();
    x = v75.origin.x;
    y = v75.origin.y;
    width = v75.size.width;
    height = v75.size.height;
    MaxY = CGRectGetMaxY(v75);
    v76.origin.x = v32;
    v76.origin.y = v34;
    v76.size.width = v65;
    v76.size.height = rect;
    if (MaxY > CGRectGetMinY(v76) + -8.0)
    {
      v77.origin.x = v32;
      v77.origin.y = v34;
      v77.size.width = v65;
      v77.size.height = rect;
      CGRectGetMinY(v77);
      v78.origin.x = x;
      v78.origin.y = y;
      v78.size.width = width;
      v78.size.height = height;
      CGRectGetHeight(v78);
    }
  }

  BSRectWithSize();
  [v50 setBounds:?];
  UIRectGetCenter();
  [v50 setCenter:?];
}

- (CGRect)_pageBackgroundFrameForPageRect:(CGRect)a3
{
  v4 = [(SBFloatyFolderView *)self floatyFolderConfiguration];
  v5 = [(SBFloatyFolderView *)self traitCollection];
  [v5 displayScale];

  [v4 contentBackgroundSize];
  UISizeRoundToScale();
  UIRectCenteredIntegralRectScale();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  BSFloatFloorForScale();
  v13 = v12;

  v14 = v7;
  v15 = v13;
  v16 = v9;
  v17 = v11;
  result.size.height = v17;
  result.size.width = v16;
  result.origin.y = v15;
  result.origin.x = v14;
  return result;
}

- (BOOL)locationCountsAsInsideFolder:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  [(SBFloatyFolderView *)self _frameForScalingView];
  v10 = CGRectInset(v9, -80.0, 0.0);
  v5 = x;
  v6 = y;

  return CGRectContainsPoint(v10, *&v5);
}

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = SBFloatyFolderView;
  v8 = [(SBFolderView *)&v11 hitTest:v7 withEvent:x, y];
  if (v8 == self && [v7 type] == 9)
  {
    v9 = [(SBFolderView *)self currentIconListView];

    v8 = v9;
  }

  return v8;
}

- (double)_rubberBandIntervalForOverscroll
{
  v2 = [(SBFloatyFolderView *)self floatyFolderConfiguration];
  [v2 rubberBandIntervalForOverscroll];
  v4 = v3;

  return v4;
}

- (double)_titleFontSize
{
  v2 = [(SBFloatyFolderView *)self floatyFolderConfiguration];
  [v2 titleFontSize];
  v4 = v3;

  return v4;
}

- (void)fadeContentForMagnificationFraction:(double)a3
{
  v5 = [(SBFloatyFolderBackgroundClipView *)self->_scrollClipView backgroundView];
  v6 = 1.0 - a3;
  [v5 setAlpha:v6];

  v7 = [(SBFolderView *)self pageControl];
  [v7 setAlpha:v6];

  v8 = [(SBFolderView *)self _titleTextField];
  [v8 setAlpha:v6];
}

- (void)fadeContentForMinificationFraction:(double)a3
{
  v5 = [(SBFolderView *)self pageControl];
  v6 = 1.0 - a3;
  [v5 setAlpha:v6];

  v7 = [(SBFolderView *)self _titleTextField];
  [v7 setAlpha:v6];
}

- (void)_setScrollViewNeedsToClipCorners:(BOOL)a3
{
  v4 = 0.0;
  if (a3)
  {
    [(SBFloatyFolderView *)self cornerRadius];
  }

  scrollClipView = self->_scrollClipView;

  [(SBFloatyFolderBackgroundClipView *)scrollClipView _setContinuousCornerRadius:v4];
}

- (void)_updateScrollingState:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = SBFloatyFolderView;
  [(SBFolderView *)&v5 _updateScrollingState:?];
  [(SBFolderView *)self _updateScrollingInteractionIsScrolling:v3];
  [(SBFloatyFolderView *)self _setScrollViewNeedsToClipCorners:v3];
}

- (void)scrollViewDidScroll:(id)a3
{
  v5.receiver = self;
  v5.super_class = SBFloatyFolderView;
  v4 = a3;
  [(SBFolderView *)&v5 scrollViewDidScroll:v4];
  [(SBFolderView *)self _scrollingInteractionScrollViewDidScroll:v4, v5.receiver, v5.super_class];
}

- (CGPoint)_scrollView:(id)a3 adjustedOffsetForOffset:(CGPoint)a4 translation:(CGPoint)a5 startPoint:(CGPoint)a6 locationInView:(CGPoint)a7 horizontalVelocity:(double *)a8 verticalVelocity:(double *)a9
{
  y = a4.y;
  x = a4.x;
  v12 = a3;
  [v12 contentSize];
  v14 = v13;
  [v12 bounds];
  v16 = v15;

  if (x >= 0.0)
  {
    v18 = v14 - v16;
    if (x > v18)
    {
      [(SBFloatyFolderView *)self _rubberBandIntervalForOverscroll];
      BSUIConstrainValueToIntervalWithRubberBand();
      x = v18 + v19;
    }
  }

  else
  {
    [(SBFloatyFolderView *)self _rubberBandIntervalForOverscroll];
    BSUIConstrainValueToIntervalWithRubberBand();
    x = v17;
  }

  v20 = x;
  v21 = y;
  result.y = v21;
  result.x = v20;
  return result;
}

- (void)_configureGesturesIfNecessary
{
  if (!self->_tapGesture)
  {
    v3 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:self action:sel__handleOutsideTap_];
    tapGesture = self->_tapGesture;
    self->_tapGesture = v3;

    [(UITapGestureRecognizer *)self->_tapGesture setDelegate:self];
    [(SBFloatyFolderView *)self addGestureRecognizer:self->_tapGesture];
  }

  v5 = [(SBHFolderSettings *)self->_folderSettings pinchToClose];
  pinchGesture = self->_pinchGesture;
  if (v5)
  {
    if (!pinchGesture)
    {
      v7 = [objc_alloc(MEMORY[0x1E69DCD80]) initWithTarget:self action:sel__handlePinchGesture_];
      v8 = self->_pinchGesture;
      self->_pinchGesture = v7;

      [(UIPinchGestureRecognizer *)self->_pinchGesture setDelegate:self];
      [(SBFloatyFolderView *)self addGestureRecognizer:self->_pinchGesture];
    }
  }

  else if (pinchGesture)
  {
    [(UIPinchGestureRecognizer *)pinchGesture setDelegate:0];
    [(SBFloatyFolderView *)self removeGestureRecognizer:self->_pinchGesture];
    v9 = self->_pinchGesture;
    self->_pinchGesture = 0;
  }

  if (!self->_longPressGesture)
  {
    v10 = [objc_alloc(MEMORY[0x1E69DCC48]) initWithTarget:self action:sel__handleLongPressGesture_];
    longPressGesture = self->_longPressGesture;
    self->_longPressGesture = v10;

    [(UILongPressGestureRecognizer *)self->_longPressGesture setDelegate:self];
    [(UILongPressGestureRecognizer *)self->_longPressGesture setMinimumPressDuration:0.75];
    v12 = self->_longPressGesture;

    [(SBFloatyFolderView *)self addGestureRecognizer:v12];
  }
}

- (void)_handleOutsideTap:(id)a3
{
  [a3 locationInView:self];
  v5 = v4;
  [(SBFloatyFolderView *)self _frameForScalingView];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  if (![(SBFolderView *)self isEditing]|| (v16.origin.x = v7, v16.origin.y = v9, v16.size.width = v11, v16.size.height = v13, v5 >= CGRectGetMinY(v16)))
  {
    v14 = [(SBFolderView *)self delegate];
    [v14 folderViewShouldClose:self withPinchGesture:0];
  }
}

- (void)_handlePinchGesture:(id)a3
{
  v5 = a3;
  if ([v5 state] == 1)
  {
    v4 = [(SBFolderView *)self delegate];
    [v4 folderViewShouldClose:self withPinchGesture:v5];
  }
}

- (void)_handleLongPressGesture:(id)a3
{
  if ([a3 state] == 1)
  {
    v4 = [(SBFolderView *)self delegate];
    [v4 folderViewShouldBeginEditing:self];
  }
}

- (BOOL)_tapToCloseGestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4
{
  v5 = a4;
  [v5 locationInView:self];
  v7 = v6;
  v9 = v8;
  [(SBFloatyFolderView *)self _frameForScalingView];
  v15.x = v7;
  v15.y = v9;
  if (CGRectContainsPoint(v16, v15))
  {
    v10 = 0;
  }

  else
  {
    v11 = [v5 view];
    v12 = objc_opt_self();
    isKindOfClass = objc_opt_isKindOfClass();

    v10 = isKindOfClass ^ 1;
  }

  return v10 & 1;
}

- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (self->_tapGesture == v6)
  {
    LOBYTE(self) = [(SBFloatyFolderView *)self _tapToCloseGestureRecognizer:v6 shouldReceiveTouch:v7];
  }

  else if (self->_longPressGesture == v6)
  {
    v9 = [v7 view];
    v10 = [(SBFolderView *)self _titleTextField];
    if (v9 == v10)
    {
      LODWORD(self) = ![(SBFolderView *)self isEditing];
    }

    else
    {
      LOBYTE(self) = 0;
    }
  }

  else
  {
    LOBYTE(self) = 1;
  }

  return self;
}

- (BOOL)gestureRecognizer:(id)a3 shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)a4
{
  v5 = [a4 view];
  v6 = [(SBFolderView *)self _titleTextField];

  if (v5 == v6)
  {
    return ![(SBFolderView *)self isEditing];
  }

  else
  {
    return 0;
  }
}

- (void)iconFadeAnimator:(id)a3 wantsToApplyAlpha:(double)a4
{
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __57__SBFloatyFolderView_iconFadeAnimator_wantsToApplyAlpha___block_invoke;
  v7[3] = &__block_descriptor_33_e46_v24__0__SBFloatyFolderBackgroundClipView_8_B16l;
  v8 = a4 > 0.0;
  [(SBFloatyFolderView *)self enumeratePageBackgroundViewsUsingBlock:v7];
  if (a4 > 0.0)
  {
    [(SBFloatyFolderView *)self setAlpha:a4];
  }

  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __57__SBFloatyFolderView_iconFadeAnimator_wantsToApplyAlpha___block_invoke_2;
  v6[3] = &__block_descriptor_40_e28_v24__0__SBIconListView_8_B16l;
  *&v6[4] = a4;
  [(SBFolderView *)self enumerateIconListViewsUsingBlock:v6];
}

void __57__SBFloatyFolderView_iconFadeAnimator_wantsToApplyAlpha___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 backgroundView];
  [v3 setUsesGlass:*(a1 + 32)];
}

- (void)settings:(id)a3 changedValueForKey:(id)a4
{
  if (self->_folderSettings == a3 && [a4 isEqualToString:@"pinchToClose"])
  {

    [(SBFloatyFolderView *)self _configureGesturesIfNecessary];
  }
}

- (id)accessibilityTintColorForBackgroundView:(id)a3
{
  v4 = a3;
  [v4 frame];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = [v4 superview];

  [(SBFloatyFolderView *)self convertRect:v13 fromView:v6, v8, v10, v12];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;

  return [(SBFolderView *)self accessibilityTintColorForRect:2 tintStyle:v15, v17, v19, v21];
}

- (BOOL)scribbleInteraction:(id)a3 shouldBeginAtLocation:(CGPoint)a4
{
  v5 = a3;
  v6 = [(SBFloatyFolderView *)self titleScribbleInteraction];

  if (v6 == v5)
  {
    v7 = [(SBFolderView *)self delegate];
    [v7 folderViewShouldBeginEditing:self];
  }

  return 1;
}

@end