@interface SXFullscreenCanvasController
- (BOOL)captionView:(id)view tapGestureRecognizerShouldBegin:(id)begin;
- (BOOL)comparePoint:(CGPoint)point withPoint:(CGPoint)withPoint maxDelta:(double)delta;
- (BOOL)gestureRecognizerShouldBegin:(id)begin;
- (CGPoint)calculateAnchorPointFromBounds:(CGRect)bounds andPoint:(CGPoint)point;
- (CGPoint)currentTranslation;
- (CGPoint)startingAnchorPoint;
- (CGRect)currentDestinationFrame;
- (CGRect)currentOriginFrame;
- (CGRect)itemizedScrollView:(id)view frameForViewAtIndex:(unint64_t)index;
- (CGSize)fitSizeForRect:(CGRect)rect;
- (SXFullscreenCanvasController)initWithShowable:(id)showable captionViewFactory:(id)factory sharingPolicy:(unint64_t)policy;
- (SXFullscreenCanvasShowable)showable;
- (UIColor)backgroundColor;
- (id)dragManager:(id)manager dragableAtLocation:(CGPoint)location;
- (id)itemizedScrollView:(id)view viewAtIndex:(unint64_t)index;
- (int64_t)viewIndexForPoint:(CGPoint)point;
- (unint64_t)activeViewIndex;
- (unint64_t)numberOfViewsInItemizedScrollView:(id)view;
- (void)changeCaptionViewForViewWithIndex:(unint64_t)index expanded:(BOOL)expanded animated:(BOOL)animated;
- (void)dealloc;
- (void)didEndTransitionFromFullScreen:(BOOL)screen toFullScreen:(BOOL)fullScreen;
- (void)didFinishFullscreenActiveIndex:(unint64_t)index;
- (void)dismiss;
- (void)fullScreenImageViewDidStartZooming:(id)zooming;
- (void)fullScreenImageViewDidStopZooming:(id)zooming;
- (void)fullscreenCanvasViewController:(id)controller willTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
- (void)goToFullScreenFromFullScreenAnimated:(BOOL)animated completionBlock:(id)block;
- (void)goToFullScreenFromOriginalAnimated:(BOOL)animated completionBlock:(id)block;
- (void)goToOriginalFromFullScreenAnimated:(BOOL)animated completionBlock:(id)block;
- (void)goToOriginalFromOriginalAnimated:(BOOL)animated completionBlock:(id)block;
- (void)goToOriginalFromVerticalSwipingWithVelocity:(CGPoint)velocity completionBlock:(id)block;
- (void)handleGestureRecognizer:(id)recognizer;
- (void)handleNextCommand;
- (void)handleOpenTapGesture:(id)gesture;
- (void)handlePanGestureRecognizer:(id)recognizer;
- (void)handlePinchGestureRecognizer:(id)recognizer;
- (void)handlePreviousCommand;
- (void)handleRotationGestureRecognizer:(id)recognizer;
- (void)handleTap:(id)tap;
- (void)itemizedScrollView:(id)view didChangeToActiveViewIndex:(unint64_t)index;
- (void)itemizedScrollView:(id)view didHideViewWithIndex:(unint64_t)index;
- (void)itemizedScrollView:(id)view willShowViewWithIndex:(unint64_t)index;
- (void)presentFullscreenWithIndex:(unint64_t)index;
- (void)removeScaleAndTranslationFromCurrentView;
- (void)scrollViewDidEndDragging:(id)dragging willDecelerate:(BOOL)decelerate;
- (void)setBackgroundColor:(id)color;
- (void)setup;
- (void)setupGestureRecognizersInView:(id)view;
- (void)setupScrollViewIfNeededWithActiveIndex:(unint64_t)index;
- (void)startSupressingColorSettings;
- (void)startTransitionToFullScreen:(BOOL)screen controllable:(BOOL)controllable;
- (void)startVerticalSwiping;
- (void)stopSupressingColorSettings;
- (void)stopTransformingCancelled:(BOOL)cancelled;
- (void)stopVerticalSwipingDismissed:(BOOL)dismissed lastVelocity:(CGPoint)velocity;
- (void)transferCurrentViewToCanvas;
- (void)transferCurrentViewToOriginalView;
- (void)transferGestureViewToView:(id)view;
- (void)transformViewToSize:(CGSize)size;
- (void)updateTransform;
- (void)willStartTransformingWithGestureRecognizer:(id)recognizer completionBlock:(id)block;
@end

@implementation SXFullscreenCanvasController

- (SXFullscreenCanvasController)initWithShowable:(id)showable captionViewFactory:(id)factory sharingPolicy:(unint64_t)policy
{
  showableCopy = showable;
  factoryCopy = factory;
  v16.receiver = self;
  v16.super_class = SXFullscreenCanvasController;
  v10 = [(SXFullscreenCanvasController *)&v16 init];
  v11 = v10;
  if (v10)
  {
    v10->_sharingPolicy = policy;
    objc_storeStrong(&v10->_captionViewFactory, factory);
    objc_storeWeak(&v11->_showable, showableCopy);
    v12 = objc_alloc_init(MEMORY[0x1E69DD250]);
    backgroundView = v11->_backgroundView;
    v11->_backgroundView = v12;

    [(UIView *)v11->_backgroundView setAutoresizingMask:18];
    blackColor = [MEMORY[0x1E69DC888] blackColor];
    [(UIView *)v11->_backgroundView setBackgroundColor:blackColor];

    [(SXFullscreenCanvasController *)v11 setup];
  }

  return v11;
}

- (void)dealloc
{
  [(SXFullscreenCanvasController *)self stopSupressingColorSettings];
  v3.receiver = self;
  v3.super_class = SXFullscreenCanvasController;
  [(SXFullscreenCanvasController *)&v3 dealloc];
}

- (void)dismiss
{
  itemizedScrollView = [(SXFullscreenCanvasController *)self itemizedScrollView];
  self->_currentViewIndex = [itemizedScrollView activeViewIndex];

  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __39__SXFullscreenCanvasController_dismiss__block_invoke;
  v4[3] = &unk_1E84FFD40;
  v4[4] = self;
  [(SXFullscreenCanvasController *)self willStartTransformingWithGestureRecognizer:0 completionBlock:v4];
}

void __39__SXFullscreenCanvasController_dismiss__block_invoke(uint64_t a1, int a2)
{
  if (a2)
  {
    [*(a1 + 32) startTransitionToFullScreen:1 controllable:0];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __39__SXFullscreenCanvasController_dismiss__block_invoke_2;
    block[3] = &unk_1E84FED18;
    block[4] = *(a1 + 32);
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

uint64_t __39__SXFullscreenCanvasController_dismiss__block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __39__SXFullscreenCanvasController_dismiss__block_invoke_3;
  v3[3] = &unk_1E84FED18;
  v3[4] = v1;
  return [v1 goToOriginalFromFullScreenAnimated:1 completionBlock:v3];
}

- (void)setupScrollViewIfNeededWithActiveIndex:(unint64_t)index
{
  itemizedScrollView = [(SXFullscreenCanvasController *)self itemizedScrollView];

  if (!itemizedScrollView)
  {
    v6 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:self action:sel_handleTap_];
    [(SXFullscreenCanvasController *)self setTapGestureRecognizer:v6];

    v7 = [SXItemizedScrollView alloc];
    v8 = [(SXItemizedScrollView *)v7 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    [(SXFullscreenCanvasController *)self setItemizedScrollView:v8];

    itemizedScrollView2 = [(SXFullscreenCanvasController *)self itemizedScrollView];
    [itemizedScrollView2 setContentInsetAdjustmentBehavior:2];

    itemizedScrollView3 = [(SXFullscreenCanvasController *)self itemizedScrollView];
    [itemizedScrollView3 setDataSource:self];

    itemizedScrollView4 = [(SXFullscreenCanvasController *)self itemizedScrollView];
    [itemizedScrollView4 setDelegate:self];

    canvasViewController = [(SXFullscreenCanvasController *)self canvasViewController];
    view = [canvasViewController view];
    [view bounds];
    v15 = v14;
    v17 = v16;
    v19 = v18;
    v21 = v20;

    itemizedScrollView5 = [(SXFullscreenCanvasController *)self itemizedScrollView];
    v32.origin.x = v15;
    v32.origin.y = v17;
    v32.size.width = v19;
    v32.size.height = v21;
    v23 = CGRectGetWidth(v32) + 20.0;
    v33.origin.x = v15;
    v33.origin.y = v17;
    v33.size.width = v19;
    v33.size.height = v21;
    [itemizedScrollView5 setFrame:{-10.0, 0.0, v23, CGRectGetHeight(v33)}];

    itemizedScrollView6 = [(SXFullscreenCanvasController *)self itemizedScrollView];
    [itemizedScrollView6 setActiveViewIndex:index animated:0];

    canvasViewController2 = [(SXFullscreenCanvasController *)self canvasViewController];
    view2 = [canvasViewController2 view];
    itemizedScrollView7 = [(SXFullscreenCanvasController *)self itemizedScrollView];
    [view2 addSubview:itemizedScrollView7];

    canvasViewController3 = [(SXFullscreenCanvasController *)self canvasViewController];
    view3 = [canvasViewController3 view];
    tapGestureRecognizer = [(SXFullscreenCanvasController *)self tapGestureRecognizer];
    [view3 addGestureRecognizer:tapGestureRecognizer];
  }
}

- (void)didFinishFullscreenActiveIndex:(unint64_t)index
{
  [(SXFullscreenCanvasController *)self setupScrollViewIfNeededWithActiveIndex:?];
  itemizedScrollView = [(SXFullscreenCanvasController *)self itemizedScrollView];
  activeView = [itemizedScrollView activeView];

  scrollView = [activeView scrollView];
  [(SXFullscreenCanvasController *)self transferGestureViewToView:scrollView];

  captionView = [(SXFullscreenCanvasController *)self captionView];
  if (captionView)
  {
    captionView2 = [(SXFullscreenCanvasController *)self captionView];
    -[SXFullscreenCanvasController changeCaptionViewForViewWithIndex:expanded:animated:](self, "changeCaptionViewForViewWithIndex:expanded:animated:", index, [captionView2 expanded], 1);
  }

  else
  {
    [(SXFullscreenCanvasController *)self changeCaptionViewForViewWithIndex:index expanded:1 animated:1];
  }
}

- (void)changeCaptionViewForViewWithIndex:(unint64_t)index expanded:(BOOL)expanded animated:(BOOL)animated
{
  animatedCopy = animated;
  expandedCopy = expanded;
  showable = [(SXFullscreenCanvasController *)self showable];
  showable2 = [(SXFullscreenCanvasController *)self showable];
  v44 = [showable fullScreenCanvasController:self captionForShowable:showable2 viewIndex:index];

  captionView = [(SXFullscreenCanvasController *)self captionView];

  if (captionView)
  {
    captionView2 = [(SXFullscreenCanvasController *)self captionView];
    viewIndex = [captionView2 viewIndex];

    if (viewIndex == index)
    {
      goto LABEL_8;
    }
  }

  else
  {
    captionViewFactory = [(SXFullscreenCanvasController *)self captionViewFactory];
    createCaptionView = [captionViewFactory createCaptionView];
    captionView = self->_captionView;
    self->_captionView = createCaptionView;

    captionView3 = [(SXFullscreenCanvasController *)self captionView];
    [captionView3 setDelegate:self];

    canvasViewController = [(SXFullscreenCanvasController *)self canvasViewController];
    view = [canvasViewController view];
    captionView4 = [(SXFullscreenCanvasController *)self captionView];
    [view addSubview:captionView4];

    if (_UISolariumFeatureFlagEnabled())
    {
      captionView5 = [(SXFullscreenCanvasController *)self captionView];
      v22 = objc_alloc(MEMORY[0x1E69DD6C8]);
      itemizedScrollView = [(SXFullscreenCanvasController *)self itemizedScrollView];
      v24 = [v22 initWithScrollView:itemizedScrollView edge:4 style:0];
      [captionView5 addInteraction:v24];
    }

    self->_previousExpansionMode = 1;
  }

  captionView6 = [(SXFullscreenCanvasController *)self captionView];
  [captionView6 updateWithCaption:v44 forViewIndex:index animated:animatedCopy];

LABEL_8:
  if ((_UISolariumFeatureFlagEnabled() & 1) == 0)
  {
    navigationBarView = [(SXFullscreenCanvasController *)self navigationBarView];

    if (!navigationBarView)
    {
      v27 = objc_alloc_init(SXFullscreenNavigationBarView);
      navigationBarView = self->_navigationBarView;
      self->_navigationBarView = v27;

      navigationBarView2 = [(SXFullscreenCanvasController *)self navigationBarView];
      [navigationBarView2 setDelegate:self];

      canvasViewController2 = [(SXFullscreenCanvasController *)self canvasViewController];
      view2 = [canvasViewController2 view];
      navigationBarView3 = [(SXFullscreenCanvasController *)self navigationBarView];
      [view2 addSubview:navigationBarView3];
    }
  }

  captionView7 = [(SXFullscreenCanvasController *)self captionView];
  expanded = [captionView7 expanded];

  if (expanded != expandedCopy)
  {
    if (!expandedCopy || (previousExpansionMode = self->_previousExpansionMode, !previousExpansionMode))
    {
      captionView8 = [(SXFullscreenCanvasController *)self captionView];
      self->_previousExpansionMode = [captionView8 expansionMode];

      previousExpansionMode = 0;
    }

    captionView9 = [(SXFullscreenCanvasController *)self captionView];
    [captionView9 setExpansionMode:previousExpansionMode animated:animatedCopy];
  }

  canvasViewController3 = [(SXFullscreenCanvasController *)self canvasViewController];
  navigationController = [canvasViewController3 navigationController];
  isNavigationBarHidden = [navigationController isNavigationBarHidden];

  if (isNavigationBarHidden == expandedCopy)
  {
    isTransitioning = self->_isTransitioning;
    canvasViewController4 = [(SXFullscreenCanvasController *)self canvasViewController];
    navigationController2 = [canvasViewController4 navigationController];
    [navigationController2 setNavigationBarHidden:expandedCopy ^ 1u animated:animatedCopy & ~isTransitioning];
  }
}

- (void)transformViewToSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  if ([(SXFullscreenCanvasController *)self isFullscreen])
  {
    canvasViewController = [(SXFullscreenCanvasController *)self canvasViewController];
    view = [canvasViewController view];
    [view frame];
    v9 = v8;
    v11 = v10;

    canvasViewController2 = [(SXFullscreenCanvasController *)self canvasViewController];
    view2 = [canvasViewController2 view];
    [view2 setFrame:{v9, v11, width, height}];

    itemizedScrollView = [(SXFullscreenCanvasController *)self itemizedScrollView];
    [itemizedScrollView setFrame:{-10.0, 0.0, width + 20.0, height}];

    showable = [(SXFullscreenCanvasController *)self showable];
    showable2 = [(SXFullscreenCanvasController *)self showable];
    itemizedScrollView2 = [(SXFullscreenCanvasController *)self itemizedScrollView];
    activeViewIndex = [itemizedScrollView2 activeViewIndex];
    canvasViewController3 = [(SXFullscreenCanvasController *)self canvasViewController];
    view3 = [canvasViewController3 view];
    [view3 bounds];
    [showable fullScreenCanvasController:self fullScreenFrameForShowable:showable2 viewIndex:activeViewIndex withinRect:?];
    v22 = v21;
    v24 = v23;
    v26 = v25;
    v28 = v27;

    itemizedScrollView3 = [(SXFullscreenCanvasController *)self itemizedScrollView];
    activeView = [itemizedScrollView3 activeView];

    [activeView setContentViewFrame:{v22, v24, v26, v28}];
    captionView = [(SXFullscreenCanvasController *)self captionView];
    [captionView updateFrameAnimated:0];

    navigationBarView = [(SXFullscreenCanvasController *)self navigationBarView];
    [navigationBarView updateFrameAnimated:0];

    gestureView = [(SXFullscreenCanvasController *)self gestureView];
    superview = [gestureView superview];
    [superview bounds];
    v34 = CGRectGetWidth(v41);
    gestureView2 = [(SXFullscreenCanvasController *)self gestureView];
    superview2 = [gestureView2 superview];
    [superview2 bounds];
    v37 = CGRectGetHeight(v42);
    gestureView3 = [(SXFullscreenCanvasController *)self gestureView];
    [gestureView3 setFrame:{0.0, 0.0, v34, v37}];
  }
}

- (void)setBackgroundColor:(id)color
{
  colorCopy = color;
  backgroundView = [(SXFullscreenCanvasController *)self backgroundView];
  [backgroundView setBackgroundColor:colorCopy];
}

- (UIColor)backgroundColor
{
  backgroundView = [(SXFullscreenCanvasController *)self backgroundView];
  backgroundColor = [backgroundView backgroundColor];

  return backgroundColor;
}

- (unint64_t)activeViewIndex
{
  if (![(SXFullscreenCanvasController *)self isFullscreen])
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  itemizedScrollView = [(SXFullscreenCanvasController *)self itemizedScrollView];

  if (itemizedScrollView)
  {
    itemizedScrollView2 = [(SXFullscreenCanvasController *)self itemizedScrollView];
    activeViewIndex = [itemizedScrollView2 activeViewIndex];

    return activeViewIndex;
  }

  else
  {

    return [(SXFullscreenCanvasController *)self currentViewIndex];
  }
}

- (void)setup
{
  v3 = objc_alloc(MEMORY[0x1E69DD250]);
  v4 = [v3 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  gestureView = self->_gestureView;
  self->_gestureView = v4;

  gestureView = [(SXFullscreenCanvasController *)self gestureView];
  [gestureView setAutoresizingMask:18];

  gestureView2 = [(SXFullscreenCanvasController *)self gestureView];
  [(SXFullscreenCanvasController *)self setupGestureRecognizersInView:gestureView2];

  showable = [(SXFullscreenCanvasController *)self showable];
  gestureView3 = [(SXFullscreenCanvasController *)self gestureView];
  showable2 = [(SXFullscreenCanvasController *)self showable];
  [showable fullScreenCanvasController:self shouldAddGestureView:gestureView3 forShowable:showable2];

  gestureView4 = [(SXFullscreenCanvasController *)self gestureView];
  superview = [gestureView4 superview];
  [superview setUserInteractionEnabled:1];
}

- (void)setupGestureRecognizersInView:(id)view
{
  viewCopy = view;
  v21 = [[SXDragManager alloc] initWithSharingPolicy:[(SXFullscreenCanvasController *)self sharingPolicy] dataSource:self];
  [(SXDragManager *)v21 setEnabled:0];
  [(SXFullscreenCanvasController *)self setDragManager:v21];
  v5 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:self action:sel_handleOpenTapGesture_];
  openTapGestureRecognizer = self->_openTapGestureRecognizer;
  self->_openTapGestureRecognizer = v5;

  openTapGestureRecognizer = [(SXFullscreenCanvasController *)self openTapGestureRecognizer];
  [openTapGestureRecognizer setDelegate:self];

  openTapGestureRecognizer2 = [(SXFullscreenCanvasController *)self openTapGestureRecognizer];
  [viewCopy addGestureRecognizer:openTapGestureRecognizer2];

  v9 = [objc_alloc(MEMORY[0x1E69DCD80]) initWithTarget:self action:sel_handlePinchGestureRecognizer_];
  pinchGestureRecognizer = self->_pinchGestureRecognizer;
  self->_pinchGestureRecognizer = v9;

  pinchGestureRecognizer = [(SXFullscreenCanvasController *)self pinchGestureRecognizer];
  [pinchGestureRecognizer setDelegate:self];

  pinchGestureRecognizer2 = [(SXFullscreenCanvasController *)self pinchGestureRecognizer];
  [viewCopy addGestureRecognizer:pinchGestureRecognizer2];

  v13 = [objc_alloc(MEMORY[0x1E69DCE68]) initWithTarget:self action:sel_handleRotationGestureRecognizer_];
  rotationGestureRecognizer = self->_rotationGestureRecognizer;
  self->_rotationGestureRecognizer = v13;

  rotationGestureRecognizer = [(SXFullscreenCanvasController *)self rotationGestureRecognizer];
  [rotationGestureRecognizer setDelegate:self];

  rotationGestureRecognizer2 = [(SXFullscreenCanvasController *)self rotationGestureRecognizer];
  [viewCopy addGestureRecognizer:rotationGestureRecognizer2];

  v17 = [objc_alloc(MEMORY[0x1E69DCD28]) initWithTarget:self action:sel_handlePanGestureRecognizer_];
  panGestureRecognizer = self->_panGestureRecognizer;
  self->_panGestureRecognizer = v17;

  panGestureRecognizer = [(SXFullscreenCanvasController *)self panGestureRecognizer];
  [panGestureRecognizer setDelegate:self];

  panGestureRecognizer2 = [(SXFullscreenCanvasController *)self panGestureRecognizer];
  [viewCopy addGestureRecognizer:panGestureRecognizer2];
}

- (CGSize)fitSizeForRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  canvasViewController = [(SXFullscreenCanvasController *)self canvasViewController];
  view = [canvasViewController view];
  [view bounds];
  v10 = v9;
  v24 = v11;
  v25 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;

  v27.origin.x = v10;
  v27.origin.y = v12;
  v27.size.width = v14;
  v27.size.height = v16;
  v17 = CGRectGetWidth(v27);
  v28.origin.x = x;
  v28.origin.y = y;
  v28.size.width = width;
  v28.size.height = height;
  v18 = v17 / CGRectGetWidth(v28);
  v29.origin.x = x;
  v29.origin.y = y;
  v23 = height;
  v29.size.width = width;
  v29.size.height = height;
  v19 = v18 * CGRectGetHeight(v29);
  v30.origin.x = v25;
  v30.origin.y = v24;
  v30.size.width = v14;
  v30.size.height = v16;
  if (v19 > CGRectGetHeight(v30))
  {
    v31.origin.x = v25;
    v31.origin.y = v24;
    v31.size.width = v14;
    v31.size.height = v16;
    v19 = CGRectGetHeight(v31);
    v32.origin.x = x;
    v32.origin.y = y;
    v32.size.width = width;
    v32.size.height = v23;
    v20 = v19 / CGRectGetHeight(v32);
    v33.origin.x = x;
    v33.origin.y = y;
    v33.size.width = width;
    v33.size.height = v23;
    v17 = v20 * CGRectGetWidth(v33);
  }

  v21 = v17;
  v22 = v19;
  result.height = v22;
  result.width = v21;
  return result;
}

- (void)handleGestureRecognizer:(id)recognizer
{
  recognizerCopy = recognizer;
  totalActiveGestureRecognizers = self->_totalActiveGestureRecognizers;
  if ([recognizerCopy state] == 1)
  {
    ++self->_totalActiveGestureRecognizers;
  }

  if ([recognizerCopy state] == 4 || objc_msgSend(recognizerCopy, "state") == 3 || objc_msgSend(recognizerCopy, "state") == 5)
  {
    --self->_totalActiveGestureRecognizers;
  }

  if ([(SXFullscreenCanvasController *)self verticalSwipingIsActive]&& ![(SXFullscreenCanvasController *)self isStoppingVerticalSwiping])
  {
    if (![(SXFullscreenCanvasController *)self panIsActive])
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

  v6 = self->_totalActiveGestureRecognizers;
  if (totalActiveGestureRecognizers == 1)
  {
    if (!v6)
    {
      if (![(SXFullscreenCanvasController *)self isStoppingVerticalSwiping])
      {
        -[SXFullscreenCanvasController stopTransformingCancelled:](self, "stopTransformingCancelled:", [recognizerCopy state] == 4);
        [(SXFullscreenCanvasController *)self setLessTouchesAreInterupting:0];
        [(SXFullscreenCanvasController *)self setOrientationChangeIsInterupting:0];
      }

      *&self->_verticalSwipingIsActive = 0;
      goto LABEL_23;
    }

LABEL_21:
    if ([recognizerCopy state] != 2)
    {
      goto LABEL_23;
    }

LABEL_22:
    [(SXFullscreenCanvasController *)self updateTransform];
    goto LABEL_23;
  }

  if (totalActiveGestureRecognizers)
  {
    if (!v6)
    {
      goto LABEL_23;
    }

    goto LABEL_21;
  }

  if (v6)
  {
    if (v6 == 1)
    {
      v7 = MEMORY[0x1E695EFF8];
      *&self->_currentRotation = xmmword_1D8392250;
      self->_currentTranslation = *v7;
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = __56__SXFullscreenCanvasController_handleGestureRecognizer___block_invoke;
      v8[3] = &unk_1E84FFD40;
      v8[4] = self;
      [(SXFullscreenCanvasController *)self willStartTransformingWithGestureRecognizer:recognizerCopy completionBlock:v8];
      goto LABEL_23;
    }

    goto LABEL_21;
  }

LABEL_23:
}

void __56__SXFullscreenCanvasController_handleGestureRecognizer___block_invoke(uint64_t a1, char a2)
{
  v2 = *(a1 + 32);
  if (a2)
  {
    v3 = [*(a1 + 32) isFullscreen] ^ 1;

    [v2 startTransitionToFullScreen:v3 controllable:1];
  }

  else
  {
    v5 = [*(a1 + 32) pinchGestureRecognizer];
    [v5 cancel];

    v6 = [*(a1 + 32) panGestureRecognizer];
    [v6 cancel];

    v7 = [*(a1 + 32) rotationGestureRecognizer];
    [v7 cancel];
  }
}

- (void)handlePanGestureRecognizer:(id)recognizer
{
  recognizerCopy = recognizer;
  if ([recognizerCopy state] == 1)
  {
    self->_panIsActive = 1;
    self->_currentTranslation = *MEMORY[0x1E695EFF8];
    if ([(SXFullscreenCanvasController *)self isFullscreen])
    {
      if ([recognizerCopy numberOfTouches] == 1 && !-[SXFullscreenCanvasController pinchIsActive](self, "pinchIsActive") && !-[SXFullscreenCanvasController rotationIsActive](self, "rotationIsActive"))
      {
        self->_verticalSwipingIsActive = 1;
        [(SXFullscreenCanvasController *)self startVerticalSwiping];
      }
    }
  }

  if ([recognizerCopy state] == 2)
  {
    if ([(SXFullscreenCanvasController *)self pinchIsActive]|| [(SXFullscreenCanvasController *)self isFullscreen])
    {
      canvasViewController = [(SXFullscreenCanvasController *)self canvasViewController];
      view = [canvasViewController view];
      [recognizerCopy translationInView:view];
      self->_currentTranslation.x = v6;
      self->_currentTranslation.y = v7;

      if ([(SXFullscreenCanvasController *)self isFullscreen])
      {
        if ([(SXFullscreenCanvasController *)self verticalSwipingIsActive])
        {
          self->_currentTranslation.x = 0.0;
        }
      }
    }

    if ([recognizerCopy numberOfTouches] == 1 && !-[SXFullscreenCanvasController verticalSwipingIsActive](self, "verticalSwipingIsActive"))
    {
      [(SXFullscreenCanvasController *)self setLessTouchesAreInterupting:1];
      [recognizerCopy cancel];
      goto LABEL_34;
    }
  }

  if ([recognizerCopy state] == 4 || objc_msgSend(recognizerCopy, "state") == 3 || objc_msgSend(recognizerCopy, "state") == 5)
  {
    self->_panIsActive = 0;
    if ([(SXFullscreenCanvasController *)self isFullscreen])
    {
      if ([(SXFullscreenCanvasController *)self verticalSwipingIsActive])
      {
        self->_isStoppingVerticalSwiping = 1;
        view2 = [recognizerCopy view];
        [recognizerCopy velocityInView:view2];
        v10 = v9;
        v12 = v11;

        [(SXFullscreenCanvasController *)self currentTranslation];
        if (v13 >= 0.0)
        {
          v14 = v13;
        }

        else
        {
          v14 = -v13;
        }

        canvasViewController2 = [(SXFullscreenCanvasController *)self canvasViewController];
        view3 = [canvasViewController2 view];
        [view3 bounds];
        if (v14 / v17 <= 0.25)
        {
          if (v12 >= 0.0)
          {
            v18 = v12;
          }

          else
          {
            v18 = -v12;
          }

          if (v18 <= 10.0)
          {
            v19 = 0;
            goto LABEL_32;
          }
        }

        else
        {
        }

        v19 = 1;
LABEL_32:
        [(SXFullscreenCanvasController *)self stopVerticalSwipingDismissed:v19 lastVelocity:v10, v12];
      }
    }
  }

  [(SXFullscreenCanvasController *)self handleGestureRecognizer:recognizerCopy];
LABEL_34:
}

- (void)handleRotationGestureRecognizer:(id)recognizer
{
  recognizerCopy = recognizer;
  if ([recognizerCopy state] == 1)
  {
    self->_rotationIsActive = 1;
    self->_currentRotation = 0.0;
  }

  if ([recognizerCopy state] != 2)
  {
    goto LABEL_10;
  }

  if ([(SXFullscreenCanvasController *)self pinchIsActive])
  {
    [recognizerCopy rotation];
    self->_currentRotation = v4;
  }

  if ([recognizerCopy numberOfTouches] == 1)
  {
    [(SXFullscreenCanvasController *)self setLessTouchesAreInterupting:1];
    [recognizerCopy cancel];
  }

  else
  {
LABEL_10:
    if ([recognizerCopy state] == 4 || objc_msgSend(recognizerCopy, "state") == 3 || objc_msgSend(recognizerCopy, "state") == 5)
    {
      self->_rotationIsActive = 0;
    }

    [(SXFullscreenCanvasController *)self handleGestureRecognizer:recognizerCopy];
  }
}

- (void)handleOpenTapGesture:(id)gesture
{
  gestureCopy = gesture;
  showable = [(SXFullscreenCanvasController *)self showable];
  v6 = [showable requestInteractivityFocusForFullScreenCanvasController:self];

  if (v6)
  {
    if ([gestureCopy state] != 4 && objc_msgSend(gestureCopy, "state") != 5 && objc_msgSend(gestureCopy, "state") == 3)
    {
      __asm { FMOV            V0.2D, #0.5 }

      self->_startingAnchorPoint = _Q0;
      v12 = MEMORY[0x1E695EFF8];
      *&self->_currentRotation = xmmword_1D8392250;
      self->_currentTranslation = *v12;
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __53__SXFullscreenCanvasController_handleOpenTapGesture___block_invoke;
      v13[3] = &unk_1E85007C0;
      v13[4] = self;
      v14 = gestureCopy;
      [(SXFullscreenCanvasController *)self willStartTransformingWithGestureRecognizer:v14 completionBlock:v13];
    }
  }

  else
  {
    [gestureCopy cancel];
  }
}

uint64_t __53__SXFullscreenCanvasController_handleOpenTapGesture___block_invoke(uint64_t a1, int a2)
{
  if (a2)
  {
    [*(a1 + 32) startTransitionToFullScreen:1 controllable:0];
    v3 = *(a1 + 32);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __53__SXFullscreenCanvasController_handleOpenTapGesture___block_invoke_2;
    v6[3] = &unk_1E84FED18;
    v6[4] = v3;
    return [v3 goToFullScreenFromOriginalAnimated:1 completionBlock:v6];
  }

  else
  {
    v5 = *(a1 + 40);

    return [v5 cancel];
  }
}

- (void)presentFullscreenWithIndex:(unint64_t)index
{
  self->_currentScale = 1.0;
  [(SXFullscreenCanvasController *)self setCurrentViewIndex:index];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __59__SXFullscreenCanvasController_presentFullscreenWithIndex___block_invoke;
  v4[3] = &unk_1E84FFD40;
  v4[4] = self;
  [(SXFullscreenCanvasController *)self willStartTransformingWithGestureRecognizer:0 completionBlock:v4];
}

uint64_t __59__SXFullscreenCanvasController_presentFullscreenWithIndex___block_invoke(uint64_t result, int a2)
{
  if (a2)
  {
    v2 = result;
    v3 = [*(result + 32) backgroundView];
    [v3 setAlpha:1.0];

    v4 = *(v2 + 32);
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __59__SXFullscreenCanvasController_presentFullscreenWithIndex___block_invoke_2;
    v5[3] = &unk_1E84FED18;
    v5[4] = v4;
    return [v4 goToFullScreenFromOriginalAnimated:0 completionBlock:v5];
  }

  return result;
}

- (void)handlePinchGestureRecognizer:(id)recognizer
{
  recognizerCopy = recognizer;
  if ([recognizerCopy state] == 1)
  {
    self->_pinchIsActive = 1;
    [recognizerCopy scale];
    self->_currentScale = v4;
    self->_currentRotation = 0.0;
    v5 = MEMORY[0x1E695EFF8];
    self->_currentTranslation = *MEMORY[0x1E695EFF8];
    rotationGestureRecognizer = [(SXFullscreenCanvasController *)self rotationGestureRecognizer];
    [rotationGestureRecognizer setRotation:0.0];

    panGestureRecognizer = [(SXFullscreenCanvasController *)self panGestureRecognizer];
    panGestureRecognizer2 = [(SXFullscreenCanvasController *)self panGestureRecognizer];
    view = [panGestureRecognizer2 view];
    [panGestureRecognizer setTranslation:view inView:{*v5, v5[1]}];
  }

  if ([recognizerCopy state] == 2 && (objc_msgSend(recognizerCopy, "scale"), self->_currentScale = v10, objc_msgSend(recognizerCopy, "numberOfTouches") == 1))
  {
    [(SXFullscreenCanvasController *)self setLessTouchesAreInterupting:1];
    [recognizerCopy cancel];
  }

  else
  {
    if ([recognizerCopy state] == 4 || objc_msgSend(recognizerCopy, "state") == 3 || objc_msgSend(recognizerCopy, "state") == 5)
    {
      self->_pinchIsActive = 0;
    }

    [(SXFullscreenCanvasController *)self handleGestureRecognizer:recognizerCopy];
  }
}

- (void)willStartTransformingWithGestureRecognizer:(id)recognizer completionBlock:(id)block
{
  recognizerCopy = recognizer;
  blockCopy = block;
  if (!self->_isTransitioning)
  {
    if (recognizerCopy)
    {
      view = [recognizerCopy view];
      [recognizerCopy locationInView:view];
      v10 = v9;
      v12 = v11;

      currentViewIndex = [(SXFullscreenCanvasController *)self viewIndexForPoint:v10, v12];
      self->_currentViewIndex = currentViewIndex;
    }

    else
    {
      v10 = *MEMORY[0x1E695EFF8];
      v12 = *(MEMORY[0x1E695EFF8] + 8);
      currentViewIndex = self->_currentViewIndex;
    }

    showable = [(SXFullscreenCanvasController *)self showable];
    showable2 = [(SXFullscreenCanvasController *)self showable];
    v16 = [showable fullScreenCanvasController:self numberOfViewsForShowable:showable2];

    if (currentViewIndex < v16)
    {
      if ([(SXFullscreenCanvasController *)self isFullscreen])
      {
        self->_isTransitioning = 1;
        canvasViewController = [(SXFullscreenCanvasController *)self canvasViewController];
        [canvasViewController setIsTransitioning:1];

        captionView = [(SXFullscreenCanvasController *)self captionView];

        if (captionView)
        {
          captionView2 = [(SXFullscreenCanvasController *)self captionView];
          -[SXFullscreenCanvasController changeCaptionViewForViewWithIndex:expanded:animated:](self, "changeCaptionViewForViewWithIndex:expanded:animated:", [captionView2 viewIndex], 0, 1);
        }

        showable3 = [(SXFullscreenCanvasController *)self showable];
        showable4 = [(SXFullscreenCanvasController *)self showable];
        v22 = [showable3 fullScreenCanvasController:self originalViewForShowable:showable4 viewIndex:{-[SXFullscreenCanvasController currentViewIndex](self, "currentViewIndex")}];
        currentView = self->_currentView;
        self->_currentView = v22;

        if (recognizerCopy)
        {
          view2 = [recognizerCopy view];
          [view2 convertPoint:self->_currentView toView:{v10, v12}];

          [(UIView *)self->_currentView bounds];
          [SXFullscreenCanvasController calculateAnchorPointFromBounds:"calculateAnchorPointFromBounds:andPoint:" andPoint:?];
          self->_startingAnchorPoint.x = v25;
          self->_startingAnchorPoint.y = v26;
        }

        showable5 = [(SXFullscreenCanvasController *)self showable];
        v28 = objc_opt_respondsToSelector();

        if (v28)
        {
          showable6 = [(SXFullscreenCanvasController *)self showable];
          showable7 = [(SXFullscreenCanvasController *)self showable];
          [showable6 fullScreenCanvasController:self willHideShowable:showable7 viewIndex:{-[SXFullscreenCanvasController currentViewIndex](self, "currentViewIndex")}];
        }

        itemizedScrollView = [(SXFullscreenCanvasController *)self itemizedScrollView];
        [itemizedScrollView setScrollEnabled:0];

        showable8 = [(SXFullscreenCanvasController *)self showable];
        showable9 = [(SXFullscreenCanvasController *)self showable];
        canvasViewController2 = [(SXFullscreenCanvasController *)self canvasViewController];
        view3 = [canvasViewController2 view];
        [showable8 fullScreenCanvasController:self originalFrameForShowable:showable9 onCanvasView:view3 viewIndex:{-[SXFullscreenCanvasController currentViewIndex](self, "currentViewIndex")}];
        self->_currentDestinationFrame.origin.x = v36;
        self->_currentDestinationFrame.origin.y = v37;
        self->_currentDestinationFrame.size.width = v38;
        self->_currentDestinationFrame.size.height = v39;

        showable10 = [(SXFullscreenCanvasController *)self showable];
        showable11 = [(SXFullscreenCanvasController *)self showable];
        currentViewIndex = [(SXFullscreenCanvasController *)self currentViewIndex];
        canvasViewController3 = [(SXFullscreenCanvasController *)self canvasViewController];
        view4 = [canvasViewController3 view];
        [view4 bounds];
        [showable10 fullScreenCanvasController:self fullScreenFrameForShowable:showable11 viewIndex:currentViewIndex withinRect:?];
        self->_currentOriginFrame.origin.x = v45;
        self->_currentOriginFrame.origin.y = v46;
        self->_currentOriginFrame.size.width = v47;
        self->_currentOriginFrame.size.height = v48;

        currentView = [(SXFullscreenCanvasController *)self currentView];
        superview = [currentView superview];
        currentView2 = [(SXFullscreenCanvasController *)self currentView];
        [currentView2 frame];
        v53 = v52;
        v55 = v54;
        v57 = v56;
        v59 = v58;
        canvasViewController4 = [(SXFullscreenCanvasController *)self canvasViewController];
        view5 = [canvasViewController4 view];
        [superview convertRect:view5 toView:{v53, v55, v57, v59}];
        v63 = v62;
        v65 = v64;
        v67 = v66;
        v69 = v68;

        currentView3 = [(SXFullscreenCanvasController *)self currentView];
        [currentView3 setFrame:{v63, v65, v67, v69}];

        canvasViewController5 = [(SXFullscreenCanvasController *)self canvasViewController];
        view6 = [canvasViewController5 view];
        currentView4 = [(SXFullscreenCanvasController *)self currentView];
        captionView3 = [(SXFullscreenCanvasController *)self captionView];
        [view6 insertSubview:currentView4 belowSubview:captionView3];

        [(SXFullscreenCanvasController *)self transferCurrentViewToCanvas];
        currentView5 = [(SXFullscreenCanvasController *)self currentView];
        [(SXFullscreenCanvasController *)self transferGestureViewToView:currentView5];

        currentView6 = [(SXFullscreenCanvasController *)self currentView];
        layer = [currentView6 layer];
        [(SXFullscreenCanvasController *)self startingAnchorPoint];
        [layer setAnchorPointWithoutChangingPosition:?];

        itemizedScrollView2 = [(SXFullscreenCanvasController *)self itemizedScrollView];
        [itemizedScrollView2 removeFromSuperview];

        [(SXFullscreenCanvasController *)self setItemizedScrollView:0];
        captionView4 = [(SXFullscreenCanvasController *)self captionView];
        [captionView4 removeFromSuperview];

        [(SXFullscreenCanvasController *)self setCaptionView:0];
        navigationBarView = [(SXFullscreenCanvasController *)self navigationBarView];
        [navigationBarView removeFromSuperview];

        [(SXFullscreenCanvasController *)self setNavigationBarView:0];
        if (blockCopy)
        {
          blockCopy[2](blockCopy, 1);
        }

        goto LABEL_19;
      }

      showable12 = [(SXFullscreenCanvasController *)self showable];
      if (objc_opt_respondsToSelector())
      {
        showable13 = [(SXFullscreenCanvasController *)self showable];
        showable14 = [(SXFullscreenCanvasController *)self showable];
        v84 = [showable13 fullScreenCanvasController:self willShowShowable:showable14 viewIndex:{-[SXFullscreenCanvasController currentViewIndex](self, "currentViewIndex")}];

        if ((v84 & 1) == 0)
        {
          goto LABEL_17;
        }
      }

      else
      {
      }

      self->_isTransitioning = 1;
      showable15 = [(SXFullscreenCanvasController *)self showable];
      showable16 = [(SXFullscreenCanvasController *)self showable];
      v90[0] = MEMORY[0x1E69E9820];
      v90[1] = 3221225472;
      v90[2] = __91__SXFullscreenCanvasController_willStartTransformingWithGestureRecognizer_completionBlock___block_invoke;
      v90[3] = &unk_1E85007E8;
      v90[4] = self;
      v91 = recognizerCopy;
      v93 = v10;
      v94 = v12;
      v92 = blockCopy;
      v87 = [showable15 fullScreenCanvasController:self canvasViewControllerForShowable:showable16 completionBlock:v90];
      canvasViewController = self->_canvasViewController;
      self->_canvasViewController = v87;

      canvasViewController6 = [(SXFullscreenCanvasController *)self canvasViewController];
      [canvasViewController6 setIsTransitioning:1];

      goto LABEL_19;
    }
  }

LABEL_17:
  if (blockCopy)
  {
    blockCopy[2](blockCopy, 0);
  }

LABEL_19:
}

void __91__SXFullscreenCanvasController_willStartTransformingWithGestureRecognizer_completionBlock___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) canvasViewController];
  [v2 setDelegate:*(a1 + 32)];

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __91__SXFullscreenCanvasController_willStartTransformingWithGestureRecognizer_completionBlock___block_invoke_2;
  block[3] = &unk_1E85007E8;
  v3 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v5 = v3;
  v7 = *(a1 + 56);
  v6 = *(a1 + 48);
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

uint64_t __91__SXFullscreenCanvasController_willStartTransformingWithGestureRecognizer_completionBlock___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) showable];
  v3 = *(a1 + 32);
  v4 = [v3 showable];
  v5 = [v2 fullScreenCanvasController:v3 originalViewForShowable:v4 viewIndex:{objc_msgSend(*(a1 + 32), "currentViewIndex")}];
  v6 = *(a1 + 32);
  v7 = *(v6 + 136);
  *(v6 + 136) = v5;

  v8 = *(a1 + 32);
  v9 = [v8 showable];
  v10 = *(a1 + 32);
  v11 = [v10 showable];
  v12 = [*(a1 + 32) canvasViewController];
  v13 = [v12 view];
  [v9 fullScreenCanvasController:v10 originalFrameForShowable:v11 onCanvasView:v13 viewIndex:{objc_msgSend(*(a1 + 32), "currentViewIndex")}];
  v8[27] = v14;
  v8[28] = v15;
  v8[29] = v16;
  v8[30] = v17;

  v18 = *(a1 + 32);
  v19 = [v18 showable];
  v20 = *(a1 + 32);
  v21 = [v20 showable];
  v22 = [*(a1 + 32) currentViewIndex];
  v23 = [*(a1 + 32) canvasViewController];
  v24 = [v23 view];
  [v24 bounds];
  [v19 fullScreenCanvasController:v20 fullScreenFrameForShowable:v21 viewIndex:v22 withinRect:?];
  v18[31] = v25;
  v18[32] = v26;
  v18[33] = v27;
  v18[34] = v28;

  v29 = *(a1 + 40);
  if (v29)
  {
    v30 = [v29 view];
    [v30 convertPoint:*(*(a1 + 32) + 136) toView:{*(a1 + 56), *(a1 + 64)}];

    v31 = *(a1 + 32);
    [*(v31 + 136) bounds];
    [v31 calculateAnchorPointFromBounds:? andPoint:?];
    *(v31 + 200) = v32;
    *(v31 + 208) = v33;
  }

  v34 = [*(a1 + 32) canvasViewController];
  v35 = [v34 view];
  [v35 bounds];
  v37 = v36;

  v38 = [*(a1 + 32) canvasViewController];
  v39 = [v38 view];
  [v39 bounds];
  v41 = v40;

  if (v37 >= v41)
  {
    v42 = v37;
  }

  else
  {
    v42 = v41;
  }

  v43 = v42 + v42;
  v44 = [*(a1 + 32) canvasViewController];
  v45 = [v44 view];
  [v45 bounds];
  v47 = v46 - v43 * 0.5;
  v48 = [*(a1 + 32) canvasViewController];
  v49 = [v48 view];
  [v49 bounds];
  v51 = v50 - v43 * 0.5;

  v52 = [*(a1 + 32) canvasViewController];
  v53 = [v52 view];
  v54 = [*(a1 + 32) backgroundView];
  [v53 addSubview:v54];

  v55 = [*(a1 + 32) backgroundView];
  [v55 setAlpha:0.0];

  v56 = [*(a1 + 32) backgroundView];
  [v56 setFrame:{v47, v51, v43, v43}];

  [*(a1 + 32) transferCurrentViewToCanvas];
  v57 = [*(a1 + 32) currentView];
  v58 = [v57 layer];
  [*(a1 + 32) startingAnchorPoint];
  [v58 setAnchorPointWithoutChangingPosition:?];

  result = *(a1 + 48);
  if (result)
  {
    v60 = *(result + 16);

    return v60();
  }

  return result;
}

- (void)updateTransform
{
  v3 = *(MEMORY[0x1E695EFD0] + 16);
  *&v23.a = *MEMORY[0x1E695EFD0];
  *&v23.c = v3;
  *&v23.tx = *(MEMORY[0x1E695EFD0] + 32);
  x = self->_currentTranslation.x;
  y = self->_currentTranslation.y;
  *&v22.a = *&v23.a;
  *&v22.c = v3;
  *&v22.tx = *&v23.tx;
  CGAffineTransformTranslate(&v23, &v22, x, y);
  currentRotation = self->_currentRotation;
  v21 = v23;
  CGAffineTransformRotate(&v22, &v21, currentRotation);
  v23 = v22;
  currentScale = self->_currentScale;
  v21 = v22;
  CGAffineTransformScale(&v22, &v21, currentScale, currentScale);
  v23 = v22;
  v20 = v22;
  currentView = [(SXFullscreenCanvasController *)self currentView];
  v22 = v20;
  [currentView setTransform:&v22];

  if ([(SXFullscreenCanvasController *)self verticalSwipingIsActive])
  {
    [(SXFullscreenCanvasController *)self currentTranslation];
    if (v9 >= 0.0)
    {
      v10 = v9;
    }

    else
    {
      v10 = -v9;
    }

    canvasViewController = [(SXFullscreenCanvasController *)self canvasViewController];
    view = [canvasViewController view];
    [view bounds];
    v14 = v10 / (v13 * -0.5) + 1.0;
  }

  else
  {
    isFullscreen = [(SXFullscreenCanvasController *)self isFullscreen];
    [(SXFullscreenCanvasController *)self currentScale];
    if (isFullscreen)
    {
      v14 = (v16 + -0.6) / 0.4;
    }

    else
    {
      v14 = v16 + -1.0 + v16 + -1.0;
    }
  }

  v17 = fmax(v14, 0.0);
  if (v17 <= 1.0)
  {
    v18 = v17;
  }

  else
  {
    v18 = 1.0;
  }

  backgroundView = [(SXFullscreenCanvasController *)self backgroundView];
  [backgroundView setAlpha:v18];
}

- (void)stopTransformingCancelled:(BOOL)cancelled
{
  currentScale = self->_currentScale;
  if (currentScale > 1.5)
  {
    if (![(SXFullscreenCanvasController *)self isFullscreen])
    {
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = __58__SXFullscreenCanvasController_stopTransformingCancelled___block_invoke;
      v8[3] = &unk_1E84FED18;
      v8[4] = self;
      [(SXFullscreenCanvasController *)self goToFullScreenFromOriginalAnimated:1 completionBlock:v8];
      return;
    }

    currentScale = self->_currentScale;
  }

  if (currentScale > 0.6)
  {
    if ([(SXFullscreenCanvasController *)self isFullscreen])
    {
      v7[0] = MEMORY[0x1E69E9820];
      v7[1] = 3221225472;
      v7[2] = __58__SXFullscreenCanvasController_stopTransformingCancelled___block_invoke_2;
      v7[3] = &unk_1E84FED18;
      v7[4] = self;
      [(SXFullscreenCanvasController *)self goToFullScreenFromFullScreenAnimated:1 completionBlock:v7];
      return;
    }

    currentScale = self->_currentScale;
  }

  if (currentScale <= 0.6)
  {
    if ([(SXFullscreenCanvasController *)self isFullscreen])
    {
      [(SXFullscreenCanvasController *)self removeScaleAndTranslationFromCurrentView];
      v6[0] = MEMORY[0x1E69E9820];
      v6[1] = 3221225472;
      v6[2] = __58__SXFullscreenCanvasController_stopTransformingCancelled___block_invoke_3;
      v6[3] = &unk_1E84FED18;
      v6[4] = self;
      [(SXFullscreenCanvasController *)self goToOriginalFromFullScreenAnimated:1 completionBlock:v6];
      return;
    }

    currentScale = self->_currentScale;
  }

  if (currentScale <= 1.5 && ![(SXFullscreenCanvasController *)self isFullscreen])
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __58__SXFullscreenCanvasController_stopTransformingCancelled___block_invoke_4;
    v5[3] = &unk_1E84FED18;
    v5[4] = self;
    [(SXFullscreenCanvasController *)self goToOriginalFromOriginalAnimated:1 completionBlock:v5];
  }
}

uint64_t __58__SXFullscreenCanvasController_stopTransformingCancelled___block_invoke(uint64_t a1)
{
  [*(a1 + 32) removeScaleAndTranslationFromCurrentView];
  v2 = *(a1 + 32);

  return [v2 didEndTransitionFromFullScreen:0 toFullScreen:1];
}

- (void)startTransitionToFullScreen:(BOOL)screen controllable:(BOOL)controllable
{
  if (!screen)
  {
    controllableCopy = controllable;
    if ([(SXFullscreenCanvasController *)self isFullscreen])
    {
      if (controllableCopy)
      {
        itemizedScrollView = [(SXFullscreenCanvasController *)self itemizedScrollView];
        activeView = [itemizedScrollView activeView];
        [activeView removeFromSuperview];
      }
    }
  }
}

- (void)didEndTransitionFromFullScreen:(BOOL)screen toFullScreen:(BOOL)fullScreen
{
  [(SXFullscreenCanvasController *)self setIsFullscreen:fullScreen];
  self->_isTransitioning = 0;
  isFullscreen = [(SXFullscreenCanvasController *)self isFullscreen];
  if (isFullscreen)
  {
    itemizedScrollView = [(SXFullscreenCanvasController *)self itemizedScrollView];
    v7 = 1;
    [itemizedScrollView setScrollEnabled:1];

    [(SXFullscreenCanvasController *)self didFinishFullscreenActiveIndex:[(SXFullscreenCanvasController *)self currentViewIndex]];
    showable = [(SXFullscreenCanvasController *)self showable];
    v9 = objc_opt_respondsToSelector();

    if ((v9 & 1) == 0)
    {
      goto LABEL_8;
    }

    showable2 = [(SXFullscreenCanvasController *)self showable];
    showable3 = [(SXFullscreenCanvasController *)self showable];
    [showable2 fullScreenCanvasController:self didShowShowable:showable3 viewIndex:{-[SXFullscreenCanvasController currentViewIndex](self, "currentViewIndex")}];
  }

  else
  {
    showable4 = [(SXFullscreenCanvasController *)self showable];
    v13 = objc_opt_respondsToSelector();

    if (v13)
    {
      showable5 = [(SXFullscreenCanvasController *)self showable];
      showable6 = [(SXFullscreenCanvasController *)self showable];
      [showable5 fullScreenCanvasController:self didHideShowable:showable6 viewIndex:{-[SXFullscreenCanvasController currentViewIndex](self, "currentViewIndex")}];
    }

    showable7 = [(SXFullscreenCanvasController *)self showable];
    gestureView = [(SXFullscreenCanvasController *)self gestureView];
    showable8 = [(SXFullscreenCanvasController *)self showable];
    [showable7 fullScreenCanvasController:self shouldAddGestureView:gestureView forShowable:showable8];

    showable2 = [(SXFullscreenCanvasController *)self canvasViewController];
    [showable2 setView:0];
  }

  v7 = isFullscreen;
LABEL_8:
  dragManager = [(SXFullscreenCanvasController *)self dragManager];
  [dragManager setEnabled:v7];

  canvasViewController = [(SXFullscreenCanvasController *)self canvasViewController];
  [canvasViewController setIsTransitioning:0];
}

- (void)startVerticalSwiping
{
  itemizedScrollView = [(SXFullscreenCanvasController *)self itemizedScrollView];
  [itemizedScrollView setScrollEnabled:0];

  *&self->_currentRotation = xmmword_1D8392250;
  panGestureRecognizer = [(SXFullscreenCanvasController *)self panGestureRecognizer];
  [(SXFullscreenCanvasController *)self willStartTransformingWithGestureRecognizer:panGestureRecognizer completionBlock:0];
}

- (void)stopVerticalSwipingDismissed:(BOOL)dismissed lastVelocity:(CGPoint)velocity
{
  if (dismissed)
  {
    y = velocity.y;
    x = velocity.x;
    [(SXFullscreenCanvasController *)self setIsFullscreen:0];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __74__SXFullscreenCanvasController_stopVerticalSwipingDismissed_lastVelocity___block_invoke_2;
    v7[3] = &unk_1E84FED18;
    v7[4] = self;
    [(SXFullscreenCanvasController *)self goToOriginalFromVerticalSwipingWithVelocity:v7 completionBlock:x, y];
  }

  else
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __74__SXFullscreenCanvasController_stopVerticalSwipingDismissed_lastVelocity___block_invoke;
    v8[3] = &unk_1E84FED18;
    v8[4] = self;
    [(SXFullscreenCanvasController *)self goToFullScreenFromFullScreenAnimated:1 completionBlock:v8];
  }
}

uint64_t __74__SXFullscreenCanvasController_stopVerticalSwipingDismissed_lastVelocity___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) itemizedScrollView];
  [v2 setScrollEnabled:1];

  v3 = *(a1 + 32);
  v4 = v3[16];

  return [v3 didFinishFullscreenActiveIndex:v4];
}

uint64_t __74__SXFullscreenCanvasController_stopVerticalSwipingDismissed_lastVelocity___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) transferCurrentViewToOriginalView];
  v2 = *(a1 + 32);

  return [v2 didEndTransitionFromFullScreen:1 toFullScreen:0];
}

- (void)goToFullScreenFromOriginalAnimated:(BOOL)animated completionBlock:(id)block
{
  animatedCopy = animated;
  blockCopy = block;
  currentView = [(SXFullscreenCanvasController *)self currentView];
  v8 = currentView;
  if (animatedCopy)
  {
    [currentView setUserInteractionEnabled:0];

    v9 = MEMORY[0x1E69DD250];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __83__SXFullscreenCanvasController_goToFullScreenFromOriginalAnimated_completionBlock___block_invoke;
    v16[3] = &unk_1E84FED18;
    v16[4] = self;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __83__SXFullscreenCanvasController_goToFullScreenFromOriginalAnimated_completionBlock___block_invoke_2;
    v14[3] = &unk_1E8500810;
    v14[4] = self;
    v15 = blockCopy;
    [v9 animateWithDuration:0 delay:v16 usingSpringWithDamping:v14 initialSpringVelocity:0.6 options:0.0 animations:0.6 completion:0.8];
  }

  else
  {
    v10 = *(MEMORY[0x1E695EFD0] + 16);
    v13[0] = *MEMORY[0x1E695EFD0];
    v13[1] = v10;
    v13[2] = *(MEMORY[0x1E695EFD0] + 32);
    [currentView setTransform:v13];

    currentView2 = [(SXFullscreenCanvasController *)self currentView];
    layer = [currentView2 layer];
    [layer setAnchorPointWithoutChangingPosition:{0.5, 0.5}];

    if (blockCopy)
    {
      blockCopy[2](blockCopy);
    }
  }
}

void __83__SXFullscreenCanvasController_goToFullScreenFromOriginalAnimated_completionBlock___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) backgroundView];
  [v2 setAlpha:1.0];

  v3 = [*(a1 + 32) currentView];
  v4 = [v3 layer];
  [v4 setAnchorPoint:{0.5, 0.5}];

  v5 = [*(a1 + 32) currentView];
  [*(a1 + 32) currentDestinationFrame];
  MidX = CGRectGetMidX(v12);
  [*(a1 + 32) currentDestinationFrame];
  [v5 setCenter:{MidX, CGRectGetMidY(v13)}];

  v7 = [*(a1 + 32) currentView];
  [*(a1 + 32) currentDestinationFrame];
  Width = CGRectGetWidth(v14);
  [*(a1 + 32) currentDestinationFrame];
  [v7 setBounds:{0.0, 0.0, Width, CGRectGetHeight(v15)}];

  v9 = [*(a1 + 32) currentView];
  v10 = *(MEMORY[0x1E695EFD0] + 16);
  v11[0] = *MEMORY[0x1E695EFD0];
  v11[1] = v10;
  v11[2] = *(MEMORY[0x1E695EFD0] + 32);
  [v9 setTransform:v11];
}

uint64_t __83__SXFullscreenCanvasController_goToFullScreenFromOriginalAnimated_completionBlock___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) currentView];
  v3 = [v2 layer];
  [v3 setAnchorPointWithoutChangingPosition:{0.5, 0.5}];

  v4 = [*(a1 + 32) currentView];
  [v4 setUserInteractionEnabled:1];

  result = *(a1 + 40);
  if (result)
  {
    v6 = *(result + 16);

    return v6();
  }

  return result;
}

- (void)goToFullScreenFromFullScreenAnimated:(BOOL)animated completionBlock:(id)block
{
  animatedCopy = animated;
  blockCopy = block;
  showable = [(SXFullscreenCanvasController *)self showable];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    showable2 = [(SXFullscreenCanvasController *)self showable];
    showable3 = [(SXFullscreenCanvasController *)self showable];
    [showable2 fullScreenCanvasController:self willReturnToFullscreenForShowable:showable3 viewIndex:{-[SXFullscreenCanvasController currentViewIndex](self, "currentViewIndex")}];
  }

  currentView = [(SXFullscreenCanvasController *)self currentView];
  v12 = currentView;
  if (animatedCopy)
  {
    [currentView setUserInteractionEnabled:1];

    v13 = MEMORY[0x1E69DD250];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __85__SXFullscreenCanvasController_goToFullScreenFromFullScreenAnimated_completionBlock___block_invoke;
    v20[3] = &unk_1E84FED18;
    v20[4] = self;
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __85__SXFullscreenCanvasController_goToFullScreenFromFullScreenAnimated_completionBlock___block_invoke_2;
    v18[3] = &unk_1E8500810;
    v18[4] = self;
    v19 = blockCopy;
    [v13 animateWithDuration:0 delay:v20 usingSpringWithDamping:v18 initialSpringVelocity:0.6 options:0.0 animations:0.6 completion:0.8];
  }

  else
  {
    v14 = *(MEMORY[0x1E695EFD0] + 16);
    v17[0] = *MEMORY[0x1E695EFD0];
    v17[1] = v14;
    v17[2] = *(MEMORY[0x1E695EFD0] + 32);
    [currentView setTransform:v17];

    currentView2 = [(SXFullscreenCanvasController *)self currentView];
    layer = [currentView2 layer];
    [layer setAnchorPointWithoutChangingPosition:{0.5, 0.5}];

    if (blockCopy)
    {
      blockCopy[2](blockCopy);
    }
  }
}

void __85__SXFullscreenCanvasController_goToFullScreenFromFullScreenAnimated_completionBlock___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) backgroundView];
  [v2 setAlpha:1.0];

  v3 = [*(a1 + 32) currentView];
  v4 = *(MEMORY[0x1E695EFD0] + 16);
  v5[0] = *MEMORY[0x1E695EFD0];
  v5[1] = v4;
  v5[2] = *(MEMORY[0x1E695EFD0] + 32);
  [v3 setTransform:v5];
}

uint64_t __85__SXFullscreenCanvasController_goToFullScreenFromFullScreenAnimated_completionBlock___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) currentView];
  v3 = [v2 layer];
  [v3 setAnchorPointWithoutChangingPosition:{0.5, 0.5}];

  v4 = [*(a1 + 32) currentView];
  [v4 setUserInteractionEnabled:1];

  result = *(a1 + 40);
  if (result)
  {
    v6 = *(result + 16);

    return v6();
  }

  return result;
}

- (void)goToOriginalFromFullScreenAnimated:(BOOL)animated completionBlock:(id)block
{
  animatedCopy = animated;
  blockCopy = block;
  canvasViewController = [(SXFullscreenCanvasController *)self canvasViewController];
  view = [canvasViewController view];
  window = [view window];
  [window layoutIfNeeded];

  showable = [(SXFullscreenCanvasController *)self showable];
  showable2 = [(SXFullscreenCanvasController *)self showable];
  canvasViewController2 = [(SXFullscreenCanvasController *)self canvasViewController];
  view2 = [canvasViewController2 view];
  [showable fullScreenCanvasController:self originalFrameForShowable:showable2 onCanvasView:view2 viewIndex:{-[SXFullscreenCanvasController currentViewIndex](self, "currentViewIndex")}];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;

  if (animatedCopy)
  {
    currentView = [(SXFullscreenCanvasController *)self currentView];
    [currentView setUserInteractionEnabled:0];

    v23 = MEMORY[0x1E69DD250];
    v31[0] = MEMORY[0x1E69E9820];
    v31[1] = 3221225472;
    v31[2] = __83__SXFullscreenCanvasController_goToOriginalFromFullScreenAnimated_completionBlock___block_invoke;
    v31[3] = &unk_1E84FF858;
    v31[4] = self;
    v31[5] = v15;
    v31[6] = v17;
    v31[7] = v19;
    v31[8] = v21;
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __83__SXFullscreenCanvasController_goToOriginalFromFullScreenAnimated_completionBlock___block_invoke_2;
    v29[3] = &unk_1E8500810;
    v29[4] = self;
    v30 = blockCopy;
    [v23 animateWithDuration:0 delay:v31 usingSpringWithDamping:v29 initialSpringVelocity:0.6 options:0.0 animations:0.6 completion:0.8];
  }

  else
  {
    currentView2 = [(SXFullscreenCanvasController *)self currentView];
    v25 = *(MEMORY[0x1E695EFD0] + 16);
    v28[0] = *MEMORY[0x1E695EFD0];
    v28[1] = v25;
    v28[2] = *(MEMORY[0x1E695EFD0] + 32);
    [currentView2 setTransform:v28];

    currentView3 = [(SXFullscreenCanvasController *)self currentView];
    layer = [currentView3 layer];
    [layer setAnchorPointWithoutChangingPosition:{0.5, 0.5}];

    [(SXFullscreenCanvasController *)self transferCurrentViewToOriginalView];
    if (blockCopy)
    {
      blockCopy[2](blockCopy);
    }
  }
}

void __83__SXFullscreenCanvasController_goToOriginalFromFullScreenAnimated_completionBlock___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) backgroundView];
  [v2 setAlpha:0.0];

  v3 = [*(a1 + 32) currentView];
  v4 = [v3 layer];
  [v4 setAnchorPoint:{0.5, 0.5}];

  v5 = [*(a1 + 32) currentView];
  MidX = CGRectGetMidX(*(a1 + 40));
  [v5 setCenter:{MidX, CGRectGetMidY(*(a1 + 40))}];

  v7 = [*(a1 + 32) currentView];
  Width = CGRectGetWidth(*(a1 + 40));
  [v7 setBounds:{0.0, 0.0, Width, CGRectGetHeight(*(a1 + 40))}];

  v9 = [*(a1 + 32) currentView];
  v10 = *(MEMORY[0x1E695EFD0] + 16);
  v11[0] = *MEMORY[0x1E695EFD0];
  v11[1] = v10;
  v11[2] = *(MEMORY[0x1E695EFD0] + 32);
  [v9 setTransform:v11];
}

uint64_t __83__SXFullscreenCanvasController_goToOriginalFromFullScreenAnimated_completionBlock___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) currentView];
  v3 = [v2 layer];
  [v3 setAnchorPointWithoutChangingPosition:{0.5, 0.5}];

  [*(a1 + 32) transferCurrentViewToOriginalView];
  v4 = [*(a1 + 32) currentView];
  [v4 setUserInteractionEnabled:1];

  result = *(a1 + 40);
  if (result)
  {
    v6 = *(result + 16);

    return v6();
  }

  return result;
}

- (void)goToOriginalFromOriginalAnimated:(BOOL)animated completionBlock:(id)block
{
  animatedCopy = animated;
  blockCopy = block;
  if (animatedCopy)
  {
    currentView = [(SXFullscreenCanvasController *)self currentView];
    [currentView setUserInteractionEnabled:1];

    v8 = MEMORY[0x1E69DD250];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __81__SXFullscreenCanvasController_goToOriginalFromOriginalAnimated_completionBlock___block_invoke;
    v17[3] = &unk_1E84FED18;
    v17[4] = self;
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __81__SXFullscreenCanvasController_goToOriginalFromOriginalAnimated_completionBlock___block_invoke_2;
    v15[3] = &unk_1E8500810;
    v15[4] = self;
    v16 = blockCopy;
    [v8 animateWithDuration:0 delay:v17 usingSpringWithDamping:v15 initialSpringVelocity:0.6 options:0.0 animations:0.6 completion:0.8];
  }

  else
  {
    backgroundView = [(SXFullscreenCanvasController *)self backgroundView];
    [backgroundView setAlpha:0.0];

    currentView2 = [(SXFullscreenCanvasController *)self currentView];
    v11 = *(MEMORY[0x1E695EFD0] + 16);
    v14[0] = *MEMORY[0x1E695EFD0];
    v14[1] = v11;
    v14[2] = *(MEMORY[0x1E695EFD0] + 32);
    [currentView2 setTransform:v14];

    currentView3 = [(SXFullscreenCanvasController *)self currentView];
    layer = [currentView3 layer];
    [layer setAnchorPointWithoutChangingPosition:{0.5, 0.5}];

    [(SXFullscreenCanvasController *)self transferCurrentViewToOriginalView];
    if (blockCopy)
    {
      blockCopy[2](blockCopy);
    }
  }
}

void __81__SXFullscreenCanvasController_goToOriginalFromOriginalAnimated_completionBlock___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) backgroundView];
  [v2 setAlpha:0.0];

  v3 = [*(a1 + 32) currentView];
  v4 = *(MEMORY[0x1E695EFD0] + 16);
  v5[0] = *MEMORY[0x1E695EFD0];
  v5[1] = v4;
  v5[2] = *(MEMORY[0x1E695EFD0] + 32);
  [v3 setTransform:v5];
}

uint64_t __81__SXFullscreenCanvasController_goToOriginalFromOriginalAnimated_completionBlock___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) currentView];
  v3 = [v2 layer];
  [v3 setAnchorPointWithoutChangingPosition:{0.5, 0.5}];

  [*(a1 + 32) transferCurrentViewToOriginalView];
  v4 = [*(a1 + 32) currentView];
  [v4 setUserInteractionEnabled:1];

  result = *(a1 + 40);
  if (result)
  {
    v6 = *(result + 16);

    return v6();
  }

  return result;
}

- (void)goToOriginalFromVerticalSwipingWithVelocity:(CGPoint)velocity completionBlock:(id)block
{
  y = velocity.y;
  x = velocity.x;
  blockCopy = block;
  [(SXFullscreenCanvasController *)self removeScaleAndTranslationFromCurrentView];
  canvasViewController = [(SXFullscreenCanvasController *)self canvasViewController];
  view = [canvasViewController view];
  window = [view window];
  [window layoutIfNeeded];

  showable = [(SXFullscreenCanvasController *)self showable];
  showable2 = [(SXFullscreenCanvasController *)self showable];
  canvasViewController2 = [(SXFullscreenCanvasController *)self canvasViewController];
  view2 = [canvasViewController2 view];
  [showable fullScreenCanvasController:self originalFrameForShowable:showable2 onCanvasView:view2 viewIndex:{-[SXFullscreenCanvasController currentViewIndex](self, "currentViewIndex")}];
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;

  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __92__SXFullscreenCanvasController_goToOriginalFromVerticalSwipingWithVelocity_completionBlock___block_invoke;
  v28[3] = &unk_1E8500838;
  v28[4] = self;
  *&v28[5] = x;
  *&v28[6] = y;
  [MEMORY[0x1E69DD250] animateWithDuration:0x20000 delay:v28 options:0 animations:0.13 completion:0.0];
  v23 = MEMORY[0x1E69DD250];
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __92__SXFullscreenCanvasController_goToOriginalFromVerticalSwipingWithVelocity_completionBlock___block_invoke_2;
  v27[3] = &unk_1E84FF858;
  v27[4] = self;
  v27[5] = v16;
  *&v27[6] = v18 + y * -0.1;
  v27[7] = v20;
  v27[8] = v22;
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __92__SXFullscreenCanvasController_goToOriginalFromVerticalSwipingWithVelocity_completionBlock___block_invoke_3;
  v25[3] = &unk_1E8500810;
  v25[4] = self;
  v26 = blockCopy;
  v24 = blockCopy;
  [v23 animateWithDuration:0 delay:v27 usingSpringWithDamping:v25 initialSpringVelocity:0.44 options:0.08 animations:0.85 completion:0.18];
}

void __92__SXFullscreenCanvasController_goToOriginalFromVerticalSwipingWithVelocity_completionBlock___block_invoke(uint64_t a1)
{
  CGAffineTransformMakeTranslation(&v4, 0.0, *(a1 + 48) * 0.1);
  v2 = [*(a1 + 32) currentView];
  v3 = v4;
  [v2 setTransform:&v3];
}

void __92__SXFullscreenCanvasController_goToOriginalFromVerticalSwipingWithVelocity_completionBlock___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) backgroundView];
  [v2 setAlpha:0.0];

  v3 = [*(a1 + 32) currentView];
  v4 = [v3 layer];
  [v4 setAnchorPoint:{0.5, 0.5}];

  v5 = [*(a1 + 32) currentView];
  MidX = CGRectGetMidX(*(a1 + 40));
  [v5 setCenter:{MidX, CGRectGetMidY(*(a1 + 40))}];

  v8 = [*(a1 + 32) currentView];
  Width = CGRectGetWidth(*(a1 + 40));
  [v8 setBounds:{0.0, 0.0, Width, CGRectGetHeight(*(a1 + 40))}];
}

uint64_t __92__SXFullscreenCanvasController_goToOriginalFromVerticalSwipingWithVelocity_completionBlock___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) currentView];
  v3 = *(MEMORY[0x1E695EFD0] + 16);
  v5[0] = *MEMORY[0x1E695EFD0];
  v5[1] = v3;
  v5[2] = *(MEMORY[0x1E695EFD0] + 32);
  [v2 setTransform:v5];

  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)handleTap:(id)tap
{
  itemizedScrollView = [(SXFullscreenCanvasController *)self itemizedScrollView];
  activeView = [itemizedScrollView activeView];
  superview = [activeView superview];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    captionView = [(SXFullscreenCanvasController *)self captionView];

    if (captionView)
    {
      captionView2 = [(SXFullscreenCanvasController *)self captionView];
      viewIndex = [captionView2 viewIndex];
      captionView3 = [(SXFullscreenCanvasController *)self captionView];
      -[SXFullscreenCanvasController changeCaptionViewForViewWithIndex:expanded:animated:](self, "changeCaptionViewForViewWithIndex:expanded:animated:", viewIndex, [captionView3 expanded] ^ 1, 1);
    }
  }
}

- (void)startSupressingColorSettings
{
  if (![(SXFullscreenCanvasController *)self isSupressingColorSettings])
  {
    [MEMORY[0x1E69DD370] suppressColorSettingsForRequester:self];

    [(SXFullscreenCanvasController *)self setIsSupressingColorSettings:1];
  }
}

- (void)stopSupressingColorSettings
{
  if ([(SXFullscreenCanvasController *)self isSupressingColorSettings])
  {
    [MEMORY[0x1E69DD370] restoreColorSettingsForRequester:self];

    [(SXFullscreenCanvasController *)self setIsSupressingColorSettings:0];
  }
}

- (int64_t)viewIndexForPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  if ([(SXFullscreenCanvasController *)self isFullscreen])
  {
    itemizedScrollView = [(SXFullscreenCanvasController *)self itemizedScrollView];
    activeViewIndex = [itemizedScrollView activeViewIndex];
  }

  else
  {
    itemizedScrollView = [(SXFullscreenCanvasController *)self showable];
    showable = [(SXFullscreenCanvasController *)self showable];
    activeViewIndex = [itemizedScrollView fullScreenCanvasController:self viewIndexForPoint:showable inShowable:{x, y}];
  }

  return activeViewIndex;
}

- (CGPoint)calculateAnchorPointFromBounds:(CGRect)bounds andPoint:(CGPoint)point
{
  v4 = point.x / bounds.size.width;
  v5 = point.y / bounds.size.height;
  result.y = v5;
  result.x = v4;
  return result;
}

- (void)transferCurrentViewToCanvas
{
  canvasViewController = [(SXFullscreenCanvasController *)self canvasViewController];
  view = [canvasViewController view];
  currentView = [(SXFullscreenCanvasController *)self currentView];
  [view addSubview:currentView];

  [(SXFullscreenCanvasController *)self currentOriginFrame];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  currentView2 = [(SXFullscreenCanvasController *)self currentView];
  [currentView2 setFrame:{v7, v9, v11, v13}];
}

- (void)transferCurrentViewToOriginalView
{
  showable = [(SXFullscreenCanvasController *)self showable];
  showable2 = [(SXFullscreenCanvasController *)self showable];
  [showable fullScreenCanvasController:self showable:showable2 shouldTransferToOriginalViewWithIndex:{-[SXFullscreenCanvasController currentViewIndex](self, "currentViewIndex")}];
}

- (void)transferGestureViewToView:(id)view
{
  viewCopy = view;
  gestureView = [(SXFullscreenCanvasController *)self gestureView];
  [viewCopy addSubview:gestureView];

  gestureView2 = [(SXFullscreenCanvasController *)self gestureView];
  itemizedScrollView = [(SXFullscreenCanvasController *)self itemizedScrollView];
  [itemizedScrollView bounds];
  Width = CGRectGetWidth(v11);
  itemizedScrollView2 = [(SXFullscreenCanvasController *)self itemizedScrollView];
  [itemizedScrollView2 bounds];
  [gestureView2 setFrame:{0.0, 0.0, Width, CGRectGetHeight(v12)}];

  [viewCopy setUserInteractionEnabled:1];
}

- (BOOL)comparePoint:(CGPoint)point withPoint:(CGPoint)withPoint maxDelta:(double)delta
{
  v5 = point.x - withPoint.x;
  if (v5 < 0.0)
  {
    v5 = -v5;
  }

  v6 = point.y - withPoint.y;
  if (v6 < 0.0)
  {
    v6 = -v6;
  }

  return v6 <= delta && v5 <= delta;
}

- (void)removeScaleAndTranslationFromCurrentView
{
  [(SXFullscreenCanvasController *)self currentOriginFrame];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(SXFullscreenCanvasController *)self startingAnchorPoint];
  v12 = v11;
  [(SXFullscreenCanvasController *)self currentScale];
  v14 = -(v12 * (v13 + -1.0));
  [(SXFullscreenCanvasController *)self currentTranslation];
  v16 = v4 + v15 + v14 * v8;
  [(SXFullscreenCanvasController *)self startingAnchorPoint];
  v18 = v17;
  [(SXFullscreenCanvasController *)self currentScale];
  v20 = -(v18 * (v19 + -1.0));
  [(SXFullscreenCanvasController *)self currentTranslation];
  v22 = v6 + v21 + v20 * v10;
  [(SXFullscreenCanvasController *)self currentScale];
  v24 = v8 * v23;
  [(SXFullscreenCanvasController *)self currentScale];
  v26 = v10 * v25;
  self->_currentTranslation = *MEMORY[0x1E695EFF8];
  self->_currentScale = 1.0;
  backgroundView = [(SXFullscreenCanvasController *)self backgroundView];
  [backgroundView alpha];
  v29 = v28;

  [(SXFullscreenCanvasController *)self updateTransform];
  backgroundView2 = [(SXFullscreenCanvasController *)self backgroundView];
  [backgroundView2 setAlpha:v29];

  currentView = [(SXFullscreenCanvasController *)self currentView];
  [currentView setFrameUsingCenterAndBounds:{v16, v22, v24, v26}];
}

- (void)fullScreenImageViewDidStartZooming:(id)zooming
{
  captionView = [(SXFullscreenCanvasController *)self captionView];

  if (captionView)
  {
    captionView2 = [(SXFullscreenCanvasController *)self captionView];
    -[SXFullscreenCanvasController changeCaptionViewForViewWithIndex:expanded:animated:](self, "changeCaptionViewForViewWithIndex:expanded:animated:", [captionView2 viewIndex], 0, 1);
  }

  pinchGestureRecognizer = [(SXFullscreenCanvasController *)self pinchGestureRecognizer];
  [pinchGestureRecognizer cancel];

  panGestureRecognizer = [(SXFullscreenCanvasController *)self panGestureRecognizer];
  [panGestureRecognizer cancel];

  rotationGestureRecognizer = [(SXFullscreenCanvasController *)self rotationGestureRecognizer];
  [rotationGestureRecognizer cancel];
}

- (void)fullScreenImageViewDidStopZooming:(id)zooming
{
  captionView = [(SXFullscreenCanvasController *)self captionView];

  if (captionView)
  {
    captionView2 = [(SXFullscreenCanvasController *)self captionView];
    -[SXFullscreenCanvasController changeCaptionViewForViewWithIndex:expanded:animated:](self, "changeCaptionViewForViewWithIndex:expanded:animated:", [captionView2 viewIndex], 1, 1);
  }
}

- (unint64_t)numberOfViewsInItemizedScrollView:(id)view
{
  showable = [(SXFullscreenCanvasController *)self showable];
  showable2 = [(SXFullscreenCanvasController *)self showable];
  v6 = [showable fullScreenCanvasController:self numberOfViewsForShowable:showable2];

  return v6;
}

- (CGRect)itemizedScrollView:(id)view frameForViewAtIndex:(unint64_t)index
{
  viewCopy = view;
  canvasViewController = [(SXFullscreenCanvasController *)self canvasViewController];
  view = [canvasViewController view];
  [view bounds];
  v9 = v8;
  v11 = v10;

  [viewCopy frame];
  v13 = -v12;
  [viewCopy frame];
  v15 = v14;

  v16 = -v15;
  v17 = v13;
  v18 = v9;
  v19 = v11;
  result.size.height = v19;
  result.size.width = v18;
  result.origin.y = v16;
  result.origin.x = v17;
  return result;
}

- (id)itemizedScrollView:(id)view viewAtIndex:(unint64_t)index
{
  showable = [(SXFullscreenCanvasController *)self showable];
  showable2 = [(SXFullscreenCanvasController *)self showable];
  v8 = [showable fullScreenCanvasController:self originalViewForShowable:showable2 viewIndex:index];

  showable3 = [(SXFullscreenCanvasController *)self showable];
  showable4 = [(SXFullscreenCanvasController *)self showable];
  canvasViewController = [(SXFullscreenCanvasController *)self canvasViewController];
  view = [canvasViewController view];
  [view bounds];
  [showable3 fullScreenCanvasController:self fullScreenFrameForShowable:showable4 viewIndex:index withinRect:?];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;

  v21 = [[SXFullscreenImageView alloc] initWithContentView:v8 viewIndex:index];
  [(SXFullscreenImageView *)v21 setContentViewFrame:v14, v16, v18, v20];
  [(SXFullscreenImageView *)v21 setDelegate:self];
  tapGestureRecognizer = [(SXFullscreenCanvasController *)self tapGestureRecognizer];
  doubleTapGestureRecognizer = [(SXFullscreenImageView *)v21 doubleTapGestureRecognizer];
  [tapGestureRecognizer requireGestureRecognizerToFail:doubleTapGestureRecognizer];

  scrollView = [(SXFullscreenImageView *)v21 scrollView];
  pinchGestureRecognizer = [scrollView pinchGestureRecognizer];
  pinchGestureRecognizer2 = [(SXFullscreenCanvasController *)self pinchGestureRecognizer];
  [pinchGestureRecognizer requireGestureRecognizerToFail:pinchGestureRecognizer2];

  return v21;
}

- (void)itemizedScrollView:(id)view didChangeToActiveViewIndex:(unint64_t)index
{
  activeView = [view activeView];
  scrollView = [activeView scrollView];
  [(SXFullscreenCanvasController *)self transferGestureViewToView:scrollView];

  captionView = [(SXFullscreenCanvasController *)self captionView];
  -[SXFullscreenCanvasController changeCaptionViewForViewWithIndex:expanded:animated:](self, "changeCaptionViewForViewWithIndex:expanded:animated:", index, [captionView expanded], 1);

  showable = [(SXFullscreenCanvasController *)self showable];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    showable2 = [(SXFullscreenCanvasController *)self showable];
    showable3 = [(SXFullscreenCanvasController *)self showable];
    [showable2 fullScreenCanvasController:self showable:showable3 didShowViewWithIndex:index];
  }
}

- (void)itemizedScrollView:(id)view willShowViewWithIndex:(unint64_t)index
{
  showable = [(SXFullscreenCanvasController *)self showable];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    showable2 = [(SXFullscreenCanvasController *)self showable];
    showable3 = [(SXFullscreenCanvasController *)self showable];
    [showable2 fullScreenCanvasController:self showable:showable3 willShowViewWithIndex:index];
  }
}

- (void)itemizedScrollView:(id)view didHideViewWithIndex:(unint64_t)index
{
  showable = [(SXFullscreenCanvasController *)self showable];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    showable2 = [(SXFullscreenCanvasController *)self showable];
    showable3 = [(SXFullscreenCanvasController *)self showable];
    [showable2 fullScreenCanvasController:self showable:showable3 didHideViewWithIndex:index];
  }

  showable4 = [(SXFullscreenCanvasController *)self showable];
  showable5 = [(SXFullscreenCanvasController *)self showable];
  [showable4 fullScreenCanvasController:self showable:showable5 shouldTransferToOriginalViewWithIndex:index];
}

- (void)scrollViewDidEndDragging:(id)dragging willDecelerate:(BOOL)decelerate
{
  if (!decelerate)
  {
    [(SXFullscreenCanvasController *)self stopSupressingColorSettings];
  }
}

- (BOOL)gestureRecognizerShouldBegin:(id)begin
{
  v71 = *MEMORY[0x1E69E9840];
  beginCopy = begin;
  showable = [(SXFullscreenCanvasController *)self showable];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    showable2 = [(SXFullscreenCanvasController *)self showable];
    showable3 = [(SXFullscreenCanvasController *)self showable];
    v9 = [showable2 fullScreenCanvasController:self showable:showable3 gestureRecognizerShouldBegin:beginCopy];

    if (!v9)
    {
      goto LABEL_49;
    }
  }

  if ([(SXFullscreenCanvasController *)self isFullscreen]&& ![(SXFullscreenCanvasController *)self totalActiveGestureRecognizers])
  {
    itemizedScrollView = [(SXFullscreenCanvasController *)self itemizedScrollView];
    activeView = [itemizedScrollView activeView];

    showable3 = [(SXFullscreenCanvasController *)self itemizedScrollView];
    if ([showable3 isDragging])
    {
LABEL_31:

LABEL_40:
      goto LABEL_49;
    }

    itemizedScrollView2 = [(SXFullscreenCanvasController *)self itemizedScrollView];
    isDecelerating = [itemizedScrollView2 isDecelerating];

    if ((isDecelerating & 1) != 0 || activeView && ![activeView allowsDismissal])
    {
      goto LABEL_40;
    }
  }

  tapGestureRecognizer = [(SXFullscreenCanvasController *)self tapGestureRecognizer];
  v11 = tapGestureRecognizer;
  if (tapGestureRecognizer == beginCopy)
  {
    showable3 = [(SXFullscreenCanvasController *)self isFullscreen];

    if (showable3)
    {
      tapGestureRecognizer2 = [(SXFullscreenCanvasController *)self tapGestureRecognizer];
      tapGestureRecognizer3 = [(SXFullscreenCanvasController *)self tapGestureRecognizer];
      view = [tapGestureRecognizer3 view];
      [tapGestureRecognizer2 locationInView:view];
      v16 = v15;
      v18 = v17;

      captionView = [(SXFullscreenCanvasController *)self captionView];
      [captionView frame];
      v72.x = v16;
      v72.y = v18;
      if (CGRectContainsPoint(v74, v72))
      {
        v20 = 0;
      }

      else
      {
        navigationBarView = [(SXFullscreenCanvasController *)self navigationBarView];
        [navigationBarView frame];
        v73.x = v16;
        v73.y = v18;
        v20 = !CGRectContainsPoint(v75, v73);
      }

      goto LABEL_50;
    }
  }

  else
  {
  }

  pinchGestureRecognizer = [(SXFullscreenCanvasController *)self pinchGestureRecognizer];

  if (pinchGestureRecognizer == beginCopy)
  {
    isFullscreen = [(SXFullscreenCanvasController *)self isFullscreen];
    if (isFullscreen)
    {
      showable3 = [(SXFullscreenCanvasController *)self pinchGestureRecognizer];
      [showable3 scale];
      if (v24 > 1.0)
      {

        goto LABEL_48;
      }

      if ([(SXFullscreenCanvasController *)self isFullscreen])
      {

        goto LABEL_11;
      }
    }

    else if ([(SXFullscreenCanvasController *)self isFullscreen])
    {
      goto LABEL_11;
    }

    pinchGestureRecognizer2 = [(SXFullscreenCanvasController *)self pinchGestureRecognizer];
    [pinchGestureRecognizer2 scale];
    v41 = v40;

    if (isFullscreen)
    {
    }

    if (v41 >= 1.0)
    {
      goto LABEL_11;
    }

LABEL_48:
    panGestureRecognizer = [(SXFullscreenCanvasController *)self panGestureRecognizer];
    [panGestureRecognizer cancel];

    rotationGestureRecognizer = [(SXFullscreenCanvasController *)self rotationGestureRecognizer];
    [rotationGestureRecognizer cancel];

    goto LABEL_49;
  }

LABEL_11:
  activeView = [(SXFullscreenCanvasController *)self panGestureRecognizer];
  if (activeView != beginCopy)
  {
LABEL_12:

    goto LABEL_26;
  }

  isFullscreen2 = [(SXFullscreenCanvasController *)self isFullscreen];

  if (isFullscreen2)
  {
    itemizedScrollView3 = [(SXFullscreenCanvasController *)self itemizedScrollView];
    activeView = [itemizedScrollView3 activeView];

    v68 = 0u;
    v69 = 0u;
    v66 = 0u;
    v67 = 0u;
    scrollView = [activeView scrollView];
    showable3 = [scrollView gestureRecognizers];

    v28 = [showable3 countByEnumeratingWithState:&v66 objects:v70 count:16];
    if (!v28)
    {
LABEL_25:

      goto LABEL_12;
    }

    v29 = v28;
    v30 = *v67;
LABEL_19:
    v31 = 0;
    while (1)
    {
      if (*v67 != v30)
      {
        objc_enumerationMutation(showable3);
      }

      if ([*(*(&v66 + 1) + 8 * v31) state])
      {
        goto LABEL_31;
      }

      if (v29 == ++v31)
      {
        v29 = [showable3 countByEnumeratingWithState:&v66 objects:v70 count:16];
        if (v29)
        {
          goto LABEL_19;
        }

        goto LABEL_25;
      }
    }
  }

LABEL_26:
  if ([(SXFullscreenCanvasController *)self verticalSwipingIsActive])
  {
    goto LABEL_49;
  }

  openTapGestureRecognizer = [(SXFullscreenCanvasController *)self openTapGestureRecognizer];

  if (openTapGestureRecognizer == beginCopy)
  {
    if (![(SXFullscreenCanvasController *)self isFullscreen])
    {
      v20 = ![(SXFullscreenCanvasController *)self pinchIsActive];
      goto LABEL_50;
    }

LABEL_49:
    v20 = 0;
    goto LABEL_50;
  }

  panGestureRecognizer2 = [(SXFullscreenCanvasController *)self panGestureRecognizer];
  v34 = panGestureRecognizer2;
  if (panGestureRecognizer2 != beginCopy)
  {

    goto LABEL_58;
  }

  isFullscreen3 = [(SXFullscreenCanvasController *)self isFullscreen];

  if (!isFullscreen3)
  {
LABEL_58:
    if ([(SXFullscreenCanvasController *)self totalActiveGestureRecognizers])
    {
      v20 = 1;
    }

    else
    {
      view2 = [beginCopy view];
      [beginCopy locationInView:view2];
      v60 = v59;
      v62 = v61;

      v63 = [(SXFullscreenCanvasController *)self viewIndexForPoint:v60, v62];
      v20 = v63 != 0x7FFFFFFFFFFFFFFFLL;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v20 = [beginCopy numberOfTouches] == 2 && v63 != 0x7FFFFFFFFFFFFFFFLL;
      }
    }

    goto LABEL_50;
  }

  panGestureRecognizer3 = [(SXFullscreenCanvasController *)self panGestureRecognizer];
  numberOfTouches = [panGestureRecognizer3 numberOfTouches];

  panGestureRecognizer4 = [(SXFullscreenCanvasController *)self panGestureRecognizer];
  v49 = panGestureRecognizer4;
  if (numberOfTouches == 1)
  {
    panGestureRecognizer5 = [(SXFullscreenCanvasController *)self panGestureRecognizer];
    view3 = [panGestureRecognizer5 view];
    [v49 translationInView:view3];
    v53 = v52;
    v55 = v54;

    v56 = -v55;
    if (v55 >= 0.0)
    {
      v56 = v55;
    }

    v57 = -v53;
    if (v53 >= 0.0)
    {
      v57 = v53;
    }

    v20 = v56 > v57;
  }

  else
  {
    v65 = [panGestureRecognizer4 numberOfTouches] == 2;

    v20 = v65 | v7;
  }

LABEL_50:

  return v20 & 1;
}

- (id)dragManager:(id)manager dragableAtLocation:(CGPoint)location
{
  v5 = [(SXFullscreenCanvasController *)self itemizedScrollView:manager];
  activeView = [v5 activeView];

  if (activeView)
  {
    itemizedScrollView = [(SXFullscreenCanvasController *)self itemizedScrollView];
    activeView2 = [itemizedScrollView activeView];
    contentView = [activeView2 contentView];
  }

  else
  {
    contentView = 0;
  }

  return contentView;
}

- (BOOL)captionView:(id)view tapGestureRecognizerShouldBegin:(id)begin
{
  beginCopy = begin;
  if ([(SXFullscreenCanvasController *)self isFullscreen])
  {
    view = [beginCopy view];
    [beginCopy locationInView:view];
    v8 = v7;
    v10 = v9;

    captionView = [(SXFullscreenCanvasController *)self captionView];
    [captionView bounds];
    v14.x = v8;
    v14.y = v10;
    v12 = CGRectContainsPoint(v15, v14);
  }

  else
  {
    v12 = 1;
  }

  return v12;
}

- (void)handleNextCommand
{
  showable = [(SXFullscreenCanvasController *)self showable];
  showable2 = [(SXFullscreenCanvasController *)self showable];
  v5 = [showable fullScreenCanvasController:self numberOfViewsForShowable:showable2];

  if (v5 >= 2)
  {
    itemizedScrollView = [(SXFullscreenCanvasController *)self itemizedScrollView];
    [itemizedScrollView scrollToNext];
  }
}

- (void)handlePreviousCommand
{
  showable = [(SXFullscreenCanvasController *)self showable];
  showable2 = [(SXFullscreenCanvasController *)self showable];
  v5 = [showable fullScreenCanvasController:self numberOfViewsForShowable:showable2];

  if (v5 >= 2)
  {
    itemizedScrollView = [(SXFullscreenCanvasController *)self itemizedScrollView];
    [itemizedScrollView scrollToPrevious];
  }
}

- (void)fullscreenCanvasViewController:(id)controller willTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __110__SXFullscreenCanvasController_fullscreenCanvasViewController_willTransitionToSize_withTransitionCoordinator___block_invoke;
  v5[3] = &unk_1E84FEC50;
  v5[4] = self;
  sizeCopy = size;
  [coordinator animateAlongsideTransition:v5 completion:0];
}

- (SXFullscreenCanvasShowable)showable
{
  WeakRetained = objc_loadWeakRetained(&self->_showable);

  return WeakRetained;
}

- (CGPoint)currentTranslation
{
  x = self->_currentTranslation.x;
  y = self->_currentTranslation.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGPoint)startingAnchorPoint
{
  x = self->_startingAnchorPoint.x;
  y = self->_startingAnchorPoint.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGRect)currentOriginFrame
{
  x = self->_currentOriginFrame.origin.x;
  y = self->_currentOriginFrame.origin.y;
  width = self->_currentOriginFrame.size.width;
  height = self->_currentOriginFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)currentDestinationFrame
{
  x = self->_currentDestinationFrame.origin.x;
  y = self->_currentDestinationFrame.origin.y;
  width = self->_currentDestinationFrame.size.width;
  height = self->_currentDestinationFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end