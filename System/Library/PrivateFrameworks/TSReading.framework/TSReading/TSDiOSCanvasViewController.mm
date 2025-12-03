@interface TSDiOSCanvasViewController
- ($F5A7A7B85D6989FBEC7A5CF4432B5A5E)centerPlusMovementContentPlacement;
- ($F5A7A7B85D6989FBEC7A5CF4432B5A5E)touchContentPlacement;
- (BOOL)allowTouchOutsideCanvasView:(id)view forGesture:(id)gesture;
- (BOOL)becomeFirstResponder;
- (BOOL)canPerformAction:(SEL)action withSender:(id)sender;
- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch;
- (BOOL)gestureRecognizer:(id)recognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)gestureRecognizer;
- (BOOL)gestureRecognizerShouldBegin:(id)begin;
- (BOOL)handleDoubleTapAtPoint:(CGPoint)point withRecognizer:(id)recognizer;
- (BOOL)handleSingleTapAtPoint:(CGPoint)point withRecognizer:(id)recognizer;
- (BOOL)p_shouldUseWideGamut;
- (BOOL)repDragGestureRecognizer:(id)recognizer shouldBeginTapHoldTrackingAtScaledPoint:(CGPoint)point;
- (BOOL)respondsToSelector:(SEL)selector;
- (BOOL)shouldIgnoreTextGestures;
- (CALayer)clippingLayer;
- (CALayer)layer;
- (CGRect)targetRectForEditMenu:(id)menu;
- (TSDCanvasLayer)canvasLayer;
- (TSDCanvasView)canvasView;
- (id)extraMenuItems;
- (id)hitKnobWithTouch:(id)touch returningRep:(id *)rep;
- (id)hitRepWithTouch:(id)touch;
- (id)methodSignatureForSelector:(SEL)selector;
- (id)p_willPresentError:(id)error;
- (id)topLevelReps;
- (id)viewForGestureRecognizer:(id)recognizer;
- (void)addInspectorPanZoomModeGRsToArray:(id)array;
- (void)beginInspectorPanZoomModeWithSingleTapBlock:(id)block;
- (void)beginModalOperationWithLocalizedMessage:(id)message progress:(id)progress cancelHandler:(id)handler;
- (void)canvasZoomTracker:(id)tracker willBeginViewScaleFeedbackWithFastPinch:(BOOL)pinch;
- (void)canvasZoomTrackerDidEndFinalZoomAnimation:(id)animation;
- (void)canvasZoomTrackerDidFinish:(id)finish;
- (void)canvasZoomTrackerWillBeginFinalZoomAnimation:(id)animation;
- (void)cut:(id)cut;
- (void)dealloc;
- (void)endInspectorPanZoomMode;
- (void)endModalOperation;
- (void)forceStopScrolling;
- (void)forwardInvocation:(id)invocation;
- (void)handleDoubleTap:(id)tap;
- (void)i_updateZoomGestureRecognizer;
- (void)loadView;
- (void)p_allTouchesDone:(id)done;
- (void)p_buildMenuItems:(id)items forSelection:(id)selection;
- (void)p_didPresentErrorWithRecovery:(BOOL)recovery completionHandler:(void *)handler;
- (void)p_guidedPanWithGesture:(id)gesture;
- (void)p_handleSingleTapGesture:(id)gesture;
- (void)p_handleTapForEditMenu:(id)menu;
- (void)p_updateWideGamut;
- (void)p_zoomWithGesture:(id)gesture;
- (void)presentError:(id)error completionHandler:(id)handler;
- (void)presentErrors:(id)errors withLocalizedDescription:(id)description completionHandler:(id)handler;
- (void)presentMovieCompatibilityAlertForUnplayableMoviePasteboardDrawableProviders:(id)providers completionHandler:(id)handler;
- (void)presentMovieCompatibilityAlertForUnplayableMovieURLs:(id)ls completionHandler:(id)handler;
- (void)resetGesturesForContextSwitch;
- (void)setContextMenuMightBeDisplayed:(BOOL)displayed;
- (void)setUpGestureRecognizers;
- (void)showEditMenu:(id)menu;
- (void)showEditMenuForSelection:(id)selection;
- (void)stopScrolling;
- (void)teardown;
- (void)toggleEditMenuForCurrentSelection;
- (void)unlock:(id)unlock;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
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

- (id)methodSignatureForSelector:(SEL)selector
{
  v7.receiver = self;
  v7.super_class = TSDiOSCanvasViewController;
  if ([(TSDiOSCanvasViewController *)&v7 respondsToSelector:?])
  {
    v6.receiver = self;
    v6.super_class = TSDiOSCanvasViewController;
    return [(TSDiOSCanvasViewController *)&v6 methodSignatureForSelector:selector];
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

- (BOOL)respondsToSelector:(SEL)selector
{
  v7.receiver = self;
  v7.super_class = TSDiOSCanvasViewController;
  if ([(TSDiOSCanvasViewController *)&v7 respondsToSelector:?])
  {
    LOBYTE(v5) = 1;
  }

  else
  {
    v5 = [TSDInteractiveCanvasController selectorIsActionMethod:selector];
    if (v5)
    {
      [(TSDiOSCanvasViewController *)self interactiveCanvasController];
      LOBYTE(v5) = objc_opt_respondsToSelector();
    }
  }

  return v5 & 1;
}

- (void)forwardInvocation:(id)invocation
{
  interactiveCanvasController = [(TSDiOSCanvasViewController *)self interactiveCanvasController];

  [invocation invokeWithTarget:interactiveCanvasController];
}

- (void)dealloc
{
  if (!self->mHasBeenTornDown)
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDiOSCanvasViewController dealloc]"];
    [currentHandler handleFailureInFunction:v4 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDiOSCanvasViewController.m"), 151, @"CVC should have been torn down before dealloc"}];
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
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDiOSCanvasViewController teardown]"];
    [currentHandler handleFailureInFunction:v4 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDiOSCanvasViewController.m"), 183, @"subviews of cvc %@ not torn down: %@", self, -[TSDCanvasSubviewsController repChildViews](self->mSubviewsController, "repChildViews")}];
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
  canvasView = [(TSDiOSCanvasViewController *)self canvasView];
  if (canvasView)
  {
    v4 = canvasView;
    self->mSubviewsController = [[TSDCanvasSubviewsController alloc] initWithLayerAndSubviewHost:self];
    [(TSDiOSCanvasViewController *)self setWantsFullScreenLayout:1];
    if (!self->mICC)
    {
      currentHandler = [MEMORY[0x277D6C290] currentHandler];
      v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDiOSCanvasViewController viewDidLoad]"];
      [currentHandler handleFailureInFunction:v6 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDiOSCanvasViewController.m"), 211, @"invalid nil value for '%s'", "mICC"}];
    }

    [(TSDInteractiveCanvasController *)[(TSDiOSCanvasViewController *)self interactiveCanvasController] viewScale];
    v8 = v7;
    [(TSDCanvasView *)v4 setController:self->mICC];
    [(TSDCanvas *)[(TSDInteractiveCanvasController *)self->mICC canvas] setViewScale:v8];
    canvas = [(TSDInteractiveCanvasController *)self->mICC canvas];
    TSUScreenScale();
    [(TSDCanvas *)canvas i_setContentsScale:?];
    [(TSDCanvas *)[(TSDInteractiveCanvasController *)self->mICC canvas] i_setCanvasIsWideGamut:[(TSDiOSCanvasViewController *)self p_shouldUseWideGamut]];
    [(TSDCanvasView *)v4 setMultipleTouchEnabled:1];
    [(TSDCanvasView *)v4 setExclusiveTouch:1];
    [(TSDCanvasView *)v4 setClipsToBounds:1];
    [(TSDCanvasView *)v4 setClearsContextBeforeDrawing:0];
    enclosingScrollView = [(TSDCanvasView *)v4 enclosingScrollView];
    if (enclosingScrollView)
    {
      v11 = enclosingScrollView;
      if (![(TSKScrollView *)enclosingScrollView delegate])
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
    currentHandler2 = [MEMORY[0x277D6C290] currentHandler];
    v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDiOSCanvasViewController viewDidLoad]"];
    [currentHandler2 handleFailureInFunction:v13 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDiOSCanvasViewController.m"), 199, @"invalid nil value for '%s'", "canvasView"}];
  }
}

- (BOOL)p_shouldUseWideGamut
{
  traitCollection = [(TSDiOSCanvasViewController *)self traitCollection];
  if (!traitCollection || (displayGamut = [traitCollection displayGamut], displayGamut == -1))
  {
    v5 = [objc_msgSend(-[TSDiOSCanvasViewController view](self "view")];
    if (v5)
    {
      displayGamut = [v5 displayGamut];
    }

    else
    {
      displayGamut = -1;
    }
  }

  return displayGamut == 1 || displayGamut == -1;
}

- (void)p_updateWideGamut
{
  canvas = [(TSDInteractiveCanvasController *)self->mICC canvas];
  p_shouldUseWideGamut = [(TSDiOSCanvasViewController *)self p_shouldUseWideGamut];
  if (p_shouldUseWideGamut != [(TSDCanvas *)canvas canvasIsWideGamut])
  {
    [(TSDCanvas *)canvas i_setCanvasIsWideGamut:p_shouldUseWideGamut];
    mICC = self->mICC;

    [(TSDInteractiveCanvasController *)mICC i_canvasWideGamutValueDidChange];
  }
}

- (void)viewWillAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = TSDiOSCanvasViewController;
  [(TSDiOSCanvasViewController *)&v4 viewWillAppear:appear];
  [(TSDiOSCanvasViewController *)self p_updateWideGamut];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  if ([(TSDInteractiveCanvasController *)[(TSDiOSCanvasViewController *)self interactiveCanvasController] currentlyScrolling])
  {
    [(TSDiOSCanvasViewController *)self forceStopScrolling];
  }

  v5.receiver = self;
  v5.super_class = TSDiOSCanvasViewController;
  [(TSDiOSCanvasViewController *)&v5 viewWillDisappear:disappearCopy];
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
  view = [(TSDiOSCanvasViewController *)self view];

  return [view layer];
}

- (CALayer)clippingLayer
{
  enclosingScrollView = [(TSDCanvasView *)[(TSDiOSCanvasViewController *)self canvasView] enclosingScrollView];

  return [(TSKScrollView *)enclosingScrollView layer];
}

- (id)hitRepWithTouch:(id)touch
{
  if ([(TSDInteractiveCanvasController *)[(TSDiOSCanvasViewController *)self interactiveCanvasController] allowLayoutAndRenderOnThread]&& [(TSDInteractiveCanvasController *)[(TSDiOSCanvasViewController *)self interactiveCanvasController] currentlyScrolling])
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDiOSCanvasViewController hitRepWithTouch:]"];
    [currentHandler handleFailureInFunction:v6 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDiOSCanvasViewController.m"), 350, @"unsafe to find hit reps during scroll if we layout and render on a thread during scroll"}];
  }

  if (touch)
  {
    [touch locationInView:{-[TSDiOSCanvasViewController canvasView](self, "canvasView")}];
    [(TSDInteractiveCanvasController *)[(TSDiOSCanvasViewController *)self interactiveCanvasController] convertBoundsToUnscaledPoint:v7, v8];
    v10 = v9;
    v12 = v11;
    interactiveCanvasController = [(TSDiOSCanvasViewController *)self interactiveCanvasController];

    return [(TSDInteractiveCanvasController *)interactiveCanvasController hitRep:v10, v12];
  }

  else
  {
    currentHandler2 = [MEMORY[0x277D6C290] currentHandler];
    v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDiOSCanvasViewController hitRepWithTouch:]"];
    [currentHandler2 handleFailureInFunction:v16 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDiOSCanvasViewController.m"), 351, @"invalid nil value for '%s'", "touch"}];
    return 0;
  }
}

- (id)hitKnobWithTouch:(id)touch returningRep:(id *)rep
{
  if (touch)
  {
    [touch locationInView:{-[TSDiOSCanvasViewController canvasView](self, "canvasView")}];
    [(TSDInteractiveCanvasController *)[(TSDiOSCanvasViewController *)self interactiveCanvasController] convertBoundsToUnscaledPoint:v6, v7];
    v9 = v8;
    v11 = v10;
    interactiveCanvasController = [(TSDiOSCanvasViewController *)self interactiveCanvasController];

    return [(TSDInteractiveCanvasController *)interactiveCanvasController hitKnobAtPoint:rep returningRep:v9, v11];
  }

  else
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDiOSCanvasViewController hitKnobWithTouch:returningRep:]"];
    [currentHandler handleFailureInFunction:v15 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDiOSCanvasViewController.m"), 366, @"invalid nil value for '%s'", "touch"}];
    if (rep)
    {
      *rep = 0;
    }

    return 0;
  }
}

- (BOOL)gestureRecognizerShouldBegin:(id)begin
{
  if (self->mGuidedPanGestureRecognizer == begin)
  {
    [(TSDInteractiveCanvasController *)self->mICC delegate];
    if (objc_opt_respondsToSelector())
    {
      delegate = [(TSDInteractiveCanvasController *)self->mICC delegate];
      mICC = self->mICC;
      [(UIPanGestureRecognizer *)self->mGuidedPanGestureRecognizer direction];

      return [(TSDInteractiveCanvasControllerDelegate *)delegate interactiveCanvasControllerShouldUseGuidedPan:mICC withMovementDirection:?];
    }

    else
    {
      return 0;
    }
  }

  else if ([(TSDiOSCanvasViewController *)self zoomGestureRecognizer]== begin)
  {
    return [(TSKScrollView *)[(TSDCanvasView *)[(TSDiOSCanvasViewController *)self canvasView] enclosingScrollView] isDragging]^ 1;
  }

  else
  {
    return 1;
  }
}

- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch
{
  if ([(TSDiOSCanvasViewController *)self zoomGestureRecognizer]== recognizer || self->mGuidedPanGestureRecognizer == recognizer)
  {
    return 1;
  }

  canvasView = [(TSDiOSCanvasViewController *)self canvasView];
  [touch locationInView:canvasView];
  v8 = [(TSDCanvasView *)canvasView hitTest:0 withEvent:?];
  if ([(TSDiOSCanvasViewController *)self editMenuTapGestureRecognizer]== recognizer)
  {
    self->mContextMenuMightBeDisplayed = [objc_msgSend(MEMORY[0x277D75718] "sharedMenuController")];
  }

  return v8 == canvasView;
}

- (void)setUpGestureRecognizers
{
  if ((TSUSupportsTextInteraction() & 1) == 0)
  {
    canvasView = [(TSDiOSCanvasViewController *)self canvasView];
    if ([-[TSDCanvasView gestureRecognizers](canvasView "gestureRecognizers")])
    {
      currentHandler = [MEMORY[0x277D6C290] currentHandler];
      v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDiOSCanvasViewController setUpGestureRecognizers]"];
      [currentHandler handleFailureInFunction:v5 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDiOSCanvasViewController.m"), 458, @"-[TSDICC setUpGestureRecognizers] should be called only once each time the view is loaded"}];
    }

    v6 = [[TSDTapGestureRecognizer alloc] initWithTarget:self action:sel_p_handleSingleTapGesture_];
    [(TSDTapGestureRecognizer *)v6 setDelegate:self];
    [(TSDCanvasView *)canvasView addGestureRecognizer:v6];
    [(TSDiOSCanvasViewController *)self setSingleTapGestureRecognizer:v6];

    v7 = [[TSDTapGestureRecognizer alloc] initWithTarget:self action:sel_handleDoubleTap_];
    [(TSDTapGestureRecognizer *)v7 setNumberOfTapsRequired:2];
    [(TSDTapGestureRecognizer *)v7 setDelegate:self];
    [(TSDCanvasView *)canvasView addGestureRecognizer:v7];
    [(TSDiOSCanvasViewController *)self setDoubleTapGestureRecognizer:v7];

    v8 = [[TSDEditMenuTapGestureRecognizer alloc] initWithTarget:self action:sel_p_handleTapForEditMenu_];
    [(TSDEditMenuTapGestureRecognizer *)v8 setDelegate:self];
    [(TSDEditMenuTapGestureRecognizer *)v8 requireGestureRecognizerToFail:[(TSDiOSCanvasViewController *)self doubleTapGestureRecognizer]];
    [(TSDCanvasView *)canvasView addGestureRecognizer:v8];
    [(TSDiOSCanvasViewController *)self setEditMenuTapGestureRecognizer:v8];

    v9 = [[TSDKnobDragGestureRecognizer alloc] initWithInteractiveCanvasController:self->mICC];
    [(TSDKnobDragGestureRecognizer *)v9 setDelegate:self];
    [(TSDCanvasView *)canvasView addGestureRecognizer:v9];
    [(TSDiOSCanvasViewController *)self setKnobDragGestureRecognizer:v9];

    v10 = [[TSDAllTouchesDoneGestureRecognizer alloc] initWithTarget:self action:sel_p_allTouchesDone_];
    [(TSDAllTouchesDoneGestureRecognizer *)v10 setDelegate:self];
    [(TSDCanvasView *)canvasView addGestureRecognizer:v10];
    [(TSDiOSCanvasViewController *)self setAllTouchesDoneGestureRecognizer:v10];

    v11 = [(UIPinchGestureRecognizer *)[TSDCanvasZoomPinchGestureRecognizer alloc] initWithTarget:self action:sel_p_zoomWithGesture_];
    [(TSDCanvasZoomPinchGestureRecognizer *)v11 setDelegate:self];
    [(TSDCanvasZoomPinchGestureRecognizer *)v11 setAllowedTouchTypes:&unk_287DDCBA0];
    [(TSDCanvasView *)canvasView addGestureRecognizer:v11];
    [(TSDiOSCanvasViewController *)self setZoomGestureRecognizer:v11];

    [(TSDiOSCanvasViewController *)self i_updateZoomGestureRecognizer];
    v12 = [[TSDPreventScrollGestureRecognizer alloc] initWithInteractiveCanvasController:self->mICC];
    [(TSDPreventScrollGestureRecognizer *)v12 setDelegate:self];
    [(TSDCanvasView *)canvasView addGestureRecognizer:v12];

    self->mPreventScrollGestureRecognizer = v12;
    v13 = [objc_alloc(MEMORY[0x277D757F8]) initWithTarget:self action:sel_p_guidedPanWithGesture_];
    [(UIPanGestureRecognizer *)v13 setDelegate:self];
    [(TSDCanvasView *)canvasView addGestureRecognizer:v13];

    self->mGuidedPanGestureRecognizer = v13;
    panGestureRecognizer = [(TSKScrollView *)[(TSDCanvasView *)[(TSDiOSCanvasViewController *)self canvasView] enclosingScrollView] panGestureRecognizer];

    [panGestureRecognizer requireGestureRecognizerToFail:v13];
  }
}

- (void)resetGesturesForContextSwitch
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  view = [-[TSDiOSCanvasViewController view](self view];
  v4 = [view countByEnumeratingWithState:&v9 objects:v13 count:16];
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
          objc_enumerationMutation(view);
        }

        v8 = *(*(&v9 + 1) + 8 * i);
        if ([v8 isEnabled])
        {
          [v8 setEnabled:0];
          [v8 setEnabled:1];
        }
      }

      v5 = [view countByEnumeratingWithState:&v9 objects:v13 count:16];
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
  allowsPinchZoom = [(TSDCanvasLayer *)[(TSDiOSCanvasViewController *)self canvasLayer] allowsPinchZoom];
  zoomGestureRecognizer = [(TSDiOSCanvasViewController *)self zoomGestureRecognizer];

  [(UIPinchGestureRecognizer *)zoomGestureRecognizer setEnabled:allowsPinchZoom];
}

- (BOOL)handleSingleTapAtPoint:(CGPoint)point withRecognizer:(id)recognizer
{
  y = point.y;
  x = point.x;
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
  if (v8 && ([v13 handleSingleTapAtPoint:v8 onKnob:{x, y}] & 1) != 0 || (v9 = -[TSDInteractiveCanvasController hitRep:](self->mICC, "hitRep:", x, y), !objc_msgSend(v9, "repForSelecting")) && (objc_msgSend(v9, "shouldIgnoreSingleTapAtPoint:withRecognizer:", recognizer, x, y) & 1) != 0 || (v10 = -[TSDInteractiveCanvasController handleSingleTapAtPoint:](self->mICC, "handleSingleTapAtPoint:", x, y)))
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

- (void)handleDoubleTap:(id)tap
{
  objc_opt_class();
  v4 = TSUDynamicCast();
  if (v4)
  {
    v5 = v4;
    mICC = self->mICC;
    canvasView = [(TSDiOSCanvasViewController *)self canvasView];
    [v5 firstTapLocation];
    [(TSDCanvasView *)canvasView convertPoint:0 fromView:?];
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

- (BOOL)handleDoubleTapAtPoint:(CGPoint)point withRecognizer:(id)recognizer
{
  y = point.y;
  x = point.x;
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
        canvasEditor = [(TSDInteractiveCanvasController *)self->mICC canvasEditor];
        -[TSDCanvasEditor setSelection:](canvasEditor, "setSelection:", -[TSDCanvasEditor canvasSelectionWithInfos:](canvasEditor, "canvasSelectionWithInfos:", [MEMORY[0x277CBEB98] setWithObject:{objc_msgSend(v10, "info")}]));
      }

      if (objc_opt_respondsToSelector())
      {
        LOBYTE(v9) = [v10 handleDoubleTapAtPoint:recognizer withRecognizer:{x, y}];
      }

      else
      {
        LOBYTE(v9) = 0;
      }
    }
  }

  return v9;
}

- (void)p_allTouchesDone:(id)done
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];

  [defaultCenter postNotificationName:@"TSDInteractiveCanvasControllerAllTouchesInGestureFinished" object:self];
}

- (void)p_handleTapForEditMenu:(id)menu
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
      touchedRep = [v5 touchedRep];
      if (touchedRep)
      {
        v12 = touchedRep;
        if (([touchedRep isSelectedIgnoringLocking] & 1) == 0 && -[TSDiOSCanvasViewController shouldSelectAndShowEditMenuOnFirstTapForRep:](self, "shouldSelectAndShowEditMenuOnFirstTapForRep:", v12))
        {
          [(TSDInteractiveCanvasController *)self->mICC endEditing];
          canvasEditor = [(TSDInteractiveCanvasController *)self->mICC canvasEditor];
          -[TSDCanvasEditor setSelection:](canvasEditor, "setSelection:", -[TSDCanvasEditor canvasSelectionWithInfos:](canvasEditor, "canvasSelectionWithInfos:", [MEMORY[0x277CBEB98] setWithObject:{objc_msgSend(v12, "info")}]));
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

- (BOOL)gestureRecognizer:(id)recognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)gestureRecognizer
{
  mSingleTapGestureRecognizer = self->mSingleTapGestureRecognizer;
  mEditMenuTapGestureRecognizer = self->mEditMenuTapGestureRecognizer;
  if (mSingleTapGestureRecognizer == recognizer && mEditMenuTapGestureRecognizer == gestureRecognizer)
  {
    return 1;
  }

  v18 = v7;
  v19 = v6;
  v20 = v5;
  v21 = v4;
  v15 = mSingleTapGestureRecognizer == gestureRecognizer && mEditMenuTapGestureRecognizer == recognizer;
  return v15 || ([(TSDiOSCanvasViewController *)self preventScrollGestureRecognizer]== recognizer || [(TSDiOSCanvasViewController *)self preventScrollGestureRecognizer]== gestureRecognizer) && [(TSKScrollView *)[(TSDCanvasView *)[(TSDiOSCanvasViewController *)self canvasView:v7] enclosingScrollView] panGestureRecognizer]!= recognizer && [(TSKScrollView *)[(TSDCanvasView *)[(TSDiOSCanvasViewController *)self canvasView] enclosingScrollView] panGestureRecognizer]!= gestureRecognizer || [(TSDiOSCanvasViewController *)self zoomGestureRecognizer:v18]== recognizer && [(TSKScrollView *)[(TSDCanvasView *)[(TSDiOSCanvasViewController *)self canvasView] enclosingScrollView] panGestureRecognizer]== gestureRecognizer;
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

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  v29 = *MEMORY[0x277D85DE8];
  v26.receiver = self;
  v26.super_class = TSDiOSCanvasViewController;
  [(TSDiOSCanvasViewController *)&v26 viewWillTransitionToSize:size.width withTransitionCoordinator:size.height];
  [(TSDiOSCanvasViewController *)self forceStopScrolling];
  [(TSDTextInputResponder *)[(TSDInteractiveCanvasController *)self->mICC textInputResponder] canvasWillRotate];
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  commonGestureRecognizers = [(TSDiOSCanvasViewController *)self commonGestureRecognizers];
  v7 = [(NSArray *)commonGestureRecognizers countByEnumeratingWithState:&v22 objects:v28 count:16];
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
          objc_enumerationMutation(commonGestureRecognizers);
        }

        v11 = *(*(&v22 + 1) + 8 * i);
        if ((objc_opt_respondsToSelector() & 1) != 0 && (![v11 state] || objc_msgSend(v11, "state") == 1 || objc_msgSend(v11, "state") == 2))
        {
          [v11 performSelector:sel_cancelBecauseOfRotation];
        }
      }

      v8 = [(NSArray *)commonGestureRecognizers countByEnumeratingWithState:&v22 objects:v28 count:16];
    }

    while (v8);
  }

  [(TSDInteractiveCanvasController *)[(TSDiOSCanvasViewController *)self interactiveCanvasController] i_syncWithLayoutThread];
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  topLevelReps = [(TSDCanvas *)[(TSDInteractiveCanvasController *)[(TSDiOSCanvasViewController *)self interactiveCanvasController] canvas] topLevelReps];
  v13 = [topLevelReps countByEnumeratingWithState:&v18 objects:v27 count:16];
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
          objc_enumerationMutation(topLevelReps);
        }

        [*(*(&v18 + 1) + 8 * j) recursivelyPerformSelectorIfImplemented:sel_canvasWillRotate];
      }

      v14 = [topLevelReps countByEnumeratingWithState:&v18 objects:v27 count:16];
    }

    while (v14);
  }

  self->mRotating = 1;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __81__TSDiOSCanvasViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke;
  v17[3] = &unk_279D49370;
  v17[4] = self;
  [coordinator animateAlongsideTransition:0 completion:v17];
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

- (BOOL)allowTouchOutsideCanvasView:(id)view forGesture:(id)gesture
{
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  mDelegate = self->mDelegate;

  return [(TSDiOSCanvasViewControllerDelegate *)mDelegate allowTouchOutsideCanvasView:view forGesture:gesture];
}

- (BOOL)repDragGestureRecognizer:(id)recognizer shouldBeginTapHoldTrackingAtScaledPoint:(CGPoint)point
{
  if (!self->mDelegate)
  {
    return 1;
  }

  y = point.y;
  x = point.x;
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 1;
  }

  mDelegate = self->mDelegate;

  return [(TSDiOSCanvasViewControllerDelegate *)mDelegate canvasViewController:self shouldBeginTapHoldDragAtPoint:x, y];
}

- (id)viewForGestureRecognizer:(id)recognizer
{
  if (objc_opt_respondsToSelector())
  {
    mDelegate = self->mDelegate;

    return [(TSDiOSCanvasViewControllerDelegate *)mDelegate viewForGestureRecognizer:recognizer];
  }

  else
  {

    return [(TSDiOSCanvasViewController *)self canvasView];
  }
}

- (CGRect)targetRectForEditMenu:(id)menu
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
    infos = [menu infos];
    if ([infos count])
    {
      [(TSDInteractiveCanvasController *)self->mICC layoutIfNeeded];
      if ([infos count] == 1)
      {
        v16 = -[TSDInteractiveCanvasController repForInfo:](self->mICC, "repForInfo:", [infos anyObject]);
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
        v35 = [infos countByEnumeratingWithState:&v64 objects:v74 count:16];
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
                objc_enumerationMutation(infos);
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
            v36 = [infos countByEnumeratingWithState:&v64 objects:v74 count:16];
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

- (void)showEditMenuForSelection:(id)selection
{
  mEMORY[0x277D75718] = [MEMORY[0x277D75718] sharedMenuController];
  if (((objc_opt_respondsToSelector() & 1) == 0 || [(TSDiOSCanvasViewControllerDelegate *)self->mDelegate allowEditMenuToAppear]) && (([(TSDTextInputResponder *)[(TSDInteractiveCanvasController *)[(TSDiOSCanvasViewController *)self interactiveCanvasController] textInputResponder] isFirstResponder]& 1) != 0 || [(TSDTextInputResponder *)[(TSDInteractiveCanvasController *)[(TSDiOSCanvasViewController *)self interactiveCanvasController] textInputResponder] canBecomeFirstResponder]&& [(TSDTextInputResponder *)[(TSDInteractiveCanvasController *)[(TSDiOSCanvasViewController *)self interactiveCanvasController] textInputResponder] becomeFirstResponder]|| ([(TSDiOSCanvasViewController *)self isFirstResponder]& 1) != 0 || [(TSDiOSCanvasViewController *)self canBecomeFirstResponder]&& [(TSDiOSCanvasViewController *)self becomeFirstResponder]))
  {
    [(TSDInteractiveCanvasController *)self->mICC visibleBoundsRect];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;
    [(TSDiOSCanvasViewController *)self targetRectForEditMenu:selection];
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
      array = [MEMORY[0x277CBEB18] array];
      [(TSDiOSCanvasViewController *)self p_buildMenuItems:array forSelection:selection];
      [mEMORY[0x277D75718] setMenuItems:array];
      [mEMORY[0x277D75718] setArrowDirection:0];
      if ([selection unlockedInfoCount] > 1)
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
        [mEMORY[0x277D75718] setArrowDirection:1];
      }

      [mEMORY[0x277D75718] showMenuFromView:-[TSDiOSCanvasViewController canvasView](self rect:{"canvasView"), x, y, width, height}];
      self->mContextMenuMightBeDisplayed = 1;
    }
  }
}

- (void)p_buildMenuItems:(id)items forSelection:(id)selection
{
  v34 = *MEMORY[0x277D85DE8];
  v7 = [objc_alloc(MEMORY[0x277D75728]) initWithTitle:objc_msgSend(TSDBundle() action:{"localizedStringForKey:value:table:", @"Cut", &stru_287D36338, @"TSDrawables", sel_cutObject_}];
  v8 = [objc_alloc(MEMORY[0x277D75728]) initWithTitle:objc_msgSend(TSDBundle() action:{"localizedStringForKey:value:table:", @"Copy", &stru_287D36338, @"TSDrawables", sel_copyObject_}];
  v9 = [objc_alloc(MEMORY[0x277D75728]) initWithTitle:objc_msgSend(TSDBundle() action:{"localizedStringForKey:value:table:", @"Paste", &stru_287D36338, @"TSDrawables", sel_pasteObject_}];
  v10 = [objc_alloc(MEMORY[0x277D75728]) initWithTitle:objc_msgSend(TSDBundle() action:{"localizedStringForKey:value:table:", @"Delete", &stru_287D36338, @"TSDrawables", sel_deleteObject_}];
  [items addObject:v7];
  [items addObject:v8];
  [items addObject:v9];
  [items addObject:v10];

  if ([selection infoCount] == 1)
  {
    v11 = [selection containsUnlockedKindOfClass:objc_opt_class()];
  }

  else
  {
    v11 = 0;
  }

  if ([selection unlockedInfoCount] >= 2 && (v11 & 1) == 0)
  {
    v12 = [objc_alloc(MEMORY[0x277D75728]) initWithTitle:objc_msgSend(TSDBundle() action:{"localizedStringForKey:value:table:", @"Group", &stru_287D36338, @"TSDrawables", sel_group_}];
    [items addObject:v12];
  }

  if (v11)
  {
    v13 = [objc_alloc(MEMORY[0x277D75728]) initWithTitle:objc_msgSend(TSDBundle() action:{"localizedStringForKey:value:table:", @"Ungroup", &stru_287D36338, @"TSDrawables", sel_ungroup_}];
    [items addObject:v13];
  }

  if ([selection infoCount] == 1)
  {
    v14 = -[TSDInteractiveCanvasController repForInfo:](self->mICC, "repForInfo:", [objc_msgSend(selection "infos")]);
    if ([v14 isLocked])
    {
      v15 = 0;
    }

    else
    {
      [items addObjectsFromArray:{objc_msgSend(v14, "itemsToAddToEditMenu")}];
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
    [items addObject:v17];
  }

  unlockedInfoCount = [selection unlockedInfoCount];
  if (unlockedInfoCount != [selection infoCount])
  {
    v19 = [objc_alloc(MEMORY[0x277D75728]) initWithTitle:objc_msgSend(TSDBundle() action:{"localizedStringForKey:value:table:", @"Unlock", &stru_287D36338, @"TSDrawables", sel_unlock_}];
    [items addObject:v19];
  }

  if (v15)
  {
    v20 = [(TSDiOSCanvasViewController *)self itemsToAddToEditMenuForRep:v14];
    if (v20)
    {
      v21 = v20;
      if ([v20 count])
      {
        [items addObjectsFromArray:v21];
      }
    }
  }

  if ([(TSDCanvasEditorHelper *)[(TSDCanvasEditor *)[(TSDInteractiveCanvasController *)self->mICC canvasEditor] canvasEditorHelper] canPerformMaskWithShapeWithSender:0])
  {
    v22 = [objc_alloc(MEMORY[0x277D75728]) initWithTitle:objc_msgSend(TSDBundle() action:{"localizedStringForKey:value:table:", @"Mask with Shape", &stru_287D36338, @"TSDrawables", sel_maskWithShape_}];
    [items addObject:v22];
  }

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  currentEditors = [(TSDEditorController *)[(TSDInteractiveCanvasController *)[(TSDiOSCanvasViewController *)self interactiveCanvasController] editorController] currentEditors];
  v24 = [currentEditors countByEnumeratingWithState:&v29 objects:v33 count:16];
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
          objc_enumerationMutation(currentEditors);
        }

        v28 = *(*(&v29 + 1) + 8 * v27);
        if (objc_opt_respondsToSelector())
        {
          [v28 addContextualMenuItemsToArray:items];
        }

        ++v27;
      }

      while (v25 != v27);
      v25 = [currentEditors countByEnumeratingWithState:&v29 objects:v33 count:16];
    }

    while (v25);
  }
}

- (void)showEditMenu:(id)menu
{
  canvasEditor = [(TSDInteractiveCanvasController *)self->mICC canvasEditor];
  v6 = canvasEditor;
  if (menu)
  {
    infos = [(TSDCanvasSelection *)[(TSDCanvasEditor *)canvasEditor canvasSelection] infos];
  }

  else
  {
    infos = 0;
  }

  [(TSDCanvasEditor *)v6 canvasSelectionWithInfos:infos];
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
    canvasSelection = [(TSDCanvasEditor *)[(TSDInteractiveCanvasController *)self->mICC canvasEditor] canvasSelection];

    [(TSDiOSCanvasViewController *)self showEditMenuForSelection:canvasSelection];
  }
}

- (id)extraMenuItems
{
  textInputEditor = [(TSDEditorController *)[(TSDInteractiveCanvasController *)[(TSDiOSCanvasViewController *)self interactiveCanvasController] editorController] textInputEditor];
  if (objc_opt_respondsToSelector())
  {
    extraMenuItems = [textInputEditor extraMenuItems];
  }

  else
  {
    extraMenuItems = 0;
  }

  if ([extraMenuItems count])
  {
    return extraMenuItems;
  }

  else
  {
    return 0;
  }
}

- (BOOL)canPerformAction:(SEL)action withSender:(id)sender
{
  if ([(TSDInteractiveCanvasController *)self->mICC isInDynamicOperation])
  {
    return 0;
  }

  mICC = self->mICC;

  return [(TSDInteractiveCanvasController *)mICC canPerformInteractiveAction:action withSender:sender];
}

- (void)setContextMenuMightBeDisplayed:(BOOL)displayed
{
  if (!displayed && [objc_msgSend(MEMORY[0x277D75718] "sharedMenuController")])
  {
    [(TSDiOSCanvasViewController *)self hideEditMenu];
  }

  self->mContextMenuMightBeDisplayed = displayed;
}

- (void)cut:(id)cut
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [(TSDiOSCanvasViewController *)self hideEditMenu];
  }

  mICC = self->mICC;

  [(TSDInteractiveCanvasController *)mICC makeEditorPerformAction:a2 withSender:cut];
}

- (void)unlock:(id)unlock
{
  [(TSDInteractiveCanvasController *)[(TSDiOSCanvasViewController *)self interactiveCanvasController] makeEditorPerformAction:a2 withSender:unlock];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    canvasEditor = [(TSDInteractiveCanvasController *)[(TSDiOSCanvasViewController *)self interactiveCanvasController] canvasEditor];
    v5 = [(TSDCanvasEditor *)canvasEditor canvasSelectionWithInfos:[(TSDCanvasSelection *)[(TSDCanvasEditor *)canvasEditor canvasSelection] infos]];

    [(TSDiOSCanvasViewController *)self showEditMenuForSelection:v5];
  }
}

- (void)stopScrolling
{
  if (([MEMORY[0x277CCACC8] isMainThread] & 1) == 0)
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDiOSCanvasViewController stopScrolling]"];
    [currentHandler handleFailureInFunction:v4 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDiOSCanvasViewController.m"), 1171, @"This operation must only be performed on the main thread."}];
  }

  enclosingScrollView = [(TSDCanvasView *)[(TSDiOSCanvasViewController *)self canvasView] enclosingScrollView];
  [(TSKScrollView *)enclosingScrollView contentOffset];

  [(TSKScrollView *)enclosingScrollView setContentOffset:0 animated:?];
}

- (void)forceStopScrolling
{
  if (([MEMORY[0x277CCACC8] isMainThread] & 1) == 0)
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDiOSCanvasViewController forceStopScrolling]"];
    [currentHandler handleFailureInFunction:v4 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDiOSCanvasViewController.m"), 1181, @"This operation must only be performed on the main thread."}];
  }

  enclosingScrollView = [(TSDCanvasView *)[(TSDiOSCanvasViewController *)self canvasView] enclosingScrollView];
  if ([(TSKScrollView *)enclosingScrollView isScrollEnabled]&& [(TSDInteractiveCanvasController *)[(TSDiOSCanvasViewController *)self interactiveCanvasController] currentlyScrolling])
  {
    [(TSKScrollView *)enclosingScrollView setScrollEnabled:0];
    [(TSKScrollView *)enclosingScrollView setScrollEnabled:1];
    [(TSKScrollView *)enclosingScrollView contentOffset];

    [(TSKScrollView *)enclosingScrollView setContentOffset:0 animated:?];
  }
}

- (void)beginInspectorPanZoomModeWithSingleTapBlock:(id)block
{
  v21 = *MEMORY[0x277D85DE8];
  if (!self->mInspectorModeEnabled || (v5 = [MEMORY[0x277D6C290] currentHandler], v6 = objc_msgSend(MEMORY[0x277CCACA8], "stringWithUTF8String:", "-[TSDiOSCanvasViewController beginInspectorPanZoomModeWithSingleTapBlock:]"), objc_msgSend(v5, "handleFailureInFunction:file:lineNumber:description:", v6, objc_msgSend(MEMORY[0x277CCACA8], "stringWithUTF8String:", "/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDiOSCanvasViewController.m"), 1199, @"attempting to re-enable inspector pan/zoom mode"), !self->mInspectorModeEnabled))
  {
    self->mInspectorModeEnabled = 1;
    if (self->mInspectorSingleTapBlock)
    {
      currentHandler = [MEMORY[0x277D6C290] currentHandler];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDiOSCanvasViewController beginInspectorPanZoomModeWithSingleTapBlock:]"];
      [currentHandler handleFailureInFunction:v8 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDiOSCanvasViewController.m"), 1203, @"expected nil value for '%s'", "mInspectorSingleTapBlock"}];
    }

    self->mInspectorSingleTapBlock = [block copy];
    if (!self->mInspectorGestureRecognizersToReenable)
    {
      self->mInspectorGestureRecognizersToReenable = objc_alloc_init(MEMORY[0x277CBEB18]);
    }

    array = [MEMORY[0x277CBEB18] array];
    [(TSDiOSCanvasViewController *)self addInspectorPanZoomModeGRsToArray:array];
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    gestureRecognizers = [(TSDCanvasView *)[(TSDiOSCanvasViewController *)self canvasView] gestureRecognizers];
    v11 = [gestureRecognizers countByEnumeratingWithState:&v16 objects:v20 count:16];
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
            objc_enumerationMutation(gestureRecognizers);
          }

          v15 = *(*(&v16 + 1) + 8 * i);
          if (([array containsObject:v15] & 1) == 0)
          {
            if ([v15 isEnabled])
            {
              [(NSMutableArray *)self->mInspectorGestureRecognizersToReenable addObject:v15];
              [v15 setEnabled:0];
            }
          }
        }

        v12 = [gestureRecognizers countByEnumeratingWithState:&v16 objects:v20 count:16];
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

- (void)addInspectorPanZoomModeGRsToArray:(id)array
{
  [array addObject:{-[TSDiOSCanvasViewController zoomGestureRecognizer](self, "zoomGestureRecognizer")}];
  singleTapGestureRecognizer = [(TSDiOSCanvasViewController *)self singleTapGestureRecognizer];

  [array addObject:singleTapGestureRecognizer];
}

- (void)p_handleSingleTapGesture:(id)gesture
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

- (void)p_zoomWithGesture:(id)gesture
{
  state = [gesture state];
  if (state > 2)
  {
    if (state != 3)
    {
      if (state == 4)
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
    if (state != 1)
    {
      if (state == 2)
      {
        v6 = 1;
        v7 = 1;
        goto LABEL_13;
      }

      goto LABEL_8;
    }

    if (self->mCanvasZoomTracker)
    {
      currentHandler = [MEMORY[0x277D6C290] currentHandler];
      v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDiOSCanvasViewController p_zoomWithGesture:]"];
      [currentHandler handleFailureInFunction:v9 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDiOSCanvasViewController.m"), 1277, @"expected nil value for '%s'", "mCanvasZoomTracker"}];
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

  [gesture locationInView:{-[TSDiOSCanvasViewController canvasView](self, "canvasView")}];
  v12 = v11;
  v14 = v13;
  if (objc_opt_respondsToSelector())
  {
    [(TSDCanvasLayer *)[(TSDiOSCanvasViewController *)self canvasLayer] setShowsScaleFeedback:[(TSDiOSCanvasViewControllerDelegate *)self->mDelegate canvasViewControllerShouldShowScaleFeedback:self]];
  }

  if (!v6 || [gesture numberOfTouches] == 2)
  {
    mCanvasZoomTracker = self->mCanvasZoomTracker;
    [gesture scale];
    v17 = v16;
    [gesture velocity];

    [(TSDCanvasZoomTracker *)mCanvasZoomTracker zoomWithScale:v7 velocity:v17 locationInView:v18 phase:v12, v14];
  }
}

- (void)canvasZoomTracker:(id)tracker willBeginViewScaleFeedbackWithFastPinch:(BOOL)pinch
{
  canvasView = [(TSDiOSCanvasViewController *)self canvasView];
  zoomGestureRecognizer = [(TSDiOSCanvasViewController *)self zoomGestureRecognizer];
  if (pinch || (v8 = zoomGestureRecognizer, [(UIPinchGestureRecognizer *)zoomGestureRecognizer numberOfTouches]!= 2))
  {
    enclosingScrollView = [(TSDCanvasView *)canvasView enclosingScrollView];
    [(TSKScrollView *)enclosingScrollView center];
    [-[TSKScrollView superview](enclosingScrollView "superview")];
    v14 = v20;
    v16 = v21;
    v12 = v21;
    v10 = v20;
  }

  else
  {
    [(UIPinchGestureRecognizer *)v8 locationOfTouch:0 inView:canvasView];
    v10 = v9;
    v12 = v11;
    [(UIPinchGestureRecognizer *)v8 locationOfTouch:1 inView:canvasView];
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

- (void)canvasZoomTrackerWillBeginFinalZoomAnimation:(id)animation
{
  mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];

  [mEMORY[0x277D75128] beginIgnoringInteractionEvents];
}

- (void)canvasZoomTrackerDidEndFinalZoomAnimation:(id)animation
{
  mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];

  [mEMORY[0x277D75128] endIgnoringInteractionEvents];
}

- (void)canvasZoomTrackerDidFinish:(id)finish
{
  [(TSDCanvasZoomTracker *)self->mCanvasZoomTracker setDelegate:0];

  self->mCanvasZoomTracker = 0;
}

- (void)p_guidedPanWithGesture:(id)gesture
{
  if ([gesture state] == 1)
  {
    if (objc_opt_respondsToSelector())
    {
      delegate = [(TSDInteractiveCanvasController *)self->mICC delegate];
      mICC = self->mICC;
      [(UIPanGestureRecognizer *)self->mGuidedPanGestureRecognizer direction];
      v7 = [(TSDInteractiveCanvasControllerDelegate *)delegate panGuideForInteractiveCanvasController:mICC withMovementDirection:?];
      if (!v7)
      {
        currentHandler = [MEMORY[0x277D6C290] currentHandler];
        v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDiOSCanvasViewController p_guidedPanWithGesture:]"];
        [currentHandler handleFailureInFunction:v9 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDiOSCanvasViewController.m"), 1427, @"invalid nil value for '%s'", "panGuide"}];
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
      currentHandler2 = [MEMORY[0x277D6C290] currentHandler];
      v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDiOSCanvasViewController p_guidedPanWithGesture:]"];
      [currentHandler2 handleFailureInFunction:v12 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDiOSCanvasViewController.m"), 1438, @"can't handle guided pan without a guide"}];
    }
  }

  v13 = self->mGuidedPanController;

  [(TSDGuidedPanController *)v13 handlePanGesture:gesture];
}

- (id)p_willPresentError:(id)error
{
  errorCopy = error;
  localizedRecoveryOptions = [error localizedRecoveryOptions];
  if (localizedRecoveryOptions && [localizedRecoveryOptions count] && (!objc_msgSend(errorCopy, "recoveryAttempter") || (objc_opt_respondsToSelector() & 1) == 0 && (objc_opt_respondsToSelector() & 1) == 0))
  {
    v5 = [objc_msgSend(errorCopy "userInfo")];
    [v5 removeObjectForKey:*MEMORY[0x277CCA498]];
    [v5 removeObjectForKey:*MEMORY[0x277CCA480]];
    [v5 removeObjectForKey:*MEMORY[0x277CCA658]];
    errorCopy = [MEMORY[0x277CCA9B8] errorWithDomain:objc_msgSend(errorCopy code:"domain") userInfo:{objc_msgSend(errorCopy, "code"), v5}];
  }

  return errorCopy;
}

- (void)presentError:(id)error completionHandler:(id)handler
{
  v6 = [(TSDiOSCanvasViewController *)self p_willPresentError:error];
  v7 = [objc_alloc(MEMORY[0x277D75118]) initWithError:v6];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __61__TSDiOSCanvasViewController_presentError_completionHandler___block_invoke;
  v8[3] = &unk_279D49398;
  v8[4] = v6;
  v8[5] = self;
  v8[6] = v7;
  v8[7] = handler;
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

- (void)p_didPresentErrorWithRecovery:(BOOL)recovery completionHandler:(void *)handler
{
  if (handler)
  {
    (*(handler + 2))(handler, recovery);
  }
}

- (void)presentErrors:(id)errors withLocalizedDescription:(id)description completionHandler:(id)handler
{
  v8 = [errors count];
  v9 = objc_alloc(MEMORY[0x277D75118]);
  if (v8 == 1)
  {
    v10 = [v9 initWithError:{objc_msgSend(errors, "objectAtIndex:", 0)}];
  }

  else
  {
    v10 = [v9 initWithTitle:description message:0 delegate:0 cancelButtonTitle:objc_msgSend(TSDBundle() otherButtonTitles:{"localizedStringForKey:value:table:", @"OK", &stru_287D36338, @"TSDrawables", 0}];
  }

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __87__TSDiOSCanvasViewController_presentErrors_withLocalizedDescription_completionHandler___block_invoke;
  v11[3] = &unk_279D493C0;
  v11[4] = v10;
  v11[5] = handler;
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

- (void)beginModalOperationWithLocalizedMessage:(id)message progress:(id)progress cancelHandler:(id)handler
{
  if (([MEMORY[0x277CCACC8] isMainThread] & 1) == 0)
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDiOSCanvasViewController beginModalOperationWithLocalizedMessage:progress:cancelHandler:]"];
    [currentHandler handleFailureInFunction:v6 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDiOSCanvasViewController.m"), 1553, @"Modal operations must be started on the main thread, "}];
  }

  mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];

  [mEMORY[0x277D75128] beginIgnoringInteractionEvents];
}

- (void)endModalOperation
{
  if (([MEMORY[0x277CCACC8] isMainThread] & 1) == 0)
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDiOSCanvasViewController endModalOperation]"];
    [currentHandler handleFailureInFunction:v3 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDiOSCanvasViewController.m"), 1565, @"Modal operations must be ended on the main thread, "}];
  }

  mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];

  [mEMORY[0x277D75128] endIgnoringInteractionEvents];
}

- (void)presentMovieCompatibilityAlertForUnplayableMovieURLs:(id)ls completionHandler:(id)handler
{
  if (handler)
  {
    (*(handler + 2))(handler, 0);
  }
}

- (void)presentMovieCompatibilityAlertForUnplayableMoviePasteboardDrawableProviders:(id)providers completionHandler:(id)handler
{
  if (handler)
  {
    (*(handler + 2))(handler, 0);
  }
}

- (id)topLevelReps
{
  canvas = [(TSDInteractiveCanvasController *)[(TSDiOSCanvasViewController *)self interactiveCanvasController] canvas];

  return [(TSDCanvas *)canvas topLevelReps];
}

@end