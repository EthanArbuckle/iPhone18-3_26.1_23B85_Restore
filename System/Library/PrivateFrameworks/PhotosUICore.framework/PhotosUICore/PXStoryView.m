@interface PXStoryView
+ (NSString)allDiagnosticDescriptions;
+ (void)dumpTapToRadarDiagnosticAttachmentsToURL:(id)a3 completionHandler:(id)a4;
- (BOOL)_canNavigateToSelectedRelated;
- (BOOL)_handlePrimaryInteractionAtPoint:(CGPoint)a3;
- (BOOL)gestureRecognizer:(id)a3 shouldBeRequiredToFailByGestureRecognizer:(id)a4;
- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4;
- (BOOL)gestureRecognizer:(id)a3 shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)a4;
- (BOOL)gestureRecognizerShouldBegin:(id)a3;
- (BOOL)verticalSwipeGestureRecognizerHelper:(id)a3 shouldRecognizeSwipeDownGestureRecognizer:(id)a4;
- (NSMutableArray)lastDemotedDisplayAssets;
- (PXGView)tungstenView;
- (PXStoryView)initWithCoder:(id)a3;
- (PXStoryView)initWithFrame:(CGRect)a3;
- (PXStoryView)initWithFrame:(CGRect)a3 configuration:(id)a4;
- (PXStoryViewDismissalController)dismissalController;
- (id)_storyHitTestResultAtPoint:(CGPoint)a3;
- (id)itemPlacementControllerForItemReference:(id)a3;
- (id)mainItemReference;
- (void)_changeColorGrade;
- (void)_changeOverallDuration:(int64_t)a3;
- (void)_changeStyle;
- (void)_considerUpdatingFocusForChrome;
- (void)_considerUpdatingFocusForInfoPanel;
- (void)_considerUpdatingFocusForRelatedOverlay;
- (void)_editCurrentChapter;
- (void)_handleAnyTouchOrPressGesture:(id)a3;
- (void)_handleArrowButton:(id)a3;
- (void)_handleEdgeTap:(unint64_t)a3;
- (void)_handleLongPress:(id)a3;
- (void)_handleMenuGestureRecognizer:(id)a3;
- (void)_handlePanDown:(id)a3;
- (void)_handlePlayPauseGesture:(id)a3;
- (void)_handleRelatedKeyboardNavigation:(unint64_t)a3;
- (void)_handleSwipeGesture:(id)a3;
- (void)_handleTap:(id)a3;
- (void)_handleTwoFingerTap:(id)a3;
- (void)_hideRelatedOverlay;
- (void)_initializeGestureRecognizers;
- (void)_invalidateBackgroundColor;
- (void)_invalidateGestureRecognizers;
- (void)_invalidateMainModel;
- (void)_moveLeftAfterEdgeTap:(BOOL)a3;
- (void)_moveRightAfterEdgeTap:(BOOL)a3;
- (void)_navigateToSelectedRelated;
- (void)_skipToSegmentWithOffset:(int64_t)a3 afterEdgeTap:(BOOL)a4;
- (void)_toggleChrome;
- (void)_togglePlayback;
- (void)_updateBackgroundColor;
- (void)_updateGestureRecognizers;
- (void)_updateMainModel;
- (void)cancelOperation:(id)a3;
- (void)collectTapToRadarDiagnosticsIntoContainer:(id)a3;
- (void)insertNewline:(id)a3;
- (void)insertText:(id)a3;
- (void)layoutSubviews;
- (void)moveLeft:(id)a3;
- (void)moveRight:(id)a3;
- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5;
- (void)setIsActive:(BOOL)a3;
- (void)setIsTouching:(BOOL)a3;
- (void)setMainModel:(id)a3;
@end

@implementation PXStoryView

- (void)collectTapToRadarDiagnosticsIntoContainer:(id)a3
{
  v4 = a3;
  v5 = [(PXStoryView *)self viewModel];
  [v4 addSubprovider:v5];

  v6 = [(PXStoryView *)self tungstenView];
  [v4 addSubprovider:v6];

  v7 = [(PXStoryView *)self viewLayout];
  [v4 addSubprovider:v7];
}

- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5
{
  v9 = a3;
  if (ViewModelObservationContext_106154 == a5)
  {
    v11 = v9;
    if ((a4 & 0x2008) != 0)
    {
      [(PXStoryView *)self _invalidateGestureRecognizers];
      v9 = v11;
    }

    if ((a4 & 0x10400000020) != 0)
    {
      [(PXStoryView *)self _invalidateBackgroundColor];
      v9 = v11;
    }

    if ((a4 & 0x40) != 0)
    {
      [(PXStoryView *)self _invalidateMainModel];
      v9 = v11;
    }
  }

  else if (ModelObservationContext_106155 != a5)
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"PXStoryView.m" lineNumber:1170 description:@"Code which should be unreachable has been reached"];

    abort();
  }
}

- (void)setMainModel:(id)a3
{
  v5 = a3;
  mainModel = self->_mainModel;
  if (mainModel != v5)
  {
    v7 = v5;
    [(PXStoryModel *)mainModel unregisterChangeObserver:self context:ModelObservationContext_106155];
    objc_storeStrong(&self->_mainModel, a3);
    [(PXStoryModel *)self->_mainModel registerChangeObserver:self context:ModelObservationContext_106155];
    v5 = v7;
  }
}

- (void)_updateMainModel
{
  v4 = [(PXStoryView *)self viewModel];
  v3 = [v4 mainModel];
  [(PXStoryView *)self setMainModel:v3];
}

- (void)_invalidateMainModel
{
  v2 = [(PXStoryView *)self updater];
  [v2 setNeedsUpdateOf:sel__updateMainModel];
}

- (void)_updateBackgroundColor
{
  v8 = [(PXStoryView *)self viewModel];
  v3 = [v8 viewLayoutSpec];
  v4 = [v8 viewModeTransition];
  if ([v8 viewMode] == 2 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && !objc_msgSend(v4, "isComplete"))
  {
    v5 = [v3 browseGridBackgroundColor];
  }

  else
  {
    v5 = [v3 playerBackgroundColor];
  }

  v6 = v5;
  v7 = [(PXStoryView *)self tungstenView];
  [v7 setBackgroundColor:v6];
}

- (void)_invalidateBackgroundColor
{
  v2 = [(PXStoryView *)self updater];
  [v2 setNeedsUpdateOf:sel__updateBackgroundColor];
}

- (void)_updateGestureRecognizers
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = [(PXStoryView *)self viewModel];
  v4 = [v3 wantsChromeVisible];

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = [(PXStoryView *)self swipeGestureRecognizers];
  v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
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
          objc_enumerationMutation(v5);
        }

        [*(*(&v16 + 1) + 8 * v9++) setEnabled:1];
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v7);
  }

  v10 = [(PXStoryView *)self viewModel];
  v11 = [v10 viewMode] == 1;
  v12 = [(PXStoryView *)self panUpGestureRecognizer];
  [v12 setEnabled:v11];

  v13 = [(PXStoryView *)self viewModel];
  v14 = [v13 viewMode];

  if (v14 != 1)
  {
    v4 = v14 == 4 || v14 == 2;
  }

  v15 = [(PXStoryView *)self menuGestureRecognizer];
  [v15 setEnabled:v4];
}

- (void)_invalidateGestureRecognizers
{
  v2 = [(PXStoryView *)self updater];
  [v2 setNeedsUpdateOf:sel__updateGestureRecognizers];
}

- (void)layoutSubviews
{
  v3 = [(PXStoryView *)self updater];
  [v3 updateIfNeeded];

  v4.receiver = self;
  v4.super_class = PXStoryView;
  [(PXStoryView *)&v4 layoutSubviews];
}

- (BOOL)verticalSwipeGestureRecognizerHelper:(id)a3 shouldRecognizeSwipeDownGestureRecognizer:(id)a4
{
  v5 = a4;
  v6 = [(PXStoryView *)self panDownGestureRecognizer];

  if (v6 == v5)
  {
    v8 = [(PXStoryView *)self viewModel];
    v7 = [v8 isModalInPresentation] ^ 1;
  }

  else
  {
    LOBYTE(v7) = 1;
  }

  return v7;
}

- (BOOL)gestureRecognizer:(id)a3 shouldBeRequiredToFailByGestureRecognizer:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(PXStoryView *)self panUpGestureRecognizer];
  if (v8 != v6)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {

LABEL_6:
      v11 = [(PXStoryView *)self panDownGestureRecognizer];

      if (v11 == v6)
      {
        v13 = [(PXStoryView *)self swipeDownGestureHelper];
        v10 = [v13 verticalSwipeGestureRecognizer:v6 shouldBeRequiredToFailByGestureRecognizer:v7];
      }

      else
      {
        v12 = [(PXStoryView *)self longPressGestureRecognizer];

        if (v12 != v6)
        {
          v10 = 0;
          goto LABEL_12;
        }

        v13 = [(PXStoryView *)self panDownGestureRecognizer];
        v10 = v13 == v7;
      }

      goto LABEL_12;
    }
  }

  v9 = [v7 px_isPanGestureRecognizerOfScrollView:0];

  if ((v9 & 1) == 0)
  {
    goto LABEL_6;
  }

  v10 = 1;
LABEL_12:

  return v10;
}

- (BOOL)gestureRecognizerShouldBegin:(id)a3
{
  v4 = a3;
  if ([(PXStoryView *)self disableGestures])
  {
    v5 = 0;
  }

  else
  {
    v6 = [(PXStoryView *)self panDownGestureRecognizer];

    if (v6 == v4)
    {
      v8 = [(PXStoryView *)self swipeDownGestureHelper];
      v5 = [v8 verticalSwipeGestureRecognizerShouldBegin:v4 ignoringScrollViews:1];
    }

    else
    {
      v7 = [(PXStoryView *)self panUpGestureRecognizer];

      if (v7 == v4)
      {
        v9 = [(PXStoryView *)self panUpGestureRecognizer];
        v10 = [(PXStoryView *)self tungstenView];
        [v9 velocityInView:v10];
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

- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(PXStoryView *)self disableGestures])
  {
    v8 = 0;
  }

  else
  {
    [v7 locationInView:self];
    v9 = [(PXStoryView *)self hitTest:0 withEvent:?];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v11 = [(PXStoryView *)self anyIndirectTouchGestureRecognizer];
    if (v11 == v6)
    {
      v8 = 1;
    }

    else
    {
      v12 = [(PXStoryView *)self anyPressGestureRecognizer];
      v13 = v12 == v6;

      v8 = v13 | isKindOfClass ^ 1;
    }
  }

  return v8 & 1;
}

- (BOOL)gestureRecognizer:(id)a3 shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)a4
{
  touchingGestureRecognizer = self->_touchingGestureRecognizer;
  v7 = a3;
  v8 = [(PXStoryView *)self anyIndirectTouchGestureRecognizer];

  v9 = [(PXStoryView *)self anyPressGestureRecognizer];

  return v9 == v7 || v8 == v7 || touchingGestureRecognizer == a3;
}

- (void)_considerUpdatingFocusForInfoPanel
{
  v7 = [(PXStoryView *)self mainModel];
  [v7 desiredInfoPanelVisibilityFraction];
  if (v3 == 0.0)
  {
    v4 = [(PXStoryView *)self mainModel];
    [v4 infoPanelVisibilityFraction];
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
  v6 = [(PXStoryView *)self viewModel];
  v3 = [v6 wantsRelatedOverlayVisible];
  [v6 relatedOverlayVisibilityFraction];
  v5 = v4 != 1.0;
  if (!v3)
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
  v6 = [(PXStoryView *)self viewModel];
  v3 = [v6 wantsChromeVisible];
  [v6 chromeVisibilityFraction];
  v5 = v4 != 1.0;
  if (!v3)
  {
    v5 = v4 != 0.0;
  }

  if (!v5)
  {
    [(PXStoryView *)self setNeedsFocusUpdate];
  }
}

- (void)_handleTwoFingerTap:(id)a3
{
  if ([a3 state] != 3)
  {
    return;
  }

  v4 = +[PXStorySettings sharedInstance];
  v5 = [v4 twoFingerTapAction];

  if (v5 <= 2)
  {
    if (v5 == 1)
    {
      v6 = [(PXStoryView *)self viewModel];
      v8 = v6;
      v7 = &__block_literal_global_488;
    }

    else
    {
      if (v5 != 2)
      {
        return;
      }

      v6 = [(PXStoryView *)self viewModel];
      v8 = v6;
      v7 = &__block_literal_global_490;
    }

LABEL_18:
    [v6 performChanges:v7];

    return;
  }

  if (v5 != 3)
  {
    if (v5 != 4)
    {
      if (v5 == 5)
      {

        [(PXStoryView *)self _editCurrentChapter];
      }

      return;
    }

    v6 = [(PXStoryView *)self viewModel];
    v8 = v6;
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

- (void)_handlePanDown:(id)a3
{
  v66 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [(PXStoryView *)self viewModel];
  v7 = +[PXStorySettings sharedInstance];
  v8 = [v7 swipeDownBehavior];

  if ((v8 - 1) < 2)
  {
    v9 = [(PXStoryView *)self tungstenView];
    [v5 lastTouchTimestamp];
    v11 = v10;
    v12 = [v5 state];
    if (v12 > 2)
    {
      if ((v12 - 3) >= 3)
      {
        goto LABEL_32;
      }
    }

    else if (v12)
    {
      if (v12 == 1)
      {
        v20 = [v6 viewModeTransition];

        if (v20)
        {
          v35 = [MEMORY[0x1E696AAA8] currentHandler];
          [v35 handleFailureInMethod:a2 object:self file:@"PXStoryView.m" lineNumber:796 description:@"Shuld not have a viewModeTransition at this point"];
        }

        [v5 locationInView:v9];
        v22 = v21;
        v24 = v23;
        [v5 velocityInView:v9];
        v26 = v25;
        v28 = v27;
        v61 = 0u;
        v62 = 0u;
        v63 = 0u;
        v64 = 0u;
        v29 = [(PXStoryView *)self tungstenView];
        v30 = [v29 hitTestResultsAtPoint:{v22, v24}];

        v31 = [v30 countByEnumeratingWithState:&v61 objects:v65 count:16];
        if (v31)
        {
          v32 = *v62;
          while (2)
          {
            for (i = 0; i != v31; ++i)
            {
              if (*v62 != v32)
              {
                objc_enumerationMutation(v30);
              }

              v34 = *(*(&v61 + 1) + 8 * i);
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) != 0 && [v34 clipIdentifier])
              {
                v31 = [v34 clipIdentifier];
                goto LABEL_31;
              }
            }

            v31 = [v30 countByEnumeratingWithState:&v61 objects:v65 count:16];
            if (v31)
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
        v57 = v9;
        v58 = v11;
        v59 = v11;
        v50 = v6;
        v60 = v31;
        [v50 performChanges:v49];

        goto LABEL_32;
      }

      if (v12 == 2)
      {
        v48 = 0;
        v46 = 0u;
        v47 = 0u;
        v44 = 0u;
        v45 = 0u;
        if (v6)
        {
          [v6 swipeDownInteractionState];
        }

        [v5 locationInView:v9];
        *&v45 = v13;
        *(&v45 + 1) = v14;
        [v5 velocityInView:v9];
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
        [v6 performChanges:v17];
      }

LABEL_32:

      goto LABEL_33;
    }

    v48 = 0;
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    if (v6)
    {
      [v6 swipeDownInteractionState];
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

  if (!v8)
  {
    v18 = [v6 viewLayoutSpec];
    v19 = [v18 wantsSwipeDownGestureToDismiss];

    if (v19)
    {
      v9 = [(PXStoryView *)self dismissalController];
      [v9 handlePanDownGestureRecognizer:v5];
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
    v5 = [(PXStoryView *)self viewModel];
    v6 = [(PXStoryViewDismissalController *)v4 initWithViewModel:v5];
    v7 = self->_dismissalController;
    self->_dismissalController = v6;

    dismissalController = self->_dismissalController;
  }

  return dismissalController;
}

- (void)_handleArrowButton:(id)a3
{
  v10 = a3;
  if ([v10 state] == 3)
  {
    v4 = [(PXStoryView *)self viewModel];
    v5 = [v4 wantsChromeVisible];

    if ((v5 & 1) == 0)
    {
      v6 = [v10 allowedPressTypes];
      v7 = [v6 isEqualToArray:&unk_1F1910978];

      if (v7)
      {
        [(PXStoryView *)self _moveLeftAfterEdgeTap:0];
      }

      else
      {
        v8 = [v10 allowedPressTypes];
        v9 = [v8 isEqualToArray:&unk_1F1910990];

        if (v9)
        {
          [(PXStoryView *)self _moveRightAfterEdgeTap:0];
        }
      }
    }
  }
}

- (void)_handleLongPress:(id)a3
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([v4 state] != 2)
  {
    v5 = PLStoryGetLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = 134218240;
      v7 = self;
      v8 = 2048;
      v9 = [v4 state];
      _os_log_impl(&dword_1A3C1C000, v5, OS_LOG_TYPE_INFO, "%p long press state=%li", &v6, 0x16u);
    }
  }
}

- (void)_handleTap:(id)a3
{
  v4 = a3;
  if ([v4 state] == 3)
  {
    [v4 locationInView:self];
    [(PXStoryView *)self _handlePrimaryInteractionAtPoint:?];
  }
}

- (void)_handleSwipeGesture:(id)a3
{
  v11 = a3;
  v4 = [v11 state] == 3;
  v5 = v11;
  if (v4)
  {
    v6 = [v11 direction];
    if (v6 == 8)
    {
      v7 = +[PXStorySettings sharedInstance];
      v8 = [v7 swipeDownAction];

      v5 = v11;
      if (v8 != 2)
      {
        goto LABEL_12;
      }

      v9 = [(PXStoryView *)self viewModel];
      v10 = [v9 actionPerformer];
      [v10 dismissStoryViewController];
    }

    else if (v6 == 2)
    {
      [(PXStoryView *)self _moveRightAfterEdgeTap:0];
    }

    else
    {
      v4 = v6 == 1;
      v5 = v11;
      if (!v4)
      {
        goto LABEL_12;
      }

      [(PXStoryView *)self _moveLeftAfterEdgeTap:0];
    }

    v5 = v11;
  }

LABEL_12:
}

- (void)_handleAnyTouchOrPressGesture:(id)a3
{
  v4 = a3;
  v5 = [v4 state];
  if ((v5 - 3) >= 3)
  {
    if ((v5 - 1) <= 1)
    {
      [(NSMutableSet *)self->_activeRemoteGestureRecognizers addObject:v4];
    }
  }

  else
  {
    [(NSMutableSet *)self->_activeRemoteGestureRecognizers removeObject:v4];
  }

  v6 = [(PXStoryView *)self viewModel];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __45__PXStoryView__handleAnyTouchOrPressGesture___block_invoke;
  v7[3] = &unk_1E774B048;
  v7[4] = self;
  [v6 performChanges:v7];
}

void __45__PXStoryView__handleAnyTouchOrPressGesture___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 activeRemoteGestureRecognizers];
  [v3 setIsUserPerformingRemoteGesture:{objc_msgSend(v4, "count") != 0}];
}

- (void)_handleMenuGestureRecognizer:(id)a3
{
  if ([a3 state] == 3)
  {
    v4 = [(PXStoryView *)self viewModel];
    v5 = [v4 viewMode];

    if (v5 == 1)
    {
      v7 = [(PXStoryView *)self viewModel];
      v8 = [v7 wantsRelatedOverlayVisible];

      if (v8)
      {

        [(PXStoryView *)self _hideRelatedOverlay];
      }

      else
      {

        [(PXStoryView *)self _toggleChrome];
      }
    }

    else if (v5 == 4 || v5 == 2)
    {
      v9 = [(PXStoryView *)self viewModel];
      v6 = [v9 mainModel];
      [v6 performChanges:&__block_literal_global_471_106188];
    }
  }
}

- (void)_handlePlayPauseGesture:(id)a3
{
  if ([a3 state] == 3)
  {

    [(PXStoryView *)self _togglePlayback];
  }
}

- (void)cancelOperation:(id)a3
{
  v4 = [(PXStoryView *)self viewModel];
  v3 = [v4 actionPerformer];
  [v3 dismissStoryViewController];
}

- (BOOL)_canNavigateToSelectedRelated
{
  v3 = [(PXStoryView *)self viewModel];
  v4 = [v3 highlightedRelatedIndex];

  v5 = [(PXStoryView *)self viewModel];
  v6 = [v5 wantsRelatedOverlayVisible];
  if (v4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = 0;
  }

  else
  {
    v7 = v6;
  }

  return v7;
}

- (void)_navigateToSelectedRelated
{
  if ([(PXStoryView *)self _canNavigateToSelectedRelated])
  {
    v3 = [(PXStoryView *)self viewModel];
    [v3 performChanges:&__block_literal_global_469];
  }
}

void __41__PXStoryView__navigateToSelectedRelated__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 selectRelatedAtIndex:{objc_msgSend(v2, "highlightedRelatedIndex")}];
}

- (void)insertNewline:(id)a3
{
  v4 = a3;
  if ([(PXStoryView *)self _canNavigateToSelectedRelated])
  {
    objc_initWeak(&location, self);
    v5 = [(PXStoryView *)self viewModel];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __29__PXStoryView_insertNewline___block_invoke;
    v6[3] = &unk_1E773E510;
    objc_copyWeak(&v7, &location);
    [v5 requestNavigationPermission:v6];

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

- (void)moveRight:(id)a3
{
  v4 = [(PXStoryView *)self viewModel];
  v5 = [v4 wantsRelatedOverlayVisible];

  if (v5)
  {

    [(PXStoryView *)self _handleRelatedKeyboardNavigation:8];
  }

  else
  {

    [(PXStoryView *)self _handleEdgeTap:8];
  }
}

- (void)moveLeft:(id)a3
{
  v4 = [(PXStoryView *)self viewModel];
  v5 = [v4 wantsRelatedOverlayVisible];

  if (v5)
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
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"PXStoryView.m" lineNumber:545 description:{@"Invalid parameter not satisfying: %@", @"PLHasInternalUI()"}];
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
  v3 = [(PXStoryView *)self viewModel];
  v2 = [v3 actionPerformer];
  [v2 presentChapterEditor];
}

- (void)_changeOverallDuration:(int64_t)a3
{
  v4 = [(PXStoryView *)self viewModel];
  v5 = [v4 mainModel];
  v6 = [v5 recipeManager];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __38__PXStoryView__changeOverallDuration___block_invoke;
  v7[3] = &__block_descriptor_40_e39_v16__0___PXStoryMutableRecipeManager__8l;
  v7[4] = a3;
  [v6 performChanges:v7];
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
  v2 = [(PXStoryView *)self viewModel];
  v3 = [v2 mainModel];

  v4 = [v3 styleManager];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __32__PXStoryView__changeColorGrade__block_invoke;
  v6[3] = &unk_1E773EC68;
  v7 = v4;
  v5 = v4;
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
  v2 = [(PXStoryView *)self viewModel];
  v3 = [v2 mainModel];

  v4 = [v3 styleManager];
  v5 = [v4 selectionDataSource];
  v6 = [v5 numberOfStyles];
  if (v6 >= 1)
  {
    v7 = v6;
    v8 = [v5 indexOfCurrentStyle];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __27__PXStoryView__changeStyle__block_invoke;
    v9[3] = &unk_1E7738E08;
    v11 = (v8 + 1) % v7;
    v10 = v5;
    [v4 performChanges:v9 origin:2];
  }
}

- (void)_hideRelatedOverlay
{
  v2 = [(PXStoryView *)self viewModel];
  [v2 performChanges:&__block_literal_global_458_106201];
}

- (void)_toggleChrome
{
  v2 = [(PXStoryView *)self viewModel];
  [v2 performChanges:&__block_literal_global_456];
}

- (void)_togglePlayback
{
  v2 = [(PXStoryView *)self viewModel];
  [v2 performChanges:&__block_literal_global_454];
}

- (id)_storyHitTestResultAtPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v6 = [(PXStoryView *)self tungstenView];
  [v6 convertPoint:self fromView:{x, y}];
  v7 = [v6 hitTestResultAtPoint:?];
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

- (void)_handleEdgeTap:(unint64_t)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = [(PXStoryView *)self viewModel];
  v6 = [v5 mainModel];

  v7 = [v6 currentSegmentIdentifier];
  v8 = [v6 timeline];
  v9 = [v8 lastSegmentIdentifier];

  v10 = [(PXStoryView *)self _isRTL];
  if (v7 == v9 && (a3 != 8 ? (v11 = 1) : (v11 = v10), a3 == 2 ? (v12 = v10) : (v12 = 0), v12 || (v11 & 1) == 0))
  {
    v13 = [(PXStoryView *)self viewModel];
    v14 = [v13 shouldAutoReplayPreference];

    v15 = [(PXStoryView *)self viewModel];
    v16 = [v15 mainConfiguration];
    v17 = [v16 shouldReplayAtEnd];

    if ((v17 & 1) != 0 || v14)
    {
      v18 = [(PXStoryView *)self viewModel];
      v19 = [v18 desiredPlayState] == 1;

      v20 = [(PXStoryView *)self viewModel];
      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v21[2] = __30__PXStoryView__handleEdgeTap___block_invoke;
      v21[3] = &__block_descriptor_34_e35_v16__0___PXStoryMutableViewModel__8l;
      v22 = v19;
      v23 = v14;
      [v20 performChanges:v21];
    }

    else
    {
      [v6 performChanges:&__block_literal_global_451_106203];
    }
  }

  else if (a3 == 2)
  {
    [(PXStoryView *)self _moveLeftAfterEdgeTap:1];
  }

  else
  {
    if (a3 != 8)
    {
      PXAssertGetLog();
    }

    [(PXStoryView *)self _moveRightAfterEdgeTap:1];
  }
}

- (void)_handleRelatedKeyboardNavigation:(unint64_t)a3
{
  v6 = [(PXStoryView *)self viewModel];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __48__PXStoryView__handleRelatedKeyboardNavigation___block_invoke;
  v7[3] = &unk_1E7738DE0;
  v7[4] = self;
  v7[5] = a3;
  v7[6] = a2;
  [v6 performChanges:v7];
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

- (BOOL)_handlePrimaryInteractionAtPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v6 = [(PXStoryView *)self viewModel];
  v7 = [v6 viewMode];
  if (v7 == 4)
  {
    v8 = [v6 mainConfiguration];
    v9 = [v8 isAppleMusicPreview];

    if ((v9 & 1) == 0)
    {
      v10 = [v6 mainModel];
      v11 = [v6 mainModel];
      v12 = [v11 styleManager];

      v22 = MEMORY[0x1E69E9820];
      v23 = 3221225472;
      v24 = __48__PXStoryView__handlePrimaryInteractionAtPoint___block_invoke;
      v25 = &unk_1E773E390;
      v26 = v12;
      v27 = v10;
      v13 = v10;
      v14 = v12;
      [v6 performChanges:&v22];
    }

    goto LABEL_7;
  }

  v15 = v7;
  v16 = [(PXStoryView *)self tungstenView];
  [v16 convertPoint:self fromView:{x, y}];
  v17 = [v16 handlePrimaryInteractionAtPoint:?];

  if (v17)
  {
LABEL_7:
    v18 = [v6 viewLayoutSpec];
    goto LABEL_8;
  }

  if ([v6 wantsRelatedOverlayVisible])
  {
    [v6 performChanges:&__block_literal_global_445_106210];
    goto LABEL_7;
  }

  v18 = [v6 viewLayoutSpec];
  v21 = [v18 wantsEdgeTapToChangeCurrentSegment];
  if (v15 == 1 && v21)
  {
    [(PXStoryView *)self bounds];
    [v18 tapNavigationAreaInsets];
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

- (void)_skipToSegmentWithOffset:(int64_t)a3 afterEdgeTap:(BOOL)a4
{
  v6 = [(PXStoryView *)self viewModel];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __53__PXStoryView__skipToSegmentWithOffset_afterEdgeTap___block_invoke;
  v7[3] = &__block_descriptor_41_e35_v16__0___PXStoryMutableViewModel__8l;
  v7[4] = a3;
  v8 = a4;
  [v6 performChanges:v7];
}

- (void)_moveRightAfterEdgeTap:(BOOL)a3
{
  v3 = a3;
  if ([(PXStoryView *)self _isRTL])
  {
    v5 = -1;
  }

  else
  {
    v5 = 1;
  }

  [(PXStoryView *)self _skipToSegmentWithOffset:v5 afterEdgeTap:v3];
}

- (void)_moveLeftAfterEdgeTap:(BOOL)a3
{
  v3 = a3;
  if ([(PXStoryView *)self _isRTL])
  {
    v5 = 1;
  }

  else
  {
    v5 = -1;
  }

  [(PXStoryView *)self _skipToSegmentWithOffset:v5 afterEdgeTap:v3];
}

- (void)insertText:(id)a3
{
  v4 = a3;
  v5 = [(PXStoryView *)self viewModel];
  v6 = [v5 viewMode];
  if ([v4 isEqualToString:@" "] && (objc_msgSend(v5, "wantsRelatedOverlayVisible") & 1) == 0 && v6 == 1)
  {
    [(PXStoryView *)self _togglePlayback];
  }

  if (PFOSVariantHasInternalUI())
  {
    v9 = MEMORY[0x1E69E9820];
    v10 = 3221225472;
    v11 = __26__PXStoryView_insertText___block_invoke;
    v12 = &unk_1E773E390;
    v7 = v4;
    v13 = v7;
    v14 = self;
    [v5 performChanges:&v9];
    if ([v7 isEqualToString:{@"v", v9, v10, v11, v12}])
    {
      v8 = [v5 actionPerformer];
      [v8 showVisualDiagnostics];
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
  v3 = [MEMORY[0x1E695DF70] array];
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
  [v3 addObject:self->_touchingGestureRecognizer];
  v8 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:self action:sel__handleTap_];
  tapGestureRecognizer = self->_tapGestureRecognizer;
  self->_tapGestureRecognizer = v8;

  [(UITapGestureRecognizer *)self->_tapGestureRecognizer setDelegate:self];
  [v3 addObject:self->_tapGestureRecognizer];
  v10 = [objc_alloc(MEMORY[0x1E69DCC48]) initWithTarget:self action:sel__handleLongPress_];
  longPressGestureRecognizer = self->_longPressGestureRecognizer;
  self->_longPressGestureRecognizer = v10;

  [(UILongPressGestureRecognizer *)self->_longPressGestureRecognizer setDelegate:self];
  [v3 addObject:self->_longPressGestureRecognizer];
  if (PFOSVariantHasInternalUI())
  {
    v12 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:self action:sel__handleTwoFingerTap_];
    [v12 setNumberOfTouchesRequired:2];
    [v3 addObject:v12];
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __44__PXStoryView__initializeGestureRecognizers__block_invoke;
  aBlock[3] = &unk_1E7738D78;
  aBlock[4] = self;
  v13 = v3;
  v34 = v13;
  v14 = _Block_copy(aBlock);
  v15 = [(PXStoryView *)self viewConfiguration];
  v16 = [v15 configuration];
  v17 = [v16 allowsVerticalGestures];

  if (v17)
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

- (id)itemPlacementControllerForItemReference:(id)a3
{
  v4 = a3;
  v5 = [(PXStoryView *)self viewLayout];
  v6 = [v5 itemPlacementControllerForItemReference:v4];

  return v6;
}

- (id)mainItemReference
{
  v2 = [(PXStoryView *)self viewLayout];
  v3 = [v2 mainItemReference];

  return v3;
}

- (void)setIsTouching:(BOOL)a3
{
  if (self->_isTouching != a3)
  {
    v10 = v3;
    v11 = v4;
    self->_isTouching = a3;
    v6 = [(PXStoryView *)self viewModel];
    v7 = [v6 mainModel];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __29__PXStoryView_setIsTouching___block_invoke;
    v8[3] = &__block_descriptor_33_e31_v16__0___PXStoryMutableModel__8l;
    v9 = a3;
    [v7 performChanges:v8];
  }
}

- (PXGView)tungstenView
{
  v2 = [(PXStoryView *)self tungstenViewCoordinator];
  v3 = [v2 tungstenView];

  return v3;
}

- (void)setIsActive:(BOOL)a3
{
  if (self->_isActive != a3)
  {
    v9 = v3;
    v10 = v4;
    self->_isActive = a3;
    v6 = [(PXStoryView *)self viewModel];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __27__PXStoryView_setIsActive___block_invoke;
    v7[3] = &__block_descriptor_33_e35_v16__0___PXStoryMutableViewModel__8l;
    v8 = a3;
    [v6 performChanges:v7];
  }
}

- (PXStoryView)initWithFrame:(CGRect)a3 configuration:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v10 = a4;
  v42.receiver = self;
  v42.super_class = PXStoryView;
  v11 = [(PXStoryView *)&v42 initWithFrame:x, y, width, height];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_viewConfiguration, a4);
    v13 = [v10 configuration];
    v14 = [v13 storyQueue];
    storyQueue = v12->_storyQueue;
    v12->_storyQueue = v14;

    v16 = [v13 useLowPowerMode];
    v17 = [[PXStoryPacingAutoIncrementingTimeSource alloc] initWithLayoutQueue:v12->_storyQueue lowPowerMode:v16];
    timeSource = v12->_timeSource;
    v12->_timeSource = v17;

    v19 = [v13 mediaProvider];
    v20 = [PXStoryViewModel alloc];
    v21 = [v10 extendedTraitCollection];
    v22 = [(PXStoryViewModel *)v20 initWithConfiguration:v13 extendedTraitCollection:v21 timeSource:v12->_timeSource mediaProvider:v19];
    viewModel = v12->_viewModel;
    v12->_viewModel = v22;

    [(PXStoryViewModel *)v12->_viewModel registerChangeObserver:v12 context:ViewModelObservationContext_106154];
    v24 = [[PXStoryViewLayout alloc] initWithViewModel:v12->_viewModel];
    viewLayout = v12->_viewLayout;
    v12->_viewLayout = v24;

    v26 = [off_1E7721718 alloc];
    v27 = v12->_viewLayout;
    v28 = [v10 containerViewController];
    v40[0] = MEMORY[0x1E69E9820];
    v40[1] = 3221225472;
    v40[2] = __43__PXStoryView_initWithFrame_configuration___block_invoke;
    v40[3] = &unk_1E7738D50;
    v29 = v19;
    v41 = v29;
    v30 = [v26 initWithContentLayout:v27 containerView:v12 belowSubview:0 containerViewController:v28 configuration:v40];
    tungstenViewCoordinator = v12->_tungstenViewCoordinator;
    v12->_tungstenViewCoordinator = v30;

    [(PXStoryView *)v12 _updateBackgroundColor];
    v32 = [v10 configuration];
    v33 = [v32 options];

    if ((v33 & 0x20) != 0)
    {
      v34 = 2;
    }

    else
    {
      v32 = +[PXStoryTransitionsSettings sharedInstance];
      v34 = [v32 transitionQuality];
    }

    v35 = [(PXGViewCoordinator *)v12->_tungstenViewCoordinator tungstenView];
    [v35 setOffscreenEffectQuality:v34];

    if ((v33 & 0x20) == 0)
    {
    }

    v36 = [(PXGViewCoordinator *)v12->_tungstenViewCoordinator tungstenView];
    [v36 setLowPowerModeEnabled:v16];

    if (([v13 options] & 0x400) == 0)
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

- (PXStoryView)initWithCoder:(id)a3
{
  v5 = a3;
  v6 = [MEMORY[0x1E696AAA8] currentHandler];
  [v6 handleFailureInMethod:a2 object:self file:@"PXStoryView.m" lineNumber:110 description:{@"%s is not available as initializer", "-[PXStoryView initWithCoder:]"}];

  abort();
}

- (PXStoryView)initWithFrame:(CGRect)a3
{
  v5 = [MEMORY[0x1E696AAA8] currentHandler];
  [v5 handleFailureInMethod:a2 object:self file:@"PXStoryView.m" lineNumber:106 description:{@"%s is not available as initializer", "-[PXStoryView initWithFrame:]"}];

  abort();
}

+ (void)dumpTapToRadarDiagnosticAttachmentsToURL:(id)a3 completionHandler:(id)a4
{
  v5 = a3;
  v6 = a4;
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