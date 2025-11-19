@interface SBContinuousExposeWindowDropSwitcherModifier
- (BOOL)_isLayoutRolePartOfWindowDragInteraction:(int64_t)a3 inAppLayout:(id)a4;
- (BOOL)isLayoutRoleMatchMovedToScene:(int64_t)a3 inAppLayout:(id)a4;
- (BOOL)shouldUseAnchorPointToPinLayoutRolesToSpace:(unint64_t)a3;
- (CGPoint)liftOffVelocity;
- (CGRect)frameForLayoutRole:(int64_t)a3 inAppLayout:(id)a4 withBounds:(CGRect)a5;
- (CGRect)fullyPresentedFrameForIndex:(unint64_t)a3 frame:(CGRect)a4;
- (SBContinuousExposeWindowDropSwitcherModifier)initWithTransitionID:(id)a3 selectedDisplayItem:(id)a4 toAppLayout:(id)a5 initialAppLayout:(id)a6 liftOffVelocity:(CGPoint)a7;
- (double)fadeInDelayForSplitViewHandles;
- (id)_appLayoutContainingDisplayItem:(id)a3;
- (id)animationAttributesForLayoutElement:(id)a3;
- (id)handleSceneReadyEvent:(id)a3;
- (id)handleTransitionEvent:(id)a3;
- (id)transitionDidEnd;
- (unint64_t)maskedCornersForLayoutRole:(int64_t)a3 inAppLayout:(id)a4 withMaskedCorners:(unint64_t)a5;
- (void)didMoveToParentModifier:(id)a3;
@end

@implementation SBContinuousExposeWindowDropSwitcherModifier

- (SBContinuousExposeWindowDropSwitcherModifier)initWithTransitionID:(id)a3 selectedDisplayItem:(id)a4 toAppLayout:(id)a5 initialAppLayout:(id)a6 liftOffVelocity:(CGPoint)a7
{
  y = a7.y;
  x = a7.x;
  v14 = a4;
  v15 = a5;
  v23.receiver = self;
  v23.super_class = SBContinuousExposeWindowDropSwitcherModifier;
  v16 = [(SBTransitionSwitcherModifier *)&v23 initWithTransitionID:a3];
  if (v16)
  {
    if (!v14)
    {
      [SBContinuousExposeWindowDropSwitcherModifier initWithTransitionID:a2 selectedDisplayItem:v16 toAppLayout:? initialAppLayout:? liftOffVelocity:?];
    }

    objc_storeStrong(&v16->_selectedDisplayItem, a4);
    objc_storeStrong(&v16->_toAppLayout, a5);
    v16->_liftOffVelocity.x = x;
    v16->_liftOffVelocity.y = y;
    SBRectWithSize();
    v16->_initialFrameOfMinimizingItem.origin.x = v17;
    v16->_initialFrameOfMinimizingItem.origin.y = v18;
    v16->_initialFrameOfMinimizingItem.size.width = v19;
    v16->_initialFrameOfMinimizingItem.size.height = v20;
    if ([v15 containsItem:v14])
    {
      v21 = [[SBSplitDisplayItemSwitcherModifier alloc] initWithDisplayItem:v16->_selectedDisplayItem];
      [(SBChainableModifier *)v16 addChildModifier:v21 atLevel:0 key:@"SBContinuousExposeWindowDropSwitcherModifierKeySplitDisplayItem"];
    }
  }

  return v16;
}

- (void)didMoveToParentModifier:(id)a3
{
  v6.receiver = self;
  v6.super_class = SBContinuousExposeWindowDropSwitcherModifier;
  [(SBChainableModifier *)&v6 didMoveToParentModifier:?];
  if (a3)
  {
    v5 = [SBPinDesktopSpaceDisplayItemsSwitcherModifier modifierForTransitionToAppLayout:self->_toAppLayout context:self];
    if (v5)
    {
      [(SBChainableModifier *)self addChildModifier:v5 atLevel:2 key:@"SBContinuousExposeWindowDropSwitcherModifierKeyPinDesktopSpaceDisplayItems"];
    }
  }
}

- (BOOL)shouldUseAnchorPointToPinLayoutRolesToSpace:(unint64_t)a3
{
  v5 = [(SBContinuousExposeWindowDropSwitcherModifier *)self appLayouts];
  v6 = [v5 objectAtIndex:a3];

  if ([v6 containsItem:self->_selectedDisplayItem] && -[SBAppLayout containsItem:](self->_toAppLayout, "containsItem:", self->_selectedDisplayItem))
  {
    v7 = 0;
  }

  else
  {
    v9.receiver = self;
    v9.super_class = SBContinuousExposeWindowDropSwitcherModifier;
    v7 = [(SBContinuousExposeWindowDropSwitcherModifier *)&v9 shouldUseAnchorPointToPinLayoutRolesToSpace:a3];
  }

  return v7;
}

- (id)animationAttributesForLayoutElement:(id)a3
{
  v4 = a3;
  v5 = [(SBChainableModifier *)self childModifierByKey:@"SBContinuousExposeWindowDropSwitcherModifierKeyFullScreenToHomeIcon"];

  if (v5)
  {
    v17.receiver = self;
    v17.super_class = SBContinuousExposeWindowDropSwitcherModifier;
    v6 = [(SBTransitionSwitcherModifier *)&v17 animationAttributesForLayoutElement:v4];
  }

  else
  {
    v16.receiver = self;
    v16.super_class = SBContinuousExposeWindowDropSwitcherModifier;
    v7 = [(SBTransitionSwitcherModifier *)&v16 animationAttributesForLayoutElement:v4];
    v6 = [v7 mutableCopy];

    v8 = [(SBContinuousExposeWindowDropSwitcherModifier *)self switcherSettings];
    v9 = [v8 windowingSettings];
    v10 = [v9 windowDragAnimationSettings];
    [v6 setLayoutSettings:v10];

    if ([v4 isAppLayout])
    {
      toAppLayout = self->_toAppLayout;
      v12 = [v4 appLayout];
      if ([(SBAppLayout *)toAppLayout isOrContainsAppLayout:v12])
      {
      }

      else
      {
        v13 = [v4 appLayout];
        v14 = [(SBContinuousExposeWindowDropSwitcherModifier *)self prioritizesSortOrderForAppLayout:v13];

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

- (CGRect)fullyPresentedFrameForIndex:(unint64_t)a3 frame:(CGRect)a4
{
  v20.receiver = self;
  v20.super_class = SBContinuousExposeWindowDropSwitcherModifier;
  [(SBContinuousExposeWindowDropSwitcherModifier *)&v20 fullyPresentedFrameForIndex:a4.origin.x frame:a4.origin.y, a4.size.width, a4.size.height];
  x = v6;
  y = v8;
  width = v10;
  height = v12;
  v14 = [(SBContinuousExposeWindowDropSwitcherModifier *)self appLayouts];
  v15 = [v14 objectAtIndex:a3];

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

- (CGRect)frameForLayoutRole:(int64_t)a3 inAppLayout:(id)a4 withBounds:(CGRect)a5
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v24.receiver = self;
  v24.super_class = SBContinuousExposeWindowDropSwitcherModifier;
  v11 = a4;
  [(SBContinuousExposeWindowDropSwitcherModifier *)&v24 frameForLayoutRole:a3 inAppLayout:v11 withBounds:x, y, width, height];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  LODWORD(a3) = [v11 containsItem:{self->_minimizingItem, v24.receiver, v24.super_class}];

  if (a3)
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

- (BOOL)isLayoutRoleMatchMovedToScene:(int64_t)a3 inAppLayout:(id)a4
{
  v6 = a4;
  if ([(SBContinuousExposeWindowDropSwitcherModifier *)self _isLayoutRolePartOfWindowDragInteraction:a3 inAppLayout:v6])
  {
    v7 = 1;
  }

  else
  {
    v9.receiver = self;
    v9.super_class = SBContinuousExposeWindowDropSwitcherModifier;
    v7 = [(SBContinuousExposeWindowDropSwitcherModifier *)&v9 isLayoutRoleMatchMovedToScene:a3 inAppLayout:v6];
  }

  return v7;
}

- (unint64_t)maskedCornersForLayoutRole:(int64_t)a3 inAppLayout:(id)a4 withMaskedCorners:(unint64_t)a5
{
  v8 = a4;
  v17.receiver = self;
  v17.super_class = SBContinuousExposeWindowDropSwitcherModifier;
  v9 = [(SBTransitionSwitcherModifier *)&v17 maskedCornersForLayoutRole:a3 inAppLayout:v8 withMaskedCorners:a5];
  v10 = [v8 itemForLayoutRole:a3];
  v11 = v10;
  if (v10 && ([(SBDisplayItem *)v10 isEqualToItem:?]& 1) == 0 && [(SBAppLayout *)self->_toAppLayout isOrContainsAppLayout:v8])
  {
    v12 = [(SBSwitcherModifier *)self flexibleAutoLayoutSpaceForAppLayout:self->_toAppLayout];
    v13 = [v12 flexibleAutoLayoutItemForDisplayItem:v11];
    v14 = [v13 intersectedDisplayRectCorners];
    v15 = v9 & 0xFFFFFFFFFFFFFFFELL;
    if ((v14 & 1) == 0)
    {
      v15 = v9;
    }

    if ((v14 & 2) != 0)
    {
      v15 &= ~2uLL;
    }

    if ((v14 & 4) != 0)
    {
      v15 &= ~4uLL;
    }

    if ((v14 & 8) != 0)
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

- (id)handleTransitionEvent:(id)a3
{
  v4 = a3;
  v66.receiver = self;
  v66.super_class = SBContinuousExposeWindowDropSwitcherModifier;
  v60 = [(SBTransitionSwitcherModifier *)&v66 handleTransitionEvent:v4];
  v5 = [v4 fromEnvironmentMode];
  v6 = [v4 toEnvironmentMode];
  v7 = [v4 fromAppLayout];
  v61 = [v4 toAppLayout];
  v8 = [(SBContinuousExposeWindowDropSwitcherModifier *)self isReduceMotionEnabled];
  v9 = [(SBTransitionSwitcherModifier *)self transitionID];
  v10 = [(SBContinuousExposeWindowDropSwitcherModifier *)self windowManagementContext];
  v11 = [v10 isAutomaticStageCreationEnabled];
  v12 = [(SBChainableModifier *)self childModifierByKey:@"SBContinuousExposeWindowDropSwitcherModifierKeyFullScreenToHomeIcon"];

  if (!v12)
  {
    v13 = [(SBContinuousExposeWindowDropSwitcherModifier *)self displayItemInSlideOver];
    v59 = v13;
    if (v13 && (v14 = v13, -[SBDisplayItem isEqualToItem:](self->_selectedDisplayItem, v13)) && ([v61 containsItem:v14] & 1) == 0)
    {
      v32 = [(SBContinuousExposeWindowDropSwitcherModifier *)self displayOrdinal];
      if ([(SBContinuousExposeWindowDropSwitcherModifier *)self hasMultipleDisplays])
      {
        v58 = [(SBContinuousExposeWindowDropSwitcherModifier *)self draggingAppLayoutsForWindowDrag];
        v65[0] = MEMORY[0x277D85DD0];
        v65[1] = 3221225472;
        v65[2] = __70__SBContinuousExposeWindowDropSwitcherModifier_handleTransitionEvent___block_invoke;
        v65[3] = &__block_descriptor_40_e21_B16__0__SBAppLayout_8l;
        v65[4] = v32;
        v15 = [v58 bs_containsObjectPassingTest:v65] ^ 1;
      }

      else
      {
        v15 = 1;
      }

      v16 = v6 == 1;
      if (v6 == 1 && v15)
      {
        v22 = [[SBStashSlideOverItemAnimationModifier alloc] initWithDirection:0];
        v23 = v59;
        goto LABEL_43;
      }
    }

    else
    {
      v15 = 0;
      v16 = v6 == 1;
    }

    if (v5 == 3 && v16)
    {
      if ([v4 isIconZoomDisabled])
      {
        v17 = *MEMORY[0x277CBF398];
        v18 = *(MEMORY[0x277CBF398] + 8);
        v19 = *(MEMORY[0x277CBF398] + 16);
        v20 = *(MEMORY[0x277CBF398] + 24);
      }

      else
      {
        [(SBContinuousExposeWindowDropSwitcherModifier *)self homeScreenIconFrameForAppLayout:v7];
      }

      v23 = v59;
      if (((CGRectIsNull(*&v17) | v8) & 1) == 0)
      {
        [(SBContinuousExposeWindowDropSwitcherModifier *)self currentGenieFrameForVisibleAppLayout:v7];
        self->_initialFrameOfMinimizingItem.origin.x = v26;
        self->_initialFrameOfMinimizingItem.origin.y = v27;
        self->_initialFrameOfMinimizingItem.size.width = v28;
        self->_initialFrameOfMinimizingItem.size.height = v29;
        v30 = [v7 itemForLayoutRole:1];
        minimizingItem = self->_minimizingItem;
        self->_minimizingItem = v30;

        v24 = [[SBFullScreenToHomeIconZoomSwitcherModifier alloc] initWithTransitionID:v9 appLayout:v7 direction:1];
        [(SBFullScreenToHomeIconZoomSwitcherModifier *)v24 setShouldForceDefaultAnchorPointForTransition:1];
        [(SBFullScreenToHomeIconZoomSwitcherModifier *)v24 setShouldDockOrderFrontDuringTransition:1];
        [(SBFullScreenToHomeIconZoomSwitcherModifier *)v24 setCanAddVelocityKickToHurdleDock:0];
        v22 = [[SBGestureInitiatedIconZoomAnimationAttributesSwitcherModifier alloc] initWithAppLayout:v7 gestureEdge:1 liftOffVelocity:self->_liftOffVelocity.x, self->_liftOffVelocity.y];
        [(SBChainableModifier *)v22 addChildModifier:v24];
        goto LABEL_22;
      }

      if (v7)
      {
        v24 = [(SBContinuousExposeWindowDropSwitcherModifier *)self homeGestureSettings];
        [(SBFullScreenToHomeIconZoomSwitcherModifier *)v24 homeGestureCenterZoomDownCenterYOffsetFactor];
        v22 = [[SBFullScreenToHomeCenterZoomDownSwitcherModifier alloc] initWithTransitionID:v9 appLayout:v7 offsetYPercentOfScreenHeight:v25];
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
      if (v5 == 3 && v6 == 3)
      {
        v21 = [v4 minimizingDisplayItem];
        if (v21 && !(v11 & 1 | (([v7 containsItem:v21] & 1) == 0)))
        {
          v33 = [v7 leafAppLayoutForItem:v21];
          if ([v4 isIconZoomDisabled])
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
            v47 = [v33 allItems];
            [(SBDockToStageZoomWindowingModifier *)v47 firstObject];
            v49 = v48 = v33;
            v22 = [(SBPuffAwayItemWindowingModifier *)v46 initWithDisplayItem:v49];

            v33 = v48;
          }

          else
          {
            v50 = [v7 leafAppLayoutForItem:v21];
            v51 = v38[130];
            v64.receiver = self;
            v64.super_class = v51;
            [(SBContinuousExposeWindowDropSwitcherModifier *)&v64 currentGenieFrameForVisibleAppLayout:v50];
            self->_initialFrameOfMinimizingItem.origin.x = v52;
            self->_initialFrameOfMinimizingItem.origin.y = v53;
            self->_initialFrameOfMinimizingItem.size.width = v54;
            self->_initialFrameOfMinimizingItem.size.height = v55;

            objc_storeStrong(&self->_minimizingItem, v21);
            v47 = [[SBDockToStageZoomWindowingModifier alloc] initWithAppLayout:v33 addingToStage:0];
            if ([v7 isEqual:v33])
            {
              v62[0] = MEMORY[0x277D85DD0];
              v62[1] = 3221225472;
              v62[2] = __70__SBContinuousExposeWindowDropSwitcherModifier_handleTransitionEvent___block_invoke_2;
              v62[3] = &unk_2783A8C90;
              v63 = v21;
              v56 = [v61 appLayoutWithItemsPassingTest:v62];
              [(SBDockToStageZoomWindowingModifier *)v47 setLaunchingOverDesktopSpaceAppLayout:v56];
            }

            v22 = [[SBGestureInitiatedIconZoomAnimationAttributesSwitcherModifier alloc] initWithAppLayout:v33 gestureEdge:1 liftOffVelocity:self->_liftOffVelocity.x, self->_liftOffVelocity.y];
            [(SBChainableModifier *)v22 addChildModifier:v47];
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
  v2 = [(SBTransitionSwitcherModifier *)&v6 transitionDidEnd];
  v3 = objc_alloc_init(SBInvalidateAdjustedAppLayoutsSwitcherEventResponse);
  v4 = SBAppendSwitcherModifierResponse(v3, v2);

  return v4;
}

- (double)fadeInDelayForSplitViewHandles
{
  v2 = [(SBContinuousExposeWindowDropSwitcherModifier *)self switcherSettings];
  v3 = [v2 windowingSettings];
  [v3 percentageOfTransitionForSplitViewHandleFadeInDelay];
  v5 = v4;
  v6 = [v2 animationSettings];
  v7 = [v6 layoutSettings];
  [v7 settlingDuration];
  v9 = v5 * v8;

  return v9;
}

- (id)handleSceneReadyEvent:(id)a3
{
  v7.receiver = self;
  v7.super_class = SBContinuousExposeWindowDropSwitcherModifier;
  v3 = [(SBSwitcherModifier *)&v7 handleSceneReadyEvent:a3];
  v4 = [[SBUpdateLayoutSwitcherEventResponse alloc] initWithOptions:64 updateMode:2];
  v5 = SBAppendSwitcherModifierResponse(v4, v3);

  return v5;
}

- (id)_appLayoutContainingDisplayItem:(id)a3
{
  v4 = a3;
  v5 = [(SBContinuousExposeWindowDropSwitcherModifier *)self appLayouts];
  v11 = MEMORY[0x277D85DD0];
  v12 = 3221225472;
  v13 = __80__SBContinuousExposeWindowDropSwitcherModifier__appLayoutContainingDisplayItem___block_invoke;
  v14 = &unk_2783A8CB8;
  v6 = v4;
  v15 = v6;
  v7 = [v5 bs_firstObjectPassingTest:&v11];

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

- (BOOL)_isLayoutRolePartOfWindowDragInteraction:(int64_t)a3 inAppLayout:(id)a4
{
  v6 = a4;
  toAppLayout = self->_toAppLayout;
  v8 = [v6 itemForLayoutRole:a3];
  if ([(SBAppLayout *)toAppLayout containsItem:v8])
  {
    v9 = 1;
  }

  else
  {
    selectedDisplayItem = self->_selectedDisplayItem;
    v11 = [v6 itemForLayoutRole:a3];
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