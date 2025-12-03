@interface SBFloatyFolderView
- (BOOL)_tapToCloseGestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch;
- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch;
- (BOOL)gestureRecognizer:(id)recognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)gestureRecognizer;
- (BOOL)locationCountsAsInsideFolder:(CGPoint)folder;
- (BOOL)scribbleInteraction:(id)interaction shouldBeginAtLocation:(CGPoint)location;
- (CGPoint)_scrollView:(id)view adjustedOffsetForOffset:(CGPoint)offset translation:(CGPoint)translation startPoint:(CGPoint)point locationInView:(CGPoint)inView horizontalVelocity:(double *)velocity verticalVelocity:(double *)verticalVelocity;
- (CGPoint)visibleFolderRelativeImageCenterForIcon:(id)icon;
- (CGRect)_frameForScalingView;
- (CGRect)_pageBackgroundFrameForPageRect:(CGRect)rect;
- (SBFloatyFolderView)initWithConfiguration:(id)configuration;
- (double)_rubberBandIntervalForOverscroll;
- (double)_titleFontSize;
- (double)cornerRadius;
- (id)_newPageBackgroundView;
- (id)accessibilityTintColorForBackgroundView:(id)view;
- (id)floatyFolderConfiguration;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (id)legibilitySettingsForIconListViews;
- (void)_configureGesturesIfNecessary;
- (void)_didAddIconListView:(id)view;
- (void)_handleLongPressGesture:(id)gesture;
- (void)_handleOutsideTap:(id)tap;
- (void)_handlePinchGesture:(id)gesture;
- (void)_layoutSubviews;
- (void)_setScrollViewNeedsToClipCorners:(BOOL)corners;
- (void)_updateScrollingState:(BOOL)state;
- (void)dealloc;
- (void)fadeContentForMagnificationFraction:(double)fraction;
- (void)fadeContentForMinificationFraction:(double)fraction;
- (void)iconFadeAnimator:(id)animator wantsToApplyAlpha:(double)alpha;
- (void)scrollViewDidScroll:(id)scroll;
- (void)setBackgroundAlpha:(double)alpha;
- (void)setBackgroundEffect:(unint64_t)effect;
- (void)settings:(id)settings changedValueForKey:(id)key;
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
  listLayoutProvider = [(SBFolderView *)self listLayoutProvider];
  iconLocation = [(SBFolderView *)self iconLocation];
  v5 = [listLayoutProvider layoutForIconLocation:iconLocation];
  if (objc_opt_respondsToSelector())
  {
    floatyFolderVisualConfiguration = [v5 floatyFolderVisualConfiguration];
  }

  else
  {
    floatyFolderVisualConfiguration = objc_alloc_init(SBHFloatyFolderVisualConfiguration);
  }

  v7 = floatyFolderVisualConfiguration;

  return v7;
}

- (double)cornerRadius
{
  floatyFolderConfiguration = [(SBFloatyFolderView *)self floatyFolderConfiguration];
  [floatyFolderConfiguration continuousCornerRadius];
  v4 = v3;

  return v4;
}

- (SBFloatyFolderView)initWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v30.receiver = self;
  v30.super_class = SBFloatyFolderView;
  v5 = [(SBFolderView *)&v30 initWithConfiguration:configurationCopy];
  if (v5)
  {
    v6 = objc_opt_self();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v5->_backgroundEffect = [configurationCopy backgroundEffect];
    }

    v8 = objc_alloc_init(SBFloatyFolderBackgroundClipView);
    scrollClipView = v5->_scrollClipView;
    v5->_scrollClipView = v8;

    [(SBFloatyFolderBackgroundClipView *)v5->_scrollClipView setBackgroundEffect:v5->_backgroundEffect];
    backgroundView = [(SBFloatyFolderBackgroundClipView *)v5->_scrollClipView backgroundView];
    [backgroundView setDelegate:v5];

    v11 = v5->_scrollClipView;
    scrollView = [(SBFolderView *)v5 scrollView];
    [(SBFloatyFolderBackgroundClipView *)v11 addSubview:scrollView];

    scalingView = [(SBFolderView *)v5 scalingView];
    [scalingView addSubview:v5->_scrollClipView];
    pageControl = [(SBFolderView *)v5 pageControl];
    [scalingView addSubview:pageControl];

    _titleTextField = [(SBFolderView *)v5 _titleTextField];
    v16 = [objc_alloc(MEMORY[0x1E69DCEC8]) initWithDelegate:v5];
    titleScribbleInteraction = v5->_titleScribbleInteraction;
    v5->_titleScribbleInteraction = v16;

    [_titleTextField addInteraction:v5->_titleScribbleInteraction];
    [(SBFloatyFolderView *)v5 addSubview:_titleTextField];
    floatyFolderConfiguration = [(SBFloatyFolderView *)v5 floatyFolderConfiguration];
    [floatyFolderConfiguration pageControlCustomPadding];
    v20 = v19;
    v22 = v21;

    pageControl2 = [(SBFolderView *)v5 pageControl];
    v24 = pageControl2;
    if (v20 > 0.0)
    {
      [pageControl2 _setCustomHorizontalPadding:v20];
    }

    if (v22 > 0.0)
    {
      [v24 _setCustomVerticalPadding:v22];
    }

    v25 = +[SBHHomeScreenDomain rootSettings];
    folderSettings = [v25 folderSettings];
    folderSettings = v5->_folderSettings;
    v5->_folderSettings = folderSettings;

    [(PTSettings *)v5->_folderSettings addKeyObserver:v5];
    [(SBFloatyFolderView *)v5 _configureGesturesIfNecessary];
    [(SBFolderView *)v5 _updateTitleLegibilitySettings];
    [(SBFolderView *)v5 _updateIconListLegibilitySettings];
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v5 selector:sel_accessibilityReduceTransparencyDidChange_ name:*MEMORY[0x1E69DD920] object:0];
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

- (void)setBackgroundAlpha:(double)alpha
{
  backgroundView = [(SBFloatyFolderBackgroundClipView *)self->_scrollClipView backgroundView];
  [backgroundView setAlpha:alpha];
}

- (CGPoint)visibleFolderRelativeImageCenterForIcon:(id)icon
{
  iconCopy = icon;
  currentIconListView = [(SBFolderView *)self currentIconListView];
  if ([currentIconListView containsIcon:iconCopy])
  {
    [currentIconListView centerForIcon:iconCopy];
    v7 = v6;
    v9 = v8;
    scalingView = [(SBFolderView *)self scalingView];
    [scalingView convertPoint:currentIconListView fromView:{v7, v9}];
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
    legibilitySettingsForIconListViews = [(SBFolderView *)self accessibilityLegibilitySettingsForRect:2 tintStyle:?];
  }

  else
  {
    v5.receiver = self;
    v5.super_class = SBFloatyFolderView;
    legibilitySettingsForIconListViews = [(SBFolderView *)&v5 legibilitySettingsForIconListViews];
  }

  return legibilitySettingsForIconListViews;
}

- (void)setBackgroundEffect:(unint64_t)effect
{
  if ([(SBFloatyFolderView *)self backgroundEffect]!= effect)
  {
    self->_backgroundEffect = effect;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __42__SBFloatyFolderView_setBackgroundEffect___block_invoke;
    v5[3] = &__block_descriptor_40_e46_v24__0__SBFloatyFolderBackgroundClipView_8_B16l;
    v5[4] = effect;
    [(SBFloatyFolderView *)self enumeratePageBackgroundViewsUsingBlock:v5];
  }
}

- (id)_newPageBackgroundView
{
  v3 = objc_alloc_init(SBFloatyFolderBackgroundClipView);
  backgroundView = [(SBFloatyFolderBackgroundClipView *)v3 backgroundView];
  [backgroundView setDelegate:self];

  [(SBFloatyFolderBackgroundClipView *)v3 setBackgroundEffect:[(SBFloatyFolderView *)self backgroundEffect]];
  return v3;
}

- (void)_didAddIconListView:(id)view
{
  v4.receiver = self;
  v4.super_class = SBFloatyFolderView;
  [(SBFolderView *)&v4 _didAddIconListView:view];
  [(SBFolderView *)self setNeedsLayout];
}

- (void)_layoutSubviews
{
  floatyFolderConfiguration = [(SBFloatyFolderView *)self floatyFolderConfiguration];
  [(SBFloatyFolderView *)self bounds];
  v59 = v5;
  v60 = v4;
  v61 = v6;
  v62 = v7;
  traitCollection = [(SBFloatyFolderView *)self traitCollection];
  [traitCollection displayScale];
  v64 = v9;

  scalingView = [(SBFolderView *)self scalingView];
  [scalingView bounds];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  [(SBFloatyFolderBackgroundClipView *)self->_scrollClipView setFrame:?];
  [(SBFloatyFolderBackgroundClipView *)self->_scrollClipView convertRect:scalingView fromView:v12, v14, v16, v18];
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;
  scrollView = [(SBFolderView *)self scrollView];
  [scrollView setFrame:{v20, v22, v24, v26}];

  pageControl = [(SBFolderView *)self pageControl];
  [floatyFolderConfiguration pageControlAreaHeight];
  v30 = v29;
  memset(&slice, 0, sizeof(slice));
  memset(&remainder, 0, sizeof(remainder));
  v70.origin.x = v12;
  v70.origin.y = v14;
  v70.size.width = v16;
  v70.size.height = v18;
  CGRectDivide(v70, &slice, &remainder, v30, CGRectMaxYEdge);
  [pageControl sizeToFit];
  UIRectGetCenter();
  [pageControl setCenter:?];
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
  [floatyFolderConfiguration titleBottomInset];
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
  _titleTextField = [(SBFolderView *)self _titleTextField];
  [_titleTextField sizeThatFits:{v67.size.width, v67.size.height}];
  v52 = v51;
  [floatyFolderConfiguration titleHorizontalInset];
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
  if (![floatyFolderConfiguration isTitleVerticallyCentered])
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
  [_titleTextField setBounds:?];
  UIRectGetCenter();
  [_titleTextField setCenter:?];
}

- (CGRect)_pageBackgroundFrameForPageRect:(CGRect)rect
{
  floatyFolderConfiguration = [(SBFloatyFolderView *)self floatyFolderConfiguration];
  traitCollection = [(SBFloatyFolderView *)self traitCollection];
  [traitCollection displayScale];

  [floatyFolderConfiguration contentBackgroundSize];
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

- (BOOL)locationCountsAsInsideFolder:(CGPoint)folder
{
  y = folder.y;
  x = folder.x;
  [(SBFloatyFolderView *)self _frameForScalingView];
  v10 = CGRectInset(v9, -80.0, 0.0);
  v5 = x;
  v6 = y;

  return CGRectContainsPoint(v10, *&v5);
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  eventCopy = event;
  v11.receiver = self;
  v11.super_class = SBFloatyFolderView;
  v8 = [(SBFolderView *)&v11 hitTest:eventCopy withEvent:x, y];
  if (v8 == self && [eventCopy type] == 9)
  {
    currentIconListView = [(SBFolderView *)self currentIconListView];

    v8 = currentIconListView;
  }

  return v8;
}

- (double)_rubberBandIntervalForOverscroll
{
  floatyFolderConfiguration = [(SBFloatyFolderView *)self floatyFolderConfiguration];
  [floatyFolderConfiguration rubberBandIntervalForOverscroll];
  v4 = v3;

  return v4;
}

- (double)_titleFontSize
{
  floatyFolderConfiguration = [(SBFloatyFolderView *)self floatyFolderConfiguration];
  [floatyFolderConfiguration titleFontSize];
  v4 = v3;

  return v4;
}

- (void)fadeContentForMagnificationFraction:(double)fraction
{
  backgroundView = [(SBFloatyFolderBackgroundClipView *)self->_scrollClipView backgroundView];
  v6 = 1.0 - fraction;
  [backgroundView setAlpha:v6];

  pageControl = [(SBFolderView *)self pageControl];
  [pageControl setAlpha:v6];

  _titleTextField = [(SBFolderView *)self _titleTextField];
  [_titleTextField setAlpha:v6];
}

- (void)fadeContentForMinificationFraction:(double)fraction
{
  pageControl = [(SBFolderView *)self pageControl];
  v6 = 1.0 - fraction;
  [pageControl setAlpha:v6];

  _titleTextField = [(SBFolderView *)self _titleTextField];
  [_titleTextField setAlpha:v6];
}

- (void)_setScrollViewNeedsToClipCorners:(BOOL)corners
{
  v4 = 0.0;
  if (corners)
  {
    [(SBFloatyFolderView *)self cornerRadius];
  }

  scrollClipView = self->_scrollClipView;

  [(SBFloatyFolderBackgroundClipView *)scrollClipView _setContinuousCornerRadius:v4];
}

- (void)_updateScrollingState:(BOOL)state
{
  stateCopy = state;
  v5.receiver = self;
  v5.super_class = SBFloatyFolderView;
  [(SBFolderView *)&v5 _updateScrollingState:?];
  [(SBFolderView *)self _updateScrollingInteractionIsScrolling:stateCopy];
  [(SBFloatyFolderView *)self _setScrollViewNeedsToClipCorners:stateCopy];
}

- (void)scrollViewDidScroll:(id)scroll
{
  v5.receiver = self;
  v5.super_class = SBFloatyFolderView;
  scrollCopy = scroll;
  [(SBFolderView *)&v5 scrollViewDidScroll:scrollCopy];
  [(SBFolderView *)self _scrollingInteractionScrollViewDidScroll:scrollCopy, v5.receiver, v5.super_class];
}

- (CGPoint)_scrollView:(id)view adjustedOffsetForOffset:(CGPoint)offset translation:(CGPoint)translation startPoint:(CGPoint)point locationInView:(CGPoint)inView horizontalVelocity:(double *)velocity verticalVelocity:(double *)verticalVelocity
{
  y = offset.y;
  x = offset.x;
  viewCopy = view;
  [viewCopy contentSize];
  v14 = v13;
  [viewCopy bounds];
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

  pinchToClose = [(SBHFolderSettings *)self->_folderSettings pinchToClose];
  pinchGesture = self->_pinchGesture;
  if (pinchToClose)
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

- (void)_handleOutsideTap:(id)tap
{
  [tap locationInView:self];
  v5 = v4;
  [(SBFloatyFolderView *)self _frameForScalingView];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  if (![(SBFolderView *)self isEditing]|| (v16.origin.x = v7, v16.origin.y = v9, v16.size.width = v11, v16.size.height = v13, v5 >= CGRectGetMinY(v16)))
  {
    delegate = [(SBFolderView *)self delegate];
    [delegate folderViewShouldClose:self withPinchGesture:0];
  }
}

- (void)_handlePinchGesture:(id)gesture
{
  gestureCopy = gesture;
  if ([gestureCopy state] == 1)
  {
    delegate = [(SBFolderView *)self delegate];
    [delegate folderViewShouldClose:self withPinchGesture:gestureCopy];
  }
}

- (void)_handleLongPressGesture:(id)gesture
{
  if ([gesture state] == 1)
  {
    delegate = [(SBFolderView *)self delegate];
    [delegate folderViewShouldBeginEditing:self];
  }
}

- (BOOL)_tapToCloseGestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch
{
  touchCopy = touch;
  [touchCopy locationInView:self];
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
    view = [touchCopy view];
    v12 = objc_opt_self();
    isKindOfClass = objc_opt_isKindOfClass();

    v10 = isKindOfClass ^ 1;
  }

  return v10 & 1;
}

- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch
{
  recognizerCopy = recognizer;
  touchCopy = touch;
  v8 = touchCopy;
  if (self->_tapGesture == recognizerCopy)
  {
    LOBYTE(self) = [(SBFloatyFolderView *)self _tapToCloseGestureRecognizer:recognizerCopy shouldReceiveTouch:touchCopy];
  }

  else if (self->_longPressGesture == recognizerCopy)
  {
    view = [touchCopy view];
    _titleTextField = [(SBFolderView *)self _titleTextField];
    if (view == _titleTextField)
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

- (BOOL)gestureRecognizer:(id)recognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)gestureRecognizer
{
  view = [gestureRecognizer view];
  _titleTextField = [(SBFolderView *)self _titleTextField];

  if (view == _titleTextField)
  {
    return ![(SBFolderView *)self isEditing];
  }

  else
  {
    return 0;
  }
}

- (void)iconFadeAnimator:(id)animator wantsToApplyAlpha:(double)alpha
{
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __57__SBFloatyFolderView_iconFadeAnimator_wantsToApplyAlpha___block_invoke;
  v7[3] = &__block_descriptor_33_e46_v24__0__SBFloatyFolderBackgroundClipView_8_B16l;
  v8 = alpha > 0.0;
  [(SBFloatyFolderView *)self enumeratePageBackgroundViewsUsingBlock:v7];
  if (alpha > 0.0)
  {
    [(SBFloatyFolderView *)self setAlpha:alpha];
  }

  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __57__SBFloatyFolderView_iconFadeAnimator_wantsToApplyAlpha___block_invoke_2;
  v6[3] = &__block_descriptor_40_e28_v24__0__SBIconListView_8_B16l;
  *&v6[4] = alpha;
  [(SBFolderView *)self enumerateIconListViewsUsingBlock:v6];
}

void __57__SBFloatyFolderView_iconFadeAnimator_wantsToApplyAlpha___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 backgroundView];
  [v3 setUsesGlass:*(a1 + 32)];
}

- (void)settings:(id)settings changedValueForKey:(id)key
{
  if (self->_folderSettings == settings && [key isEqualToString:@"pinchToClose"])
  {

    [(SBFloatyFolderView *)self _configureGesturesIfNecessary];
  }
}

- (id)accessibilityTintColorForBackgroundView:(id)view
{
  viewCopy = view;
  [viewCopy frame];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  superview = [viewCopy superview];

  [(SBFloatyFolderView *)self convertRect:superview fromView:v6, v8, v10, v12];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;

  return [(SBFolderView *)self accessibilityTintColorForRect:2 tintStyle:v15, v17, v19, v21];
}

- (BOOL)scribbleInteraction:(id)interaction shouldBeginAtLocation:(CGPoint)location
{
  interactionCopy = interaction;
  titleScribbleInteraction = [(SBFloatyFolderView *)self titleScribbleInteraction];

  if (titleScribbleInteraction == interactionCopy)
  {
    delegate = [(SBFolderView *)self delegate];
    [delegate folderViewShouldBeginEditing:self];
  }

  return 1;
}

@end