@interface SBDockToStageZoomWindowingModifier
- (BOOL)_isEffectivelyHome;
- (BOOL)_isIndexZoomAppLayout:(unint64_t)a3;
- (BOOL)shouldInterruptForActivity:(id)a3;
- (BOOL)shouldPinLayoutRolesToSpace:(unint64_t)a3;
- (BOOL)shouldScaleOverlayToFillBoundsAtIndex:(unint64_t)a3;
- (BOOL)shouldUseAnchorPointToPinLayoutRolesToSpace:(unint64_t)a3;
- (CGPoint)adjustedSpaceAccessoryViewAnchorPoint:(CGPoint)a3 forAppLayout:(id)a4;
- (CGPoint)anchorPointForIndex:(unint64_t)a3;
- (CGPoint)perspectiveAngleForIndex:(unint64_t)a3;
- (CGRect)_frameForZoomingIndex:(unint64_t)a3 isEffectivelyHome:(BOOL)a4 ignoringGenie:(BOOL)a5;
- (CGRect)_iconFrame;
- (CGRect)adjustedSpaceAccessoryViewFrame:(CGRect)a3 forAppLayout:(id)a4;
- (CGRect)frameForIndex:(unint64_t)a3;
- (CGRect)frameForLayoutRole:(int64_t)a3 inAppLayout:(id)a4 withBounds:(CGRect)a5;
- (CGRect)fullyPresentedFrameForIndex:(unint64_t)a3 frame:(CGRect)a4;
- (SBDockToStageZoomWindowingModifier)initWithAppLayout:(id)a3 addingToStage:(BOOL)a4;
- (SBSwitcherAsyncRenderingAttributes)asyncRenderingAttributesForAppLayout:(id)a3;
- (SBSwitcherShelfPresentationAttributes)presentationAttributesForShelf:(SEL)a3;
- (UIRectCornerRadii)cornerRadiiForIndex:(unint64_t)a3;
- (double)_normalizedHomeScreenIconZoomPercentBetweenTopAndBottom:(CGPoint)a3;
- (double)dockProgress;
- (double)fadeInDelayForSplitViewHandles;
- (double)opacityForLayoutRole:(int64_t)a3 inAppLayout:(id)a4 atIndex:(unint64_t)a5;
- (double)scaleForIndex:(unint64_t)a3;
- (double)shadowOpacityForLayoutRole:(int64_t)a3 atIndex:(unint64_t)a4;
- (id)_appLayoutForIcon;
- (id)_layoutSettings;
- (id)_layoutSettingsForTargetCenter:(CGPoint)a3;
- (id)_settingsByInterpolatingBetween:(id)a3 and:(id)a4 progress:(double)a5;
- (id)adjustedAppLayoutsForAppLayouts:(id)a3;
- (id)animationAttributesForLayoutElement:(id)a3;
- (id)appLayoutsForContinuousExposeIdentifier:(id)a3;
- (id)appLayoutsToCacheSnapshots;
- (id)genieAttributesForAppLayout:(id)a3;
- (id)keyboardSuppressionMode;
- (id)topMostLayoutElements;
- (id)visibleAppLayouts;
- (void)complete;
- (void)timerFired:(id)a3;
- (void)transitionDidComplete:(id)a3;
- (void)transitionWillBegin:(id)a3;
@end

@implementation SBDockToStageZoomWindowingModifier

- (SBDockToStageZoomWindowingModifier)initWithAppLayout:(id)a3 addingToStage:(BOOL)a4
{
  v8 = a3;
  v11.receiver = self;
  v11.super_class = SBDockToStageZoomWindowingModifier;
  v9 = [(SBWindowingModifier *)&v11 init];
  if (v9)
  {
    if (!v8)
    {
      [SBDockToStageZoomWindowingModifier initWithAppLayout:a2 addingToStage:v9];
    }

    objc_storeStrong(&v9->_appLayout, a3);
    v9->_isAddingToStage = a4;
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
  v3 = [(SBDockToStageZoomWindowingModifier *)self _appLayoutForIcon];
  [(SBDockToStageZoomWindowingModifier *)self homeScreenIconFrameForAppLayout:v3];
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

- (BOOL)shouldInterruptForActivity:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_transitionID && [v4 isTransitionEvent])
  {
    v6 = [v5 transitionID];
    if (BSEqualObjects())
    {
      v7 = [v5 isGestureEvent];
    }

    else
    {
      v7 = 1;
    }
  }

  else
  {
    v7 = [v5 isGestureEvent];
  }

  return v7;
}

- (void)transitionWillBegin:(id)a3
{
  v4 = a3;
  v5 = [v4 transitionID];
  transitionID = self->_transitionID;
  self->_transitionID = v5;

  v7 = objc_opt_new();
  [(SBWindowingModifier *)self appendResponse:v7];

  v8 = [(SBDockToStageZoomWindowingModifier *)self _appLayoutForIcon];
  [(SBDockToStageZoomWindowingModifier *)self homeScreenIconCornerRadiusForAppLayout:v8];
  self->_iconCornerRadius = v9;
  [(SBDockToStageZoomWindowingModifier *)self homeScreenIconScaleForAppLayout:v8];
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
    v15 = 0;
  }

  else
  {
    v15 = [(SBDockToStageZoomWindowingModifier *)self isFloatingDockFullyPresented];
  }

  v16 = [[SBIconOverlayVisibilitySwitcherEventResponse alloc] initWithAppLayout:self->_appLayout visible:1];
  [(SBWindowingModifier *)self appendResponse:v16];

  v17 = [(SBDockToStageZoomWindowingModifier *)self switcherSettings];
  v18 = [v17 animationSettings];

  v53 = v18;
  if (self->_isAddingToStage)
  {
    v19 = 0;
  }

  else
  {
    v19 = [v18 floatingDockIconFadeSettings];
  }

  v51 = v19;
  v20 = [[SBIconViewVisibilitySwitcherEventResponse alloc] initWithAppLayout:v8 visible:0 animationSettings:v19 excludedIconLocations:0];
  [(SBWindowingModifier *)self appendResponse:v20];
  self->_isHidingDockIcon = 1;
  if (v15)
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

  v49 = v4;
  if (self->_isAddingToStage || (v23 = [[SBNotifyIconWillZoomDownSwitcherEventResponse alloc] initWithAppLayout:v8, v4], [(SBWindowingModifier *)self appendResponse:v23], v23, self->_isAddingToStage))
  {
    v24 = [SBTimerEventSwitcherEventResponse alloc];
    v25 = [v53 floatingDockIconFadeSettings];
    [v25 response];
    v26 = [(SBTimerEventSwitcherEventResponse *)v24 initWithDelay:0 validator:@"kSBDockToStageIconFadeInDelay" reason:?];
    [(SBWindowingModifier *)self appendResponse:v26];
  }

  v27 = [(SBDockToStageZoomWindowingModifier *)self switcherSettings];
  v28 = [v27 animationSettings];
  [v28 disableAsyncRenderingTransitionPercentage];
  v30 = v29;

  v31 = [(SBDockToStageZoomWindowingModifier *)self _layoutSettings];
  [v31 settlingDuration];
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
    v38 = [(SBWindowingModifier *)self windowingConfiguration];
    v39 = [(SBWindowingModifier *)self flexibleAutoLayoutSpaceForAppLayout:self->_appLayout];
    v40 = [(SBAppLayout *)self->_appLayout itemForLayoutRole:1];
    v41 = [v39 flexibleAutoLayoutItemForDisplayItem:v40];

    [v41 frame];
    v43 = v42;
    v45 = v44;
    [(SBDockToStageZoomWindowingModifier *)self containerViewBounds];
    v47 = v46;
    [v38 floatingDockHeightWithTopAndBottomPadding];
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

- (void)transitionDidComplete:(id)a3
{
  v9 = [(SBDockToStageZoomWindowingModifier *)self _appLayoutForIcon];
  v4 = [[SBIconOverlayVisibilitySwitcherEventResponse alloc] initWithAppLayout:self->_appLayout visible:0];
  [(SBWindowingModifier *)self appendResponse:v4];

  if (self->_isHidingDockIcon)
  {
    self->_isHidingDockIcon = 0;
    if (self->_isAddingToStage)
    {
      v5 = [(SBDockToStageZoomWindowingModifier *)self switcherSettings];
      v6 = [v5 animationSettings];
      v7 = [v6 floatingDockIconFadeSettings];
    }

    else
    {
      v7 = 0;
    }

    v8 = [[SBIconViewVisibilitySwitcherEventResponse alloc] initWithAppLayout:v9 visible:1 animationSettings:v7 excludedIconLocations:0];
    [(SBWindowingModifier *)self appendResponse:v8];
  }

  [(SBDockToStageZoomWindowingModifier *)self complete];
}

- (void)timerFired:(id)a3
{
  v10 = [a3 reason];
  if ([v10 isEqualToString:@"kSBDockToStageIconFadeInDelay"])
  {
    if (self->_isHidingDockIcon)
    {
      self->_isHidingDockIcon = 0;
      v4 = [(SBDockToStageZoomWindowingModifier *)self switcherSettings];
      v5 = [v4 animationSettings];
      v6 = [v5 floatingDockIconFadeSettings];

      v7 = [SBIconViewVisibilitySwitcherEventResponse alloc];
      v8 = [(SBDockToStageZoomWindowingModifier *)self _appLayoutForIcon];
      v9 = [(SBIconViewVisibilitySwitcherEventResponse *)v7 initWithAppLayout:v8 visible:1 animationSettings:v6 excludedIconLocations:0];

      [(SBWindowingModifier *)self appendResponse:v9];
    }
  }

  else if ([v10 isEqualToString:@"kSBDockToStageZoomInvalidateAsyncRenderingReason"])
  {
    self->_wantsResignActiveAndAsyncRenderingAssertions = 0;
  }
}

- (id)appLayoutsForContinuousExposeIdentifier:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = SBDockToStageZoomWindowingModifier;
  v5 = [(SBDockToStageZoomWindowingModifier *)&v13 appLayoutsForContinuousExposeIdentifier:v4];
  v6 = [(SBDockToStageZoomWindowingModifier *)self windowManagementContext];
  if ([v6 isChamoisOrFlexibleWindowing])
  {
    v7 = [(SBAppLayout *)self->_appLayout continuousExposeIdentifier];
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

- (id)adjustedAppLayoutsForAppLayouts:(id)a3
{
  v52 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v49.receiver = self;
  v49.super_class = SBDockToStageZoomWindowingModifier;
  v5 = [(SBDockToStageZoomWindowingModifier *)&v49 adjustedAppLayoutsForAppLayouts:v4];
  v6 = [(SBAppLayout *)self->_appLayout leafAppLayouts];
  v7 = v6;
  v8 = 216;
  if (self->_launchingOverDesktopSpaceAppLayout)
  {
    v9 = [v6 arrayByAddingObject:?];

    v7 = v9;
  }

  if ([v7 count])
  {
    v33 = v4;
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
      v35 = self;
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
                v18 = self;
                v19 = v14;
                v20 = [v16 mutableCopy];

                v5 = v20;
                v14 = v19;
                self = v18;
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
              self = v35;
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

    v4 = v33;
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

- (CGRect)frameForIndex:(unint64_t)a3
{
  v29.receiver = self;
  v29.super_class = SBDockToStageZoomWindowingModifier;
  [(SBWindowingModifier *)&v29 frameForIndex:?];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = [(SBDockToStageZoomWindowingModifier *)self appLayouts];
  v14 = [v13 objectAtIndex:a3];

  v15 = [(SBDockToStageZoomWindowingModifier *)self _isEffectivelyHome];
  if ([(SBDockToStageZoomWindowingModifier *)self _isIndexZoomAppLayout:a3])
  {
    [(SBDockToStageZoomWindowingModifier *)self _frameForZoomingIndex:a3 isEffectivelyHome:v15 ignoringGenie:0];
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

- (CGRect)_frameForZoomingIndex:(unint64_t)a3 isEffectivelyHome:(BOOL)a4 ignoringGenie:(BOOL)a5
{
  v5 = a4;
  v34.receiver = self;
  v34.super_class = SBDockToStageZoomWindowingModifier;
  [(SBWindowingModifier *)&v34 frameForIndex:a3, a4, a5];
  v9 = v8;
  v11 = v10;
  v33.receiver = self;
  v33.super_class = SBDockToStageZoomWindowingModifier;
  [(SBWindowingModifier *)&v33 frameForIndex:a3];
  if (self->_isAddingToStage)
  {
    v12 = [(SBWindowingModifier *)self transitioningToAppLayout];
    v13 = [(SBAppLayout *)self->_appLayout itemForLayoutRole:1];
    v14 = [v12 layoutRoleForItem:v13];

    SBRectWithSize();
    [(SBDockToStageZoomWindowingModifier *)&v32 frameForLayoutRole:v14 inAppLayout:v12 withBounds:v31.receiver, v31.super_class, self, SBDockToStageZoomWindowingModifier];
  }

  else
  {
    v12 = [(SBWindowingModifier *)self transitioningFromAppLayout];
    v19 = [(SBAppLayout *)self->_appLayout itemForLayoutRole:1];
    v20 = [v12 layoutRoleForItem:v19];

    SBRectWithSize();
    [(SBDockToStageZoomWindowingModifier *)&v31 frameForLayoutRole:v20 inAppLayout:v12 withBounds:self, SBDockToStageZoomWindowingModifier, v32.receiver, v32.super_class];
  }

  v21 = v15;
  v22 = v16;
  v23 = v17;
  v24 = v18;

  if (v5)
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

- (CGPoint)anchorPointForIndex:(unint64_t)a3
{
  v5 = [(SBDockToStageZoomWindowingModifier *)self _isIndexZoomAppLayout:?];
  v6 = 0.5;
  v7 = 0.5;
  if (!v5)
  {
    v8.receiver = self;
    v8.super_class = SBDockToStageZoomWindowingModifier;
    [(SBWindowingModifier *)&v8 anchorPointForIndex:a3, 0.5, 0.5];
  }

  result.y = v7;
  result.x = v6;
  return result;
}

- (BOOL)shouldPinLayoutRolesToSpace:(unint64_t)a3
{
  if ([(SBDockToStageZoomWindowingModifier *)self _isIndexZoomAppLayout:?])
  {
    return 0;
  }

  v6.receiver = self;
  v6.super_class = SBDockToStageZoomWindowingModifier;
  return [(SBDockToStageZoomWindowingModifier *)&v6 shouldPinLayoutRolesToSpace:a3];
}

- (BOOL)shouldUseAnchorPointToPinLayoutRolesToSpace:(unint64_t)a3
{
  if ([(SBDockToStageZoomWindowingModifier *)self _isIndexZoomAppLayout:?])
  {
    return 0;
  }

  v6.receiver = self;
  v6.super_class = SBDockToStageZoomWindowingModifier;
  return [(SBDockToStageZoomWindowingModifier *)&v6 shouldUseAnchorPointToPinLayoutRolesToSpace:a3];
}

- (CGPoint)perspectiveAngleForIndex:(unint64_t)a3
{
  v5 = [(SBDockToStageZoomWindowingModifier *)self appLayouts];
  v6 = [v5 objectAtIndex:a3];

  if ([v6 isEqual:self->_appLayout])
  {
    v7 = *MEMORY[0x277CBF348];
    v8 = *(MEMORY[0x277CBF348] + 8);
  }

  else
  {
    v13.receiver = self;
    v13.super_class = SBDockToStageZoomWindowingModifier;
    [(SBWindowingModifier *)&v13 perspectiveAngleForIndex:a3];
    v7 = v9;
    v8 = v10;
  }

  v11 = v7;
  v12 = v8;
  result.y = v12;
  result.x = v11;
  return result;
}

- (CGRect)adjustedSpaceAccessoryViewFrame:(CGRect)a3 forAppLayout:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v9 = a4;
  if ([v9 isEqual:self->_appLayout])
  {
    v10 = [(SBDockToStageZoomWindowingModifier *)self appLayouts];
    -[SBDockToStageZoomWindowingModifier frameForIndex:](self, "frameForIndex:", [v10 indexOfObject:self->_appLayout]);
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v18 = v17;
  }

  else
  {
    v27.receiver = self;
    v27.super_class = SBDockToStageZoomWindowingModifier;
    [(SBWindowingModifier *)&v27 adjustedSpaceAccessoryViewFrame:v9 forAppLayout:x, y, width, height];
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

- (CGPoint)adjustedSpaceAccessoryViewAnchorPoint:(CGPoint)a3 forAppLayout:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  v8 = 0.5;
  v9 = 0.5;
  if (([v7 isEqual:self->_appLayout] & 1) == 0)
  {
    v14.receiver = self;
    v14.super_class = SBDockToStageZoomWindowingModifier;
    [(SBWindowingModifier *)&v14 adjustedSpaceAccessoryViewAnchorPoint:v7 forAppLayout:x, y];
    v8 = v10;
    v9 = v11;
  }

  v12 = v8;
  v13 = v9;
  result.y = v13;
  result.x = v12;
  return result;
}

- (CGRect)fullyPresentedFrameForIndex:(unint64_t)a3 frame:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  if ([(SBDockToStageZoomWindowingModifier *)self _isEffectivelyHome]&& [(SBDockToStageZoomWindowingModifier *)self _isIndexZoomAppLayout:a3])
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

    v21 = [(SBDockToStageZoomWindowingModifier *)self displayItemLayoutAttributesCalculator];
    [(SBDockToStageZoomWindowingModifier *)self containerViewBounds];
    v57 = v23;
    v58 = v22;
    v25 = v24;
    v27 = v26;
    v28 = [(SBDockToStageZoomWindowingModifier *)self switcherInterfaceOrientation];
    [(SBDockToStageZoomWindowingModifier *)self floatingDockHeight];
    v30 = v29;
    [(SBDockToStageZoomWindowingModifier *)self screenScale];
    v32 = v31;
    v33 = [(SBDockToStageZoomWindowingModifier *)self isDisplayEmbedded];
    v34 = [(SBDockToStageZoomWindowingModifier *)self prefersStripHidden];
    v35 = [(SBDockToStageZoomWindowingModifier *)self prefersDockHidden];
    [(SBDockToStageZoomWindowingModifier *)self leftStatusBarPartIntersectionRegion];
    v37 = v36;
    v39 = v38;
    v41 = v40;
    v43 = v42;
    [(SBDockToStageZoomWindowingModifier *)self rightStatusBarPartIntersectionRegion];
    LOBYTE(v56) = v35;
    [v21 frameForLayoutRole:v20 inAppLayout:v18 containerBounds:v28 containerOrientation:1 floatingDockHeight:v33 screenScale:v34 isChamoisWindowingUIEnabled:v58 isEmbeddedDisplay:v57 prefersStripHidden:v25 prefersDockHidden:v27 leftStatusBarPartIntersectionRegion:v30 rightStatusBarPartIntersectionRegion:{v32, v56, v37, v39, v41, v43, v44, v45, v46, v47}];
    v11 = v48;
    v13 = v49;
    v15 = v50;
    v17 = v51;
  }

  else
  {
    v59.receiver = self;
    v59.super_class = SBDockToStageZoomWindowingModifier;
    [(SBDockToStageZoomWindowingModifier *)&v59 fullyPresentedFrameForIndex:a3 frame:x, y, width, height];
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

- (SBSwitcherShelfPresentationAttributes)presentationAttributesForShelf:(SEL)a3
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

- (double)scaleForIndex:(unint64_t)a3
{
  if ([(SBDockToStageZoomWindowingModifier *)self _isEffectivelyHome]&& [(SBDockToStageZoomWindowingModifier *)self _isIndexZoomAppLayout:a3])
  {
    v18.receiver = self;
    v18.super_class = SBDockToStageZoomWindowingModifier;
    [(SBWindowingModifier *)&v18 frameForIndex:a3];
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
    [(SBWindowingModifier *)&v17 scaleForIndex:a3];
  }

  return result;
}

- (id)visibleAppLayouts
{
  v6.receiver = self;
  v6.super_class = SBDockToStageZoomWindowingModifier;
  v3 = [(SBWindowingModifier *)&v6 visibleAppLayouts];
  v4 = [v3 setByAddingObject:self->_appLayout];

  return v4;
}

- (double)fadeInDelayForSplitViewHandles
{
  v2 = [(SBDockToStageZoomWindowingModifier *)self switcherSettings];
  v3 = [v2 windowingSettings];
  [v3 percentageOfTransitionForSplitViewHandleFadeInDelay];
  v5 = v4;
  v6 = [v2 animationSettings];
  v7 = [v6 layoutSettings];
  [v7 settlingDuration];
  v9 = v5 * v8;

  return v9;
}

- (id)animationAttributesForLayoutElement:(id)a3
{
  v8.receiver = self;
  v8.super_class = SBDockToStageZoomWindowingModifier;
  v4 = [(SBWindowingModifier *)&v8 animationAttributesForLayoutElement:a3];
  v5 = [v4 mutableCopy];

  v6 = [(SBDockToStageZoomWindowingModifier *)self _layoutSettings];
  [v5 setLayoutSettings:v6];

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

- (id)_layoutSettingsForTargetCenter:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v6 = [(SBDockToStageZoomWindowingModifier *)self switcherSettings];
  v7 = [v6 animationSettings];

  if (self->_isAddingToStage)
  {
    v8 = [(SBDockToStageZoomWindowingModifier *)self maximizedCenteredAndUnoccludedDisplayItemsInAppLayout:self->_appLayout ignoreOcclusion:1 ignoreCentering:0];
    v9 = [(SBAppLayout *)self->_appLayout itemForLayoutRole:1];
    v10 = [v8 containsObject:v9];

    if (v10)
    {
      v11 = [v7 genieFullScreenCenterRowZoomUpSettings];
      v12 = [v7 genieFullScreenEdgeRowZoomUpSettings];
      [(SBDockToStageZoomWindowingModifier *)self _normalizedHomeScreenTargetZoomPercentBetweenCenterAndEdge:x, y];
      v13 = [(SBDockToStageZoomWindowingModifier *)self _settingsByInterpolatingBetween:v11 and:v12 progress:?];

      goto LABEL_7;
    }

    v14 = [v7 genieWindowedZoomUpSettings];
  }

  else
  {
    v14 = [v7 iconZoomDownSettings];
  }

  v13 = v14;
LABEL_7:

  return v13;
}

- (CGRect)frameForLayoutRole:(int64_t)a3 inAppLayout:(id)a4 withBounds:(CGRect)a5
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v25.receiver = self;
  v25.super_class = SBDockToStageZoomWindowingModifier;
  v11 = a4;
  [(SBDockToStageZoomWindowingModifier *)&v25 frameForLayoutRole:a3 inAppLayout:v11 withBounds:x, y, width, height];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  LODWORD(a3) = [(SBAppLayout *)self->_appLayout isEqual:v11, v25.receiver, v25.super_class];

  if (a3)
  {
    v20 = [(SBDockToStageZoomWindowingModifier *)self _isEffectivelyHome];
    v13 = *MEMORY[0x277CBF348];
    v15 = *(MEMORY[0x277CBF348] + 8);
    if (v20)
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

- (id)genieAttributesForAppLayout:(id)a3
{
  v4 = a3;
  if ([(SBAppLayout *)self->_appLayout isEqual:v4])
  {
    v57 = 0;
    v55 = 0u;
    v56 = 0u;
    v5 = [(SBAppLayout *)self->_appLayout itemForLayoutRole:1];
    v6 = [(SBWindowingModifier *)self flexibleAutoLayoutSpaceForAppLayout:v4];
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
    v21 = [(SBDockToStageZoomWindowingModifier *)self appLayouts];
    -[SBDockToStageZoomWindowingModifier _frameForZoomingIndex:isEffectivelyHome:ignoringGenie:](self, "_frameForZoomingIndex:isEffectivelyHome:ignoringGenie:", [v21 indexOfObject:v4], 1, 1);
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
    v39 = [(SBDockToStageZoomWindowingModifier *)self _isEffectivelyHome];
    if (self->_isAddingToStage)
    {
      v40 = SBSwitcherGenieGlassHighlightNone(&v55);
    }

    else
    {
      [(SBDockToStageZoomWindowingModifier *)self homeScreenGlassHighlightForAppLayout:self->_appLayout];
    }

    v42 = [(SBDockToStageZoomWindowingModifier *)self _layoutSettings];
    v53[0] = v55;
    v53[1] = v56;
    v54 = v57;
    v41 = [SBSwitcherGenieAttributes genieAttributesForIconPosition:v39 windowPosition:v53 initialVelocity:v42 windowSize:v51 minimizedSize:v50 minimizedScale:v49 containerSize:v48 minimumOutsetSize:v36 genieScale:v37 multiplier:v18 active:v20 glassHighlight:v47 layoutSettings:v46, *&v27, v45, v44, *&v30, *&v31, *&v38, 0x3FE0000000000000, 0x3FE0000000000000];
  }

  else
  {
    v52.receiver = self;
    v52.super_class = SBDockToStageZoomWindowingModifier;
    v41 = [(SBDockToStageZoomWindowingModifier *)&v52 genieAttributesForAppLayout:v4];
  }

  return v41;
}

- (UIRectCornerRadii)cornerRadiiForIndex:(unint64_t)a3
{
  if ([(SBDockToStageZoomWindowingModifier *)self _isIndexZoomAppLayout:?]&& [(SBDockToStageZoomWindowingModifier *)self _isEffectivelyHome])
  {
    [(SBDockToStageZoomWindowingModifier *)self scaleForIndex:a3];

    SBRectCornerRadiiForRadius();
  }

  else
  {
    v9.receiver = self;
    v9.super_class = SBDockToStageZoomWindowingModifier;
    [(SBWindowingModifier *)&v9 cornerRadiiForIndex:a3];
  }

  result.topRight = v8;
  result.bottomRight = v7;
  result.bottomLeft = v6;
  result.topLeft = v5;
  return result;
}

- (BOOL)shouldScaleOverlayToFillBoundsAtIndex:(unint64_t)a3
{
  result = 0;
  if ([(SBDockToStageZoomWindowingModifier *)self isDevicePad])
  {
    v6.receiver = self;
    v6.super_class = SBDockToStageZoomWindowingModifier;
    [(SBWindowingModifier *)&v6 frameForIndex:a3];
    SBRectWithSize();
    [(SBDockToStageZoomWindowingModifier *)self _iconFrame];
    if (BSFloatLessThanFloat())
    {
      return 1;
    }
  }

  return result;
}

- (double)opacityForLayoutRole:(int64_t)a3 inAppLayout:(id)a4 atIndex:(unint64_t)a5
{
  v8 = a4;
  v9 = [v8 itemForLayoutRole:a3];
  v10 = 1.0;
  if (![(SBDockToStageZoomWindowingModifier *)self _isIndexZoomAppLayout:a5])
  {
    v11 = [(SBDockToStageZoomWindowingModifier *)self desktopSpaceDisplayItems];
    if ([v11 containsObject:v9])
    {
LABEL_5:

      goto LABEL_6;
    }

    v12 = [(SBWindowingModifier *)self transitioningToAppLayout];
    if ([v12 containsItem:v9])
    {

      goto LABEL_5;
    }

    v14 = [(SBWindowingModifier *)self transitioningFromAppLayout];
    v15 = [v14 containsItem:v9];

    if ((v15 & 1) == 0)
    {
      v16 = [(SBDockToStageZoomWindowingModifier *)self peekingAppLayout];
      if ([v16 containsItem:v9])
      {
      }

      else
      {
        v17 = [(SBDockToStageZoomWindowingModifier *)self strip];
        v18 = [v17 containsDisplayItem:v9];

        v10 = 0.0;
        if (!v18)
        {
          goto LABEL_6;
        }
      }

      v20.receiver = self;
      v20.super_class = SBDockToStageZoomWindowingModifier;
      [(SBWindowingModifier *)&v20 opacityForLayoutRole:a3 inAppLayout:v8 atIndex:a5];
      v10 = v19;
    }
  }

LABEL_6:

  return v10;
}

- (double)shadowOpacityForLayoutRole:(int64_t)a3 atIndex:(unint64_t)a4
{
  if (![(SBDockToStageZoomWindowingModifier *)self _isIndexZoomAppLayout:a4]|| ![(SBDockToStageZoomWindowingModifier *)self _isEffectivelyHome]|| (result = 0.0, !self->_isAddingToStage))
  {
    v8.receiver = self;
    v8.super_class = SBDockToStageZoomWindowingModifier;
    [(SBWindowingModifier *)&v8 shadowOpacityForLayoutRole:a3 atIndex:a4, result];
  }

  return result;
}

- (id)appLayoutsToCacheSnapshots
{
  v3 = [(SBDockToStageZoomWindowingModifier *)self switcherSettings];
  v4 = [v3 numberOfSnapshotsToAlwaysKeepAround];

  v5 = [(SBDockToStageZoomWindowingModifier *)self appLayouts];
  v11.length = [v5 count];
  v10.location = 0;
  v10.length = v4;
  v11.location = 0;
  v6 = NSIntersectionRange(v10, v11);
  v7 = [v5 subarrayWithRange:{v6.location, v6.length}];

  return v7;
}

- (id)topMostLayoutElements
{
  v18.receiver = self;
  v18.super_class = SBDockToStageZoomWindowingModifier;
  v3 = [(SBWindowingModifier *)&v18 topMostLayoutElements];
  v17.receiver = self;
  v17.super_class = SBDockToStageZoomWindowingModifier;
  v4 = [(SBDockToStageZoomWindowingModifier *)&v17 dockPortalViewLayoutElement];
  if (v4)
  {
    v5 = [v3 sb_arrayByInsertingOrMovingObject:v4 toIndex:0];

    v3 = v5;
  }

  v6 = [v3 sb_arrayByInsertingOrMovingObject:self->_appLayout toIndex:0];

  v7 = [(SBDockToStageZoomWindowingModifier *)self visibleSplitViewHandleNubViews];
  v8 = [v7 count];

  if (v8)
  {
    v9 = [v6 bs_filter:&__block_literal_global_396];
    v10 = [v9 arrayByAddingObjectsFromArray:v6];

    v6 = v10;
  }

  v11 = [(SBDockToStageZoomWindowingModifier *)self displayItemInSlideOver];
  v12 = [(SBDockToStageZoomWindowingModifier *)self appLayout];
  v13 = v12;
  if (v11 && [v12 containsItem:v11])
  {
    v14 = [v13 leafAppLayoutForItem:v11];
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

- (SBSwitcherAsyncRenderingAttributes)asyncRenderingAttributesForAppLayout:(id)a3
{
  v4.receiver = self;
  v4.super_class = SBDockToStageZoomWindowingModifier;
  return ([(SBDockToStageZoomWindowingModifier *)&v4 asyncRenderingAttributesForAppLayout:a3]& 0xFF01 | self->_wantsResignActiveAndAsyncRenderingAssertions);
}

- (id)keyboardSuppressionMode
{
  if (self->_wantsResignActiveAndAsyncRenderingAssertions)
  {
    v2 = +[SBSwitcherKeyboardSuppressionMode suppressionModeForAllScenes];
  }

  else
  {
    v4.receiver = self;
    v4.super_class = SBDockToStageZoomWindowingModifier;
    v2 = [(SBDockToStageZoomWindowingModifier *)&v4 keyboardSuppressionMode];
  }

  return v2;
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
  v3 = [(SBWindowingModifier *)self transitionPhase];
  if (v3)
  {
    if (v3 == 1)
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

- (BOOL)_isIndexZoomAppLayout:(unint64_t)a3
{
  v4 = self;
  v5 = [(SBDockToStageZoomWindowingModifier *)self appLayouts];
  v6 = [v5 objectAtIndex:a3];

  LOBYTE(v4) = [v6 isEqual:v4->_appLayout];
  return v4;
}

- (id)_settingsByInterpolatingBetween:(id)a3 and:(id)a4 progress:(double)a5
{
  v6 = MEMORY[0x277D65E60];
  v7 = a4;
  v8 = a3;
  v9 = objc_alloc_init(v6);
  [v9 setDefaultValues];
  [v8 dampingRatio];
  [v7 dampingRatio];
  BSFloatByLinearlyInterpolatingFloats();
  [v9 setDampingRatio:?];
  [v8 response];
  [v7 response];
  BSFloatByLinearlyInterpolatingFloats();
  [v9 setResponse:?];
  [v8 retargetImpulse];

  [v7 retargetImpulse];
  BSFloatByLinearlyInterpolatingFloats();
  [v9 setRetargetImpulse:?];
  v12 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
  [v9 setFrameRateRange:1114114 highFrameRateReason:{*&v12.minimum, *&v12.maximum, *&v12.preferred}];

  return v9;
}

- (double)_normalizedHomeScreenIconZoomPercentBetweenTopAndBottom:(CGPoint)a3
{
  y = a3.y;
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