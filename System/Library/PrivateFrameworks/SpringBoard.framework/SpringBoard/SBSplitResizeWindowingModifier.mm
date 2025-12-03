@interface SBSplitResizeWindowingModifier
- (BOOL)_appLayoutContainsFullScreenDisplayItem:(id)item;
- (BOOL)isLayoutRoleMatchMovedToScene:(int64_t)scene inAppLayout:(id)layout;
- (BOOL)wantsSceneResizesHostedContextForAppLayout:(id)layout;
- (CGRect)frameForLayoutRole:(int64_t)role inAppLayout:(id)layout withBounds:(CGRect)bounds;
- (CGRect)frameForSplitViewHandleDimmingView:(id)view;
- (CGRect)frameForSplitViewHandleNubView:(id)view;
- (SBSplitResizeWindowingModifier)initWithSplitPairAppLayout:(id)layout;
- (id)_animationSettingsForLayout;
- (id)_responseForItem:(id)item sceneSizeUpdateToSize:(CGSize)size center:(CGPoint)center;
- (id)animationAttributesForLayoutElement:(id)element;
- (id)layoutRestrictionInfoForItem:(id)item;
- (unint64_t)activeCornersForTouchResizeForLayoutRole:(int64_t)role inAppLayout:(id)layout;
- (unint64_t)hiddenContentStatusBarPartsForLayoutRole:(int64_t)role inAppLayout:(id)layout;
- (unint64_t)visibleCornersForTouchResizeForLayoutRole:(int64_t)role inAppLayout:(id)layout;
- (void)_updateWithGesture:(id)gesture;
- (void)gestureWillBegin:(id)begin;
- (void)timerFired:(id)fired;
- (void)transitionWillBegin:(id)begin;
@end

@implementation SBSplitResizeWindowingModifier

- (SBSplitResizeWindowingModifier)initWithSplitPairAppLayout:(id)layout
{
  layoutCopy = layout;
  if (!layoutCopy)
  {
    [(SBSplitResizeWindowingModifier *)a2 initWithSplitPairAppLayout:?];
  }

  v14.receiver = self;
  v14.super_class = SBSplitResizeWindowingModifier;
  v7 = [(SBWindowingModifier *)&v14 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_splitPairAppLayout, layout);
    allItems = [*(v8 + 368) allItems];
    v10 = [allItems count];

    if (v10 != 2)
    {
      [(SBSplitResizeWindowingModifier *)a2 initWithSplitPairAppLayout:v8];
    }

    *(v8 + 248) = SBInvalidPoint;
    *(v8 + 272) = SBInvalidPoint;
    *(v8 + 288) = SBInvalidSize;
    *(v8 + 304) = SBInvalidSize;
    v11 = objc_alloc_init(SBDisplayItemLayoutGrid);
    v12 = *(v8 + 328);
    *(v8 + 328) = v11;

    *(v8 + 352) = arc4random();
  }

  return v8;
}

- (CGRect)frameForLayoutRole:(int64_t)role inAppLayout:(id)layout withBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  layoutCopy = layout;
  appLayout = [(SBSplitResizeWindowingModifier *)self appLayout];
  v13 = appLayout;
  if (self->_gestureIsEnding || ![appLayout isOrContainsAppLayout:layoutCopy])
  {
    goto LABEL_11;
  }

  v14 = [layoutCopy itemForLayoutRole:role];
  if (![(SBAppLayout *)self->_splitPairAppLayout containsItem:v14])
  {
LABEL_10:

LABEL_11:
    v33.receiver = self;
    v33.super_class = SBSplitResizeWindowingModifier;
    [(SBSplitResizeWindowingModifier *)&v33 frameForLayoutRole:role inAppLayout:layoutCopy withBounds:x, y, width, height];
    v21 = v25;
    v22 = v26;
    v23 = v27;
    v24 = v28;
    goto LABEL_12;
  }

  v15 = [(SBAppLayout *)self->_splitPairAppLayout layoutRoleForItem:v14];
  v16 = [(SBWindowingModifier *)self flexibleAutoLayoutSpaceForAppLayout:v13];
  [v16 boundingBox];
  if (v15 != 1)
  {
    if (v15 == 2)
    {
      v19 = &OBJC_IVAR___SBSplitResizeWindowingModifier__rightAppRubberbandedFrame;
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  v19 = &OBJC_IVAR___SBSplitResizeWindowingModifier__leftAppRubberbandedFrame;
LABEL_8:
  v20 = (self + *v19);
  v21 = *v20 - v17;
  v22 = v20[1] - v18;
  v23 = v20[2];
  v24 = v20[3];

LABEL_12:
  v29 = v21;
  v30 = v22;
  v31 = v23;
  v32 = v24;
  result.size.height = v32;
  result.size.width = v31;
  result.origin.y = v30;
  result.origin.x = v29;
  return result;
}

- (BOOL)isLayoutRoleMatchMovedToScene:(int64_t)scene inAppLayout:(id)layout
{
  layoutCopy = layout;
  appLayout = [(SBSplitResizeWindowingModifier *)self appLayout];
  if ([appLayout isOrContainsAppLayout:layoutCopy])
  {
    v8 = 1;
  }

  else
  {
    v10.receiver = self;
    v10.super_class = SBSplitResizeWindowingModifier;
    v8 = [(SBSplitResizeWindowingModifier *)&v10 isLayoutRoleMatchMovedToScene:scene inAppLayout:layoutCopy];
  }

  return v8;
}

- (BOOL)wantsSceneResizesHostedContextForAppLayout:(id)layout
{
  layoutCopy = layout;
  appLayout = [(SBSplitResizeWindowingModifier *)self appLayout];
  if ([appLayout isOrContainsAppLayout:layoutCopy])
  {
    v6 = 1;
  }

  else
  {
    v8.receiver = self;
    v8.super_class = SBSplitResizeWindowingModifier;
    v6 = [(SBSplitResizeWindowingModifier *)&v8 wantsSceneResizesHostedContextForAppLayout:layoutCopy];
  }

  return v6;
}

- (unint64_t)activeCornersForTouchResizeForLayoutRole:(int64_t)role inAppLayout:(id)layout
{
  layoutCopy = layout;
  if (self->_gestureIsEnding || (-[SBSplitResizeWindowingModifier appLayout](self, "appLayout"), v7 = objc_claimAutoreleasedReturnValue(), v8 = [v7 isOrContainsAppLayout:layoutCopy], v7, (v8 & 1) == 0))
  {
    v11.receiver = self;
    v11.super_class = SBSplitResizeWindowingModifier;
    v9 = [(SBSplitResizeWindowingModifier *)&v11 activeCornersForTouchResizeForLayoutRole:role inAppLayout:layoutCopy];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (unint64_t)visibleCornersForTouchResizeForLayoutRole:(int64_t)role inAppLayout:(id)layout
{
  layoutCopy = layout;
  if (self->_gestureIsEnding || (-[SBSplitResizeWindowingModifier appLayout](self, "appLayout"), v7 = objc_claimAutoreleasedReturnValue(), v8 = [v7 isOrContainsAppLayout:layoutCopy], v7, (v8 & 1) == 0))
  {
    v11.receiver = self;
    v11.super_class = SBSplitResizeWindowingModifier;
    v9 = [(SBSplitResizeWindowingModifier *)&v11 visibleCornersForTouchResizeForLayoutRole:role inAppLayout:layoutCopy];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)animationAttributesForLayoutElement:(id)element
{
  v8.receiver = self;
  v8.super_class = SBSplitResizeWindowingModifier;
  v4 = [(SBWindowingModifier *)&v8 animationAttributesForLayoutElement:element];
  v5 = [v4 mutableCopy];

  if (self->_gestureIsEnding)
  {
    [v5 setUpdateMode:3];
    [v5 setLayoutUpdateMode:3];
    [v5 setPositionUpdateMode:3];
    [v5 setScaleUpdateMode:3];
  }

  else
  {
    [v5 setUpdateMode:5];
  }

  _animationSettingsForLayout = [(SBSplitResizeWindowingModifier *)self _animationSettingsForLayout];
  [v5 setLayoutSettings:_animationSettingsForLayout];
  [v5 setPositionSettings:_animationSettingsForLayout];
  [v5 setScaleSettings:_animationSettingsForLayout];

  return v5;
}

- (id)layoutRestrictionInfoForItem:(id)item
{
  itemCopy = item;
  v11.receiver = self;
  v11.super_class = SBSplitResizeWindowingModifier;
  v5 = [(SBSplitResizeWindowingModifier *)&v11 layoutRestrictionInfoForItem:itemCopy];
  layoutRestrictions = [v5 layoutRestrictions];
  if ((layoutRestrictions & 0xA) != 0)
  {
    v7 = layoutRestrictions;
    v8 = [(SBSplitResizeWindowingModifier *)self supportedContentInterfaceOrientationsForItem:itemCopy];
    if ((v8 & 6) != 0 && (v8 & 0x18) != 0)
    {
      [v5 restrictedSize];
      v9 = [SBDisplayItemGridLayoutRestrictionInfo layoutRestrictionInfoWithLayoutRestrictions:v7 & 0xFFFFFFFFFFFFFFF7 restrictedSize:?];

      v5 = v9;
    }
  }

  return v5;
}

- (id)_animationSettingsForLayout
{
  switcherSettings = [(SBSplitResizeWindowingModifier *)self switcherSettings];
  windowingSettings = [switcherSettings windowingSettings];
  splitResizeAnimationSettings = [windowingSettings splitResizeAnimationSettings];

  return splitResizeAnimationSettings;
}

- (unint64_t)hiddenContentStatusBarPartsForLayoutRole:(int64_t)role inAppLayout:(id)layout
{
  v17.receiver = self;
  v17.super_class = SBSplitResizeWindowingModifier;
  layoutCopy = layout;
  v7 = [(SBSplitResizeWindowingModifier *)&v17 hiddenContentStatusBarPartsForLayoutRole:role inAppLayout:layoutCopy];
  v8 = [(SBSplitResizeWindowingModifier *)self appLayout:v17.receiver];
  v9 = [layoutCopy itemForLayoutRole:role];

  if ([v8 containsItem:v9])
  {
    v10 = [(SBWindowingModifier *)self flexibleAutoLayoutSpaceForAppLayout:v8];
    v11 = [v10 flexibleAutoLayoutItemForDisplayItem:v9];
    if ([v11 ownedDisplayRectCorners])
    {
      isRTLEnabled = [(SBSplitResizeWindowingModifier *)self isRTLEnabled];
      v13 = 2;
      if (isRTLEnabled)
      {
        v13 = 8;
      }

      v7 |= v13;
    }

    if (([v11 ownedDisplayRectCorners] & 2) != 0)
    {
      isRTLEnabled2 = [(SBSplitResizeWindowingModifier *)self isRTLEnabled];
      v15 = 8;
      if (isRTLEnabled2)
      {
        v15 = 2;
      }

      v7 |= v15;
    }
  }

  return v7;
}

- (CGRect)frameForSplitViewHandleNubView:(id)view
{
  v21.receiver = self;
  v21.super_class = SBSplitResizeWindowingModifier;
  viewCopy = view;
  [(SBSplitResizeWindowingModifier *)&v21 frameForSplitViewHandleNubView:viewCopy];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  splitPairAppLayout = self->_splitPairAppLayout;
  displayItems = [viewCopy displayItems];

  bs_set = [displayItems bs_set];
  LODWORD(splitPairAppLayout) = [(SBAppLayout *)splitPairAppLayout containsAllItemsFromSet:bs_set];

  if (splitPairAppLayout)
  {
    if (self->_gestureIsEnding)
    {
      p_currentLeftAppSceneSize = &self->_currentLeftAppSceneSize;
    }

    else
    {
      p_currentLeftAppSceneSize = &self->_leftAppRubberbandedFrame.size;
    }

    v6 = self->_leftAppRubberbandedFrame.origin.x + p_currentLeftAppSceneSize->width;
  }

  v17 = v6;
  v18 = v8;
  v19 = v10;
  v20 = v12;
  result.size.height = v20;
  result.size.width = v19;
  result.origin.y = v18;
  result.origin.x = v17;
  return result;
}

- (CGRect)frameForSplitViewHandleDimmingView:(id)view
{
  v25.receiver = self;
  v25.super_class = SBSplitResizeWindowingModifier;
  viewCopy = view;
  [(SBSplitResizeWindowingModifier *)&v25 frameForSplitViewHandleDimmingView:viewCopy];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  splitPairAppLayout = self->_splitPairAppLayout;
  displayItems = [viewCopy displayItems];

  bs_set = [displayItems bs_set];
  LODWORD(splitPairAppLayout) = [(SBAppLayout *)splitPairAppLayout containsAllItemsFromSet:bs_set];

  if (splitPairAppLayout)
  {
    windowingConfiguration = [(SBWindowingModifier *)self windowingConfiguration];
    [windowingConfiguration stageInterItemSpacing];
    v18 = v17;
    [windowingConfiguration splitViewHandleDimmingWidth];
    if (self->_gestureIsEnding)
    {
      p_currentLeftAppSceneSize = &self->_currentLeftAppSceneSize;
    }

    else
    {
      p_currentLeftAppSceneSize = &self->_leftAppRubberbandedFrame.size;
    }

    v6 = v18 * 0.5 + self->_leftAppRubberbandedFrame.origin.x + p_currentLeftAppSceneSize->width - v19 * 0.5;
  }

  v21 = v6;
  v22 = v8;
  v23 = v10;
  v24 = v12;
  result.size.height = v24;
  result.size.width = v23;
  result.origin.y = v22;
  result.origin.x = v21;
  return result;
}

- (void)gestureWillBegin:(id)begin
{
  beginCopy = begin;
  gestureID = self->_gestureID;
  v10 = beginCopy;
  gestureID = [beginCopy gestureID];
  v7 = gestureID;
  if (gestureID)
  {
    v8 = [(NSUUID *)gestureID isEqual:gestureID];

    if ((v8 & 1) == 0)
    {
      [(SBWindowingModifier *)self complete];
    }
  }

  else
  {
    v9 = self->_gestureID;
    self->_gestureID = gestureID;
  }

  [(SBSplitResizeWindowingModifier *)self _updateWithGesture:v10];
}

- (void)transitionWillBegin:(id)begin
{
  if (([begin isGestureInitiated] & 1) == 0)
  {

    [(SBWindowingModifier *)self complete];
  }
}

- (void)timerFired:(id)fired
{
  firedCopy = fired;
  delayedSceneSizeUpdateReason = self->_delayedSceneSizeUpdateReason;
  if (delayedSceneSizeUpdateReason)
  {
    v9 = firedCopy;
    reason = [firedCopy reason];
    v7 = [(NSString *)delayedSceneSizeUpdateReason isEqual:reason];

    firedCopy = v9;
    if (v7)
    {
      self->_needsSceneSizeUpdate = 1;
      ++self->_delayedSceneSizeUpdateGeneration;
      v8 = self->_delayedSceneSizeUpdateReason;
      self->_delayedSceneSizeUpdateReason = 0;

      [(SBSplitResizeWindowingModifier *)self _updateWithGesture:self->_lastGestureEvent];
      firedCopy = v9;
    }
  }
}

- (void)_updateWithGesture:(id)gesture
{
  gestureCopy = gesture;
  if ([(SBGestureSwitcherModifierEvent *)gestureCopy phase]== 3)
  {
    isCanceled = 1;
  }

  else
  {
    isCanceled = [(SBGestureSwitcherModifierEvent *)gestureCopy isCanceled];
  }

  self->_gestureIsEnding = isCanceled;
  appLayout = [(SBSplitResizeWindowingModifier *)self appLayout];
  [(SBSplitResizeWindowingModifier *)self containerViewBounds];
  v7 = v6;
  v115 = v8;
  v111 = v9;
  v103 = v10;
  [(SBSplitResizeWindowingModifier *)self screenScale];
  v114 = v11;
  switcherSettings = [(SBSplitResizeWindowingModifier *)self switcherSettings];
  windowingSettings = [switcherSettings windowingSettings];
  v109 = switcherSettings;
  [switcherSettings liveResizeGridRubberbandingRange];
  windowingConfiguration = [(SBWindowingModifier *)self windowingConfiguration];
  v15 = [(SBAppLayout *)self->_splitPairAppLayout itemForLayoutRole:1];
  v16 = [(SBAppLayout *)self->_splitPairAppLayout itemForLayoutRole:2];
  v17 = [(SBWindowingModifier *)self flexibleAutoLayoutSpaceForAppLayout:appLayout];
  v18 = [v17 flexibleAutoLayoutItemForDisplayItem:v15];
  v108 = v17;
  v19 = [v17 flexibleAutoLayoutItemForDisplayItem:v16];
  [v18 position];
  v21 = v20;
  v102 = v22;
  v107 = v18;
  [v18 size];
  v24 = v23;
  v26 = v25;
  v118 = v21 - v23 * 0.5;
  [v19 position];
  v28 = v27;
  v101 = v29;
  v106 = v19;
  [v19 size];
  v31 = v30;
  v113 = v32;
  v33 = v28 - v32 * 0.5;
  [(SBGestureSwitcherModifierEvent *)gestureCopy locationInContainerView];
  x = self->_locationEdgeAdjustment.x;
  y = self->_locationEdgeAdjustment.y;
  if (x == 1.79769313e308 && y == 1.79769313e308)
  {
    self->_initialGrabberMargin = v33 - (v24 + v118);
    x = v24 + v118 + (v33 - (v24 + v118)) * 0.5 - v34;
    self->_locationEdgeAdjustment.x = x;
    self->_locationEdgeAdjustment.y = 0.0;
    y = 0.0;
  }

  v96 = v24;
  v38 = v34 + x;
  if (x == 1.79769313e308 && y == 1.79769313e308)
  {
    self->_initialLocation.x = v38;
    self->_initialLocation.y = v35 + 1.79769313e308;
  }

  v110 = gestureCopy;
  v99 = v33;
  if (self->_gestureIsEnding)
  {
    [(SBGestureSwitcherModifierEvent *)gestureCopy velocityInContainerView];
    if (fabs(v39) > 1000.0)
    {
      v40 = v38 + v39 * 0.075;
      [(SBSplitResizeWindowingModifier *)self bounds];
      v38 = fmax(fmin(v40, v41), 0.0);
    }
  }

  v98 = v38 - self->_initialGrabberMargin * 0.5;
  v42 = [(SBSplitResizeWindowingModifier *)self layoutAttributesForDisplayItem:v15 inAppLayout:appLayout];
  authenticator = [(SBHomeScreenConfigurationServer *)v42 authenticator];

  v44 = [(SBSplitResizeWindowingModifier *)self layoutRestrictionInfoForItem:v15];
  [(SBSplitResizeWindowingModifier *)self minSizeForDisplayItem:v15 inContainerBounds:self->_layoutGrid layoutGrid:v44 layoutRestrictionInfo:authenticator contentOrientation:windowingConfiguration screenScale:v7 windowingConfiguration:v115, v111, v103, v114];
  v105 = v44;
  [(SBSplitResizeWindowingModifier *)self maxSizeForDisplayItem:v15 inContainerBounds:self->_layoutGrid layoutGrid:v44 layoutRestrictionInfo:authenticator contentOrientation:windowingConfiguration screenScale:v7 windowingConfiguration:v115, v111, v103, v114];
  v97 = v113 + v99;
  v100 = v38 + self->_initialGrabberMargin * 0.5;
  v45 = [(SBSplitResizeWindowingModifier *)self layoutAttributesForDisplayItem:v16 inAppLayout:appLayout];
  authenticator2 = [(SBHomeScreenConfigurationServer *)v45 authenticator];

  v47 = [(SBSplitResizeWindowingModifier *)self layoutRestrictionInfoForItem:v16];
  v48 = v103;
  [(SBSplitResizeWindowingModifier *)self minSizeForDisplayItem:v16 inContainerBounds:self->_layoutGrid layoutGrid:v47 layoutRestrictionInfo:authenticator2 contentOrientation:windowingConfiguration screenScale:v7 windowingConfiguration:v115, v111, v103, v114];
  v104 = v47;
  [(SBSplitResizeWindowingModifier *)self maxSizeForDisplayItem:v16 inContainerBounds:self->_layoutGrid layoutGrid:v47 layoutRestrictionInfo:authenticator2 contentOrientation:windowingConfiguration screenScale:v7 windowingConfiguration:v115, v111, v48, v114];
  UISizeRoundToScale();
  v50 = v49;
  v116 = v51;
  UISizeRoundToScale();
  v53 = v52;
  v112 = v54;
  v55 = v97 - v52;
  v56 = v118 + v50;
  if (v98 <= v118 + v50)
  {
    if (v98 < v118 + v50)
    {
      BSUIConstrainValueWithRubberBand();
      v56 = v56 - v58;
    }
  }

  else
  {
    BSUIConstrainValueWithRubberBand();
    v56 = v56 + v57;
  }

  v59 = v56 - v118;
  if (v100 <= v55)
  {
    v61 = v55;
    if (v100 < v55)
    {
      BSUIConstrainValueWithRubberBand();
      v61 = v55 - v62;
    }
  }

  else
  {
    BSUIConstrainValueWithRubberBand();
    v61 = v55 + v60;
  }

  self->_leftAppRubberbandedFrame.origin.x = v118;
  self->_leftAppRubberbandedFrame.origin.y = v102 - v26 * 0.5;
  self->_leftAppRubberbandedFrame.size.width = v59;
  self->_leftAppRubberbandedFrame.size.height = v26;
  self->_rightAppRubberbandedFrame.origin.x = v61;
  self->_rightAppRubberbandedFrame.origin.y = v101 - v31 * 0.5;
  self->_rightAppRubberbandedFrame.size.width = v97 - v61;
  self->_rightAppRubberbandedFrame.size.height = v31;
  p_currentLeftAppSceneSize = &self->_currentLeftAppSceneSize;
  if (self->_currentLeftAppSceneSize.width == 1.79769313e308 && self->_currentLeftAppSceneSize.height == 1.79769313e308)
  {
    p_currentLeftAppSceneSize->width = v96;
    self->_currentLeftAppSceneSize.height = v26;
  }

  p_currentRightAppSceneSize = &self->_currentRightAppSceneSize;
  if (self->_currentRightAppSceneSize.width == 1.79769313e308 && self->_currentRightAppSceneSize.height == 1.79769313e308)
  {
    p_currentRightAppSceneSize->width = v113;
    self->_currentRightAppSceneSize.height = v31;
  }

  [windowingSettings liveResizeSceneUpdateDistanceThreshold];
  v66 = v65;
  v67 = hypot(vabdd_f64(p_currentLeftAppSceneSize->width, v50), vabdd_f64(self->_currentLeftAppSceneSize.height, v116));
  if (v67 >= v66 || self->_needsSceneSizeUpdate || self->_gestureIsEnding)
  {
    p_currentLeftAppSceneSize->width = v50;
    self->_currentLeftAppSceneSize.height = v116;
    v68 = 1;
  }

  else
  {
    v68 = 0;
  }

  v69 = v112;
  v70 = hypot(vabdd_f64(p_currentRightAppSceneSize->width, v53), vabdd_f64(self->_currentRightAppSceneSize.height, v112));
  v71 = windowingSettings;
  if (v70 >= v66)
  {
    gestureIsEnding = self->_gestureIsEnding;
    p_currentRightAppSceneSize->width = v53;
  }

  else
  {
    gestureIsEnding = self->_gestureIsEnding;
    if (!self->_needsSceneSizeUpdate && !self->_gestureIsEnding)
    {
      v73 = 0;
      v69 = v112;
      goto LABEL_39;
    }

    p_currentRightAppSceneSize->width = v53;
    v69 = v112;
  }

  self->_currentRightAppSceneSize.height = v69;
  if (gestureIsEnding)
  {
LABEL_40:
    self->_needsSceneSizeUpdate = 0;
    UIRectGetCenter();
    v77 = [(SBSplitResizeWindowingModifier *)self _responseForItem:v15 sceneSizeUpdateToSize:v50 center:v116, v75, v76];
    [(SBWindowingModifier *)self appendResponse:v77];
    UIRectGetCenter();
    v80 = [(SBSplitResizeWindowingModifier *)self _responseForItem:v16 sceneSizeUpdateToSize:v53 center:v69, v78, v79];
    [(SBWindowingModifier *)self appendResponse:v80];
    v81 = [(SBSwitcherTransitionRequest *)SBMutableSwitcherTransitionRequest requestForActivatingAppLayout:appLayout];
    [v81 setSceneUpdatesOnly:!self->_gestureIsEnding];
    switcherSettings2 = [(SBSplitResizeWindowingModifier *)self switcherSettings];
    liveResizeSendsAnimatedSceneSizeUpdates = [switcherSettings2 liveResizeSendsAnimatedSceneSizeUpdates];

    if (liveResizeSendsAnimatedSceneSizeUpdates)
    {
      _animationSettingsForLayout = [(SBSplitResizeWindowingModifier *)self _animationSettingsForLayout];
      [v81 setAnimationSettings:_animationSettingsForLayout];
    }

    v85 = [[SBPerformTransitionSwitcherEventResponse alloc] initWithTransitionRequest:v81 gestureInitiated:1];
    [(SBWindowingModifier *)self appendResponse:v85];

    ++self->_delayedSceneSizeUpdateGeneration;
    delayedSceneSizeUpdateReason = self->_delayedSceneSizeUpdateReason;
    self->_delayedSceneSizeUpdateReason = 0;

    goto LABEL_43;
  }

  v73 = 1;
LABEL_39:
  v74 = [[SBUpdateLayoutSwitcherEventResponse alloc] initWithOptions:64 updateMode:0];
  [(SBWindowingModifier *)self appendResponse:v74];

  if ((v68 | v73) == 1)
  {
    goto LABEL_40;
  }

  if (v67 >= v70)
  {
    v88 = v67;
  }

  else
  {
    v88 = v70;
  }

  [(SBSplitResizeWindowingModifier *)self screenScale];
  if (v88 < 1.0 / v89 || self->_delayedSceneSizeUpdateReason)
  {
    goto LABEL_44;
  }

  ++self->_delayedSceneSizeUpdateGeneration;
  v90 = MEMORY[0x277CCACA8];
  v91 = objc_opt_class();
  v92 = NSStringFromClass(v91);
  v93 = [v90 stringWithFormat:@"%@-DelayedSceneUpdate-%ld", v92, self->_delayedSceneSizeUpdateGeneration];
  v94 = self->_delayedSceneSizeUpdateReason;
  self->_delayedSceneSizeUpdateReason = v93;

  v95 = [SBTimerEventSwitcherEventResponse alloc];
  [v71 liveResizeSceneUpdateTimeThreshold];
  v77 = [(SBTimerEventSwitcherEventResponse *)v95 initWithDelay:0 validator:self->_delayedSceneSizeUpdateReason reason:?];
  [(SBWindowingModifier *)self appendResponse:v77];
LABEL_43:

LABEL_44:
  lastGestureEvent = self->_lastGestureEvent;
  self->_lastGestureEvent = v110;
}

- (id)_responseForItem:(id)item sceneSizeUpdateToSize:(CGSize)size center:(CGPoint)center
{
  y = center.y;
  x = center.x;
  height = size.height;
  width = size.width;
  itemCopy = item;
  appLayout = [(SBSplitResizeWindowingModifier *)self appLayout];
  [(SBSplitResizeWindowingModifier *)self containerViewBounds];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v20 = [(SBSplitResizeWindowingModifier *)self layoutAttributesForDisplayItem:itemCopy inAppLayout:appLayout];
  windowingConfiguration = [(SBWindowingModifier *)self windowingConfiguration];
  v22 = [(SBDisplayItemLayoutAttributes *)x normalizedPointForPoint:v13 inBounds:v15, v17, v19];
  v24 = [(SBDisplayItemLayoutAttributes *)v20 attributesByModifyingNormalizedCenter:v22, v23];

  v25 = [(SBDisplayItemLayoutAttributes *)v24 attributesByModifyingPositionIsSystemManaged:?];

  [(SBDisplayItemLayoutAttributes *)v25 tileConfiguration];
  if (SBDisplayItemTileConfigurationIsValid(v41))
  {
    SBDisplayItemTileConfigurationMakeNotTiled(v41);
    v26 = [SBDisplayItemLayoutAttributes attributesByModifyingTileConfiguration:v25];

    v25 = v26;
  }

  v42 = 0;
  memset(v41, 0, sizeof(v41));
  [windowingConfiguration defaultWindowSize];
  [windowingConfiguration screenEdgePadding];
  v40 = v27;
  SBDisplayItemAttributedSizeInfer(v41, width, height, v13, v15, v17, v19);
  v28 = [SBDisplayItemLayoutAttributes attributesByModifyingAttributedSize:v25];

  v29 = [SBDisplayItemLayoutAttributes attributesByModifyingAttributedUserSizeBeforeOverlapping:v28];

  v30 = [(SBSplitResizeWindowingModifier *)self supportedSizingPoliciesForItem:itemCopy inAppLayout:appLayout, v40];
  v31 = SBDisplayItemSizingPolicyAllowingLargestSize(v30);
  SBDisplayItemSizingPolicyAllowingSmallestSize(v30);
  if (v31 == 1)
  {
    windowingConfiguration2 = [(SBWindowingModifier *)self windowingConfiguration];
    [windowingConfiguration2 screenEdgePadding];
    v34 = v33;

    v44.origin.x = v13;
    v44.origin.y = v15;
    v44.size.width = v17;
    v44.size.height = v19;
    CGRectInset(v44, v34, v34);
    if ((BSFloatEqualToFloat() & 1) == 0)
    {
      BSFloatEqualToFloat();
    }
  }

  v35 = [SBDisplayItemLayoutAttributes attributesByModifyingSizingPolicy:v29];

  [(SBSplitResizeWindowingModifier *)self updateLayoutAttributes:v35 ofDisplayItem:itemCopy];
  v36 = [(SBSplitResizeWindowingModifier *)self layoutRestrictionInfoForItem:itemCopy];
  if (([v36 layoutRestrictions] & 0xA) == 2)
  {
    if (width <= height)
    {
      v37 = 1;
    }

    else
    {
      v37 = 3;
    }

    v38 = [[SBSetInterfaceOrientationFromUserResizingEventResponse alloc] initWithDisplayItem:itemCopy desiredContentOrientation:v37];
  }

  else
  {
    v38 = 0;
  }

  return v38;
}

- (BOOL)_appLayoutContainsFullScreenDisplayItem:(id)item
{
  itemCopy = item;
  allItems = [itemCopy allItems];
  v6 = [allItems count];

  if (v6 == 1)
  {
    appLayouts = [(SBSplitResizeWindowingModifier *)self appLayouts];
    v8 = [appLayouts indexOfObject:itemCopy];
    if (v8 == 0x7FFFFFFFFFFFFFFFLL)
    {
      [(SBSplitResizeWindowingModifier *)self containerViewBounds];
    }

    else
    {
      v10 = v8;
      [(SBWindowingModifier *)self frameForIndex:v8];
      [(SBWindowingModifier *)self scaleForIndex:v10];
    }

    SBRectWithSize();
    [(SBSplitResizeWindowingModifier *)self frameForLayoutRole:1 inAppLayout:itemCopy withBounds:?];
    [(SBSplitResizeWindowingModifier *)self scaleForLayoutRole:1 inAppLayout:itemCopy];
    windowManagementContext = [(SBSplitResizeWindowingModifier *)self windowManagementContext];
    if ([windowManagementContext isFlexibleWindowingEnabled])
    {
      [(SBSplitResizeWindowingModifier *)self containerViewBounds];
      UIRectGetCenter();
      v13 = v12;
      v15 = v14;
      UIRectGetCenter();
      v18 = v15 == v17 && v13 == v16;
    }

    else
    {
      v18 = 1;
    }

    [(SBSplitResizeWindowingModifier *)self containerViewBounds];
    v9 = BSSizeEqualToSize() & v18;
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9;
}

- (void)initWithSplitPairAppLayout:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBSplitResizeWindowingModifier.m" lineNumber:51 description:{@"Invalid parameter not satisfying: %@", @"splitPairAppLayout"}];
}

- (void)initWithSplitPairAppLayout:(uint64_t)a1 .cold.2(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBSplitResizeWindowingModifier.m" lineNumber:55 description:@"expected an app layout containing exactly the split pair to resize."];
}

@end