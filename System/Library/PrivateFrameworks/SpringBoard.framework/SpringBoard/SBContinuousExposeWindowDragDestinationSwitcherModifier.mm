@interface SBContinuousExposeWindowDragDestinationSwitcherModifier
- (BOOL)_anyProposedAppLayoutContainsSelectedDisplayItem;
- (BOOL)_shouldProjectPositionForVelocity:(CGPoint)velocity;
- (CGPoint)_projectedPositionWithPosition:(CGPoint)position velocity:(CGPoint)velocity;
- (CGRect)_frameForSelectedAppLayout:(id)layout addingToStage:(BOOL)stage;
- (CGRect)_frameForSelectedDisplayItemAddingToStage:(BOOL)stage;
- (SBContinuousExposeWindowDragDestinationSwitcherModifier)initWithSelectedDisplayItem:(id)item initialAppLayout:(id)layout delegate:(id)delegate;
- (SBContinuousExposeWindowDragDestinationSwitcherModifierDelegate)destinationDelegate;
- (id)_appLayoutByAddingItem:(id)item toAppLayout:(id)layout size:(CGSize)size center:(CGPoint)center positionIsSystemManaged:(BOOL)managed;
- (id)_appLayoutContainingDisplayItem:(id)item;
- (id)_layoutAttributesForTileDestination:(int64_t)destination;
- (id)appLayoutByAddingAppLayout:(id)layout toAppLayout:(id)appLayout;
- (id)handleGestureEvent:(id)event;
- (int64_t)_tileDestinationForFlickWithPosition:(CGPoint)position velocity:(CGPoint)velocity;
- (int64_t)tileDestinationForEvent:(id)event;
- (void)didMoveToParentModifier:(id)modifier;
- (void)updateProposedAppLayoutWithAppLayout:(id)layout andInitialAppLayout:(id)appLayout;
@end

@implementation SBContinuousExposeWindowDragDestinationSwitcherModifier

- (SBContinuousExposeWindowDragDestinationSwitcherModifier)initWithSelectedDisplayItem:(id)item initialAppLayout:(id)layout delegate:(id)delegate
{
  itemCopy = item;
  layoutCopy = layout;
  delegateCopy = delegate;
  v17.receiver = self;
  v17.super_class = SBContinuousExposeWindowDragDestinationSwitcherModifier;
  v13 = [(SBSwitcherModifier *)&v17 init];
  if (v13)
  {
    if (itemCopy)
    {
      if (layoutCopy)
      {
        goto LABEL_4;
      }
    }

    else
    {
      [SBContinuousExposeWindowDragDestinationSwitcherModifier initWithSelectedDisplayItem:a2 initialAppLayout:v13 delegate:?];
      if (layoutCopy)
      {
LABEL_4:
        if (delegateCopy)
        {
LABEL_5:
          objc_storeStrong(&v13->_selectedDisplayItem, item);
          objc_storeStrong(&v13->_initialAppLayout, layout);
          objc_storeWeak(&v13->_destinationDelegate, delegateCopy);
          v13->_proposedDestination = 0;
          objc_storeStrong(&v13->_proposedAppLayout, v13->_initialAppLayout);
          objc_storeStrong(&v13->_lastAppLayoutForStripCalculation, v13->_initialAppLayout);
          v14 = objc_alloc_init(SBDisplayItemLayoutGrid);
          layoutGrid = v13->_layoutGrid;
          v13->_layoutGrid = v14;

          goto LABEL_6;
        }

LABEL_9:
        [SBContinuousExposeWindowDragDestinationSwitcherModifier initWithSelectedDisplayItem:a2 initialAppLayout:v13 delegate:?];
        goto LABEL_5;
      }
    }

    [SBContinuousExposeWindowDragDestinationSwitcherModifier initWithSelectedDisplayItem:a2 initialAppLayout:v13 delegate:?];
    if (delegateCopy)
    {
      goto LABEL_5;
    }

    goto LABEL_9;
  }

LABEL_6:

  return v13;
}

- (void)didMoveToParentModifier:(id)modifier
{
  v10.receiver = self;
  v10.super_class = SBContinuousExposeWindowDragDestinationSwitcherModifier;
  [(SBChainableModifier *)&v10 didMoveToParentModifier:?];
  if (modifier)
  {
    displayItemInSlideOver = [(SBContinuousExposeWindowDragDestinationSwitcherModifier *)self displayItemInSlideOver];
    self->_selectedItemIsInSlideOver = BSEqualObjects();

    if (self->_selectedItemIsInSlideOver && ![(SBAppLayout *)self->_initialAppLayout containsItem:self->_selectedDisplayItem])
    {
      v6 = [(SBAppLayout *)self->_initialAppLayout appLayoutByInsertingItem:self->_selectedDisplayItem];
      initialAppLayout = self->_initialAppLayout;
      self->_initialAppLayout = v6;

      objc_storeStrong(&self->_proposedAppLayout, self->_initialAppLayout);
    }

    if (!self->_initialFlexibleAutoLayoutSpace)
    {
      v8 = [(SBSwitcherModifier *)self flexibleAutoLayoutSpaceForAppLayout:self->_initialAppLayout];
      initialFlexibleAutoLayoutSpace = self->_initialFlexibleAutoLayoutSpace;
      self->_initialFlexibleAutoLayoutSpace = v8;
    }
  }
}

- (id)handleGestureEvent:(id)event
{
  eventCopy = event;
  v273.receiver = self;
  v273.super_class = SBContinuousExposeWindowDragDestinationSwitcherModifier;
  v5 = [(SBSwitcherModifier *)&v273 handleGestureEvent:eventCopy];
  p_location = &self->_location;
  [eventCopy locationInContainerView];
  self->_location.x = v7;
  self->_location.y = v8;
  p_velocity = &self->_velocity;
  [eventCopy velocityInContainerView];
  self->_velocity.x = v10;
  self->_velocity.y = v11;
  [eventCopy translationInContainerView];
  self->_translation.x = v12;
  self->_translation.y = v13;
  windowingConfiguration = [(SBSwitcherModifier *)self windowingConfiguration];
  [(SBContinuousExposeWindowDragDestinationSwitcherModifier *)self containerViewBounds];
  v16 = v15;
  phase = [eventCopy phase];
  if (phase == 1)
  {
    self->_initialLocation = *p_location;
    v18 = [(SBContinuousExposeWindowDragDestinationSwitcherModifier *)self _appLayoutContainingDisplayItem:self->_selectedDisplayItem];
    v19 = [(SBContinuousExposeWindowDragDestinationSwitcherModifier *)self layoutAttributesForDisplayItem:self->_selectedDisplayItem inAppLayout:v18];
    initialSelectedDisplayItemLayoutAttributes = self->_initialSelectedDisplayItemLayoutAttributes;
    self->_initialSelectedDisplayItemLayoutAttributes = v19;

    draggingAppLayoutsForWindowDrag = [(SBContinuousExposeWindowDragDestinationSwitcherModifier *)self draggingAppLayoutsForWindowDrag];
    v272[0] = MEMORY[0x277D85DD0];
    v272[1] = 3221225472;
    v272[2] = __78__SBContinuousExposeWindowDragDestinationSwitcherModifier_handleGestureEvent___block_invoke;
    v272[3] = &unk_2783A8CB8;
    v272[4] = self;
    v22 = [draggingAppLayoutsForWindowDrag bs_firstObjectPassingTest:v272];

    if ([(SBContinuousExposeWindowDragDestinationSwitcherModifier *)self hasMultipleDisplays])
    {
      preferredDisplayOrdinal = [v22 preferredDisplayOrdinal];
      v24 = preferredDisplayOrdinal != [(SBContinuousExposeWindowDragDestinationSwitcherModifier *)self displayOrdinal];
    }

    else
    {
      v24 = 0;
    }

    self->_dragBeganInOtherSwitcher = v24;
    if ([(SBContinuousExposeWindowDragDestinationSwitcherModifier *)self isPartiallyOffscreenWindowsEnabled])
    {
      displayItemLayoutAttributesCalculator = [(SBContinuousExposeWindowDragDestinationSwitcherModifier *)self displayItemLayoutAttributesCalculator];
      v255 = eventCopy;
      v257 = windowingConfiguration;
      v42 = v5;
      v43 = [v18 layoutRoleForItem:self->_selectedDisplayItem];
      [(SBContinuousExposeWindowDragDestinationSwitcherModifier *)self containerViewBounds];
      v247 = v45;
      v251 = v44;
      v47 = v46;
      v49 = v48;
      switcherInterfaceOrientation = [(SBContinuousExposeWindowDragDestinationSwitcherModifier *)self switcherInterfaceOrientation];
      [(SBContinuousExposeWindowDragDestinationSwitcherModifier *)self floatingDockHeight];
      v52 = v51;
      [(SBContinuousExposeWindowDragDestinationSwitcherModifier *)self screenScale];
      v54 = v53;
      isDisplayEmbedded = [(SBContinuousExposeWindowDragDestinationSwitcherModifier *)self isDisplayEmbedded];
      prefersStripHidden = [(SBContinuousExposeWindowDragDestinationSwitcherModifier *)self prefersStripHidden];
      prefersDockHidden = [(SBContinuousExposeWindowDragDestinationSwitcherModifier *)self prefersDockHidden];
      [(SBContinuousExposeWindowDragDestinationSwitcherModifier *)self leftStatusBarPartIntersectionRegion];
      v59 = v58;
      v61 = v60;
      v63 = v62;
      v65 = v64;
      [(SBContinuousExposeWindowDragDestinationSwitcherModifier *)self rightStatusBarPartIntersectionRegion];
      LOBYTE(v236) = prefersDockHidden;
      v66 = v43;
      v5 = v42;
      eventCopy = v255;
      windowingConfiguration = v257;
      [displayItemLayoutAttributesCalculator frameForLayoutRole:v66 inAppLayout:v18 containerBounds:switcherInterfaceOrientation containerOrientation:1 floatingDockHeight:isDisplayEmbedded screenScale:prefersStripHidden isChamoisWindowingUIEnabled:v251 isEmbeddedDisplay:v247 prefersStripHidden:v47 prefersDockHidden:v49 leftStatusBarPartIntersectionRegion:v52 rightStatusBarPartIntersectionRegion:{v54, v236, v59, v61, v63, v65, v67, v68, v69, v70}];
      v72 = v71;
      v74 = v73;
      v76 = v75;
      v78 = v77;

      v79 = [(SBSwitcherModifier *)self flexibleAutoLayoutSpaceForAppLayout:self->_initialAppLayout];
      [v79 stageArea];
      self->_shouldConstrainToLeftEdge = v72 > v80;
      self->_shouldConstrainToRightEdge = v72 + v76 < v80 + v81;
      self->_shouldConstrainToBottomEdge = v74 + v78 < v82 + v83;
    }

    else
    {
      self->_shouldConstrainToLeftEdge = 1;
      self->_shouldConstrainToRightEdge = 1;
      self->_shouldConstrainToBottomEdge = 1;
    }

    goto LABEL_115;
  }

  v25 = phase;
  v254 = v5;
  v256 = windowingConfiguration;
  [(SBContinuousExposeWindowDragDestinationSwitcherModifier *)self _frameForSelectedDisplayItemAddingToStage:0];
  v27 = v26;
  v29 = v28;
  v31 = v30;
  x = p_location->x;
  y = self->_location.y;
  [(SBContinuousExposeWindowDragDestinationSwitcherModifier *)self containerViewBounds];
  v275.x = x;
  v275.y = y;
  v34 = CGRectContainsPoint(v276, v275);
  selectedItemIsInSlideOver = 0;
  v36 = &OBJC_IVAR___SBLockScreenPlugin__overlay;
  v37 = &OBJC_IVAR___SBLockScreenPlugin__overlay;
  if (v34)
  {
    [(SBContinuousExposeWindowDragDestinationSwitcherModifier *)self containerViewBounds];
    p_initialLocation = &self->_initialLocation;
    if (!CGRectContainsPoint(v277, self->_initialLocation))
    {
      selectedItemIsInSlideOver = 1;
      goto LABEL_50;
    }

    allItems = [(SBAppLayout *)self->_initialAppLayout allItems];
    if ([allItems count] == 1)
    {
      v40 = [(SBAppLayout *)self->_initialAppLayout containsItem:self->_selectedDisplayItem];

      if (v40)
      {
        selectedItemIsInSlideOver = 1;
        v36 = &OBJC_IVAR___SBLockScreenPlugin__overlay;
LABEL_50:
        v37 = &OBJC_IVAR___SBLockScreenPlugin__overlay;
        goto LABEL_51;
      }
    }

    else
    {
    }

    selectedItemIsInSlideOver = [(SBAppLayout *)self->_initialAppLayout containsItem:self->_selectedDisplayItem];
    prefersStripHiddenAndDisabled = [(SBContinuousExposeWindowDragDestinationSwitcherModifier *)self prefersStripHiddenAndDisabled];
    v36 = &OBJC_IVAR___SBLockScreenPlugin__overlay;
    v37 = &OBJC_IVAR___SBLockScreenPlugin__overlay;
    if ((prefersStripHiddenAndDisabled & 1) == 0)
    {
      isRTLEnabled = [(SBContinuousExposeWindowDragDestinationSwitcherModifier *)self isRTLEnabled];
      v86 = p_initialLocation->x < v16 * 0.5;
      if (isRTLEnabled)
      {
        v86 = p_initialLocation->x >= v16 * 0.5;
      }

      v243 = v86;
      v252 = [(SBSwitcherModifier *)self flexibleAutoLayoutSpaceForAppLayout:self->_proposedAppLayout, p_initialLocation->x];
      [v252 boundingBox];
      v88 = v87;
      switcherSettings = [(SBContinuousExposeWindowDragDestinationSwitcherModifier *)self switcherSettings];
      windowingSettings = [switcherSettings windowingSettings];

      if ([(SBAppLayout *)self->_initialAppLayout containsItem:self->_selectedDisplayItem])
      {
        isContinuousExposeStripVisible = [(SBContinuousExposeWindowDragDestinationSwitcherModifier *)self isContinuousExposeStripVisible];
        v91 = [(SBAppLayout *)self->_proposedAppLayout containsItem:self->_selectedDisplayItem];
        if ((isContinuousExposeStripVisible & 1) != 0 || !v91)
        {
          [v256 stripWidth];
          v98 = v97;
          v96 = windowingSettings;
          [windowingSettings stripDropZoneMultiplier];
          v93 = v98 * v99;
LABEL_31:
          isRTLEnabled2 = [(SBContinuousExposeWindowDragDestinationSwitcherModifier *)self isRTLEnabled];
          v101 = x > v93;
          if (isRTLEnabled2)
          {
            v101 = x < v16 - v93;
          }

          if (v101 || BSFloatIsZero())
          {
            self->_stripWidthForCancelZone = v93;
          }

          selectedItemIsInSlideOver |= v243;
          if ([v96 useLeadingWindowEdgeForDropZoneCalculations])
          {
            v102 = v27;
          }

          else
          {
            v102 = x;
          }

          isRTLEnabled3 = [(SBContinuousExposeWindowDragDestinationSwitcherModifier *)self isRTLEnabled];
          stripWidthForCancelZone = self->_stripWidthForCancelZone;
          if (isRTLEnabled3)
          {
            v36 = &OBJC_IVAR___SBLockScreenPlugin__overlay;
            if (v102 < v16 - stripWidthForCancelZone)
            {
              goto LABEL_49;
            }
          }

          else
          {
            v36 = &OBJC_IVAR___SBLockScreenPlugin__overlay;
            if (v102 > stripWidthForCancelZone)
            {
LABEL_49:

              goto LABEL_50;
            }
          }

          if ([(SBAppLayout *)self->_initialAppLayout containsItem:self->_selectedDisplayItem])
          {
            [v256 stripScreenEdgePadding];
            v106 = self->_location.y <= v105 + v105;
          }

          else
          {
            v106 = 0;
          }

          if ((selectedItemIsInSlideOver & 1) != 0 && !v106)
          {
            selectedItemIsInSlideOver = self->_selectedItemIsInSlideOver;
          }

          goto LABEL_49;
        }

        [v256 stripScreenEdgePadding];
        v93 = v92;
      }

      else
      {
        [v256 stripWidth];
        if (v94 >= (v16 - v88) * 0.5)
        {
          v93 = (v16 - v88) * 0.5;
        }

        else
        {
          v93 = v94;
        }

        [(SBContinuousExposeWindowDragDestinationSwitcherModifier *)self continuousExposeStripProgress];
        if (BSFloatGreaterThanFloat())
        {
          [v256 stripWidth];
          if (v93 < v95)
          {
            v93 = v95;
          }
        }
      }

      v96 = windowingSettings;
      goto LABEL_31;
    }
  }

LABEL_51:
  v107 = v37[13];
  if ((*(&self->super.super.super.super.isa + v107) & 1) != 0 || (v108 = [(SBContinuousExposeWindowDragDestinationSwitcherModifier *)self tileDestinationForEvent:eventCopy]) == 0)
  {
    v253 = v107;
    if (v25 == 3 && [(SBContinuousExposeWindowDragDestinationSwitcherModifier *)self _shouldProjectPositionForVelocity:p_velocity->x, self->_velocity.y])
    {
      UIRectGetCenter();
      [SBContinuousExposeWindowDragDestinationSwitcherModifier _projectedPositionWithPosition:"_projectedPositionWithPosition:velocity:" velocity:?];
      v115 = v114 - v29 * 0.5;
      v116 = v36;
      v117 = v36[10];
      if ([*(&self->super.super.super.super.isa + v117) containsItem:self->_selectedDisplayItem])
      {
        v118 = [(SBSwitcherModifier *)self flexibleAutoLayoutSpaceForAppLayout:*(&self->super.super.super.super.isa + v117)];
        [v118 stageArea];
        v120 = v119;
        v244 = v31;
        v122 = v121;
        switcherSettings2 = [(SBContinuousExposeWindowDragDestinationSwitcherModifier *)self switcherSettings];
        windowingSettings2 = [switcherSettings2 windowingSettings];
        [windowingSettings2 partiallyOffscreenWindowMargin];
        v126 = v125;

        v127 = v120 - v29 + v126;
        if (!self->_shouldConstrainToLeftEdge || v115 >= v127)
        {
          v127 = v115;
        }

        v128 = v120 + v122 - v126;
        if (v127 < v128)
        {
          v128 = v127;
        }

        v31 = v244;
        [(SBContinuousExposeWindowDragDestinationSwitcherModifier *)self containerViewBounds:v127];
      }

      v36 = v116;
    }

    v129 = v36[10];
    v130 = [*(&self->super.super.super.super.isa + v129) containsItem:self->_selectedDisplayItem];
    v131 = &OBJC_IVAR___SBLockScreenPlugin__overlay;
    if (selectedItemIsInSlideOver)
    {
      if ((v130 & 1) == 0)
      {
        switcherSettings3 = [(SBContinuousExposeWindowDragDestinationSwitcherModifier *)self switcherSettings];
        windowingSettings3 = [switcherSettings3 windowingSettings];

        maximumNumberOfScenesOnStage = [(SBContinuousExposeWindowDragDestinationSwitcherModifier *)self maximumNumberOfScenesOnStage];
        allItems2 = [(SBAppLayout *)self->_initialAppLayout allItems];
        v271[0] = MEMORY[0x277D85DD0];
        v271[1] = 3221225472;
        v271[2] = __78__SBContinuousExposeWindowDragDestinationSwitcherModifier_handleGestureEvent___block_invoke_2;
        v271[3] = &unk_2783A8C90;
        v271[4] = self;
        v136 = [allItems2 bs_filter:v271];
        v137 = [v136 count];

        if (v137 >= maximumNumberOfScenesOnStage && ([windowingSettings3 rejectDropsWhenStageIsFull] & 1) != 0)
        {
          v138 = 0;
        }

        else
        {
          v138 = 1;
          [(SBContinuousExposeWindowDragDestinationSwitcherModifier *)self _frameForSelectedDisplayItemAddingToStage:1];
          v175 = v174;
          v177 = v176;
          v178 = [(SBContinuousExposeWindowDragDestinationSwitcherModifier *)self _appLayoutContainingDisplayItem:self->_selectedDisplayItem];
          v179 = [(SBContinuousExposeWindowDragDestinationSwitcherModifier *)self layoutAttributesForDisplayItem:self->_selectedDisplayItem inAppLayout:v178];
          isPositionSystemManaged = [(SBDisplayItemLayoutAttributes *)v179 isPositionSystemManaged];

          selectedDisplayItem = self->_selectedDisplayItem;
          v182 = *(&self->super.super.super.super.isa + v129);
          UIRectGetCenter();
          v184 = [(SBContinuousExposeWindowDragDestinationSwitcherModifier *)self _appLayoutByAddingItem:selectedDisplayItem toAppLayout:v182 size:isPositionSystemManaged center:v175 positionIsSystemManaged:v177, v183, v184];
          v186 = *(&self->super.super.super.super.isa + v129);
          *(&self->super.super.super.super.isa + v129) = v184;

          self->_proposedDestination = 2;
        }

        slideOverIsCenterExiting = v138;
        v131 = &OBJC_IVAR___SBLockScreenPlugin__overlay;
        goto LABEL_97;
      }
    }

    else if (v130)
    {
      if ([(SBAppLayout *)self->_initialAppLayout containsItem:self->_selectedDisplayItem])
      {
        v139 = *(&self->super.super.super.super.isa + v129);
        v270[0] = MEMORY[0x277D85DD0];
        v270[1] = 3221225472;
        v270[2] = __78__SBContinuousExposeWindowDragDestinationSwitcherModifier_handleGestureEvent___block_invoke_3;
        v270[3] = &unk_2783A8C90;
        v270[4] = self;
        v140 = [v139 appLayoutWithItemsPassingTest:v270];
        v141 = *(&self->super.super.super.super.isa + v129);
        *(&self->super.super.super.super.isa + v129) = v140;

        self->_proposedDestination = 3;
      }

      else
      {
        objc_storeStrong((&self->super.super.super.super.isa + v129), self->_initialAppLayout);
        self->_proposedDestination = 0;
      }

      v138 = 1;
      slideOverIsCenterExiting = 1;
      goto LABEL_97;
    }

    if ([*(&self->super.super.super.super.isa + v129) containsItem:self->_selectedDisplayItem])
    {
      v249 = v27;
      v142 = [(SBContinuousExposeWindowDragDestinationSwitcherModifier *)self appLayoutByBringingItemToFront:self->_selectedDisplayItem inAppLayout:*(&self->super.super.super.super.isa + v129)];
      v143 = *(&self->super.super.super.super.isa + v129);
      *(&self->super.super.super.super.isa + v129) = v142;

      UIRectGetCenter();
      v145 = v144;
      v147 = v146;
      v148 = [(SBContinuousExposeWindowDragDestinationSwitcherModifier *)self layoutAttributesForDisplayItem:self->_selectedDisplayItem inAppLayout:*(&self->super.super.super.super.isa + v129)];
      v269 = 0;
      v267 = 0u;
      v268 = 0u;
      [(SBContinuousExposeWindowDragDestinationSwitcherModifier *)self containerViewBounds];
      v152 = [(SBDisplayItemLayoutAttributes *)v145 normalizedPointForPoint:v147 inBounds:v149, v150, v151, v152];
      v155 = v154;
      v264 = v267;
      v265 = v268;
      v266 = v269;
      IsValid = SBDisplayItemSlideOverConfigurationIsValid(&v264);
      if (v25 == 3 && IsValid)
      {
        v241 = v147;
        v245 = v31;
        v266 = 0;
        v264 = 0u;
        v265 = 0u;
        [(SBDisplayItemLayoutAttributes *)self->_initialSelectedDisplayItemLayoutAttributes slideOverConfiguration];
        v261 = v264;
        v262 = v265;
        v263 = v266;
        v157 = SBFloatingConfigurationFromSlideOverConfiguration(&v261);
        v158 = p_velocity->x;
        [(SBContinuousExposeWindowDragDestinationSwitcherModifier *)self switcherViewBounds];
        v159 = v29;
        v161 = v160;
        v163 = v162;
        v165 = v164;
        v167 = v166;
        medusaSettings = [(SBContinuousExposeWindowDragDestinationSwitcherModifier *)self medusaSettings];
        v169 = SBFloatingConfigurationForMovingFloatingApplication(v157, medusaSettings, v158, v161, v163, v165, v167, v159, v145);

        v170 = (v169 - 3) < 2;
        if ((v266 & 0x100) != 0)
        {
          v171 = v245;
        }

        else
        {
          v171 = v245;
          if ((v169 - 3) >= 2)
          {
            [v256 minimumWindowWidth];
            v170 = v249 <= -v172 || v249 + v159 >= v16 + v172;
          }
        }

        WeakRetained = objc_loadWeakRetained(&self->_destinationDelegate);
        slideOverIsCenterExiting = [WeakRetained slideOverIsCenterExiting];

        if (slideOverIsCenterExiting)
        {
          LOBYTE(v269) = 0;
        }

        else if (v170)
        {
          BYTE1(v269) = 1;
          v189 = *(&self->super.super.super.super.isa + v129);
          v260[0] = MEMORY[0x277D85DD0];
          v260[1] = 3221225472;
          v260[2] = __78__SBContinuousExposeWindowDragDestinationSwitcherModifier_handleGestureEvent___block_invoke_4;
          v260[3] = &unk_2783A8C90;
          v260[4] = self;
          v190 = [v189 appLayoutWithItemsPassingTest:v260];
          v191 = *(&self->super.super.super.super.isa + v129);
          *(&self->super.super.super.super.isa + v129) = v190;
        }

        displayItemLayoutAttributesCalculator2 = [(SBContinuousExposeWindowDragDestinationSwitcherModifier *)self displayItemLayoutAttributesCalculator];
        v193 = displayItemLayoutAttributesCalculator2;
        if (displayItemLayoutAttributesCalculator2)
        {
          v258[0] = v267;
          v258[1] = v268;
          v259 = v269;
          [displayItemLayoutAttributesCalculator2 updatedSlideOverConfigurationForItemWithSize:v258 center:v256 slideOverConfiguration:v159 windowingConfiguration:{v171, v145, v241}];
        }

        else
        {
          v263 = 0;
          v261 = 0u;
          v262 = 0u;
        }

        v131 = &OBJC_IVAR___SBLockScreenPlugin__overlay;
        v194 = [SBDisplayItemLayoutAttributes attributesByModifyingSlideOverConfiguration:v148];

        v148 = v194;
      }

      else if (IsValid)
      {
        slideOverIsCenterExiting = 0;
      }

      else
      {
        v155 = [(SBDisplayItemLayoutAttributes *)v148 attributesByModifyingNormalizedCenter:v152, v155];

        slideOverIsCenterExiting = 0;
        v148 = v155;
      }

      [(SBContinuousExposeWindowDragDestinationSwitcherModifier *)self updateLayoutAttributes:v148 ofDisplayItem:self->_selectedDisplayItem];
      v138 = 1;
      self->_proposedDestination = 1;
    }

    else
    {
      v138 = 0;
      slideOverIsCenterExiting = 0;
    }

LABEL_97:
    v195 = [*(&self->super.super.super.super.isa + v129) containsItem:self->_selectedDisplayItem];
    v196 = [*(&self->super.super.super.super.isa + v131[7]) containsItem:self->_selectedDisplayItem];
    if (v195)
    {
      v197 = [(SBContinuousExposeWindowDragDestinationSwitcherModifier *)self layoutAttributesForDisplayItem:self->_selectedDisplayItem inAppLayout:*(&self->super.super.super.super.isa + v129)];
      v198 = [(SBDisplayItemLayoutAttributes *)v197 attributesByModifyingPositionIsSystemManaged:?];

      [(SBContinuousExposeWindowDragDestinationSwitcherModifier *)self updateLayoutAttributes:v198 ofDisplayItem:self->_selectedDisplayItem];
      if (v138)
      {
LABEL_111:
        displayItemLayoutAttributesCalculator3 = [(SBContinuousExposeWindowDragDestinationSwitcherModifier *)self displayItemLayoutAttributesCalculator];
        v250 = slideOverIsCenterExiting;
        v204 = *(&self->super.super.super.super.isa + v129);
        switcherInterfaceOrientation2 = [(SBContinuousExposeWindowDragDestinationSwitcherModifier *)self switcherInterfaceOrientation];
        [(SBContinuousExposeWindowDragDestinationSwitcherModifier *)self floatingDockHeight];
        v246 = v206;
        [(SBContinuousExposeWindowDragDestinationSwitcherModifier *)self screenScale];
        v242 = v207;
        [(SBContinuousExposeWindowDragDestinationSwitcherModifier *)self containerViewBounds];
        v239 = v209;
        v240 = v208;
        v237 = v211;
        v238 = v210;
        isDisplayEmbedded2 = [(SBContinuousExposeWindowDragDestinationSwitcherModifier *)self isDisplayEmbedded];
        prefersStripHidden2 = [(SBContinuousExposeWindowDragDestinationSwitcherModifier *)self prefersStripHidden];
        prefersDockHidden2 = [(SBContinuousExposeWindowDragDestinationSwitcherModifier *)self prefersDockHidden];
        [(SBContinuousExposeWindowDragDestinationSwitcherModifier *)self leftStatusBarPartIntersectionRegion];
        v216 = v215;
        v218 = v217;
        v220 = v219;
        v222 = v221;
        [(SBContinuousExposeWindowDragDestinationSwitcherModifier *)self rightStatusBarPartIntersectionRegion];
        v224 = v223;
        v226 = v225;
        v228 = v227;
        v230 = v229;
        v231 = [MEMORY[0x277CBEB98] setWithObject:self->_selectedDisplayItem];
        LOBYTE(v236) = prefersDockHidden2;
        v232 = [displayItemLayoutAttributesCalculator3 appLayoutByPerformingAutoLayoutForAppLayout:v204 previousAppLayout:0 options:0 containerOrientation:switcherInterfaceOrientation2 floatingDockHeight:isDisplayEmbedded2 screenScale:prefersStripHidden2 bounds:v246 isEmbeddedDisplay:v242 prefersStripHidden:v240 prefersDockHidden:v239 source:v238 leftStatusBarPartIntersectionRegion:v237 rightStatusBarPartIntersectionRegion:v236 itemsNeedingPositionSnapping:11 itemsNeedingSizeSnapping:{v216, v218, v220, v222, v224, v226, v228, v230, v231, 0}];
        v233 = *(&self->super.super.super.super.isa + v129);
        *(&self->super.super.super.super.isa + v129) = v232;

        if (!v250)
        {
          goto LABEL_112;
        }

        goto LABEL_103;
      }
    }

    else if (v196)
    {
      if (v138)
      {
        goto LABEL_111;
      }
    }

    else
    {
      [(SBContinuousExposeWindowDragDestinationSwitcherModifier *)self updateLayoutAttributes:self->_initialSelectedDisplayItemLayoutAttributes ofDisplayItem:self->_selectedDisplayItem];
      if (v138)
      {
        goto LABEL_111;
      }
    }

    if (!slideOverIsCenterExiting)
    {
LABEL_112:
      v5 = v254;
      windowingConfiguration = v256;
      goto LABEL_116;
    }

LABEL_103:
    v199 = [(SBSwitcherTransitionRequest *)SBMutableSwitcherTransitionRequest requestForActivatingAppLayout:*(&self->super.super.super.super.isa + v129)];
    v18 = v199;
    if (*(&self->super.super.super.super.isa + v129))
    {
      v200 = 3;
    }

    else
    {
      v200 = 1;
    }

    [v199 setUnlockedEnvironmentMode:v200];
    [v18 setSceneUpdatesOnly:1];
    [v18 setFenceSceneUpdate:0];
    [v18 setPreventSwitcherRecencyModelUpdates:1];
    if (*(&self->super.super.super.super.isa + v253) == 1)
    {
      [v18 setPeekConfiguration:1];
    }

    v201 = [[SBPerformTransitionSwitcherEventResponse alloc] initWithTransitionRequest:v18 gestureInitiated:1];
    v202 = SBAppendSwitcherModifierResponse(v201, v254);

    if ([(SBAppLayout *)self->_lastAppLayoutForStripCalculation containsAllItemsFromAppLayout:*(&self->super.super.super.super.isa + v129)])
    {
      v5 = v202;
    }

    else
    {
      objc_storeStrong(&self->_lastAppLayoutForStripCalculation, *(&self->super.super.super.super.isa + v129));
      v234 = [[SBInvalidateContinuousExposeIdentifiersEventResponse alloc] initWithTransitioningFromAppLayout:0 transitioningToAppLayout:0 animated:1];
      v5 = SBAppendSwitcherModifierResponse(v234, v202);
    }

    windowingConfiguration = v256;
    goto LABEL_115;
  }

  v18 = [(SBContinuousExposeWindowDragDestinationSwitcherModifier *)self _layoutAttributesForTileDestination:v108];
  [(SBContinuousExposeWindowDragDestinationSwitcherModifier *)self updateLayoutAttributes:v18 ofDisplayItem:self->_selectedDisplayItem];
  v109 = v36[10];
  v110 = [(SBContinuousExposeWindowDragDestinationSwitcherModifier *)self layoutAttributesMapForAppLayout:*(&self->super.super.super.super.isa + v109)];
  v111 = *(&self->super.super.super.super.isa + v109);
  v112 = [MEMORY[0x277CBEB98] setWithObject:self->_selectedDisplayItem];
  v113 = [(SBSwitcherModifier *)self flexibleAutoLayoutSpaceForAppLayout:v111 calculatedUsingNewLayoutAttributesMap:v110 itemsNeedingPositionSnapping:v112 itemsNeedingSizeSnapping:0];

  v5 = v254;
  windowingConfiguration = v256;
LABEL_115:

LABEL_116:

  return v5;
}

uint64_t __78__SBContinuousExposeWindowDragDestinationSwitcherModifier_handleGestureEvent___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v2 = [*(*(a1 + 32) + 264) layoutRoleForItem:a2];

  return SBLayoutRoleIsValidForSplitView(v2);
}

- (id)appLayoutByAddingAppLayout:(id)layout toAppLayout:(id)appLayout
{
  appLayoutCopy = appLayout;
  layoutCopy = layout;
  [(SBContinuousExposeWindowDragDestinationSwitcherModifier *)self _frameForSelectedAppLayout:layoutCopy addingToStage:0];
  v9 = v8;
  v11 = v10;
  v12 = [layoutCopy itemForLayoutRole:1];
  v13 = [(SBContinuousExposeWindowDragDestinationSwitcherModifier *)self layoutAttributesForDisplayItem:v12 inAppLayout:layoutCopy];

  isPositionSystemManaged = [(SBDisplayItemLayoutAttributes *)v13 isPositionSystemManaged];
  UIRectGetCenter();
  v17 = [(SBContinuousExposeWindowDragDestinationSwitcherModifier *)self _appLayoutByAddingItem:v12 toAppLayout:appLayoutCopy size:isPositionSystemManaged center:v9 positionIsSystemManaged:v11, v15, v16];

  return v17;
}

- (void)updateProposedAppLayoutWithAppLayout:(id)layout andInitialAppLayout:(id)appLayout
{
  layoutCopy = layout;
  appLayoutCopy = appLayout;
  if (![(SBAppLayout *)self->_proposedAppLayout isEqual:layoutCopy])
  {
    objc_storeStrong(&self->_proposedAppLayout, layout);
  }

  if (![(SBAppLayout *)self->_initialAppLayout isEqual:appLayoutCopy])
  {
    objc_storeStrong(&self->_initialAppLayout, appLayout);
  }
}

- (CGRect)_frameForSelectedAppLayout:(id)layout addingToStage:(BOOL)stage
{
  stageCopy = stage;
  layoutCopy = layout;
  _anyProposedAppLayoutContainsSelectedDisplayItem = [(SBContinuousExposeWindowDragDestinationSwitcherModifier *)self _anyProposedAppLayoutContainsSelectedDisplayItem];
  v8 = [(SBAppLayout *)self->_proposedAppLayout containsItem:self->_selectedDisplayItem];
  dragBeganInOtherSwitcher = self->_dragBeganInOtherSwitcher;
  displayItemLayoutAttributesCalculator = [(SBContinuousExposeWindowDragDestinationSwitcherModifier *)self displayItemLayoutAttributesCalculator];
  v11 = !dragBeganInOtherSwitcher || !_anyProposedAppLayoutContainsSelectedDisplayItem;
  if (v11 || v8)
  {
    v60 = [layoutCopy layoutRoleForItem:self->_selectedDisplayItem];
    [(SBContinuousExposeWindowDragDestinationSwitcherModifier *)self containerViewBounds];
    v58 = v15;
    v59 = v14;
    v17 = v16;
    v19 = v18;
    switcherInterfaceOrientation = [(SBContinuousExposeWindowDragDestinationSwitcherModifier *)self switcherInterfaceOrientation];
    [(SBContinuousExposeWindowDragDestinationSwitcherModifier *)self floatingDockHeight];
    v21 = v20;
    [(SBContinuousExposeWindowDragDestinationSwitcherModifier *)self screenScale];
    v23 = v22;
    isDisplayEmbedded = [(SBContinuousExposeWindowDragDestinationSwitcherModifier *)self isDisplayEmbedded];
    prefersStripHidden = [(SBContinuousExposeWindowDragDestinationSwitcherModifier *)self prefersStripHidden];
    v26 = layoutCopy;
    prefersDockHidden = [(SBContinuousExposeWindowDragDestinationSwitcherModifier *)self prefersDockHidden];
    [(SBContinuousExposeWindowDragDestinationSwitcherModifier *)self leftStatusBarPartIntersectionRegion];
    v29 = v28;
    v31 = v30;
    v33 = v32;
    v35 = v34;
    [(SBContinuousExposeWindowDragDestinationSwitcherModifier *)self rightStatusBarPartIntersectionRegion];
    LOBYTE(v56) = prefersDockHidden;
    layoutCopy = v26;
    [displayItemLayoutAttributesCalculator frameForLayoutRole:v60 inAppLayout:v26 containerBounds:switcherInterfaceOrientation containerOrientation:1 floatingDockHeight:isDisplayEmbedded screenScale:prefersStripHidden isChamoisWindowingUIEnabled:v59 isEmbeddedDisplay:v58 prefersStripHidden:v17 prefersDockHidden:v19 leftStatusBarPartIntersectionRegion:v21 rightStatusBarPartIntersectionRegion:{v23, v56, v29, v31, v33, v35, v36, v37, v38, v39}];
  }

  else
  {
    initialSelectedDisplayItemLayoutAttributes = self->_initialSelectedDisplayItemLayoutAttributes;
    windowingConfiguration = [(SBSwitcherModifier *)self windowingConfiguration];
    [displayItemLayoutAttributesCalculator sizeForLayoutAttributes:initialSelectedDisplayItemLayoutAttributes windowingConfiguration:windowingConfiguration];
  }

  v40 = self->_dragBeganInOtherSwitcher;
  v41 = stageCopy & ~v40;
  if ((v40 & 1) == 0 && !stageCopy)
  {
    proposedAppLayout = self->_proposedAppLayout;
    if (proposedAppLayout && [(SBAppLayout *)proposedAppLayout containsItem:self->_selectedDisplayItem])
    {
      v41 = [(SBAppLayout *)self->_initialAppLayout containsItem:self->_selectedDisplayItem]^ 1;
    }

    else
    {
      v41 = 0;
    }
  }

  WeakRetained = objc_loadWeakRetained(&self->_destinationDelegate);
  [WeakRetained preferredCenterForSelectedItemInDestinationModifier:self clippingToInitialStageArea:v41];

  SBRectWithSize();
  UIRectCenteredAboutPoint();
  v45 = v44;
  v47 = v46;
  v49 = v48;
  v51 = v50;

  v52 = v45;
  v53 = v47;
  v54 = v49;
  v55 = v51;
  result.size.height = v55;
  result.size.width = v54;
  result.origin.y = v53;
  result.origin.x = v52;
  return result;
}

- (CGRect)_frameForSelectedDisplayItemAddingToStage:(BOOL)stage
{
  stageCopy = stage;
  if ([(SBAppLayout *)self->_proposedAppLayout containsItem:self->_selectedDisplayItem])
  {
    v5 = self->_proposedAppLayout;
  }

  else
  {
    v6 = [(SBContinuousExposeWindowDragDestinationSwitcherModifier *)self _appLayoutContainingDisplayItem:self->_selectedDisplayItem];
    v5 = [(SBContinuousExposeWindowDragDestinationSwitcherModifier *)self appLayoutContainingAppLayout:v6];
  }

  [(SBContinuousExposeWindowDragDestinationSwitcherModifier *)self _frameForSelectedAppLayout:v5 addingToStage:stageCopy];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  v15 = v8;
  v16 = v10;
  v17 = v12;
  v18 = v14;
  result.size.height = v18;
  result.size.width = v17;
  result.origin.y = v16;
  result.origin.x = v15;
  return result;
}

- (id)_appLayoutByAddingItem:(id)item toAppLayout:(id)layout size:(CGSize)size center:(CGPoint)center positionIsSystemManaged:(BOOL)managed
{
  y = center.y;
  x = center.x;
  height = size.height;
  width = size.width;
  v93[1] = *MEMORY[0x277D85DE8];
  itemCopy = item;
  layoutCopy = layout;
  if ([layoutCopy containsItem:itemCopy])
  {
    v16 = layoutCopy;
LABEL_8:
    v31 = v16;
    goto LABEL_11;
  }

  if (!layoutCopy)
  {
    v16 = [(SBContinuousExposeWindowDragDestinationSwitcherModifier *)self appLayoutByBringingItemToFront:itemCopy inAppLayout:self->_initialAppLayout];
    goto LABEL_8;
  }

  allItems = [layoutCopy allItems];
  v18 = [allItems mutableCopy];

  v85 = v18;
  [v18 addObject:itemCopy];
  windowingConfiguration = [(SBSwitcherModifier *)self windowingConfiguration];
  [(SBContinuousExposeWindowDragDestinationSwitcherModifier *)self containerViewBounds];
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  [(SBDisplayItemLayoutAttributes *)x normalizedPointForPoint:v20 inBounds:v22, v24, v26];
  v91 = 0;
  memset(v90, 0, sizeof(v90));
  draggingAppLayoutsForWindowDrag = [(SBContinuousExposeWindowDragDestinationSwitcherModifier *)self draggingAppLayoutsForWindowDrag];
  v89[0] = MEMORY[0x277D85DD0];
  v89[1] = 3221225472;
  v89[2] = __130__SBContinuousExposeWindowDragDestinationSwitcherModifier__appLayoutByAddingItem_toAppLayout_size_center_positionIsSystemManaged___block_invoke;
  v89[3] = &unk_2783A8CB8;
  v89[4] = self;
  v29 = [draggingAppLayoutsForWindowDrag bs_firstObjectPassingTest:v89];

  v83 = windowingConfiguration;
  v84 = v29;
  if (v29 && (v30 = [v29 preferredDisplayOrdinal], v30 != -[SBContinuousExposeWindowDragDestinationSwitcherModifier displayOrdinal](self, "displayOrdinal")))
  {
    v32 = [(SBContinuousExposeWindowDragDestinationSwitcherModifier *)self layoutAttributesForDisplayItem:self->_selectedDisplayItem inAppLayout:v29];
    [(SBDisplayItemLayoutAttributes *)v32 attributedSize];
  }

  else
  {
    [windowingConfiguration defaultWindowSize];
    [windowingConfiguration screenEdgePadding];
    SBDisplayItemAttributedSizeInfer(v90, width, height, v21, v23, v25, v27);
  }

  v33 = [SBDisplayItemLayoutAttributes alloc];
  SBDisplayItemTileConfigurationMakeNotTiled(v88);
  SBDisplayItemSlideOverConfigurationNone(v87);
  SBDisplayItemAttributedSizeUnspecified(v86);
  LOBYTE(v75) = managed;
  v82 = [SBDisplayItemLayoutAttributes initWithContentOrientation:v33 lastInteractionTime:? sizingPolicy:? attributedSize:? tileConfiguration:? slideOverConfiguration:? normalizedCenter:? cascaded:? occlusionState:? attributedUserSizeBeforeOverlapping:? unoccludedPeekingCenter:? positionIsSystemManaged:?];
  v34 = [(SBContinuousExposeWindowDragDestinationSwitcherModifier *)self layoutAttributesMapForAppLayout:layoutCopy, 0, v86, v75];
  v35 = [v34 mutableCopy];

  v92 = itemCopy;
  v93[0] = v82;
  v36 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v93 forKeys:&v92 count:1];
  [v35 addEntriesFromDictionary:v36];

  v37 = [SBAppLayout alloc];
  v38 = [layoutCopy itemForLayoutRole:4];
  v39 = [layoutCopy itemForLayoutRole:3];
  centerConfiguration = [layoutCopy centerConfiguration];
  environment = [layoutCopy environment];
  LOBYTE(v73) = [layoutCopy isHidden];
  v42 = -[SBAppLayout initWithItems:centerItem:floatingItem:configuration:centerConfiguration:environment:hidden:preferredDisplayOrdinal:](v37, "initWithItems:centerItem:floatingItem:configuration:centerConfiguration:environment:hidden:preferredDisplayOrdinal:", v85, v38, v39, 3, centerConfiguration, environment, v73, [layoutCopy preferredDisplayOrdinal]);

  [(SBContinuousExposeWindowDragDestinationSwitcherModifier *)self updateLayoutAttributesMap:v35 forAppLayout:v42];
  v43 = [(SBContinuousExposeWindowDragDestinationSwitcherModifier *)self appLayoutByBringingItemToFront:itemCopy inAppLayout:v42];

  displayItemLayoutAttributesCalculator = [(SBContinuousExposeWindowDragDestinationSwitcherModifier *)self displayItemLayoutAttributesCalculator];
  switcherInterfaceOrientation = [(SBContinuousExposeWindowDragDestinationSwitcherModifier *)self switcherInterfaceOrientation];
  [(SBContinuousExposeWindowDragDestinationSwitcherModifier *)self floatingDockHeight];
  v81 = v46;
  [(SBContinuousExposeWindowDragDestinationSwitcherModifier *)self screenScale];
  v80 = v47;
  [(SBContinuousExposeWindowDragDestinationSwitcherModifier *)self containerViewBounds];
  v78 = v49;
  v79 = v48;
  v76 = v51;
  v77 = v50;
  isDisplayEmbedded = [(SBContinuousExposeWindowDragDestinationSwitcherModifier *)self isDisplayEmbedded];
  prefersStripHidden = [(SBContinuousExposeWindowDragDestinationSwitcherModifier *)self prefersStripHidden];
  prefersDockHidden = [(SBContinuousExposeWindowDragDestinationSwitcherModifier *)self prefersDockHidden];
  [(SBContinuousExposeWindowDragDestinationSwitcherModifier *)self leftStatusBarPartIntersectionRegion];
  v56 = v55;
  v58 = v57;
  v60 = v59;
  v62 = v61;
  [(SBContinuousExposeWindowDragDestinationSwitcherModifier *)self rightStatusBarPartIntersectionRegion];
  v64 = v63;
  v66 = v65;
  v68 = v67;
  v70 = v69;
  v71 = [MEMORY[0x277CBEB98] setWithObject:self->_selectedDisplayItem];
  LOBYTE(v74) = prefersDockHidden;
  v31 = [displayItemLayoutAttributesCalculator appLayoutByPerformingAutoLayoutForAppLayout:v43 previousAppLayout:0 options:0 containerOrientation:switcherInterfaceOrientation floatingDockHeight:isDisplayEmbedded screenScale:prefersStripHidden bounds:v81 isEmbeddedDisplay:v80 prefersStripHidden:v79 prefersDockHidden:v78 source:v77 leftStatusBarPartIntersectionRegion:v76 rightStatusBarPartIntersectionRegion:v74 itemsNeedingPositionSnapping:11 itemsNeedingSizeSnapping:{v56, v58, v60, v62, v64, v66, v68, v70, v71, 0}];

LABEL_11:

  return v31;
}

- (id)_appLayoutContainingDisplayItem:(id)item
{
  itemCopy = item;
  appLayouts = [(SBContinuousExposeWindowDragDestinationSwitcherModifier *)self appLayouts];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __91__SBContinuousExposeWindowDragDestinationSwitcherModifier__appLayoutContainingDisplayItem___block_invoke;
  v9[3] = &unk_2783A8CB8;
  v10 = itemCopy;
  v6 = itemCopy;
  v7 = [appLayouts bs_firstObjectPassingTest:v9];

  return v7;
}

- (BOOL)_anyProposedAppLayoutContainsSelectedDisplayItem
{
  selfCopy = self;
  proposedAppLayoutsForWindowDrag = [(SBContinuousExposeWindowDragDestinationSwitcherModifier *)self proposedAppLayoutsForWindowDrag];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __107__SBContinuousExposeWindowDragDestinationSwitcherModifier__anyProposedAppLayoutContainsSelectedDisplayItem__block_invoke;
  v5[3] = &unk_2783A8CB8;
  v5[4] = selfCopy;
  LOBYTE(selfCopy) = [proposedAppLayoutsForWindowDrag bs_containsObjectPassingTest:v5];

  return selfCopy;
}

- (CGPoint)_projectedPositionWithPosition:(CGPoint)position velocity:(CGPoint)velocity
{
  y = velocity.y;
  v5 = position.y;
  x = position.x;
  if (velocity.y < 2400.0 || self->_selectedItemIsInSlideOver)
  {
    [(SBContinuousExposeWindowDragDestinationSwitcherModifier *)self _projectValue:position.x withVelocityComponent:velocity.x];
    x = v8;
  }

  [(SBContinuousExposeWindowDragDestinationSwitcherModifier *)self _projectValue:v5 withVelocityComponent:y];
  v10 = v9;
  if (self->_selectedItemIsInSlideOver)
  {
    windowingConfiguration = [(SBSwitcherModifier *)self windowingConfiguration];
    v12 = [(SBSwitcherModifier *)self flexibleAutoLayoutSpaceForAppLayout:self->_proposedAppLayout];
    isDockVisible = [v12 isDockVisible];

    [(SBContinuousExposeWindowDragDestinationSwitcherModifier *)self _frameForSelectedDisplayItemAddingToStage:0];
    v15 = v14;
    v17 = v16 * 0.5;
    [(SBContinuousExposeWindowDragDestinationSwitcherModifier *)self containerViewBounds];
    v19 = v18;
    v21 = v20;
    v39 = v22;
    v24 = v23;
    [windowingConfiguration floatingDockHeightWithTopAndBottomPadding];
    v25 = v5;
    v27 = v26;
    v28 = v25 + v17 <= v24 - v26;
    [windowingConfiguration slideOverBorderWidth];
    v30 = v19 - v15 - v29 * 2.0;
    v31 = v15 + v19 + v39 + v29 * 2.0;
    v32 = v29 + v21 + v17;
    v33 = v21 + v24 - v17 - v29 * 2.0;
    v34 = 0.0;
    if ((isDockVisible & v28) != 0)
    {
      v34 = v27;
    }

    v35 = v33 - v34;
    if (v30 < x)
    {
      v30 = x;
    }

    if (v31 <= v30)
    {
      x = v31;
    }

    else
    {
      x = v30;
    }

    if (v32 >= v10)
    {
      v36 = v32;
    }

    else
    {
      v36 = v10;
    }

    if (v35 <= v36)
    {
      v10 = v35;
    }

    else
    {
      v10 = v36;
    }
  }

  v37 = x;
  v38 = v10;
  result.y = v38;
  result.x = v37;
  return result;
}

- (BOOL)_shouldProjectPositionForVelocity:(CGPoint)velocity
{
  hypot(velocity.x * 0.001, velocity.y * 0.001);
  v4 = BSFloatGreaterThanOrEqualToFloat();
  if (self->_selectedItemIsInSlideOver)
  {
    v11 = 0;
    memset(v10, 0, sizeof(v10));
    [(SBDisplayItemLayoutAttributes *)self->_initialSelectedDisplayItemLayoutAttributes slideOverConfiguration];
    if (BYTE1(v11) == 1)
    {
      v5 = fabs(self->_translation.x);
      windowingConfiguration = [(SBSwitcherModifier *)self windowingConfiguration];
      [windowingConfiguration minimumWindowWidth];
      v8 = v5 >= v7;
    }

    else
    {
      v8 = 1;
    }
  }

  else
  {
    v8 = v4 | self->_selectedItemIsInSlideOver;
  }

  return v8 & 1;
}

- (int64_t)tileDestinationForEvent:(id)event
{
  eventCopy = event;
  windowManagementContext = [(SBContinuousExposeWindowDragDestinationSwitcherModifier *)self windowManagementContext];
  if (![windowManagementContext isFlexibleWindowingEnabled] || objc_msgSend(eventCopy, "phase") != 3 || !-[SBAppLayout containsItem:](self->_proposedAppLayout, "containsItem:", self->_selectedDisplayItem))
  {

    goto LABEL_7;
  }

  [eventCopy velocityInContainerView];
  v6 = [(SBContinuousExposeWindowDragDestinationSwitcherModifier *)self _shouldProjectPositionForVelocity:?];

  if (!v6)
  {
LABEL_7:
    v7 = 0;
    goto LABEL_8;
  }

  [(SBContinuousExposeWindowDragDestinationSwitcherModifier *)self _frameForSelectedDisplayItemAddingToStage:0];
  UIRectGetCenter();
  [SBContinuousExposeWindowDragDestinationSwitcherModifier _projectedPositionWithPosition:"_projectedPositionWithPosition:velocity:" velocity:?];
  v7 = [SBContinuousExposeWindowDragDestinationSwitcherModifier _tileDestinationForFlickWithPosition:"_tileDestinationForFlickWithPosition:velocity:" velocity:?];
LABEL_8:

  return v7;
}

- (int64_t)_tileDestinationForFlickWithPosition:(CGPoint)position velocity:(CGPoint)velocity
{
  y = velocity.y;
  x = velocity.x;
  v6 = position.y;
  v7 = position.x;
  [(SBContinuousExposeWindowDragDestinationSwitcherModifier *)self screenScale];
  v10 = v9 * 88.0;
  [(SBContinuousExposeWindowDragDestinationSwitcherModifier *)self screenScale];
  v12 = v11 * 10.0;
  v13 = v7 < v10;
  [(SBContinuousExposeWindowDragDestinationSwitcherModifier *)self containerViewBounds];
  v15 = v14 - v10;
  v16 = v7 > v14 - v10;
  v17 = v6 < v12;
  if (v6 < v12)
  {
    v18 = v13 || v16;
    v19 = fabs(x);
    v20 = fabs(y);
    v21 = v19 > v20;
    v22 = v7 > v15 && v19 > v20;
    if (v7 >= v10)
    {
      v21 = 0;
    }

    if (v7 < v10 || v16)
    {
      v16 = v22;
      v13 = v21;
    }

    if (v18)
    {
      v17 = v19 <= v20;
    }
  }

  v23 = !v16;
  v24 = 2;
  if (v23)
  {
    v24 = 0;
  }

  if (v13)
  {
    v24 = 1;
  }

  if (v17)
  {
    return 3;
  }

  else
  {
    return v24;
  }
}

- (id)_layoutAttributesForTileDestination:(int64_t)destination
{
  v5 = [(SBContinuousExposeWindowDragDestinationSwitcherModifier *)self layoutAttributesForDisplayItem:self->_selectedDisplayItem inAppLayout:self->_proposedAppLayout];
  v6 = v5;
  if (!destination)
  {
    v22 = v5;
    goto LABEL_31;
  }

  v7 = [(SBSwitcherModifier *)self flexibleAutoLayoutSpaceForAppLayout:self->_proposedAppLayout];
  [v7 stageArea];
  v9 = v8;
  v11 = v10;
  windowingConfiguration = [(SBSwitcherModifier *)self windowingConfiguration];
  snapPaddingSettings = [windowingConfiguration snapPaddingSettings];
  [snapPaddingSettings edgePadding];
  v15 = v14;

  if (destination == 3)
  {
    v16 = SBDisplayItemSizingPolicyAllowingLargestSize([(SBContinuousExposeWindowDragDestinationSwitcherModifier *)self supportedSizingPoliciesForItem:self->_selectedDisplayItem inAppLayout:self->_proposedAppLayout]);
    v17 = [SBDisplayItemLayoutAttributes attributesByModifyingSizingPolicy:v6];

    windowManagementContext = [(SBContinuousExposeWindowDragDestinationSwitcherModifier *)self windowManagementContext];
    isFlexibleWindowingEnabled = [windowManagementContext isFlexibleWindowingEnabled];

    if (v16 == 1 && isFlexibleWindowingEnabled != 0)
    {
      v21 = [(SBDisplayItemLayoutAttributes *)v17 attributesByModifyingNormalizedCenter:0.5];

      v17 = v21;
    }

    goto LABEL_30;
  }

  allItems = [(SBAppLayout *)self->_proposedAppLayout allItems];
  v24 = [allItems count];

  if (v24 < 2)
  {
LABEL_22:
    isDockVisible = [(SBFlexibleWindowingAutoLayoutSpace *)self->_initialFlexibleAutoLayoutSpace isDockVisible];
    v47 = 3;
    if (!isDockVisible)
    {
      v47 = 1;
    }

    v48 = 2;
    if (isDockVisible)
    {
      v48 = 4;
    }

    if (destination == 1)
    {
      v49 = v47;
    }

    else
    {
      v49 = v48;
    }

    SBDisplayItemTileConfigurationMake(v49, &v79, 1.79769313e308, 1.79769313e308);
    v50 = [SBDisplayItemLayoutAttributes attributesByModifyingTileConfiguration:v6];

    v17 = [SBDisplayItemLayoutAttributes attributesByModifyingSizingPolicy:v50];

    goto LABEL_30;
  }

  v25 = [(SBContinuousExposeWindowDragDestinationSwitcherModifier *)self lastInteractedItemsInAppLayout:self->_proposedAppLayout];
  v26 = [v25 objectAtIndex:1];

  v27 = [(SBContinuousExposeWindowDragDestinationSwitcherModifier *)self maximizedCenteredAndUnoccludedDisplayItemsInAppLayout:self->_proposedAppLayout ignoreOcclusion:1 ignoreCentering:0];
  v28 = [v27 containsObject:v26];

  if (v28)
  {
LABEL_21:

    goto LABEL_22;
  }

  [(SBContinuousExposeWindowDragDestinationSwitcherModifier *)self containerViewBounds];
  v30 = v29;
  v32 = v31;
  v33 = [v7 flexibleAutoLayoutItemForDisplayItem:v26];
  [v33 position];
  v35 = v34;
  v37 = v36;
  [v33 size];
  v40 = v39;
  v41 = v35 + v38 * 0.5 - (v30 + v32);
  if (destination != 1)
  {
    v41 = v35 - v38 * 0.5 - v30;
  }

  v44 = fabs(v41) < v15;
  v42 = vabdd_f64(v37 + v39 * 0.5, v9 + v11);
  v43 = vabdd_f64(v37 - v39 * 0.5, v9);
  v44 = v44 && v43 < v15;
  if (!v44 || v42 >= v15)
  {

    goto LABEL_21;
  }

  v52 = v32 - v38;
  [windowingConfiguration splitViewHandleNubWidth];
  v54 = v52 - v53;
  selectedDisplayItem = self->_selectedDisplayItem;
  [(SBContinuousExposeWindowDragDestinationSwitcherModifier *)self containerViewBounds];
  v56 = v55;
  v58 = v57;
  v60 = v59;
  v62 = v61;
  layoutGrid = self->_layoutGrid;
  v76 = [(SBContinuousExposeWindowDragDestinationSwitcherModifier *)self layoutRestrictionInfoForItem:self->_selectedDisplayItem];
  v63 = [(SBContinuousExposeWindowDragDestinationSwitcherModifier *)self layoutAttributesForDisplayItem:self->_selectedDisplayItem inAppLayout:self->_proposedAppLayout];
  authenticator = [(SBHomeScreenConfigurationServer *)v63 authenticator];
  [(SBContinuousExposeWindowDragDestinationSwitcherModifier *)self screenScale];
  v66 = v65;
  windowingConfiguration2 = [(SBSwitcherModifier *)self windowingConfiguration];
  [(SBContinuousExposeWindowDragDestinationSwitcherModifier *)self minSizeForDisplayItem:selectedDisplayItem inContainerBounds:layoutGrid layoutGrid:v76 layoutRestrictionInfo:authenticator contentOrientation:windowingConfiguration2 screenScale:v56 windowingConfiguration:v58, v60, v62, v66];
  v69 = v68;
  v71 = v70;

  if (v69 >= v54)
  {
    v72 = v69;
  }

  else
  {
    v72 = v54;
  }

  if (v71 >= v40)
  {
    v73 = v71;
  }

  else
  {
    v73 = v40;
  }

  v79 = 0uLL;
  v80 = 0;
  if (destination == 1)
  {
    v74 = 1;
  }

  else
  {
    v74 = 2;
  }

  SBDisplayItemTileConfigurationMake(v74, &v79, v72, v73);
  v75 = [SBDisplayItemLayoutAttributes attributesByModifyingTileConfiguration:v6];

  v17 = [SBDisplayItemLayoutAttributes attributesByModifyingSizingPolicy:v75];

LABEL_30:
  v22 = v17;

LABEL_31:

  return v22;
}

- (SBContinuousExposeWindowDragDestinationSwitcherModifierDelegate)destinationDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_destinationDelegate);

  return WeakRetained;
}

- (void)initWithSelectedDisplayItem:(uint64_t)a1 initialAppLayout:(uint64_t)a2 delegate:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBContinuousExposeWindowDragDestinationSwitcherModifier.m" lineNumber:61 description:{@"Invalid parameter not satisfying: %@", @"selectedDisplayItem"}];
}

- (void)initWithSelectedDisplayItem:(uint64_t)a1 initialAppLayout:(uint64_t)a2 delegate:.cold.2(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBContinuousExposeWindowDragDestinationSwitcherModifier.m" lineNumber:62 description:{@"Invalid parameter not satisfying: %@", @"initialAppLayout"}];
}

- (void)initWithSelectedDisplayItem:(uint64_t)a1 initialAppLayout:(uint64_t)a2 delegate:.cold.3(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBContinuousExposeWindowDragDestinationSwitcherModifier.m" lineNumber:63 description:{@"Invalid parameter not satisfying: %@", @"delegate"}];
}

@end