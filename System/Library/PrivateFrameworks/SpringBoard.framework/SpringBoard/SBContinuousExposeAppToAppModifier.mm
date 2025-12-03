@interface SBContinuousExposeAppToAppModifier
- (BOOL)_shouldIgnoreTapsUntilDelay:(double *)delay;
- (BOOL)asyncRenderingDisabled;
- (BOOL)isLayoutRoleBlurred:(int64_t)blurred inAppLayout:(id)layout;
- (BOOL)isLayoutRoleMatchMovedToScene:(int64_t)scene inAppLayout:(id)layout;
- (CGPoint)perspectiveAngleForIndex:(unint64_t)index;
- (SBContinuousExposeAppToAppModifier)initWithTransitionID:(id)d fromAppLayout:(id)layout fromInterfaceOrientation:(int64_t)orientation toAppLayout:(id)appLayout toInterfaceOrientation:(int64_t)interfaceOrientation fromDisplayItemLayoutAttributesMap:(id)map toDisplayItemLayoutAttributesMap:(id)attributesMap;
- (double)blurDelayForLayoutRole:(int64_t)role inAppLayout:(id)layout;
- (double)fadeInDelayForSplitViewHandles;
- (double)opacityForLayoutRole:(int64_t)role inAppLayout:(id)layout atIndex:(unint64_t)index;
- (id)_layoutSettings;
- (id)_topMostDisplayItemInDisplayItemLayoutAttributesMap:(id)map;
- (id)animationAttributesForLayoutElement:(id)element;
- (id)handleSceneReadyEvent:(id)event;
- (id)handleTapAppLayoutEvent:(id)event;
- (id)handleTimerEvent:(id)event;
- (id)topMostLayoutElements;
- (id)transitionDidEnd;
- (id)transitionWillBegin;
- (unint64_t)maskedCornersForLayoutRole:(int64_t)role inAppLayout:(id)layout withMaskedCorners:(unint64_t)corners;
- (void)didMoveToParentModifier:(id)modifier;
@end

@implementation SBContinuousExposeAppToAppModifier

- (SBContinuousExposeAppToAppModifier)initWithTransitionID:(id)d fromAppLayout:(id)layout fromInterfaceOrientation:(int64_t)orientation toAppLayout:(id)appLayout toInterfaceOrientation:(int64_t)interfaceOrientation fromDisplayItemLayoutAttributesMap:(id)map toDisplayItemLayoutAttributesMap:(id)attributesMap
{
  dCopy = d;
  layoutCopy = layout;
  appLayoutCopy = appLayout;
  mapCopy = map;
  attributesMapCopy = attributesMap;
  if (layoutCopy)
  {
    if (appLayoutCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [SBContinuousExposeAppToAppModifier initWithTransitionID:a2 fromAppLayout:self fromInterfaceOrientation:? toAppLayout:? toInterfaceOrientation:? fromDisplayItemLayoutAttributesMap:? toDisplayItemLayoutAttributesMap:?];
    if (appLayoutCopy)
    {
      goto LABEL_3;
    }
  }

  [SBContinuousExposeAppToAppModifier initWithTransitionID:a2 fromAppLayout:self fromInterfaceOrientation:? toAppLayout:? toInterfaceOrientation:? fromDisplayItemLayoutAttributesMap:? toDisplayItemLayoutAttributesMap:?];
LABEL_3:
  v33.receiver = self;
  v33.super_class = SBContinuousExposeAppToAppModifier;
  v18 = [(SBTransitionSwitcherModifier *)&v33 initWithTransitionID:dCopy];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_fromAppLayout, layout);
    v19->_fromInterfaceOrientation = orientation;
    objc_storeStrong(&v19->_toAppLayout, appLayout);
    v19->_toInterfaceOrientation = interfaceOrientation;
    objc_storeStrong(&v19->_fromDisplayItemLayoutAttributesMap, map);
    objc_storeStrong(&v19->_toDisplayItemLayoutAttributesMap, attributesMap);
    v20 = [MEMORY[0x277CBEB98] set];
    displayItemsChangingSize = v19->_displayItemsChangingSize;
    v19->_displayItemsChangingSize = v20;

    v22 = [(SBContinuousExposeAppToAppModifier *)v19 _topMostDisplayItemInDisplayItemLayoutAttributesMap:v19->_fromDisplayItemLayoutAttributesMap];
    fromTopMostDisplayItem = v19->_fromTopMostDisplayItem;
    v19->_fromTopMostDisplayItem = v22;

    v24 = [(SBContinuousExposeAppToAppModifier *)v19 _topMostDisplayItemInDisplayItemLayoutAttributesMap:v19->_toDisplayItemLayoutAttributesMap];
    toTopMostDisplayItem = v19->_toTopMostDisplayItem;
    v19->_toTopMostDisplayItem = v24;

    v19->_ignoreTapsDuringMorphTransition = 1;
    uUID = [MEMORY[0x277CCAD78] UUID];
    uUIDString = [uUID UUIDString];
    uniqueAnimationIdentifier = v19->_uniqueAnimationIdentifier;
    v19->_uniqueAnimationIdentifier = uUIDString;
  }

  return v19;
}

- (void)didMoveToParentModifier:(id)modifier
{
  v58 = *MEMORY[0x277D85DE8];
  v56.receiver = self;
  v56.super_class = SBContinuousExposeAppToAppModifier;
  [(SBChainableModifier *)&v56 didMoveToParentModifier:?];
  if (!modifier)
  {
    return;
  }

  obj = objc_opt_new();
  v50 = objc_opt_new();
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  allItems = [(SBAppLayout *)self->_toAppLayout allItems];
  v6 = [allItems countByEnumeratingWithState:&v52 objects:v57 count:16];
  v7 = &OBJC_IVAR___SBAssistantSceneController__windowScene;
  if (!v6)
  {
    goto LABEL_29;
  }

  v8 = v6;
  v9 = *v53;
  v48 = *v53;
  v49 = allItems;
  do
  {
    v10 = 0;
    do
    {
      if (*v53 != v9)
      {
        objc_enumerationMutation(allItems);
      }

      v11 = *(*(&v52 + 1) + 8 * v10);
      if ([*(&self->super.super.super.super.super.isa + v7[78]) containsItem:v11])
      {
        if ([(SBContinuousExposeAppToAppModifier *)self isContinuousExposeConfigurationChangeTransition])
        {
          [obj addObject:v11];
LABEL_10:
          [v50 addObject:v11];
          goto LABEL_11;
        }

        v12 = [(NSDictionary *)self->_fromDisplayItemLayoutAttributesMap objectForKey:v11];
        v13 = [(NSDictionary *)self->_toDisplayItemLayoutAttributesMap objectForKey:v11];
        windowingConfiguration = [(SBSwitcherModifier *)self windowingConfiguration];
        displayItemLayoutAttributesCalculator = [(SBContinuousExposeAppToAppModifier *)self displayItemLayoutAttributesCalculator];
        v16 = displayItemLayoutAttributesCalculator;
        if (v12 == v13)
        {
          v24 = 0;
          v25 = 0;
        }

        else
        {
          [displayItemLayoutAttributesCalculator sizeForLayoutAttributes:v12 windowingConfiguration:windowingConfiguration];
          v18 = v17;
          v20 = v19;
          [v16 sizeForLayoutAttributes:v13 windowingConfiguration:windowingConfiguration];
          if (v18 == v22 && v20 == v21)
          {
            [v16 centerForLayoutAttributes:v12 windowingConfiguration:windowingConfiguration];
            v27 = v26;
            v29 = v28;
            [v16 centerForLayoutAttributes:v13 windowingConfiguration:windowingConfiguration];
            v25 = 0;
            v24 = v29 != v31 || v27 != v30;
          }

          else
          {
            v24 = 1;
            v25 = 1;
          }
        }

        if (v25)
        {
          [obj addObject:v11];
          v7 = &OBJC_IVAR___SBAssistantSceneController__windowScene;
          v9 = v48;
          allItems = v49;
          if (v24)
          {
            goto LABEL_10;
          }
        }

        else
        {
          v7 = &OBJC_IVAR___SBAssistantSceneController__windowScene;
          v9 = v48;
          allItems = v49;
          if (v24)
          {
            goto LABEL_10;
          }
        }
      }

LABEL_11:
      ++v10;
    }

    while (v8 != v10);
    v32 = [allItems countByEnumeratingWithState:&v52 objects:v57 count:16];
    v8 = v32;
  }

  while (v32);
LABEL_29:

  objc_storeStrong(&self->_displayItemsChangingSize, obj);
  objc_storeStrong(&self->_displayItemsChangingPosition, v50);
  v33 = [(NSSet *)self->_displayItemsChangingSize mutableCopy];
  pendingDisplayItemSceneUpdates = self->_pendingDisplayItemSceneUpdates;
  self->_pendingDisplayItemSceneUpdates = v33;

  v35 = v7[78];
  if (![(SBAppLayout *)self->_toAppLayout containsAnyItemFromAppLayout:*(&self->super.super.super.super.super.isa + v35)])
  {
    if (self->_toAppLayout)
    {
      appLayouts = [(SBContinuousExposeAppToAppModifier *)self appLayouts];
      v37 = [appLayouts containsObject:self->_toAppLayout];

      if (v37)
      {
        if ([(SBContinuousExposeAppToAppModifier *)self prefersStripHiddenAndDisabled]&& ![(SBContinuousExposeAppToAppModifier *)self isTopAffordanceMenuTransition]|| [(SBContinuousExposeAppToAppModifier *)self isCommandTabTransition]|| [(SBContinuousExposeAppToAppModifier *)self isLaunchingFromDockTransition]|| [(SBContinuousExposeAppToAppModifier *)self isLaunchingFromSpotlightTransition])
        {
          v38 = [SBContinuousExposeFullScreenCrossblurTransitionSwitcherModifier alloc];
          transitionID = [(SBTransitionSwitcherModifier *)self transitionID];
          v40 = [(SBContinuousExposeFullScreenCrossblurTransitionSwitcherModifier *)v38 initWithTransitionID:transitionID toAppLayout:self->_toAppLayout fromAppLayout:*(&self->super.super.super.super.super.isa + v35)];
LABEL_38:
          v41 = v40;

          if (v41)
          {
            [(SBChainableModifier *)self addChildModifier:v41];
          }
        }

        else
        {
          switcherSettings = [(SBContinuousExposeAppToAppModifier *)self switcherSettings];
          windowingSettings = [switcherSettings windowingSettings];
          useLowFatigueStripAnimation = [windowingSettings useLowFatigueStripAnimation];

          if (useLowFatigueStripAnimation)
          {
            v47 = [SBContinuousExposeFullScreenToStripTransitionSwitcherModifier alloc];
            transitionID = [(SBTransitionSwitcherModifier *)self transitionID];
            v40 = [(SBContinuousExposeFullScreenToStripTransitionSwitcherModifier *)v47 initWithTransitionID:transitionID outgoingAppLayout:*(&self->super.super.super.super.super.isa + v35)];
            goto LABEL_38;
          }
        }
      }
    }
  }

  if (([(SBContinuousExposeAppToAppModifier *)self prefersStripHiddenAndDisabled]& 1) != 0)
  {
    IsOne = 0;
  }

  else
  {
    [(SBContinuousExposeAppToAppModifier *)self continuousExposeStripProgress];
    IsOne = BSFloatIsOne();
  }

  self->_stripWasInitiallyPresented = IsOne;
  peekingAppLayout = [(SBContinuousExposeAppToAppModifier *)self peekingAppLayout];
  self->_isFromPeek = peekingAppLayout != 0;
}

- (BOOL)asyncRenderingDisabled
{
  if (BSEqualObjects())
  {
    return 1;
  }

  fromAppLayout = self->_fromAppLayout;
  toAppLayout = self->_toAppLayout;

  return [(SBAppLayout *)fromAppLayout containsAllItemsFromAppLayout:toAppLayout];
}

- (id)transitionWillBegin
{
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__48;
  v25 = __Block_byref_object_dispose__48;
  v20.receiver = self;
  v20.super_class = SBContinuousExposeAppToAppModifier;
  transitionWillBegin = [(SBTransitionSwitcherModifier *)&v20 transitionWillBegin];
  v3 = [[SBUpdateLayoutSwitcherEventResponse alloc] initWithOptions:2 updateMode:2];
  v4 = SBAppendSwitcherModifierResponse(v3, v22[5]);
  v5 = v22[5];
  v22[5] = v4;

  if ([(SBContinuousExposeAppToAppModifier *)self isTopAffordanceMenuTransition])
  {
    toDisplayItemLayoutAttributesMap = self->_toDisplayItemLayoutAttributesMap;
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __57__SBContinuousExposeAppToAppModifier_transitionWillBegin__block_invoke;
    v19[3] = &unk_2783B4AC8;
    v19[4] = self;
    v19[5] = &v21;
    [(NSDictionary *)toDisplayItemLayoutAttributesMap enumerateKeysAndObjectsUsingBlock:v19];
  }

  v18 = 0.0;
  if ([(SBContinuousExposeAppToAppModifier *)self _shouldIgnoreTapsUntilDelay:&v18])
  {
    objc_initWeak(&location, self);
    v7 = [SBTimerEventSwitcherEventResponse alloc];
    v8 = v18;
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __57__SBContinuousExposeAppToAppModifier_transitionWillBegin__block_invoke_2;
    v15[3] = &unk_2783AD4A0;
    objc_copyWeak(&v16, &location);
    _ignoreTapsDuringMorphTransitionReason = [(SBContinuousExposeAppToAppModifier *)self _ignoreTapsDuringMorphTransitionReason];
    v10 = [(SBTimerEventSwitcherEventResponse *)v7 initWithDelay:v15 validator:_ignoreTapsDuringMorphTransitionReason reason:v8];

    v11 = SBAppendSwitcherModifierResponse(v10, v22[5]);
    v12 = v22[5];
    v22[5] = v11;

    objc_destroyWeak(&v16);
    objc_destroyWeak(&location);
  }

  v13 = v22[5];

  _Block_object_dispose(&v21, 8);

  return v13;
}

void __57__SBContinuousExposeAppToAppModifier_transitionWillBegin__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(*(a1 + 32) + 264) objectForKey:v5];
  v8 = v7;
  if (v7)
  {
    [(SBDisplayItemLayoutAttributes *)v7 attributedSize];
    [(SBDisplayItemLayoutAttributes *)v6 attributedSize];
    if (!SBEqualDisplayItemAttributedSizes(v16, v15))
    {
      [(SBDisplayItemLayoutAttributes *)v6 attributedSize];
      if (v14 == 3)
      {
        v9 = [[SBSetInterfaceOrientationFromUserResizingEventResponse alloc] initWithDisplayItem:v5 desiredContentOrientation:*(*(a1 + 32) + 256)];
        v10 = SBAppendSwitcherModifierResponse(v9, *(*(*(a1 + 40) + 8) + 40));
        v11 = *(*(a1 + 40) + 8);
        v12 = *(v11 + 40);
        *(v11 + 40) = v10;
      }
    }
  }
}

BOOL __57__SBContinuousExposeAppToAppModifier_transitionWillBegin__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained parentModifier];
  v3 = v2 != 0;

  return v3;
}

- (id)transitionDidEnd
{
  v7.receiver = self;
  v7.super_class = SBContinuousExposeAppToAppModifier;
  transitionDidEnd = [(SBTransitionSwitcherModifier *)&v7 transitionDidEnd];
  if ([(SBTransitionSwitcherModifier *)self isInterrupted])
  {
    v4 = objc_alloc_init(SBCancelWindowMorphingSwitcherEventResponse);
    v5 = SBAppendSwitcherModifierResponse(v4, transitionDidEnd);

    transitionDidEnd = v5;
  }

  return transitionDidEnd;
}

- (id)handleSceneReadyEvent:(id)event
{
  v12.receiver = self;
  v12.super_class = SBContinuousExposeAppToAppModifier;
  eventCopy = event;
  v5 = [(SBSwitcherModifier *)&v12 handleSceneReadyEvent:eventCopy];
  appLayout = [eventCopy appLayout];

  v7 = [appLayout itemForLayoutRole:1];
  if ([(NSMutableSet *)self->_pendingDisplayItemSceneUpdates containsObject:v7])
  {
    v11.receiver = self;
    v11.super_class = SBContinuousExposeAppToAppModifier;
    if (-[SBContinuousExposeAppToAppModifier isLayoutRoleContentReady:inAppLayout:](&v11, sel_isLayoutRoleContentReady_inAppLayout_, [appLayout layoutRoleForItem:v7], appLayout))
    {
      [(NSMutableSet *)self->_pendingDisplayItemSceneUpdates removeObject:v7];
    }
  }

  if ([(NSSet *)self->_displayItemsChangingSize containsObject:v7])
  {
    v8 = [[SBUpdateLayoutSwitcherEventResponse alloc] initWithOptions:30 updateMode:0];
    v9 = SBAppendSwitcherModifierResponse(v8, v5);

    v5 = v9;
  }

  return v5;
}

- (id)handleTapAppLayoutEvent:(id)event
{
  v27 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  if (![(SBContinuousExposeAppToAppModifier *)self isMorphFromInAppViewTransition])
  {
LABEL_10:
    v21.receiver = self;
    v21.super_class = SBContinuousExposeAppToAppModifier;
    v13 = [(SBSwitcherModifier *)&v21 handleTapAppLayoutEvent:eventCopy];
    goto LABEL_11;
  }

  if (self->_ignoreTapsDuringMorphTransition)
  {
    v5 = SBLogAppSwitcher();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = objc_opt_class();
      v7 = NSStringFromClass(v6);
      *buf = 138543362;
      v24 = v7;
      _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] ignored tap event because of ignore tap assertion", buf, 0xCu);
    }

    [eventCopy handleWithReason:@"Continuous Exposé App to App"];
    goto LABEL_10;
  }

  isHandled = [eventCopy isHandled];
  v9 = SBLogAppSwitcher();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
  if (isHandled)
  {
    if (v10)
    {
      v11 = objc_opt_class();
      v12 = NSStringFromClass(v11);
      *buf = 138543362;
      v24 = v12;
      _os_log_impl(&dword_21ED4E000, v9, OS_LOG_TYPE_DEFAULT, "[%{public}@] tap detected but it has been handled already", buf, 0xCu);
    }

    goto LABEL_10;
  }

  if (v10)
  {
    v15 = objc_opt_class();
    v16 = NSStringFromClass(v15);
    appLayout = [eventCopy appLayout];
    succinctDescription = [appLayout succinctDescription];
    *buf = 138543618;
    v24 = v16;
    v25 = 2114;
    v26 = succinctDescription;
    _os_log_impl(&dword_21ED4E000, v9, OS_LOG_TYPE_DEFAULT, "[%{public}@] tap detected, cancelling any window morphing before transition completes: %{public}@", buf, 0x16u);
  }

  v19 = objc_alloc_init(SBCancelWindowMorphingSwitcherEventResponse);
  v22.receiver = self;
  v22.super_class = SBContinuousExposeAppToAppModifier;
  v20 = [(SBSwitcherModifier *)&v22 handleTapAppLayoutEvent:eventCopy];
  v13 = SBAppendSwitcherModifierResponse(v19, v20);

LABEL_11:

  return v13;
}

- (id)handleTimerEvent:(id)event
{
  v16 = *MEMORY[0x277D85DE8];
  v13.receiver = self;
  v13.super_class = SBContinuousExposeAppToAppModifier;
  eventCopy = event;
  v5 = [(SBTransitionSwitcherModifier *)&v13 handleTimerEvent:eventCopy];
  reason = [eventCopy reason];

  _ignoreTapsDuringMorphTransitionReason = [(SBContinuousExposeAppToAppModifier *)self _ignoreTapsDuringMorphTransitionReason];
  v8 = [reason isEqualToString:_ignoreTapsDuringMorphTransitionReason];

  if (v8)
  {
    v9 = SBLogAppSwitcher();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = objc_opt_class();
      v11 = NSStringFromClass(v10);
      *buf = 138543362;
      v15 = v11;
      _os_log_impl(&dword_21ED4E000, v9, OS_LOG_TYPE_INFO, "[%{public}@] handling ignore tap assertion event", buf, 0xCu);
    }

    self->_ignoreTapsDuringMorphTransition = 0;
  }

  return v5;
}

- (id)animationAttributesForLayoutElement:(id)element
{
  elementCopy = element;
  v18.receiver = self;
  v18.super_class = SBContinuousExposeAppToAppModifier;
  v5 = [(SBTransitionSwitcherModifier *)&v18 animationAttributesForLayoutElement:elementCopy];
  v6 = [v5 mutableCopy];

  if (![elementCopy switcherLayoutElementType] && BSEqualObjects() && (BSEqualObjects() & 1) == 0 && self->_fromAppLayout && (v7 = MEMORY[0x277CBEB98], -[SBAppLayout allItems](self->_toAppLayout, "allItems"), v8 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v7, "setWithArray:", v8), v9 = objc_claimAutoreleasedReturnValue(), v10 = MEMORY[0x277CBEB98], -[SBAppLayout allItems](self->_fromAppLayout, "allItems"), v11 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v10, "setWithArray:", v11), v12 = objc_claimAutoreleasedReturnValue(), v13 = BSEqualSets(), v12, v11, v9, v8, v13))
  {
    [v6 setLayoutUpdateMode:3];
    switcherSettings = [(SBContinuousExposeAppToAppModifier *)self switcherSettings];
    windowingSettings = [switcherSettings windowingSettings];
    stageFocusChangeSettings = [windowingSettings stageFocusChangeSettings];
    [v6 setLayoutSettings:stageFocusChangeSettings];
  }

  else if ([elementCopy switcherLayoutElementType] || (BSEqualObjects() & 1) != 0 || BSEqualObjects())
  {
    [v6 setLayoutUpdateMode:3];
    switcherSettings = [objc_alloc(MEMORY[0x277D65E60]) initWithDefaultValues];
    [switcherSettings setResponse:0.4];
    [switcherSettings setDampingRatio:1.0];
    v20 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
    [switcherSettings setFrameRateRange:1114113 highFrameRateReason:{*&v20.minimum, *&v20.maximum, *&v20.preferred}];
    [v6 setLayoutSettings:switcherSettings];
  }

  else
  {
    switcherSettings = [objc_alloc(MEMORY[0x277D65E60]) initWithDefaultValues];
    [switcherSettings setResponse:0.54];
    [switcherSettings setDampingRatio:0.92];
    v21 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
    [switcherSettings setFrameRateRange:1114113 highFrameRateReason:{*&v21.minimum, *&v21.maximum, *&v21.preferred}];
    [v6 setLayoutSettings:switcherSettings];
    [v6 setPositionSettings:switcherSettings];
    [v6 setOpacitySettings:switcherSettings];
    [v6 setUpdateMode:3];
  }

  return v6;
}

- (id)topMostLayoutElements
{
  v15.receiver = self;
  v15.super_class = SBContinuousExposeAppToAppModifier;
  topMostLayoutElements = [(SBContinuousExposeAppToAppModifier *)&v15 topMostLayoutElements];
  v4 = [(SBAppLayout *)self->_fromAppLayout leafAppLayoutForRole:4];
  v5 = [(SBAppLayout *)self->_toAppLayout leafAppLayoutForRole:4];
  v6 = v5;
  if (v4)
  {
    v7 = v5 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    v11 = [v4 isEqual:v5];
    if ((v11 & 1) == 0)
    {
      windowManagementContext = [topMostLayoutElements sb_arrayByInsertingOrMovingObject:v4 toIndex:0];

      v9 = [windowManagementContext sb_arrayByInsertingOrMovingObject:v6 toIndex:0];
      goto LABEL_19;
    }

    goto LABEL_14;
  }

  if (v4)
  {
    v8 = v5 == 0;
  }

  else
  {
    v8 = 0;
  }

  if (!v8)
  {
LABEL_14:
    windowManagementContext = [(SBContinuousExposeAppToAppModifier *)self windowManagementContext];
    if (![windowManagementContext isFlexibleWindowingEnabled] || self->_stripWasInitiallyPresented)
    {
      goto LABEL_20;
    }

    v12 = [(SBSwitcherModifier *)self flexibleAutoLayoutSpaceForAppLayout:self->_toAppLayout];
    isStripVisible = [v12 isStripVisible];

    if (isStripVisible)
    {
      goto LABEL_21;
    }

    v9 = [(SBSwitcherModifier *)self topMostLayoutElementsByAddingAppLayoutAndAccessories:self->_toAppLayout toTopMostLayoutElements:topMostLayoutElements orderFront:1];
    goto LABEL_12;
  }

  v9 = [topMostLayoutElements sb_arrayByInsertingOrMovingObject:v4 toIndex:0];
LABEL_12:
  windowManagementContext = topMostLayoutElements;
LABEL_19:
  topMostLayoutElements = v9;
LABEL_20:

LABEL_21:

  return topMostLayoutElements;
}

- (double)opacityForLayoutRole:(int64_t)role inAppLayout:(id)layout atIndex:(unint64_t)index
{
  layoutCopy = layout;
  v9 = 0.0;
  if (![(SBTransitionSwitcherModifier *)self isPreparingLayout])
  {
    v12.receiver = self;
    v12.super_class = SBContinuousExposeAppToAppModifier;
    [(SBContinuousExposeAppToAppModifier *)&v12 opacityForLayoutRole:role inAppLayout:layoutCopy atIndex:index];
    v9 = v10;
  }

  return v9;
}

- (CGPoint)perspectiveAngleForIndex:(unint64_t)index
{
  appLayouts = [(SBContinuousExposeAppToAppModifier *)self appLayouts];
  v6 = [appLayouts objectAtIndex:index];

  if ([v6 isEqual:self->_toAppLayout] && -[SBTransitionSwitcherModifier transitionPhase](self, "transitionPhase") == 1)
  {
    v7 = *MEMORY[0x277CBF348];
    v8 = *(MEMORY[0x277CBF348] + 8);
  }

  else
  {
    v13.receiver = self;
    v13.super_class = SBContinuousExposeAppToAppModifier;
    [(SBContinuousExposeAppToAppModifier *)&v13 perspectiveAngleForIndex:index];
    v7 = v9;
    v8 = v10;
  }

  v11 = v7;
  v12 = v8;
  result.y = v12;
  result.x = v11;
  return result;
}

- (BOOL)isLayoutRoleMatchMovedToScene:(int64_t)scene inAppLayout:(id)layout
{
  layoutCopy = layout;
  v10.receiver = self;
  v10.super_class = SBContinuousExposeAppToAppModifier;
  if ([(SBContinuousExposeAppToAppModifier *)&v10 isLayoutRoleMatchMovedToScene:scene inAppLayout:layoutCopy])
  {
    goto LABEL_2;
  }

  if (![layoutCopy isEqual:self->_toAppLayout])
  {
    v7 = 0;
    goto LABEL_7;
  }

  if ([(SBContinuousExposeAppToAppModifier *)self isContinuousExposeConfigurationChangeTransition])
  {
LABEL_2:
    v7 = 1;
  }

  else
  {
    v8 = [layoutCopy itemForLayoutRole:scene];
    v7 = [(NSSet *)self->_displayItemsChangingSize containsObject:v8];
  }

LABEL_7:

  return v7;
}

- (BOOL)isLayoutRoleBlurred:(int64_t)blurred inAppLayout:(id)layout
{
  layoutCopy = layout;
  v7 = [layoutCopy itemForLayoutRole:blurred];
  if ([(NSSet *)self->_displayItemsChangingSize containsObject:v7]&& [(NSMutableSet *)self->_pendingDisplayItemSceneUpdates containsObject:v7])
  {
    LODWORD(blurred) = ![(SBContinuousExposeAppToAppModifier *)self isMorphFromInAppViewTransition];
  }

  else
  {
    v9.receiver = self;
    v9.super_class = SBContinuousExposeAppToAppModifier;
    LOBYTE(blurred) = [(SBContinuousExposeAppToAppModifier *)&v9 isLayoutRoleBlurred:blurred inAppLayout:layoutCopy];
  }

  return blurred;
}

- (double)blurDelayForLayoutRole:(int64_t)role inAppLayout:(id)layout
{
  layoutCopy = layout;
  v7 = [layoutCopy itemForLayoutRole:role];
  v14.receiver = self;
  v14.super_class = SBContinuousExposeAppToAppModifier;
  [(SBContinuousExposeAppToAppModifier *)&v14 blurDelayForLayoutRole:role inAppLayout:layoutCopy];
  v9 = v8;

  if ([(NSSet *)self->_displayItemsChangingSize containsObject:v7]&& ![(SBContinuousExposeAppToAppModifier *)self isMorphFromInAppViewTransition])
  {
    switcherSettings = [(SBContinuousExposeAppToAppModifier *)self switcherSettings];
    animationSettings = [switcherSettings animationSettings];
    [animationSettings resizeBlurDelay];
    v9 = v12;
  }

  return v9;
}

- (double)fadeInDelayForSplitViewHandles
{
  if (BSEqualObjects() && ![(NSSet *)self->_displayItemsChangingPosition count])
  {
    isFromPeek = self->_isFromPeek;
    switcherSettings = [(SBContinuousExposeAppToAppModifier *)self switcherSettings];
    v10 = 0.0;
    if (!isFromPeek)
    {
      goto LABEL_5;
    }
  }

  else
  {
    switcherSettings = [(SBContinuousExposeAppToAppModifier *)self switcherSettings];
  }

  windowingSettings = [switcherSettings windowingSettings];
  [windowingSettings percentageOfTransitionForSplitViewHandleFadeInDelay];
  v6 = v5;
  animationSettings = [switcherSettings animationSettings];
  layoutSettings = [animationSettings layoutSettings];
  [layoutSettings settlingDuration];
  v10 = v6 * v9;

LABEL_5:
  return v10;
}

- (unint64_t)maskedCornersForLayoutRole:(int64_t)role inAppLayout:(id)layout withMaskedCorners:(unint64_t)corners
{
  v16.receiver = self;
  v16.super_class = SBContinuousExposeAppToAppModifier;
  layoutCopy = layout;
  v9 = [(SBTransitionSwitcherModifier *)&v16 maskedCornersForLayoutRole:role inAppLayout:layoutCopy withMaskedCorners:corners];
  v10 = [layoutCopy itemForLayoutRole:{role, v16.receiver, v16.super_class}];

  if (v10 && [(SBAppLayout *)self->_toAppLayout containsItem:v10]&& [(SBAppLayout *)self->_fromAppLayout containsItem:v10]&& ![(NSSet *)self->_displayItemsChangingPosition containsObject:v10])
  {
    v11 = [(SBSwitcherModifier *)self flexibleAutoLayoutSpaceForAppLayout:self->_toAppLayout];
    v12 = [v11 flexibleAutoLayoutItemForDisplayItem:v10];
    intersectedDisplayRectCorners = [v12 intersectedDisplayRectCorners];
    v14 = v9 & 0xFFFFFFFFFFFFFFFELL;
    if ((intersectedDisplayRectCorners & 1) == 0)
    {
      v14 = v9;
    }

    if ((intersectedDisplayRectCorners & 2) != 0)
    {
      v14 &= ~2uLL;
    }

    if ((intersectedDisplayRectCorners & 4) != 0)
    {
      v14 &= ~4uLL;
    }

    if ((intersectedDisplayRectCorners & 8) != 0)
    {
      v9 = v14 & 0xFFFFFFFFFFFFFFF7;
    }

    else
    {
      v9 = v14;
    }
  }

  return v9;
}

- (id)_layoutSettings
{
  switcherSettings = [(SBContinuousExposeAppToAppModifier *)self switcherSettings];
  windowingSettings = [switcherSettings windowingSettings];
  appToAppLayoutSettings = [windowingSettings appToAppLayoutSettings];

  return appToAppLayoutSettings;
}

- (BOOL)_shouldIgnoreTapsUntilDelay:(double *)delay
{
  isMorphFromInAppViewTransition = [(SBContinuousExposeAppToAppModifier *)self isMorphFromInAppViewTransition];
  if (isMorphFromInAppViewTransition)
  {
    switcherSettings = [(SBContinuousExposeAppToAppModifier *)self switcherSettings];
    animationSettings = [switcherSettings animationSettings];
    [animationSettings disableTapDuringMorphFromInAppViewTransitionDelay];
    v9 = v8;
    UIAnimationDragCoefficient();
    *delay = v9 * v10;
  }

  return isMorphFromInAppViewTransition;
}

- (id)_topMostDisplayItemInDisplayItemLayoutAttributesMap:(id)map
{
  mapCopy = map;
  allKeys = [mapCopy allKeys];
  v5 = SBDisplayItemDescendingZOrderComparator(mapCopy);

  v6 = [allKeys sortedArrayUsingComparator:v5];
  firstObject = [v6 firstObject];

  return firstObject;
}

- (void)initWithTransitionID:(uint64_t)a1 fromAppLayout:(uint64_t)a2 fromInterfaceOrientation:toAppLayout:toInterfaceOrientation:fromDisplayItemLayoutAttributesMap:toDisplayItemLayoutAttributesMap:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBContinuousExposeAppToAppModifier.m" lineNumber:42 description:{@"Invalid parameter not satisfying: %@", @"fromAppLayout"}];
}

- (void)initWithTransitionID:(uint64_t)a1 fromAppLayout:(uint64_t)a2 fromInterfaceOrientation:toAppLayout:toInterfaceOrientation:fromDisplayItemLayoutAttributesMap:toDisplayItemLayoutAttributesMap:.cold.2(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBContinuousExposeAppToAppModifier.m" lineNumber:43 description:{@"Invalid parameter not satisfying: %@", @"toAppLayout"}];
}

@end