@interface TSDiOSCanvasViewController
- ($F5A7A7B85D6989FBEC7A5CF4432B5A5E)centerPlusMovementContentPlacement;
- ($F5A7A7B85D6989FBEC7A5CF4432B5A5E)touchContentPlacement;
- (BOOL)allowTouchOutsideCanvasView:(id)a3 forGesture:(id)a4;
- (BOOL)becomeFirstResponder;
- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4;
- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4;
- (BOOL)gestureRecognizer:(id)a3 shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)a4;
- (BOOL)gestureRecognizerShouldBegin:(id)a3;
- (BOOL)handleDoubleTapAtPoint:(CGPoint)a3 withRecognizer:(id)a4;
- (BOOL)handleSingleTapAtPoint:(CGPoint)a3 withRecognizer:(id)a4;
- (BOOL)p_shouldUseWideGamut;
- (BOOL)repDragGestureRecognizer:(id)a3 shouldBeginTapHoldTrackingAtScaledPoint:(CGPoint)a4;
- (BOOL)respondsToSelector:(SEL)a3;
- (BOOL)shouldIgnoreTextGestures;
- (CALayer)clippingLayer;
- (CALayer)layer;
- (CGRect)targetRectForEditMenu:(id)a3;
- (TSDCanvasLayer)canvasLayer;
- (TSDCanvasView)canvasView;
- (id)extraMenuItems;
- (id)hitKnobWithTouch:(id)a3 returningRep:(id *)a4;
- (id)hitRepWithTouch:(id)a3;
- (id)methodSignatureForSelector:(SEL)a3;
- (id)p_willPresentError:(id)a3;
- (id)topLevelReps;
- (id)viewForGestureRecognizer:(id)a3;
- (void)addInspectorPanZoomModeGRsToArray:(id)a3;
- (void)beginInspectorPanZoomModeWithSingleTapBlock:(id)a3;
- (void)beginModalOperationWithLocalizedMessage:(id)a3 progress:(id)a4 cancelHandler:(id)a5;
- (void)canvasZoomTracker:(id)a3 willBeginViewScaleFeedbackWithFastPinch:(BOOL)a4;
- (void)canvasZoomTrackerDidEndFinalZoomAnimation:(id)a3;
- (void)canvasZoomTrackerDidFinish:(id)a3;
- (void)canvasZoomTrackerWillBeginFinalZoomAnimation:(id)a3;
- (void)cut:(id)a3;
- (void)dealloc;
- (void)endInspectorPanZoomMode;
- (void)endModalOperation;
- (void)forceStopScrolling;
- (void)forwardInvocation:(id)a3;
- (void)handleDoubleTap:(id)a3;
- (void)i_updateZoomGestureRecognizer;
- (void)loadView;
- (void)p_allTouchesDone:(id)a3;
- (void)p_buildMenuItems:(id)a3 forSelection:(id)a4;
- (void)p_didPresentErrorWithRecovery:(BOOL)a3 completionHandler:(void *)a4;
- (void)p_guidedPanWithGesture:(id)a3;
- (void)p_handleSingleTapGesture:(id)a3;
- (void)p_handleTapForEditMenu:(id)a3;
- (void)p_updateWideGamut;
- (void)p_zoomWithGesture:(id)a3;
- (void)presentError:(id)a3 completionHandler:(id)a4;
- (void)presentErrors:(id)a3 withLocalizedDescription:(id)a4 completionHandler:(id)a5;
- (void)presentMovieCompatibilityAlertForUnplayableMoviePasteboardDrawableProviders:(id)a3 completionHandler:(id)a4;
- (void)presentMovieCompatibilityAlertForUnplayableMovieURLs:(id)a3 completionHandler:(id)a4;
- (void)resetGesturesForContextSwitch;
- (void)setContextMenuMightBeDisplayed:(BOOL)a3;
- (void)setUpGestureRecognizers;
- (void)showEditMenu:(id)a3;
- (void)showEditMenuForSelection:(id)a3;
- (void)stopScrolling;
- (void)teardown;
- (void)toggleEditMenuForCurrentSelection;
- (void)unlock:(id)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation TSDiOSCanvasViewController

- ($F5A7A7B85D6989FBEC7A5CF4432B5A5E)touchContentPlacement
{
  [(TSDGuidedPanController *)self->mGuidedPanController touchContentPlacement];
  result.var0.y = v3;
  result.var0.x = v2;
  return result;
}

- ($F5A7A7B85D6989FBEC7A5CF4432B5A5E)centerPlusMovementContentPlacement
{
  [(TSDGuidedPanController *)self->mGuidedPanController centerPlusMovementContentPlacement];
  result.var0.y = v3;
  result.var0.x = v2;
  return result;
}

- (id)methodSignatureForSelector:(SEL)a3
{
  v7.receiver = self;
  v7.super_class = TSDiOSCanvasViewController;
  if ([(TSDiOSCanvasViewController *)&v7 respondsToSelector:?])
  {
    v6.receiver = self;
    v6.super_class = TSDiOSCanvasViewController;
    return [(TSDiOSCanvasViewController *)&v6 methodSignatureForSelector:a3];
  }

  else
  {
    result = methodSignatureForSelector__s_actionMethodSignature_0;
    if (!methodSignatureForSelector__s_actionMethodSignature_0)
    {
      result = [MEMORY[0x277CBEB08] signatureWithObjCTypes:{objc_msgSend(objc_msgSend(MEMORY[0x277CCACA8], "stringWithFormat:", @"%s%s%s%s", "v", "@", ":", "@"), "UTF8String")}];
      methodSignatureForSelector__s_actionMethodSignature_0 = result;
    }
  }

  return result;
}

- (BOOL)respondsToSelector:(SEL)a3
{
  v7.receiver = self;
  v7.super_class = TSDiOSCanvasViewController;
  if ([(TSDiOSCanvasViewController *)&v7 respondsToSelector:?])
  {
    LOBYTE(v5) = 1;
  }

  else
  {
    v5 = [TSDInteractiveCanvasController selectorIsActionMethod:a3];
    if (v5)
    {
      [(TSDiOSCanvasViewController *)self interactiveCanvasController];
      LOBYTE(v5) = objc_opt_respondsToSelector();
    }
  }

  return v5 & 1;
}

- (void)forwardInvocation:(id)a3
{
  v4 = [(TSDiOSCanvasViewController *)self interactiveCanvasController];

  [a3 invokeWithTarget:v4];
}

- (void)dealloc
{
  if (!self->mHasBeenTornDown)
  {
    v3 = [MEMORY[0x277D6C290] currentHandler];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDiOSCanvasViewController dealloc]"];
    [v3 handleFailureInFunction:v4 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDiOSCanvasViewController.m"), 151, @"CVC should have been torn down before dealloc"}];
  }

  self->mInspectorGestureRecognizersToReenable = 0;
  self->mInspectorSingleTapBlock = 0;

  self->mSingleTapGestureRecognizer = 0;
  self->mDoubleTapGestureRecognizer = 0;

  self->mEditMenuTapGestureRecognizer = 0;
  self->mKnobDragGestureRecognizer = 0;

  self->mMultiSelectGestureRecognizer = 0;
  self->mRepDragGestureRecognizer = 0;

  self->mRepRotateGestureRecognizer = 0;
  self->mZoomGestureRecognizer = 0;

  self->mNudgeGestureRecognizer = 0;
  self->mAllTouchesDoneGestureRecognizer = 0;

  self->mPreventScrollGestureRecognizer = 0;
  self->mGuidedPanGestureRecognizer = 0;

  self->mGuidedPanController = 0;
  self->mSubviewsController = 0;
  v5.receiver = self;
  v5.super_class = TSDiOSCanvasViewController;
  [(TSDiOSCanvasViewController *)&v5 dealloc];
}

- (void)teardown
{
  if ([(TSDiOSCanvasViewController *)self isViewLoaded])
  {
    [objc_msgSend(MEMORY[0x277CCAB98] "defaultCenter")];
    [(TSDCanvasView *)[(TSDiOSCanvasViewController *)self canvasView] teardown];
  }

  self->mHasBeenTornDown = 1;
  [(TSDCanvasSubviewsController *)self->mSubviewsController teardown];
  if ([(NSSet *)[(TSDCanvasSubviewsController *)self->mSubviewsController repChildViews] count])
  {
    v3 = [MEMORY[0x277D6C290] currentHandler];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDiOSCanvasViewController teardown]"];
    [v3 handleFailureInFunction:v4 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDiOSCanvasViewController.m"), 183, @"subviews of cvc %@ not torn down: %@", self, -[TSDCanvasSubviewsController repChildViews](self->mSubviewsController, "repChildViews")}];
  }

  [(TSDiOSCanvasViewController *)self resignFirstResponder];
  [(TSDInteractiveCanvasController *)self->mICC i_layerHostHasBeenTornDown];
  self->mICC = 0;
}

- (void)loadView
{
  v3 = objc_alloc_init(TSDCanvasView);

  [(TSDiOSCanvasViewController *)self setView:v3];
}

- (void)viewDidLoad
{
  v14.receiver = self;
  v14.super_class = TSDiOSCanvasViewController;
  [(TSDiOSCanvasViewController *)&v14 viewDidLoad];
  v3 = [(TSDiOSCanvasViewController *)self canvasView];
  if (v3)
  {
    v4 = v3;
    self->mSubviewsController = [[TSDCanvasSubviewsController alloc] initWithLayerAndSubviewHost:self];
    [(TSDiOSCanvasViewController *)self setWantsFullScreenLayout:1];
    if (!self->mICC)
    {
      v5 = [MEMORY[0x277D6C290] currentHandler];
      v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDiOSCanvasViewController viewDidLoad]"];
      [v5 handleFailureInFunction:v6 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDiOSCanvasViewController.m"), 211, @"invalid nil value for '%s'", "mICC"}];
    }

    [(TSDInteractiveCanvasController *)[(TSDiOSCanvasViewController *)self interactiveCanvasController] viewScale];
    v8 = v7;
    [(TSDCanvasView *)v4 setController:self->mICC];
    [(TSDCanvas *)[(TSDInteractiveCanvasController *)self->mICC canvas] setViewScale:v8];
    v9 = [(TSDInteractiveCanvasController *)self->mICC canvas];
    TSUScreenScale();
    [(TSDCanvas *)v9 i_setContentsScale:?];
    [(TSDCanvas *)[(TSDInteractiveCanvasController *)self->mICC canvas] i_setCanvasIsWideGamut:[(TSDiOSCanvasViewController *)self p_shouldUseWideGamut]];
    [(TSDCanvasView *)v4 setMultipleTouchEnabled:1];
    [(TSDCanvasView *)v4 setExclusiveTouch:1];
    [(TSDCanvasView *)v4 setClipsToBounds:1];
    [(TSDCanvasView *)v4 setClearsContextBeforeDrawing:0];
    v10 = [(TSDCanvasView *)v4 enclosingScrollView];
    if (v10)
    {
      v11 = v10;
      if (![(TSKScrollView *)v10 delegate])
      {
        [(TSKScrollView *)v11 setDelegate:self->mICC];
      }

      [(TSDCanvasLayer *)[(TSDiOSCanvasViewController *)self canvasLayer] fixFrameAndScrollView];
      [(TSKScrollView *)v11 setAutoresizesSubviews:0];
      [(TSKScrollView *)v11 setDelaysContentTouches:0];
      [(TSKScrollView *)v11 setCanCancelContentTouches:1];
    }

    [(TSDInteractiveCanvasController *)self->mICC setTextGesturesInFlight:0];
    [(TSDiOSCanvasViewController *)self setUpGestureRecognizers];
    [(TSDiOSCanvasViewController *)self becomeFirstResponder];
  }

  else
  {
    v12 = [MEMORY[0x277D6C290] currentHandler];
    v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDiOSCanvasViewController viewDidLoad]"];
    [v12 handleFailureInFunction:v13 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDiOSCanvasViewController.m"), 199, @"invalid nil value for '%s'", "canvasView"}];
  }
}

- (BOOL)p_shouldUseWideGamut
{
  v3 = [(TSDiOSCanvasViewController *)self traitCollection];
  if (!v3 || (v4 = [v3 displayGamut], v4 == -1))
  {
    v5 = [objc_msgSend(-[TSDiOSCanvasViewController view](self "view")];
    if (v5)
    {
      v4 = [v5 displayGamut];
    }

    else
    {
      v4 = -1;
    }
  }

  return v4 == 1 || v4 == -1;
}

- (void)p_updateWideGamut
{
  v3 = [(TSDInteractiveCanvasController *)self->mICC canvas];
  v4 = [(TSDiOSCanvasViewController *)self p_shouldUseWideGamut];
  if (v4 != [(TSDCanvas *)v3 canvasIsWideGamut])
  {
    [(TSDCanvas *)v3 i_setCanvasIsWideGamut:v4];
    mICC = self->mICC;

    [(TSDInteractiveCanvasController *)mICC i_canvasWideGamutValueDidChange];
  }
}

- (void)viewWillAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = TSDiOSCanvasViewController;
  [(TSDiOSCanvasViewController *)&v4 viewWillAppear:a3];
  [(TSDiOSCanvasViewController *)self p_updateWideGamut];
}

- (void)viewWillDisappear:(BOOL)a3
{
  v3 = a3;
  if ([(TSDInteractiveCanvasController *)[(TSDiOSCanvasViewController *)self interactiveCanvasController] currentlyScrolling])
  {
    [(TSDiOSCanvasViewController *)self forceStopScrolling];
  }

  v5.receiver = self;
  v5.super_class = TSDiOSCanvasViewController;
  [(TSDiOSCanvasViewController *)&v5 viewWillDisappear:v3];
}

- (BOOL)becomeFirstResponder
{
  [(TSDInteractiveCanvasController *)self->mICC i_cvcWillBecomeFirstResponder];
  v4.receiver = self;
  v4.super_class = TSDiOSCanvasViewController;
  return [(TSDiOSCanvasViewController *)&v4 becomeFirstResponder];
}

- (TSDCanvasLayer)canvasLayer
{
  objc_opt_class();
  [-[TSDiOSCanvasViewController view](self "view")];

  return TSUDynamicCast();
}

- (TSDCanvasView)canvasView
{
  objc_opt_class();
  [(TSDiOSCanvasViewController *)self view];

  return TSUDynamicCast();
}

- (CALayer)layer
{
  v2 = [(TSDiOSCanvasViewController *)self view];

  return [v2 layer];
}

- (CALayer)clippingLayer
{
  v2 = [(TSDCanvasView *)[(TSDiOSCanvasViewController *)self canvasView] enclosingScrollView];

  return [(TSKScrollView *)v2 layer];
}

- (id)hitRepWithTouch:(id)a3
{
  if ([(TSDInteractiveCanvasController *)[(TSDiOSCanvasViewController *)self interactiveCanvasController] allowLayoutAndRenderOnThread]&& [(TSDInteractiveCanvasController *)[(TSDiOSCanvasViewController *)self interactiveCanvasController] currentlyScrolling])
  {
    v5 = [MEMORY[0x277D6C290] currentHandler];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDiOSCanvasViewController hitRepWithTouch:]"];
    [v5 handleFailureInFunction:v6 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDiOSCanvasViewController.m"), 350, @"unsafe to find hit reps during scroll if we layout and render on a thread during scroll"}];
  }

  if (a3)
  {
    [a3 locationInView:{-[TSDiOSCanvasViewController canvasView](self, "canvasView")}];
    [(TSDInteractiveCanvasController *)[(TSDiOSCanvasViewController *)self interactiveCanvasController] convertBoundsToUnscaledPoint:v7, v8];
    v10 = v9;
    v12 = v11;
    v13 = [(TSDiOSCanvasViewController *)self interactiveCanvasController];

    return [(TSDInteractiveCanvasController *)v13 hitRep:v10, v12];
  }

  else
  {
    v15 = [MEMORY[0x277D6C290] currentHandler];
    v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDiOSCanvasViewController hitRepWithTouch:]"];
    [v15 handleFailureInFunction:v16 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDiOSCanvasViewController.m"), 351, @"invalid nil value for '%s'", "touch"}];
    return 0;
  }
}

- (id)hitKnobWithTouch:(id)a3 returningRep:(id *)a4
{
  if (a3)
  {
    [a3 locationInView:{-[TSDiOSCanvasViewController canvasView](self, "canvasView")}];
    [(TSDInteractiveCanvasController *)[(TSDiOSCanvasViewController *)self interactiveCanvasController] convertBoundsToUnscaledPoint:v6, v7];
    v9 = v8;
    v11 = v10;
    v12 = [(TSDiOSCanvasViewController *)self interactiveCanvasController];

    return [(TSDInteractiveCanvasController *)v12 hitKnobAtPoint:a4 returningRep:v9, v11];
  }

  else
  {
    v14 = [MEMORY[0x277D6C290] currentHandler];
    v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDiOSCanvasViewController hitKnobWithTouch:returningRep:]"];
    [v14 handleFailureInFunction:v15 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDiOSCanvasViewController.m"), 366, @"invalid nil value for '%s'", "touch"}];
    if (a4)
    {
      *a4 = 0;
    }

    return 0;
  }
}

- (BOOL)gestureRecognizerShouldBegin:(id)a3
{
  if (self->mGuidedPanGestureRecognizer == a3)
  {
    [(TSDInteractiveCanvasController *)self->mICC delegate];
    if (objc_opt_respondsToSelector())
    {
      v5 = [(TSDInteractiveCanvasController *)self->mICC delegate];
      mICC = self->mICC;
      [(UIPanGestureRecognizer *)self->mGuidedPanGestureRecognizer direction];

      return [(TSDInteractiveCanvasControllerDelegate *)v5 interactiveCanvasControllerShouldUseGuidedPan:mICC withMovementDirection:?];
    }

    else
    {
      return 0;
    }
  }

  else if ([(TSDiOSCanvasViewController *)self zoomGestureRecognizer]== a3)
  {
    return [(TSKScrollView *)[(TSDCanvasView *)[(TSDiOSCanvasViewController *)self canvasView] enclosingScrollView] isDragging]^ 1;
  }

  else
  {
    return 1;
  }
}

- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4
{
  if ([(TSDiOSCanvasViewController *)self zoomGestureRecognizer]== a3 || self->mGuidedPanGestureRecognizer == a3)
  {
    return 1;
  }

  v7 = [(TSDiOSCanvasViewController *)self canvasView];
  [a4 locationInView:v7];
  v8 = [(TSDCanvasView *)v7 hitTest:0 withEvent:?];
  if ([(TSDiOSCanvasViewController *)self editMenuTapGestureRecognizer]== a3)
  {
    self->mContextMenuMightBeDisplayed = [objc_msgSend(MEMORY[0x277D75718] "sharedMenuController")];
  }

  return v8 == v7;
}

- (void)setUpGestureRecognizers
{
  if ((TSUSupportsTextInteraction() & 1) == 0)
  {
    v3 = [(TSDiOSCanvasViewController *)self canvasView];
    if ([-[TSDCanvasView gestureRecognizers](v3 "gestureRecognizers")])
    {
      v4 = [MEMORY[0x277D6C290] currentHandler];
      v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDiOSCanvasViewController setUpGestureRecognizers]"];
      [v4 handleFailureInFunction:v5 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDiOSCanvasViewController.m"), 458, @"-[TSDICC setUpGestureRecognizers] should be called only once each time the view is loaded"}];
    }

    v6 = [[TSDTapGestureRecognizer alloc] initWithTarget:self action:sel_p_handleSingleTapGesture_];
    [(TSDTapGestureRecognizer *)v6 setDelegate:self];
    [(TSDCanvasView *)v3 addGestureRecognizer:v6];
    [(TSDiOSCanvasViewController *)self setSingleTapGestureRecognizer:v6];

    v7 = [[TSDTapGestureRecognizer alloc] initWithTarget:self action:sel_handleDoubleTap_];
    [(TSDTapGestureRecognizer *)v7 setNumberOfTapsRequired:2];
    [(TSDTapGestureRecognizer *)v7 setDelegate:self];
    [(TSDCanvasView *)v3 addGestureRecognizer:v7];
    [(TSDiOSCanvasViewController *)self setDoubleTapGestureRecognizer:v7];

    v8 = [[TSDEditMenuTapGestureRecognizer alloc] initWithTarget:self action:sel_p_handleTapForEditMenu_];
    [(TSDEditMenuTapGestureRecognizer *)v8 setDelegate:self];
    [(TSDEditMenuTapGestureRecognizer *)v8 requireGestureRecognizerToFail:[(TSDiOSCanvasViewController *)self doubleTapGestureRecognizer]];
    [(TSDCanvasView *)v3 addGestureRecognizer:v8];
    [(TSDiOSCanvasViewController *)self setEditMenuTapGestureRecognizer:v8];

    v9 = [[TSDKnobDragGestureRecognizer alloc] initWithInteractiveCanvasController:self->mICC];
    [(TSDKnobDragGestureRecognizer *)v9 setDelegate:self];
    [(TSDCanvasView *)v3 addGestureRecognizer:v9];
    [(TSDiOSCanvasViewController *)self setKnobDragGestureRecognizer:v9];

    v10 = [[TSDAllTouchesDoneGestureRecognizer alloc] initWithTarget:self action:sel_p_allTouchesDone_];
    [(TSDAllTouchesDoneGestureRecognizer *)v10 setDelegate:self];
    [(TSDCanvasView *)v3 addGestureRecognizer:v10];
    [(TSDiOSCanvasViewController *)self setAllTouchesDoneGestureRecognizer:v10];

    v11 = [(UIPinchGestureRecognizer *)[TSDCanvasZoomPinchGestureRecognizer alloc] initWithTarget:self action:sel_p_zoomWithGesture_];
    [(TSDCanvasZoomPinchGestureRecognizer *)v11 setDelegate:self];
    [(TSDCanvasZoomPinchGestureRecognizer *)v11 setAllowedTouchTypes:&unk_287DDCBA0];
    [(TSDCanvasView *)v3 addGestureRecognizer:v11];
    [(TSDiOSCanvasViewController *)self setZoomGestureRecognizer:v11];

    [(TSDiOSCanvasViewController *)self i_updateZoomGestureRecognizer];
    v12 = [[TSDPreventScrollGestureRecognizer alloc] initWithInteractiveCanvasController:self->mICC];
    [(TSDPreventScrollGestureRecognizer *)v12 setDelegate:self];
    [(TSDCanvasView *)v3 addGestureRecognizer:v12];

    self->mPreventScrollGestureRecognizer = v12;
    v13 = [objc_alloc(MEMORY[0x277D757F8]) initWithTarget:self action:sel_p_guidedPanWithGesture_];
    [(UIPanGestureRecognizer *)v13 setDelegate:self];
    [(TSDCanvasView *)v3 addGestureRecognizer:v13];

    self->mGuidedPanGestureRecognizer = v13;
    v14 = [(TSKScrollView *)[(TSDCanvasView *)[(TSDiOSCanvasViewController *)self canvasView] enclosingScrollView] panGestureRecognizer];

    [v14 requireGestureRecognizerToFail:v13];
  }
}

- (void)resetGesturesForContextSwitch
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = [-[TSDiOSCanvasViewController view](self view];
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v9 + 1) + 8 * i);
        if ([v8 isEnabled])
        {
          [v8 setEnabled:0];
          [v8 setEnabled:1];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  if ([(TSDEditMenuTapGestureRecognizer *)[(TSDiOSCanvasViewController *)self editMenuTapGestureRecognizer] isEnabled])
  {
    [(TSDEditMenuTapGestureRecognizer *)[(TSDiOSCanvasViewController *)self editMenuTapGestureRecognizer] setIgnoreTargetAction:1];
  }
}

- (void)i_updateZoomGestureRecognizer
{
  v3 = [(TSDCanvasLayer *)[(TSDiOSCanvasViewController *)self canvasLayer] allowsPinchZoom];
  v4 = [(TSDiOSCanvasViewController *)self zoomGestureRecognizer];

  [(UIPinchGestureRecognizer *)v4 setEnabled:v3];
}

- (BOOL)handleSingleTapAtPoint:(CGPoint)a3 withRecognizer:(id)a4
{
  y = a3.y;
  x = a3.x;
  [(TSDInteractiveCanvasController *)self->mICC setLastTapPoint:?];
  if ([(TSDiOSCanvasViewControllerDelegate *)self->mDelegate inFindReplaceMode])
  {
    [(TSDiOSCanvasViewControllerDelegate *)self->mDelegate handleFindTapAtPoint:x, y];
LABEL_11:
    LOBYTE(v10) = 1;
    return v10;
  }

  v13 = 0;
  v8 = [(TSDInteractiveCanvasController *)self->mICC hitKnobAtPoint:&v13 returningRep:x, y];
  if (v8 && ([v13 handleSingleTapAtPoint:v8 onKnob:{x, y}] & 1) != 0 || (v9 = -[TSDInteractiveCanvasController hitRep:](self->mICC, "hitRep:", x, y), !objc_msgSend(v9, "repForSelecting")) && (objc_msgSend(v9, "shouldIgnoreSingleTapAtPoint:withRecognizer:", a4, x, y) & 1) != 0 || (v10 = -[TSDInteractiveCanvasController handleSingleTapAtPoint:](self->mICC, "handleSingleTapAtPoint:", x, y)))
  {
    if (self->mInspectorModeEnabled)
    {
      mInspectorSingleTapBlock = self->mInspectorSingleTapBlock;
      if (mInspectorSingleTapBlock)
      {
        mInspectorSingleTapBlock[2]();
      }
    }

    goto LABEL_11;
  }

  return v10;
}

- (void)handleDoubleTap:(id)a3
{
  objc_opt_class();
  v4 = TSUDynamicCast();
  if (v4)
  {
    v5 = v4;
    mICC = self->mICC;
    v7 = [(TSDiOSCanvasViewController *)self canvasView];
    [v5 firstTapLocation];
    [(TSDCanvasView *)v7 convertPoint:0 fromView:?];
    [(TSDInteractiveCanvasController *)mICC convertBoundsToUnscaledPoint:?];
    v9 = v8;
    v11 = v10;
    if (![(TSDiOSCanvasViewController *)self handleDoubleTapAtPoint:v5 withRecognizer:?])
    {
      v12 = self->mICC;

      [(TSDInteractiveCanvasController *)v12 handleDoubleTapAtPoint:v9, v11];
    }
  }
}

- (BOOL)handleDoubleTapAtPoint:(CGPoint)a3 withRecognizer:(id)a4
{
  y = a3.y;
  x = a3.x;
  v13 = 0;
  v8 = [(TSDInteractiveCanvasController *)self->mICC hitKnobAtPoint:&v13 returningRep:?];
  if (v8 && ([v13 handleDoubleTapAtPoint:v8 onKnob:{x, y}] & 1) != 0)
  {
    LOBYTE(v9) = 1;
  }

  else
  {
    v9 = [-[TSDInteractiveCanvasController hitRep:](self->mICC hitRep:{x, y), "repForSelecting"}];
    if (v9)
    {
      v10 = v9;
      if ([v9 info])
      {
        v11 = [(TSDInteractiveCanvasController *)self->mICC canvasEditor];
        -[TSDCanvasEditor setSelection:](v11, "setSelection:", -[TSDCanvasEditor canvasSelectionWithInfos:](v11, "canvasSelectionWithInfos:", [MEMORY[0x277CBEB98] setWithObject:{objc_msgSend(v10, "info")}]));
      }

      if (objc_opt_respondsToSelector())
      {
        LOBYTE(v9) = [v10 handleDoubleTapAtPoint:a4 withRecognizer:{x, y}];
      }

      else
      {
        LOBYTE(v9) = 0;
      }
    }
  }

  return v9;
}

- (void)p_allTouchesDone:(id)a3
{
  v4 = [MEMORY[0x277CCAB98] defaultCenter];

  [v4 postNotificationName:@"TSDInteractiveCanvasControllerAllTouchesInGestureFinished" object:self];
}

- (void)p_handleTapForEditMenu:(id)a3
{
  objc_opt_class();
  v4 = TSUDynamicCast();
  if (v4)
  {
    v5 = v4;
    if (([v4 ignoreTargetAction] & 1) == 0)
    {
      mICC = self->mICC;
      [v5 locationInView:{-[TSDiOSCanvasViewController canvasView](self, "canvasView")}];
      [(TSDInteractiveCanvasController *)mICC convertBoundsToUnscaledPoint:?];
      v8 = v7;
      v10 = v9;
      v11 = [v5 touchedRep];
      if (v11)
      {
        v12 = v11;
        if (([v11 isSelectedIgnoringLocking] & 1) == 0 && -[TSDiOSCanvasViewController shouldSelectAndShowEditMenuOnFirstTapForRep:](self, "shouldSelectAndShowEditMenuOnFirstTapForRep:", v12))
        {
          [(TSDInteractiveCanvasController *)self->mICC endEditing];
          v13 = [(TSDInteractiveCanvasController *)self->mICC canvasEditor];
          -[TSDCanvasEditor setSelection:](v13, "setSelection:", -[TSDCanvasEditor canvasSelectionWithInfos:](v13, "canvasSelectionWithInfos:", [MEMORY[0x277CBEB98] setWithObject:{objc_msgSend(v12, "info")}]));
        }

        [(TSDInteractiveCanvasController *)self->mICC setLastTapPoint:*MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8)];
        if ([v12 isSelectedIgnoringLocking] && (objc_msgSend(v12, "shouldIgnoreEditMenuTapAtPoint:withRecognizer:", v5, v8, v10) & 1) == 0)
        {
          if (self->mContextMenuMightBeDisplayed)
          {

            [(TSDiOSCanvasViewController *)self hideEditMenu];
          }

          else
          {

            [(TSDiOSCanvasViewController *)self showEditMenu:v12];
          }
        }
      }
    }
  }
}

- (BOOL)gestureRecognizer:(id)a3 shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)a4
{
  mSingleTapGestureRecognizer = self->mSingleTapGestureRecognizer;
  mEditMenuTapGestureRecognizer = self->mEditMenuTapGestureRecognizer;
  if (mSingleTapGestureRecognizer == a3 && mEditMenuTapGestureRecognizer == a4)
  {
    return 1;
  }

  v18 = v7;
  v19 = v6;
  v20 = v5;
  v21 = v4;
  v15 = mSingleTapGestureRecognizer == a4 && mEditMenuTapGestureRecognizer == a3;
  return v15 || ([(TSDiOSCanvasViewController *)self preventScrollGestureRecognizer]== a3 || [(TSDiOSCanvasViewController *)self preventScrollGestureRecognizer]== a4) && [(TSKScrollView *)[(TSDCanvasView *)[(TSDiOSCanvasViewController *)self canvasView:v7] enclosingScrollView] panGestureRecognizer]!= a3 && [(TSKScrollView *)[(TSDCanvasView *)[(TSDiOSCanvasViewController *)self canvasView] enclosingScrollView] panGestureRecognizer]!= a4 || [(TSDiOSCanvasViewController *)self zoomGestureRecognizer:v18]== a3 && [(TSKScrollView *)[(TSDCanvasView *)[(TSDiOSCanvasViewController *)self canvasView] enclosingScrollView] panGestureRecognizer]== a4;
}

- (BOOL)shouldIgnoreTextGestures
{
  if (!self->mDelegate || (objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  mDelegate = self->mDelegate;

  return [(TSDiOSCanvasViewControllerDelegate *)mDelegate shouldIgnoreTextGestures];
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  v29 = *MEMORY[0x277D85DE8];
  v26.receiver = self;
  v26.super_class = TSDiOSCanvasViewController;
  [(TSDiOSCanvasViewController *)&v26 viewWillTransitionToSize:a3.width withTransitionCoordinator:a3.height];
  [(TSDiOSCanvasViewController *)self forceStopScrolling];
  [(TSDTextInputResponder *)[(TSDInteractiveCanvasController *)self->mICC textInputResponder] canvasWillRotate];
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v6 = [(TSDiOSCanvasViewController *)self commonGestureRecognizers];
  v7 = [(NSArray *)v6 countByEnumeratingWithState:&v22 objects:v28 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v23;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v23 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v22 + 1) + 8 * i);
        if ((objc_opt_respondsToSelector() & 1) != 0 && (![v11 state] || objc_msgSend(v11, "state") == 1 || objc_msgSend(v11, "state") == 2))
        {
          [v11 performSelector:sel_cancelBecauseOfRotation];
        }
      }

      v8 = [(NSArray *)v6 countByEnumeratingWithState:&v22 objects:v28 count:16];
    }

    while (v8);
  }

  [(TSDInteractiveCanvasController *)[(TSDiOSCanvasViewController *)self interactiveCanvasController] i_syncWithLayoutThread];
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v12 = [(TSDCanvas *)[(TSDInteractiveCanvasController *)[(TSDiOSCanvasViewController *)self interactiveCanvasController] canvas] topLevelReps];
  v13 = [v12 countByEnumeratingWithState:&v18 objects:v27 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v19;
    do
    {
      for (j = 0; j != v14; ++j)
      {
        if (*v19 != v15)
        {
          objc_enumerationMutation(v12);
        }

        [*(*(&v18 + 1) + 8 * j) recursivelyPerformSelectorIfImplemented:sel_canvasWillRotate];
      }

      v14 = [v12 countByEnumeratingWithState:&v18 objects:v27 count:16];
    }

    while (v14);
  }

  self->mRotating = 1;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __81__TSDiOSCanvasViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke;
  v17[3] = &unk_279D49370;
  v17[4] = self;
  [a4 animateAlongsideTransition:0 completion:v17];
}

_BYTE *__81__TSDiOSCanvasViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if ((result[1120] & 1) == 0)
  {
    [objc_msgSend(result "interactiveCanvasController")];
    *(*(a1 + 32) + 1145) = 0;
    v3 = [*(a1 + 32) interactiveCanvasController];

    return [v3 invalidateReps];
  }

  return result;
}

- (BOOL)allowTouchOutsideCanvasView:(id)a3 forGesture:(id)a4
{
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  mDelegate = self->mDelegate;

  return [(TSDiOSCanvasViewControllerDelegate *)mDelegate allowTouchOutsideCanvasView:a3 forGesture:a4];
}

- (BOOL)repDragGestureRecognizer:(id)a3 shouldBeginTapHoldTrackingAtScaledPoint:(CGPoint)a4
{
  if (!self->mDelegate)
  {
    return 1;
  }

  y = a4.y;
  x = a4.x;
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 1;
  }

  mDelegate = self->mDelegate;

  return [(TSDiOSCanvasViewControllerDelegate *)mDelegate canvasViewController:self shouldBeginTapHoldDragAtPoint:x, y];
}

- (id)viewForGestureRecognizer:(id)a3
{
  if (objc_opt_respondsToSelector())
  {
    mDelegate = self->mDelegate;

    return [(TSDiOSCanvasViewControllerDelegate *)mDelegate viewForGestureRecognizer:a3];
  }

  else
  {

    return [(TSDiOSCanvasViewController *)self canvasView];
  }
}

- (CGRect)targetRectForEditMenu:(id)a3
{
  v76 = *MEMORY[0x277D85DE8];
  x = *MEMORY[0x277CBF398];
  y = *(MEMORY[0x277CBF398] + 8);
  width = *(MEMORY[0x277CBF398] + 16);
  height = *(MEMORY[0x277CBF398] + 24);
  v69 = 0u;
  v70 = 0u;
  v71 = 0u;
  v72 = 0u;
  v9 = [-[TSDEditorController currentEditors](-[TSDInteractiveCanvasController editorController](-[TSDiOSCanvasViewController interactiveCanvasController](self "interactiveCanvasController")];
  v10 = [v9 countByEnumeratingWithState:&v69 objects:v75 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v70;
LABEL_3:
    v13 = 0;
    while (1)
    {
      if (*v70 != v12)
      {
        objc_enumerationMutation(v9);
      }

      v14 = *(*(&v69 + 1) + 8 * v13);
      if (objc_opt_respondsToSelector())
      {
        [v14 targetRectForEditMenu];
        x = v77.origin.x;
        y = v77.origin.y;
        width = v77.size.width;
        height = v77.size.height;
        if (!CGRectIsNull(v77))
        {
          break;
        }
      }

      if (v11 == ++v13)
      {
        v11 = [v9 countByEnumeratingWithState:&v69 objects:v75 count:16];
        if (v11)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  v78.origin.x = x;
  v78.origin.y = y;
  v78.size.width = width;
  v78.size.height = height;
  if (CGRectIsNull(v78))
  {
    v15 = [a3 infos];
    if ([v15 count])
    {
      [(TSDInteractiveCanvasController *)self->mICC layoutIfNeeded];
      if ([v15 count] == 1)
      {
        v16 = -[TSDInteractiveCanvasController repForInfo:](self->mICC, "repForInfo:", [v15 anyObject]);
        [v16 targetRectForEditMenu];
        v17 = v79.origin.x;
        v18 = v79.origin.y;
        v19 = v79.size.width;
        v20 = v79.size.height;
        if (!CGRectIsNull(v79))
        {
          if (v16)
          {
            [v16 transformToConvertNaturalToLayerRelative];
          }

          else
          {
            memset(&v68, 0, sizeof(v68));
          }

          v80.origin.x = v17;
          v80.origin.y = v18;
          v80.size.width = v19;
          v80.size.height = v20;
          v81 = CGRectApplyAffineTransform(v80, &v68);
          v31 = v81.origin.x;
          v32 = v81.origin.y;
          width = v81.size.width;
          height = v81.size.height;
          [v16 layerFrameInScaledCanvas];
          x = TSDAddPoints(v31, v32, v33);
          y = v34;
        }
      }

      v82.origin.x = x;
      v82.origin.y = y;
      v82.size.width = width;
      v82.size.height = height;
      if (CGRectIsNull(v82))
      {
        v66 = 0u;
        v67 = 0u;
        v64 = 0u;
        v65 = 0u;
        v35 = [v15 countByEnumeratingWithState:&v64 objects:v74 count:16];
        if (v35)
        {
          v36 = v35;
          v37 = *v65;
          do
          {
            v38 = 0;
            do
            {
              if (*v65 != v37)
              {
                objc_enumerationMutation(v15);
              }

              v39 = *(*(&v64 + 1) + 8 * v38);
              v60 = 0u;
              v61 = 0u;
              v62 = 0u;
              v63 = 0u;
              v40 = [(TSDInteractiveCanvasController *)self->mICC repsForInfo:v39, 0];
              v41 = [v40 countByEnumeratingWithState:&v60 objects:v73 count:16];
              if (v41)
              {
                v42 = v41;
                v43 = *v61;
                do
                {
                  v44 = 0;
                  do
                  {
                    if (*v61 != v43)
                    {
                      objc_enumerationMutation(v40);
                    }

                    [objc_msgSend(*(*(&v60 + 1) + 8 * v44) "layout")];
                    [(TSDInteractiveCanvasController *)self->mICC convertUnscaledToBoundsRect:?];
                    v46 = v45;
                    v48 = v47;
                    v50 = v49;
                    v52 = v51;
                    v83.origin.x = x;
                    v83.origin.y = y;
                    v83.size.width = width;
                    v83.size.height = height;
                    if (CGRectIsNull(v83))
                    {
                      height = v52;
                      width = v50;
                      y = v48;
                      x = v46;
                    }

                    else
                    {
                      x = TSDUnionRect(x, y, width, height, v46, v48, v50, v52);
                      y = v53;
                      width = v54;
                      height = v55;
                    }

                    ++v44;
                  }

                  while (v42 != v44);
                  v42 = [v40 countByEnumeratingWithState:&v60 objects:v73 count:16];
                }

                while (v42);
              }

              ++v38;
            }

            while (v38 != v36);
            v36 = [v15 countByEnumeratingWithState:&v64 objects:v74 count:16];
          }

          while (v36);
        }

        v84.origin.x = x;
        v84.origin.y = y;
        v84.size.width = width;
        v84.size.height = height;
        if (CGRectIsNull(v84))
        {
          x = *MEMORY[0x277CBF3A0];
          y = *(MEMORY[0x277CBF3A0] + 8);
          width = *(MEMORY[0x277CBF3A0] + 16);
          height = *(MEMORY[0x277CBF3A0] + 24);
        }
      }
    }

    else
    {
      [(UITapGestureRecognizer *)[(TSDiOSCanvasViewController *)self singleTapGestureRecognizer] locationInView:[(TSDiOSCanvasViewController *)self canvasView]];
      v23.n128_f64[0] = TSDAddPoints(v21, v22, 0.0);
      v24.n128_u64[0] = 1.0;
      v25.n128_u64[0] = 1.0;
      x = TSDRectWithOriginAndSize(v26, v23, v27, v24, v25);
      y = v28;
      width = v29;
      height = v30;
    }
  }

  v56 = x;
  v57 = y;
  v58 = width;
  v59 = height;
  result.size.height = v59;
  result.size.width = v58;
  result.origin.y = v57;
  result.origin.x = v56;
  return result;
}

- (void)showEditMenuForSelection:(id)a3
{
  v5 = [MEMORY[0x277D75718] sharedMenuController];
  if (((objc_opt_respondsToSelector() & 1) == 0 || [(TSDiOSCanvasViewControllerDelegate *)self->mDelegate allowEditMenuToAppear]) && (([(TSDTextInputResponder *)[(TSDInteractiveCanvasController *)[(TSDiOSCanvasViewController *)self interactiveCanvasController] textInputResponder] isFirstResponder]& 1) != 0 || [(TSDTextInputResponder *)[(TSDInteractiveCanvasController *)[(TSDiOSCanvasViewController *)self interactiveCanvasController] textInputResponder] canBecomeFirstResponder]&& [(TSDTextInputResponder *)[(TSDInteractiveCanvasController *)[(TSDiOSCanvasViewController *)self interactiveCanvasController] textInputResponder] becomeFirstResponder]|| ([(TSDiOSCanvasViewController *)self isFirstResponder]& 1) != 0 || [(TSDiOSCanvasViewController *)self canBecomeFirstResponder]&& [(TSDiOSCanvasViewController *)self becomeFirstResponder]))
  {
    [(TSDInteractiveCanvasController *)self->mICC visibleBoundsRect];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;
    [(TSDiOSCanvasViewController *)self targetRectForEditMenu:a3];
    v28.origin.x = v7;
    v28.origin.y = v9;
    v28.size.width = v11;
    v28.size.height = v13;
    v22 = CGRectIntersection(v21, v28);
    x = v22.origin.x;
    y = v22.origin.y;
    width = v22.size.width;
    height = v22.size.height;
    if (!CGRectEqualToRect(v22, *MEMORY[0x277CBF398]))
    {
      v18 = [MEMORY[0x277CBEB18] array];
      [(TSDiOSCanvasViewController *)self p_buildMenuItems:v18 forSelection:a3];
      [v5 setMenuItems:v18];
      [v5 setArrowDirection:0];
      if ([a3 unlockedInfoCount] > 1)
      {
        y = y + height * 0.5;
      }

      if (y <= v9 + 100.0 && height >= v13 + -100.0)
      {
        v23.origin.x = x;
        v23.origin.y = y;
        v23.size.width = width;
        v23.size.height = height;
        v24.origin.x = CGRectGetMidX(v23);
        x = v24.origin.x;
        v24.origin.y = y;
        v24.size.width = width;
        v24.size.height = height;
        MinY = CGRectGetMinY(v24);
        v25.origin.x = v7;
        v25.origin.y = v9;
        v25.size.width = v11;
        v25.size.height = v13;
        if (MinY <= CGRectGetMinY(v25) + 6.0)
        {
          v27.origin.x = v7;
          v27.origin.y = v9;
          v27.size.width = v11;
          v27.size.height = v13;
          y = CGRectGetMinY(v27) + 6.0;
        }

        else
        {
          v26.origin.x = x;
          v26.origin.y = y;
          v26.size.width = width;
          v26.size.height = height;
          y = CGRectGetMinY(v26);
        }

        width = *MEMORY[0x277CBF3A8];
        height = *(MEMORY[0x277CBF3A8] + 8);
        [v5 setArrowDirection:1];
      }

      [v5 showMenuFromView:-[TSDiOSCanvasViewController canvasView](self rect:{"canvasView"), x, y, width, height}];
      self->mContextMenuMightBeDisplayed = 1;
    }
  }
}

- (void)p_buildMenuItems:(id)a3 forSelection:(id)a4
{
  v34 = *MEMORY[0x277D85DE8];
  v7 = [objc_alloc(MEMORY[0x277D75728]) initWithTitle:objc_msgSend(TSDBundle() action:{"localizedStringForKey:value:table:", @"Cut", &stru_287D36338, @"TSDrawables", sel_cutObject_}];
  v8 = [objc_alloc(MEMORY[0x277D75728]) initWithTitle:objc_msgSend(TSDBundle() action:{"localizedStringForKey:value:table:", @"Copy", &stru_287D36338, @"TSDrawables", sel_copyObject_}];
  v9 = [objc_alloc(MEMORY[0x277D75728]) initWithTitle:objc_msgSend(TSDBundle() action:{"localizedStringForKey:value:table:", @"Paste", &stru_287D36338, @"TSDrawables", sel_pasteObject_}];
  v10 = [objc_alloc(MEMORY[0x277D75728]) initWithTitle:objc_msgSend(TSDBundle() action:{"localizedStringForKey:value:table:", @"Delete", &stru_287D36338, @"TSDrawables", sel_deleteObject_}];
  [a3 addObject:v7];
  [a3 addObject:v8];
  [a3 addObject:v9];
  [a3 addObject:v10];

  if ([a4 infoCount] == 1)
  {
    v11 = [a4 containsUnlockedKindOfClass:objc_opt_class()];
  }

  else
  {
    v11 = 0;
  }

  if ([a4 unlockedInfoCount] >= 2 && (v11 & 1) == 0)
  {
    v12 = [objc_alloc(MEMORY[0x277D75728]) initWithTitle:objc_msgSend(TSDBundle() action:{"localizedStringForKey:value:table:", @"Group", &stru_287D36338, @"TSDrawables", sel_group_}];
    [a3 addObject:v12];
  }

  if (v11)
  {
    v13 = [objc_alloc(MEMORY[0x277D75728]) initWithTitle:objc_msgSend(TSDBundle() action:{"localizedStringForKey:value:table:", @"Ungroup", &stru_287D36338, @"TSDrawables", sel_ungroup_}];
    [a3 addObject:v13];
  }

  if ([a4 infoCount] == 1)
  {
    v14 = -[TSDInteractiveCanvasController repForInfo:](self->mICC, "repForInfo:", [objc_msgSend(a4 "infos")]);
    if ([v14 isLocked])
    {
      v15 = 0;
    }

    else
    {
      [a3 addObjectsFromArray:{objc_msgSend(v14, "itemsToAddToEditMenu")}];
      v15 = 1;
    }
  }

  else
  {
    v15 = 0;
    v14 = 0;
  }

  v16 = [(TSDEditorController *)[(TSDInteractiveCanvasController *)[(TSDiOSCanvasViewController *)self interactiveCanvasController] editorController] editorForEditAction:sel_addOrShowComment_ withSender:0];
  if ((objc_opt_respondsToSelector() & 1) != 0 && [v16 canAddOrShowComment])
  {
    v17 = [objc_alloc(MEMORY[0x277D75728]) initWithTitle:objc_msgSend(TSDBundle() action:{"localizedStringForKey:value:table:", @"Comment", &stru_287D36338, @"TSDrawables", sel_addOrShowComment_}];
    [a3 addObject:v17];
  }

  v18 = [a4 unlockedInfoCount];
  if (v18 != [a4 infoCount])
  {
    v19 = [objc_alloc(MEMORY[0x277D75728]) initWithTitle:objc_msgSend(TSDBundle() action:{"localizedStringForKey:value:table:", @"Unlock", &stru_287D36338, @"TSDrawables", sel_unlock_}];
    [a3 addObject:v19];
  }

  if (v15)
  {
    v20 = [(TSDiOSCanvasViewController *)self itemsToAddToEditMenuForRep:v14];
    if (v20)
    {
      v21 = v20;
      if ([v20 count])
      {
        [a3 addObjectsFromArray:v21];
      }
    }
  }

  if ([(TSDCanvasEditorHelper *)[(TSDCanvasEditor *)[(TSDInteractiveCanvasController *)self->mICC canvasEditor] canvasEditorHelper] canPerformMaskWithShapeWithSender:0])
  {
    v22 = [objc_alloc(MEMORY[0x277D75728]) initWithTitle:objc_msgSend(TSDBundle() action:{"localizedStringForKey:value:table:", @"Mask with Shape", &stru_287D36338, @"TSDrawables", sel_maskWithShape_}];
    [a3 addObject:v22];
  }

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v23 = [(TSDEditorController *)[(TSDInteractiveCanvasController *)[(TSDiOSCanvasViewController *)self interactiveCanvasController] editorController] currentEditors];
  v24 = [v23 countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v24)
  {
    v25 = v24;
    v26 = *v30;
    do
    {
      v27 = 0;
      do
      {
        if (*v30 != v26)
        {
          objc_enumerationMutation(v23);
        }

        v28 = *(*(&v29 + 1) + 8 * v27);
        if (objc_opt_respondsToSelector())
        {
          [v28 addContextualMenuItemsToArray:a3];
        }

        ++v27;
      }

      while (v25 != v27);
      v25 = [v23 countByEnumeratingWithState:&v29 objects:v33 count:16];
    }

    while (v25);
  }
}

- (void)showEditMenu:(id)a3
{
  v5 = [(TSDInteractiveCanvasController *)self->mICC canvasEditor];
  v6 = v5;
  if (a3)
  {
    v7 = [(TSDCanvasSelection *)[(TSDCanvasEditor *)v5 canvasSelection] infos];
  }

  else
  {
    v7 = 0;
  }

  [(TSDCanvasEditor *)v6 canvasSelectionWithInfos:v7];
  v8 = TSUProtocolCast();

  [(TSDiOSCanvasViewController *)self showEditMenuForSelection:v8];
}

- (void)toggleEditMenuForCurrentSelection
{
  if (self->mContextMenuMightBeDisplayed)
  {

    [(TSDiOSCanvasViewController *)self hideEditMenu];
  }

  else
  {
    v3 = [(TSDCanvasEditor *)[(TSDInteractiveCanvasController *)self->mICC canvasEditor] canvasSelection];

    [(TSDiOSCanvasViewController *)self showEditMenuForSelection:v3];
  }
}

- (id)extraMenuItems
{
  v2 = [(TSDEditorController *)[(TSDInteractiveCanvasController *)[(TSDiOSCanvasViewController *)self interactiveCanvasController] editorController] textInputEditor];
  if (objc_opt_respondsToSelector())
  {
    v3 = [v2 extraMenuItems];
  }

  else
  {
    v3 = 0;
  }

  if ([v3 count])
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4
{
  if ([(TSDInteractiveCanvasController *)self->mICC isInDynamicOperation])
  {
    return 0;
  }

  mICC = self->mICC;

  return [(TSDInteractiveCanvasController *)mICC canPerformInteractiveAction:a3 withSender:a4];
}

- (void)setContextMenuMightBeDisplayed:(BOOL)a3
{
  if (!a3 && [objc_msgSend(MEMORY[0x277D75718] "sharedMenuController")])
  {
    [(TSDiOSCanvasViewController *)self hideEditMenu];
  }

  self->mContextMenuMightBeDisplayed = a3;
}

- (void)cut:(id)a3
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [(TSDiOSCanvasViewController *)self hideEditMenu];
  }

  mICC = self->mICC;

  [(TSDInteractiveCanvasController *)mICC makeEditorPerformAction:a2 withSender:a3];
}

- (void)unlock:(id)a3
{
  [(TSDInteractiveCanvasController *)[(TSDiOSCanvasViewController *)self interactiveCanvasController] makeEditorPerformAction:a2 withSender:a3];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [(TSDInteractiveCanvasController *)[(TSDiOSCanvasViewController *)self interactiveCanvasController] canvasEditor];
    v5 = [(TSDCanvasEditor *)v4 canvasSelectionWithInfos:[(TSDCanvasSelection *)[(TSDCanvasEditor *)v4 canvasSelection] infos]];

    [(TSDiOSCanvasViewController *)self showEditMenuForSelection:v5];
  }
}

- (void)stopScrolling
{
  if (([MEMORY[0x277CCACC8] isMainThread] & 1) == 0)
  {
    v3 = [MEMORY[0x277D6C290] currentHandler];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDiOSCanvasViewController stopScrolling]"];
    [v3 handleFailureInFunction:v4 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDiOSCanvasViewController.m"), 1171, @"This operation must only be performed on the main thread."}];
  }

  v5 = [(TSDCanvasView *)[(TSDiOSCanvasViewController *)self canvasView] enclosingScrollView];
  [(TSKScrollView *)v5 contentOffset];

  [(TSKScrollView *)v5 setContentOffset:0 animated:?];
}

- (void)forceStopScrolling
{
  if (([MEMORY[0x277CCACC8] isMainThread] & 1) == 0)
  {
    v3 = [MEMORY[0x277D6C290] currentHandler];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDiOSCanvasViewController forceStopScrolling]"];
    [v3 handleFailureInFunction:v4 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDiOSCanvasViewController.m"), 1181, @"This operation must only be performed on the main thread."}];
  }

  v5 = [(TSDCanvasView *)[(TSDiOSCanvasViewController *)self canvasView] enclosingScrollView];
  if ([(TSKScrollView *)v5 isScrollEnabled]&& [(TSDInteractiveCanvasController *)[(TSDiOSCanvasViewController *)self interactiveCanvasController] currentlyScrolling])
  {
    [(TSKScrollView *)v5 setScrollEnabled:0];
    [(TSKScrollView *)v5 setScrollEnabled:1];
    [(TSKScrollView *)v5 contentOffset];

    [(TSKScrollView *)v5 setContentOffset:0 animated:?];
  }
}

- (void)beginInspectorPanZoomModeWithSingleTapBlock:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  if (!self->mInspectorModeEnabled || (v5 = [MEMORY[0x277D6C290] currentHandler], v6 = objc_msgSend(MEMORY[0x277CCACA8], "stringWithUTF8String:", "-[TSDiOSCanvasViewController beginInspectorPanZoomModeWithSingleTapBlock:]"), objc_msgSend(v5, "handleFailureInFunction:file:lineNumber:description:", v6, objc_msgSend(MEMORY[0x277CCACA8], "stringWithUTF8String:", "/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDiOSCanvasViewController.m"), 1199, @"attempting to re-enable inspector pan/zoom mode"), !self->mInspectorModeEnabled))
  {
    self->mInspectorModeEnabled = 1;
    if (self->mInspectorSingleTapBlock)
    {
      v7 = [MEMORY[0x277D6C290] currentHandler];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDiOSCanvasViewController beginInspectorPanZoomModeWithSingleTapBlock:]"];
      [v7 handleFailureInFunction:v8 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDiOSCanvasViewController.m"), 1203, @"expected nil value for '%s'", "mInspectorSingleTapBlock"}];
    }

    self->mInspectorSingleTapBlock = [a3 copy];
    if (!self->mInspectorGestureRecognizersToReenable)
    {
      self->mInspectorGestureRecognizersToReenable = objc_alloc_init(MEMORY[0x277CBEB18]);
    }

    v9 = [MEMORY[0x277CBEB18] array];
    [(TSDiOSCanvasViewController *)self addInspectorPanZoomModeGRsToArray:v9];
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v10 = [(TSDCanvasView *)[(TSDiOSCanvasViewController *)self canvasView] gestureRecognizers];
    v11 = [v10 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v17;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v17 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v16 + 1) + 8 * i);
          if (([v9 containsObject:v15] & 1) == 0)
          {
            if ([v15 isEnabled])
            {
              [(NSMutableArray *)self->mInspectorGestureRecognizersToReenable addObject:v15];
              [v15 setEnabled:0];
            }
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v12);
    }
  }
}

- (void)endInspectorPanZoomMode
{
  v15 = *MEMORY[0x277D85DE8];
  if (self->mInspectorModeEnabled || (v3 = [MEMORY[0x277D6C290] currentHandler], v4 = objc_msgSend(MEMORY[0x277CCACA8], "stringWithUTF8String:", "-[TSDiOSCanvasViewController endInspectorPanZoomMode]"), objc_msgSend(v3, "handleFailureInFunction:file:lineNumber:description:", v4, objc_msgSend(MEMORY[0x277CCACA8], "stringWithUTF8String:", "/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDiOSCanvasViewController.m"), 1225, @"attempting to re-disable inspector pan/zoom mode"), self->mInspectorModeEnabled))
  {
    self->mInspectorModeEnabled = 0;
    v10 = 0u;
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    mInspectorGestureRecognizersToReenable = self->mInspectorGestureRecognizersToReenable;
    v6 = [(NSMutableArray *)mInspectorGestureRecognizersToReenable countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v11;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v11 != v8)
          {
            objc_enumerationMutation(mInspectorGestureRecognizersToReenable);
          }

          [*(*(&v10 + 1) + 8 * i) setEnabled:1];
        }

        v7 = [(NSMutableArray *)mInspectorGestureRecognizersToReenable countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v7);
    }

    [(NSMutableArray *)self->mInspectorGestureRecognizersToReenable removeAllObjects];

    self->mInspectorSingleTapBlock = 0;
    if ([-[TSDEditorController textInputEditor](-[TSDInteractiveCanvasController editorController](-[TSDiOSCanvasViewController interactiveCanvasController](self "interactiveCanvasController")])
    {
      [(TSDInteractiveCanvasController *)[(TSDiOSCanvasViewController *)self interactiveCanvasController] setShouldAutoscrollToSelectionAfterLayout:1];
    }
  }
}

- (void)addInspectorPanZoomModeGRsToArray:(id)a3
{
  [a3 addObject:{-[TSDiOSCanvasViewController zoomGestureRecognizer](self, "zoomGestureRecognizer")}];
  v5 = [(TSDiOSCanvasViewController *)self singleTapGestureRecognizer];

  [a3 addObject:v5];
}

- (void)p_handleSingleTapGesture:(id)a3
{
  objc_opt_class();
  v4 = TSUDynamicCast();
  if (v4)
  {
    v5 = v4;
    if ([v4 state] != 4)
    {
      mICC = self->mICC;
      [v5 locationInView:{-[TSDiOSCanvasViewController canvasView](self, "canvasView")}];
      [(TSDInteractiveCanvasController *)mICC convertBoundsToUnscaledPoint:?];
      v8 = v7;
      v10 = v9;
      if (![(TSDiOSCanvasViewController *)self handleSingleTapAtPoint:v5 withRecognizer:?])
      {
        v11 = self->mICC;

        [(TSDInteractiveCanvasController *)v11 tappedCanvasBackgroundAtPoint:v8, v10];
      }
    }
  }
}

- (void)p_zoomWithGesture:(id)a3
{
  v5 = [a3 state];
  if (v5 > 2)
  {
    if (v5 != 3)
    {
      if (v5 == 4)
      {
        [-[TSKScrollView panGestureRecognizer](-[TSDCanvasView enclosingScrollView](-[TSDiOSCanvasViewController canvasView](self "canvasView")];
      }

LABEL_8:
      v6 = 0;
      v7 = 3;
      goto LABEL_13;
    }

    [-[TSKScrollView panGestureRecognizer](-[TSDCanvasView enclosingScrollView](-[TSDiOSCanvasViewController canvasView](self "canvasView")];
    v6 = 0;
    v7 = 2;
  }

  else
  {
    if (v5 != 1)
    {
      if (v5 == 2)
      {
        v6 = 1;
        v7 = 1;
        goto LABEL_13;
      }

      goto LABEL_8;
    }

    if (self->mCanvasZoomTracker)
    {
      v8 = [MEMORY[0x277D6C290] currentHandler];
      v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDiOSCanvasViewController p_zoomWithGesture:]"];
      [v8 handleFailureInFunction:v9 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDiOSCanvasViewController.m"), 1277, @"expected nil value for '%s'", "mCanvasZoomTracker"}];
    }

    [-[TSKScrollView panGestureRecognizer](-[TSDCanvasView enclosingScrollView](-[TSDiOSCanvasViewController canvasView](self "canvasView")];
    v6 = 0;
    v7 = 0;
  }

LABEL_13:
  if (!self->mCanvasZoomTracker)
  {
    v10 = [[TSDCanvasZoomTracker alloc] initWithCanvasLayer:[(TSDiOSCanvasViewController *)self canvasLayer]];
    self->mCanvasZoomTracker = v10;
    [(TSDCanvasZoomTracker *)v10 setDelegate:self];
  }

  [a3 locationInView:{-[TSDiOSCanvasViewController canvasView](self, "canvasView")}];
  v12 = v11;
  v14 = v13;
  if (objc_opt_respondsToSelector())
  {
    [(TSDCanvasLayer *)[(TSDiOSCanvasViewController *)self canvasLayer] setShowsScaleFeedback:[(TSDiOSCanvasViewControllerDelegate *)self->mDelegate canvasViewControllerShouldShowScaleFeedback:self]];
  }

  if (!v6 || [a3 numberOfTouches] == 2)
  {
    mCanvasZoomTracker = self->mCanvasZoomTracker;
    [a3 scale];
    v17 = v16;
    [a3 velocity];

    [(TSDCanvasZoomTracker *)mCanvasZoomTracker zoomWithScale:v7 velocity:v17 locationInView:v18 phase:v12, v14];
  }
}

- (void)canvasZoomTracker:(id)a3 willBeginViewScaleFeedbackWithFastPinch:(BOOL)a4
{
  v6 = [(TSDiOSCanvasViewController *)self canvasView];
  v7 = [(TSDiOSCanvasViewController *)self zoomGestureRecognizer];
  if (a4 || (v8 = v7, [(UIPinchGestureRecognizer *)v7 numberOfTouches]!= 2))
  {
    v17 = [(TSDCanvasView *)v6 enclosingScrollView];
    [(TSKScrollView *)v17 center];
    [-[TSKScrollView superview](v17 "superview")];
    v14 = v20;
    v16 = v21;
    v12 = v21;
    v10 = v20;
  }

  else
  {
    [(UIPinchGestureRecognizer *)v8 locationOfTouch:0 inView:v6];
    v10 = v9;
    v12 = v11;
    [(UIPinchGestureRecognizer *)v8 locationOfTouch:1 inView:v6];
    v14 = v13;
    v16 = v15;
  }

  v22 = TSDAddPoints(v10, v12, v14);
  v24 = TSDMultiplyPointScalar(v22, v23, 0.5);
  v26 = v25;
  if (vabdd_f64(v10, v14) >= 40.0)
  {
    if (v10 >= v14)
    {
      v27 = v10;
    }

    else
    {
      v27 = v14;
    }

    if (v10 >= v14)
    {
      v28 = v12;
    }

    else
    {
      v28 = v16;
    }

    if (v10 >= v14)
    {
      v29 = v14;
    }

    else
    {
      v29 = v10;
    }

    v30 = TSDSubtractPoints(v27, v28, v29);
    v32 = TSDAngleFromDelta(v30, v31);
    v33 = TSDDeltaFromAngle(v32 + -1.57079633);
    v35 = TSDMultiplyPointScalar(v33, v34, 120.0);
    TSDAddPoints(v24, v26, v35);
  }

  self->mLastZoomHUDLocation.x = TSDRoundedPoint();
  self->mLastZoomHUDLocation.y = v36;
}

- (void)canvasZoomTrackerWillBeginFinalZoomAnimation:(id)a3
{
  v3 = [MEMORY[0x277D75128] sharedApplication];

  [v3 beginIgnoringInteractionEvents];
}

- (void)canvasZoomTrackerDidEndFinalZoomAnimation:(id)a3
{
  v3 = [MEMORY[0x277D75128] sharedApplication];

  [v3 endIgnoringInteractionEvents];
}

- (void)canvasZoomTrackerDidFinish:(id)a3
{
  [(TSDCanvasZoomTracker *)self->mCanvasZoomTracker setDelegate:0];

  self->mCanvasZoomTracker = 0;
}

- (void)p_guidedPanWithGesture:(id)a3
{
  if ([a3 state] == 1)
  {
    if (objc_opt_respondsToSelector())
    {
      v5 = [(TSDInteractiveCanvasController *)self->mICC delegate];
      mICC = self->mICC;
      [(UIPanGestureRecognizer *)self->mGuidedPanGestureRecognizer direction];
      v7 = [(TSDInteractiveCanvasControllerDelegate *)v5 panGuideForInteractiveCanvasController:mICC withMovementDirection:?];
      if (!v7)
      {
        v8 = [MEMORY[0x277D6C290] currentHandler];
        v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDiOSCanvasViewController p_guidedPanWithGesture:]"];
        [v8 handleFailureInFunction:v9 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDiOSCanvasViewController.m"), 1427, @"invalid nil value for '%s'", "panGuide"}];
      }

      mGuidedPanController = self->mGuidedPanController;
      if (!mGuidedPanController)
      {
        mGuidedPanController = [[TSDGuidedPanController alloc] initWithInteractiveCanvasController:self->mICC];
        self->mGuidedPanController = mGuidedPanController;
      }

      [(TSDGuidedPanController *)mGuidedPanController setGuide:v7];
    }

    else
    {
      v11 = [MEMORY[0x277D6C290] currentHandler];
      v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDiOSCanvasViewController p_guidedPanWithGesture:]"];
      [v11 handleFailureInFunction:v12 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDiOSCanvasViewController.m"), 1438, @"can't handle guided pan without a guide"}];
    }
  }

  v13 = self->mGuidedPanController;

  [(TSDGuidedPanController *)v13 handlePanGesture:a3];
}

- (id)p_willPresentError:(id)a3
{
  v3 = a3;
  v4 = [a3 localizedRecoveryOptions];
  if (v4 && [v4 count] && (!objc_msgSend(v3, "recoveryAttempter") || (objc_opt_respondsToSelector() & 1) == 0 && (objc_opt_respondsToSelector() & 1) == 0))
  {
    v5 = [objc_msgSend(v3 "userInfo")];
    [v5 removeObjectForKey:*MEMORY[0x277CCA498]];
    [v5 removeObjectForKey:*MEMORY[0x277CCA480]];
    [v5 removeObjectForKey:*MEMORY[0x277CCA658]];
    v3 = [MEMORY[0x277CCA9B8] errorWithDomain:objc_msgSend(v3 code:"domain") userInfo:{objc_msgSend(v3, "code"), v5}];
  }

  return v3;
}

- (void)presentError:(id)a3 completionHandler:(id)a4
{
  v6 = [(TSDiOSCanvasViewController *)self p_willPresentError:a3];
  v7 = [objc_alloc(MEMORY[0x277D75118]) initWithError:v6];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __61__TSDiOSCanvasViewController_presentError_completionHandler___block_invoke;
  v8[3] = &unk_279D49398;
  v8[4] = v6;
  v8[5] = self;
  v8[6] = v7;
  v8[7] = a4;
  [v7 showWithCompletionHandler:v8];
}

void __61__TSDiOSCanvasViewController_presentError_completionHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) recoveryAttempter];
  if (!v4)
  {
    goto LABEL_6;
  }

  v5 = v4;
  if (objc_opt_respondsToSelector())
  {
    [v5 attemptRecoveryFromError:*(a1 + 32) optionIndex:a2 delegate:*(a1 + 40) didRecoverSelector:sel_p_didPresentErrorWithRecovery_completionHandler_ contextInfo:{objc_msgSend(*(a1 + 56), "copy")}];
    goto LABEL_9;
  }

  if (objc_opt_respondsToSelector())
  {
    v6 = [v5 attemptRecoveryFromError:*(a1 + 32) optionIndex:a2];
  }

  else
  {
LABEL_6:
    v6 = 0;
  }

  v7 = *(a1 + 56);
  if (v7)
  {
    (*(v7 + 16))(v7, v6);
  }

LABEL_9:
  v8 = *(a1 + 48);
}

- (void)p_didPresentErrorWithRecovery:(BOOL)a3 completionHandler:(void *)a4
{
  if (a4)
  {
    (*(a4 + 2))(a4, a3);
  }
}

- (void)presentErrors:(id)a3 withLocalizedDescription:(id)a4 completionHandler:(id)a5
{
  v8 = [a3 count];
  v9 = objc_alloc(MEMORY[0x277D75118]);
  if (v8 == 1)
  {
    v10 = [v9 initWithError:{objc_msgSend(a3, "objectAtIndex:", 0)}];
  }

  else
  {
    v10 = [v9 initWithTitle:a4 message:0 delegate:0 cancelButtonTitle:objc_msgSend(TSDBundle() otherButtonTitles:{"localizedStringForKey:value:table:", @"OK", &stru_287D36338, @"TSDrawables", 0}];
  }

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __87__TSDiOSCanvasViewController_presentErrors_withLocalizedDescription_completionHandler___block_invoke;
  v11[3] = &unk_279D493C0;
  v11[4] = v10;
  v11[5] = a5;
  [v10 showWithCompletionHandler:v11];
}

void __87__TSDiOSCanvasViewController_presentErrors_withLocalizedDescription_completionHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    (*(v2 + 16))();
  }

  v3 = *(a1 + 32);
}

- (void)beginModalOperationWithLocalizedMessage:(id)a3 progress:(id)a4 cancelHandler:(id)a5
{
  if (([MEMORY[0x277CCACC8] isMainThread] & 1) == 0)
  {
    v5 = [MEMORY[0x277D6C290] currentHandler];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDiOSCanvasViewController beginModalOperationWithLocalizedMessage:progress:cancelHandler:]"];
    [v5 handleFailureInFunction:v6 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDiOSCanvasViewController.m"), 1553, @"Modal operations must be started on the main thread, "}];
  }

  v7 = [MEMORY[0x277D75128] sharedApplication];

  [v7 beginIgnoringInteractionEvents];
}

- (void)endModalOperation
{
  if (([MEMORY[0x277CCACC8] isMainThread] & 1) == 0)
  {
    v2 = [MEMORY[0x277D6C290] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDiOSCanvasViewController endModalOperation]"];
    [v2 handleFailureInFunction:v3 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDiOSCanvasViewController.m"), 1565, @"Modal operations must be ended on the main thread, "}];
  }

  v4 = [MEMORY[0x277D75128] sharedApplication];

  [v4 endIgnoringInteractionEvents];
}

- (void)presentMovieCompatibilityAlertForUnplayableMovieURLs:(id)a3 completionHandler:(id)a4
{
  if (a4)
  {
    (*(a4 + 2))(a4, 0);
  }
}

- (void)presentMovieCompatibilityAlertForUnplayableMoviePasteboardDrawableProviders:(id)a3 completionHandler:(id)a4
{
  if (a4)
  {
    (*(a4 + 2))(a4, 0);
  }
}

- (id)topLevelReps
{
  v2 = [(TSDInteractiveCanvasController *)[(TSDiOSCanvasViewController *)self interactiveCanvasController] canvas];

  return [(TSDCanvas *)v2 topLevelReps];
}

@end