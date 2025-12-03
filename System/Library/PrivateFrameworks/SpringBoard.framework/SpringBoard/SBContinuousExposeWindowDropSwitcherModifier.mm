@interface SBContinuousExposeWindowDropSwitcherModifier
- (BOOL)_isLayoutRolePartOfWindowDragInteraction:(int64_t)interaction inAppLayout:(id)layout;
- (BOOL)isLayoutRoleMatchMovedToScene:(int64_t)scene inAppLayout:(id)layout;
- (BOOL)shouldUseAnchorPointToPinLayoutRolesToSpace:(unint64_t)space;
- (CGPoint)liftOffVelocity;
- (CGRect)frameForLayoutRole:(int64_t)role inAppLayout:(id)layout withBounds:(CGRect)bounds;
- (CGRect)fullyPresentedFrameForIndex:(unint64_t)index frame:(CGRect)frame;
- (SBContinuousExposeWindowDropSwitcherModifier)initWithTransitionID:(id)d selectedDisplayItem:(id)item toAppLayout:(id)layout initialAppLayout:(id)appLayout liftOffVelocity:(CGPoint)velocity;
- (double)fadeInDelayForSplitViewHandles;
- (id)_appLayoutContainingDisplayItem:(id)item;
- (id)animationAttributesForLayoutElement:(id)element;
- (id)handleSceneReadyEvent:(id)event;
- (id)handleTransitionEvent:(id)event;
- (id)transitionDidEnd;
- (unint64_t)maskedCornersForLayoutRole:(int64_t)role inAppLayout:(id)layout withMaskedCorners:(unint64_t)corners;
- (void)didMoveToParentModifier:(id)modifier;
@end

@implementation SBContinuousExposeWindowDropSwitcherModifier

- (SBContinuousExposeWindowDropSwitcherModifier)initWithTransitionID:(id)d selectedDisplayItem:(id)item toAppLayout:(id)layout initialAppLayout:(id)appLayout liftOffVelocity:(CGPoint)velocity
{
  y = velocity.y;
  x = velocity.x;
  itemCopy = item;
  layoutCopy = layout;
  v23.receiver = self;
  v23.super_class = SBContinuousExposeWindowDropSwitcherModifier;
  v16 = [(SBTransitionSwitcherModifier *)&v23 initWithTransitionID:d];
  if (v16)
  {
    if (!itemCopy)
    {
      [SBContinuousExposeWindowDropSwitcherModifier initWithTransitionID:a2 selectedDisplayItem:v16 toAppLayout:? initialAppLayout:? liftOffVelocity:?];
    }

    objc_storeStrong(&v16->_selectedDisplayItem, item);
    objc_storeStrong(&v16->_toAppLayout, layout);
    v16->_liftOffVelocity.x = x;
    v16->_liftOffVelocity.y = y;
    SBRectWithSize();
    v16->_initialFrameOfMinimizingItem.origin.x = v17;
    v16->_initialFrameOfMinimizingItem.origin.y = v18;
    v16->_initialFrameOfMinimizingItem.size.width = v19;
    v16->_initialFrameOfMinimizingItem.size.height = v20;
    if ([layoutCopy containsItem:itemCopy])
    {
      v21 = [[SBSplitDisplayItemSwitcherModifier alloc] initWithDisplayItem:v16->_selectedDisplayItem];
      [(SBChainableModifier *)v16 addChildModifier:v21 atLevel:0 key:@"SBContinuousExposeWindowDropSwitcherModifierKeySplitDisplayItem"];
    }
  }

  return v16;
}

- (void)didMoveToParentModifier:(id)modifier
{
  v6.receiver = self;
  v6.super_class = SBContinuousExposeWindowDropSwitcherModifier;
  [(SBChainableModifier *)&v6 didMoveToParentModifier:?];
  if (modifier)
  {
    v5 = [SBPinDesktopSpaceDisplayItemsSwitcherModifier modifierForTransitionToAppLayout:self->_toAppLayout context:self];
    if (v5)
    {
      [(SBChainableModifier *)self addChildModifier:v5 atLevel:2 key:@"SBContinuousExposeWindowDropSwitcherModifierKeyPinDesktopSpaceDisplayItems"];
    }
  }
}

- (BOOL)shouldUseAnchorPointToPinLayoutRolesToSpace:(unint64_t)space
{
  appLayouts = [(SBContinuousExposeWindowDropSwitcherModifier *)self appLayouts];
  v6 = [appLayouts objectAtIndex:space];

  if ([v6 containsItem:self->_selectedDisplayItem] && -[SBAppLayout containsItem:](self->_toAppLayout, "containsItem:", self->_selectedDisplayItem))
  {
    v7 = 0;
  }

  else
  {
    v9.receiver = self;
    v9.super_class = SBContinuousExposeWindowDropSwitcherModifier;
    v7 = [(SBContinuousExposeWindowDropSwitcherModifier *)&v9 shouldUseAnchorPointToPinLayoutRolesToSpace:space];
  }

  return v7;
}

- (id)animationAttributesForLayoutElement:(id)element
{
  elementCopy = element;
  v5 = [(SBChainableModifier *)self childModifierByKey:@"SBContinuousExposeWindowDropSwitcherModifierKeyFullScreenToHomeIcon"];

  if (v5)
  {
    v17.receiver = self;
    v17.super_class = SBContinuousExposeWindowDropSwitcherModifier;
    v6 = [(SBTransitionSwitcherModifier *)&v17 animationAttributesForLayoutElement:elementCopy];
  }

  else
  {
    v16.receiver = self;
    v16.super_class = SBContinuousExposeWindowDropSwitcherModifier;
    v7 = [(SBTransitionSwitcherModifier *)&v16 animationAttributesForLayoutElement:elementCopy];
    v6 = [v7 mutableCopy];

    switcherSettings = [(SBContinuousExposeWindowDropSwitcherModifier *)self switcherSettings];
    windowingSettings = [switcherSettings windowingSettings];
    windowDragAnimationSettings = [windowingSettings windowDragAnimationSettings];
    [v6 setLayoutSettings:windowDragAnimationSettings];

    if ([elementCopy isAppLayout])
    {
      toAppLayout = self->_toAppLayout;
      appLayout = [elementCopy appLayout];
      if ([(SBAppLayout *)toAppLayout isOrContainsAppLayout:appLayout])
      {
      }

      else
      {
        appLayout2 = [elementCopy appLayout];
        v14 = [(SBContinuousExposeWindowDropSwitcherModifier *)self prioritizesSortOrderForAppLayout:appLayout2];

        if (v14)
        {
          [v6 setUpdateMode:2];
          [v6 setLayoutUpdateMode:2];
        }
      }
    }
  }

  return v6;
}

- (CGRect)fullyPresentedFrameForIndex:(unint64_t)index frame:(CGRect)frame
{
  v20.receiver = self;
  v20.super_class = SBContinuousExposeWindowDropSwitcherModifier;
  [(SBContinuousExposeWindowDropSwitcherModifier *)&v20 fullyPresentedFrameForIndex:frame.origin.x frame:frame.origin.y, frame.size.width, frame.size.height];
  x = v6;
  y = v8;
  width = v10;
  height = v12;
  appLayouts = [(SBContinuousExposeWindowDropSwitcherModifier *)self appLayouts];
  v15 = [appLayouts objectAtIndex:index];

  if ([v15 containsItem:self->_minimizingItem])
  {
    x = self->_initialFrameOfMinimizingItem.origin.x;
    y = self->_initialFrameOfMinimizingItem.origin.y;
    width = self->_initialFrameOfMinimizingItem.size.width;
    height = self->_initialFrameOfMinimizingItem.size.height;
  }

  v16 = x;
  v17 = y;
  v18 = width;
  v19 = height;
  result.size.height = v19;
  result.size.width = v18;
  result.origin.y = v17;
  result.origin.x = v16;
  return result;
}

- (CGRect)frameForLayoutRole:(int64_t)role inAppLayout:(id)layout withBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  v24.receiver = self;
  v24.super_class = SBContinuousExposeWindowDropSwitcherModifier;
  layoutCopy = layout;
  [(SBContinuousExposeWindowDropSwitcherModifier *)&v24 frameForLayoutRole:role inAppLayout:layoutCopy withBounds:x, y, width, height];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  LODWORD(role) = [layoutCopy containsItem:{self->_minimizingItem, v24.receiver, v24.super_class}];

  if (role)
  {
    v19 = height;
    v17 = width;
    v15 = y;
    v13 = x;
  }

  v20 = v13;
  v21 = v15;
  v22 = v17;
  v23 = v19;
  result.size.height = v23;
  result.size.width = v22;
  result.origin.y = v21;
  result.origin.x = v20;
  return result;
}

- (BOOL)isLayoutRoleMatchMovedToScene:(int64_t)scene inAppLayout:(id)layout
{
  layoutCopy = layout;
  if ([(SBContinuousExposeWindowDropSwitcherModifier *)self _isLayoutRolePartOfWindowDragInteraction:scene inAppLayout:layoutCopy])
  {
    v7 = 1;
  }

  else
  {
    v9.receiver = self;
    v9.super_class = SBContinuousExposeWindowDropSwitcherModifier;
    v7 = [(SBContinuousExposeWindowDropSwitcherModifier *)&v9 isLayoutRoleMatchMovedToScene:scene inAppLayout:layoutCopy];
  }

  return v7;
}

- (unint64_t)maskedCornersForLayoutRole:(int64_t)role inAppLayout:(id)layout withMaskedCorners:(unint64_t)corners
{
  layoutCopy = layout;
  v17.receiver = self;
  v17.super_class = SBContinuousExposeWindowDropSwitcherModifier;
  v9 = [(SBTransitionSwitcherModifier *)&v17 maskedCornersForLayoutRole:role inAppLayout:layoutCopy withMaskedCorners:corners];
  v10 = [layoutCopy itemForLayoutRole:role];
  v11 = v10;
  if (v10 && ([(SBDisplayItem *)v10 isEqualToItem:?]& 1) == 0 && [(SBAppLayout *)self->_toAppLayout isOrContainsAppLayout:layoutCopy])
  {
    v12 = [(SBSwitcherModifier *)self flexibleAutoLayoutSpaceForAppLayout:self->_toAppLayout];
    v13 = [v12 flexibleAutoLayoutItemForDisplayItem:v11];
    intersectedDisplayRectCorners = [v13 intersectedDisplayRectCorners];
    v15 = v9 & 0xFFFFFFFFFFFFFFFELL;
    if ((intersectedDisplayRectCorners & 1) == 0)
    {
      v15 = v9;
    }

    if ((intersectedDisplayRectCorners & 2) != 0)
    {
      v15 &= ~2uLL;
    }

    if ((intersectedDisplayRectCorners & 4) != 0)
    {
      v15 &= ~4uLL;
    }

    if ((intersectedDisplayRectCorners & 8) != 0)
    {
      v9 = v15 & 0xFFFFFFFFFFFFFFF7;
    }

    else
    {
      v9 = v15;
    }
  }

  return v9;
}

- (id)handleTransitionEvent:(id)event
{
  eventCopy = event;
  v66.receiver = self;
  v66.super_class = SBContinuousExposeWindowDropSwitcherModifier;
  v60 = [(SBTransitionSwitcherModifier *)&v66 handleTransitionEvent:eventCopy];
  fromEnvironmentMode = [eventCopy fromEnvironmentMode];
  toEnvironmentMode = [eventCopy toEnvironmentMode];
  fromAppLayout = [eventCopy fromAppLayout];
  toAppLayout = [eventCopy toAppLayout];
  isReduceMotionEnabled = [(SBContinuousExposeWindowDropSwitcherModifier *)self isReduceMotionEnabled];
  transitionID = [(SBTransitionSwitcherModifier *)self transitionID];
  windowManagementContext = [(SBContinuousExposeWindowDropSwitcherModifier *)self windowManagementContext];
  isAutomaticStageCreationEnabled = [windowManagementContext isAutomaticStageCreationEnabled];
  v12 = [(SBChainableModifier *)self childModifierByKey:@"SBContinuousExposeWindowDropSwitcherModifierKeyFullScreenToHomeIcon"];

  if (!v12)
  {
    displayItemInSlideOver = [(SBContinuousExposeWindowDropSwitcherModifier *)self displayItemInSlideOver];
    v59 = displayItemInSlideOver;
    if (displayItemInSlideOver && (v14 = displayItemInSlideOver, -[SBDisplayItem isEqualToItem:](self->_selectedDisplayItem, displayItemInSlideOver)) && ([toAppLayout containsItem:v14] & 1) == 0)
    {
      displayOrdinal = [(SBContinuousExposeWindowDropSwitcherModifier *)self displayOrdinal];
      if ([(SBContinuousExposeWindowDropSwitcherModifier *)self hasMultipleDisplays])
      {
        draggingAppLayoutsForWindowDrag = [(SBContinuousExposeWindowDropSwitcherModifier *)self draggingAppLayoutsForWindowDrag];
        v65[0] = MEMORY[0x277D85DD0];
        v65[1] = 3221225472;
        v65[2] = __70__SBContinuousExposeWindowDropSwitcherModifier_handleTransitionEvent___block_invoke;
        v65[3] = &__block_descriptor_40_e21_B16__0__SBAppLayout_8l;
        v65[4] = displayOrdinal;
        v15 = [draggingAppLayoutsForWindowDrag bs_containsObjectPassingTest:v65] ^ 1;
      }

      else
      {
        v15 = 1;
      }

      v16 = toEnvironmentMode == 1;
      if (toEnvironmentMode == 1 && v15)
      {
        v22 = [[SBStashSlideOverItemAnimationModifier alloc] initWithDirection:0];
        v23 = v59;
        goto LABEL_43;
      }
    }

    else
    {
      v15 = 0;
      v16 = toEnvironmentMode == 1;
    }

    if (fromEnvironmentMode == 3 && v16)
    {
      if ([eventCopy isIconZoomDisabled])
      {
        v17 = *MEMORY[0x277CBF398];
        v18 = *(MEMORY[0x277CBF398] + 8);
        v19 = *(MEMORY[0x277CBF398] + 16);
        v20 = *(MEMORY[0x277CBF398] + 24);
      }

      else
      {
        [(SBContinuousExposeWindowDropSwitcherModifier *)self homeScreenIconFrameForAppLayout:fromAppLayout];
      }

      v23 = v59;
      if (((CGRectIsNull(*&v17) | isReduceMotionEnabled) & 1) == 0)
      {
        [(SBContinuousExposeWindowDropSwitcherModifier *)self currentGenieFrameForVisibleAppLayout:fromAppLayout];
        self->_initialFrameOfMinimizingItem.origin.x = v26;
        self->_initialFrameOfMinimizingItem.origin.y = v27;
        self->_initialFrameOfMinimizingItem.size.width = v28;
        self->_initialFrameOfMinimizingItem.size.height = v29;
        v30 = [fromAppLayout itemForLayoutRole:1];
        minimizingItem = self->_minimizingItem;
        self->_minimizingItem = v30;

        homeGestureSettings = [[SBFullScreenToHomeIconZoomSwitcherModifier alloc] initWithTransitionID:transitionID appLayout:fromAppLayout direction:1];
        [(SBFullScreenToHomeIconZoomSwitcherModifier *)homeGestureSettings setShouldForceDefaultAnchorPointForTransition:1];
        [(SBFullScreenToHomeIconZoomSwitcherModifier *)homeGestureSettings setShouldDockOrderFrontDuringTransition:1];
        [(SBFullScreenToHomeIconZoomSwitcherModifier *)homeGestureSettings setCanAddVelocityKickToHurdleDock:0];
        v22 = [[SBGestureInitiatedIconZoomAnimationAttributesSwitcherModifier alloc] initWithAppLayout:fromAppLayout gestureEdge:1 liftOffVelocity:self->_liftOffVelocity.x, self->_liftOffVelocity.y];
        [(SBChainableModifier *)v22 addChildModifier:homeGestureSettings];
        goto LABEL_22;
      }

      if (fromAppLayout)
      {
        homeGestureSettings = [(SBContinuousExposeWindowDropSwitcherModifier *)self homeGestureSettings];
        [(SBFullScreenToHomeIconZoomSwitcherModifier *)homeGestureSettings homeGestureCenterZoomDownCenterYOffsetFactor];
        v22 = [[SBFullScreenToHomeCenterZoomDownSwitcherModifier alloc] initWithTransitionID:transitionID appLayout:fromAppLayout offsetYPercentOfScreenHeight:v25];
        [(SBStashSlideOverItemAnimationModifier *)v22 setShouldForceDefaultAnchorPointForTransition:1];
LABEL_22:

LABEL_43:
        if (!v22)
        {
          goto LABEL_46;
        }

        [(SBChainableModifier *)self addChildModifier:v22 atLevel:1 key:@"SBContinuousExposeWindowDropSwitcherModifierKeyFullScreenToHomeIcon"];
        goto LABEL_45;
      }

      v22 = v59;
    }

    else
    {
      if (fromEnvironmentMode == 3 && toEnvironmentMode == 3)
      {
        minimizingDisplayItem = [eventCopy minimizingDisplayItem];
        if (minimizingDisplayItem && !(isAutomaticStageCreationEnabled & 1 | (([fromAppLayout containsItem:minimizingDisplayItem] & 1) == 0)))
        {
          v33 = [fromAppLayout leafAppLayoutForItem:minimizingDisplayItem];
          if ([eventCopy isIconZoomDisabled])
          {
            x = *MEMORY[0x277CBF398];
            y = *(MEMORY[0x277CBF398] + 8);
            width = *(MEMORY[0x277CBF398] + 16);
            height = *(MEMORY[0x277CBF398] + 24);
            v38 = &classRef_SBChainableModifierEventResponse;
          }

          else
          {
            [(SBContinuousExposeWindowDropSwitcherModifier *)self homeScreenIconFrameForAppLayout:v33];
            x = v68.origin.x;
            y = v68.origin.y;
            width = v68.size.width;
            height = v68.size.height;
            v38 = &classRef_SBChainableModifierEventResponse;
            if (CGRectIsNull(v68) || ([(SBContinuousExposeWindowDropSwitcherModifier *)self homeScreenIconLocationForAppLayout:v33], v39 = objc_claimAutoreleasedReturnValue(), v40 = *MEMORY[0x277D66690], v39, v39 != v40))
            {
              v41 = +[SBAppLayout appLibraryAppLayout];
              [(SBContinuousExposeWindowDropSwitcherModifier *)self homeScreenIconFrameForAppLayout:v41];
              x = v42;
              y = v43;
              width = v44;
              height = v45;
            }
          }

          v69.origin.x = x;
          v69.origin.y = y;
          v69.size.width = width;
          v69.size.height = height;
          if (CGRectIsNull(v69))
          {
            v46 = [SBPuffAwayItemWindowingModifier alloc];
            allItems = [v33 allItems];
            [(SBDockToStageZoomWindowingModifier *)allItems firstObject];
            v49 = v48 = v33;
            v22 = [(SBPuffAwayItemWindowingModifier *)v46 initWithDisplayItem:v49];

            v33 = v48;
          }

          else
          {
            v50 = [fromAppLayout leafAppLayoutForItem:minimizingDisplayItem];
            v51 = v38[130];
            v64.receiver = self;
            v64.super_class = v51;
            [(SBContinuousExposeWindowDropSwitcherModifier *)&v64 currentGenieFrameForVisibleAppLayout:v50];
            self->_initialFrameOfMinimizingItem.origin.x = v52;
            self->_initialFrameOfMinimizingItem.origin.y = v53;
            self->_initialFrameOfMinimizingItem.size.width = v54;
            self->_initialFrameOfMinimizingItem.size.height = v55;

            objc_storeStrong(&self->_minimizingItem, minimizingDisplayItem);
            allItems = [[SBDockToStageZoomWindowingModifier alloc] initWithAppLayout:v33 addingToStage:0];
            if ([fromAppLayout isEqual:v33])
            {
              v62[0] = MEMORY[0x277D85DD0];
              v62[1] = 3221225472;
              v62[2] = __70__SBContinuousExposeWindowDropSwitcherModifier_handleTransitionEvent___block_invoke_2;
              v62[3] = &unk_2783A8C90;
              v63 = minimizingDisplayItem;
              v56 = [toAppLayout appLayoutWithItemsPassingTest:v62];
              [(SBDockToStageZoomWindowingModifier *)allItems setLaunchingOverDesktopSpaceAppLayout:v56];
            }

            v22 = [[SBGestureInitiatedIconZoomAnimationAttributesSwitcherModifier alloc] initWithAppLayout:v33 gestureEdge:1 liftOffVelocity:self->_liftOffVelocity.x, self->_liftOffVelocity.y];
            [(SBChainableModifier *)v22 addChildModifier:allItems];
          }
        }

        else if (v15)
        {
          v22 = [[SBStashSlideOverItemAnimationModifier alloc] initWithDirection:0];
        }

        else
        {
          v22 = 0;
        }

        v23 = v59;

        goto LABEL_43;
      }

      v22 = v59;
    }

LABEL_45:
  }

LABEL_46:

  return v60;
}

- (id)transitionDidEnd
{
  v6.receiver = self;
  v6.super_class = SBContinuousExposeWindowDropSwitcherModifier;
  transitionDidEnd = [(SBTransitionSwitcherModifier *)&v6 transitionDidEnd];
  v3 = objc_alloc_init(SBInvalidateAdjustedAppLayoutsSwitcherEventResponse);
  v4 = SBAppendSwitcherModifierResponse(v3, transitionDidEnd);

  return v4;
}

- (double)fadeInDelayForSplitViewHandles
{
  switcherSettings = [(SBContinuousExposeWindowDropSwitcherModifier *)self switcherSettings];
  windowingSettings = [switcherSettings windowingSettings];
  [windowingSettings percentageOfTransitionForSplitViewHandleFadeInDelay];
  v5 = v4;
  animationSettings = [switcherSettings animationSettings];
  layoutSettings = [animationSettings layoutSettings];
  [layoutSettings settlingDuration];
  v9 = v5 * v8;

  return v9;
}

- (id)handleSceneReadyEvent:(id)event
{
  v7.receiver = self;
  v7.super_class = SBContinuousExposeWindowDropSwitcherModifier;
  v3 = [(SBSwitcherModifier *)&v7 handleSceneReadyEvent:event];
  v4 = [[SBUpdateLayoutSwitcherEventResponse alloc] initWithOptions:64 updateMode:2];
  v5 = SBAppendSwitcherModifierResponse(v4, v3);

  return v5;
}

- (id)_appLayoutContainingDisplayItem:(id)item
{
  itemCopy = item;
  appLayouts = [(SBContinuousExposeWindowDropSwitcherModifier *)self appLayouts];
  v11 = MEMORY[0x277D85DD0];
  v12 = 3221225472;
  v13 = __80__SBContinuousExposeWindowDropSwitcherModifier__appLayoutContainingDisplayItem___block_invoke;
  v14 = &unk_2783A8CB8;
  v6 = itemCopy;
  v15 = v6;
  v7 = [appLayouts bs_firstObjectPassingTest:&v11];

  if (!v7)
  {
    v8 = SBLogCommon();
    v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG);

    if (v9)
    {
      NSLog(&cfstr_ExpectedAnAppL_0.isa, self->_selectedDisplayItem, v11, v12, v13, v14);
    }
  }

  return v7;
}

- (BOOL)_isLayoutRolePartOfWindowDragInteraction:(int64_t)interaction inAppLayout:(id)layout
{
  layoutCopy = layout;
  toAppLayout = self->_toAppLayout;
  v8 = [layoutCopy itemForLayoutRole:interaction];
  if ([(SBAppLayout *)toAppLayout containsItem:v8])
  {
    v9 = 1;
  }

  else
  {
    selectedDisplayItem = self->_selectedDisplayItem;
    v11 = [layoutCopy itemForLayoutRole:interaction];
    v9 = [(SBDisplayItem *)selectedDisplayItem isEqualToItem:v11];
  }

  return v9;
}

- (CGPoint)liftOffVelocity
{
  x = self->_liftOffVelocity.x;
  y = self->_liftOffVelocity.y;
  result.y = y;
  result.x = x;
  return result;
}

- (void)initWithTransitionID:(uint64_t)a1 selectedDisplayItem:(uint64_t)a2 toAppLayout:initialAppLayout:liftOffVelocity:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBContinuousExposeWindowDropSwitcherModifier.m" lineNumber:47 description:{@"Invalid parameter not satisfying: %@", @"selectedDisplayItem"}];
}

@end