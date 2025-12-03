@interface TSWPiOSCanvasViewController
- (BOOL)canDisplayHyperlinkUI;
- (BOOL)interactionShouldBegin:(id)begin atPoint:(CGPoint)point;
- (BOOL)willInteractWithLinkAtPoint:(CGPoint)point;
- (TSWPInteractiveCanvasController)interactiveCanvasController;
- (id)_dragItemsForInteraction:(id)interaction session:(id)session withTouchAtPoint:(CGPoint)point;
- (id)_hitRepAtPoint:(CGPoint)point;
- (id)_hyperLinkFieldAtPoint:(CGPoint)point;
- (id)actionForHyperlink:(id)hyperlink inRep:(id)rep gesture:(id)gesture;
- (id)dragInteraction:(id)interaction itemsForBeginningSession:(id)session;
- (id)dragInteraction:(id)interaction previewForCancellingItem:(id)item withDefault:(id)default;
- (id)p_newSwipeGestureRecognizerWithDirection:(int)direction numberOfTouchesRequired:(unsigned int)required;
- (void)_clearSelectedRange;
- (void)_requestTextItemConstrainedToLineAtPoint:(CGPoint)point resultHandler:(id)handler;
- (void)_resetAndClearInteractions;
- (void)_resetLinkInteraction;
- (void)addSwipeGestureRecognizers;
- (void)cancelDelayedTapAction;
- (void)cancelInteractionWithLink;
- (void)dealloc;
- (void)dragInteraction:(id)interaction willAnimateLiftWithAnimator:(id)animator session:(id)session;
- (void)finishDelayedTapAction;
- (void)p_addSwipeGestureRecognizer:(id)recognizer failRequiredFor:(id)for;
- (void)removeSwipeGestureRecognizers;
- (void)setUpGestureRecognizers;
- (void)startDelayedTapAction:(id)action;
- (void)startInteractionWithLinkAtPoint:(CGPoint)point;
- (void)startLongInteractionWithLinkAtPoint:(CGPoint)point;
- (void)tapLinkAtPoint:(CGPoint)point;
- (void)teardown;
- (void)validateInteractionWithLinkAtPoint:(CGPoint)point;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation TSWPiOSCanvasViewController

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  v6.receiver = self;
  v6.super_class = TSWPiOSCanvasViewController;
  [(TSDiOSCanvasViewController *)&v6 viewWillTransitionToSize:coordinator withTransitionCoordinator:size.width, size.height];
  [(TSWPiOSCanvasViewController *)self cancelDelayedTapAction];
  objc_opt_class();
  [(TSDEditorController *)[(TSDInteractiveCanvasController *)[(TSWPiOSCanvasViewController *)self interactiveCanvasController] editorController] textInputEditor];
  v5 = TSUDynamicCast();
  if (v5)
  {
    [v5 dismissActivePopovers];
  }
}

- (void)viewDidAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = TSWPiOSCanvasViewController;
  [(TSWPiOSCanvasViewController *)&v4 viewDidAppear:appear];
  if (TSUSupportsTextInteraction())
  {
    [(TSDCanvasView *)[(TSDiOSCanvasViewController *)self canvasView] addInteraction:self->_textInteraction];
  }
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v4.receiver = self;
  v4.super_class = TSWPiOSCanvasViewController;
  [(TSWPiOSCanvasViewController *)&v4 viewDidDisappear:disappear];
  if (TSUSupportsTextInteraction())
  {
    [(TSDCanvasView *)[(TSDiOSCanvasViewController *)self canvasView] removeInteraction:self->_textInteraction];
  }
}

- (void)teardown
{
  v15 = *MEMORY[0x277D85DE8];
  if ([(TSWPiOSCanvasViewController *)self isViewLoaded])
  {
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    gestureRecognizers = self->_gestureRecognizers;
    v4 = [(NSMutableArray *)gestureRecognizers countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v11;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v11 != v6)
          {
            objc_enumerationMutation(gestureRecognizers);
          }

          v8 = *(*(&v10 + 1) + 8 * i);
          [v8 setDelegate:0];
          [objc_msgSend(v8 "view")];
          [(TSDGestureDispatcher *)[(TSDInteractiveCanvasController *)[(TSWPiOSCanvasViewController *)self interactiveCanvasController] gestureDispatcher] gestureRemovedFromView:v8];
        }

        v5 = [(NSMutableArray *)gestureRecognizers countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v5);
    }

    [(NSMutableArray *)self->_gestureRecognizers removeAllObjects];
  }

  v9.receiver = self;
  v9.super_class = TSWPiOSCanvasViewController;
  [(TSDiOSCanvasViewController *)&v9 teardown];
}

- (void)dealloc
{
  if (TSUSupportsTextInteraction())
  {

    self->_textInteraction = 0;
  }

  self->_leftSwipeGestureRecognizer = 0;
  self->_rightSwipeGestureRecognizer = 0;

  self->_delayedTapAction = 0;
  self->_hyperlinkGestureRecognizer = 0;

  self->_gestureRecognizers = 0;
  self->_longPressGestureRecognizer = 0;
  v3.receiver = self;
  v3.super_class = TSWPiOSCanvasViewController;
  [(TSDiOSCanvasViewController *)&v3 dealloc];
}

- (void)setUpGestureRecognizers
{
  v16.receiver = self;
  v16.super_class = TSWPiOSCanvasViewController;
  [(TSDiOSCanvasViewController *)&v16 setUpGestureRecognizers];
  self->_gestureRecognizers = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:0];
  if (TSUSupportsTextInteraction())
  {
    v3 = [MEMORY[0x277D75C08] textInteractionsForSet:1];
    self->_textInteraction = v3;
    [(UITextInteraction *)v3 setDelegate:self];
    [(UITextInteraction *)self->_textInteraction setTextInput:[(TSDInteractiveCanvasController *)[(TSWPiOSCanvasViewController *)self interactiveCanvasController] textInputResponder]];
    [(TSDCanvasView *)[(TSDiOSCanvasViewController *)self canvasView] setHyperLinkDelegate:self];
    v4 = [objc_alloc(MEMORY[0x277D75468]) initWithDelegate:self];
    [-[TSWPiOSCanvasViewController view](self "view")];

    v5 = [(UIGestureRecognizer *)[TSWPLongPressGestureRecognizer alloc] initWithGestureDispatcher:[(TSDInteractiveCanvasController *)[(TSWPiOSCanvasViewController *)self interactiveCanvasController] gestureDispatcher] gestureKind:@"TSWPImmediatePress"];
    [(TSWPLongPressGestureRecognizer *)v5 setEnabled:0];
    [(TSWPLongPressGestureRecognizer *)v5 setNumberOfTapsRequired:0];
    [(TSWPLongPressGestureRecognizer *)v5 setMinimumPressDuration:0.0];
    [-[TSDiOSCanvasViewController viewForGestureRecognizer:](self viewForGestureRecognizer:{v5), "addGestureRecognizer:", v5}];
    [(NSMutableArray *)self->_gestureRecognizers addObject:v5];
  }

  else
  {
    gestureDispatcher = [(TSDInteractiveCanvasController *)[(TSWPiOSCanvasViewController *)self interactiveCanvasController] gestureDispatcher];
    v15 = [(UIGestureRecognizer *)[TSWPTapAndTouchGestureRecognizer alloc] initWithGestureDispatcher:gestureDispatcher gestureKind:@"TSWPDoubleTapAndTouch"];
    [(TSWPTapAndTouchGestureRecognizer *)v15 setNumberOfTapsRequired:2];
    [-[TSDiOSCanvasViewController viewForGestureRecognizer:](self viewForGestureRecognizer:{v15), "addGestureRecognizer:", v15}];
    [(NSMutableArray *)self->_gestureRecognizers addObject:v15];
    v7 = [(UIGestureRecognizer *)[TSWPTapAndTouchGestureRecognizer alloc] initWithGestureDispatcher:gestureDispatcher gestureKind:@"TSWPTapAndTouch"];
    [(TSWPTapAndTouchGestureRecognizer *)v7 setNumberOfTapsRequired:1];
    [-[TSDiOSCanvasViewController viewForGestureRecognizer:](self viewForGestureRecognizer:{v7), "addGestureRecognizer:", v7}];
    [(NSMutableArray *)self->_gestureRecognizers addObject:v7];
    v8 = [(UIGestureRecognizer *)[TSWPLongPressGestureRecognizer alloc] initWithGestureDispatcher:gestureDispatcher gestureKind:@"TSWPLongPress"];
    self->_longPressGestureRecognizer = v8;
    [(TSWPLongPressGestureRecognizer *)v8 setNumberOfTapsRequired:0];
    [-[TSDiOSCanvasViewController viewForGestureRecognizer:](self viewForGestureRecognizer:{self->_longPressGestureRecognizer), "addGestureRecognizer:", self->_longPressGestureRecognizer}];
    [(NSMutableArray *)self->_gestureRecognizers addObject:self->_longPressGestureRecognizer];
    v9 = [(UIGestureRecognizer *)[TSWPLongPressGestureRecognizer alloc] initWithGestureDispatcher:gestureDispatcher gestureKind:@"TSWPImmediatePress"];
    [(TSWPLongPressGestureRecognizer *)v9 setNumberOfTapsRequired:0];
    [(TSWPLongPressGestureRecognizer *)v9 setMinimumPressDuration:0.0];
    [-[TSDiOSCanvasViewController viewForGestureRecognizer:](self viewForGestureRecognizer:{v9), "addGestureRecognizer:", v9}];
    [(NSMutableArray *)self->_gestureRecognizers addObject:v9];
    v10 = [(UIGestureRecognizer *)[TSWPTapGestureRecognizer alloc] initWithGestureDispatcher:gestureDispatcher gestureKind:@"TSWPImmediateDoubleTap"];
    [(TSWPTapGestureRecognizer *)v10 setNumberOfTapsRequired:2];
    [-[TSDiOSCanvasViewController viewForGestureRecognizer:](self viewForGestureRecognizer:{v10), "addGestureRecognizer:", v10}];
    [(NSMutableArray *)self->_gestureRecognizers addObject:v10];
    v11 = [(UIGestureRecognizer *)[TSWPTapGestureRecognizer alloc] initWithGestureDispatcher:gestureDispatcher gestureKind:@"TSWPSecondarySingleTap"];
    self->_secondarySingleTapGestureRecognizer = &v11->super;
    [(TSWPTapGestureRecognizer *)v11 setEnabled:0];
    [-[TSDiOSCanvasViewController viewForGestureRecognizer:](self viewForGestureRecognizer:{self->_secondarySingleTapGestureRecognizer), "addGestureRecognizer:", self->_secondarySingleTapGestureRecognizer}];
    [(NSMutableArray *)self->_gestureRecognizers addObject:self->_secondarySingleTapGestureRecognizer];
    v12 = [(UIGestureRecognizer *)[TSWPTapGestureRecognizer alloc] initWithGestureDispatcher:gestureDispatcher gestureKind:@"TSWPImmediateSingleTap"];
    [-[TSDiOSCanvasViewController viewForGestureRecognizer:](self viewForGestureRecognizer:{v12), "addGestureRecognizer:", v12}];
    [(NSMutableArray *)self->_gestureRecognizers addObject:v12];
    v13 = [(UIGestureRecognizer *)[TSWPTapGestureRecognizer alloc] initWithGestureDispatcher:gestureDispatcher gestureKind:@"TSWPTwoFingerTap"];
    [(TSWPTapGestureRecognizer *)v13 setNumberOfTouchesRequired:2];
    [-[TSDiOSCanvasViewController viewForGestureRecognizer:](self viewForGestureRecognizer:{v13), "addGestureRecognizer:", v13}];
    [(NSMutableArray *)self->_gestureRecognizers addObject:v13];
    v14 = [objc_alloc(MEMORY[0x277D75468]) initWithDelegate:self];
    [-[TSWPiOSCanvasViewController view](self "view")];

    [(TSDGestureDispatcher *)gestureDispatcher prioritizeRecognizer:v7 overRecognizer:v12];
    [(TSDGestureDispatcher *)gestureDispatcher allowSimultaneousRecognitionByRecognizers:v12, self->_secondarySingleTapGestureRecognizer, 0];
    [(TSDGestureDispatcher *)gestureDispatcher allowSimultaneousRecognitionByRecognizers:self->_secondarySingleTapGestureRecognizer, self->_longPressGestureRecognizer, 0];
    [(TSDGestureDispatcher *)gestureDispatcher allowSimultaneousRecognitionByRecognizers:v7, v9, 0];
    [(TSDGestureDispatcher *)gestureDispatcher allowSimultaneousRecognitionByRecognizers:v12, v7, 0];
    [(TSDGestureDispatcher *)gestureDispatcher allowSimultaneousRecognitionByRecognizers:v15, v10, 0];
    [(TSDGestureDispatcher *)gestureDispatcher allowSimultaneousRecognitionByRecognizers:v15, v7, 0];
    if (![(TSWPiOSCanvasViewController *)self onlyAllowTextSwipesWhenEditing])
    {
      [(TSWPiOSCanvasViewController *)self addSwipeGestureRecognizers];
    }
  }
}

- (BOOL)canDisplayHyperlinkUI
{
  textInputEditor = [(TSDEditorController *)[(TSDInteractiveCanvasController *)[(TSWPiOSCanvasViewController *)self interactiveCanvasController] editorController] textInputEditor];
  result = (objc_opt_respondsToSelector() & 1) == 0 || (objc_opt_class(), [textInputEditor selection], (v3 = TSUDynamicCast()) == 0) || objc_msgSend(v3, "infoCount") < 2;
  return result;
}

- (id)actionForHyperlink:(id)hyperlink inRep:(id)rep gesture:(id)gesture
{
  delegate = [(TSDInteractiveCanvasController *)[(TSWPiOSCanvasViewController *)self interactiveCanvasController] delegate];
  if (objc_opt_respondsToSelector())
  {

    return [(TSDInteractiveCanvasControllerDelegate *)delegate actionForHyperlink:hyperlink inRep:rep gesture:gesture];
  }

  else if ([gesture gestureKind] == @"TSWPImmediateSingleTap" && -[TSDInteractiveCanvasController inReadMode](-[TSWPiOSCanvasViewController interactiveCanvasController](self, "interactiveCanvasController"), "inReadMode"))
  {

    return [TSWPHyperlinkAction hyperlinkActionWithHyperlink:hyperlink inRep:rep action:&__block_literal_global_74];
  }

  else
  {
    return 0;
  }
}

uint64_t __64__TSWPiOSCanvasViewController_actionForHyperlink_inRep_gesture___block_invoke()
{
  v0 = +[TSWPHyperlinkUIController sharedHyperlinkUIController];

  return [v0 visit];
}

- (void)cancelDelayedTapAction
{
  delayedTapAction = self->_delayedTapAction;
  if (delayedTapAction)
  {
    [(TSWPTwoPartAction *)delayedTapAction cancel];

    self->_delayedTapAction = 0;
  }
}

- (void)startDelayedTapAction:(id)action
{
  [(TSWPiOSCanvasViewController *)self cancelDelayedTapAction];
  actionCopy = action;
  self->_delayedTapAction = actionCopy;
  [(TSWPTwoPartAction *)actionCopy performStartAction];
  if ([(TSWPTwoPartAction *)self->_delayedTapAction performImmediately])
  {

    [(TSWPiOSCanvasViewController *)self finishDelayedTapAction];
  }
}

- (void)finishDelayedTapAction
{
  delayedTapAction = self->_delayedTapAction;
  if (delayedTapAction)
  {
    [(TSWPTwoPartAction *)delayedTapAction performFinishAction];

    self->_delayedTapAction = 0;
    if (TSUSupportsTextInteraction())
    {

      [(TSWPiOSCanvasViewController *)self performSelector:sel__resetAndClearInteractions withObject:0 afterDelay:0.12];
    }
  }
}

- (void)_resetAndClearInteractions
{
  [(TSWPiOSCanvasViewController *)self _clearSelectedRange];

  [(TSWPiOSCanvasViewController *)self _resetLinkInteraction];
}

- (void)_clearSelectedRange
{
  [MEMORY[0x277D82BB8] cancelPreviousPerformRequestsWithTarget:self selector:sel__resetAndClearInteractions object:0];
  objc_opt_class();
  [(TSDTextInputResponder *)[(TSDInteractiveCanvasController *)[(TSWPiOSCanvasViewController *)self interactiveCanvasController] textInputResponder] selectedTextRange];
  v3 = TSUDynamicCast();
  if (v3)
  {
    v4 = v3;
    [v3 setRange:{objc_msgSend(v3, "range"), 0}];
    textInputResponder = [(TSDInteractiveCanvasController *)[(TSWPiOSCanvasViewController *)self interactiveCanvasController] textInputResponder];

    [(TSDTextInputResponder *)textInputResponder setSelectedTextRange:v4];
  }
}

- (void)addSwipeGestureRecognizers
{
  if ((self->_leftSwipeGestureRecognizer || self->_rightSwipeGestureRecognizer) && [(TSWPiOSCanvasViewController *)self onlyAllowTextSwipesWhenEditing])
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPiOSCanvasViewController addSwipeGestureRecognizers]"];
    [currentHandler handleFailureInFunction:v4 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPiOSCanvasViewController.m"), 438, @"swipe gesture recognizers should be nil, this might mean we're calling this method without releasing them"}];
  }

  if (!self->_leftSwipeGestureRecognizer && !self->_rightSwipeGestureRecognizer || ![(TSWPiOSCanvasViewController *)self onlyAllowTextSwipesWhenEditing])
  {
    array = [MEMORY[0x277CBEB18] array];
    [array addObjectsFromArray:{-[NSSet allObjects](-[TSDiOSCanvasViewController panGestureRecognizers](self, "panGestureRecognizers"), "allObjects")}];
    [array addObject:{-[TSDiOSCanvasViewController zoomGestureRecognizer](self, "zoomGestureRecognizer")}];
    leftSwipeGestureRecognizer = self->_leftSwipeGestureRecognizer;
    if (!leftSwipeGestureRecognizer)
    {
      v7 = [(TSWPiOSCanvasViewController *)self p_newSwipeGestureRecognizerWithDirection:2 numberOfTouchesRequired:1];
      self->_leftSwipeGestureRecognizer = v7;
      [(TSWPiOSCanvasViewController *)self setUpGestureDependenciesForNewCopyOfTextGesture:v7];
      leftSwipeGestureRecognizer = self->_leftSwipeGestureRecognizer;
    }

    [(TSWPiOSCanvasViewController *)self p_addSwipeGestureRecognizer:leftSwipeGestureRecognizer failRequiredFor:array];
    rightSwipeGestureRecognizer = self->_rightSwipeGestureRecognizer;
    if (!rightSwipeGestureRecognizer)
    {
      v9 = [(TSWPiOSCanvasViewController *)self p_newSwipeGestureRecognizerWithDirection:1 numberOfTouchesRequired:1];
      self->_rightSwipeGestureRecognizer = v9;
      [(TSWPiOSCanvasViewController *)self setUpGestureDependenciesForNewCopyOfTextGesture:v9];
      rightSwipeGestureRecognizer = self->_rightSwipeGestureRecognizer;
    }

    [(TSWPiOSCanvasViewController *)self p_addSwipeGestureRecognizer:rightSwipeGestureRecognizer failRequiredFor:array];
    [(TSWPiOSCanvasViewController *)self p_addSwipeGestureRecognizer:[(TSWPiOSCanvasViewController *)self p_newSwipeGestureRecognizerWithDirection:4 numberOfTouchesRequired:1] failRequiredFor:array];
    [(TSWPiOSCanvasViewController *)self p_addSwipeGestureRecognizer:[(TSWPiOSCanvasViewController *)self p_newSwipeGestureRecognizerWithDirection:8 numberOfTouchesRequired:1] failRequiredFor:array];
    [(TSDiOSCanvasViewController *)self delegate];
    if ((objc_opt_respondsToSelector() & 1) == 0 || [(TSDiOSCanvasViewControllerDelegate *)[(TSDiOSCanvasViewController *)self delegate] canvasViewController:self enableSwipeGestureWithNumberOfTouches:2])
    {
      [(TSWPiOSCanvasViewController *)self p_addSwipeGestureRecognizer:[(TSWPiOSCanvasViewController *)self p_newSwipeGestureRecognizerWithDirection:2 numberOfTouchesRequired:2] failRequiredFor:array];
      [(TSWPiOSCanvasViewController *)self p_addSwipeGestureRecognizer:[(TSWPiOSCanvasViewController *)self p_newSwipeGestureRecognizerWithDirection:1 numberOfTouchesRequired:2] failRequiredFor:array];
      [(TSWPiOSCanvasViewController *)self p_addSwipeGestureRecognizer:[(TSWPiOSCanvasViewController *)self p_newSwipeGestureRecognizerWithDirection:4 numberOfTouchesRequired:2] failRequiredFor:array];
      [(TSWPiOSCanvasViewController *)self p_addSwipeGestureRecognizer:[(TSWPiOSCanvasViewController *)self p_newSwipeGestureRecognizerWithDirection:8 numberOfTouchesRequired:2] failRequiredFor:array];
    }

    [(TSDiOSCanvasViewController *)self delegate];
    if ((objc_opt_respondsToSelector() & 1) == 0 || [(TSDiOSCanvasViewControllerDelegate *)[(TSDiOSCanvasViewController *)self delegate] canvasViewController:self enableSwipeGestureWithNumberOfTouches:3])
    {
      [(TSWPiOSCanvasViewController *)self p_addSwipeGestureRecognizer:[(TSWPiOSCanvasViewController *)self p_newSwipeGestureRecognizerWithDirection:2 numberOfTouchesRequired:3] failRequiredFor:array];
      [(TSWPiOSCanvasViewController *)self p_addSwipeGestureRecognizer:[(TSWPiOSCanvasViewController *)self p_newSwipeGestureRecognizerWithDirection:1 numberOfTouchesRequired:3] failRequiredFor:array];
      [(TSWPiOSCanvasViewController *)self p_addSwipeGestureRecognizer:[(TSWPiOSCanvasViewController *)self p_newSwipeGestureRecognizerWithDirection:4 numberOfTouchesRequired:3] failRequiredFor:array];
      v10 = [(TSWPiOSCanvasViewController *)self p_newSwipeGestureRecognizerWithDirection:8 numberOfTouchesRequired:3];

      [(TSWPiOSCanvasViewController *)self p_addSwipeGestureRecognizer:v10 failRequiredFor:array];
    }
  }
}

- (void)removeSwipeGestureRecognizers
{
  v15 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  view = [-[TSWPiOSCanvasViewController view](self view];
  v4 = [view countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      v7 = 0;
      do
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(view);
        }

        objc_opt_class();
        v8 = TSUDynamicCast();
        if (v8)
        {
          v9 = v8;
          [-[TSWPiOSCanvasViewController view](self "view")];
          [(NSMutableArray *)self->_gestureRecognizers removeObject:v9];
          [(TSDGestureDispatcher *)[(TSDInteractiveCanvasController *)[(TSWPiOSCanvasViewController *)self interactiveCanvasController] gestureDispatcher] gestureRemovedFromView:v9];
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [view countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  self->_leftSwipeGestureRecognizer = 0;
  self->_rightSwipeGestureRecognizer = 0;
}

- (id)_dragItemsForInteraction:(id)interaction session:(id)session withTouchAtPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  v15[1] = *MEMORY[0x277D85DE8];
  objc_opt_class();
  [(TSDEditorController *)[(TSDInteractiveCanvasController *)[(TSWPiOSCanvasViewController *)self interactiveCanvasController] editorController] textInputEditor];
  v10 = TSUDynamicCast();
  v11 = v10;
  if (v10)
  {
    v12 = [v10 dragItemForCurrentSelectionWithDragInteraction:interaction session:session withTouchPoint:{x, y}];
  }

  else
  {
    v12 = [TSWPEditingController dragItemForHitRepWithDragInteraction:interaction session:session canvasView:[(TSWPiOSCanvasViewController *)self view] icc:[(TSWPiOSCanvasViewController *)self interactiveCanvasController] withTouchPoint:x, y];
  }

  v13 = v12;
  if (!v12)
  {
    return MEMORY[0x277CBEBF8];
  }

  [v11 setSelection:0];
  v15[0] = v13;
  return [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:1];
}

- (id)dragInteraction:(id)interaction itemsForBeginningSession:(id)session
{
  [session locationInView:{-[TSWPiOSCanvasViewController view](self, "view")}];

  return [(TSWPiOSCanvasViewController *)self _dragItemsForInteraction:interaction session:session withTouchAtPoint:?];
}

- (void)dragInteraction:(id)interaction willAnimateLiftWithAnimator:(id)animator session:(id)session
{
  [(TSWPLongPressGestureRecognizer *)[(TSWPiOSCanvasViewController *)self longPressGestureRecognizer:interaction] setEnabled:0];
  longPressGestureRecognizer = [(TSWPiOSCanvasViewController *)self longPressGestureRecognizer];

  [(TSWPLongPressGestureRecognizer *)longPressGestureRecognizer setEnabled:1];
}

- (id)dragInteraction:(id)interaction previewForCancellingItem:(id)item withDefault:(id)default
{
  view = [(TSWPiOSCanvasViewController *)self view];
  interactiveCanvasController = [(TSWPiOSCanvasViewController *)self interactiveCanvasController];

  return [TSWPEditingController retargetedDragItem:item withDefault:default canvasView:view icc:interactiveCanvasController];
}

- (TSWPInteractiveCanvasController)interactiveCanvasController
{
  objc_opt_class();

  return TSUDynamicCast();
}

- (void)p_addSwipeGestureRecognizer:(id)recognizer failRequiredFor:(id)for
{
  v16 = *MEMORY[0x277D85DE8];
  [-[TSWPiOSCanvasViewController view](self "view")];
  [(NSMutableArray *)self->_gestureRecognizers addObject:recognizer];
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v7 = [for countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v12;
    do
    {
      v10 = 0;
      do
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(for);
        }

        [*(*(&v11 + 1) + 8 * v10++) requireGestureRecognizerToFail:recognizer];
      }

      while (v8 != v10);
      v8 = [for countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }
}

- (id)p_newSwipeGestureRecognizerWithDirection:(int)direction numberOfTouchesRequired:(unsigned int)required
{
  v5 = *&direction;
  if (required == 3)
  {
    v6 = TSWPThreeFingerSwipe;
  }

  else
  {
    v6 = TSWPTwoFingerSwipe;
    if (required != 2)
    {
      v6 = TSWPOneFingerSwipe;
    }
  }

  v7 = [(UIGestureRecognizer *)[TSWPSwipeGestureRecognizer alloc] initWithGestureDispatcher:[(TSDInteractiveCanvasController *)[(TSWPiOSCanvasViewController *)self interactiveCanvasController] gestureDispatcher] gestureKind:*v6];
  [(TSWPSwipeGestureRecognizer *)v7 setNumberOfTouchesRequired:required];
  [(TSWPSwipeGestureRecognizer *)v7 setDirection:v5];
  [(TSWPSwipeGestureRecognizer *)v7 setAllowedTouchTypes:&unk_287DDCC00];
  return v7;
}

- (id)_hitRepAtPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  interactiveCanvasController = [(TSWPiOSCanvasViewController *)self interactiveCanvasController];
  [(TSDInteractiveCanvasController *)interactiveCanvasController convertUnscaledToBoundsPoint:x, y];
  v8 = v7;
  v10 = v9;
  [(TSDInteractiveCanvasController *)interactiveCanvasController convertBoundsToUnscaledPoint:x, y];
  v12 = v11;
  v14 = v13;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3052000000;
  v27 = __Block_byref_object_copy__23;
  v28 = __Block_byref_object_dispose__23;
  v29 = 0;
  _textInteractionBlockingRepClasses = [(TSWPiOSCanvasViewController *)self _textInteractionBlockingRepClasses];
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  objc_opt_class();
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __46__TSWPiOSCanvasViewController__hitRepAtPoint___block_invoke;
  v19[3] = &unk_279D49D80;
  v19[8] = v8;
  v19[9] = v10;
  v19[4] = interactiveCanvasController;
  v19[5] = _textInteractionBlockingRepClasses;
  v19[6] = &v24;
  v19[7] = &v20;
  [(TSDInteractiveCanvasController *)interactiveCanvasController hitRep:0 withGesture:v19 passingTest:v12, v14];
  v16 = TSUDynamicCast();
  if (!v16)
  {
    if (v25[5])
    {
      v16 = 0;
    }

    else
    {
      v16 = [(TSWPInteractiveCanvasController *)interactiveCanvasController closestRepToPoint:v12, v14];
      if (v16)
      {
        [(TSDInteractiveCanvasController *)interactiveCanvasController beginEditingRep:v16];
      }
    }
  }

  if (*(v21 + 24))
  {
    v17 = 0;
  }

  else
  {
    v17 = v16;
  }

  _Block_object_dispose(&v20, 8);
  _Block_object_dispose(&v24, 8);
  return v17;
}

BOOL __46__TSWPiOSCanvasViewController__hitRepAtPoint___block_invoke(uint64_t a1)
{
  objc_opt_class();
  v2 = TSUDynamicCast();
  v3 = v2;
  if (v2)
  {
    [v2 convertNaturalPointFromUnscaledCanvas:{*(a1 + 64), *(a1 + 72)}];
    v5 = v4;
    v7 = v6;
    objc_opt_class();
    [v3 smartFieldAtPoint:{v5, v7}];
    *(*(*(a1 + 48) + 8) + 40) = TSUDynamicCast();
    if (!*(*(*(a1 + 48) + 8) + 40))
    {
      [*(a1 + 32) beginEditingRep:v3];
    }
  }

  else if ([*(a1 + 40) containsObject:objc_opt_class()])
  {
    *(*(*(a1 + 56) + 8) + 24) = 1;
  }

  return v3 != 0;
}

- (id)_hyperLinkFieldAtPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  interactiveCanvasController = [(TSWPiOSCanvasViewController *)self interactiveCanvasController];
  [(TSDInteractiveCanvasController *)interactiveCanvasController convertBoundsToUnscaledPoint:x, y];
  v7 = v6;
  v9 = v8;
  [(TSDInteractiveCanvasController *)interactiveCanvasController convertBoundsToUnscaledPoint:x, y];
  v13 = 0;
  v14 = &v13;
  v15 = 0x3052000000;
  v16 = __Block_byref_object_copy__23;
  v17 = __Block_byref_object_dispose__23;
  v18 = 0;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __54__TSWPiOSCanvasViewController__hyperLinkFieldAtPoint___block_invoke;
  v12[3] = &unk_279D49DA8;
  v12[5] = v7;
  v12[6] = v9;
  v12[4] = &v13;
  [(TSDInteractiveCanvasController *)interactiveCanvasController hitRep:0 withGesture:v12 passingTest:?];
  v10 = v14[5];
  _Block_object_dispose(&v13, 8);
  return v10;
}

uint64_t __54__TSWPiOSCanvasViewController__hyperLinkFieldAtPoint___block_invoke(uint64_t a1)
{
  objc_opt_class();
  result = TSUDynamicCast();
  if (result)
  {
    v3 = result;
    [result convertNaturalPointFromUnscaledCanvas:{*(a1 + 40), *(a1 + 48)}];
    v5 = v4;
    v7 = v6;
    objc_opt_class();
    [v3 smartFieldAtPoint:{v5, v7}];
    result = TSUDynamicCast();
    if (result)
    {
      *(*(*(a1 + 32) + 8) + 40) = result;
      return 1;
    }
  }

  return result;
}

- (BOOL)interactionShouldBegin:(id)begin atPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  v7 = TSUSupportsTextInteraction();
  if (v7)
  {

    LOBYTE(v7) = [(TSWPiOSCanvasViewController *)self _shouldAllowInteractionAtPoint:x, y];
  }

  return v7;
}

- (void)_resetLinkInteraction
{
  if (TSUSupportsTextInteraction())
  {
    self->_interactionHyperlinkField = 0;
    self->_isInteractingWithHyperLink = 0;
    self->_linkInteractionIsLongPress = 0;
  }
}

- (void)tapLinkAtPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  if (TSUSupportsTextInteraction())
  {
    [(TSWPiOSCanvasViewController *)self startInteractionWithLinkAtPoint:x, y];

    [(TSWPiOSCanvasViewController *)self validateInteractionWithLinkAtPoint:x, y];
  }
}

- (void)startInteractionWithLinkAtPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  if (TSUSupportsTextInteraction())
  {
    self->_interactionHyperlinkField = [(TSWPiOSCanvasViewController *)self _hyperLinkFieldAtPoint:x, y];
    self->_interactionHyperLinkRep = [(TSWPiOSCanvasViewController *)self _hitRepAtPoint:x, y];
    self->_isInteractingWithHyperLink = 1;
  }
}

- (void)validateInteractionWithLinkAtPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  if (TSUSupportsTextInteraction() && self->_isInteractingWithHyperLink)
  {
    if ([-[TSWPiOSCanvasViewController _hyperLinkFieldAtPoint:](self _hyperLinkFieldAtPoint:{x, y), "isEqual:", self->_interactionHyperlinkField}])
    {
      self->_isInteractingWithHyperLink = 0;
      if (objc_opt_respondsToSelector())
      {
        if (self->_linkInteractionIsLongPress)
        {
          v6 = TSWPLongPress;
        }

        else
        {
          v6 = TSWPImmediateSingleTap;
        }

        v7 = [[TSWPDummyTapGesture alloc] initWithKind:*v6];
        v8 = [(TSWPiOSCanvasViewController *)self actionForHyperlink:self->_interactionHyperlinkField inRep:self->_interactionHyperLinkRep gesture:v7];
      }

      else
      {
        v8 = [TSWPHyperlinkAction hyperlinkActionWithHyperlink:self->_interactionHyperlinkField inRep:self->_interactionHyperLinkRep action:&__block_literal_global_44];
      }

      [(TSWPiOSCanvasViewController *)self startDelayedTapAction:v8];
    }

    else
    {

      [(TSWPiOSCanvasViewController *)self cancelInteractionWithLink];
    }
  }
}

uint64_t __66__TSWPiOSCanvasViewController_validateInteractionWithLinkAtPoint___block_invoke()
{
  v0 = +[TSWPHyperlinkUIController sharedHyperlinkUIController];

  return [v0 visit];
}

- (void)cancelInteractionWithLink
{
  if (TSUSupportsTextInteraction())
  {

    [(TSWPiOSCanvasViewController *)self _resetAndClearInteractions];
  }
}

- (void)startLongInteractionWithLinkAtPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  if (TSUSupportsTextInteraction())
  {
    self->_linkInteractionIsLongPress = 1;

    [(TSWPiOSCanvasViewController *)self validateInteractionWithLinkAtPoint:x, y];
  }
}

- (BOOL)willInteractWithLinkAtPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  v6 = TSUSupportsTextInteraction();
  if (v6)
  {
    LOBYTE(v6) = [(TSWPiOSCanvasViewController *)self _hyperLinkFieldAtPoint:x, y]!= 0;
  }

  return v6;
}

- (void)_requestTextItemConstrainedToLineAtPoint:(CGPoint)point resultHandler:(id)handler
{
  y = point.y;
  x = point.x;
  interactiveCanvasController = [(TSWPiOSCanvasViewController *)self interactiveCanvasController];
  [(TSDInteractiveCanvasController *)interactiveCanvasController convertUnscaledToBoundsPoint:x, y];
  v9 = v8;
  v11 = v10;
  [(TSDInteractiveCanvasController *)interactiveCanvasController convertBoundsToUnscaledPoint:x, y];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __86__TSWPiOSCanvasViewController__requestTextItemConstrainedToLineAtPoint_resultHandler___block_invoke;
  v12[3] = &unk_279D49DD0;
  v12[6] = v9;
  v12[7] = v11;
  *&v12[8] = x;
  *&v12[9] = y;
  v12[4] = interactiveCanvasController;
  v12[5] = handler;
  [(TSDInteractiveCanvasController *)interactiveCanvasController hitRep:0 withGesture:v12 passingTest:?];
}

BOOL __86__TSWPiOSCanvasViewController__requestTextItemConstrainedToLineAtPoint_resultHandler___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  objc_opt_class();
  v2 = TSUDynamicCast();
  v3 = v2;
  if (v2)
  {
    [v2 convertNaturalPointFromUnscaledCanvas:{*(a1 + 48), *(a1 + 56)}];
    v4 = [v3 hyperlinkRegionsConstrainedToLineAtPoint:?];
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v15;
      while (2)
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v15 != v7)
          {
            objc_enumerationMutation(v4);
          }

          [*(*(&v14 + 1) + 8 * i) CGRectValue];
          [v3 convertNaturalRectToUnscaledCanvas:?];
          [*(a1 + 32) convertUnscaledToBoundsRect:?];
          x = v20.origin.x;
          y = v20.origin.y;
          width = v20.size.width;
          height = v20.size.height;
          if (CGRectContainsPoint(v20, *(a1 + 64)))
          {
            (*(*(a1 + 40) + 16))(x, y, width, height);
            return v3 != 0;
          }
        }

        v6 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }
    }
  }

  return v3 != 0;
}

@end