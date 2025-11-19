@interface SXFullscreenCanvasController
- (BOOL)captionView:(id)a3 tapGestureRecognizerShouldBegin:(id)a4;
- (BOOL)comparePoint:(CGPoint)a3 withPoint:(CGPoint)a4 maxDelta:(double)a5;
- (BOOL)gestureRecognizerShouldBegin:(id)a3;
- (CGPoint)calculateAnchorPointFromBounds:(CGRect)a3 andPoint:(CGPoint)a4;
- (CGPoint)currentTranslation;
- (CGPoint)startingAnchorPoint;
- (CGRect)currentDestinationFrame;
- (CGRect)currentOriginFrame;
- (CGRect)itemizedScrollView:(id)a3 frameForViewAtIndex:(unint64_t)a4;
- (CGSize)fitSizeForRect:(CGRect)a3;
- (SXFullscreenCanvasController)initWithShowable:(id)a3 captionViewFactory:(id)a4 sharingPolicy:(unint64_t)a5;
- (SXFullscreenCanvasShowable)showable;
- (UIColor)backgroundColor;
- (id)dragManager:(id)a3 dragableAtLocation:(CGPoint)a4;
- (id)itemizedScrollView:(id)a3 viewAtIndex:(unint64_t)a4;
- (int64_t)viewIndexForPoint:(CGPoint)a3;
- (unint64_t)activeViewIndex;
- (unint64_t)numberOfViewsInItemizedScrollView:(id)a3;
- (void)changeCaptionViewForViewWithIndex:(unint64_t)a3 expanded:(BOOL)a4 animated:(BOOL)a5;
- (void)dealloc;
- (void)didEndTransitionFromFullScreen:(BOOL)a3 toFullScreen:(BOOL)a4;
- (void)didFinishFullscreenActiveIndex:(unint64_t)a3;
- (void)dismiss;
- (void)fullScreenImageViewDidStartZooming:(id)a3;
- (void)fullScreenImageViewDidStopZooming:(id)a3;
- (void)fullscreenCanvasViewController:(id)a3 willTransitionToSize:(CGSize)a4 withTransitionCoordinator:(id)a5;
- (void)goToFullScreenFromFullScreenAnimated:(BOOL)a3 completionBlock:(id)a4;
- (void)goToFullScreenFromOriginalAnimated:(BOOL)a3 completionBlock:(id)a4;
- (void)goToOriginalFromFullScreenAnimated:(BOOL)a3 completionBlock:(id)a4;
- (void)goToOriginalFromOriginalAnimated:(BOOL)a3 completionBlock:(id)a4;
- (void)goToOriginalFromVerticalSwipingWithVelocity:(CGPoint)a3 completionBlock:(id)a4;
- (void)handleGestureRecognizer:(id)a3;
- (void)handleNextCommand;
- (void)handleOpenTapGesture:(id)a3;
- (void)handlePanGestureRecognizer:(id)a3;
- (void)handlePinchGestureRecognizer:(id)a3;
- (void)handlePreviousCommand;
- (void)handleRotationGestureRecognizer:(id)a3;
- (void)handleTap:(id)a3;
- (void)itemizedScrollView:(id)a3 didChangeToActiveViewIndex:(unint64_t)a4;
- (void)itemizedScrollView:(id)a3 didHideViewWithIndex:(unint64_t)a4;
- (void)itemizedScrollView:(id)a3 willShowViewWithIndex:(unint64_t)a4;
- (void)presentFullscreenWithIndex:(unint64_t)a3;
- (void)removeScaleAndTranslationFromCurrentView;
- (void)scrollViewDidEndDragging:(id)a3 willDecelerate:(BOOL)a4;
- (void)setBackgroundColor:(id)a3;
- (void)setup;
- (void)setupGestureRecognizersInView:(id)a3;
- (void)setupScrollViewIfNeededWithActiveIndex:(unint64_t)a3;
- (void)startSupressingColorSettings;
- (void)startTransitionToFullScreen:(BOOL)a3 controllable:(BOOL)a4;
- (void)startVerticalSwiping;
- (void)stopSupressingColorSettings;
- (void)stopTransformingCancelled:(BOOL)a3;
- (void)stopVerticalSwipingDismissed:(BOOL)a3 lastVelocity:(CGPoint)a4;
- (void)transferCurrentViewToCanvas;
- (void)transferCurrentViewToOriginalView;
- (void)transferGestureViewToView:(id)a3;
- (void)transformViewToSize:(CGSize)a3;
- (void)updateTransform;
- (void)willStartTransformingWithGestureRecognizer:(id)a3 completionBlock:(id)a4;
@end

@implementation SXFullscreenCanvasController

- (SXFullscreenCanvasController)initWithShowable:(id)a3 captionViewFactory:(id)a4 sharingPolicy:(unint64_t)a5
{
  v8 = a3;
  v9 = a4;
  v16.receiver = self;
  v16.super_class = SXFullscreenCanvasController;
  v10 = [(SXFullscreenCanvasController *)&v16 init];
  v11 = v10;
  if (v10)
  {
    v10->_sharingPolicy = a5;
    objc_storeStrong(&v10->_captionViewFactory, a4);
    objc_storeWeak(&v11->_showable, v8);
    v12 = objc_alloc_init(MEMORY[0x1E69DD250]);
    backgroundView = v11->_backgroundView;
    v11->_backgroundView = v12;

    [(UIView *)v11->_backgroundView setAutoresizingMask:18];
    v14 = [MEMORY[0x1E69DC888] blackColor];
    [(UIView *)v11->_backgroundView setBackgroundColor:v14];

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
  v3 = [(SXFullscreenCanvasController *)self itemizedScrollView];
  self->_currentViewIndex = [v3 activeViewIndex];

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

- (void)setupScrollViewIfNeededWithActiveIndex:(unint64_t)a3
{
  v5 = [(SXFullscreenCanvasController *)self itemizedScrollView];

  if (!v5)
  {
    v6 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:self action:sel_handleTap_];
    [(SXFullscreenCanvasController *)self setTapGestureRecognizer:v6];

    v7 = [SXItemizedScrollView alloc];
    v8 = [(SXItemizedScrollView *)v7 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    [(SXFullscreenCanvasController *)self setItemizedScrollView:v8];

    v9 = [(SXFullscreenCanvasController *)self itemizedScrollView];
    [v9 setContentInsetAdjustmentBehavior:2];

    v10 = [(SXFullscreenCanvasController *)self itemizedScrollView];
    [v10 setDataSource:self];

    v11 = [(SXFullscreenCanvasController *)self itemizedScrollView];
    [v11 setDelegate:self];

    v12 = [(SXFullscreenCanvasController *)self canvasViewController];
    v13 = [v12 view];
    [v13 bounds];
    v15 = v14;
    v17 = v16;
    v19 = v18;
    v21 = v20;

    v22 = [(SXFullscreenCanvasController *)self itemizedScrollView];
    v32.origin.x = v15;
    v32.origin.y = v17;
    v32.size.width = v19;
    v32.size.height = v21;
    v23 = CGRectGetWidth(v32) + 20.0;
    v33.origin.x = v15;
    v33.origin.y = v17;
    v33.size.width = v19;
    v33.size.height = v21;
    [v22 setFrame:{-10.0, 0.0, v23, CGRectGetHeight(v33)}];

    v24 = [(SXFullscreenCanvasController *)self itemizedScrollView];
    [v24 setActiveViewIndex:a3 animated:0];

    v25 = [(SXFullscreenCanvasController *)self canvasViewController];
    v26 = [v25 view];
    v27 = [(SXFullscreenCanvasController *)self itemizedScrollView];
    [v26 addSubview:v27];

    v30 = [(SXFullscreenCanvasController *)self canvasViewController];
    v28 = [v30 view];
    v29 = [(SXFullscreenCanvasController *)self tapGestureRecognizer];
    [v28 addGestureRecognizer:v29];
  }
}

- (void)didFinishFullscreenActiveIndex:(unint64_t)a3
{
  [(SXFullscreenCanvasController *)self setupScrollViewIfNeededWithActiveIndex:?];
  v5 = [(SXFullscreenCanvasController *)self itemizedScrollView];
  v9 = [v5 activeView];

  v6 = [v9 scrollView];
  [(SXFullscreenCanvasController *)self transferGestureViewToView:v6];

  v7 = [(SXFullscreenCanvasController *)self captionView];
  if (v7)
  {
    v8 = [(SXFullscreenCanvasController *)self captionView];
    -[SXFullscreenCanvasController changeCaptionViewForViewWithIndex:expanded:animated:](self, "changeCaptionViewForViewWithIndex:expanded:animated:", a3, [v8 expanded], 1);
  }

  else
  {
    [(SXFullscreenCanvasController *)self changeCaptionViewForViewWithIndex:a3 expanded:1 animated:1];
  }
}

- (void)changeCaptionViewForViewWithIndex:(unint64_t)a3 expanded:(BOOL)a4 animated:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v9 = [(SXFullscreenCanvasController *)self showable];
  v10 = [(SXFullscreenCanvasController *)self showable];
  v44 = [v9 fullScreenCanvasController:self captionForShowable:v10 viewIndex:a3];

  v11 = [(SXFullscreenCanvasController *)self captionView];

  if (v11)
  {
    v12 = [(SXFullscreenCanvasController *)self captionView];
    v13 = [v12 viewIndex];

    if (v13 == a3)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v14 = [(SXFullscreenCanvasController *)self captionViewFactory];
    v15 = [v14 createCaptionView];
    captionView = self->_captionView;
    self->_captionView = v15;

    v17 = [(SXFullscreenCanvasController *)self captionView];
    [v17 setDelegate:self];

    v18 = [(SXFullscreenCanvasController *)self canvasViewController];
    v19 = [v18 view];
    v20 = [(SXFullscreenCanvasController *)self captionView];
    [v19 addSubview:v20];

    if (_UISolariumFeatureFlagEnabled())
    {
      v21 = [(SXFullscreenCanvasController *)self captionView];
      v22 = objc_alloc(MEMORY[0x1E69DD6C8]);
      v23 = [(SXFullscreenCanvasController *)self itemizedScrollView];
      v24 = [v22 initWithScrollView:v23 edge:4 style:0];
      [v21 addInteraction:v24];
    }

    self->_previousExpansionMode = 1;
  }

  v25 = [(SXFullscreenCanvasController *)self captionView];
  [v25 updateWithCaption:v44 forViewIndex:a3 animated:v5];

LABEL_8:
  if ((_UISolariumFeatureFlagEnabled() & 1) == 0)
  {
    v26 = [(SXFullscreenCanvasController *)self navigationBarView];

    if (!v26)
    {
      v27 = objc_alloc_init(SXFullscreenNavigationBarView);
      navigationBarView = self->_navigationBarView;
      self->_navigationBarView = v27;

      v29 = [(SXFullscreenCanvasController *)self navigationBarView];
      [v29 setDelegate:self];

      v30 = [(SXFullscreenCanvasController *)self canvasViewController];
      v31 = [v30 view];
      v32 = [(SXFullscreenCanvasController *)self navigationBarView];
      [v31 addSubview:v32];
    }
  }

  v33 = [(SXFullscreenCanvasController *)self captionView];
  v34 = [v33 expanded];

  if (v34 != v6)
  {
    if (!v6 || (previousExpansionMode = self->_previousExpansionMode, !previousExpansionMode))
    {
      v36 = [(SXFullscreenCanvasController *)self captionView];
      self->_previousExpansionMode = [v36 expansionMode];

      previousExpansionMode = 0;
    }

    v37 = [(SXFullscreenCanvasController *)self captionView];
    [v37 setExpansionMode:previousExpansionMode animated:v5];
  }

  v38 = [(SXFullscreenCanvasController *)self canvasViewController];
  v39 = [v38 navigationController];
  v40 = [v39 isNavigationBarHidden];

  if (v40 == v6)
  {
    isTransitioning = self->_isTransitioning;
    v42 = [(SXFullscreenCanvasController *)self canvasViewController];
    v43 = [v42 navigationController];
    [v43 setNavigationBarHidden:v6 ^ 1u animated:v5 & ~isTransitioning];
  }
}

- (void)transformViewToSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  if ([(SXFullscreenCanvasController *)self isFullscreen])
  {
    v6 = [(SXFullscreenCanvasController *)self canvasViewController];
    v7 = [v6 view];
    [v7 frame];
    v9 = v8;
    v11 = v10;

    v12 = [(SXFullscreenCanvasController *)self canvasViewController];
    v13 = [v12 view];
    [v13 setFrame:{v9, v11, width, height}];

    v14 = [(SXFullscreenCanvasController *)self itemizedScrollView];
    [v14 setFrame:{-10.0, 0.0, width + 20.0, height}];

    v15 = [(SXFullscreenCanvasController *)self showable];
    v16 = [(SXFullscreenCanvasController *)self showable];
    v17 = [(SXFullscreenCanvasController *)self itemizedScrollView];
    v18 = [v17 activeViewIndex];
    v19 = [(SXFullscreenCanvasController *)self canvasViewController];
    v20 = [v19 view];
    [v20 bounds];
    [v15 fullScreenCanvasController:self fullScreenFrameForShowable:v16 viewIndex:v18 withinRect:?];
    v22 = v21;
    v24 = v23;
    v26 = v25;
    v28 = v27;

    v29 = [(SXFullscreenCanvasController *)self itemizedScrollView];
    v39 = [v29 activeView];

    [v39 setContentViewFrame:{v22, v24, v26, v28}];
    v30 = [(SXFullscreenCanvasController *)self captionView];
    [v30 updateFrameAnimated:0];

    v31 = [(SXFullscreenCanvasController *)self navigationBarView];
    [v31 updateFrameAnimated:0];

    v32 = [(SXFullscreenCanvasController *)self gestureView];
    v33 = [v32 superview];
    [v33 bounds];
    v34 = CGRectGetWidth(v41);
    v35 = [(SXFullscreenCanvasController *)self gestureView];
    v36 = [v35 superview];
    [v36 bounds];
    v37 = CGRectGetHeight(v42);
    v38 = [(SXFullscreenCanvasController *)self gestureView];
    [v38 setFrame:{0.0, 0.0, v34, v37}];
  }
}

- (void)setBackgroundColor:(id)a3
{
  v4 = a3;
  v5 = [(SXFullscreenCanvasController *)self backgroundView];
  [v5 setBackgroundColor:v4];
}

- (UIColor)backgroundColor
{
  v2 = [(SXFullscreenCanvasController *)self backgroundView];
  v3 = [v2 backgroundColor];

  return v3;
}

- (unint64_t)activeViewIndex
{
  if (![(SXFullscreenCanvasController *)self isFullscreen])
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v3 = [(SXFullscreenCanvasController *)self itemizedScrollView];

  if (v3)
  {
    v4 = [(SXFullscreenCanvasController *)self itemizedScrollView];
    v5 = [v4 activeViewIndex];

    return v5;
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

  v6 = [(SXFullscreenCanvasController *)self gestureView];
  [v6 setAutoresizingMask:18];

  v7 = [(SXFullscreenCanvasController *)self gestureView];
  [(SXFullscreenCanvasController *)self setupGestureRecognizersInView:v7];

  v8 = [(SXFullscreenCanvasController *)self showable];
  v9 = [(SXFullscreenCanvasController *)self gestureView];
  v10 = [(SXFullscreenCanvasController *)self showable];
  [v8 fullScreenCanvasController:self shouldAddGestureView:v9 forShowable:v10];

  v12 = [(SXFullscreenCanvasController *)self gestureView];
  v11 = [v12 superview];
  [v11 setUserInteractionEnabled:1];
}

- (void)setupGestureRecognizersInView:(id)a3
{
  v4 = a3;
  v21 = [[SXDragManager alloc] initWithSharingPolicy:[(SXFullscreenCanvasController *)self sharingPolicy] dataSource:self];
  [(SXDragManager *)v21 setEnabled:0];
  [(SXFullscreenCanvasController *)self setDragManager:v21];
  v5 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:self action:sel_handleOpenTapGesture_];
  openTapGestureRecognizer = self->_openTapGestureRecognizer;
  self->_openTapGestureRecognizer = v5;

  v7 = [(SXFullscreenCanvasController *)self openTapGestureRecognizer];
  [v7 setDelegate:self];

  v8 = [(SXFullscreenCanvasController *)self openTapGestureRecognizer];
  [v4 addGestureRecognizer:v8];

  v9 = [objc_alloc(MEMORY[0x1E69DCD80]) initWithTarget:self action:sel_handlePinchGestureRecognizer_];
  pinchGestureRecognizer = self->_pinchGestureRecognizer;
  self->_pinchGestureRecognizer = v9;

  v11 = [(SXFullscreenCanvasController *)self pinchGestureRecognizer];
  [v11 setDelegate:self];

  v12 = [(SXFullscreenCanvasController *)self pinchGestureRecognizer];
  [v4 addGestureRecognizer:v12];

  v13 = [objc_alloc(MEMORY[0x1E69DCE68]) initWithTarget:self action:sel_handleRotationGestureRecognizer_];
  rotationGestureRecognizer = self->_rotationGestureRecognizer;
  self->_rotationGestureRecognizer = v13;

  v15 = [(SXFullscreenCanvasController *)self rotationGestureRecognizer];
  [v15 setDelegate:self];

  v16 = [(SXFullscreenCanvasController *)self rotationGestureRecognizer];
  [v4 addGestureRecognizer:v16];

  v17 = [objc_alloc(MEMORY[0x1E69DCD28]) initWithTarget:self action:sel_handlePanGestureRecognizer_];
  panGestureRecognizer = self->_panGestureRecognizer;
  self->_panGestureRecognizer = v17;

  v19 = [(SXFullscreenCanvasController *)self panGestureRecognizer];
  [v19 setDelegate:self];

  v20 = [(SXFullscreenCanvasController *)self panGestureRecognizer];
  [v4 addGestureRecognizer:v20];
}

- (CGSize)fitSizeForRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v7 = [(SXFullscreenCanvasController *)self canvasViewController];
  v8 = [v7 view];
  [v8 bounds];
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

- (void)handleGestureRecognizer:(id)a3
{
  v4 = a3;
  totalActiveGestureRecognizers = self->_totalActiveGestureRecognizers;
  if ([v4 state] == 1)
  {
    ++self->_totalActiveGestureRecognizers;
  }

  if ([v4 state] == 4 || objc_msgSend(v4, "state") == 3 || objc_msgSend(v4, "state") == 5)
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
        -[SXFullscreenCanvasController stopTransformingCancelled:](self, "stopTransformingCancelled:", [v4 state] == 4);
        [(SXFullscreenCanvasController *)self setLessTouchesAreInterupting:0];
        [(SXFullscreenCanvasController *)self setOrientationChangeIsInterupting:0];
      }

      *&self->_verticalSwipingIsActive = 0;
      goto LABEL_23;
    }

LABEL_21:
    if ([v4 state] != 2)
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
      [(SXFullscreenCanvasController *)self willStartTransformingWithGestureRecognizer:v4 completionBlock:v8];
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

- (void)handlePanGestureRecognizer:(id)a3
{
  v20 = a3;
  if ([v20 state] == 1)
  {
    self->_panIsActive = 1;
    self->_currentTranslation = *MEMORY[0x1E695EFF8];
    if ([(SXFullscreenCanvasController *)self isFullscreen])
    {
      if ([v20 numberOfTouches] == 1 && !-[SXFullscreenCanvasController pinchIsActive](self, "pinchIsActive") && !-[SXFullscreenCanvasController rotationIsActive](self, "rotationIsActive"))
      {
        self->_verticalSwipingIsActive = 1;
        [(SXFullscreenCanvasController *)self startVerticalSwiping];
      }
    }
  }

  if ([v20 state] == 2)
  {
    if ([(SXFullscreenCanvasController *)self pinchIsActive]|| [(SXFullscreenCanvasController *)self isFullscreen])
    {
      v4 = [(SXFullscreenCanvasController *)self canvasViewController];
      v5 = [v4 view];
      [v20 translationInView:v5];
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

    if ([v20 numberOfTouches] == 1 && !-[SXFullscreenCanvasController verticalSwipingIsActive](self, "verticalSwipingIsActive"))
    {
      [(SXFullscreenCanvasController *)self setLessTouchesAreInterupting:1];
      [v20 cancel];
      goto LABEL_34;
    }
  }

  if ([v20 state] == 4 || objc_msgSend(v20, "state") == 3 || objc_msgSend(v20, "state") == 5)
  {
    self->_panIsActive = 0;
    if ([(SXFullscreenCanvasController *)self isFullscreen])
    {
      if ([(SXFullscreenCanvasController *)self verticalSwipingIsActive])
      {
        self->_isStoppingVerticalSwiping = 1;
        v8 = [v20 view];
        [v20 velocityInView:v8];
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

        v15 = [(SXFullscreenCanvasController *)self canvasViewController];
        v16 = [v15 view];
        [v16 bounds];
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

  [(SXFullscreenCanvasController *)self handleGestureRecognizer:v20];
LABEL_34:
}

- (void)handleRotationGestureRecognizer:(id)a3
{
  v5 = a3;
  if ([v5 state] == 1)
  {
    self->_rotationIsActive = 1;
    self->_currentRotation = 0.0;
  }

  if ([v5 state] != 2)
  {
    goto LABEL_10;
  }

  if ([(SXFullscreenCanvasController *)self pinchIsActive])
  {
    [v5 rotation];
    self->_currentRotation = v4;
  }

  if ([v5 numberOfTouches] == 1)
  {
    [(SXFullscreenCanvasController *)self setLessTouchesAreInterupting:1];
    [v5 cancel];
  }

  else
  {
LABEL_10:
    if ([v5 state] == 4 || objc_msgSend(v5, "state") == 3 || objc_msgSend(v5, "state") == 5)
    {
      self->_rotationIsActive = 0;
    }

    [(SXFullscreenCanvasController *)self handleGestureRecognizer:v5];
  }
}

- (void)handleOpenTapGesture:(id)a3
{
  v4 = a3;
  v5 = [(SXFullscreenCanvasController *)self showable];
  v6 = [v5 requestInteractivityFocusForFullScreenCanvasController:self];

  if (v6)
  {
    if ([v4 state] != 4 && objc_msgSend(v4, "state") != 5 && objc_msgSend(v4, "state") == 3)
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
      v14 = v4;
      [(SXFullscreenCanvasController *)self willStartTransformingWithGestureRecognizer:v14 completionBlock:v13];
    }
  }

  else
  {
    [v4 cancel];
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

- (void)presentFullscreenWithIndex:(unint64_t)a3
{
  self->_currentScale = 1.0;
  [(SXFullscreenCanvasController *)self setCurrentViewIndex:a3];
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

- (void)handlePinchGestureRecognizer:(id)a3
{
  v11 = a3;
  if ([v11 state] == 1)
  {
    self->_pinchIsActive = 1;
    [v11 scale];
    self->_currentScale = v4;
    self->_currentRotation = 0.0;
    v5 = MEMORY[0x1E695EFF8];
    self->_currentTranslation = *MEMORY[0x1E695EFF8];
    v6 = [(SXFullscreenCanvasController *)self rotationGestureRecognizer];
    [v6 setRotation:0.0];

    v7 = [(SXFullscreenCanvasController *)self panGestureRecognizer];
    v8 = [(SXFullscreenCanvasController *)self panGestureRecognizer];
    v9 = [v8 view];
    [v7 setTranslation:v9 inView:{*v5, v5[1]}];
  }

  if ([v11 state] == 2 && (objc_msgSend(v11, "scale"), self->_currentScale = v10, objc_msgSend(v11, "numberOfTouches") == 1))
  {
    [(SXFullscreenCanvasController *)self setLessTouchesAreInterupting:1];
    [v11 cancel];
  }

  else
  {
    if ([v11 state] == 4 || objc_msgSend(v11, "state") == 3 || objc_msgSend(v11, "state") == 5)
    {
      self->_pinchIsActive = 0;
    }

    [(SXFullscreenCanvasController *)self handleGestureRecognizer:v11];
  }
}

- (void)willStartTransformingWithGestureRecognizer:(id)a3 completionBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!self->_isTransitioning)
  {
    if (v6)
    {
      v8 = [v6 view];
      [v6 locationInView:v8];
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

    v14 = [(SXFullscreenCanvasController *)self showable];
    v15 = [(SXFullscreenCanvasController *)self showable];
    v16 = [v14 fullScreenCanvasController:self numberOfViewsForShowable:v15];

    if (currentViewIndex < v16)
    {
      if ([(SXFullscreenCanvasController *)self isFullscreen])
      {
        self->_isTransitioning = 1;
        v17 = [(SXFullscreenCanvasController *)self canvasViewController];
        [v17 setIsTransitioning:1];

        v18 = [(SXFullscreenCanvasController *)self captionView];

        if (v18)
        {
          v19 = [(SXFullscreenCanvasController *)self captionView];
          -[SXFullscreenCanvasController changeCaptionViewForViewWithIndex:expanded:animated:](self, "changeCaptionViewForViewWithIndex:expanded:animated:", [v19 viewIndex], 0, 1);
        }

        v20 = [(SXFullscreenCanvasController *)self showable];
        v21 = [(SXFullscreenCanvasController *)self showable];
        v22 = [v20 fullScreenCanvasController:self originalViewForShowable:v21 viewIndex:{-[SXFullscreenCanvasController currentViewIndex](self, "currentViewIndex")}];
        currentView = self->_currentView;
        self->_currentView = v22;

        if (v6)
        {
          v24 = [v6 view];
          [v24 convertPoint:self->_currentView toView:{v10, v12}];

          [(UIView *)self->_currentView bounds];
          [SXFullscreenCanvasController calculateAnchorPointFromBounds:"calculateAnchorPointFromBounds:andPoint:" andPoint:?];
          self->_startingAnchorPoint.x = v25;
          self->_startingAnchorPoint.y = v26;
        }

        v27 = [(SXFullscreenCanvasController *)self showable];
        v28 = objc_opt_respondsToSelector();

        if (v28)
        {
          v29 = [(SXFullscreenCanvasController *)self showable];
          v30 = [(SXFullscreenCanvasController *)self showable];
          [v29 fullScreenCanvasController:self willHideShowable:v30 viewIndex:{-[SXFullscreenCanvasController currentViewIndex](self, "currentViewIndex")}];
        }

        v31 = [(SXFullscreenCanvasController *)self itemizedScrollView];
        [v31 setScrollEnabled:0];

        v32 = [(SXFullscreenCanvasController *)self showable];
        v33 = [(SXFullscreenCanvasController *)self showable];
        v34 = [(SXFullscreenCanvasController *)self canvasViewController];
        v35 = [v34 view];
        [v32 fullScreenCanvasController:self originalFrameForShowable:v33 onCanvasView:v35 viewIndex:{-[SXFullscreenCanvasController currentViewIndex](self, "currentViewIndex")}];
        self->_currentDestinationFrame.origin.x = v36;
        self->_currentDestinationFrame.origin.y = v37;
        self->_currentDestinationFrame.size.width = v38;
        self->_currentDestinationFrame.size.height = v39;

        v40 = [(SXFullscreenCanvasController *)self showable];
        v41 = [(SXFullscreenCanvasController *)self showable];
        v42 = [(SXFullscreenCanvasController *)self currentViewIndex];
        v43 = [(SXFullscreenCanvasController *)self canvasViewController];
        v44 = [v43 view];
        [v44 bounds];
        [v40 fullScreenCanvasController:self fullScreenFrameForShowable:v41 viewIndex:v42 withinRect:?];
        self->_currentOriginFrame.origin.x = v45;
        self->_currentOriginFrame.origin.y = v46;
        self->_currentOriginFrame.size.width = v47;
        self->_currentOriginFrame.size.height = v48;

        v49 = [(SXFullscreenCanvasController *)self currentView];
        v50 = [v49 superview];
        v51 = [(SXFullscreenCanvasController *)self currentView];
        [v51 frame];
        v53 = v52;
        v55 = v54;
        v57 = v56;
        v59 = v58;
        v60 = [(SXFullscreenCanvasController *)self canvasViewController];
        v61 = [v60 view];
        [v50 convertRect:v61 toView:{v53, v55, v57, v59}];
        v63 = v62;
        v65 = v64;
        v67 = v66;
        v69 = v68;

        v70 = [(SXFullscreenCanvasController *)self currentView];
        [v70 setFrame:{v63, v65, v67, v69}];

        v71 = [(SXFullscreenCanvasController *)self canvasViewController];
        v72 = [v71 view];
        v73 = [(SXFullscreenCanvasController *)self currentView];
        v74 = [(SXFullscreenCanvasController *)self captionView];
        [v72 insertSubview:v73 belowSubview:v74];

        [(SXFullscreenCanvasController *)self transferCurrentViewToCanvas];
        v75 = [(SXFullscreenCanvasController *)self currentView];
        [(SXFullscreenCanvasController *)self transferGestureViewToView:v75];

        v76 = [(SXFullscreenCanvasController *)self currentView];
        v77 = [v76 layer];
        [(SXFullscreenCanvasController *)self startingAnchorPoint];
        [v77 setAnchorPointWithoutChangingPosition:?];

        v78 = [(SXFullscreenCanvasController *)self itemizedScrollView];
        [v78 removeFromSuperview];

        [(SXFullscreenCanvasController *)self setItemizedScrollView:0];
        v79 = [(SXFullscreenCanvasController *)self captionView];
        [v79 removeFromSuperview];

        [(SXFullscreenCanvasController *)self setCaptionView:0];
        v80 = [(SXFullscreenCanvasController *)self navigationBarView];
        [v80 removeFromSuperview];

        [(SXFullscreenCanvasController *)self setNavigationBarView:0];
        if (v7)
        {
          v7[2](v7, 1);
        }

        goto LABEL_19;
      }

      v81 = [(SXFullscreenCanvasController *)self showable];
      if (objc_opt_respondsToSelector())
      {
        v82 = [(SXFullscreenCanvasController *)self showable];
        v83 = [(SXFullscreenCanvasController *)self showable];
        v84 = [v82 fullScreenCanvasController:self willShowShowable:v83 viewIndex:{-[SXFullscreenCanvasController currentViewIndex](self, "currentViewIndex")}];

        if ((v84 & 1) == 0)
        {
          goto LABEL_17;
        }
      }

      else
      {
      }

      self->_isTransitioning = 1;
      v85 = [(SXFullscreenCanvasController *)self showable];
      v86 = [(SXFullscreenCanvasController *)self showable];
      v90[0] = MEMORY[0x1E69E9820];
      v90[1] = 3221225472;
      v90[2] = __91__SXFullscreenCanvasController_willStartTransformingWithGestureRecognizer_completionBlock___block_invoke;
      v90[3] = &unk_1E85007E8;
      v90[4] = self;
      v91 = v6;
      v93 = v10;
      v94 = v12;
      v92 = v7;
      v87 = [v85 fullScreenCanvasController:self canvasViewControllerForShowable:v86 completionBlock:v90];
      canvasViewController = self->_canvasViewController;
      self->_canvasViewController = v87;

      v89 = [(SXFullscreenCanvasController *)self canvasViewController];
      [v89 setIsTransitioning:1];

      goto LABEL_19;
    }
  }

LABEL_17:
  if (v7)
  {
    v7[2](v7, 0);
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
  v8 = [(SXFullscreenCanvasController *)self currentView];
  v22 = v20;
  [v8 setTransform:&v22];

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

    v11 = [(SXFullscreenCanvasController *)self canvasViewController];
    v12 = [v11 view];
    [v12 bounds];
    v14 = v10 / (v13 * -0.5) + 1.0;
  }

  else
  {
    v15 = [(SXFullscreenCanvasController *)self isFullscreen];
    [(SXFullscreenCanvasController *)self currentScale];
    if (v15)
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

  v19 = [(SXFullscreenCanvasController *)self backgroundView];
  [v19 setAlpha:v18];
}

- (void)stopTransformingCancelled:(BOOL)a3
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

- (void)startTransitionToFullScreen:(BOOL)a3 controllable:(BOOL)a4
{
  if (!a3)
  {
    v4 = a4;
    if ([(SXFullscreenCanvasController *)self isFullscreen])
    {
      if (v4)
      {
        v7 = [(SXFullscreenCanvasController *)self itemizedScrollView];
        v6 = [v7 activeView];
        [v6 removeFromSuperview];
      }
    }
  }
}

- (void)didEndTransitionFromFullScreen:(BOOL)a3 toFullScreen:(BOOL)a4
{
  [(SXFullscreenCanvasController *)self setIsFullscreen:a4];
  self->_isTransitioning = 0;
  v5 = [(SXFullscreenCanvasController *)self isFullscreen];
  if (v5)
  {
    v6 = [(SXFullscreenCanvasController *)self itemizedScrollView];
    v7 = 1;
    [v6 setScrollEnabled:1];

    [(SXFullscreenCanvasController *)self didFinishFullscreenActiveIndex:[(SXFullscreenCanvasController *)self currentViewIndex]];
    v8 = [(SXFullscreenCanvasController *)self showable];
    v9 = objc_opt_respondsToSelector();

    if ((v9 & 1) == 0)
    {
      goto LABEL_8;
    }

    v10 = [(SXFullscreenCanvasController *)self showable];
    v11 = [(SXFullscreenCanvasController *)self showable];
    [v10 fullScreenCanvasController:self didShowShowable:v11 viewIndex:{-[SXFullscreenCanvasController currentViewIndex](self, "currentViewIndex")}];
  }

  else
  {
    v12 = [(SXFullscreenCanvasController *)self showable];
    v13 = objc_opt_respondsToSelector();

    if (v13)
    {
      v14 = [(SXFullscreenCanvasController *)self showable];
      v15 = [(SXFullscreenCanvasController *)self showable];
      [v14 fullScreenCanvasController:self didHideShowable:v15 viewIndex:{-[SXFullscreenCanvasController currentViewIndex](self, "currentViewIndex")}];
    }

    v16 = [(SXFullscreenCanvasController *)self showable];
    v17 = [(SXFullscreenCanvasController *)self gestureView];
    v18 = [(SXFullscreenCanvasController *)self showable];
    [v16 fullScreenCanvasController:self shouldAddGestureView:v17 forShowable:v18];

    v10 = [(SXFullscreenCanvasController *)self canvasViewController];
    [v10 setView:0];
  }

  v7 = v5;
LABEL_8:
  v19 = [(SXFullscreenCanvasController *)self dragManager];
  [v19 setEnabled:v7];

  v20 = [(SXFullscreenCanvasController *)self canvasViewController];
  [v20 setIsTransitioning:0];
}

- (void)startVerticalSwiping
{
  v3 = [(SXFullscreenCanvasController *)self itemizedScrollView];
  [v3 setScrollEnabled:0];

  *&self->_currentRotation = xmmword_1D8392250;
  v4 = [(SXFullscreenCanvasController *)self panGestureRecognizer];
  [(SXFullscreenCanvasController *)self willStartTransformingWithGestureRecognizer:v4 completionBlock:0];
}

- (void)stopVerticalSwipingDismissed:(BOOL)a3 lastVelocity:(CGPoint)a4
{
  if (a3)
  {
    y = a4.y;
    x = a4.x;
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

- (void)goToFullScreenFromOriginalAnimated:(BOOL)a3 completionBlock:(id)a4
{
  v4 = a3;
  v6 = a4;
  v7 = [(SXFullscreenCanvasController *)self currentView];
  v8 = v7;
  if (v4)
  {
    [v7 setUserInteractionEnabled:0];

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
    v15 = v6;
    [v9 animateWithDuration:0 delay:v16 usingSpringWithDamping:v14 initialSpringVelocity:0.6 options:0.0 animations:0.6 completion:0.8];
  }

  else
  {
    v10 = *(MEMORY[0x1E695EFD0] + 16);
    v13[0] = *MEMORY[0x1E695EFD0];
    v13[1] = v10;
    v13[2] = *(MEMORY[0x1E695EFD0] + 32);
    [v7 setTransform:v13];

    v11 = [(SXFullscreenCanvasController *)self currentView];
    v12 = [v11 layer];
    [v12 setAnchorPointWithoutChangingPosition:{0.5, 0.5}];

    if (v6)
    {
      v6[2](v6);
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

- (void)goToFullScreenFromFullScreenAnimated:(BOOL)a3 completionBlock:(id)a4
{
  v4 = a3;
  v6 = a4;
  v7 = [(SXFullscreenCanvasController *)self showable];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    v9 = [(SXFullscreenCanvasController *)self showable];
    v10 = [(SXFullscreenCanvasController *)self showable];
    [v9 fullScreenCanvasController:self willReturnToFullscreenForShowable:v10 viewIndex:{-[SXFullscreenCanvasController currentViewIndex](self, "currentViewIndex")}];
  }

  v11 = [(SXFullscreenCanvasController *)self currentView];
  v12 = v11;
  if (v4)
  {
    [v11 setUserInteractionEnabled:1];

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
    v19 = v6;
    [v13 animateWithDuration:0 delay:v20 usingSpringWithDamping:v18 initialSpringVelocity:0.6 options:0.0 animations:0.6 completion:0.8];
  }

  else
  {
    v14 = *(MEMORY[0x1E695EFD0] + 16);
    v17[0] = *MEMORY[0x1E695EFD0];
    v17[1] = v14;
    v17[2] = *(MEMORY[0x1E695EFD0] + 32);
    [v11 setTransform:v17];

    v15 = [(SXFullscreenCanvasController *)self currentView];
    v16 = [v15 layer];
    [v16 setAnchorPointWithoutChangingPosition:{0.5, 0.5}];

    if (v6)
    {
      v6[2](v6);
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

- (void)goToOriginalFromFullScreenAnimated:(BOOL)a3 completionBlock:(id)a4
{
  v4 = a3;
  v6 = a4;
  v7 = [(SXFullscreenCanvasController *)self canvasViewController];
  v8 = [v7 view];
  v9 = [v8 window];
  [v9 layoutIfNeeded];

  v10 = [(SXFullscreenCanvasController *)self showable];
  v11 = [(SXFullscreenCanvasController *)self showable];
  v12 = [(SXFullscreenCanvasController *)self canvasViewController];
  v13 = [v12 view];
  [v10 fullScreenCanvasController:self originalFrameForShowable:v11 onCanvasView:v13 viewIndex:{-[SXFullscreenCanvasController currentViewIndex](self, "currentViewIndex")}];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;

  if (v4)
  {
    v22 = [(SXFullscreenCanvasController *)self currentView];
    [v22 setUserInteractionEnabled:0];

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
    v30 = v6;
    [v23 animateWithDuration:0 delay:v31 usingSpringWithDamping:v29 initialSpringVelocity:0.6 options:0.0 animations:0.6 completion:0.8];
  }

  else
  {
    v24 = [(SXFullscreenCanvasController *)self currentView];
    v25 = *(MEMORY[0x1E695EFD0] + 16);
    v28[0] = *MEMORY[0x1E695EFD0];
    v28[1] = v25;
    v28[2] = *(MEMORY[0x1E695EFD0] + 32);
    [v24 setTransform:v28];

    v26 = [(SXFullscreenCanvasController *)self currentView];
    v27 = [v26 layer];
    [v27 setAnchorPointWithoutChangingPosition:{0.5, 0.5}];

    [(SXFullscreenCanvasController *)self transferCurrentViewToOriginalView];
    if (v6)
    {
      v6[2](v6);
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

- (void)goToOriginalFromOriginalAnimated:(BOOL)a3 completionBlock:(id)a4
{
  v4 = a3;
  v6 = a4;
  if (v4)
  {
    v7 = [(SXFullscreenCanvasController *)self currentView];
    [v7 setUserInteractionEnabled:1];

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
    v16 = v6;
    [v8 animateWithDuration:0 delay:v17 usingSpringWithDamping:v15 initialSpringVelocity:0.6 options:0.0 animations:0.6 completion:0.8];
  }

  else
  {
    v9 = [(SXFullscreenCanvasController *)self backgroundView];
    [v9 setAlpha:0.0];

    v10 = [(SXFullscreenCanvasController *)self currentView];
    v11 = *(MEMORY[0x1E695EFD0] + 16);
    v14[0] = *MEMORY[0x1E695EFD0];
    v14[1] = v11;
    v14[2] = *(MEMORY[0x1E695EFD0] + 32);
    [v10 setTransform:v14];

    v12 = [(SXFullscreenCanvasController *)self currentView];
    v13 = [v12 layer];
    [v13 setAnchorPointWithoutChangingPosition:{0.5, 0.5}];

    [(SXFullscreenCanvasController *)self transferCurrentViewToOriginalView];
    if (v6)
    {
      v6[2](v6);
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

- (void)goToOriginalFromVerticalSwipingWithVelocity:(CGPoint)a3 completionBlock:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  [(SXFullscreenCanvasController *)self removeScaleAndTranslationFromCurrentView];
  v8 = [(SXFullscreenCanvasController *)self canvasViewController];
  v9 = [v8 view];
  v10 = [v9 window];
  [v10 layoutIfNeeded];

  v11 = [(SXFullscreenCanvasController *)self showable];
  v12 = [(SXFullscreenCanvasController *)self showable];
  v13 = [(SXFullscreenCanvasController *)self canvasViewController];
  v14 = [v13 view];
  [v11 fullScreenCanvasController:self originalFrameForShowable:v12 onCanvasView:v14 viewIndex:{-[SXFullscreenCanvasController currentViewIndex](self, "currentViewIndex")}];
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
  v26 = v7;
  v24 = v7;
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

- (void)handleTap:(id)a3
{
  v4 = [(SXFullscreenCanvasController *)self itemizedScrollView];
  v5 = [v4 activeView];
  v6 = [v5 superview];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v8 = [(SXFullscreenCanvasController *)self captionView];

    if (v8)
    {
      v11 = [(SXFullscreenCanvasController *)self captionView];
      v9 = [v11 viewIndex];
      v10 = [(SXFullscreenCanvasController *)self captionView];
      -[SXFullscreenCanvasController changeCaptionViewForViewWithIndex:expanded:animated:](self, "changeCaptionViewForViewWithIndex:expanded:animated:", v9, [v10 expanded] ^ 1, 1);
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

- (int64_t)viewIndexForPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  if ([(SXFullscreenCanvasController *)self isFullscreen])
  {
    v6 = [(SXFullscreenCanvasController *)self itemizedScrollView];
    v7 = [v6 activeViewIndex];
  }

  else
  {
    v6 = [(SXFullscreenCanvasController *)self showable];
    v8 = [(SXFullscreenCanvasController *)self showable];
    v7 = [v6 fullScreenCanvasController:self viewIndexForPoint:v8 inShowable:{x, y}];
  }

  return v7;
}

- (CGPoint)calculateAnchorPointFromBounds:(CGRect)a3 andPoint:(CGPoint)a4
{
  v4 = a4.x / a3.size.width;
  v5 = a4.y / a3.size.height;
  result.y = v5;
  result.x = v4;
  return result;
}

- (void)transferCurrentViewToCanvas
{
  v3 = [(SXFullscreenCanvasController *)self canvasViewController];
  v4 = [v3 view];
  v5 = [(SXFullscreenCanvasController *)self currentView];
  [v4 addSubview:v5];

  [(SXFullscreenCanvasController *)self currentOriginFrame];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = [(SXFullscreenCanvasController *)self currentView];
  [v14 setFrame:{v7, v9, v11, v13}];
}

- (void)transferCurrentViewToOriginalView
{
  v4 = [(SXFullscreenCanvasController *)self showable];
  v3 = [(SXFullscreenCanvasController *)self showable];
  [v4 fullScreenCanvasController:self showable:v3 shouldTransferToOriginalViewWithIndex:{-[SXFullscreenCanvasController currentViewIndex](self, "currentViewIndex")}];
}

- (void)transferGestureViewToView:(id)a3
{
  v9 = a3;
  v4 = [(SXFullscreenCanvasController *)self gestureView];
  [v9 addSubview:v4];

  v5 = [(SXFullscreenCanvasController *)self gestureView];
  v6 = [(SXFullscreenCanvasController *)self itemizedScrollView];
  [v6 bounds];
  Width = CGRectGetWidth(v11);
  v8 = [(SXFullscreenCanvasController *)self itemizedScrollView];
  [v8 bounds];
  [v5 setFrame:{0.0, 0.0, Width, CGRectGetHeight(v12)}];

  [v9 setUserInteractionEnabled:1];
}

- (BOOL)comparePoint:(CGPoint)a3 withPoint:(CGPoint)a4 maxDelta:(double)a5
{
  v5 = a3.x - a4.x;
  if (v5 < 0.0)
  {
    v5 = -v5;
  }

  v6 = a3.y - a4.y;
  if (v6 < 0.0)
  {
    v6 = -v6;
  }

  return v6 <= a5 && v5 <= a5;
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
  v27 = [(SXFullscreenCanvasController *)self backgroundView];
  [v27 alpha];
  v29 = v28;

  [(SXFullscreenCanvasController *)self updateTransform];
  v30 = [(SXFullscreenCanvasController *)self backgroundView];
  [v30 setAlpha:v29];

  v31 = [(SXFullscreenCanvasController *)self currentView];
  [v31 setFrameUsingCenterAndBounds:{v16, v22, v24, v26}];
}

- (void)fullScreenImageViewDidStartZooming:(id)a3
{
  v4 = [(SXFullscreenCanvasController *)self captionView];

  if (v4)
  {
    v5 = [(SXFullscreenCanvasController *)self captionView];
    -[SXFullscreenCanvasController changeCaptionViewForViewWithIndex:expanded:animated:](self, "changeCaptionViewForViewWithIndex:expanded:animated:", [v5 viewIndex], 0, 1);
  }

  v6 = [(SXFullscreenCanvasController *)self pinchGestureRecognizer];
  [v6 cancel];

  v7 = [(SXFullscreenCanvasController *)self panGestureRecognizer];
  [v7 cancel];

  v8 = [(SXFullscreenCanvasController *)self rotationGestureRecognizer];
  [v8 cancel];
}

- (void)fullScreenImageViewDidStopZooming:(id)a3
{
  v4 = [(SXFullscreenCanvasController *)self captionView];

  if (v4)
  {
    v5 = [(SXFullscreenCanvasController *)self captionView];
    -[SXFullscreenCanvasController changeCaptionViewForViewWithIndex:expanded:animated:](self, "changeCaptionViewForViewWithIndex:expanded:animated:", [v5 viewIndex], 1, 1);
  }
}

- (unint64_t)numberOfViewsInItemizedScrollView:(id)a3
{
  v4 = [(SXFullscreenCanvasController *)self showable];
  v5 = [(SXFullscreenCanvasController *)self showable];
  v6 = [v4 fullScreenCanvasController:self numberOfViewsForShowable:v5];

  return v6;
}

- (CGRect)itemizedScrollView:(id)a3 frameForViewAtIndex:(unint64_t)a4
{
  v5 = a3;
  v6 = [(SXFullscreenCanvasController *)self canvasViewController];
  v7 = [v6 view];
  [v7 bounds];
  v9 = v8;
  v11 = v10;

  [v5 frame];
  v13 = -v12;
  [v5 frame];
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

- (id)itemizedScrollView:(id)a3 viewAtIndex:(unint64_t)a4
{
  v6 = [(SXFullscreenCanvasController *)self showable];
  v7 = [(SXFullscreenCanvasController *)self showable];
  v8 = [v6 fullScreenCanvasController:self originalViewForShowable:v7 viewIndex:a4];

  v9 = [(SXFullscreenCanvasController *)self showable];
  v10 = [(SXFullscreenCanvasController *)self showable];
  v11 = [(SXFullscreenCanvasController *)self canvasViewController];
  v12 = [v11 view];
  [v12 bounds];
  [v9 fullScreenCanvasController:self fullScreenFrameForShowable:v10 viewIndex:a4 withinRect:?];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;

  v21 = [[SXFullscreenImageView alloc] initWithContentView:v8 viewIndex:a4];
  [(SXFullscreenImageView *)v21 setContentViewFrame:v14, v16, v18, v20];
  [(SXFullscreenImageView *)v21 setDelegate:self];
  v22 = [(SXFullscreenCanvasController *)self tapGestureRecognizer];
  v23 = [(SXFullscreenImageView *)v21 doubleTapGestureRecognizer];
  [v22 requireGestureRecognizerToFail:v23];

  v24 = [(SXFullscreenImageView *)v21 scrollView];
  v25 = [v24 pinchGestureRecognizer];
  v26 = [(SXFullscreenCanvasController *)self pinchGestureRecognizer];
  [v25 requireGestureRecognizerToFail:v26];

  return v21;
}

- (void)itemizedScrollView:(id)a3 didChangeToActiveViewIndex:(unint64_t)a4
{
  v12 = [a3 activeView];
  v6 = [v12 scrollView];
  [(SXFullscreenCanvasController *)self transferGestureViewToView:v6];

  v7 = [(SXFullscreenCanvasController *)self captionView];
  -[SXFullscreenCanvasController changeCaptionViewForViewWithIndex:expanded:animated:](self, "changeCaptionViewForViewWithIndex:expanded:animated:", a4, [v7 expanded], 1);

  v8 = [(SXFullscreenCanvasController *)self showable];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    v10 = [(SXFullscreenCanvasController *)self showable];
    v11 = [(SXFullscreenCanvasController *)self showable];
    [v10 fullScreenCanvasController:self showable:v11 didShowViewWithIndex:a4];
  }
}

- (void)itemizedScrollView:(id)a3 willShowViewWithIndex:(unint64_t)a4
{
  v6 = [(SXFullscreenCanvasController *)self showable];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v9 = [(SXFullscreenCanvasController *)self showable];
    v8 = [(SXFullscreenCanvasController *)self showable];
    [v9 fullScreenCanvasController:self showable:v8 willShowViewWithIndex:a4];
  }
}

- (void)itemizedScrollView:(id)a3 didHideViewWithIndex:(unint64_t)a4
{
  v6 = [(SXFullscreenCanvasController *)self showable];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = [(SXFullscreenCanvasController *)self showable];
    v9 = [(SXFullscreenCanvasController *)self showable];
    [v8 fullScreenCanvasController:self showable:v9 didHideViewWithIndex:a4];
  }

  v11 = [(SXFullscreenCanvasController *)self showable];
  v10 = [(SXFullscreenCanvasController *)self showable];
  [v11 fullScreenCanvasController:self showable:v10 shouldTransferToOriginalViewWithIndex:a4];
}

- (void)scrollViewDidEndDragging:(id)a3 willDecelerate:(BOOL)a4
{
  if (!a4)
  {
    [(SXFullscreenCanvasController *)self stopSupressingColorSettings];
  }
}

- (BOOL)gestureRecognizerShouldBegin:(id)a3
{
  v71 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [(SXFullscreenCanvasController *)self showable];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = [(SXFullscreenCanvasController *)self showable];
    v3 = [(SXFullscreenCanvasController *)self showable];
    v9 = [v8 fullScreenCanvasController:self showable:v3 gestureRecognizerShouldBegin:v5];

    if (!v9)
    {
      goto LABEL_49;
    }
  }

  if ([(SXFullscreenCanvasController *)self isFullscreen]&& ![(SXFullscreenCanvasController *)self totalActiveGestureRecognizers])
  {
    v35 = [(SXFullscreenCanvasController *)self itemizedScrollView];
    v22 = [v35 activeView];

    v3 = [(SXFullscreenCanvasController *)self itemizedScrollView];
    if ([v3 isDragging])
    {
LABEL_31:

LABEL_40:
      goto LABEL_49;
    }

    v36 = [(SXFullscreenCanvasController *)self itemizedScrollView];
    v37 = [v36 isDecelerating];

    if ((v37 & 1) != 0 || v22 && ![v22 allowsDismissal])
    {
      goto LABEL_40;
    }
  }

  v10 = [(SXFullscreenCanvasController *)self tapGestureRecognizer];
  v11 = v10;
  if (v10 == v5)
  {
    v3 = [(SXFullscreenCanvasController *)self isFullscreen];

    if (v3)
    {
      v12 = [(SXFullscreenCanvasController *)self tapGestureRecognizer];
      v13 = [(SXFullscreenCanvasController *)self tapGestureRecognizer];
      v14 = [v13 view];
      [v12 locationInView:v14];
      v16 = v15;
      v18 = v17;

      v19 = [(SXFullscreenCanvasController *)self captionView];
      [v19 frame];
      v72.x = v16;
      v72.y = v18;
      if (CGRectContainsPoint(v74, v72))
      {
        v20 = 0;
      }

      else
      {
        v38 = [(SXFullscreenCanvasController *)self navigationBarView];
        [v38 frame];
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

  v21 = [(SXFullscreenCanvasController *)self pinchGestureRecognizer];

  if (v21 == v5)
  {
    v23 = [(SXFullscreenCanvasController *)self isFullscreen];
    if (v23)
    {
      v3 = [(SXFullscreenCanvasController *)self pinchGestureRecognizer];
      [v3 scale];
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

    v39 = [(SXFullscreenCanvasController *)self pinchGestureRecognizer];
    [v39 scale];
    v41 = v40;

    if (v23)
    {
    }

    if (v41 >= 1.0)
    {
      goto LABEL_11;
    }

LABEL_48:
    v42 = [(SXFullscreenCanvasController *)self panGestureRecognizer];
    [v42 cancel];

    v43 = [(SXFullscreenCanvasController *)self rotationGestureRecognizer];
    [v43 cancel];

    goto LABEL_49;
  }

LABEL_11:
  v22 = [(SXFullscreenCanvasController *)self panGestureRecognizer];
  if (v22 != v5)
  {
LABEL_12:

    goto LABEL_26;
  }

  v25 = [(SXFullscreenCanvasController *)self isFullscreen];

  if (v25)
  {
    v26 = [(SXFullscreenCanvasController *)self itemizedScrollView];
    v22 = [v26 activeView];

    v68 = 0u;
    v69 = 0u;
    v66 = 0u;
    v67 = 0u;
    v27 = [v22 scrollView];
    v3 = [v27 gestureRecognizers];

    v28 = [v3 countByEnumeratingWithState:&v66 objects:v70 count:16];
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
        objc_enumerationMutation(v3);
      }

      if ([*(*(&v66 + 1) + 8 * v31) state])
      {
        goto LABEL_31;
      }

      if (v29 == ++v31)
      {
        v29 = [v3 countByEnumeratingWithState:&v66 objects:v70 count:16];
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

  v32 = [(SXFullscreenCanvasController *)self openTapGestureRecognizer];

  if (v32 == v5)
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

  v33 = [(SXFullscreenCanvasController *)self panGestureRecognizer];
  v34 = v33;
  if (v33 != v5)
  {

    goto LABEL_58;
  }

  v45 = [(SXFullscreenCanvasController *)self isFullscreen];

  if (!v45)
  {
LABEL_58:
    if ([(SXFullscreenCanvasController *)self totalActiveGestureRecognizers])
    {
      v20 = 1;
    }

    else
    {
      v58 = [v5 view];
      [v5 locationInView:v58];
      v60 = v59;
      v62 = v61;

      v63 = [(SXFullscreenCanvasController *)self viewIndexForPoint:v60, v62];
      v20 = v63 != 0x7FFFFFFFFFFFFFFFLL;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v20 = [v5 numberOfTouches] == 2 && v63 != 0x7FFFFFFFFFFFFFFFLL;
      }
    }

    goto LABEL_50;
  }

  v46 = [(SXFullscreenCanvasController *)self panGestureRecognizer];
  v47 = [v46 numberOfTouches];

  v48 = [(SXFullscreenCanvasController *)self panGestureRecognizer];
  v49 = v48;
  if (v47 == 1)
  {
    v50 = [(SXFullscreenCanvasController *)self panGestureRecognizer];
    v51 = [v50 view];
    [v49 translationInView:v51];
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
    v65 = [v48 numberOfTouches] == 2;

    v20 = v65 | v7;
  }

LABEL_50:

  return v20 & 1;
}

- (id)dragManager:(id)a3 dragableAtLocation:(CGPoint)a4
{
  v5 = [(SXFullscreenCanvasController *)self itemizedScrollView:a3];
  v6 = [v5 activeView];

  if (v6)
  {
    v7 = [(SXFullscreenCanvasController *)self itemizedScrollView];
    v8 = [v7 activeView];
    v9 = [v8 contentView];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)captionView:(id)a3 tapGestureRecognizerShouldBegin:(id)a4
{
  v5 = a4;
  if ([(SXFullscreenCanvasController *)self isFullscreen])
  {
    v6 = [v5 view];
    [v5 locationInView:v6];
    v8 = v7;
    v10 = v9;

    v11 = [(SXFullscreenCanvasController *)self captionView];
    [v11 bounds];
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
  v3 = [(SXFullscreenCanvasController *)self showable];
  v4 = [(SXFullscreenCanvasController *)self showable];
  v5 = [v3 fullScreenCanvasController:self numberOfViewsForShowable:v4];

  if (v5 >= 2)
  {
    v6 = [(SXFullscreenCanvasController *)self itemizedScrollView];
    [v6 scrollToNext];
  }
}

- (void)handlePreviousCommand
{
  v3 = [(SXFullscreenCanvasController *)self showable];
  v4 = [(SXFullscreenCanvasController *)self showable];
  v5 = [v3 fullScreenCanvasController:self numberOfViewsForShowable:v4];

  if (v5 >= 2)
  {
    v6 = [(SXFullscreenCanvasController *)self itemizedScrollView];
    [v6 scrollToPrevious];
  }
}

- (void)fullscreenCanvasViewController:(id)a3 willTransitionToSize:(CGSize)a4 withTransitionCoordinator:(id)a5
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __110__SXFullscreenCanvasController_fullscreenCanvasViewController_willTransitionToSize_withTransitionCoordinator___block_invoke;
  v5[3] = &unk_1E84FEC50;
  v5[4] = self;
  v6 = a4;
  [a5 animateAlongsideTransition:v5 completion:0];
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