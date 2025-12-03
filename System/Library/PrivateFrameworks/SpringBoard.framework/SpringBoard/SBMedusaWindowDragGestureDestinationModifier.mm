@interface SBMedusaWindowDragGestureDestinationModifier
- (BOOL)_draggingCenterWindow;
- (BOOL)_draggingSplitViewApp;
- (BOOL)_isDragOverFullscreenRegionAtLocation:(CGPoint)location inBounds:(CGRect)bounds;
- (BOOL)_isDragOverSideGutterRegionsAtLocation:(CGPoint)location inBounds:(CGRect)bounds totalContentDragGutterWidth:(double)width;
- (BOOL)_shouldMinimizeOrEnterSplitHomeScreen;
- (BOOL)isLayoutRoleBlurred:(int64_t)blurred inAppLayout:(id)layout;
- (CGRect)_leftFloatingZoneForCenterWindow;
- (CGRect)_rightFloatingZoneForCenterWindow;
- (CGRect)_universalCenterZone;
- (CGSize)_fullscreenActivationRegionSize;
- (SBMedusaWindowDragGestureDestinationModifier)initWithSelectedLeafAppLayout:(id)layout initialMainAppLayout:(id)appLayout initialFloatingAppLayout:(id)floatingAppLayout initialFloatingConfiguration:(int64_t)configuration delegate:(id)delegate;
- (double)_contentDraggingCommandeerWidth;
- (double)_contentDraggingFloatingActivationWidth;
- (double)_contentDraggingSideActivationWidth;
- (double)_dismissLeftBoundary;
- (double)_dismissRightBoundary;
- (double)_sideActivationGutterSize;
- (id)_transitionRequestForDestination:(unint64_t)destination complete:(BOOL)complete;
- (id)_updateForWindowDrag;
- (id)handleGestureEvent:(id)event;
- (id)handleResizeProgressEvent:(id)event;
- (id)resizeProgressNotificationsForLayoutRole:(int64_t)role inAppLayout:(id)layout;
- (int64_t)_layoutRoleForDraggedApp;
- (void)_displayLinkFired:(id)fired;
- (void)_updateCurrentDropAction;
- (void)didMoveToParentModifier:(id)modifier;
@end

@implementation SBMedusaWindowDragGestureDestinationModifier

- (SBMedusaWindowDragGestureDestinationModifier)initWithSelectedLeafAppLayout:(id)layout initialMainAppLayout:(id)appLayout initialFloatingAppLayout:(id)floatingAppLayout initialFloatingConfiguration:(int64_t)configuration delegate:(id)delegate
{
  layoutCopy = layout;
  appLayoutCopy = appLayout;
  floatingAppLayoutCopy = floatingAppLayout;
  delegateCopy = delegate;
  v20.receiver = self;
  v20.super_class = SBMedusaWindowDragGestureDestinationModifier;
  v17 = [(SBSwitcherModifier *)&v20 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_selectedLeafAppLayout, layout);
    objc_storeStrong(&v18->_initialMainAppLayout, appLayout);
    objc_storeStrong(&v18->_initialFloatingAppLayout, floatingAppLayout);
    v18->_initialFloatingConfiguration = configuration;
    objc_storeStrong(&v18->_currentAppLayout, appLayout);
    objc_storeStrong(&v18->_proposedAppLayout, appLayout);
    objc_storeWeak(&v18->_dragDestinationDelegate, delegateCopy);
    v18->_gesturePhase = 0;
    v18->_currentDestination = 0;
  }

  return v18;
}

- (void)didMoveToParentModifier:(id)modifier
{
  v6.receiver = self;
  v6.super_class = SBMedusaWindowDragGestureDestinationModifier;
  [(SBChainableModifier *)&v6 didMoveToParentModifier:?];
  if (modifier)
  {
    v5 = [(SBAppLayout *)self->_selectedLeafAppLayout itemForLayoutRole:1];
    self->_supportsMedusa = [(SBMedusaWindowDragGestureDestinationModifier *)self displayItemSupportsMedusa:v5];
    self->_supportsCenterRole = [(SBMedusaWindowDragGestureDestinationModifier *)self displayItemSupportsCenterRole:v5];
  }
}

- (id)handleGestureEvent:(id)event
{
  eventCopy = event;
  v31.receiver = self;
  v31.super_class = SBMedusaWindowDragGestureDestinationModifier;
  v5 = [(SBSwitcherModifier *)&v31 handleGestureEvent:eventCopy];
  self->_gesturePhase = [eventCopy phase];
  [eventCopy locationInContainerView];
  self->_location.x = v6;
  self->_location.y = v7;
  [eventCopy translationInContainerView];
  self->_translation.x = v8;
  self->_translation.y = v9;
  [eventCopy averageTouchVelocityOverTimeDuration:0.0416666667];
  self->_velocity.x = v10;
  self->_velocity.y = v11;
  pendingEnterPlatterZoneResponse = self->_pendingEnterPlatterZoneResponse;
  if (pendingEnterPlatterZoneResponse)
  {
    v13 = SBAppendSwitcherModifierResponse(pendingEnterPlatterZoneResponse, v5);

    v14 = self->_pendingEnterPlatterZoneResponse;
    self->_pendingEnterPlatterZoneResponse = 0;

    v5 = v13;
  }

  if ([eventCopy phase] == 1)
  {
    draggingAppLayoutsForWindowDrag = [(SBMedusaWindowDragGestureDestinationModifier *)self draggingAppLayoutsForWindowDrag];
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __67__SBMedusaWindowDragGestureDestinationModifier_handleGestureEvent___block_invoke;
    v30[3] = &unk_2783A8CB8;
    v30[4] = self;
    v16 = [draggingAppLayoutsForWindowDrag bs_firstObjectPassingTest:v30];

    preferredDisplayOrdinal = [v16 preferredDisplayOrdinal];
    displayOrdinal = [(SBMedusaWindowDragGestureDestinationModifier *)self displayOrdinal];
    self->_dragBeganInOtherSwitcher = preferredDisplayOrdinal != displayOrdinal;
    self->_dragBeganInOurSwitcher = preferredDisplayOrdinal == displayOrdinal;
  }

  _updateForWindowDrag = [(SBMedusaWindowDragGestureDestinationModifier *)self _updateForWindowDrag];
  v20 = SBAppendSwitcherModifierResponse(_updateForWindowDrag, v5);

  v21 = [(SBAppLayout *)self->_proposedAppLayout containsAllItemsFromAppLayout:self->_selectedLeafAppLayout];
  [(SBMedusaWindowDragGestureDestinationModifier *)self _updateCurrentDropAction];
  v22 = [(SBAppLayout *)self->_proposedAppLayout containsAllItemsFromAppLayout:self->_selectedLeafAppLayout];
  if ([eventCopy phase] == 2 && v21 != v22)
  {
    v23 = [(SBMedusaWindowDragGestureDestinationModifier *)self _transitionRequestForDestination:self->_currentDestination complete:0];
    v24 = [[SBPerformTransitionSwitcherEventResponse alloc] initWithTransitionRequest:v23 gestureInitiated:1];
    v25 = SBAppendSwitcherModifierResponse(v24, v20);

    v20 = v25;
  }

  if ([eventCopy phase] == 3)
  {
    v26 = [(SBMedusaWindowDragGestureDestinationModifier *)self _transitionRequestForDestination:self->_currentDestination complete:1];
    v27 = [[SBPerformTransitionSwitcherEventResponse alloc] initWithTransitionRequest:v26 gestureInitiated:1];
    v28 = SBAppendSwitcherModifierResponse(v27, v20);

    v20 = v28;
  }

  return v20;
}

uint64_t __67__SBMedusaWindowDragGestureDestinationModifier_handleGestureEvent___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(*(a1 + 32) + 128);
  v3 = a2;
  v4 = [v2 itemForLayoutRole:1];
  v5 = [v3 containsItem:v4];

  return v5;
}

- (id)handleResizeProgressEvent:(id)event
{
  eventCopy = event;
  v5 = eventCopy;
  if (self->_isResizingToFullScreen || self->_hasResizedEnoughToUnblur)
  {
    [eventCopy progress];
    self->_isResizingToFullScreen = BSFloatIsOne() ^ 1;
    medusaSettings = [(SBMedusaWindowDragGestureDestinationModifier *)self medusaSettings];
    [medusaSettings dropAnimationUnblurThresholdPercentage];
    self->_hasResizedEnoughToUnblur = BSFloatGreaterThanOrEqualToFloat();
  }

  v9.receiver = self;
  v9.super_class = SBMedusaWindowDragGestureDestinationModifier;
  v7 = [(SBSwitcherModifier *)&v9 handleResizeProgressEvent:v5];

  return v7;
}

- (BOOL)isLayoutRoleBlurred:(int64_t)blurred inAppLayout:(id)layout
{
  layoutCopy = layout;
  if (self->_isResizingToFullScreen && -[SBAppLayout isFullScreen](self->_currentAppLayout, "isFullScreen") && ([layoutCopy itemForLayoutRole:1], v7 = objc_claimAutoreleasedReturnValue(), -[SBAppLayout itemForLayoutRole:](self->_currentAppLayout, "itemForLayoutRole:", 1), v8 = objc_claimAutoreleasedReturnValue(), v9 = -[SBDisplayItem isEqualToItem:](v7, v8), v8, v7, v9) || self->_gesturePhase == 3 && self->_currentDestination - 11 <= 1)
  {
    v10 = !self->_hasResizedEnoughToUnblur;
  }

  else
  {
    v12.receiver = self;
    v12.super_class = SBMedusaWindowDragGestureDestinationModifier;
    v10 = [(SBMedusaWindowDragGestureDestinationModifier *)&v12 isLayoutRoleBlurred:blurred inAppLayout:layoutCopy];
  }

  return v10;
}

- (id)resizeProgressNotificationsForLayoutRole:(int64_t)role inAppLayout:(id)layout
{
  v19[3] = *MEMORY[0x277D85DE8];
  layoutCopy = layout;
  v18.receiver = self;
  v18.super_class = SBMedusaWindowDragGestureDestinationModifier;
  v7 = [(SBMedusaWindowDragGestureDestinationModifier *)&v18 resizeProgressNotificationsForLayoutRole:role inAppLayout:layoutCopy];
  if (self->_isResizingToFullScreen)
  {
    if ([(SBAppLayout *)self->_currentAppLayout isFullScreen])
    {
      v8 = [layoutCopy itemForLayoutRole:1];
      v9 = [(SBAppLayout *)self->_currentAppLayout itemForLayoutRole:1];
      v10 = [(SBDisplayItem *)v8 isEqualToItem:v9];

      if (v10)
      {
        medusaSettings = [(SBMedusaWindowDragGestureDestinationModifier *)self medusaSettings];
        [medusaSettings dropAnimationUnblurThresholdPercentage];
        v13 = v12;

        v19[0] = &unk_28336F250;
        v14 = [MEMORY[0x277CCABB0] numberWithDouble:v13];
        v19[1] = v14;
        v19[2] = &unk_28336F260;
        v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:3];
        v16 = [v7 setByAddingObjectsFromArray:v15];

        v7 = v16;
      }
    }
  }

  return v7;
}

- (void)_displayLinkFired:(id)fired
{
  if (self->_gesturePhase == 2)
  {
    p_velocity = &self->_velocity;
    [(SBMedusaWindowDragGestureDestinationModifier *)self gestureHandlingModifier:self averageVelocityOverDuration:0.0416666667];
    p_velocity->x = v6;
    p_velocity->y = v7;
    _updateForWindowDrag = [(SBMedusaWindowDragGestureDestinationModifier *)self _updateForWindowDrag];
    if (self->_enteredPlatterZone)
    {
      v10 = _updateForWindowDrag;
      objc_storeStrong(&self->_pendingEnterPlatterZoneResponse, _updateForWindowDrag);
      [(SBMedusaWindowDragGestureDestinationModifier *)self gestureHandlingModifierRequestsUpdate:self];
      _updateForWindowDrag = v10;
      pendingEnterPlatterZoneResponse = self->_pendingEnterPlatterZoneResponse;
      if (pendingEnterPlatterZoneResponse == v10)
      {
        self->_pendingEnterPlatterZoneResponse = 0;

        _updateForWindowDrag = v10;
      }
    }
  }
}

- (id)_updateForWindowDrag
{
  if (self->_enteredPlatterZone)
  {
    goto LABEL_27;
  }

  if (!self->_displayLink)
  {
    v3 = [MEMORY[0x277CD9E48] displayLinkWithTarget:self selector:sel__displayLinkFired_];
    displayLink = self->_displayLink;
    self->_displayLink = v3;

    v5 = self->_displayLink;
    mainRunLoop = [MEMORY[0x277CBEB88] mainRunLoop];
    [(CADisplayLink *)v5 addToRunLoop:mainRunLoop forMode:*MEMORY[0x277CBE738]];

    self->_dragPauseCounter = 0;
  }

  [(SBMedusaWindowDragGestureDestinationModifier *)self switcherViewBounds];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  x = self->_location.x;
  y = self->_location.y;
  v17 = self->_translation.x;
  [(SBMedusaWindowDragGestureDestinationModifier *)self _contentDraggingCommandeerWidth];
  v19 = v18;
  if (BSFloatLessThanFloat() && (![(SBMedusaWindowDragGestureDestinationModifier *)self _draggingFullScreenApp]&& [(SBMedusaWindowDragGestureDestinationModifier *)self _isDragOverFullscreenRegionAtLocation:x inBounds:y, v8, v10, v12, v14]|| [(SBMedusaWindowDragGestureDestinationModifier *)self _layoutRoleForDraggedApp]== 3 && [(SBMedusaWindowDragGestureDestinationModifier *)self _isDragOverSideGutterRegionsAtLocation:x inBounds:y totalContentDragGutterWidth:v8, v10, v12, v14, v19]))
  {
    ++self->_dragPauseCounter;
  }

  else
  {
    self->_dragPauseCounter = 0;
  }

  v20 = SBScreenMaximumFramesPerSecond() * 0.05;
  dragPauseCounter = self->_dragPauseCounter;
  self->_enteredPlatterZone = dragPauseCounter > v20;
  if (dragPauseCounter > v20)
  {
    goto LABEL_13;
  }

  v30 = v8;
  v31 = v10;
  v32 = v12;
  v33 = v14;
  v34 = x;
  v35 = y;
  if (!CGRectContainsPoint(*&v30, *&v34))
  {
    if (!self->_enteredPlatterZone)
    {
      goto LABEL_27;
    }

    goto LABEL_13;
  }

  if ([(SBMedusaWindowDragGestureDestinationModifier *)self _draggingFullScreenApp])
  {
    v36 = fmax(fabs(v17), y);
    goto LABEL_19;
  }

  if (![(SBMedusaWindowDragGestureDestinationModifier *)self _draggingSplitViewApp])
  {
    if (![(SBMedusaWindowDragGestureDestinationModifier *)self _draggingCenterWindow])
    {
      v37 = y <= 150.0;
LABEL_20:
      v38 = !v37;
      self->_enteredPlatterZone = v38;
      if (v37)
      {
        goto LABEL_27;
      }

      goto LABEL_13;
    }

    v36 = fabs(v17);
LABEL_19:
    v37 = v36 <= 150.0;
    goto LABEL_20;
  }

  v40 = fabs(v17) > 150.0;
  if (y <= 150.0)
  {
    v40 = 0;
  }

  self->_enteredPlatterZone = v40;
  if (!v40)
  {
    goto LABEL_27;
  }

LABEL_13:
  [(CADisplayLink *)self->_displayLink invalidate];
  v22 = self->_displayLink;
  self->_displayLink = 0;

  if ([(SBMedusaWindowDragGestureDestinationModifier *)self _draggingSplitViewApp])
  {
    v23 = [(SBMedusaWindowDragGestureDestinationModifier *)self _transitionRequestForDestination:7 complete:0];
    appLayout = [v23 appLayout];
    currentAppLayout = self->_currentAppLayout;
    self->_currentAppLayout = appLayout;

    self->_isResizingToFullScreen = 1;
    self->_hasResizedEnoughToUnblur = 0;
    initialMainAppLayout = self->_initialMainAppLayout;
    v41[0] = MEMORY[0x277D85DD0];
    v41[1] = 3221225472;
    v41[2] = __68__SBMedusaWindowDragGestureDestinationModifier__updateForWindowDrag__block_invoke;
    v41[3] = &unk_2783A8C90;
    v41[4] = self;
    v27 = [(SBAppLayout *)initialMainAppLayout appLayoutWithItemsPassingTest:v41];
    if (v27)
    {
      v28 = objc_alloc_init(SBMutableSwitcherTransitionRequest);
      [(SBSwitcherTransitionRequest *)v28 setAppLayout:v27];
      [(SBSwitcherTransitionRequest *)v28 setSceneUpdatesOnly:1];
      v29 = [[SBPerformTransitionSwitcherEventResponse alloc] initWithTransitionRequest:v28 gestureInitiated:1];
    }

    else
    {
      v29 = 0;
    }

    goto LABEL_28;
  }

LABEL_27:
  v29 = 0;
LABEL_28:

  return v29;
}

BOOL __68__SBMedusaWindowDragGestureDestinationModifier__updateForWindowDrag__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(*(a1 + 32) + 280) containsItem:v3])
  {
    v4 = [*(*(a1 + 32) + 280) layoutRoleForItem:v3] != 3;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (void)_updateCurrentDropAction
{
  [(SBMedusaWindowDragGestureDestinationModifier *)self switcherViewBounds];
  v71 = v3;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  x = self->_location.x;
  y = self->_location.y;
  v13 = self->_velocity.x;
  v12 = self->_velocity.y;
  v74 = y + v12 * 0.15;
  isRTLEnabled = [(SBMedusaWindowDragGestureDestinationModifier *)self isRTLEnabled];
  v97[0] = MEMORY[0x277D85DD0];
  v97[1] = 3221225472;
  v97[2] = __72__SBMedusaWindowDragGestureDestinationModifier__updateCurrentDropAction__block_invoke;
  v97[3] = &unk_2783B3208;
  v97[4] = self;
  v67 = v7 * 0.5;
  v75 = x + v13 * 0.15;
  v15 = v75 < v7 * 0.5;
  *&v97[5] = v13;
  *&v97[6] = v12;
  if (isRTLEnabled)
  {
    v15 = x + v13 * 0.15 >= v7 * 0.5;
  }

  v48 = !v15;
  v16 = 6;
  *&v97[7] = v71;
  *&v97[8] = v5;
  if (v48)
  {
    v16 = 7;
  }

  v72 = v16;
  *&v97[9] = v7;
  *&v97[10] = v9;
  *&v97[11] = x;
  *&v97[12] = y;
  v17 = MEMORY[0x223D6F7F0](v97);
  supportsMedusa = self->_supportsMedusa;
  isInMedusaCapableSpace = [(SBMedusaWindowDragGestureDestinationModifier *)self isInMedusaCapableSpace];
  isMedusaCapable = [(SBMedusaWindowDragGestureDestinationModifier *)self isMedusaCapable];
  [(SBMedusaWindowDragGestureDestinationModifier *)self _fullscreenActivationRegionSize];
  SBRectWithSize();
  UIRectCenteredXInRect();
  v98.x = x;
  v98.y = y;
  v77 = CGRectContainsPoint(v103, v98);
  v73 = v17;
  if (self->_supportsCenterRole)
  {
    [(SBMedusaWindowDragGestureDestinationModifier *)self _universalCenterZone];
    v99.x = x;
    v99.y = y;
    v18 = CGRectContainsPoint(v104, v99);
    if (self->_supportsCenterRole)
    {
      [(SBMedusaWindowDragGestureDestinationModifier *)self _leftFloatingZoneForCenterWindow];
      v100.x = x;
      v100.y = y;
      v19 = CGRectContainsPoint(v105, v100);
      if (self->_supportsCenterRole)
      {
        [(SBMedusaWindowDragGestureDestinationModifier *)self _rightFloatingZoneForCenterWindow];
        v101.x = x;
        v101.y = y;
        v20 = CGRectContainsPoint(v106, v101);
        goto LABEL_12;
      }
    }

    else
    {
      v19 = 0;
    }
  }

  else
  {
    v19 = 0;
    v18 = 0;
  }

  v20 = 0;
LABEL_12:
  WeakRetained = objc_loadWeakRetained(&self->_dragDestinationDelegate);
  switcherInterfaceOrientation = [(SBMedusaWindowDragGestureDestinationModifier *)self switcherInterfaceOrientation];
  [(SBMedusaWindowDragGestureDestinationModifier *)self _sideActivationGutterSize];
  v24 = v23 + v23;
  v76 = WeakRetained;
  [WeakRetained platterScaleForWindowDragGestureDestinationModifier:self];
  v26 = v25;
  [(SBMedusaWindowDragGestureDestinationModifier *)self floatingApplicationFrameInInterfaceOrientation:switcherInterfaceOrientation floatingConfiguration:self->_initialFloatingConfiguration];
  v28 = v24 + v26 * v27 * 0.5;
  LOBYTE(switcherInterfaceOrientation) = [(SBMedusaWindowDragGestureDestinationModifier *)self isSplitViewSupported];
  v29 = [(SBAppLayout *)self->_selectedLeafAppLayout itemForLayoutRole:?];
  proposedAppLayoutForWindowDrag = [(SBMedusaWindowDragGestureDestinationModifier *)self proposedAppLayoutForWindowDrag];
  v31 = [proposedAppLayoutForWindowDrag containsItem:v29];

  proposedAppLayoutsForWindowDrag = [(SBMedusaWindowDragGestureDestinationModifier *)self proposedAppLayoutsForWindowDrag];
  v95[0] = MEMORY[0x277D85DD0];
  v95[1] = 3221225472;
  v95[2] = __72__SBMedusaWindowDragGestureDestinationModifier__updateCurrentDropAction__block_invoke_2;
  v95[3] = &unk_2783A8CB8;
  v96 = v29;
  v33 = v29;
  v34 = [proposedAppLayoutsForWindowDrag bs_containsObjectPassingTest:v95];

  dragBeganInOurSwitcher = self->_dragBeganInOurSwitcher;
  v36 = self->_currentAppLayout;
  v78[0] = MEMORY[0x277D85DD0];
  v78[1] = 3221225472;
  v78[2] = __72__SBMedusaWindowDragGestureDestinationModifier__updateCurrentDropAction__block_invoke_3;
  v78[3] = &unk_2783B3230;
  v78[4] = self;
  v90 = v77;
  v91 = switcherInterfaceOrientation;
  v80 = v75;
  v81 = v74;
  v82 = v71;
  v83 = v5;
  v84 = v7;
  v85 = v9;
  v37 = v36;
  v79 = v37;
  v86 = x;
  v87 = y;
  v92 = v19;
  v93 = v20;
  v88 = v28;
  v94 = v18;
  v89 = v72;
  v38 = MEMORY[0x223D6F7F0](v78);
  if (self->_dragBeganInOtherSwitcher)
  {
    v107.origin.x = v71;
    v107.origin.y = v5;
    v107.size.width = v7;
    v107.size.height = v9;
    v102.x = x;
    v102.y = y;
    if (CGRectContainsPoint(v107, v102))
    {
      allItems = [(SBAppLayout *)v37 allItems];
      v40 = [allItems count] != 0;

      v41 = 1;
      if ((v40 & isMedusaCapable) == 1)
      {
        v42 = v73;
        if (!supportsMedusa)
        {
          goto LABEL_60;
        }

        if ((isInMedusaCapableSpace & 1) == 0)
        {
          if (!self->_enteredPlatterZone)
          {
            v43 = [(SBAppLayout *)self->_selectedLeafAppLayout itemForLayoutRole:1];
            if (([(SBMedusaWindowDragGestureDestinationModifier *)self displayItemSupportsCenterRole:v43]& 1) != 0)
            {
              v41 = 10;
            }

            else
            {
              v41 = v73[2](v73);
            }

            goto LABEL_60;
          }

          goto LABEL_50;
        }

LABEL_28:
        v44 = v38[2](v38);
LABEL_59:
        v41 = v44;
        goto LABEL_60;
      }
    }

    else
    {
      v41 = 0;
    }

    v42 = v73;
    goto LABEL_60;
  }

  if ((dragBeganInOurSwitcher & v34 & (v31 ^ 1)) == 1)
  {
    v42 = v73;
    if ([(SBMedusaWindowDragGestureDestinationModifier *)self _draggingCenterWindow])
    {
      v41 = 13;
      goto LABEL_60;
    }

    if ([(SBMedusaWindowDragGestureDestinationModifier *)self _draggingSlideOverApp])
    {
      goto LABEL_30;
    }

    if (![(SBMedusaWindowDragGestureDestinationModifier *)self _draggingSplitViewApp])
    {
      v41 = 14;
      goto LABEL_60;
    }

    _layoutRoleForDraggedApp = [(SBMedusaWindowDragGestureDestinationModifier *)self _layoutRoleForDraggedApp];
    userInterfaceLayoutDirection = [*MEMORY[0x277D76620] userInterfaceLayoutDirection];
    v47 = 2;
    if (userInterfaceLayoutDirection == 1)
    {
      v47 = 1;
    }

    v48 = _layoutRoleForDraggedApp == v47;
    v49 = 11;
    goto LABEL_37;
  }

  v42 = v73;
  if ((isMedusaCapable & supportsMedusa) != 1)
  {
    goto LABEL_32;
  }

  if ((isInMedusaCapableSpace & 1) == 0)
  {
    if (![(SBMedusaWindowDragGestureDestinationModifier *)self _draggingFullScreenApp])
    {
      if (self->_enteredPlatterZone)
      {
LABEL_50:
        if (v77)
        {
          v41 = 1;
        }

        else
        {
          v41 = 10;
        }

        if (v77 || v18)
        {
          goto LABEL_60;
        }

        goto LABEL_58;
      }

      if ([(SBMedusaWindowDragGestureDestinationModifier *)self _layoutRoleForDraggedApp]!= 4)
      {
LABEL_58:
        v44 = v42[2](v42);
        goto LABEL_59;
      }

LABEL_57:
      v41 = 10;
      goto LABEL_60;
    }

LABEL_32:
    v41 = !v77;
    goto LABEL_60;
  }

  if (self->_enteredPlatterZone)
  {
    goto LABEL_28;
  }

  _layoutRoleForDraggedApp2 = [(SBMedusaWindowDragGestureDestinationModifier *)self _layoutRoleForDraggedApp];
  if (_layoutRoleForDraggedApp2 == 4)
  {
    goto LABEL_57;
  }

  if (_layoutRoleForDraggedApp2 == 3)
  {
    goto LABEL_58;
  }

  if ([(SBMedusaWindowDragGestureDestinationModifier *)self _draggingFullScreenApp])
  {
LABEL_30:
    v41 = 0;
    goto LABEL_60;
  }

  if (![(SBMedusaWindowDragGestureDestinationModifier *)self _shouldMinimizeOrEnterSplitHomeScreen]&& self->_gesturePhase >= 3)
  {
    x = v75;
  }

  v51 = v7 * 0.5;
  currentDestination = self->_currentDestination;
  if (currentDestination == 5)
  {
    v53 = -100.0;
  }

  else
  {
    if (currentDestination != 4)
    {
      goto LABEL_67;
    }

    v53 = 100.0;
  }

  v51 = v67 + v53;
LABEL_67:
  [(SBMedusaWindowDragGestureDestinationModifier *)self _dismissRightBoundary];
  if (x > v57)
  {
    _layoutRoleForDraggedApp3 = [(SBMedusaWindowDragGestureDestinationModifier *)self _layoutRoleForDraggedApp];
    userInterfaceLayoutDirection2 = [*MEMORY[0x277D76620] userInterfaceLayoutDirection];
    v60 = 2;
    if (userInterfaceLayoutDirection2 == 1)
    {
      v60 = 1;
    }

    if (_layoutRoleForDraggedApp3 == v60)
    {
      v41 = 12;
      goto LABEL_60;
    }
  }

  [(SBMedusaWindowDragGestureDestinationModifier *)self _dismissLeftBoundary];
  if (x < v61)
  {
    _layoutRoleForDraggedApp4 = [(SBMedusaWindowDragGestureDestinationModifier *)self _layoutRoleForDraggedApp];
    userInterfaceLayoutDirection3 = [*MEMORY[0x277D76620] userInterfaceLayoutDirection];
    v64 = 2;
    if (userInterfaceLayoutDirection3 != 1)
    {
      v64 = 1;
    }

    if (_layoutRoleForDraggedApp4 == v64)
    {
      v41 = 11;
      goto LABEL_60;
    }
  }

  isRTLEnabled2 = [(SBMedusaWindowDragGestureDestinationModifier *)self isRTLEnabled];
  v66 = x < v51;
  if (isRTLEnabled2)
  {
    v66 = x >= v51;
  }

  v48 = !v66;
  v49 = 4;
LABEL_37:
  if (v48)
  {
    v41 = v49 + 1;
  }

  else
  {
    v41 = v49;
  }

LABEL_60:
  if (self->_currentDestination != v41)
  {
    self->_currentDestination = v41;
    v54 = [(SBMedusaWindowDragGestureDestinationModifier *)self _transitionRequestForDestination:v41 complete:0];
    appLayout = [v54 appLayout];
    proposedAppLayout = self->_proposedAppLayout;
    self->_proposedAppLayout = appLayout;
  }
}

uint64_t __72__SBMedusaWindowDragGestureDestinationModifier__updateCurrentDropAction__block_invoke(uint64_t a1)
{
  [*(a1 + 32) _contentDraggingFloatingActivationWidth];
  v3 = v2;
  v4 = *(a1 + 32);
  v5 = v4[19];
  v6 = *(a1 + 40);
  v7 = *(a1 + 88);
  v8 = [v4 medusaSettings];
  v9 = SBFloatingConfigurationForMovingFloatingApplication(v5, v8, v6, *(a1 + 56), *(a1 + 64), *(a1 + 72), *(a1 + 80), v3, v7);

  if (v9 > 4)
  {
    return 0;
  }

  else
  {
    return qword_21F8A6720[v9];
  }
}

uint64_t __72__SBMedusaWindowDragGestureDestinationModifier__updateCurrentDropAction__block_invoke_3(uint64_t a1)
{
  if ([*(a1 + 32) _draggingFullScreenApp])
  {
    if (*(a1 + 128))
    {
      v2 = 0;
      goto LABEL_39;
    }

    if (*(a1 + 129) == 1)
    {
      v43 = [*(a1 + 32) isRTLEnabled];
      v44 = *(a1 + 48);
      v45 = *(a1 + 80) * 0.5;
      v46 = v44 < v45;
      if (v43)
      {
        v46 = v44 >= v45;
      }

      v47 = !v46;
      goto LABEL_19;
    }

LABEL_31:
    v2 = 1;
    goto LABEL_39;
  }

  if (![*(a1 + 40) isSplitConfiguration])
  {
    if (*(a1 + 129) == 1)
    {
      v49 = *(a1 + 96);
      if (v49 < CGRectGetMinX(*(a1 + 64)) + *(a1 + 112))
      {
        v41 = [*(a1 + 32) isRTLEnabled] == 0;
        v42 = 4;
        goto LABEL_36;
      }

      v50 = *(a1 + 96);
      if (v50 > CGRectGetMaxX(*(a1 + 64)) - *(a1 + 112))
      {
        v47 = [*(a1 + 32) isRTLEnabled] == 0;
LABEL_19:
        v48 = 4;
        goto LABEL_25;
      }
    }

    if (*(a1 + 128))
    {
      goto LABEL_31;
    }

    if ((*(a1 + 132) & 1) == 0)
    {
LABEL_61:
      v2 = *(a1 + 120);
      goto LABEL_39;
    }

LABEL_33:
    v2 = 10;
    goto LABEL_39;
  }

  [*(a1 + 32) containerViewBounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [*(a1 + 32) frameForLayoutRole:1 inAppLayout:*(a1 + 40) withBounds:?];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  [*(a1 + 32) frameForLayoutRole:2 inAppLayout:*(a1 + 40) withBounds:{v4, v6, v8, v10}];
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v27 = [*(a1 + 32) isRTLEnabled];
  v28 = v12;
  v63 = v14;
  v64 = v12;
  v67 = v22;
  v68 = v20;
  if (v27)
  {
    v12 = v20;
  }

  v29 = v14;
  if (v27)
  {
    v14 = v22;
  }

  v30 = v16;
  v61 = v18;
  v62 = v16;
  v65 = v26;
  v66 = v24;
  if (v27)
  {
    v16 = v24;
  }

  v31 = v18;
  if (v27)
  {
    v18 = v26;
    v20 = v28;
    v22 = v29;
    v24 = v30;
    v26 = v31;
  }

  v69.origin.x = v12;
  v69.origin.y = v14;
  v69.size.width = v16;
  v69.size.height = v18;
  MaxX = CGRectGetMaxX(v69);
  v70.origin.x = v12;
  v70.origin.y = v14;
  v70.size.width = v16;
  v70.size.height = v18;
  MinY = CGRectGetMinY(v70);
  v71.origin.x = v20;
  v71.origin.y = v22;
  v71.size.width = v24;
  v71.size.height = v26;
  MinX = CGRectGetMinX(v71);
  v72.origin.x = v12;
  v72.origin.y = v14;
  v72.size.width = v16;
  v72.size.height = v18;
  v33 = MinX - CGRectGetMaxX(v72);
  v73.origin.x = v12;
  v73.origin.y = v14;
  v73.size.width = v16;
  v73.size.height = v18;
  v74.size.height = CGRectGetHeight(v73);
  v74.origin.y = MinY;
  v74.origin.x = MaxX;
  v74.size.width = v33;
  v75 = CGRectInset(v74, -50.0, 0.0);
  x = v75.origin.x;
  y = v75.origin.y;
  width = v75.size.width;
  height = v75.size.height;
  v75.origin.y = v63;
  v75.origin.x = v64;
  v75.size.height = v61;
  v75.size.width = v62;
  v38 = CGRectContainsPoint(v75, *(a1 + 96));
  v76.origin.y = v67;
  v76.origin.x = v68;
  v76.size.height = v65;
  v76.size.width = v66;
  v39 = CGRectContainsPoint(v76, *(a1 + 96));
  v77.origin.x = x;
  v77.origin.y = y;
  v77.size.width = width;
  v77.size.height = height;
  v40 = CGRectContainsPoint(v77, *(a1 + 96));
  if (*(a1 + 130) == 1)
  {
    v41 = [*(a1 + 32) isRTLEnabled] == 0;
    v42 = 6;
    goto LABEL_36;
  }

  if (*(a1 + 131) == 1)
  {
    v47 = [*(a1 + 32) isRTLEnabled] == 0;
    v48 = 6;
    goto LABEL_25;
  }

  v51 = v40;
  v52 = *(a1 + 96);
  if (v52 < CGRectGetMinX(*(a1 + 64)) + *(a1 + 112))
  {
    v41 = [*(a1 + 32) isRTLEnabled] == 0;
    v42 = 2;
LABEL_36:
    if (v41)
    {
      v2 = v42;
    }

    else
    {
      v2 = v42 + 1;
    }

    goto LABEL_39;
  }

  v57 = *(a1 + 96);
  if (v57 > CGRectGetMaxX(*(a1 + 64)) - *(a1 + 112))
  {
    v47 = [*(a1 + 32) isRTLEnabled] == 0;
    v48 = 2;
LABEL_25:
    if (v47)
    {
      v2 = v48 + 1;
    }

    else
    {
      v2 = v48;
    }

    goto LABEL_39;
  }

  if (*(a1 + 128))
  {
    goto LABEL_31;
  }

  if (*(a1 + 132))
  {
    goto LABEL_33;
  }

  if (v51)
  {
    goto LABEL_61;
  }

  v58 = v38 || v39;
  v2 = v38 ? 2 : 3;
  if (!v58)
  {
    goto LABEL_61;
  }

LABEL_39:
  if ([*(a1 + 32) _draggingSlideOverApp])
  {
    v53 = [*(a1 + 40) itemForLayoutRole:4];

    if (v53)
    {
      v54 = v2 == 5 || v2 == 3;
      v55 = 7;
      if (!v54)
      {
        v55 = v2;
      }

      if (v2 == 4)
      {
        v55 = 6;
      }

      if (v2 == 2)
      {
        return 6;
      }

      else
      {
        return v55;
      }
    }
  }

  return v2;
}

- (int64_t)_layoutRoleForDraggedApp
{
  v20 = *MEMORY[0x277D85DE8];
  if ([(SBAppLayout *)self->_initialFloatingAppLayout isOrContainsAppLayout:self->_selectedLeafAppLayout])
  {
    return 3;
  }

  v4 = [(SBAppLayout *)self->_initialMainAppLayout isOrContainsAppLayout:self->_selectedLeafAppLayout];
  selectedLeafAppLayout = self->_selectedLeafAppLayout;
  if (v4)
  {
    initialMainAppLayout = self->_initialMainAppLayout;
    v7 = [(SBAppLayout *)selectedLeafAppLayout itemForLayoutRole:1];
    v3 = [(SBAppLayout *)initialMainAppLayout layoutRoleForItem:v7];
  }

  else
  {
    v3 = 0;
    v7 = [(SBAppLayout *)selectedLeafAppLayout itemForLayoutRole:1];
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    draggingAppLayoutsForWindowDrag = [(SBMedusaWindowDragGestureDestinationModifier *)self draggingAppLayoutsForWindowDrag];
    v9 = [draggingAppLayoutsForWindowDrag countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v16;
      while (2)
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v16 != v11)
          {
            objc_enumerationMutation(draggingAppLayoutsForWindowDrag);
          }

          v13 = *(*(&v15 + 1) + 8 * i);
          if ([v13 containsItem:v7])
          {
            v3 = [v13 layoutRoleForItem:v7];
            goto LABEL_15;
          }
        }

        v10 = [draggingAppLayoutsForWindowDrag countByEnumeratingWithState:&v15 objects:v19 count:16];
        if (v10)
        {
          continue;
        }

        break;
      }
    }

LABEL_15:
  }

  return v3;
}

- (BOOL)_draggingSplitViewApp
{
  if ([(SBAppLayout *)self->_initialMainAppLayout isOrContainsAppLayout:self->_selectedLeafAppLayout]&& ![(SBAppLayout *)self->_selectedLeafAppLayout isEqual:self->_initialMainAppLayout])
  {
    v4 = [(SBAppLayout *)self->_initialMainAppLayout itemForLayoutRole:4];
    v5 = [(SBAppLayout *)self->_selectedLeafAppLayout itemForLayoutRole:1];
    v3 = [(SBDisplayItem *)v4 isEqualToItem:v5]^ 1;
  }

  else
  {
    LOBYTE(v3) = 0;
  }

  return v3;
}

- (BOOL)_draggingCenterWindow
{
  v3 = [(SBAppLayout *)self->_initialMainAppLayout itemForLayoutRole:4];
  v4 = [(SBAppLayout *)self->_selectedLeafAppLayout itemForLayoutRole:1];
  v5 = [(SBDisplayItem *)v3 isEqualToItem:v4];

  return v5;
}

- (CGRect)_universalCenterZone
{
  [(SBMedusaWindowDragGestureDestinationModifier *)self switcherViewBounds];
  UIRectGetCenter();

  UIRectCenteredAboutPoint();
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (CGRect)_leftFloatingZoneForCenterWindow
{
  [(SBMedusaWindowDragGestureDestinationModifier *)self switcherViewBounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(SBMedusaWindowDragGestureDestinationModifier *)self _universalCenterZone];
  rect = v11;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v25.origin.x = v4;
  v25.origin.y = v6;
  v25.size.width = v8;
  v25.size.height = v10;
  v18 = CGRectGetWidth(v25) * 0.25;
  v26.origin.x = rect;
  v26.origin.y = v13;
  v26.size.width = v15;
  v26.size.height = v17;
  v19 = CGRectGetMinX(v26) - v18;
  v27.origin.x = v4;
  v27.origin.y = v6;
  v27.size.width = v8;
  v27.size.height = v10;
  Height = CGRectGetHeight(v27);
  v21 = 0.0;
  v22 = v19;
  v23 = v18;
  result.size.height = Height;
  result.size.width = v23;
  result.origin.y = v21;
  result.origin.x = v22;
  return result;
}

- (CGRect)_rightFloatingZoneForCenterWindow
{
  [(SBMedusaWindowDragGestureDestinationModifier *)self switcherViewBounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(SBMedusaWindowDragGestureDestinationModifier *)self _universalCenterZone];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v25.origin.x = v4;
  v25.origin.y = v6;
  v25.size.width = v8;
  v25.size.height = v10;
  v24 = CGRectGetWidth(v25) * 0.25;
  v26.origin.x = v12;
  v26.origin.y = v14;
  v26.size.width = v16;
  v26.size.height = v18;
  MaxX = CGRectGetMaxX(v26);
  v27.origin.x = v4;
  v27.origin.y = v6;
  v27.size.width = v8;
  v27.size.height = v10;
  Height = CGRectGetHeight(v27);
  v21 = 0.0;
  v22 = MaxX;
  v23 = v24;
  result.size.height = Height;
  result.size.width = v23;
  result.origin.y = v21;
  result.origin.x = v22;
  return result;
}

- (double)_sideActivationGutterSize
{
  medusaSettings = [(SBMedusaWindowDragGestureDestinationModifier *)self medusaSettings];
  [medusaSettings draggingPlatterSideActivationGutterPadding];
  v4 = v3;

  return v4;
}

- (CGSize)_fullscreenActivationRegionSize
{
  v3 = 0x4062C00000000000;
  v4 = 0x4062C00000000000;
  if (![(SBMedusaWindowDragGestureDestinationModifier *)self _draggingFullScreenApp])
  {
    medusaSettings = [(SBMedusaWindowDragGestureDestinationModifier *)self medusaSettings];
    [medusaSettings draggingPlatterFullscreenActivationRegionWidth];
    v3 = v6;
    [medusaSettings draggingPlatterFullscreenActivationRegionHeight];
    v4 = v7;
  }

  v8 = *&v3;
  v9 = *&v4;
  result.height = v9;
  result.width = v8;
  return result;
}

- (double)_contentDraggingCommandeerWidth
{
  medusaSettings = [(SBMedusaWindowDragGestureDestinationModifier *)self medusaSettings];
  [medusaSettings contentDraggingCommandeerGutterWidth];
  v4 = v3;

  return v4;
}

- (double)_contentDraggingSideActivationWidth
{
  medusaSettings = [(SBMedusaWindowDragGestureDestinationModifier *)self medusaSettings];
  [medusaSettings contentDraggingSideActivationGutterWidth];
  v4 = v3;

  return v4;
}

- (double)_contentDraggingFloatingActivationWidth
{
  medusaSettings = [(SBMedusaWindowDragGestureDestinationModifier *)self medusaSettings];
  [medusaSettings contentDraggingFloatingActivationGutterWidth];
  v4 = v3;

  return v4;
}

- (double)_dismissLeftBoundary
{
  medusaSettings = [(SBMedusaWindowDragGestureDestinationModifier *)self medusaSettings];
  [medusaSettings windowSplitViewDismissalGutterWidth];
  v4 = v3;

  return v4;
}

- (double)_dismissRightBoundary
{
  [(SBMedusaWindowDragGestureDestinationModifier *)self containerViewBounds];
  v4 = v3;
  medusaSettings = [(SBMedusaWindowDragGestureDestinationModifier *)self medusaSettings];
  [medusaSettings windowSplitViewDismissalGutterWidth];
  v7 = v4 - v6;

  return v7;
}

- (BOOL)_isDragOverFullscreenRegionAtLocation:(CGPoint)location inBounds:(CGRect)bounds
{
  y = location.y;
  x = location.x;
  [(SBMedusaWindowDragGestureDestinationModifier *)self _fullscreenActivationRegionSize];
  SBRectWithSize();
  UIRectCenteredXInRect();
  v10 = x;
  v11 = y;

  return CGRectContainsPoint(*&v6, *&v10);
}

- (BOOL)_isDragOverSideGutterRegionsAtLocation:(CGPoint)location inBounds:(CGRect)bounds totalContentDragGutterWidth:(double)width
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  v14.y = location.y;
  v10 = location.x;
  v15.origin.x = bounds.origin.x;
  v15.origin.y = bounds.origin.y;
  v15.size.width = bounds.size.width;
  v15.size.height = height;
  v14.x = v10;
  v11 = CGRectContainsPoint(v15, v14);
  if (v11)
  {
    v16.origin.x = x;
    v16.origin.y = y;
    v16.size.width = width;
    v16.size.height = height;
    v12 = v10 < CGRectGetMinX(v16) + width;
    v17.origin.x = x;
    v17.origin.y = y;
    v17.size.width = width;
    v17.size.height = height;
    LOBYTE(v11) = v10 > CGRectGetMaxX(v17) - width || v12;
  }

  return v11;
}

- (BOOL)_shouldMinimizeOrEnterSplitHomeScreen
{
  [(SBMedusaWindowDragGestureDestinationModifier *)self switcherViewBounds];
  height = v6.size.height;
  v4 = CGRectContainsPoint(v6, self->_location);
  if (v4)
  {
    LOBYTE(v4) = !self->_enteredPlatterZone && self->_location.y + self->_velocity.y * 0.15 > height * 0.5;
  }

  return v4;
}

- (id)_transitionRequestForDestination:(unint64_t)destination complete:(BOOL)complete
{
  completeCopy = complete;
  v8 = objc_alloc_init(SBMutableSwitcherTransitionRequest);
  if ([(SBMedusaWindowDragGestureDestinationModifier *)self _draggingFullScreenApp])
  {
    if (destination <= 4)
    {
      if (destination < 2)
      {
        v9 = [(SBAppLayout *)self->_selectedLeafAppLayout appLayoutByModifyingEnvironment:1];
        v19 = v8;
        v20 = v9;
LABEL_43:
        [(SBSwitcherTransitionRequest *)v19 setAppLayout:v20];
        goto LABEL_64;
      }

      if (destination - 2 >= 2)
      {
        if (destination != 4)
        {
          goto LABEL_65;
        }

        v25 = [(SBAppLayout *)self->_selectedLeafAppLayout appLayoutByModifyingEnvironment:1];
        v26 = [v25 appLayoutByModifyingConfiguration:3];

        [(SBSwitcherTransitionRequest *)v8 setAppLayout:v26];
        v27 = v8;
        v28 = 2;
        goto LABEL_55;
      }
    }

    else if (destination - 6 >= 8)
    {
      if (destination != 5)
      {
        if (destination != 14)
        {
          goto LABEL_65;
        }

        v9 = +[SBAppLayout homeScreenAppLayout];
        v10 = [(SBAppLayout *)v9 appLayoutByModifyingPreferredDisplayOrdinal:[(SBMedusaWindowDragGestureDestinationModifier *)self displayOrdinal]];
        goto LABEL_49;
      }

      v52 = [(SBAppLayout *)self->_selectedLeafAppLayout appLayoutByModifyingEnvironment:1];
      v26 = [v52 appLayoutByModifyingConfiguration:3];

      [(SBSwitcherTransitionRequest *)v8 setAppLayout:v26];
      v27 = v8;
      v28 = 3;
LABEL_55:
      [(SBSwitcherTransitionRequest *)v27 setPeekConfiguration:v28];

      goto LABEL_65;
    }

    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    v18 = SBStringForWindowDragGestureDestination(destination);
    [currentHandler handleFailureInMethod:a2 object:self file:@"SBMedusaWindowDragGestureDestinationModifier.m" lineNumber:775 description:{@"Unsupported destination when dragging fullscreen app: %@", v18}];

    goto LABEL_65;
  }

  v62[0] = MEMORY[0x277D85DD0];
  v62[1] = 3221225472;
  v62[2] = __90__SBMedusaWindowDragGestureDestinationModifier__transitionRequestForDestination_complete___block_invoke;
  v62[3] = &unk_2783B3258;
  v62[4] = self;
  v62[5] = a2;
  v9 = MEMORY[0x223D6F7F0](v62);
  switch(destination)
  {
    case 0uLL:
      goto LABEL_42;
    case 1uLL:
      v10 = [(SBAppLayout *)self->_selectedLeafAppLayout appLayoutByModifyingEnvironment:1];
      break;
    case 2uLL:
    case 4uLL:
      if (self->_gesturePhase == 3 && [(SBMedusaWindowDragGestureDestinationModifier *)self _shouldMinimizeOrEnterSplitHomeScreen])
      {
        initialMainAppLayout = self->_initialMainAppLayout;
        v61[0] = MEMORY[0x277D85DD0];
        v61[1] = 3221225472;
        v61[2] = __90__SBMedusaWindowDragGestureDestinationModifier__transitionRequestForDestination_complete___block_invoke_2;
        v61[3] = &unk_2783A8C90;
        v61[4] = self;
        v12 = [(SBAppLayout *)initialMainAppLayout appLayoutWithItemsPassingTest:v61];
        [(SBSwitcherTransitionRequest *)v8 setAppLayout:v12];

        appLayout = [(SBSwitcherTransitionRequest *)v8 appLayout];
        v14 = [appLayout appLayoutByModifyingConfiguration:{-[SBAppLayout configuration](self->_initialMainAppLayout, "configuration")}];
        [(SBSwitcherTransitionRequest *)v8 setAppLayout:v14];

        v15 = v8;
        v16 = 3;
        goto LABEL_18;
      }

      configuration = [(SBAppLayout *)self->_initialMainAppLayout configuration];
      if ([(SBMedusaWindowDragGestureDestinationModifier *)self _draggingSplitViewApp])
      {
        v36 = self->_initialMainAppLayout;
        v37 = [(SBAppLayout *)self->_selectedLeafAppLayout itemForLayoutRole:1];
        v38 = [(SBAppLayout *)v36 layoutRoleForItem:v37];

        if (v38 != 1)
        {
          if (SBLayoutRoleIsValidForSplitView(v38))
          {
            configuration = (v9->_cachedHash)(v9, configuration, [(SBMedusaWindowDragGestureDestinationModifier *)self switcherInterfaceOrientation]);
          }
        }
      }

      v39 = [(SBAppLayout *)self->_currentAppLayout appLayoutByModifyingConfiguration:configuration];
      v34 = [v39 appLayoutByInsertingLeafAppLayout:self->_selectedLeafAppLayout inRole:1];

      goto LABEL_50;
    case 3uLL:
    case 5uLL:
      if (self->_gesturePhase != 3 || ![(SBMedusaWindowDragGestureDestinationModifier *)self _shouldMinimizeOrEnterSplitHomeScreen])
      {
        configuration2 = [(SBAppLayout *)self->_initialMainAppLayout configuration];
        if ([(SBMedusaWindowDragGestureDestinationModifier *)self _draggingSplitViewApp])
        {
          v30 = self->_initialMainAppLayout;
          v31 = [(SBAppLayout *)self->_selectedLeafAppLayout itemForLayoutRole:1];
          v32 = [(SBAppLayout *)v30 layoutRoleForItem:v31];

          if (v32 == 1)
          {
            configuration2 = (v9->_cachedHash)(v9, configuration2, [(SBMedusaWindowDragGestureDestinationModifier *)self switcherInterfaceOrientation]);
          }
        }

        v33 = [(SBAppLayout *)self->_currentAppLayout appLayoutByModifyingConfiguration:configuration2];
        v34 = [v33 appLayoutByInsertingLeafAppLayout:self->_selectedLeafAppLayout inRole:2];

        goto LABEL_50;
      }

      v21 = self->_initialMainAppLayout;
      v60[0] = MEMORY[0x277D85DD0];
      v60[1] = 3221225472;
      v60[2] = __90__SBMedusaWindowDragGestureDestinationModifier__transitionRequestForDestination_complete___block_invoke_3;
      v60[3] = &unk_2783A8C90;
      v60[4] = self;
      v22 = [(SBAppLayout *)v21 appLayoutWithItemsPassingTest:v60];
      [(SBSwitcherTransitionRequest *)v8 setAppLayout:v22];

      appLayout2 = [(SBSwitcherTransitionRequest *)v8 appLayout];
      v24 = [appLayout2 appLayoutByModifyingConfiguration:{-[SBAppLayout configuration](self->_initialMainAppLayout, "configuration")}];
      [(SBSwitcherTransitionRequest *)v8 setAppLayout:v24];

      v15 = v8;
      v16 = 2;
LABEL_18:
      [(SBSwitcherTransitionRequest *)v15 setPeekConfiguration:v16];
      goto LABEL_64;
    case 6uLL:
      if ([(SBAppLayout *)self->_currentAppLayout isOrContainsAppLayout:self->_selectedLeafAppLayout])
      {
        configuration3 = 1;
      }

      else
      {
        configuration3 = [(SBAppLayout *)self->_currentAppLayout configuration];
      }

      v54 = [(SBAppLayout *)self->_currentAppLayout appLayoutByModifyingConfiguration:configuration3];
      v34 = [v54 appLayoutByInsertingLeafAppLayout:self->_selectedLeafAppLayout inRole:3];

      [(SBSwitcherTransitionRequest *)v8 setAppLayout:v34];
      v55 = v8;
      v56 = 1;
      goto LABEL_62;
    case 7uLL:
      if ([(SBAppLayout *)self->_currentAppLayout isOrContainsAppLayout:self->_selectedLeafAppLayout])
      {
        configuration4 = 1;
      }

      else
      {
        configuration4 = [(SBAppLayout *)self->_currentAppLayout configuration];
      }

      v57 = [(SBAppLayout *)self->_currentAppLayout appLayoutByModifyingConfiguration:configuration4];
      v34 = [v57 appLayoutByInsertingLeafAppLayout:self->_selectedLeafAppLayout inRole:3];

      [(SBSwitcherTransitionRequest *)v8 setAppLayout:v34];
      v55 = v8;
      v56 = 2;
LABEL_62:
      [(SBSwitcherTransitionRequest *)v55 setFloatingConfiguration:v56];
      goto LABEL_63;
    case 8uLL:
      [(SBSwitcherTransitionRequest *)v8 setAppLayout:self->_currentAppLayout];
      v42 = v8;
      v43 = 3;
      goto LABEL_45;
    case 9uLL:
      [(SBSwitcherTransitionRequest *)v8 setAppLayout:self->_currentAppLayout];
      v42 = v8;
      v43 = 4;
LABEL_45:
      [(SBSwitcherTransitionRequest *)v42 setFloatingConfiguration:v43];
      goto LABEL_64;
    case 0xAuLL:
      if (self->_gesturePhase == 3 && [(SBMedusaWindowDragGestureDestinationModifier *)self _shouldMinimizeOrEnterSplitHomeScreen])
      {
        v49 = self->_initialMainAppLayout;
        v59[0] = MEMORY[0x277D85DD0];
        v59[1] = 3221225472;
        v59[2] = __90__SBMedusaWindowDragGestureDestinationModifier__transitionRequestForDestination_complete___block_invoke_4;
        v59[3] = &unk_2783A8C90;
        v59[4] = self;
        v50 = [(SBAppLayout *)v49 appLayoutWithItemsPassingTest:v59];
        [(SBSwitcherTransitionRequest *)v8 setAppLayout:v50];

        v34 = [(SBAppLayout *)self->_selectedLeafAppLayout itemForLayoutRole:1];
        bundleIdentifier = [v34 bundleIdentifier];
        [(SBSwitcherTransitionRequest *)v8 setBundleIdentifierForAppExpose:bundleIdentifier];

        goto LABEL_63;
      }

      v53 = [(SBAppLayout *)self->_currentAppLayout appLayoutByInsertingLeafAppLayout:self->_selectedLeafAppLayout inRole:4];
      v40 = [v53 appLayoutByModifyingConfiguration:1];

      [(SBSwitcherTransitionRequest *)v8 setAppLayout:v40];
LABEL_57:

      goto LABEL_64;
    case 0xBuLL:
      if (self->_gesturePhase != 3)
      {
        goto LABEL_42;
      }

      userInterfaceLayoutDirection = [*MEMORY[0x277D76620] userInterfaceLayoutDirection];
      v45 = &SBLayoutRoleSide;
      v46 = &SBLayoutRolePrimary;
      goto LABEL_39;
    case 0xCuLL:
      if (self->_gesturePhase != 3)
      {
LABEL_42:
        v20 = self->_initialMainAppLayout;
        v19 = v8;
        goto LABEL_43;
      }

      userInterfaceLayoutDirection = [*MEMORY[0x277D76620] userInterfaceLayoutDirection];
      v45 = &SBLayoutRolePrimary;
      v46 = &SBLayoutRoleSide;
LABEL_39:
      if (userInterfaceLayoutDirection == 1)
      {
        v45 = v46;
      }

      v10 = [(SBAppLayout *)self->_initialMainAppLayout leafAppLayoutForRole:*v45];
      break;
    case 0xDuLL:
      v10 = [(SBAppLayout *)self->_currentAppLayout appLayoutByRemovingItemInLayoutRole:4];
      break;
    case 0xEuLL:
      v40 = +[SBAppLayout homeScreenAppLayout];
      v41 = [v40 appLayoutByModifyingPreferredDisplayOrdinal:{-[SBMedusaWindowDragGestureDestinationModifier displayOrdinal](self, "displayOrdinal")}];
      [(SBSwitcherTransitionRequest *)v8 setAppLayout:v41];

      goto LABEL_57;
    default:
      goto LABEL_64;
  }

LABEL_49:
  v34 = v10;
LABEL_50:
  [(SBSwitcherTransitionRequest *)v8 setAppLayout:v34];
LABEL_63:

LABEL_64:
LABEL_65:
  [(SBSwitcherTransitionRequest *)v8 setSceneUpdatesOnly:!completeCopy];

  return v8;
}

uint64_t __90__SBMedusaWindowDragGestureDestinationModifier__transitionRequestForDestination_complete___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = SBMainDisplayLayoutStateSpaceConfigurationFromAppLayoutConfiguration(a2);
  v6 = SBSpaceConfigurationForSpaceConfigurationAndInterfaceOrientation(v5, a3);
  v7 = v6;
  if (v6 < 2)
  {
    v9 = [MEMORY[0x277CCA890] currentHandler];
    v12 = a1 + 32;
    v10 = *(a1 + 32);
    v11 = *(v12 + 8);
    v13 = SBStringForSpaceConfiguration(v7);
    [v9 handleFailureInMethod:v11 object:v10 file:@"SBMedusaWindowDragGestureDestinationModifier.m" lineNumber:793 description:{@"Can't swap primary/side in space configuration: %@", v13}];
  }

  else
  {
    v8 = 2;
    if (v6 != 4)
    {
      v8 = v6;
    }

    if (v6 == 2)
    {
      v7 = 4;
    }

    else
    {
      v7 = v8;
    }
  }

  return SBAppLayoutConfigurationFromMainDisplayLayoutStateSpaceConfiguration(v7);
}

uint64_t __90__SBMedusaWindowDragGestureDestinationModifier__transitionRequestForDestination_complete___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(*(a1 + 32) + 128);
  v3 = a2;
  v4 = [v2 itemForLayoutRole:1];
  v5 = [(SBDisplayItem *)v3 isEqualToItem:v4];

  return v5 ^ 1u;
}

uint64_t __90__SBMedusaWindowDragGestureDestinationModifier__transitionRequestForDestination_complete___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = *(*(a1 + 32) + 128);
  v3 = a2;
  v4 = [v2 itemForLayoutRole:1];
  v5 = [(SBDisplayItem *)v3 isEqualToItem:v4];

  return v5 ^ 1u;
}

uint64_t __90__SBMedusaWindowDragGestureDestinationModifier__transitionRequestForDestination_complete___block_invoke_4(uint64_t a1, void *a2)
{
  v2 = *(*(a1 + 32) + 128);
  v3 = a2;
  v4 = [v2 itemForLayoutRole:1];
  v5 = [v3 isEqual:v4];

  return v5 ^ 1u;
}

@end