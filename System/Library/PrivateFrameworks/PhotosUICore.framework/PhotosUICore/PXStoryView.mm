@interface PXStoryView
+ (NSString)allDiagnosticDescriptions;
+ (void)dumpTapToRadarDiagnosticAttachmentsToURL:(id)l completionHandler:(id)handler;
- (BOOL)_canNavigateToSelectedRelated;
- (BOOL)_handlePrimaryInteractionAtPoint:(CGPoint)point;
- (BOOL)gestureRecognizer:(id)recognizer shouldBeRequiredToFailByGestureRecognizer:(id)gestureRecognizer;
- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch;
- (BOOL)gestureRecognizer:(id)recognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)gestureRecognizer;
- (BOOL)gestureRecognizerShouldBegin:(id)begin;
- (BOOL)verticalSwipeGestureRecognizerHelper:(id)helper shouldRecognizeSwipeDownGestureRecognizer:(id)recognizer;
- (NSMutableArray)lastDemotedDisplayAssets;
- (PXGView)tungstenView;
- (PXStoryView)initWithCoder:(id)coder;
- (PXStoryView)initWithFrame:(CGRect)frame;
- (PXStoryView)initWithFrame:(CGRect)frame configuration:(id)configuration;
- (PXStoryViewDismissalController)dismissalController;
- (id)_storyHitTestResultAtPoint:(CGPoint)point;
- (id)itemPlacementControllerForItemReference:(id)reference;
- (id)mainItemReference;
- (void)_changeColorGrade;
- (void)_changeOverallDuration:(int64_t)duration;
- (void)_changeStyle;
- (void)_considerUpdatingFocusForChrome;
- (void)_considerUpdatingFocusForInfoPanel;
- (void)_considerUpdatingFocusForRelatedOverlay;
- (void)_editCurrentChapter;
- (void)_handleAnyTouchOrPressGesture:(id)gesture;
- (void)_handleArrowButton:(id)button;
- (void)_handleEdgeTap:(unint64_t)tap;
- (void)_handleLongPress:(id)press;
- (void)_handleMenuGestureRecognizer:(id)recognizer;
- (void)_handlePanDown:(id)down;
- (void)_handlePlayPauseGesture:(id)gesture;
- (void)_handleRelatedKeyboardNavigation:(unint64_t)navigation;
- (void)_handleSwipeGesture:(id)gesture;
- (void)_handleTap:(id)tap;
- (void)_handleTwoFingerTap:(id)tap;
- (void)_hideRelatedOverlay;
- (void)_initializeGestureRecognizers;
- (void)_invalidateBackgroundColor;
- (void)_invalidateGestureRecognizers;
- (void)_invalidateMainModel;
- (void)_moveLeftAfterEdgeTap:(BOOL)tap;
- (void)_moveRightAfterEdgeTap:(BOOL)tap;
- (void)_navigateToSelectedRelated;
- (void)_skipToSegmentWithOffset:(int64_t)offset afterEdgeTap:(BOOL)tap;
- (void)_toggleChrome;
- (void)_togglePlayback;
- (void)_updateBackgroundColor;
- (void)_updateGestureRecognizers;
- (void)_updateMainModel;
- (void)cancelOperation:(id)operation;
- (void)collectTapToRadarDiagnosticsIntoContainer:(id)container;
- (void)insertNewline:(id)newline;
- (void)insertText:(id)text;
- (void)layoutSubviews;
- (void)moveLeft:(id)left;
- (void)moveRight:(id)right;
- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context;
- (void)setIsActive:(BOOL)active;
- (void)setIsTouching:(BOOL)touching;
- (void)setMainModel:(id)model;
@end

@implementation PXStoryView

- (void)collectTapToRadarDiagnosticsIntoContainer:(id)container
{
  containerCopy = container;
  viewModel = [(PXStoryView *)self viewModel];
  [containerCopy addSubprovider:viewModel];

  tungstenView = [(PXStoryView *)self tungstenView];
  [containerCopy addSubprovider:tungstenView];

  viewLayout = [(PXStoryView *)self viewLayout];
  [containerCopy addSubprovider:viewLayout];
}

- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context
{
  observableCopy = observable;
  if (ViewModelObservationContext_106154 == context)
  {
    v11 = observableCopy;
    if ((change & 0x2008) != 0)
    {
      [(PXStoryView *)self _invalidateGestureRecognizers];
      observableCopy = v11;
    }

    if ((change & 0x10400000020) != 0)
    {
      [(PXStoryView *)self _invalidateBackgroundColor];
      observableCopy = v11;
    }

    if ((change & 0x40) != 0)
    {
      [(PXStoryView *)self _invalidateMainModel];
      observableCopy = v11;
    }
  }

  else if (ModelObservationContext_106155 != context)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXStoryView.m" lineNumber:1170 description:@"Code which should be unreachable has been reached"];

    abort();
  }
}

- (void)setMainModel:(id)model
{
  modelCopy = model;
  mainModel = self->_mainModel;
  if (mainModel != modelCopy)
  {
    v7 = modelCopy;
    [(PXStoryModel *)mainModel unregisterChangeObserver:self context:ModelObservationContext_106155];
    objc_storeStrong(&self->_mainModel, model);
    [(PXStoryModel *)self->_mainModel registerChangeObserver:self context:ModelObservationContext_106155];
    modelCopy = v7;
  }
}

- (void)_updateMainModel
{
  viewModel = [(PXStoryView *)self viewModel];
  mainModel = [viewModel mainModel];
  [(PXStoryView *)self setMainModel:mainModel];
}

- (void)_invalidateMainModel
{
  updater = [(PXStoryView *)self updater];
  [updater setNeedsUpdateOf:sel__updateMainModel];
}

- (void)_updateBackgroundColor
{
  viewModel = [(PXStoryView *)self viewModel];
  viewLayoutSpec = [viewModel viewLayoutSpec];
  viewModeTransition = [viewModel viewModeTransition];
  if ([viewModel viewMode] == 2 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && !objc_msgSend(viewModeTransition, "isComplete"))
  {
    browseGridBackgroundColor = [viewLayoutSpec browseGridBackgroundColor];
  }

  else
  {
    browseGridBackgroundColor = [viewLayoutSpec playerBackgroundColor];
  }

  v6 = browseGridBackgroundColor;
  tungstenView = [(PXStoryView *)self tungstenView];
  [tungstenView setBackgroundColor:v6];
}

- (void)_invalidateBackgroundColor
{
  updater = [(PXStoryView *)self updater];
  [updater setNeedsUpdateOf:sel__updateBackgroundColor];
}

- (void)_updateGestureRecognizers
{
  v21 = *MEMORY[0x1E69E9840];
  viewModel = [(PXStoryView *)self viewModel];
  wantsChromeVisible = [viewModel wantsChromeVisible];

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  swipeGestureRecognizers = [(PXStoryView *)self swipeGestureRecognizers];
  v6 = [swipeGestureRecognizers countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    do
    {
      v9 = 0;
      do
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(swipeGestureRecognizers);
        }

        [*(*(&v16 + 1) + 8 * v9++) setEnabled:1];
      }

      while (v7 != v9);
      v7 = [swipeGestureRecognizers countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v7);
  }

  viewModel2 = [(PXStoryView *)self viewModel];
  v11 = [viewModel2 viewMode] == 1;
  panUpGestureRecognizer = [(PXStoryView *)self panUpGestureRecognizer];
  [panUpGestureRecognizer setEnabled:v11];

  viewModel3 = [(PXStoryView *)self viewModel];
  viewMode = [viewModel3 viewMode];

  if (viewMode != 1)
  {
    wantsChromeVisible = viewMode == 4 || viewMode == 2;
  }

  menuGestureRecognizer = [(PXStoryView *)self menuGestureRecognizer];
  [menuGestureRecognizer setEnabled:wantsChromeVisible];
}

- (void)_invalidateGestureRecognizers
{
  updater = [(PXStoryView *)self updater];
  [updater setNeedsUpdateOf:sel__updateGestureRecognizers];
}

- (void)layoutSubviews
{
  updater = [(PXStoryView *)self updater];
  [updater updateIfNeeded];

  v4.receiver = self;
  v4.super_class = PXStoryView;
  [(PXStoryView *)&v4 layoutSubviews];
}

- (BOOL)verticalSwipeGestureRecognizerHelper:(id)helper shouldRecognizeSwipeDownGestureRecognizer:(id)recognizer
{
  recognizerCopy = recognizer;
  panDownGestureRecognizer = [(PXStoryView *)self panDownGestureRecognizer];

  if (panDownGestureRecognizer == recognizerCopy)
  {
    viewModel = [(PXStoryView *)self viewModel];
    v7 = [viewModel isModalInPresentation] ^ 1;
  }

  else
  {
    LOBYTE(v7) = 1;
  }

  return v7;
}

- (BOOL)gestureRecognizer:(id)recognizer shouldBeRequiredToFailByGestureRecognizer:(id)gestureRecognizer
{
  recognizerCopy = recognizer;
  gestureRecognizerCopy = gestureRecognizer;
  panUpGestureRecognizer = [(PXStoryView *)self panUpGestureRecognizer];
  if (panUpGestureRecognizer != recognizerCopy)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {

LABEL_6:
      panDownGestureRecognizer = [(PXStoryView *)self panDownGestureRecognizer];

      if (panDownGestureRecognizer == recognizerCopy)
      {
        swipeDownGestureHelper = [(PXStoryView *)self swipeDownGestureHelper];
        v10 = [swipeDownGestureHelper verticalSwipeGestureRecognizer:recognizerCopy shouldBeRequiredToFailByGestureRecognizer:gestureRecognizerCopy];
      }

      else
      {
        longPressGestureRecognizer = [(PXStoryView *)self longPressGestureRecognizer];

        if (longPressGestureRecognizer != recognizerCopy)
        {
          v10 = 0;
          goto LABEL_12;
        }

        swipeDownGestureHelper = [(PXStoryView *)self panDownGestureRecognizer];
        v10 = swipeDownGestureHelper == gestureRecognizerCopy;
      }

      goto LABEL_12;
    }
  }

  v9 = [gestureRecognizerCopy px_isPanGestureRecognizerOfScrollView:0];

  if ((v9 & 1) == 0)
  {
    goto LABEL_6;
  }

  v10 = 1;
LABEL_12:

  return v10;
}

- (BOOL)gestureRecognizerShouldBegin:(id)begin
{
  beginCopy = begin;
  if ([(PXStoryView *)self disableGestures])
  {
    v5 = 0;
  }

  else
  {
    panDownGestureRecognizer = [(PXStoryView *)self panDownGestureRecognizer];

    if (panDownGestureRecognizer == beginCopy)
    {
      swipeDownGestureHelper = [(PXStoryView *)self swipeDownGestureHelper];
      v5 = [swipeDownGestureHelper verticalSwipeGestureRecognizerShouldBegin:beginCopy ignoringScrollViews:1];
    }

    else
    {
      panUpGestureRecognizer = [(PXStoryView *)self panUpGestureRecognizer];

      if (panUpGestureRecognizer == beginCopy)
      {
        panUpGestureRecognizer2 = [(PXStoryView *)self panUpGestureRecognizer];
        tungstenView = [(PXStoryView *)self tungstenView];
        [panUpGestureRecognizer2 velocityInView:tungstenView];
        v12 = v11;
        v14 = v13;

        MEMORY[0x1A590C810](v14, v12);
        PXRadiansToDegrees();
      }

      v5 = 1;
    }
  }

  return v5;
}

- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch
{
  recognizerCopy = recognizer;
  touchCopy = touch;
  if ([(PXStoryView *)self disableGestures])
  {
    v8 = 0;
  }

  else
  {
    [touchCopy locationInView:self];
    v9 = [(PXStoryView *)self hitTest:0 withEvent:?];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    anyIndirectTouchGestureRecognizer = [(PXStoryView *)self anyIndirectTouchGestureRecognizer];
    if (anyIndirectTouchGestureRecognizer == recognizerCopy)
    {
      v8 = 1;
    }

    else
    {
      anyPressGestureRecognizer = [(PXStoryView *)self anyPressGestureRecognizer];
      v13 = anyPressGestureRecognizer == recognizerCopy;

      v8 = v13 | isKindOfClass ^ 1;
    }
  }

  return v8 & 1;
}

- (BOOL)gestureRecognizer:(id)recognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)gestureRecognizer
{
  touchingGestureRecognizer = self->_touchingGestureRecognizer;
  recognizerCopy = recognizer;
  anyIndirectTouchGestureRecognizer = [(PXStoryView *)self anyIndirectTouchGestureRecognizer];

  anyPressGestureRecognizer = [(PXStoryView *)self anyPressGestureRecognizer];

  return anyPressGestureRecognizer == recognizerCopy || anyIndirectTouchGestureRecognizer == recognizerCopy || touchingGestureRecognizer == recognizer;
}

- (void)_considerUpdatingFocusForInfoPanel
{
  mainModel = [(PXStoryView *)self mainModel];
  [mainModel desiredInfoPanelVisibilityFraction];
  if (v3 == 0.0)
  {
    mainModel2 = [(PXStoryView *)self mainModel];
    [mainModel2 infoPanelVisibilityFraction];
    v6 = v5;

    if (v6 == 0.0)
    {

      [(PXStoryView *)self setNeedsFocusUpdate];
    }
  }

  else
  {
  }
}

- (void)_considerUpdatingFocusForRelatedOverlay
{
  viewModel = [(PXStoryView *)self viewModel];
  wantsRelatedOverlayVisible = [viewModel wantsRelatedOverlayVisible];
  [viewModel relatedOverlayVisibilityFraction];
  v5 = v4 != 1.0;
  if (!wantsRelatedOverlayVisible)
  {
    v5 = v4 != 0.0;
  }

  if (!v5)
  {
    [(PXStoryView *)self setNeedsFocusUpdate];
  }
}

- (void)_considerUpdatingFocusForChrome
{
  viewModel = [(PXStoryView *)self viewModel];
  wantsChromeVisible = [viewModel wantsChromeVisible];
  [viewModel chromeVisibilityFraction];
  v5 = v4 != 1.0;
  if (!wantsChromeVisible)
  {
    v5 = v4 != 0.0;
  }

  if (!v5)
  {
    [(PXStoryView *)self setNeedsFocusUpdate];
  }
}

- (void)_handleTwoFingerTap:(id)tap
{
  if ([tap state] != 3)
  {
    return;
  }

  v4 = +[PXStorySettings sharedInstance];
  twoFingerTapAction = [v4 twoFingerTapAction];

  if (twoFingerTapAction <= 2)
  {
    if (twoFingerTapAction == 1)
    {
      viewModel = [(PXStoryView *)self viewModel];
      v8 = viewModel;
      v7 = &__block_literal_global_488;
    }

    else
    {
      if (twoFingerTapAction != 2)
      {
        return;
      }

      viewModel = [(PXStoryView *)self viewModel];
      v8 = viewModel;
      v7 = &__block_literal_global_490;
    }

LABEL_18:
    [viewModel performChanges:v7];

    return;
  }

  if (twoFingerTapAction != 3)
  {
    if (twoFingerTapAction != 4)
    {
      if (twoFingerTapAction == 5)
      {

        [(PXStoryView *)self _editCurrentChapter];
      }

      return;
    }

    viewModel = [(PXStoryView *)self viewModel];
    v8 = viewModel;
    v7 = &__block_literal_global_492_106172;
    goto LABEL_18;
  }

  [(PXStoryView *)self _changeStyle];
}

void __35__PXStoryView__handleTwoFingerTap___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setWantsRelatedOverlayVisible:{objc_msgSend(v2, "wantsRelatedOverlayVisible") ^ 1}];
}

- (void)_handlePanDown:(id)down
{
  v66 = *MEMORY[0x1E69E9840];
  downCopy = down;
  viewModel = [(PXStoryView *)self viewModel];
  v7 = +[PXStorySettings sharedInstance];
  swipeDownBehavior = [v7 swipeDownBehavior];

  if ((swipeDownBehavior - 1) < 2)
  {
    tungstenView = [(PXStoryView *)self tungstenView];
    [downCopy lastTouchTimestamp];
    v11 = v10;
    state = [downCopy state];
    if (state > 2)
    {
      if ((state - 3) >= 3)
      {
        goto LABEL_32;
      }
    }

    else if (state)
    {
      if (state == 1)
      {
        viewModeTransition = [viewModel viewModeTransition];

        if (viewModeTransition)
        {
          currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
          [currentHandler handleFailureInMethod:a2 object:self file:@"PXStoryView.m" lineNumber:796 description:@"Shuld not have a viewModeTransition at this point"];
        }

        [downCopy locationInView:tungstenView];
        v22 = v21;
        v24 = v23;
        [downCopy velocityInView:tungstenView];
        v26 = v25;
        v28 = v27;
        v61 = 0u;
        v62 = 0u;
        v63 = 0u;
        v64 = 0u;
        tungstenView2 = [(PXStoryView *)self tungstenView];
        v30 = [tungstenView2 hitTestResultsAtPoint:{v22, v24}];

        clipIdentifier = [v30 countByEnumeratingWithState:&v61 objects:v65 count:16];
        if (clipIdentifier)
        {
          v32 = *v62;
          while (2)
          {
            for (i = 0; i != clipIdentifier; ++i)
            {
              if (*v62 != v32)
              {
                objc_enumerationMutation(v30);
              }

              v34 = *(*(&v61 + 1) + 8 * i);
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) != 0 && [v34 clipIdentifier])
              {
                clipIdentifier = [v34 clipIdentifier];
                goto LABEL_31;
              }
            }

            clipIdentifier = [v30 countByEnumeratingWithState:&v61 objects:v65 count:16];
            if (clipIdentifier)
            {
              continue;
            }

            break;
          }
        }

LABEL_31:

        v49[0] = MEMORY[0x1E69E9820];
        v49[1] = 3221225472;
        v49[2] = __30__PXStoryView__handlePanDown___block_invoke;
        v49[3] = &unk_1E7738E50;
        v51 = v22;
        v52 = v24;
        v53 = v22;
        v54 = v24;
        v55 = v26;
        v56 = v28;
        v57 = tungstenView;
        v58 = v11;
        v59 = v11;
        v50 = viewModel;
        v60 = clipIdentifier;
        [v50 performChanges:v49];

        goto LABEL_32;
      }

      if (state == 2)
      {
        v48 = 0;
        v46 = 0u;
        v47 = 0u;
        v44 = 0u;
        v45 = 0u;
        if (viewModel)
        {
          [viewModel swipeDownInteractionState];
        }

        [downCopy locationInView:tungstenView];
        *&v45 = v13;
        *(&v45 + 1) = v14;
        [downCopy velocityInView:tungstenView];
        *&v46 = v15;
        *(&v46 + 1) = v16;
        v48 = v11;
        v38[0] = MEMORY[0x1E69E9820];
        v38[1] = 3221225472;
        v38[2] = __30__PXStoryView__handlePanDown___block_invoke_3;
        v38[3] = &__block_descriptor_104_e35_v16__0___PXStoryMutableViewModel__8lu80l8;
        v40 = v45;
        v39 = v44;
        v41 = v46;
        v42 = v47;
        v43 = v11;
        v17 = v38;
LABEL_17:
        [viewModel performChanges:v17];
      }

LABEL_32:

      goto LABEL_33;
    }

    v48 = 0;
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    if (viewModel)
    {
      [viewModel swipeDownInteractionState];
    }

    v36[2] = v46;
    v36[3] = v47;
    v37 = v48;
    v36[0] = v44;
    v36[1] = v45;
    if (PXStorySwipeDownInteractionStateEqualsState(v36, &PXStorySwipeDownInteractionStateNull))
    {
      goto LABEL_32;
    }

    v17 = &__block_literal_global_486;
    goto LABEL_17;
  }

  if (!swipeDownBehavior)
  {
    viewLayoutSpec = [viewModel viewLayoutSpec];
    wantsSwipeDownGestureToDismiss = [viewLayoutSpec wantsSwipeDownGestureToDismiss];

    if (wantsSwipeDownGestureToDismiss)
    {
      tungstenView = [(PXStoryView *)self dismissalController];
      [tungstenView handlePanDownGestureRecognizer:downCopy];
      goto LABEL_32;
    }
  }

LABEL_33:
}

void __30__PXStoryView__handlePanDown___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 56);
  v4 = *(a1 + 88);
  v7[2] = *(a1 + 72);
  v7[3] = v4;
  v8 = *(a1 + 104);
  v7[0] = *(a1 + 40);
  v7[1] = v3;
  [a2 setSwipeDownInteractionState:v7];
  v5 = [*(a1 + 32) mainModel];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __30__PXStoryView__handlePanDown___block_invoke_2;
  v6[3] = &__block_descriptor_40_e31_v16__0___PXStoryMutableModel__8l;
  v6[4] = *(a1 + 112);
  [v5 performChanges:v6];
}

uint64_t __30__PXStoryView__handlePanDown___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = *(a1 + 80);
  v5[2] = *(a1 + 64);
  v5[3] = v2;
  v6 = *(a1 + 96);
  v3 = *(a1 + 48);
  v5[0] = *(a1 + 32);
  v5[1] = v3;
  return [a2 setSwipeDownInteractionState:v5];
}

uint64_t __30__PXStoryView__handlePanDown___block_invoke_4(uint64_t a1, void *a2)
{
  v4 = 0;
  memset(v3, 0, sizeof(v3));
  return [a2 setSwipeDownInteractionState:v3];
}

void __30__PXStoryView__handlePanDown___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setLastHitAssetReference:0];
  [v3 setLastHitClipIdentifier:*(a1 + 32)];
  [v3 setViewMode:2];
}

- (PXStoryViewDismissalController)dismissalController
{
  dismissalController = self->_dismissalController;
  if (!dismissalController)
  {
    v4 = [PXStoryViewDismissalController alloc];
    viewModel = [(PXStoryView *)self viewModel];
    v6 = [(PXStoryViewDismissalController *)v4 initWithViewModel:viewModel];
    v7 = self->_dismissalController;
    self->_dismissalController = v6;

    dismissalController = self->_dismissalController;
  }

  return dismissalController;
}

- (void)_handleArrowButton:(id)button
{
  buttonCopy = button;
  if ([buttonCopy state] == 3)
  {
    viewModel = [(PXStoryView *)self viewModel];
    wantsChromeVisible = [viewModel wantsChromeVisible];

    if ((wantsChromeVisible & 1) == 0)
    {
      allowedPressTypes = [buttonCopy allowedPressTypes];
      v7 = [allowedPressTypes isEqualToArray:&unk_1F1910978];

      if (v7)
      {
        [(PXStoryView *)self _moveLeftAfterEdgeTap:0];
      }

      else
      {
        allowedPressTypes2 = [buttonCopy allowedPressTypes];
        v9 = [allowedPressTypes2 isEqualToArray:&unk_1F1910990];

        if (v9)
        {
          [(PXStoryView *)self _moveRightAfterEdgeTap:0];
        }
      }
    }
  }
}

- (void)_handleLongPress:(id)press
{
  v10 = *MEMORY[0x1E69E9840];
  pressCopy = press;
  if ([pressCopy state] != 2)
  {
    v5 = PLStoryGetLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = 134218240;
      selfCopy = self;
      v8 = 2048;
      state = [pressCopy state];
      _os_log_impl(&dword_1A3C1C000, v5, OS_LOG_TYPE_INFO, "%p long press state=%li", &v6, 0x16u);
    }
  }
}

- (void)_handleTap:(id)tap
{
  tapCopy = tap;
  if ([tapCopy state] == 3)
  {
    [tapCopy locationInView:self];
    [(PXStoryView *)self _handlePrimaryInteractionAtPoint:?];
  }
}

- (void)_handleSwipeGesture:(id)gesture
{
  gestureCopy = gesture;
  v4 = [gestureCopy state] == 3;
  v5 = gestureCopy;
  if (v4)
  {
    direction = [gestureCopy direction];
    if (direction == 8)
    {
      v7 = +[PXStorySettings sharedInstance];
      swipeDownAction = [v7 swipeDownAction];

      v5 = gestureCopy;
      if (swipeDownAction != 2)
      {
        goto LABEL_12;
      }

      viewModel = [(PXStoryView *)self viewModel];
      actionPerformer = [viewModel actionPerformer];
      [actionPerformer dismissStoryViewController];
    }

    else if (direction == 2)
    {
      [(PXStoryView *)self _moveRightAfterEdgeTap:0];
    }

    else
    {
      v4 = direction == 1;
      v5 = gestureCopy;
      if (!v4)
      {
        goto LABEL_12;
      }

      [(PXStoryView *)self _moveLeftAfterEdgeTap:0];
    }

    v5 = gestureCopy;
  }

LABEL_12:
}

- (void)_handleAnyTouchOrPressGesture:(id)gesture
{
  gestureCopy = gesture;
  state = [gestureCopy state];
  if ((state - 3) >= 3)
  {
    if ((state - 1) <= 1)
    {
      [(NSMutableSet *)self->_activeRemoteGestureRecognizers addObject:gestureCopy];
    }
  }

  else
  {
    [(NSMutableSet *)self->_activeRemoteGestureRecognizers removeObject:gestureCopy];
  }

  viewModel = [(PXStoryView *)self viewModel];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __45__PXStoryView__handleAnyTouchOrPressGesture___block_invoke;
  v7[3] = &unk_1E774B048;
  v7[4] = self;
  [viewModel performChanges:v7];
}

void __45__PXStoryView__handleAnyTouchOrPressGesture___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 activeRemoteGestureRecognizers];
  [v3 setIsUserPerformingRemoteGesture:{objc_msgSend(v4, "count") != 0}];
}

- (void)_handleMenuGestureRecognizer:(id)recognizer
{
  if ([recognizer state] == 3)
  {
    viewModel = [(PXStoryView *)self viewModel];
    viewMode = [viewModel viewMode];

    if (viewMode == 1)
    {
      viewModel2 = [(PXStoryView *)self viewModel];
      wantsRelatedOverlayVisible = [viewModel2 wantsRelatedOverlayVisible];

      if (wantsRelatedOverlayVisible)
      {

        [(PXStoryView *)self _hideRelatedOverlay];
      }

      else
      {

        [(PXStoryView *)self _toggleChrome];
      }
    }

    else if (viewMode == 4 || viewMode == 2)
    {
      viewModel3 = [(PXStoryView *)self viewModel];
      mainModel = [viewModel3 mainModel];
      [mainModel performChanges:&__block_literal_global_471_106188];
    }
  }
}

- (void)_handlePlayPauseGesture:(id)gesture
{
  if ([gesture state] == 3)
  {

    [(PXStoryView *)self _togglePlayback];
  }
}

- (void)cancelOperation:(id)operation
{
  viewModel = [(PXStoryView *)self viewModel];
  actionPerformer = [viewModel actionPerformer];
  [actionPerformer dismissStoryViewController];
}

- (BOOL)_canNavigateToSelectedRelated
{
  viewModel = [(PXStoryView *)self viewModel];
  highlightedRelatedIndex = [viewModel highlightedRelatedIndex];

  viewModel2 = [(PXStoryView *)self viewModel];
  wantsRelatedOverlayVisible = [viewModel2 wantsRelatedOverlayVisible];
  if (highlightedRelatedIndex == 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = 0;
  }

  else
  {
    v7 = wantsRelatedOverlayVisible;
  }

  return v7;
}

- (void)_navigateToSelectedRelated
{
  if ([(PXStoryView *)self _canNavigateToSelectedRelated])
  {
    viewModel = [(PXStoryView *)self viewModel];
    [viewModel performChanges:&__block_literal_global_469];
  }
}

void __41__PXStoryView__navigateToSelectedRelated__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 selectRelatedAtIndex:{objc_msgSend(v2, "highlightedRelatedIndex")}];
}

- (void)insertNewline:(id)newline
{
  newlineCopy = newline;
  if ([(PXStoryView *)self _canNavigateToSelectedRelated])
  {
    objc_initWeak(&location, self);
    viewModel = [(PXStoryView *)self viewModel];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __29__PXStoryView_insertNewline___block_invoke;
    v6[3] = &unk_1E773E510;
    objc_copyWeak(&v7, &location);
    [viewModel requestNavigationPermission:v6];

    objc_destroyWeak(&v7);
    objc_destroyWeak(&location);
  }
}

void __29__PXStoryView_insertNewline___block_invoke(uint64_t a1, void *a2)
{
  if (a2)
  {
    [a2 fulfilled];
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    [WeakRetained _navigateToSelectedRelated];
  }
}

- (void)moveRight:(id)right
{
  viewModel = [(PXStoryView *)self viewModel];
  wantsRelatedOverlayVisible = [viewModel wantsRelatedOverlayVisible];

  if (wantsRelatedOverlayVisible)
  {

    [(PXStoryView *)self _handleRelatedKeyboardNavigation:8];
  }

  else
  {

    [(PXStoryView *)self _handleEdgeTap:8];
  }
}

- (void)moveLeft:(id)left
{
  viewModel = [(PXStoryView *)self viewModel];
  wantsRelatedOverlayVisible = [viewModel wantsRelatedOverlayVisible];

  if (wantsRelatedOverlayVisible)
  {

    [(PXStoryView *)self _handleRelatedKeyboardNavigation:2];
  }

  else
  {

    [(PXStoryView *)self _handleEdgeTap:2];
  }
}

- (NSMutableArray)lastDemotedDisplayAssets
{
  if ((PFOSVariantHasInternalUI() & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXStoryView.m" lineNumber:545 description:{@"Invalid parameter not satisfying: %@", @"PLHasInternalUI()"}];
  }

  lastDemotedDisplayAssets = self->_lastDemotedDisplayAssets;
  if (!lastDemotedDisplayAssets)
  {
    v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v6 = self->_lastDemotedDisplayAssets;
    self->_lastDemotedDisplayAssets = v5;

    lastDemotedDisplayAssets = self->_lastDemotedDisplayAssets;
  }

  return lastDemotedDisplayAssets;
}

- (void)_editCurrentChapter
{
  viewModel = [(PXStoryView *)self viewModel];
  actionPerformer = [viewModel actionPerformer];
  [actionPerformer presentChapterEditor];
}

- (void)_changeOverallDuration:(int64_t)duration
{
  viewModel = [(PXStoryView *)self viewModel];
  mainModel = [viewModel mainModel];
  recipeManager = [mainModel recipeManager];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __38__PXStoryView__changeOverallDuration___block_invoke;
  v7[3] = &__block_descriptor_40_e39_v16__0___PXStoryMutableRecipeManager__8l;
  v7[4] = duration;
  [recipeManager performChanges:v7];
}

uint64_t __38__PXStoryView__changeOverallDuration___block_invoke(uint64_t a1, void *a2)
{
  v2 = *MEMORY[0x1E69C0DB0];
  v7 = *(MEMORY[0x1E69C0DB0] + 16);
  v3 = *(MEMORY[0x1E69C0DB0] + 48);
  v8 = *(MEMORY[0x1E69C0DB0] + 32);
  v9 = v3;
  v5 = *(a1 + 32);
  v10 = *(MEMORY[0x1E69C0DB0] + 64);
  v6 = v2;
  return [a2 applyTargetOverallDurationInfo:&v5];
}

- (void)_changeColorGrade
{
  viewModel = [(PXStoryView *)self viewModel];
  mainModel = [viewModel mainModel];

  styleManager = [mainModel styleManager];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __32__PXStoryView__changeColorGrade__block_invoke;
  v6[3] = &unk_1E773EC68;
  v7 = styleManager;
  v5 = styleManager;
  [v5 performChanges:v6 origin:2];
}

void __32__PXStoryView__changeColorGrade__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 currentStyle];
  [v3 applyFocusedStyleWithCustomizedColorGradeKind:{(objc_msgSend(v4, "customColorGradeKind") + 1) % 13}];
}

- (void)_changeStyle
{
  viewModel = [(PXStoryView *)self viewModel];
  mainModel = [viewModel mainModel];

  styleManager = [mainModel styleManager];
  selectionDataSource = [styleManager selectionDataSource];
  numberOfStyles = [selectionDataSource numberOfStyles];
  if (numberOfStyles >= 1)
  {
    v7 = numberOfStyles;
    indexOfCurrentStyle = [selectionDataSource indexOfCurrentStyle];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __27__PXStoryView__changeStyle__block_invoke;
    v9[3] = &unk_1E7738E08;
    v11 = (indexOfCurrentStyle + 1) % v7;
    v10 = selectionDataSource;
    [styleManager performChanges:v9 origin:2];
  }
}

- (void)_hideRelatedOverlay
{
  viewModel = [(PXStoryView *)self viewModel];
  [viewModel performChanges:&__block_literal_global_458_106201];
}

- (void)_toggleChrome
{
  viewModel = [(PXStoryView *)self viewModel];
  [viewModel performChanges:&__block_literal_global_456];
}

- (void)_togglePlayback
{
  viewModel = [(PXStoryView *)self viewModel];
  [viewModel performChanges:&__block_literal_global_454];
}

- (id)_storyHitTestResultAtPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  tungstenView = [(PXStoryView *)self tungstenView];
  [tungstenView convertPoint:self fromView:{x, y}];
  v7 = [tungstenView hitTestResultAtPoint:?];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)_handleEdgeTap:(unint64_t)tap
{
  v24 = *MEMORY[0x1E69E9840];
  viewModel = [(PXStoryView *)self viewModel];
  mainModel = [viewModel mainModel];

  currentSegmentIdentifier = [mainModel currentSegmentIdentifier];
  timeline = [mainModel timeline];
  lastSegmentIdentifier = [timeline lastSegmentIdentifier];

  _isRTL = [(PXStoryView *)self _isRTL];
  if (currentSegmentIdentifier == lastSegmentIdentifier && (tap != 8 ? (v11 = 1) : (v11 = _isRTL), tap == 2 ? (v12 = _isRTL) : (v12 = 0), v12 || (v11 & 1) == 0))
  {
    viewModel2 = [(PXStoryView *)self viewModel];
    shouldAutoReplayPreference = [viewModel2 shouldAutoReplayPreference];

    viewModel3 = [(PXStoryView *)self viewModel];
    mainConfiguration = [viewModel3 mainConfiguration];
    shouldReplayAtEnd = [mainConfiguration shouldReplayAtEnd];

    if ((shouldReplayAtEnd & 1) != 0 || shouldAutoReplayPreference)
    {
      viewModel4 = [(PXStoryView *)self viewModel];
      v19 = [viewModel4 desiredPlayState] == 1;

      viewModel5 = [(PXStoryView *)self viewModel];
      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v21[2] = __30__PXStoryView__handleEdgeTap___block_invoke;
      v21[3] = &__block_descriptor_34_e35_v16__0___PXStoryMutableViewModel__8l;
      v22 = v19;
      v23 = shouldAutoReplayPreference;
      [viewModel5 performChanges:v21];
    }

    else
    {
      [mainModel performChanges:&__block_literal_global_451_106203];
    }
  }

  else if (tap == 2)
  {
    [(PXStoryView *)self _moveLeftAfterEdgeTap:1];
  }

  else
  {
    if (tap != 8)
    {
      PXAssertGetLog();
    }

    [(PXStoryView *)self _moveRightAfterEdgeTap:1];
  }
}

- (void)_handleRelatedKeyboardNavigation:(unint64_t)navigation
{
  viewModel = [(PXStoryView *)self viewModel];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __48__PXStoryView__handleRelatedKeyboardNavigation___block_invoke;
  v7[3] = &unk_1E7738DE0;
  v7[4] = self;
  v7[5] = navigation;
  v7[6] = a2;
  [viewModel performChanges:v7];
}

void __48__PXStoryView__handleRelatedKeyboardNavigation___block_invoke(uint64_t a1, void *a2)
{
  v23 = a2;
  v3 = [*(a1 + 32) viewModel];
  v4 = [v3 relatedModels];
  v5 = [v4 count] - 1;

  v6 = [v23 highlightedRelatedIndex];
  if ([v23 highlightedRelatedIndex])
  {
    v7 = [v23 highlightedRelatedIndex] == 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = 1;
  }

  v8 = [v23 highlightedRelatedIndex];
  v9 = *(a1 + 40) == 2;
  v10 = [*(a1 + 32) _isRTL];
  v11 = *(a1 + 40) == 8;
  v12 = v11 ^ [*(a1 + 32) _isRTL];
  v13 = (v9 ^ v10) & v7;
  if (v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v14 = v12;
  }

  else
  {
    v14 = 0;
  }

  if (v8 == v5)
  {
    v15 = v12;
  }

  else
  {
    v15 = 0;
  }

  v17 = v6 != 0x7FFFFFFFFFFFFFFFLL && v5 >= 0;
  if (v13)
  {
    v17 = 0;
  }

  if (v15)
  {
    v17 = 0;
  }

  if (v14)
  {
    v18 = v23;
    v19 = 0;
LABEL_22:
    [v18 setHighlightedRelatedIndex:v19];
LABEL_25:
    v20 = v23;
    goto LABEL_26;
  }

  v20 = v23;
  if (v13)
  {
    [v23 setWantsRelatedOverlayVisible:0];
    goto LABEL_25;
  }

  if (v17)
  {
    if (v12)
    {
      v21 = 1;
    }

    else
    {
      v21 = -1;
    }

    if ([v23 highlightedRelatedIndex] + v21 < 0 || objc_msgSend(v23, "highlightedRelatedIndex") + v21 > v5)
    {
      v22 = [MEMORY[0x1E696AAA8] currentHandler];
      [v22 handleFailureInMethod:*(a1 + 48) object:*(a1 + 32) file:@"PXStoryView.m" lineNumber:446 description:@"Selection index out of bounds"];
    }

    v19 = [v23 highlightedRelatedIndex] + v21;
    v18 = v23;
    goto LABEL_22;
  }

LABEL_26:
}

- (BOOL)_handlePrimaryInteractionAtPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  viewModel = [(PXStoryView *)self viewModel];
  viewMode = [viewModel viewMode];
  if (viewMode == 4)
  {
    mainConfiguration = [viewModel mainConfiguration];
    isAppleMusicPreview = [mainConfiguration isAppleMusicPreview];

    if ((isAppleMusicPreview & 1) == 0)
    {
      mainModel = [viewModel mainModel];
      mainModel2 = [viewModel mainModel];
      styleManager = [mainModel2 styleManager];

      v22 = MEMORY[0x1E69E9820];
      v23 = 3221225472;
      v24 = __48__PXStoryView__handlePrimaryInteractionAtPoint___block_invoke;
      v25 = &unk_1E773E390;
      v26 = styleManager;
      v27 = mainModel;
      v13 = mainModel;
      v14 = styleManager;
      [viewModel performChanges:&v22];
    }

    goto LABEL_7;
  }

  v15 = viewMode;
  tungstenView = [(PXStoryView *)self tungstenView];
  [tungstenView convertPoint:self fromView:{x, y}];
  v17 = [tungstenView handlePrimaryInteractionAtPoint:?];

  if (v17)
  {
LABEL_7:
    viewLayoutSpec = [viewModel viewLayoutSpec];
    goto LABEL_8;
  }

  if ([viewModel wantsRelatedOverlayVisible])
  {
    [viewModel performChanges:&__block_literal_global_445_106210];
    goto LABEL_7;
  }

  viewLayoutSpec = [viewModel viewLayoutSpec];
  wantsEdgeTapToChangeCurrentSegment = [viewLayoutSpec wantsEdgeTapToChangeCurrentSegment];
  if (v15 == 1 && wantsEdgeTapToChangeCurrentSegment)
  {
    [(PXStoryView *)self bounds];
    [viewLayoutSpec tapNavigationAreaInsets];
    PXEdgeInsetsInsetRect();
  }

  if (v15 == 2)
  {
    v19 = 0;
    goto LABEL_9;
  }

  [(PXStoryView *)self _toggleChrome];
LABEL_8:
  v19 = 1;
LABEL_9:

  return v19;
}

void __48__PXStoryView__handlePrimaryInteractionAtPoint___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (([*(a1 + 32) focusedStyleIsCurrentStyle] & 1) == 0)
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __48__PXStoryView__handlePrimaryInteractionAtPoint___block_invoke_2;
    v5[3] = &unk_1E774C648;
    v4 = *(a1 + 40);
    v6 = *(a1 + 32);
    [v4 performWithPrerequestedPersistencePermission:v5 forUserActionKind:2];
  }

  [v3 setViewMode:1];
}

- (void)_skipToSegmentWithOffset:(int64_t)offset afterEdgeTap:(BOOL)tap
{
  viewModel = [(PXStoryView *)self viewModel];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __53__PXStoryView__skipToSegmentWithOffset_afterEdgeTap___block_invoke;
  v7[3] = &__block_descriptor_41_e35_v16__0___PXStoryMutableViewModel__8l;
  v7[4] = offset;
  tapCopy = tap;
  [viewModel performChanges:v7];
}

- (void)_moveRightAfterEdgeTap:(BOOL)tap
{
  tapCopy = tap;
  if ([(PXStoryView *)self _isRTL])
  {
    v5 = -1;
  }

  else
  {
    v5 = 1;
  }

  [(PXStoryView *)self _skipToSegmentWithOffset:v5 afterEdgeTap:tapCopy];
}

- (void)_moveLeftAfterEdgeTap:(BOOL)tap
{
  tapCopy = tap;
  if ([(PXStoryView *)self _isRTL])
  {
    v5 = 1;
  }

  else
  {
    v5 = -1;
  }

  [(PXStoryView *)self _skipToSegmentWithOffset:v5 afterEdgeTap:tapCopy];
}

- (void)insertText:(id)text
{
  textCopy = text;
  viewModel = [(PXStoryView *)self viewModel];
  viewMode = [viewModel viewMode];
  if ([textCopy isEqualToString:@" "] && (objc_msgSend(viewModel, "wantsRelatedOverlayVisible") & 1) == 0 && viewMode == 1)
  {
    [(PXStoryView *)self _togglePlayback];
  }

  if (PFOSVariantHasInternalUI())
  {
    v9 = MEMORY[0x1E69E9820];
    v10 = 3221225472;
    v11 = __26__PXStoryView_insertText___block_invoke;
    v12 = &unk_1E773E390;
    v7 = textCopy;
    v13 = v7;
    selfCopy = self;
    [viewModel performChanges:&v9];
    if ([v7 isEqualToString:{@"v", v9, v10, v11, v12}])
    {
      actionPerformer = [viewModel actionPerformer];
      [actionPerformer showVisualDiagnostics];
    }
  }
}

void __26__PXStoryView_insertText___block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  if ([*(a1 + 32) isEqualToString:@"h"])
  {
    [v7 toggleHUD];
  }

  else if ([*(a1 + 32) isEqualToString:@"i"])
  {
    [v7 cycleHUDType];
  }

  else if ([*(a1 + 32) isEqualToString:@"r"])
  {
    [v7 setWantsRelatedOverlayVisible:{objc_msgSend(v7, "wantsRelatedOverlayVisible") ^ 1}];
  }

  else if ([*(a1 + 32) isEqualToString:@"e"])
  {
    [v7 setShouldShowErrorIndicator:{objc_msgSend(v7, "shouldShowErrorIndicator") ^ 1}];
  }

  else if ([*(a1 + 32) isEqualToString:@"s"])
  {
    [*(a1 + 40) _changeStyle];
  }

  else if ([*(a1 + 32) isEqualToString:@"c"])
  {
    [*(a1 + 40) _changeColorGrade];
  }

  else if ([*(a1 + 32) isEqualToString:@"C"])
  {
    [*(a1 + 40) _editCurrentChapter];
  }

  else
  {
    if ([*(a1 + 32) isEqualToString:@"1"])
    {
      v3 = *(a1 + 40);
      v4 = 3;
    }

    else if ([*(a1 + 32) isEqualToString:@"2"])
    {
      v3 = *(a1 + 40);
      v4 = 4;
    }

    else if ([*(a1 + 32) isEqualToString:@"3"])
    {
      v3 = *(a1 + 40);
      v4 = 5;
    }

    else
    {
      v5 = [*(a1 + 32) isEqualToString:@"0"];
      v6 = v7;
      if (!v5)
      {
        goto LABEL_25;
      }

      v3 = *(a1 + 40);
      v4 = 1;
    }

    [v3 _changeOverallDuration:v4];
  }

  v6 = v7;
LABEL_25:
}

- (void)_initializeGestureRecognizers
{
  v36[2] = *MEMORY[0x1E69E9840];
  array = [MEMORY[0x1E695DF70] array];
  v4 = objc_alloc_init(PXVerticalSwipeGestureRecognizerHelper);
  swipeDownGestureHelper = self->_swipeDownGestureHelper;
  self->_swipeDownGestureHelper = v4;

  [(PXVerticalSwipeGestureRecognizerHelper *)self->_swipeDownGestureHelper setAllowSwipeUp:0];
  [(PXVerticalSwipeGestureRecognizerHelper *)self->_swipeDownGestureHelper setDelegate:self];
  v6 = [[off_1E7721918 alloc] initWithTarget:0 action:0];
  touchingGestureRecognizer = self->_touchingGestureRecognizer;
  self->_touchingGestureRecognizer = v6;

  [(PXTouchingUIGestureRecognizer *)self->_touchingGestureRecognizer setDelegate:self];
  [(PXTouchingUIGestureRecognizer *)self->_touchingGestureRecognizer setTouchDelegate:self];
  [array addObject:self->_touchingGestureRecognizer];
  v8 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:self action:sel__handleTap_];
  tapGestureRecognizer = self->_tapGestureRecognizer;
  self->_tapGestureRecognizer = v8;

  [(UITapGestureRecognizer *)self->_tapGestureRecognizer setDelegate:self];
  [array addObject:self->_tapGestureRecognizer];
  v10 = [objc_alloc(MEMORY[0x1E69DCC48]) initWithTarget:self action:sel__handleLongPress_];
  longPressGestureRecognizer = self->_longPressGestureRecognizer;
  self->_longPressGestureRecognizer = v10;

  [(UILongPressGestureRecognizer *)self->_longPressGestureRecognizer setDelegate:self];
  [array addObject:self->_longPressGestureRecognizer];
  if (PFOSVariantHasInternalUI())
  {
    v12 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:self action:sel__handleTwoFingerTap_];
    [v12 setNumberOfTouchesRequired:2];
    [array addObject:v12];
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __44__PXStoryView__initializeGestureRecognizers__block_invoke;
  aBlock[3] = &unk_1E7738D78;
  aBlock[4] = self;
  v13 = array;
  v34 = v13;
  v14 = _Block_copy(aBlock);
  viewConfiguration = [(PXStoryView *)self viewConfiguration];
  configuration = [viewConfiguration configuration];
  allowsVerticalGestures = [configuration allowsVerticalGestures];

  if (allowsVerticalGestures)
  {
    v18 = v14[2](v14, 8);
    v36[0] = v18;
    v19 = v14[2](v14, 4);
    v36[1] = v19;
    v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v36 count:2];
    swipeGestureRecognizers = self->_swipeGestureRecognizers;
    self->_swipeGestureRecognizers = v20;

    v22 = [objc_alloc(MEMORY[0x1E69DCD28]) initWithTarget:self action:sel__handlePanDown_];
    panDownGestureRecognizer = self->_panDownGestureRecognizer;
    self->_panDownGestureRecognizer = v22;

    [(UIPanGestureRecognizer *)self->_panDownGestureRecognizer setDelegate:self];
    [v13 addObject:self->_panDownGestureRecognizer];
  }

  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v24 = v13;
  v25 = [v24 countByEnumeratingWithState:&v29 objects:v35 count:16];
  if (v25)
  {
    v26 = v25;
    v27 = *v30;
    do
    {
      v28 = 0;
      do
      {
        if (*v30 != v27)
        {
          objc_enumerationMutation(v24);
        }

        [(PXStoryView *)self addGestureRecognizer:*(*(&v29 + 1) + 8 * v28++), v29];
      }

      while (v26 != v28);
      v26 = [v24 countByEnumeratingWithState:&v29 objects:v35 count:16];
    }

    while (v26);
  }
}

id __44__PXStoryView__initializeGestureRecognizers__block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = [objc_alloc(MEMORY[0x1E69DCFC8]) initWithTarget:*(a1 + 32) action:sel__handleSwipeGesture_];
  [v4 setDirection:a2];
  [*(a1 + 40) addObject:v4];

  return v4;
}

- (id)itemPlacementControllerForItemReference:(id)reference
{
  referenceCopy = reference;
  viewLayout = [(PXStoryView *)self viewLayout];
  v6 = [viewLayout itemPlacementControllerForItemReference:referenceCopy];

  return v6;
}

- (id)mainItemReference
{
  viewLayout = [(PXStoryView *)self viewLayout];
  mainItemReference = [viewLayout mainItemReference];

  return mainItemReference;
}

- (void)setIsTouching:(BOOL)touching
{
  if (self->_isTouching != touching)
  {
    v10 = v3;
    v11 = v4;
    self->_isTouching = touching;
    viewModel = [(PXStoryView *)self viewModel];
    mainModel = [viewModel mainModel];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __29__PXStoryView_setIsTouching___block_invoke;
    v8[3] = &__block_descriptor_33_e31_v16__0___PXStoryMutableModel__8l;
    touchingCopy = touching;
    [mainModel performChanges:v8];
  }
}

- (PXGView)tungstenView
{
  tungstenViewCoordinator = [(PXStoryView *)self tungstenViewCoordinator];
  tungstenView = [tungstenViewCoordinator tungstenView];

  return tungstenView;
}

- (void)setIsActive:(BOOL)active
{
  if (self->_isActive != active)
  {
    v9 = v3;
    v10 = v4;
    self->_isActive = active;
    viewModel = [(PXStoryView *)self viewModel];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __27__PXStoryView_setIsActive___block_invoke;
    v7[3] = &__block_descriptor_33_e35_v16__0___PXStoryMutableViewModel__8l;
    activeCopy = active;
    [viewModel performChanges:v7];
  }
}

- (PXStoryView)initWithFrame:(CGRect)frame configuration:(id)configuration
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  configurationCopy = configuration;
  v42.receiver = self;
  v42.super_class = PXStoryView;
  height = [(PXStoryView *)&v42 initWithFrame:x, y, width, height];
  v12 = height;
  if (height)
  {
    objc_storeStrong(&height->_viewConfiguration, configuration);
    configuration = [configurationCopy configuration];
    storyQueue = [configuration storyQueue];
    storyQueue = v12->_storyQueue;
    v12->_storyQueue = storyQueue;

    useLowPowerMode = [configuration useLowPowerMode];
    v17 = [[PXStoryPacingAutoIncrementingTimeSource alloc] initWithLayoutQueue:v12->_storyQueue lowPowerMode:useLowPowerMode];
    timeSource = v12->_timeSource;
    v12->_timeSource = v17;

    mediaProvider = [configuration mediaProvider];
    v20 = [PXStoryViewModel alloc];
    extendedTraitCollection = [configurationCopy extendedTraitCollection];
    v22 = [(PXStoryViewModel *)v20 initWithConfiguration:configuration extendedTraitCollection:extendedTraitCollection timeSource:v12->_timeSource mediaProvider:mediaProvider];
    viewModel = v12->_viewModel;
    v12->_viewModel = v22;

    [(PXStoryViewModel *)v12->_viewModel registerChangeObserver:v12 context:ViewModelObservationContext_106154];
    v24 = [[PXStoryViewLayout alloc] initWithViewModel:v12->_viewModel];
    viewLayout = v12->_viewLayout;
    v12->_viewLayout = v24;

    v26 = [off_1E7721718 alloc];
    v27 = v12->_viewLayout;
    containerViewController = [configurationCopy containerViewController];
    v40[0] = MEMORY[0x1E69E9820];
    v40[1] = 3221225472;
    v40[2] = __43__PXStoryView_initWithFrame_configuration___block_invoke;
    v40[3] = &unk_1E7738D50;
    v29 = mediaProvider;
    v41 = v29;
    v30 = [v26 initWithContentLayout:v27 containerView:v12 belowSubview:0 containerViewController:containerViewController configuration:v40];
    tungstenViewCoordinator = v12->_tungstenViewCoordinator;
    v12->_tungstenViewCoordinator = v30;

    [(PXStoryView *)v12 _updateBackgroundColor];
    configuration2 = [configurationCopy configuration];
    options = [configuration2 options];

    if ((options & 0x20) != 0)
    {
      transitionQuality = 2;
    }

    else
    {
      configuration2 = +[PXStoryTransitionsSettings sharedInstance];
      transitionQuality = [configuration2 transitionQuality];
    }

    tungstenView = [(PXGViewCoordinator *)v12->_tungstenViewCoordinator tungstenView];
    [tungstenView setOffscreenEffectQuality:transitionQuality];

    if ((options & 0x20) == 0)
    {
    }

    tungstenView2 = [(PXGViewCoordinator *)v12->_tungstenViewCoordinator tungstenView];
    [tungstenView2 setLowPowerModeEnabled:useLowPowerMode];

    if (([configuration options] & 0x400) == 0)
    {
      [(PXStoryView *)v12 _initializeGestureRecognizers];
    }

    v37 = [[off_1E7721940 alloc] initWithTarget:v12 needsUpdateSelector:sel__setNeedsUpdate];
    updater = v12->_updater;
    v12->_updater = v37;

    [(PXUpdater *)v12->_updater addUpdateSelector:sel__updateGestureRecognizers needsUpdate:1];
    [(PXUpdater *)v12->_updater addUpdateSelector:sel__updateBackgroundColor];
    [(PXUpdater *)v12->_updater addUpdateSelector:sel__updateMainModel needsUpdate:1];
  }

  return v12;
}

void __43__PXStoryView_initWithFrame_configuration___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  [v3 setMediaProvider:v2];
  [v3 setShowsHorizontalScrollIndicator:0];
  [v3 setShowsVerticalScrollIndicator:0];
  [v3 setMetalViewInScrollViewAllowed:0];
  [v3 setContentInsetAdjustmentBehavior:1];
  v4 = +[PXStorySettings sharedInstance];
  [v3 setPresentationType:{objc_msgSend(v4, "playerPresentationType")}];
}

- (PXStoryView)initWithCoder:(id)coder
{
  coderCopy = coder;
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXStoryView.m" lineNumber:110 description:{@"%s is not available as initializer", "-[PXStoryView initWithCoder:]"}];

  abort();
}

- (PXStoryView)initWithFrame:(CGRect)frame
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXStoryView.m" lineNumber:106 description:{@"%s is not available as initializer", "-[PXStoryView initWithFrame:]"}];

  abort();
}

+ (void)dumpTapToRadarDiagnosticAttachmentsToURL:(id)l completionHandler:(id)handler
{
  lCopy = l;
  handlerCopy = handler;
  v7[0] = 0;
  v7[1] = v7;
  v7[2] = 0x3032000000;
  v7[3] = __Block_byref_object_copy__106282;
  v7[4] = __Block_byref_object_dispose__106283;
  v7[5] = 0;
  PXEnumerateAllViewsUsingBlock();
}

void __74__PXStoryView_dumpTapToRadarDiagnosticAttachmentsToURL_completionHandler___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v6 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
    *a3 = 1;
  }
}

+ (NSString)allDiagnosticDescriptions
{
  v2 = +[PXStorySettings sharedInstance];
  [v2 useVerboseStyleHUDText];
  [v2 setUseVerboseStyleHUDText:1];
  objc_alloc_init(MEMORY[0x1E696AD60]);
  PXEnumerateAllViewsUsingBlock();
}

void __40__PXStoryView_allDiagnosticDescriptions__block_invoke(uint64_t a1, void *a2)
{
  v10 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v10;
    v4 = [v3 viewModel];
    v5 = [v4 diagnosticDescriptionForAllHUDTypes];
    v6 = MEMORY[0x1E696AEC0];
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    v9 = [v6 stringWithFormat:@"%@ %p:\n%@\n", v8, v3, v5];

    [*(a1 + 32) appendString:v9];
  }
}

@end