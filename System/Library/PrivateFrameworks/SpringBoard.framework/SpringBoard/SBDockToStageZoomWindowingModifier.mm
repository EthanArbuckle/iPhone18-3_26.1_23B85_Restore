@interface SBDockToStageZoomWindowingModifier
- (BOOL)_isEffectivelyHome;
- (BOOL)_isIndexZoomAppLayout:(unint64_t)layout;
- (BOOL)shouldInterruptForActivity:(id)activity;
- (BOOL)shouldPinLayoutRolesToSpace:(unint64_t)space;
- (BOOL)shouldScaleOverlayToFillBoundsAtIndex:(unint64_t)index;
- (BOOL)shouldUseAnchorPointToPinLayoutRolesToSpace:(unint64_t)space;
- (CGPoint)adjustedSpaceAccessoryViewAnchorPoint:(CGPoint)point forAppLayout:(id)layout;
- (CGPoint)anchorPointForIndex:(unint64_t)index;
- (CGPoint)perspectiveAngleForIndex:(unint64_t)index;
- (CGRect)_frameForZoomingIndex:(unint64_t)index isEffectivelyHome:(BOOL)home ignoringGenie:(BOOL)genie;
- (CGRect)_iconFrame;
- (CGRect)adjustedSpaceAccessoryViewFrame:(CGRect)frame forAppLayout:(id)layout;
- (CGRect)frameForIndex:(unint64_t)index;
- (CGRect)frameForLayoutRole:(int64_t)role inAppLayout:(id)layout withBounds:(CGRect)bounds;
- (CGRect)fullyPresentedFrameForIndex:(unint64_t)index frame:(CGRect)frame;
- (SBDockToStageZoomWindowingModifier)initWithAppLayout:(id)layout addingToStage:(BOOL)stage;
- (SBSwitcherAsyncRenderingAttributes)asyncRenderingAttributesForAppLayout:(id)layout;
- (SBSwitcherShelfPresentationAttributes)presentationAttributesForShelf:(SEL)shelf;
- (UIRectCornerRadii)cornerRadiiForIndex:(unint64_t)index;
- (double)_normalizedHomeScreenIconZoomPercentBetweenTopAndBottom:(CGPoint)bottom;
- (double)dockProgress;
- (double)fadeInDelayForSplitViewHandles;
- (double)opacityForLayoutRole:(int64_t)role inAppLayout:(id)layout atIndex:(unint64_t)index;
- (double)scaleForIndex:(unint64_t)index;
- (double)shadowOpacityForLayoutRole:(int64_t)role atIndex:(unint64_t)index;
- (id)_appLayoutForIcon;
- (id)_layoutSettings;
- (id)_layoutSettingsForTargetCenter:(CGPoint)center;
- (id)_settingsByInterpolatingBetween:(id)between and:(id)and progress:(double)progress;
- (id)adjustedAppLayoutsForAppLayouts:(id)layouts;
- (id)animationAttributesForLayoutElement:(id)element;
- (id)appLayoutsForContinuousExposeIdentifier:(id)identifier;
- (id)appLayoutsToCacheSnapshots;
- (id)genieAttributesForAppLayout:(id)layout;
- (id)keyboardSuppressionMode;
- (id)topMostLayoutElements;
- (id)visibleAppLayouts;
- (void)complete;
- (void)timerFired:(id)fired;
- (void)transitionDidComplete:(id)complete;
- (void)transitionWillBegin:(id)begin;
@end

@implementation SBDockToStageZoomWindowingModifier

- (SBDockToStageZoomWindowingModifier)initWithAppLayout:(id)layout addingToStage:(BOOL)stage
{
  layoutCopy = layout;
  v11.receiver = self;
  v11.super_class = SBDockToStageZoomWindowingModifier;
  v9 = [(SBWindowingModifier *)&v11 init];
  if (v9)
  {
    if (!layoutCopy)
    {
      [SBDockToStageZoomWindowingModifier initWithAppLayout:a2 addingToStage:v9];
    }

    objc_storeStrong(&v9->_appLayout, layout);
    v9->_isAddingToStage = stage;
    v9->_wantsResignActiveAndAsyncRenderingAssertions = 1;
  }

  return v9;
}

- (void)complete
{
  v2.receiver = self;
  v2.super_class = SBDockToStageZoomWindowingModifier;
  [(SBWindowingModifier *)&v2 complete];
}

- (CGRect)_iconFrame
{
  _appLayoutForIcon = [(SBDockToStageZoomWindowingModifier *)self _appLayoutForIcon];
  [(SBDockToStageZoomWindowingModifier *)self homeScreenIconFrameForAppLayout:_appLayoutForIcon];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = v5;
  v13 = v7;
  v14 = v9;
  v15 = v11;
  result.size.height = v15;
  result.size.width = v14;
  result.origin.y = v13;
  result.origin.x = v12;
  return result;
}

- (BOOL)shouldInterruptForActivity:(id)activity
{
  activityCopy = activity;
  v5 = activityCopy;
  if (self->_transitionID && [activityCopy isTransitionEvent])
  {
    transitionID = [v5 transitionID];
    if (BSEqualObjects())
    {
      isGestureEvent = [v5 isGestureEvent];
    }

    else
    {
      isGestureEvent = 1;
    }
  }

  else
  {
    isGestureEvent = [v5 isGestureEvent];
  }

  return isGestureEvent;
}

- (void)transitionWillBegin:(id)begin
{
  beginCopy = begin;
  transitionID = [beginCopy transitionID];
  transitionID = self->_transitionID;
  self->_transitionID = transitionID;

  v7 = objc_opt_new();
  [(SBWindowingModifier *)self appendResponse:v7];

  _appLayoutForIcon = [(SBDockToStageZoomWindowingModifier *)self _appLayoutForIcon];
  [(SBDockToStageZoomWindowingModifier *)self homeScreenIconCornerRadiusForAppLayout:_appLayoutForIcon];
  self->_iconCornerRadius = v9;
  [(SBDockToStageZoomWindowingModifier *)self homeScreenIconScaleForAppLayout:_appLayoutForIcon];
  self->_iconScale = v10;
  self->_itemContainerOverlapsDock = [(SBDockToStageZoomWindowingModifier *)self itemContainerForAppLayoutOverlapsFloatingDock:self->_appLayout];
  v11 = objc_opt_new();
  v12 = v11;
  if (self->_launchingOverDesktopSpaceAppLayout)
  {
    [v11 addObject:?];
    v13 = 14;
  }

  else
  {
    v13 = 8;
  }

  if (self->_isAddingToStage)
  {
    [v12 addObject:self->_appLayout];
    v13 = 14;
  }

  else
  {

    v12 = 0;
  }

  v14 = [[SBUpdateLayoutSwitcherEventResponse alloc] initWithOptions:v13 updateMode:2];
  [(SBUpdateLayoutSwitcherEventResponse *)v14 setAppLayouts:v12];
  v52 = v14;
  [(SBWindowingModifier *)self appendResponse:v14];
  if (self->_isAddingToStage)
  {
    isFloatingDockFullyPresented = 0;
  }

  else
  {
    isFloatingDockFullyPresented = [(SBDockToStageZoomWindowingModifier *)self isFloatingDockFullyPresented];
  }

  v16 = [[SBIconOverlayVisibilitySwitcherEventResponse alloc] initWithAppLayout:self->_appLayout visible:1];
  [(SBWindowingModifier *)self appendResponse:v16];

  switcherSettings = [(SBDockToStageZoomWindowingModifier *)self switcherSettings];
  animationSettings = [switcherSettings animationSettings];

  v53 = animationSettings;
  if (self->_isAddingToStage)
  {
    floatingDockIconFadeSettings = 0;
  }

  else
  {
    floatingDockIconFadeSettings = [animationSettings floatingDockIconFadeSettings];
  }

  v51 = floatingDockIconFadeSettings;
  v20 = [[SBIconViewVisibilitySwitcherEventResponse alloc] initWithAppLayout:_appLayoutForIcon visible:0 animationSettings:floatingDockIconFadeSettings excludedIconLocations:0];
  [(SBWindowingModifier *)self appendResponse:v20];
  self->_isHidingDockIcon = 1;
  if (isFloatingDockFullyPresented)
  {
    objc_initWeak(location, self);
    [v53 iconZoomFloatingDockFadeDelay];
    v22 = v21;
    v56[0] = MEMORY[0x277D85DD0];
    v56[1] = 3221225472;
    v56[2] = __58__SBDockToStageZoomWindowingModifier_transitionWillBegin___block_invoke;
    v56[3] = &unk_2783AD4A0;
    objc_copyWeak(&v57, location);
    [(SBChainableModifierEventResponse *)v20 setDelay:v56 withValidator:v22];
    objc_destroyWeak(&v57);
    objc_destroyWeak(location);
  }

  v49 = beginCopy;
  if (self->_isAddingToStage || (v23 = [[SBNotifyIconWillZoomDownSwitcherEventResponse alloc] initWithAppLayout:_appLayoutForIcon, beginCopy], [(SBWindowingModifier *)self appendResponse:v23], v23, self->_isAddingToStage))
  {
    v24 = [SBTimerEventSwitcherEventResponse alloc];
    floatingDockIconFadeSettings2 = [v53 floatingDockIconFadeSettings];
    [floatingDockIconFadeSettings2 response];
    v26 = [(SBTimerEventSwitcherEventResponse *)v24 initWithDelay:0 validator:@"kSBDockToStageIconFadeInDelay" reason:?];
    [(SBWindowingModifier *)self appendResponse:v26];
  }

  switcherSettings2 = [(SBDockToStageZoomWindowingModifier *)self switcherSettings];
  animationSettings2 = [switcherSettings2 animationSettings];
  [animationSettings2 disableAsyncRenderingTransitionPercentage];
  v30 = v29;

  _layoutSettings = [(SBDockToStageZoomWindowingModifier *)self _layoutSettings];
  [_layoutSettings settlingDuration];
  v33 = v32;
  UIAnimationDragCoefficient();
  v35 = v34;

  objc_initWeak(location, self);
  v36 = [SBTimerEventSwitcherEventResponse alloc];
  v54[0] = MEMORY[0x277D85DD0];
  v54[1] = 3221225472;
  v54[2] = __58__SBDockToStageZoomWindowingModifier_transitionWillBegin___block_invoke_2;
  v54[3] = &unk_2783AD4A0;
  objc_copyWeak(&v55, location);
  v37 = [(SBTimerEventSwitcherEventResponse *)v36 initWithDelay:v54 validator:@"kSBDockToStageZoomInvalidateAsyncRenderingReason" reason:v30 * v33 * v35];
  [(SBWindowingModifier *)self appendResponse:v37];
  if (self->_isAddingToStage)
  {
    windowingConfiguration = [(SBWindowingModifier *)self windowingConfiguration];
    v39 = [(SBWindowingModifier *)self flexibleAutoLayoutSpaceForAppLayout:self->_appLayout];
    v40 = [(SBAppLayout *)self->_appLayout itemForLayoutRole:1];
    v41 = [v39 flexibleAutoLayoutItemForDisplayItem:v40];

    [v41 frame];
    v43 = v42;
    v45 = v44;
    [(SBDockToStageZoomWindowingModifier *)self containerViewBounds];
    v47 = v46;
    [windowingConfiguration floatingDockHeightWithTopAndBottomPadding];
    self->_shouldDodgeDock = v43 + v45 > v47 - v48;
  }

  objc_destroyWeak(&v55);
  objc_destroyWeak(location);
}

BOOL __58__SBDockToStageZoomWindowingModifier_transitionWillBegin___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained parentModifier];
  v3 = v2 != 0;

  return v3;
}

BOOL __58__SBDockToStageZoomWindowingModifier_transitionWillBegin___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained parentModifier];
  v3 = v2 != 0;

  return v3;
}

- (void)transitionDidComplete:(id)complete
{
  _appLayoutForIcon = [(SBDockToStageZoomWindowingModifier *)self _appLayoutForIcon];
  v4 = [[SBIconOverlayVisibilitySwitcherEventResponse alloc] initWithAppLayout:self->_appLayout visible:0];
  [(SBWindowingModifier *)self appendResponse:v4];

  if (self->_isHidingDockIcon)
  {
    self->_isHidingDockIcon = 0;
    if (self->_isAddingToStage)
    {
      switcherSettings = [(SBDockToStageZoomWindowingModifier *)self switcherSettings];
      animationSettings = [switcherSettings animationSettings];
      floatingDockIconFadeSettings = [animationSettings floatingDockIconFadeSettings];
    }

    else
    {
      floatingDockIconFadeSettings = 0;
    }

    v8 = [[SBIconViewVisibilitySwitcherEventResponse alloc] initWithAppLayout:_appLayoutForIcon visible:1 animationSettings:floatingDockIconFadeSettings excludedIconLocations:0];
    [(SBWindowingModifier *)self appendResponse:v8];
  }

  [(SBDockToStageZoomWindowingModifier *)self complete];
}

- (void)timerFired:(id)fired
{
  reason = [fired reason];
  if ([reason isEqualToString:@"kSBDockToStageIconFadeInDelay"])
  {
    if (self->_isHidingDockIcon)
    {
      self->_isHidingDockIcon = 0;
      switcherSettings = [(SBDockToStageZoomWindowingModifier *)self switcherSettings];
      animationSettings = [switcherSettings animationSettings];
      floatingDockIconFadeSettings = [animationSettings floatingDockIconFadeSettings];

      v7 = [SBIconViewVisibilitySwitcherEventResponse alloc];
      _appLayoutForIcon = [(SBDockToStageZoomWindowingModifier *)self _appLayoutForIcon];
      v9 = [(SBIconViewVisibilitySwitcherEventResponse *)v7 initWithAppLayout:_appLayoutForIcon visible:1 animationSettings:floatingDockIconFadeSettings excludedIconLocations:0];

      [(SBWindowingModifier *)self appendResponse:v9];
    }
  }

  else if ([reason isEqualToString:@"kSBDockToStageZoomInvalidateAsyncRenderingReason"])
  {
    self->_wantsResignActiveAndAsyncRenderingAssertions = 0;
  }
}

- (id)appLayoutsForContinuousExposeIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v13.receiver = self;
  v13.super_class = SBDockToStageZoomWindowingModifier;
  v5 = [(SBDockToStageZoomWindowingModifier *)&v13 appLayoutsForContinuousExposeIdentifier:identifierCopy];
  windowManagementContext = [(SBDockToStageZoomWindowingModifier *)self windowManagementContext];
  if ([windowManagementContext isChamoisOrFlexibleWindowing])
  {
    continuousExposeIdentifier = [(SBAppLayout *)self->_appLayout continuousExposeIdentifier];
    v8 = BSEqualStrings();

    if (v8)
    {
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = __78__SBDockToStageZoomWindowingModifier_appLayoutsForContinuousExposeIdentifier___block_invoke;
      v12[3] = &unk_2783A8CB8;
      v12[4] = self;
      v9 = [v5 bs_filter:v12];
      goto LABEL_6;
    }
  }

  else
  {
  }

  v9 = v5;
LABEL_6:
  v10 = v9;

  return v10;
}

uint64_t __78__SBDockToStageZoomWindowingModifier_appLayoutsForContinuousExposeIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(*(a1 + 32) + 184) isOrContainsAppLayout:v3])
  {
    v4 = 0;
  }

  else
  {
    v4 = [v3 isOrContainsAppLayout:*(*(a1 + 32) + 184)] ^ 1;
  }

  return v4;
}

- (id)adjustedAppLayoutsForAppLayouts:(id)layouts
{
  v52 = *MEMORY[0x277D85DE8];
  layoutsCopy = layouts;
  v49.receiver = self;
  v49.super_class = SBDockToStageZoomWindowingModifier;
  v5 = [(SBDockToStageZoomWindowingModifier *)&v49 adjustedAppLayoutsForAppLayouts:layoutsCopy];
  leafAppLayouts = [(SBAppLayout *)self->_appLayout leafAppLayouts];
  v7 = leafAppLayouts;
  v8 = 216;
  if (self->_launchingOverDesktopSpaceAppLayout)
  {
    v9 = [leafAppLayouts arrayByAddingObject:?];

    v7 = v9;
  }

  if ([v7 count])
  {
    v33 = layoutsCopy;
    v32 = v5;
    v5 = [objc_alloc(MEMORY[0x277CBEB18]) initWithArray:v5];
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    v31 = v7;
    v10 = v7;
    v11 = [v10 countByEnumeratingWithState:&v45 objects:v51 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v46;
      selfCopy = self;
      v36 = v10;
      v34 = *v46;
      do
      {
        v14 = 0;
        v37 = v12;
        do
        {
          if (*v46 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v45 + 1) + 8 * v14);
          if (([v5 containsObject:{v15, v31}] & 1) == 0)
          {
            if ([*(&self->super.super.super.super.isa + v8) isEqual:v15])
            {
              if (*(&self->super.super.super.super.isa + v8))
              {
                v39[0] = MEMORY[0x277D85DD0];
                v39[1] = 3221225472;
                v39[2] = __70__SBDockToStageZoomWindowingModifier_adjustedAppLayoutsForAppLayouts___block_invoke_2;
                v39[3] = &unk_2783AE218;
                v39[4] = self;
                v16 = [v5 bs_compactMap:v39];
                v17 = v8;
                selfCopy2 = self;
                v19 = v14;
                v20 = [v16 mutableCopy];

                v5 = v20;
                v14 = v19;
                self = selfCopy2;
                v8 = v17;
                v10 = v36;
                v12 = v37;
              }
            }

            else
            {
              v38 = v14;
              v43 = 0u;
              v44 = 0u;
              v41 = 0u;
              v42 = 0u;
              v21 = [v5 copy];
              v22 = [v21 countByEnumeratingWithState:&v41 objects:v50 count:16];
              if (v22)
              {
                v23 = v22;
                v24 = *v42;
                do
                {
                  for (i = 0; i != v23; ++i)
                  {
                    if (*v42 != v24)
                    {
                      objc_enumerationMutation(v21);
                    }

                    v26 = *(*(&v41 + 1) + 8 * i);
                    if ([v26 containsAnyItemFromAppLayout:v15])
                    {
                      v27 = [v5 indexOfObject:v26];
                      if (v27 != 0x7FFFFFFFFFFFFFFFLL)
                      {
                        v28 = v27;
                        [v5 removeObjectAtIndex:v27];
                        v40[0] = MEMORY[0x277D85DD0];
                        v40[1] = 3221225472;
                        v40[2] = __70__SBDockToStageZoomWindowingModifier_adjustedAppLayoutsForAppLayouts___block_invoke;
                        v40[3] = &unk_2783A8C90;
                        v40[4] = v15;
                        v29 = [v26 appLayoutWithItemsPassingTest:v40];
                        if (v29)
                        {
                          [v5 insertObject:v29 atIndex:v28];
                        }
                      }
                    }
                  }

                  v23 = [v21 countByEnumeratingWithState:&v41 objects:v50 count:16];
                }

                while (v23);
              }

              v8 = 216;
              self = selfCopy;
              v10 = v36;
              v12 = v37;
              v13 = v34;
              v14 = v38;
            }

            [v5 insertObject:v15 atIndex:0];
          }

          ++v14;
        }

        while (v14 != v12);
        v12 = [v10 countByEnumeratingWithState:&v45 objects:v51 count:16];
      }

      while (v12);
    }

    layoutsCopy = v33;
    v7 = v31;
  }

  return v5;
}

uint64_t __70__SBDockToStageZoomWindowingModifier_adjustedAppLayoutsForAppLayouts___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 allItems];
  v5 = [v4 containsObject:v3];

  return v5 ^ 1u;
}

id __70__SBDockToStageZoomWindowingModifier_adjustedAppLayoutsForAppLayouts___block_invoke_2(uint64_t a1, void *a2)
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __70__SBDockToStageZoomWindowingModifier_adjustedAppLayoutsForAppLayouts___block_invoke_3;
  v4[3] = &unk_2783A8C90;
  v4[4] = *(a1 + 32);
  v2 = [a2 appLayoutWithItemsPassingTest:v4];

  return v2;
}

- (CGRect)frameForIndex:(unint64_t)index
{
  v29.receiver = self;
  v29.super_class = SBDockToStageZoomWindowingModifier;
  [(SBWindowingModifier *)&v29 frameForIndex:?];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  appLayouts = [(SBDockToStageZoomWindowingModifier *)self appLayouts];
  v14 = [appLayouts objectAtIndex:index];

  _isEffectivelyHome = [(SBDockToStageZoomWindowingModifier *)self _isEffectivelyHome];
  if ([(SBDockToStageZoomWindowingModifier *)self _isIndexZoomAppLayout:index])
  {
    [(SBDockToStageZoomWindowingModifier *)self _frameForZoomingIndex:index isEffectivelyHome:_isEffectivelyHome ignoringGenie:0];
    v6 = v16;
    v8 = v17;
    v10 = v18;
    v12 = v19;
  }

  else if ([(SBAppLayout *)self->_launchingOverDesktopSpaceAppLayout isEqual:v14])
  {
    v20 = [(SBWindowingModifier *)self flexibleAutoLayoutSpaceForAppLayout:self->_launchingOverDesktopSpaceAppLayout];
    [v20 boundingBox];
    v6 = v21;
    v8 = v22;
    v10 = v23;
    v12 = v24;
  }

  v25 = v6;
  v26 = v8;
  v27 = v10;
  v28 = v12;
  result.size.height = v28;
  result.size.width = v27;
  result.origin.y = v26;
  result.origin.x = v25;
  return result;
}

- (CGRect)_frameForZoomingIndex:(unint64_t)index isEffectivelyHome:(BOOL)home ignoringGenie:(BOOL)genie
{
  homeCopy = home;
  v34.receiver = self;
  v34.super_class = SBDockToStageZoomWindowingModifier;
  [(SBWindowingModifier *)&v34 frameForIndex:index, home, genie];
  v9 = v8;
  v11 = v10;
  v33.receiver = self;
  v33.super_class = SBDockToStageZoomWindowingModifier;
  [(SBWindowingModifier *)&v33 frameForIndex:index];
  if (self->_isAddingToStage)
  {
    transitioningToAppLayout = [(SBWindowingModifier *)self transitioningToAppLayout];
    v13 = [(SBAppLayout *)self->_appLayout itemForLayoutRole:1];
    v14 = [transitioningToAppLayout layoutRoleForItem:v13];

    SBRectWithSize();
    [(SBDockToStageZoomWindowingModifier *)&v32 frameForLayoutRole:v14 inAppLayout:transitioningToAppLayout withBounds:v31.receiver, v31.super_class, self, SBDockToStageZoomWindowingModifier];
  }

  else
  {
    transitioningToAppLayout = [(SBWindowingModifier *)self transitioningFromAppLayout];
    v19 = [(SBAppLayout *)self->_appLayout itemForLayoutRole:1];
    v20 = [transitioningToAppLayout layoutRoleForItem:v19];

    SBRectWithSize();
    [(SBDockToStageZoomWindowingModifier *)&v31 frameForLayoutRole:v20 inAppLayout:transitioningToAppLayout withBounds:self, SBDockToStageZoomWindowingModifier, v32.receiver, v32.super_class];
  }

  v21 = v15;
  v22 = v16;
  v23 = v17;
  v24 = v18;

  if (homeCopy)
  {
    [(SBDockToStageZoomWindowingModifier *)self _iconFrame];
    BSFloatGreaterThanFloat();
    UIRectGetCenter();
    SBRectWithSize();
    SBUnintegralizedRectCenteredAboutPoint();
    v23 = v27;
    v24 = v28;
  }

  else
  {
    v25 = v9 + v21;
    v26 = v11 + v22;
  }

  v29 = v23;
  v30 = v24;
  result.size.height = v30;
  result.size.width = v29;
  result.origin.y = v26;
  result.origin.x = v25;
  return result;
}

- (CGPoint)anchorPointForIndex:(unint64_t)index
{
  v5 = [(SBDockToStageZoomWindowingModifier *)self _isIndexZoomAppLayout:?];
  v6 = 0.5;
  v7 = 0.5;
  if (!v5)
  {
    v8.receiver = self;
    v8.super_class = SBDockToStageZoomWindowingModifier;
    [(SBWindowingModifier *)&v8 anchorPointForIndex:index, 0.5, 0.5];
  }

  result.y = v7;
  result.x = v6;
  return result;
}

- (BOOL)shouldPinLayoutRolesToSpace:(unint64_t)space
{
  if ([(SBDockToStageZoomWindowingModifier *)self _isIndexZoomAppLayout:?])
  {
    return 0;
  }

  v6.receiver = self;
  v6.super_class = SBDockToStageZoomWindowingModifier;
  return [(SBDockToStageZoomWindowingModifier *)&v6 shouldPinLayoutRolesToSpace:space];
}

- (BOOL)shouldUseAnchorPointToPinLayoutRolesToSpace:(unint64_t)space
{
  if ([(SBDockToStageZoomWindowingModifier *)self _isIndexZoomAppLayout:?])
  {
    return 0;
  }

  v6.receiver = self;
  v6.super_class = SBDockToStageZoomWindowingModifier;
  return [(SBDockToStageZoomWindowingModifier *)&v6 shouldUseAnchorPointToPinLayoutRolesToSpace:space];
}

- (CGPoint)perspectiveAngleForIndex:(unint64_t)index
{
  appLayouts = [(SBDockToStageZoomWindowingModifier *)self appLayouts];
  v6 = [appLayouts objectAtIndex:index];

  if ([v6 isEqual:self->_appLayout])
  {
    v7 = *MEMORY[0x277CBF348];
    v8 = *(MEMORY[0x277CBF348] + 8);
  }

  else
  {
    v13.receiver = self;
    v13.super_class = SBDockToStageZoomWindowingModifier;
    [(SBWindowingModifier *)&v13 perspectiveAngleForIndex:index];
    v7 = v9;
    v8 = v10;
  }

  v11 = v7;
  v12 = v8;
  result.y = v12;
  result.x = v11;
  return result;
}

- (CGRect)adjustedSpaceAccessoryViewFrame:(CGRect)frame forAppLayout:(id)layout
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  layoutCopy = layout;
  if ([layoutCopy isEqual:self->_appLayout])
  {
    appLayouts = [(SBDockToStageZoomWindowingModifier *)self appLayouts];
    -[SBDockToStageZoomWindowingModifier frameForIndex:](self, "frameForIndex:", [appLayouts indexOfObject:self->_appLayout]);
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v18 = v17;
  }

  else
  {
    v27.receiver = self;
    v27.super_class = SBDockToStageZoomWindowingModifier;
    [(SBWindowingModifier *)&v27 adjustedSpaceAccessoryViewFrame:layoutCopy forAppLayout:x, y, width, height];
    v12 = v19;
    v14 = v20;
    v16 = v21;
    v18 = v22;
  }

  v23 = v12;
  v24 = v14;
  v25 = v16;
  v26 = v18;
  result.size.height = v26;
  result.size.width = v25;
  result.origin.y = v24;
  result.origin.x = v23;
  return result;
}

- (CGPoint)adjustedSpaceAccessoryViewAnchorPoint:(CGPoint)point forAppLayout:(id)layout
{
  y = point.y;
  x = point.x;
  layoutCopy = layout;
  v8 = 0.5;
  v9 = 0.5;
  if (([layoutCopy isEqual:self->_appLayout] & 1) == 0)
  {
    v14.receiver = self;
    v14.super_class = SBDockToStageZoomWindowingModifier;
    [(SBWindowingModifier *)&v14 adjustedSpaceAccessoryViewAnchorPoint:layoutCopy forAppLayout:x, y];
    v8 = v10;
    v9 = v11;
  }

  v12 = v8;
  v13 = v9;
  result.y = v13;
  result.x = v12;
  return result;
}

- (CGRect)fullyPresentedFrameForIndex:(unint64_t)index frame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  if ([(SBDockToStageZoomWindowingModifier *)self _isEffectivelyHome]&& [(SBDockToStageZoomWindowingModifier *)self _isIndexZoomAppLayout:index])
  {
    if (self->_isAddingToStage)
    {
      [(SBWindowingModifier *)self transitioningToAppLayout];
    }

    else
    {
      [(SBWindowingModifier *)self transitioningFromAppLayout];
    }
    v18 = ;
    v19 = [(SBAppLayout *)self->_appLayout itemForLayoutRole:1];
    v20 = [v18 layoutRoleForItem:v19];

    displayItemLayoutAttributesCalculator = [(SBDockToStageZoomWindowingModifier *)self displayItemLayoutAttributesCalculator];
    [(SBDockToStageZoomWindowingModifier *)self containerViewBounds];
    v57 = v23;
    v58 = v22;
    v25 = v24;
    v27 = v26;
    switcherInterfaceOrientation = [(SBDockToStageZoomWindowingModifier *)self switcherInterfaceOrientation];
    [(SBDockToStageZoomWindowingModifier *)self floatingDockHeight];
    v30 = v29;
    [(SBDockToStageZoomWindowingModifier *)self screenScale];
    v32 = v31;
    isDisplayEmbedded = [(SBDockToStageZoomWindowingModifier *)self isDisplayEmbedded];
    prefersStripHidden = [(SBDockToStageZoomWindowingModifier *)self prefersStripHidden];
    prefersDockHidden = [(SBDockToStageZoomWindowingModifier *)self prefersDockHidden];
    [(SBDockToStageZoomWindowingModifier *)self leftStatusBarPartIntersectionRegion];
    v37 = v36;
    v39 = v38;
    v41 = v40;
    v43 = v42;
    [(SBDockToStageZoomWindowingModifier *)self rightStatusBarPartIntersectionRegion];
    LOBYTE(v56) = prefersDockHidden;
    [displayItemLayoutAttributesCalculator frameForLayoutRole:v20 inAppLayout:v18 containerBounds:switcherInterfaceOrientation containerOrientation:1 floatingDockHeight:isDisplayEmbedded screenScale:prefersStripHidden isChamoisWindowingUIEnabled:v58 isEmbeddedDisplay:v57 prefersStripHidden:v25 prefersDockHidden:v27 leftStatusBarPartIntersectionRegion:v30 rightStatusBarPartIntersectionRegion:{v32, v56, v37, v39, v41, v43, v44, v45, v46, v47}];
    v11 = v48;
    v13 = v49;
    v15 = v50;
    v17 = v51;
  }

  else
  {
    v59.receiver = self;
    v59.super_class = SBDockToStageZoomWindowingModifier;
    [(SBDockToStageZoomWindowingModifier *)&v59 fullyPresentedFrameForIndex:index frame:x, y, width, height];
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v17 = v16;
  }

  v52 = v11;
  v53 = v13;
  v54 = v15;
  v55 = v17;
  result.size.height = v55;
  result.size.width = v54;
  result.origin.y = v53;
  result.origin.x = v52;
  return result;
}

- (SBSwitcherShelfPresentationAttributes)presentationAttributesForShelf:(SEL)shelf
{
  retstr->var3 = 0;
  *&retstr->var1.origin.y = 0u;
  *&retstr->var1.size.height = 0u;
  *&retstr->var0 = 0u;
  v6.receiver = self;
  v6.super_class = SBDockToStageZoomWindowingModifier;
  result = [(SBSwitcherShelfPresentationAttributes *)&v6 presentationAttributesForShelf:a4];
  retstr->var0 = 0;
  return result;
}

- (double)scaleForIndex:(unint64_t)index
{
  if ([(SBDockToStageZoomWindowingModifier *)self _isEffectivelyHome]&& [(SBDockToStageZoomWindowingModifier *)self _isIndexZoomAppLayout:index])
  {
    v18.receiver = self;
    v18.super_class = SBDockToStageZoomWindowingModifier;
    [(SBWindowingModifier *)&v18 frameForIndex:index];
    v6 = v5;
    v8 = v7;
    [(SBDockToStageZoomWindowingModifier *)self _iconFrame];
    v10 = v9;
    v12 = v11;
    v13 = BSFloatGreaterThanFloat();
    if (v6 <= v8)
    {
      v14 = v6;
    }

    else
    {
      v14 = v8;
    }

    if (v13)
    {
      v14 = v6;
    }

    if (v10 >= v12)
    {
      v15 = v10;
    }

    else
    {
      v15 = v12;
    }

    return v15 / v14;
  }

  else
  {
    v17.receiver = self;
    v17.super_class = SBDockToStageZoomWindowingModifier;
    [(SBWindowingModifier *)&v17 scaleForIndex:index];
  }

  return result;
}

- (id)visibleAppLayouts
{
  v6.receiver = self;
  v6.super_class = SBDockToStageZoomWindowingModifier;
  visibleAppLayouts = [(SBWindowingModifier *)&v6 visibleAppLayouts];
  v4 = [visibleAppLayouts setByAddingObject:self->_appLayout];

  return v4;
}

- (double)fadeInDelayForSplitViewHandles
{
  switcherSettings = [(SBDockToStageZoomWindowingModifier *)self switcherSettings];
  windowingSettings = [switcherSettings windowingSettings];
  [windowingSettings percentageOfTransitionForSplitViewHandleFadeInDelay];
  v5 = v4;
  animationSettings = [switcherSettings animationSettings];
  layoutSettings = [animationSettings layoutSettings];
  [layoutSettings settlingDuration];
  v9 = v5 * v8;

  return v9;
}

- (id)animationAttributesForLayoutElement:(id)element
{
  v8.receiver = self;
  v8.super_class = SBDockToStageZoomWindowingModifier;
  v4 = [(SBWindowingModifier *)&v8 animationAttributesForLayoutElement:element];
  v5 = [v4 mutableCopy];

  _layoutSettings = [(SBDockToStageZoomWindowingModifier *)self _layoutSettings];
  [v5 setLayoutSettings:_layoutSettings];

  [v5 setUpdateMode:3];

  return v5;
}

- (id)_layoutSettings
{
  [(SBDockToStageZoomWindowingModifier *)self _iconFrame];
  if (CGRectIsNull(v5))
  {
    [(SBDockToStageZoomWindowingModifier *)self containerViewBounds];
  }

  UIRectGetCenter();

  return [(SBDockToStageZoomWindowingModifier *)self _layoutSettingsForTargetCenter:?];
}

- (id)_layoutSettingsForTargetCenter:(CGPoint)center
{
  y = center.y;
  x = center.x;
  switcherSettings = [(SBDockToStageZoomWindowingModifier *)self switcherSettings];
  animationSettings = [switcherSettings animationSettings];

  if (self->_isAddingToStage)
  {
    v8 = [(SBDockToStageZoomWindowingModifier *)self maximizedCenteredAndUnoccludedDisplayItemsInAppLayout:self->_appLayout ignoreOcclusion:1 ignoreCentering:0];
    v9 = [(SBAppLayout *)self->_appLayout itemForLayoutRole:1];
    v10 = [v8 containsObject:v9];

    if (v10)
    {
      genieFullScreenCenterRowZoomUpSettings = [animationSettings genieFullScreenCenterRowZoomUpSettings];
      genieFullScreenEdgeRowZoomUpSettings = [animationSettings genieFullScreenEdgeRowZoomUpSettings];
      [(SBDockToStageZoomWindowingModifier *)self _normalizedHomeScreenTargetZoomPercentBetweenCenterAndEdge:x, y];
      v13 = [(SBDockToStageZoomWindowingModifier *)self _settingsByInterpolatingBetween:genieFullScreenCenterRowZoomUpSettings and:genieFullScreenEdgeRowZoomUpSettings progress:?];

      goto LABEL_7;
    }

    genieWindowedZoomUpSettings = [animationSettings genieWindowedZoomUpSettings];
  }

  else
  {
    genieWindowedZoomUpSettings = [animationSettings iconZoomDownSettings];
  }

  v13 = genieWindowedZoomUpSettings;
LABEL_7:

  return v13;
}

- (CGRect)frameForLayoutRole:(int64_t)role inAppLayout:(id)layout withBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  v25.receiver = self;
  v25.super_class = SBDockToStageZoomWindowingModifier;
  layoutCopy = layout;
  [(SBDockToStageZoomWindowingModifier *)&v25 frameForLayoutRole:role inAppLayout:layoutCopy withBounds:x, y, width, height];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  LODWORD(role) = [(SBAppLayout *)self->_appLayout isEqual:layoutCopy, v25.receiver, v25.super_class];

  if (role)
  {
    _isEffectivelyHome = [(SBDockToStageZoomWindowingModifier *)self _isEffectivelyHome];
    v13 = *MEMORY[0x277CBF348];
    v15 = *(MEMORY[0x277CBF348] + 8);
    if (_isEffectivelyHome)
    {
      if (v17 > width)
      {
        v17 = width;
      }

      if (v19 > height)
      {
        v19 = height;
      }
    }
  }

  v21 = v13;
  v22 = v15;
  v23 = v17;
  v24 = v19;
  result.size.height = v24;
  result.size.width = v23;
  result.origin.y = v22;
  result.origin.x = v21;
  return result;
}

- (id)genieAttributesForAppLayout:(id)layout
{
  layoutCopy = layout;
  if ([(SBAppLayout *)self->_appLayout isEqual:layoutCopy])
  {
    v57 = 0;
    v55 = 0u;
    v56 = 0u;
    v5 = [(SBAppLayout *)self->_appLayout itemForLayoutRole:1];
    v6 = [(SBWindowingModifier *)self flexibleAutoLayoutSpaceForAppLayout:layoutCopy];
    v7 = [v6 flexibleAutoLayoutItemForDisplayItem:v5];
    [(SBDockToStageZoomWindowingModifier *)self _iconFrame];
    v9 = v8;
    v11 = v10;
    UIRectGetCenter();
    v50 = v13;
    v51 = v12;
    [v7 position];
    v48 = v15;
    v49 = v14;
    v16 = MEMORY[0x277CBF348];
    [v7 size];
    v18 = v17;
    v20 = v19;
    appLayouts = [(SBDockToStageZoomWindowingModifier *)self appLayouts];
    -[SBDockToStageZoomWindowingModifier _frameForZoomingIndex:isEffectivelyHome:ignoringGenie:](self, "_frameForZoomingIndex:isEffectivelyHome:ignoringGenie:", [appLayouts indexOfObject:layoutCopy], 1, 1);
    v46 = v23;
    v47 = v22;

    [(SBDockToStageZoomWindowingModifier *)self containerViewBounds];
    v44 = v25;
    v45 = v24;
    if (v9 / v18 >= v11 / v20)
    {
      v26 = v9 / v18;
    }

    else
    {
      v26 = v11 / v20;
    }

    v27 = v26 + v26;
    [(SBDockToStageZoomWindowingModifier *)self homeScreenIconBadgeSizeForAppLayout:self->_appLayout];
    v30 = *MEMORY[0x277CBF3A8];
    if (v28 != *MEMORY[0x277CBF3A8] || (v31 = *(MEMORY[0x277CBF3A8] + 8), v29 != v31))
    {
      v32 = v28 / v27 + v28 / v27;
      v33 = v29 / v27 + v29 / v27;
      [(SBDockToStageZoomWindowingModifier *)self homeScreenIconBadgeOffsetForAppLayout:self->_appLayout];
      v30 = v32 + v34;
      v31 = v33 + v35;
    }

    v36 = *v16;
    v37 = v16[1];
    v38 = v26 / v27;
    _isEffectivelyHome = [(SBDockToStageZoomWindowingModifier *)self _isEffectivelyHome];
    if (self->_isAddingToStage)
    {
      v40 = SBSwitcherGenieGlassHighlightNone(&v55);
    }

    else
    {
      [(SBDockToStageZoomWindowingModifier *)self homeScreenGlassHighlightForAppLayout:self->_appLayout];
    }

    _layoutSettings = [(SBDockToStageZoomWindowingModifier *)self _layoutSettings];
    v53[0] = v55;
    v53[1] = v56;
    v54 = v57;
    0x3FE0000000000000 = [SBSwitcherGenieAttributes genieAttributesForIconPosition:_isEffectivelyHome windowPosition:v53 initialVelocity:_layoutSettings windowSize:v51 minimizedSize:v50 minimizedScale:v49 containerSize:v48 minimumOutsetSize:v36 genieScale:v37 multiplier:v18 active:v20 glassHighlight:v47 layoutSettings:v46, *&v27, v45, v44, *&v30, *&v31, *&v38, 0x3FE0000000000000, 0x3FE0000000000000];
  }

  else
  {
    v52.receiver = self;
    v52.super_class = SBDockToStageZoomWindowingModifier;
    0x3FE0000000000000 = [(SBDockToStageZoomWindowingModifier *)&v52 genieAttributesForAppLayout:layoutCopy];
  }

  return 0x3FE0000000000000;
}

- (UIRectCornerRadii)cornerRadiiForIndex:(unint64_t)index
{
  if ([(SBDockToStageZoomWindowingModifier *)self _isIndexZoomAppLayout:?]&& [(SBDockToStageZoomWindowingModifier *)self _isEffectivelyHome])
  {
    [(SBDockToStageZoomWindowingModifier *)self scaleForIndex:index];

    SBRectCornerRadiiForRadius();
  }

  else
  {
    v9.receiver = self;
    v9.super_class = SBDockToStageZoomWindowingModifier;
    [(SBWindowingModifier *)&v9 cornerRadiiForIndex:index];
  }

  result.topRight = v8;
  result.bottomRight = v7;
  result.bottomLeft = v6;
  result.topLeft = v5;
  return result;
}

- (BOOL)shouldScaleOverlayToFillBoundsAtIndex:(unint64_t)index
{
  result = 0;
  if ([(SBDockToStageZoomWindowingModifier *)self isDevicePad])
  {
    v6.receiver = self;
    v6.super_class = SBDockToStageZoomWindowingModifier;
    [(SBWindowingModifier *)&v6 frameForIndex:index];
    SBRectWithSize();
    [(SBDockToStageZoomWindowingModifier *)self _iconFrame];
    if (BSFloatLessThanFloat())
    {
      return 1;
    }
  }

  return result;
}

- (double)opacityForLayoutRole:(int64_t)role inAppLayout:(id)layout atIndex:(unint64_t)index
{
  layoutCopy = layout;
  v9 = [layoutCopy itemForLayoutRole:role];
  v10 = 1.0;
  if (![(SBDockToStageZoomWindowingModifier *)self _isIndexZoomAppLayout:index])
  {
    desktopSpaceDisplayItems = [(SBDockToStageZoomWindowingModifier *)self desktopSpaceDisplayItems];
    if ([desktopSpaceDisplayItems containsObject:v9])
    {
LABEL_5:

      goto LABEL_6;
    }

    transitioningToAppLayout = [(SBWindowingModifier *)self transitioningToAppLayout];
    if ([transitioningToAppLayout containsItem:v9])
    {

      goto LABEL_5;
    }

    transitioningFromAppLayout = [(SBWindowingModifier *)self transitioningFromAppLayout];
    v15 = [transitioningFromAppLayout containsItem:v9];

    if ((v15 & 1) == 0)
    {
      peekingAppLayout = [(SBDockToStageZoomWindowingModifier *)self peekingAppLayout];
      if ([peekingAppLayout containsItem:v9])
      {
      }

      else
      {
        strip = [(SBDockToStageZoomWindowingModifier *)self strip];
        v18 = [strip containsDisplayItem:v9];

        v10 = 0.0;
        if (!v18)
        {
          goto LABEL_6;
        }
      }

      v20.receiver = self;
      v20.super_class = SBDockToStageZoomWindowingModifier;
      [(SBWindowingModifier *)&v20 opacityForLayoutRole:role inAppLayout:layoutCopy atIndex:index];
      v10 = v19;
    }
  }

LABEL_6:

  return v10;
}

- (double)shadowOpacityForLayoutRole:(int64_t)role atIndex:(unint64_t)index
{
  if (![(SBDockToStageZoomWindowingModifier *)self _isIndexZoomAppLayout:index]|| ![(SBDockToStageZoomWindowingModifier *)self _isEffectivelyHome]|| (result = 0.0, !self->_isAddingToStage))
  {
    v8.receiver = self;
    v8.super_class = SBDockToStageZoomWindowingModifier;
    [(SBWindowingModifier *)&v8 shadowOpacityForLayoutRole:role atIndex:index, result];
  }

  return result;
}

- (id)appLayoutsToCacheSnapshots
{
  switcherSettings = [(SBDockToStageZoomWindowingModifier *)self switcherSettings];
  numberOfSnapshotsToAlwaysKeepAround = [switcherSettings numberOfSnapshotsToAlwaysKeepAround];

  appLayouts = [(SBDockToStageZoomWindowingModifier *)self appLayouts];
  v11.length = [appLayouts count];
  v10.location = 0;
  v10.length = numberOfSnapshotsToAlwaysKeepAround;
  v11.location = 0;
  v6 = NSIntersectionRange(v10, v11);
  v7 = [appLayouts subarrayWithRange:{v6.location, v6.length}];

  return v7;
}

- (id)topMostLayoutElements
{
  v18.receiver = self;
  v18.super_class = SBDockToStageZoomWindowingModifier;
  topMostLayoutElements = [(SBWindowingModifier *)&v18 topMostLayoutElements];
  v17.receiver = self;
  v17.super_class = SBDockToStageZoomWindowingModifier;
  dockPortalViewLayoutElement = [(SBDockToStageZoomWindowingModifier *)&v17 dockPortalViewLayoutElement];
  if (dockPortalViewLayoutElement)
  {
    v5 = [topMostLayoutElements sb_arrayByInsertingOrMovingObject:dockPortalViewLayoutElement toIndex:0];

    topMostLayoutElements = v5;
  }

  v6 = [topMostLayoutElements sb_arrayByInsertingOrMovingObject:self->_appLayout toIndex:0];

  visibleSplitViewHandleNubViews = [(SBDockToStageZoomWindowingModifier *)self visibleSplitViewHandleNubViews];
  v8 = [visibleSplitViewHandleNubViews count];

  if (v8)
  {
    v9 = [v6 bs_filter:&__block_literal_global_396];
    v10 = [v9 arrayByAddingObjectsFromArray:v6];

    v6 = v10;
  }

  displayItemInSlideOver = [(SBDockToStageZoomWindowingModifier *)self displayItemInSlideOver];
  appLayout = [(SBDockToStageZoomWindowingModifier *)self appLayout];
  v13 = appLayout;
  if (displayItemInSlideOver && [appLayout containsItem:displayItemInSlideOver])
  {
    v14 = [v13 leafAppLayoutForItem:displayItemInSlideOver];
    v15 = [v6 sb_arrayByInsertingOrMovingObject:v14 toIndex:0];

    v6 = v15;
  }

  return v6;
}

- (double)dockProgress
{
  result = 1.0;
  if (self->_shouldDodgeDock)
  {
    return 0.0;
  }

  return result;
}

- (SBSwitcherAsyncRenderingAttributes)asyncRenderingAttributesForAppLayout:(id)layout
{
  v4.receiver = self;
  v4.super_class = SBDockToStageZoomWindowingModifier;
  return ([(SBDockToStageZoomWindowingModifier *)&v4 asyncRenderingAttributesForAppLayout:layout]& 0xFF01 | self->_wantsResignActiveAndAsyncRenderingAssertions);
}

- (id)keyboardSuppressionMode
{
  if (self->_wantsResignActiveAndAsyncRenderingAssertions)
  {
    keyboardSuppressionMode = +[SBSwitcherKeyboardSuppressionMode suppressionModeForAllScenes];
  }

  else
  {
    v4.receiver = self;
    v4.super_class = SBDockToStageZoomWindowingModifier;
    keyboardSuppressionMode = [(SBDockToStageZoomWindowingModifier *)&v4 keyboardSuppressionMode];
  }

  return keyboardSuppressionMode;
}

- (id)_appLayoutForIcon
{
  [(SBDockToStageZoomWindowingModifier *)self homeScreenIconFrameForAppLayout:self->_appLayout];
  if (CGRectIsNull(v8) || ([(SBDockToStageZoomWindowingModifier *)self homeScreenIconLocationForAppLayout:self->_appLayout], v3 = objc_claimAutoreleasedReturnValue(), v4 = *MEMORY[0x277D66690], v3, v3 != v4))
  {
    v5 = +[SBAppLayout appLibraryAppLayout];
    [(SBDockToStageZoomWindowingModifier *)self homeScreenIconFrameForAppLayout:v5];
    if (!CGRectIsNull(v9))
    {
      goto LABEL_6;
    }
  }

  v5 = self->_appLayout;
LABEL_6:

  return v5;
}

- (BOOL)_isEffectivelyHome
{
  transitionPhase = [(SBWindowingModifier *)self transitionPhase];
  if (transitionPhase)
  {
    if (transitionPhase == 1)
    {
      return self->_isAddingToStage;
    }

    else
    {
      return !self->_isAddingToStage;
    }
  }

  else
  {
    return 0;
  }
}

- (BOOL)_isIndexZoomAppLayout:(unint64_t)layout
{
  selfCopy = self;
  appLayouts = [(SBDockToStageZoomWindowingModifier *)self appLayouts];
  v6 = [appLayouts objectAtIndex:layout];

  LOBYTE(selfCopy) = [v6 isEqual:selfCopy->_appLayout];
  return selfCopy;
}

- (id)_settingsByInterpolatingBetween:(id)between and:(id)and progress:(double)progress
{
  v6 = MEMORY[0x277D65E60];
  andCopy = and;
  betweenCopy = between;
  v9 = objc_alloc_init(v6);
  [v9 setDefaultValues];
  [betweenCopy dampingRatio];
  [andCopy dampingRatio];
  BSFloatByLinearlyInterpolatingFloats();
  [v9 setDampingRatio:?];
  [betweenCopy response];
  [andCopy response];
  BSFloatByLinearlyInterpolatingFloats();
  [v9 setResponse:?];
  [betweenCopy retargetImpulse];

  [andCopy retargetImpulse];
  BSFloatByLinearlyInterpolatingFloats();
  [v9 setRetargetImpulse:?];
  v12 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
  [v9 setFrameRateRange:1114114 highFrameRateReason:{*&v12.minimum, *&v12.maximum, *&v12.preferred}];

  return v9;
}

- (double)_normalizedHomeScreenIconZoomPercentBetweenTopAndBottom:(CGPoint)bottom
{
  y = bottom.y;
  if (([(SBDockToStageZoomWindowingModifier *)self switcherInterfaceOrientation]- 1) >= 2)
  {
    v5 = 0.0;
  }

  else
  {
    v5 = 102.0;
  }

  [(SBDockToStageZoomWindowingModifier *)self containerViewBounds];
  return (y - v5) / (v6 - v5);
}

- (void)initWithAppLayout:(uint64_t)a1 addingToStage:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBDockToStageZoomWindowingModifier.m" lineNumber:44 description:{@"Invalid parameter not satisfying: %@", @"appLayout"}];
}

@end