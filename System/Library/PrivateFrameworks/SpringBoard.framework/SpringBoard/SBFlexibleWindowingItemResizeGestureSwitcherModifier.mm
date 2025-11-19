@interface SBFlexibleWindowingItemResizeGestureSwitcherModifier
- (BOOL)_isStripVisibleForCurrentAppLayout;
- (BOOL)isContentStatusBarVisibleForIndex:(unint64_t)a3;
- (BOOL)isItemResizingAllowedForLayoutRole:(int64_t)a3 inAppLayout:(id)a4;
- (BOOL)shouldConfigureInAppDockHiddenAssertion;
- (BOOL)wantsDockBehaviorAssertion;
- (BOOL)wantsSceneResizesHostedContextForAppLayout:(id)a3;
- (CGRect)_convertToSpaceRectFromScreenRect:(CGRect)a3;
- (CGRect)_initialScaledFrameInScreenCoordinatesForSelectedDisplayItemInAppLayout:(id)a3;
- (CGRect)frameForLayoutRole:(int64_t)a3 inAppLayout:(id)a4 withBounds:(CGRect)a5;
- (SBFlexibleWindowingItemResizeGestureSwitcherModifier)initWithGestureID:(id)a3;
- (UIRectCornerRadii)cornerRadiiForIndex:(unint64_t)a3;
- (UIRectCornerRadii)cornerRadiiForLayoutRole:(int64_t)a3 inAppLayout:(id)a4 withCornerRadii:(UIRectCornerRadii)a5;
- (double)_dockProgressForResizingWindow;
- (double)dockProgress;
- (double)homeScreenDimmingAlpha;
- (id)_animationSettingsForLayout;
- (id)_responseForGestureUpdateAtGestureEnd:(BOOL)a3;
- (id)_responseForSceneSizeUpdateToSize:(CGSize)a3 center:(CGPoint)a4 sceneUpdatesOnly:(BOOL)a5 animated:(BOOL)a6;
- (id)animationAttributesForLayoutElement:(id)a3;
- (id)handleGestureEvent:(id)a3;
- (id)handleSceneReadyEvent:(id)a3;
- (id)handleTimerEvent:(id)a3;
- (id)handleTransitionEvent:(id)a3;
- (id)layoutRestrictionInfoForItem:(id)a3;
- (id)topMostLayoutElements;
- (id)topMostLayoutRolesForAppLayout:(id)a3;
- (id)visibleSplitViewHandleDimmingViews;
- (id)visibleSplitViewHandleNubViews;
- (int64_t)occlusionStateForLayoutRole:(int64_t)a3 inAppLayout:(id)a4;
- (unint64_t)activeCornersForTouchResizeForLayoutRole:(int64_t)a3 inAppLayout:(id)a4;
- (unint64_t)hiddenContentStatusBarPartsForLayoutRole:(int64_t)a3 inAppLayout:(id)a4;
- (unint64_t)maskedCornersForLayoutRole:(int64_t)a3 inAppLayout:(id)a4 withMaskedCorners:(unint64_t)a5;
- (unint64_t)visibleCornersForTouchResizeForLayoutRole:(int64_t)a3 inAppLayout:(id)a4;
@end

@implementation SBFlexibleWindowingItemResizeGestureSwitcherModifier

- (SBFlexibleWindowingItemResizeGestureSwitcherModifier)initWithGestureID:(id)a3
{
  v9.receiver = self;
  v9.super_class = SBFlexibleWindowingItemResizeGestureSwitcherModifier;
  v3 = [(SBGestureSwitcherModifier *)&v9 initWithGestureID:a3];
  if (v3)
  {
    v4 = objc_alloc_init(SBDisplayItemLayoutGrid);
    layoutGrid = v3->_layoutGrid;
    v3->_layoutGrid = v4;

    v6 = objc_alloc_init(SBFlexibleWindowingAutoLayoutController);
    autoLayoutController = v3->_autoLayoutController;
    v3->_autoLayoutController = v6;

    v3->_delayedSceneSizeUpdateGeneration = arc4random();
  }

  return v3;
}

- (id)handleGestureEvent:(id)a3
{
  v5 = a3;
  v97.receiver = self;
  v97.super_class = SBFlexibleWindowingItemResizeGestureSwitcherModifier;
  v6 = [(SBGestureSwitcherModifier *)&v97 handleGestureEvent:v5];
  p_location = &self->_location;
  [(SBGestureSwitcherModifierEvent *)v5 locationInContainerView];
  self->_location.x = v8;
  self->_location.y = v9;
  if ([(SBGestureSwitcherModifierEvent *)v5 phase]== 1)
  {
    v89 = v6;
    v10 = objc_opt_class();
    v11 = SBSafeCast(v10, v5);
    v12 = [v11 selectedAppLayout];
    if (!v12)
    {
      [(SBFlexibleWindowingItemResizeGestureSwitcherModifier *)a2 handleGestureEvent:?];
    }

    objc_storeStrong(&self->_currentAppLayout, v12);
    self->_selectedLayoutRole = [v11 selectedLayoutRole];
    v88 = v11;
    self->_selectedEdge = [v11 selectedEdge];
    v13 = [(SBAppLayout *)self->_currentAppLayout itemForLayoutRole:self->_selectedLayoutRole];
    selectedDisplayItem = self->_selectedDisplayItem;
    self->_selectedDisplayItem = v13;

    v15 = [(SBFlexibleWindowingItemResizeGestureSwitcherModifier *)self layoutRestrictionInfoForItem:self->_selectedDisplayItem];
    layoutRestrictionInfoForSelectedItem = self->_layoutRestrictionInfoForSelectedItem;
    self->_layoutRestrictionInfoForSelectedItem = v15;

    v17 = [SBPinDesktopSpaceDisplayItemsSwitcherModifier modifierForGestureWithSelectedDisplayItem:self->_selectedDisplayItem context:self];
    if (v17)
    {
      [(SBChainableModifier *)self addChildModifier:v17];
    }

    v86 = v17;
    v87 = v12;
    p_initialFrameInScreenCoordinates = &self->_initialFrameInScreenCoordinates;
    [(SBFlexibleWindowingItemResizeGestureSwitcherModifier *)self _initialScaledFrameInScreenCoordinatesForSelectedDisplayItemInAppLayout:v12];
    self->_initialFrameInScreenCoordinates.origin.x = v19;
    self->_initialFrameInScreenCoordinates.origin.y = v20;
    self->_initialFrameInScreenCoordinates.size.width = v21;
    self->_initialFrameInScreenCoordinates.size.height = v22;
    UIRectGetCenter();
    self->_effectiveInitialPositionY = v23;
    v85 = [(SBSwitcherModifier *)self flexibleAutoLayoutSpaceForAppLayout:self->_currentAppLayout];
    v24 = [v85 flexibleAutoLayoutItemForDisplayItem:self->_selectedDisplayItem];
    self->_resizedDisplayItemIntersectsHomeAffordanceArea = [(SBSwitcherModifier *)self autoLayoutItemIntersectsHomeAffordanceArea:v24];
    [(SBFlexibleWindowingItemResizeGestureSwitcherModifier *)self containerViewBounds];
    v26 = v25;
    v28 = v27;
    v30 = v29;
    v32 = v31;
    v90 = [(SBSwitcherModifier *)self windowingConfiguration];
    self->_selectedItemWasInitiallyInDefaultPosition = [v24 positionIsSystemManaged];
    v33 = [(SBFlexibleWindowingItemResizeGestureSwitcherModifier *)self displayItemInSlideOver];
    self->_selectedItemIsInSlideOver = BSEqualObjects();

    if (self->_selectedItemIsInSlideOver)
    {
      v34 = [(SBFlexibleWindowingItemResizeGestureSwitcherModifier *)self layoutAttributesForDisplayItem:self->_selectedDisplayItem inAppLayout:self->_currentAppLayout];
      [(SBDisplayItemLayoutAttributes *)v34 slideOverConfiguration];
      v35 = v96[0] > 1;
      self->_inLeftPinnedSlideOver = v96[0] < 2;
      self->_inRightPinnedSlideOver = v35;
    }

    self->_dockAwareIfCenterAnchored = 0;
    if (([(SBFlexibleWindowingItemResizeGestureSwitcherModifier *)self prefersDockHidden]& 1) == 0)
    {
      v36 = [(SBAppLayout *)self->_currentAppLayout allItems];
      v37 = [v36 count];

      if (v37 == 1)
      {
        self->_dockAwareIfCenterAnchored = 1;
      }

      else
      {
        currentAppLayout = self->_currentAppLayout;
        v95[0] = MEMORY[0x277D85DD0];
        v95[1] = 3221225472;
        v95[2] = __75__SBFlexibleWindowingItemResizeGestureSwitcherModifier_handleGestureEvent___block_invoke;
        v95[3] = &unk_2783A8C90;
        v95[4] = self;
        v39 = [(SBAppLayout *)currentAppLayout appLayoutWithItemsPassingTest:v95];
        v40 = [(SBFlexibleWindowingItemResizeGestureSwitcherModifier *)self displayItemLayoutAttributesCalculator];
        v84 = [(SBFlexibleWindowingItemResizeGestureSwitcherModifier *)self switcherInterfaceOrientation];
        [(SBFlexibleWindowingItemResizeGestureSwitcherModifier *)self floatingDockHeight];
        v83 = v41;
        [(SBFlexibleWindowingItemResizeGestureSwitcherModifier *)self screenScale];
        v81 = v42;
        v82 = [(SBFlexibleWindowingItemResizeGestureSwitcherModifier *)self isDisplayEmbedded];
        v43 = [(SBFlexibleWindowingItemResizeGestureSwitcherModifier *)self prefersStripHidden];
        [(SBFlexibleWindowingItemResizeGestureSwitcherModifier *)self leftStatusBarPartIntersectionRegion];
        v45 = v44;
        v47 = v46;
        v49 = v48;
        v50 = v28;
        v52 = v51;
        [(SBFlexibleWindowingItemResizeGestureSwitcherModifier *)self rightStatusBarPartIntersectionRegion];
        v57 = [v40 flexibleWindowingAutoLayoutSpaceForAppLayout:v39 containerOrientation:v84 floatingDockHeight:v82 screenScale:v43 bounds:0 isEmbeddedDisplay:v83 prefersStripHidden:v81 prefersDockHidden:v26 leftStatusBarPartIntersectionRegion:v50 rightStatusBarPartIntersectionRegion:{v30, v32, v45, v47, v49, v52, v53, v54, v55, v56}];

        [v57 boundingBox];
        v60 = v58 + v59;
        [v90 floatingDockHeightWithTopAndBottomPadding];
        self->_dockAwareIfCenterAnchored = v60 <= v32 - v61;
      }
    }

    size = self->_initialFrameInScreenCoordinates.size;
    self->_currentFrameForDrawingInScreenCoordinates.origin = p_initialFrameInScreenCoordinates->origin;
    self->_currentFrameForDrawingInScreenCoordinates.size = size;
    self->_currentSceneSize = self->_initialFrameInScreenCoordinates.size;
    selectedLayoutRole = self->_selectedLayoutRole;
    v64 = self->_currentAppLayout;
    v94.receiver = self;
    v94.super_class = SBFlexibleWindowingItemResizeGestureSwitcherModifier;
    self->_currentActiveResizeCorner = [(SBFlexibleWindowingItemResizeGestureSwitcherModifier *)&v94 activeCornersForTouchResizeForLayoutRole:selectedLayoutRole inAppLayout:v64];
    v65 = -0.0;
    if (p_initialFrameInScreenCoordinates->origin.x < 0.0)
    {
      v65 = -p_initialFrameInScreenCoordinates->origin.x;
    }

    self->_amountInitiallyOffScreenToLeft = v65;
    self->_amountInitiallyOffScreenToRight = fmax(self->_initialFrameInScreenCoordinates.origin.x + self->_initialFrameInScreenCoordinates.size.width - v30, 0.0);
    self->_amountInitiallyOffScreenToBottom = fmax(self->_initialFrameInScreenCoordinates.origin.y + self->_initialFrameInScreenCoordinates.size.height - v32, 0.0);
    if ([(SBAppLayout *)self->_currentAppLayout containsItem:self->_selectedDisplayItem])
    {
      v66 = [(SBAppLayout *)self->_currentAppLayout leafAppLayoutForItem:self->_selectedDisplayItem];
      v91.receiver = self;
      v91.super_class = SBFlexibleWindowingItemResizeGestureSwitcherModifier;
      [(SBFlexibleWindowingItemResizeGestureSwitcherModifier *)&v91 windowControlsLayoutForLeafAppLayout:v66];
      v67 = v93;
      *&self->_currentWindowControlsLayout.style = v92;
      self->_currentWindowControlsLayout.margin = v67;
    }

    self->_resizeAnchor = 0;
    v68 = [(SBGestureSwitcherModifierEvent *)v5 modifierFlags];
    self->_needsCenterAnchoringPerOptionModifier = (v68 & 0x80000) != 0;
    if ((v68 & 0x80000) == 0 && !self->_selectedItemWasInitiallyInDefaultPosition)
    {
      v69 = self->_selectedEdge - 3;
      if (v69 <= 5)
      {
        self->_resizeAnchor = qword_21F8A8448[v69];
      }
    }

    self->_locationEdgeAdjustment = *MEMORY[0x277CBF348];
    selectedEdge = self->_selectedEdge;
    if (selectedEdge > 3)
    {
      if ((selectedEdge - 5) >= 2)
      {
        if ((selectedEdge - 7) >= 2)
        {
          if (selectedEdge == 4)
          {
            goto LABEL_36;
          }

          goto LABEL_38;
        }

        goto LABEL_28;
      }
    }

    else if (selectedEdge != 1)
    {
      if (selectedEdge != 2)
      {
        if (selectedEdge != 3)
        {
          goto LABEL_38;
        }

        goto LABEL_34;
      }

LABEL_28:
      y = self->_initialFrameInScreenCoordinates.origin.y + self->_initialFrameInScreenCoordinates.size.height;
      goto LABEL_30;
    }

    y = self->_initialFrameInScreenCoordinates.origin.y;
LABEL_30:
    self->_locationEdgeAdjustment.y = y - self->_location.y;
    if (selectedEdge <= 8)
    {
      if (((1 << selectedEdge) & 0xA8) != 0)
      {
LABEL_34:
        x = p_initialFrameInScreenCoordinates->origin.x;
LABEL_37:
        self->_locationEdgeAdjustment.x = x - p_location->f64[0];
        goto LABEL_38;
      }

      if (((1 << selectedEdge) & 0x150) == 0)
      {
        goto LABEL_38;
      }

LABEL_36:
      x = p_initialFrameInScreenCoordinates->origin.x + self->_initialFrameInScreenCoordinates.size.width;
      goto LABEL_37;
    }

LABEL_38:
    v73 = objc_alloc_init(SBDismissMenuBarSwitcherEventResponse);
    v6 = SBAppendSwitcherModifierResponse(v73, v89);
  }

  *p_location = vaddq_f64(*p_location, self->_locationEdgeAdjustment);
  [(SBFlexibleWindowingItemResizeGestureSwitcherModifier *)self containerViewBounds];
  v74 = vmaxnmq_f64(*p_location, 0);
  v76.f64[1] = v75;
  *p_location = vbslq_s8(vcgtq_f64(v76, v74), v74, v76);
  v77 = [(SBFlexibleWindowingItemResizeGestureSwitcherModifier *)self _responseForGestureUpdateAtGestureEnd:[(SBGestureSwitcherModifierEvent *)v5 phase]== 3];
  v78 = SBAppendSwitcherModifierResponse(v77, v6);

  lastGestureEvent = self->_lastGestureEvent;
  self->_lastGestureEvent = v5;

  return v78;
}

- (id)_responseForGestureUpdateAtGestureEnd:(BOOL)a3
{
  v205 = a3;
  v225.receiver = self;
  v225.super_class = SBFlexibleWindowingItemResizeGestureSwitcherModifier;
  [(SBFlexibleWindowingItemResizeGestureSwitcherModifier *)&v225 containerViewBounds];
  v5 = v4;
  v7 = v6;
  v207 = v8;
  v208 = v9;
  v10 = [(SBSwitcherModifier *)self windowingConfiguration];
  v11 = [(SBFlexibleWindowingItemResizeGestureSwitcherModifier *)self switcherSettings];
  v204 = [v11 windowingSettings];

  width = self->_initialFrameInScreenCoordinates.size.width;
  height = self->_initialFrameInScreenCoordinates.size.height;
  UIRectGetCenter();
  v197 = v12;
  v203 = v13;
  v14 = [SBContinuousExposeAutoLayoutConfiguration alloc];
  [(SBFlexibleWindowingItemResizeGestureSwitcherModifier *)self screenScale];
  v16 = v15;
  [(SBFlexibleWindowingItemResizeGestureSwitcherModifier *)self floatingDockHeight];
  v18 = v17;
  [(SBFlexibleWindowingItemResizeGestureSwitcherModifier *)self leftStatusBarPartIntersectionRegion];
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;
  [(SBFlexibleWindowingItemResizeGestureSwitcherModifier *)self rightStatusBarPartIntersectionRegion];
  v192 = v27;
  v191 = v26;
  v28 = v5;
  v29 = v5;
  v30 = v7;
  v195 = v10;
  v202 = [(SBContinuousExposeAutoLayoutConfiguration *)v14 initWithContainerBounds:v10 screenScale:v29 dockHeightWithBottomEdgePadding:v7 leftStatusBarPartIntersectionRegion:v207 rightStatusBarPartIntersectionRegion:v208 windowingConfiguration:v16, v18, v20, v22, v24, v191, v192, v31, v32, v33];
  v201 = [(SBSwitcherModifier *)self flexibleAutoLayoutSpaceForAppLayout:self->_currentAppLayout];
  v206 = [v201 flexibleAutoLayoutItemForDisplayItem:self->_selectedDisplayItem];
  v34 = [(SBFlexibleWindowingItemResizeGestureSwitcherModifier *)self layoutAttributesForDisplayItem:self->_selectedDisplayItem inAppLayout:self->_currentAppLayout];
  v35 = [(SBHomeScreenConfigurationServer *)v34 authenticator];

  resizeAnchor = self->_resizeAnchor;
  v37 = resizeAnchor == 2;
  selectedEdge = self->_selectedEdge;
  v39 = resizeAnchor == 1;
  if (resizeAnchor == 1)
  {
    v40 = width;
    v41 = width;
    v42 = v28;
    v43 = height;
    if (self->_inRightPinnedSlideOver)
    {
      goto LABEL_17;
    }

    v46 = v197 + width * -0.5;
    x = self->_location.x;
    goto LABEL_16;
  }

  if (resizeAnchor)
  {
    v40 = width;
    v41 = width;
    v42 = v28;
    v43 = height;
    if (resizeAnchor != 2)
    {
      goto LABEL_17;
    }

    v41 = width;
    if (self->_inLeftPinnedSlideOver)
    {
      goto LABEL_17;
    }

    v46 = self->_location.x;
    x = width * 0.5 + v197;
LABEL_16:
    v41 = x - v46;
    goto LABEL_17;
  }

  v40 = width;
  v41 = width;
  v42 = v28;
  v43 = height;
  if (selectedEdge > 8)
  {
    goto LABEL_17;
  }

  if (((1 << selectedEdge) & 0xA8) != 0)
  {
    v46 = self->_location.x;
    x = v197 + v197 - v46;
    amountInitiallyOffScreenToRight = self->_amountInitiallyOffScreenToRight;
    if (x > v28 + v207 + amountInitiallyOffScreenToRight)
    {
      x = v28 + v207 + amountInitiallyOffScreenToRight;
    }

    goto LABEL_16;
  }

  v41 = width;
  if (((1 << selectedEdge) & 0x150) != 0)
  {
    v44 = self->_location.x;
    v45 = v197 - (v44 - v197);
    if (v45 < -self->_amountInitiallyOffScreenToLeft)
    {
      v45 = -self->_amountInitiallyOffScreenToLeft;
    }

    v41 = v44 - v45;
  }

LABEL_17:
  v193 = v35;
  v49 = 0;
  if (selectedEdge - 5 > 0xFFFFFFFFFFFFFFFDLL)
  {
    v50 = 0;
LABEL_28:
    v51 = v43;
    goto LABEL_56;
  }

  if (selectedEdge > 8)
  {
    v50 = 0;
    goto LABEL_28;
  }

  if (((1 << selectedEdge) & 0x62) != 0)
  {
    y = self->_location.y;
    v61 = y;
    if (self->_selectedItemIsInSlideOver)
    {
      [v10 statusBarHeight];
      v63 = v62;
      [v10 slideOverBorderWidth];
      v61 = v63 + v64;
      v43 = height;
      if (y >= v61)
      {
        v61 = y;
      }
    }

    if (self->_needsCenterAnchoringPerOptionModifier || self->_selectedItemWasInitiallyInDefaultPosition)
    {
      v65 = v203 + v203 - y;
      v49 = 0;
      if (v65 > v30 + v208)
      {
        v65 = v208 + self->_amountInitiallyOffScreenToBottom;
        if (v30 + v208 >= v65)
        {
          v65 = v30 + v208;
        }
      }
    }

    else
    {
      v65 = v43 * 0.5 + v203;
      v49 = 1;
    }

    v50 = 0;
    v51 = v65 - v61;
    goto LABEL_55;
  }

  v50 = 0;
  v51 = v43;
  if (((1 << selectedEdge) & 0x184) == 0)
  {
    goto LABEL_56;
  }

  v52 = self->_location.y;
  v53 = v52 - v203;
  if (self->_selectedItemIsInSlideOver)
  {
    [v195 dockTopMargin];
    v55 = v208 - v54;
    [v195 slideOverBorderWidth];
    v57 = v55 - v56;
    if (v52 > v57)
    {
      v52 = v57;
    }
  }

  v58 = v203 - v53;
  if (self->_needsCenterAnchoringPerOptionModifier)
  {
    v59 = v208;
    if (!self->_selectedItemWasInitiallyInDefaultPosition)
    {
      goto LABEL_42;
    }
  }

  else
  {
    v59 = v208;
    if (!self->_selectedItemWasInitiallyInDefaultPosition)
    {
      v58 = v203 + height * -0.5;
      v50 = 1;
      goto LABEL_52;
    }
  }

  if (!self->_dockAwareIfCenterAnchored || self->_initialFrameInScreenCoordinates.origin.y > 1.0 && v58 > 1.0)
  {
LABEL_42:
    v50 = 0;
    if (v58 < 0.0)
    {
      v58 = 0.0;
    }

    goto LABEL_52;
  }

  [(SBFlexibleWindowingItemResizeGestureSwitcherModifier *)self floatingDockHeight];
  v67 = v208 - v66;
  [(SBFlexibleWindowingItemResizeGestureSwitcherModifier *)self floatingDockHeight];
  v69 = v208 - v68;
  if (v52 <= v67)
  {
    v50 = 0;
    v58 = v69 - v52;
  }

  else
  {
    self->_effectiveInitialPositionY = v69 * 0.5;
    v50 = 1;
    v58 = 0.0;
  }

  v59 = v208;
LABEL_52:
  v49 = 0;
  v70 = v52 - v58;
  if (v70 >= v59)
  {
    v51 = v59;
  }

  else
  {
    v51 = v70;
  }

LABEL_55:
  v43 = height;
LABEL_56:
  selectedDisplayItem = self->_selectedDisplayItem;
  layoutGrid = self->_layoutGrid;
  layoutRestrictionInfoForSelectedItem = self->_layoutRestrictionInfoForSelectedItem;
  [(SBFlexibleWindowingItemResizeGestureSwitcherModifier *)self screenScale];
  v75 = v74;
  v76 = [(SBSwitcherModifier *)self windowingConfiguration];
  [(SBFlexibleWindowingItemResizeGestureSwitcherModifier *)self minSizeForDisplayItem:selectedDisplayItem inContainerBounds:layoutGrid layoutGrid:layoutRestrictionInfoForSelectedItem layoutRestrictionInfo:v193 contentOrientation:v76 screenScale:v42 windowingConfiguration:v30, v207, v208, v75];
  v78 = v77;
  v80 = v79;

  if (v78 >= v207)
  {
    v81 = v207;
  }

  else
  {
    v81 = v78;
  }

  if (v80 >= v208)
  {
    v82 = v208;
  }

  else
  {
    v82 = v80;
  }

  v220[0] = MEMORY[0x277D85DD0];
  v83 = v42;
  if (v81 >= v41)
  {
    v84 = v81;
  }

  else
  {
    v84 = v41;
  }

  v220[1] = 3221225472;
  v220[2] = __94__SBFlexibleWindowingItemResizeGestureSwitcherModifier__responseForGestureUpdateAtGestureEnd___block_invoke;
  v220[3] = &unk_2783C09A8;
  *&v220[5] = v197;
  *&v220[6] = v203;
  v221 = v39;
  if (v82 >= v51)
  {
    v85 = v82;
  }

  else
  {
    v85 = v51;
  }

  *&v220[7] = v40;
  *&v220[8] = v43;
  v222 = v37;
  *&v220[9] = v83;
  *&v220[10] = v30;
  *&v220[11] = v207;
  *&v220[12] = v208;
  v220[4] = self;
  v223 = v50;
  v224 = v49;
  v86 = MEMORY[0x223D6F7F0](v220);
  if ([(SBDisplayItemGridLayoutRestrictionInfo *)self->_layoutRestrictionInfoForSelectedItem layoutRestrictions])
  {
    v87 = v85;
    v88 = v84;
  }

  else
  {
    SBRectWithSize();
    v86[2](v86, v84, v85);
    UIRectCenteredAboutPoint();
    v90 = v89;
    v92 = v91;
    v94 = v93;
    v96 = v95;
    v97 = [v201 mutableCopy];
    v98 = [v97 flexibleAutoLayoutItemForDisplayItem:self->_selectedDisplayItem];
    [v98 setPosition:{v90 + v94 * 0.5, v92 + v96 * 0.5}];
    [v98 setSize:{v94, v96}];
    autoLayoutController = self->_autoLayoutController;
    v100 = [MEMORY[0x277CBEB98] setWithObject:self->_selectedDisplayItem];
    v101 = [(SBFlexibleWindowingAutoLayoutController *)autoLayoutController spaceByPerformingFlexibleAutoLayoutWithSpace:v97 configuration:v202 options:0 itemsNeedingPositionSnapping:0 itemsNeedingSizeSnapping:v100];

    v102 = [v206 displayItem];
    v103 = [v101 flexibleAutoLayoutItemForDisplayItem:v102];

    [v103 size];
    v88 = v104;
    v87 = v105;
  }

  v106 = v86;
  [(SBFlexibleWindowingItemResizeGestureSwitcherModifier *)self screenScale];
  UISizeRoundToScale();
  v108 = v107;
  v110 = v109;
  SBRectWithSize();
  v106[2](v106, v108, v110);
  [(SBFlexibleWindowingItemResizeGestureSwitcherModifier *)self screenScale];
  UIRectCenteredAboutPointScale();
  self->_currentFrameForDrawingInScreenCoordinates.origin.x = v111;
  self->_currentFrameForDrawingInScreenCoordinates.origin.y = v112;
  self->_currentFrameForDrawingInScreenCoordinates.size.width = v113;
  self->_currentFrameForDrawingInScreenCoordinates.size.height = v114;
  [v204 liveResizeSceneUpdateDistanceThreshold];
  v116 = v115;
  if (self->_resizeAnchor)
  {
    v117 = 1.0;
  }

  else
  {
    v117 = 2.0;
  }

  p_currentSceneSize = &self->_currentSceneSize;
  v119 = hypot(vabdd_f64(self->_currentSceneSize.width, v88), vabdd_f64(self->_currentSceneSize.height, v87));
  v218 = 0u;
  v219 = 0;
  v120 = [(SBAppLayout *)self->_currentAppLayout leafAppLayoutForItem:self->_selectedDisplayItem];
  v217.receiver = self;
  v217.super_class = SBFlexibleWindowingItemResizeGestureSwitcherModifier;
  [(SBFlexibleWindowingItemResizeGestureSwitcherModifier *)&v217 windowControlsLayoutForLeafAppLayout:v120];

  margin = self->_currentWindowControlsLayout.margin;
  v216[0] = *&self->_currentWindowControlsLayout.style;
  v216[1] = margin;
  v215[0] = v218;
  v215[1] = v219;
  v122 = SBWindowControlsLayoutEqual(v216, v215);
  if (!v122)
  {
    v123 = v219;
    *&self->_currentWindowControlsLayout.style = v218;
    self->_currentWindowControlsLayout.margin = v123;
  }

  v124 = v116 * v117;
  v125 = [(SBSwitcherModifier *)self autoLayoutItemIntersectsHomeAffordanceArea:v206];
  v126 = v125;
  resizedDisplayItemIntersectsHomeAffordanceArea = self->_resizedDisplayItemIntersectsHomeAffordanceArea;
  if (resizedDisplayItemIntersectsHomeAffordanceArea != v125)
  {
    self->_resizedDisplayItemIntersectsHomeAffordanceArea = v125;
  }

  v128 = !v122;
  if (v119 >= v124)
  {
    v129 = 1;
  }

  else
  {
    v129 = (resizedDisplayItemIntersectsHomeAffordanceArea != v125) | v128 | self->_needsSceneSizeUpdate | v205;
  }

  if (SBFIsFullScreenLetterboxingAvailable() && ([(SBDisplayItemGridLayoutRestrictionInfo *)self->_layoutRestrictionInfoForSelectedItem layoutRestrictions]& 0x10) != 0)
  {
    v130 = v208 * 0.125;
    v131 = self->_location.x;
    v132 = v131 <= v208 * 0.125 && self->_location.y <= v130;
    v133 = v207 - v130;
    v134 = v131 >= v207 - v130 && self->_location.y <= v130;
    v135 = v131 <= v130 && self->_location.y >= v208 - v130;
    v198 = v128;
    v136 = v131 >= v133 && self->_location.y >= v208 - v130;
    v137 = v132 || v134 || v135 || v136;
    if (v137)
    {
      v139 = self->_initialFrameInScreenCoordinates.origin.x;
      v138 = self->_initialFrameInScreenCoordinates.origin.y;
      if (v132)
      {
        v140 = v139 <= v130;
        goto LABEL_100;
      }

      v141 = self->_initialFrameInScreenCoordinates.size.width;
      if (v134)
      {
        v140 = v139 + v141 >= v133;
LABEL_100:
        v142 = v138 <= v130 && v140;
        goto LABEL_111;
      }

      v143 = self->_initialFrameInScreenCoordinates.size.height;
      if (v135)
      {
        v144 = v139 <= v130;
        _NF = v138 + v143 < v208 - v130;
        goto LABEL_107;
      }

      if (v136)
      {
        v144 = v139 + v141 >= v133;
        _NF = v138 + v143 < v208 - v130;
LABEL_107:
        v142 = !_NF && v144;
        goto LABEL_111;
      }
    }

    v142 = 0;
LABEL_111:
    v196 = [(SBFlexibleWindowingItemResizeGestureSwitcherModifier *)self layoutAttributesForDisplayItem:self->_selectedDisplayItem inAppLayout:self->_currentAppLayout];
    if (v137 && v205 && !v142)
    {
      v146.f64[0] = v207;
      v146.f64[1] = v208;
      __asm { FMOV            V1.2D, #0.5 }

      v213[0] = MEMORY[0x277D85DD0];
      v213[1] = 3221225472;
      v213[2] = __94__SBFlexibleWindowingItemResizeGestureSwitcherModifier__responseForGestureUpdateAtGestureEnd___block_invoke_2;
      v213[3] = &__block_descriptor_48_e29__CGPoint_dd_24__0_CGSize_dd_8l;
      v214 = vmulq_f64(v146, _Q1);
      v151 = MEMORY[0x223D6F7F0](v213);

      v129 = 1;
      self->_needsSceneSizeUpdate = 1;
      p_currentSceneSize->width = v207;
      self->_currentSceneSize.height = v208;
      v106 = v151;
      v87 = v208;
      v88 = v207;
    }

    [(SBDisplayItemLayoutAttributes *)v196 attributedSize];
    if (v212 == 3)
    {
      v152.f64[0] = v207;
      v152.f64[1] = v208;
      __asm { FMOV            V0.2D, #0.5 }

      v209[0] = MEMORY[0x277D85DD0];
      v209[1] = 3221225472;
      v209[2] = __94__SBFlexibleWindowingItemResizeGestureSwitcherModifier__responseForGestureUpdateAtGestureEnd___block_invoke_3;
      v209[3] = &__block_descriptor_48_e29__CGPoint_dd_24__0_CGSize_dd_8l;
      v210 = vmulq_f64(v152, _Q0);
      v154 = MEMORY[0x223D6F7F0](v209);

      v106 = v154;
    }

    v128 = v198;
  }

  if (v129)
  {
    self->_needsSceneSizeUpdate = 0;
    p_currentSceneSize->width = v88;
    self->_currentSceneSize.height = v87;
    v155 = (v106[2])(v106, v88, v87);
    v157 = v156;
    if (v205)
    {
      v199 = v128;
      v158 = [v201 mutableCopy];
      v159 = [v206 displayItem];
      v160 = [v158 flexibleAutoLayoutItemForDisplayItem:v159];

      [v160 setPosition:{v155, v157}];
      [v160 setSize:{v88, v87}];
      v161 = self->_autoLayoutController;
      if ([(SBDisplayItemGridLayoutRestrictionInfo *)self->_layoutRestrictionInfoForSelectedItem layoutRestrictions])
      {
        v162 = [(SBFlexibleWindowingAutoLayoutController *)v161 spaceByPerformingFlexibleAutoLayoutWithSpace:v158 configuration:v202 options:0 itemsNeedingPositionSnapping:0 itemsNeedingSizeSnapping:0];
      }

      else
      {
        v165 = [MEMORY[0x277CBEB98] setWithObject:self->_selectedDisplayItem];
        v162 = [(SBFlexibleWindowingAutoLayoutController *)v161 spaceByPerformingFlexibleAutoLayoutWithSpace:v158 configuration:v202 options:0 itemsNeedingPositionSnapping:0 itemsNeedingSizeSnapping:v165];
      }

      v166 = [v206 displayItem];
      v167 = [v162 flexibleAutoLayoutItemForDisplayItem:v166];

      [v167 size];
      v88 = v168;
      v87 = v169;
      [v167 position];
      v155 = v170;
      v157 = v171;
      SBScreenScale();
      UIRectCenteredAboutPointScale();
      self->_currentFrameForDrawingInScreenCoordinates.origin.x = v172;
      self->_currentFrameForDrawingInScreenCoordinates.origin.y = v173;
      self->_currentFrameForDrawingInScreenCoordinates.size.width = v174;
      self->_currentFrameForDrawingInScreenCoordinates.size.height = v175;

      v128 = v199;
    }

    if (resizedDisplayItemIntersectsHomeAffordanceArea == v126)
    {
      v176 = v128;
    }

    else
    {
      v176 = 1;
    }

    v177 = [(SBFlexibleWindowingItemResizeGestureSwitcherModifier *)self _responseForSceneSizeUpdateToSize:!v205 center:v176 sceneUpdatesOnly:v88 animated:v87, v155, v157];
    v164 = SBAppendSwitcherModifierResponse(v177, 0);

    ++self->_delayedSceneSizeUpdateGeneration;
    delayedSceneSizeUpdateReason = self->_delayedSceneSizeUpdateReason;
    self->_delayedSceneSizeUpdateReason = 0;
  }

  else
  {
    [(SBFlexibleWindowingItemResizeGestureSwitcherModifier *)self screenScale];
    if (v119 < 1.0 / v163 || self->_delayedSceneSizeUpdateReason)
    {
      v164 = 0;
      goto LABEL_132;
    }

    ++self->_delayedSceneSizeUpdateGeneration;
    v185 = MEMORY[0x277CCACA8];
    v186 = objc_opt_class();
    v187 = NSStringFromClass(v186);
    v188 = [v185 stringWithFormat:@"%@-DelayedSceneUpdate-%ld", v187, self->_delayedSceneSizeUpdateGeneration];
    v189 = self->_delayedSceneSizeUpdateReason;
    self->_delayedSceneSizeUpdateReason = v188;

    v190 = [SBTimerEventSwitcherEventResponse alloc];
    [v204 liveResizeSceneUpdateTimeThreshold];
    delayedSceneSizeUpdateReason = [(SBTimerEventSwitcherEventResponse *)v190 initWithDelay:0 validator:self->_delayedSceneSizeUpdateReason reason:?];
    v164 = SBAppendSwitcherModifierResponse(delayedSceneSizeUpdateReason, 0);
  }

LABEL_132:
  if (v205)
  {
    v179 = [SBUpdateLayoutSwitcherEventResponse alloc];
    if ([(SBFlexibleWindowingItemResizeGestureSwitcherModifier *)self _shouldUseSprings])
    {
      v180 = 3;
    }

    else
    {
      v180 = 2;
    }

    v181 = [(SBUpdateLayoutSwitcherEventResponse *)v179 initWithOptions:30 updateMode:v180];
    v182 = SBAppendSwitcherModifierResponse(v181, v164);

    [(SBFlexibleWindowingItemResizeGestureSwitcherModifier *)self continuousExposeStripProgress];
    if (BSFloatGreaterThanFloat() && [(SBFlexibleWindowingItemResizeGestureSwitcherModifier *)self _isStripVisibleForCurrentAppLayout])
    {
      v183 = [[SBUpdateContinuousExposeStripsPresentationResponse alloc] initWithPresentationOptions:0 dismissalOptions:1];
      v164 = SBAppendSwitcherModifierResponse(v183, v182);
    }

    else
    {
      v164 = v182;
    }
  }

  return v164;
}

- (id)_responseForSceneSizeUpdateToSize:(CGSize)a3 center:(CGPoint)a4 sceneUpdatesOnly:(BOOL)a5 animated:(BOOL)a6
{
  v57 = a5;
  y = a4.y;
  x = a4.x;
  height = a3.height;
  width = a3.width;
  [(SBFlexibleWindowingItemResizeGestureSwitcherModifier *)self containerViewBounds];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v18 = [(SBFlexibleWindowingItemResizeGestureSwitcherModifier *)self layoutAttributesForDisplayItem:self->_selectedDisplayItem inAppLayout:self->_currentAppLayout];
  v19 = [(SBSwitcherModifier *)self windowingConfiguration];
  v20 = self->_selectedItemWasInitiallyInDefaultPosition && self->_resizeAnchor == 0;
  v21 = [(SBDisplayItemLayoutAttributes *)v18 attributesByModifyingPositionIsSystemManaged:v20];

  if ([(SBDisplayItemLayoutAttributes *)v21 isCascaded])
  {
    v22 = [(SBDisplayItemLayoutAttributes *)v21 attributesByModifyingCascaded:v20];

    v21 = v22;
  }

  [(SBDisplayItemLayoutAttributes *)v21 tileConfiguration];
  if (SBDisplayItemTileConfigurationIsValid(&v71))
  {
    SBDisplayItemTileConfigurationMakeNotTiled(&v71);
    v23 = [SBDisplayItemLayoutAttributes attributesByModifyingTileConfiguration:v21];

    v21 = v23;
  }

  v74 = 0;
  v72 = 0;
  v73 = 0u;
  v71 = 0u;
  [v19 defaultWindowSize];
  [v19 screenEdgePadding];
  v55 = v24;
  SBDisplayItemAttributedSizeInfer(&v71, width, height, v11, v13, v15, v17);
  v70 = 0;
  v68 = 0u;
  v69 = 0;
  [(SBDisplayItemLayoutAttributes *)v21 slideOverConfiguration];
  v64 = v68;
  v65 = v69;
  *&v66 = v70;
  if (SBDisplayItemSlideOverConfigurationIsValid(&v64))
  {
    v25 = [(SBFlexibleWindowingItemResizeGestureSwitcherModifier *)self displayItemLayoutAttributesCalculator];
    v26 = v25;
    if (v25)
    {
      v62[0] = v68;
      v62[1] = v69;
      v63 = v70;
      [v25 updatedSlideOverConfigurationForItemWithSize:v62 center:v19 slideOverConfiguration:width windowingConfiguration:{height, x, y}];
    }

    else
    {
      *&v66 = 0;
      v65 = 0;
      v64 = 0u;
    }

    v29 = [SBDisplayItemLayoutAttributes attributesByModifyingSlideOverConfiguration:v21];
  }

  else
  {
    v27 = [(SBDisplayItemLayoutAttributes *)x normalizedPointForPoint:v11 inBounds:v13, v15, v17];
    v26 = [(SBDisplayItemLayoutAttributes *)v21 attributesByModifyingNormalizedCenter:v27, v28];

    v64 = v71;
    v65 = v72;
    v66 = v73;
    v67 = v74;
    v29 = [SBDisplayItemLayoutAttributes attributesByModifyingAttributedSize:v26];
  }

  v30 = [(SBAppLayout *)self->_currentAppLayout allItems];
  v31 = [v30 count];

  if (v31 < 2)
  {
    SBDisplayItemAttributedSizeUnspecified(&v64);
  }

  else
  {
    v64 = v71;
    v65 = v72;
    v66 = v73;
    v67 = v74;
  }

  v32 = [SBDisplayItemLayoutAttributes attributesByModifyingAttributedUserSizeBeforeOverlapping:v29];

  v33 = [(SBFlexibleWindowingItemResizeGestureSwitcherModifier *)self supportedSizingPoliciesForItem:self->_selectedDisplayItem inAppLayout:self->_currentAppLayout];
  v34 = SBDisplayItemSizingPolicyAllowingLargestSize(v33);
  SBDisplayItemSizingPolicyAllowingSmallestSize(v33);
  if (v34 == 1)
  {
    v35 = [(SBSwitcherModifier *)self windowingConfiguration];
    [v35 screenEdgePadding];
    v37 = v36;

    v76.origin.x = v11;
    v76.origin.y = v13;
    v76.size.width = v15;
    v76.size.height = v17;
    CGRectInset(v76, v37, v37);
    if ((BSFloatEqualToFloat() & 1) == 0)
    {
      BSFloatEqualToFloat();
    }
  }

  else if (v34 == 2 && (v15 != width || v17 != height))
  {
    [(SBDisplayItemLayoutAttributes *)v32 attributedSize];
  }

  v56 = v19;
  v38 = [SBDisplayItemLayoutAttributes attributesByModifyingSizingPolicy:v32];

  [(SBFlexibleWindowingItemResizeGestureSwitcherModifier *)self updateLayoutAttributes:v38 ofDisplayItem:self->_selectedDisplayItem];
  v39 = [(SBFlexibleWindowingItemResizeGestureSwitcherModifier *)self appLayoutByBringingItemToFront:self->_selectedDisplayItem inAppLayout:self->_currentAppLayout];
  currentAppLayout = self->_currentAppLayout;
  self->_currentAppLayout = v39;

  v71 = 0u;
  v72 = 0;
  v41 = [(SBAppLayout *)self->_currentAppLayout leafAppLayoutForItem:self->_selectedDisplayItem];
  v60.receiver = self;
  v60.super_class = SBFlexibleWindowingItemResizeGestureSwitcherModifier;
  [(SBFlexibleWindowingItemResizeGestureSwitcherModifier *)&v60 windowControlsLayoutForLeafAppLayout:v41];

  margin = self->_currentWindowControlsLayout.margin;
  v64 = *&self->_currentWindowControlsLayout.style;
  v65 = margin;
  v68 = v71;
  v69 = v72;
  if (!SBWindowControlsLayoutEqual(&v64, &v68))
  {
    v43 = v72;
    *&self->_currentWindowControlsLayout.style = v71;
    self->_currentWindowControlsLayout.margin = v43;
    a6 = 1;
  }

  v44 = [(SBSwitcherModifier *)self flexibleAutoLayoutSpaceForAppLayout:self->_currentAppLayout, v55];
  v45 = [v44 flexibleAutoLayoutItemForDisplayItem:self->_selectedDisplayItem];
  v46 = [(SBSwitcherModifier *)self autoLayoutItemIntersectsHomeAffordanceArea:v45];
  resizedDisplayItemIntersectsHomeAffordanceArea = self->_resizedDisplayItemIntersectsHomeAffordanceArea;
  v48 = [(SBSwitcherTransitionRequest *)SBMutableSwitcherTransitionRequest requestForActivatingAppLayout:self->_currentAppLayout];
  [v48 setSceneUpdatesOnly:v57];
  if (a6 || resizedDisplayItemIntersectsHomeAffordanceArea != v46)
  {
    v49 = [(SBFlexibleWindowingItemResizeGestureSwitcherModifier *)self _animationSettingsForLayout];
    [v48 setAnimationSettings:v49];
  }

  v50 = [[SBPerformTransitionSwitcherEventResponse alloc] initWithTransitionRequest:v48 gestureInitiated:1];
  if (([(SBDisplayItemGridLayoutRestrictionInfo *)self->_layoutRestrictionInfoForSelectedItem layoutRestrictions]& 0xA) == 2)
  {
    if (width <= height)
    {
      v51 = 1;
    }

    else
    {
      v51 = 3;
    }

    v52 = [[SBSetInterfaceOrientationFromUserResizingEventResponse alloc] initWithDisplayItem:self->_selectedDisplayItem desiredContentOrientation:v51];
    v53 = SBAppendSwitcherModifierResponse(v52, v50);

    v50 = v53;
  }

  return v50;
}

- (id)handleSceneReadyEvent:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = SBFlexibleWindowingItemResizeGestureSwitcherModifier;
  v5 = [(SBSwitcherModifier *)&v16 handleSceneReadyEvent:v4];
  currentAppLayout = self->_currentAppLayout;
  v7 = [v4 appLayout];
  LODWORD(currentAppLayout) = [(SBAppLayout *)currentAppLayout isOrContainsAppLayout:v7];

  if (currentAppLayout)
  {
    v8 = self->_currentAppLayout;
    v9 = [v4 appLayout];
    v10 = [v9 itemForLayoutRole:1];
    v11 = [(SBAppLayout *)v8 layoutRoleForItem:v10];

    LODWORD(v9) = [(SBFlexibleWindowingItemResizeGestureSwitcherModifier *)self isLayoutRoleContentReady:v11 inAppLayout:self->_currentAppLayout];
    v12 = [[SBUpdateLayoutSwitcherEventResponse alloc] initWithOptions:64 updateMode:0];
    v13 = SBAppendSwitcherModifierResponse(v12, v5);

    if (v9 && self->_lastGestureEvent && [(SBGestureSwitcherModifier *)self gesturePhase]== 2)
    {
      v14 = [(SBSwitcherModifier *)self _handleEvent:self->_lastGestureEvent];
      v5 = SBAppendSwitcherModifierResponse(v14, v13);
    }

    else
    {
      v5 = v13;
    }
  }

  return v5;
}

- (id)handleTransitionEvent:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = SBFlexibleWindowingItemResizeGestureSwitcherModifier;
  v5 = [(SBGestureSwitcherModifier *)&v7 handleTransitionEvent:v4];
  if ([v4 isGestureInitiated] && objc_msgSend(v4, "phase") >= 2)
  {
    [(SBChainableModifier *)self setState:1];
  }

  return v5;
}

- (id)handleTimerEvent:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = SBFlexibleWindowingItemResizeGestureSwitcherModifier;
  v5 = [(SBSwitcherModifier *)&v13 handleTimerEvent:v4];
  delayedSceneSizeUpdateReason = self->_delayedSceneSizeUpdateReason;
  if (delayedSceneSizeUpdateReason)
  {
    v7 = [v4 reason];
    v8 = [(NSString *)delayedSceneSizeUpdateReason isEqual:v7];

    if (v8)
    {
      self->_needsSceneSizeUpdate = 1;
      ++self->_delayedSceneSizeUpdateGeneration;
      v9 = self->_delayedSceneSizeUpdateReason;
      self->_delayedSceneSizeUpdateReason = 0;

      v10 = [(SBFlexibleWindowingItemResizeGestureSwitcherModifier *)self handleGestureEvent:self->_lastGestureEvent];
      v11 = SBAppendSwitcherModifierResponse(v10, v5);

      v5 = v11;
    }
  }

  return v5;
}

- (CGRect)frameForLayoutRole:(int64_t)a3 inAppLayout:(id)a4 withBounds:(CGRect)a5
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v11 = a4;
  if ([v11 isEqual:self->_currentAppLayout] && self->_selectedLayoutRole == a3 && -[SBGestureSwitcherModifier gesturePhase](self, "gesturePhase") >= 2)
  {
    [(SBFlexibleWindowingItemResizeGestureSwitcherModifier *)self _convertToSpaceRectFromScreenRect:self->_currentFrameForDrawingInScreenCoordinates.origin.x, self->_currentFrameForDrawingInScreenCoordinates.origin.y, self->_currentFrameForDrawingInScreenCoordinates.size.width, self->_currentFrameForDrawingInScreenCoordinates.size.height];
  }

  else
  {
    v24.receiver = self;
    v24.super_class = SBFlexibleWindowingItemResizeGestureSwitcherModifier;
    [(SBFlexibleWindowingItemResizeGestureSwitcherModifier *)&v24 frameForLayoutRole:a3 inAppLayout:v11 withBounds:x, y, width, height];
  }

  v16 = v12;
  v17 = v13;
  v18 = v14;
  v19 = v15;

  v20 = v16;
  v21 = v17;
  v22 = v18;
  v23 = v19;
  result.size.height = v23;
  result.size.width = v22;
  result.origin.y = v21;
  result.origin.x = v20;
  return result;
}

- (unint64_t)maskedCornersForLayoutRole:(int64_t)a3 inAppLayout:(id)a4 withMaskedCorners:(unint64_t)a5
{
  v8 = a4;
  v19.receiver = self;
  v19.super_class = SBFlexibleWindowingItemResizeGestureSwitcherModifier;
  v9 = [(SBGestureSwitcherModifier *)&v19 maskedCornersForLayoutRole:a3 inAppLayout:v8 withMaskedCorners:a5];
  v10 = [v8 itemForLayoutRole:a3];
  v11 = v10;
  if (v10)
  {
    if (([(SBDisplayItem *)v10 isEqualToItem:?]& 1) == 0)
    {
      v12 = [(SBFlexibleWindowingItemResizeGestureSwitcherModifier *)self appLayoutOnStage];
      v13 = [v12 isOrContainsAppLayout:v8];

      if (v13)
      {
        v14 = [(SBSwitcherModifier *)self flexibleAutoLayoutSpaceForAppLayout:v8];
        v15 = [v14 flexibleAutoLayoutItemForDisplayItem:v11];
        v16 = [v15 intersectedDisplayRectCorners];
        v17 = v9 & 0xFFFFFFFFFFFFFFFELL;
        if ((v16 & 1) == 0)
        {
          v17 = v9;
        }

        if ((v16 & 2) != 0)
        {
          v17 &= ~2uLL;
        }

        if ((v16 & 4) != 0)
        {
          v17 &= ~4uLL;
        }

        if ((v16 & 8) != 0)
        {
          v9 = v17 & 0xFFFFFFFFFFFFFFF7;
        }

        else
        {
          v9 = v17;
        }
      }
    }
  }

  return v9;
}

- (UIRectCornerRadii)cornerRadiiForLayoutRole:(int64_t)a3 inAppLayout:(id)a4 withCornerRadii:(UIRectCornerRadii)a5
{
  topRight = a5.topRight;
  bottomRight = a5.bottomRight;
  bottomLeft = a5.bottomLeft;
  topLeft = a5.topLeft;
  v11 = a4;
  v12 = [v11 itemForLayoutRole:a3];
  v13 = [(SBDisplayItem *)v12 isEqualToItem:?];

  if (v13)
  {
    [(SBFlexibleWindowingItemResizeGestureSwitcherModifier *)self displayCornerRadius];
    v15 = v14;
    [(SBFlexibleWindowingItemResizeGestureSwitcherModifier *)self bestSupportedDefaultCornerRadiusForAppLayout:v11];
    SBRectCornerRadiiForRadius();
    v17 = v16;
    v19 = v18;
    v21 = v20;
    v23 = v22;
    v24 = [(SBSwitcherModifier *)self flexibleAutoLayoutSpaceForAppLayout:v11];
    v25 = [v24 flexibleAutoLayoutItemForDisplayItem:self->_selectedDisplayItem];
    v26 = [v25 intersectedDisplayRectCorners];

    if (v26)
    {
      v17 = v15;
    }

    if ((v26 & 2) != 0)
    {
      v23 = v15;
    }

    if ((v26 & 4) != 0)
    {
      v19 = v15;
    }

    if ((v26 & 8) == 0)
    {
      v15 = v21;
    }
  }

  else
  {
    v35.receiver = self;
    v35.super_class = SBFlexibleWindowingItemResizeGestureSwitcherModifier;
    [(SBFlexibleWindowingItemResizeGestureSwitcherModifier *)&v35 cornerRadiiForLayoutRole:a3 inAppLayout:v11 withCornerRadii:topLeft, bottomLeft, bottomRight, topRight];
    v17 = v27;
    v19 = v28;
    v15 = v29;
    v23 = v30;
  }

  v31 = v17;
  v32 = v19;
  v33 = v15;
  v34 = v23;
  result.topRight = v34;
  result.bottomRight = v33;
  result.bottomLeft = v32;
  result.topLeft = v31;
  return result;
}

- (UIRectCornerRadii)cornerRadiiForIndex:(unint64_t)a3
{
  v5 = [(SBFlexibleWindowingItemResizeGestureSwitcherModifier *)self appLayouts];
  v6 = [v5 objectAtIndex:a3];

  if ([v6 isEqual:self->_currentAppLayout])
  {
    [(SBFlexibleWindowingItemResizeGestureSwitcherModifier *)self bestSupportedDefaultCornerRadiusForAppLayout:v6];
    [(SBFlexibleWindowingItemResizeGestureSwitcherModifier *)self scaleForIndex:a3];
    SBRectCornerRadiiForRadius();
  }

  else
  {
    v19.receiver = self;
    v19.super_class = SBFlexibleWindowingItemResizeGestureSwitcherModifier;
    [(SBFlexibleWindowingItemResizeGestureSwitcherModifier *)&v19 cornerRadiiForIndex:a3];
  }

  v11 = v7;
  v12 = v8;
  v13 = v9;
  v14 = v10;

  v15 = v11;
  v16 = v12;
  v17 = v13;
  v18 = v14;
  result.topRight = v18;
  result.bottomRight = v17;
  result.bottomLeft = v16;
  result.topLeft = v15;
  return result;
}

- (unint64_t)activeCornersForTouchResizeForLayoutRole:(int64_t)a3 inAppLayout:(id)a4
{
  v6 = a4;
  if ([v6 isOrContainsAppLayout:self->_currentAppLayout] && self->_selectedLayoutRole == a3)
  {
    currentActiveResizeCorner = self->_currentActiveResizeCorner;
  }

  else
  {
    v9.receiver = self;
    v9.super_class = SBFlexibleWindowingItemResizeGestureSwitcherModifier;
    currentActiveResizeCorner = [(SBFlexibleWindowingItemResizeGestureSwitcherModifier *)&v9 activeCornersForTouchResizeForLayoutRole:a3 inAppLayout:v6];
  }

  return currentActiveResizeCorner;
}

- (unint64_t)visibleCornersForTouchResizeForLayoutRole:(int64_t)a3 inAppLayout:(id)a4
{
  v6 = a4;
  if ([v6 isOrContainsAppLayout:self->_currentAppLayout] && self->_selectedLayoutRole == a3)
  {
    if ([*MEMORY[0x277D76620] userInterfaceLayoutDirection] == 1)
    {
      v7 = 4;
    }

    else
    {
      v7 = 8;
    }

    if (self->_selectedItemIsInSlideOver)
    {
      v8 = [(SBFlexibleWindowingItemResizeGestureSwitcherModifier *)self layoutAttributesForDisplayItem:self->_selectedDisplayItem inAppLayout:v6];
      [(SBDisplayItemLayoutAttributes *)v8 slideOverConfiguration];
      v9 = v17[0];

      if (v9 >= 2)
      {
        v10 = 4 * ((v9 & 0xFFFFFFFFFFFFFFFELL) == 2);
      }

      else
      {
        v10 = 8;
      }
    }

    else
    {
      v11 = [(SBSwitcherModifier *)self flexibleAutoLayoutSpaceForAppLayout:v6];
      v12 = [v6 itemForLayoutRole:a3];
      v13 = [v11 flexibleAutoLayoutItemForDisplayItem:v12];

      v10 = [v13 ownedDisplayRectCorners] & 0xC;
    }

    if (v10 != 8 && v10 != 4)
    {
      v10 = v7;
    }
  }

  else
  {
    v16.receiver = self;
    v16.super_class = SBFlexibleWindowingItemResizeGestureSwitcherModifier;
    v10 = [(SBFlexibleWindowingItemResizeGestureSwitcherModifier *)&v16 visibleCornersForTouchResizeForLayoutRole:a3 inAppLayout:v6];
  }

  return v10;
}

- (id)animationAttributesForLayoutElement:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = SBFlexibleWindowingItemResizeGestureSwitcherModifier;
  v5 = [(SBGestureSwitcherModifier *)&v15 animationAttributesForLayoutElement:v4];
  v6 = [v5 mutableCopy];

  v7 = [v4 switcherLayoutElementType];
  if ((v7 - 10) < 2 || !v7 && [v4 isOrContainsAppLayout:self->_currentAppLayout])
  {
    if ([(SBFlexibleWindowingItemResizeGestureSwitcherModifier *)self _shouldUseSprings])
    {
      v8 = 5;
    }

    else
    {
      v8 = 2;
    }

    [v6 setUpdateMode:v8];
    if ([(SBFlexibleWindowingItemResizeGestureSwitcherModifier *)self _shouldUseSprings])
    {
      v9 = 3;
    }

    else
    {
      v9 = 2;
    }

    [v6 setScaleUpdateMode:v9];
    v10 = [(SBFlexibleWindowingItemResizeGestureSwitcherModifier *)self _animationSettingsForLayout];
    [v6 setLayoutSettings:v10];

    v11 = [(SBFlexibleWindowingItemResizeGestureSwitcherModifier *)self switcherSettings];
    v12 = [v11 windowingSettings];
    v13 = [v12 stageCornerRadiusSettings];
    [v6 setCornerRadiusSettings:v13];

    [v6 setCornerRadiusUpdateMode:3];
  }

  else
  {
    [v6 setUpdateMode:3];
  }

  return v6;
}

- (double)homeScreenDimmingAlpha
{
  v10.receiver = self;
  v10.super_class = SBFlexibleWindowingItemResizeGestureSwitcherModifier;
  [(SBFlexibleWindowingItemResizeGestureSwitcherModifier *)&v10 homeScreenDimmingAlpha];
  v4 = v3;
  v5 = [(SBFlexibleWindowingItemResizeGestureSwitcherModifier *)self switcherSettings];
  v6 = [v5 windowingSettings];
  [v6 maxHomeScreenDimmingAlphaForNonFullscreen];
  v8 = v7;

  if (v4 <= v8)
  {
    return v4;
  }

  else
  {
    return v8;
  }
}

- (id)layoutRestrictionInfoForItem:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = SBFlexibleWindowingItemResizeGestureSwitcherModifier;
  v5 = [(SBFlexibleWindowingItemResizeGestureSwitcherModifier *)&v11 layoutRestrictionInfoForItem:v4];
  v6 = [v5 layoutRestrictions];
  if ((v6 & 0xA) != 0)
  {
    v7 = v6;
    v8 = [(SBFlexibleWindowingItemResizeGestureSwitcherModifier *)self supportedContentInterfaceOrientationsForItem:v4];
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
  v2 = [(SBFlexibleWindowingItemResizeGestureSwitcherModifier *)self switcherSettings];
  v3 = [v2 windowingSettings];
  v4 = [v3 liveResizeDuringDragLayoutAnimationSettings];

  return v4;
}

- (BOOL)isItemResizingAllowedForLayoutRole:(int64_t)a3 inAppLayout:(id)a4
{
  v6 = a4;
  if ([v6 isOrContainsAppLayout:self->_currentAppLayout] && self->_selectedLayoutRole == a3)
  {
    v7 = [(SBFlexibleWindowingItemResizeGestureSwitcherModifier *)self appLayoutContainsOnlyResizableApps:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)wantsSceneResizesHostedContextForAppLayout:(id)a3
{
  v4 = a3;
  if ([v4 isOrContainsAppLayout:self->_currentAppLayout])
  {
    v5 = 1;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = SBFlexibleWindowingItemResizeGestureSwitcherModifier;
    v5 = [(SBFlexibleWindowingItemResizeGestureSwitcherModifier *)&v7 wantsSceneResizesHostedContextForAppLayout:v4];
  }

  return v5;
}

- (id)visibleSplitViewHandleNubViews
{
  v14.receiver = self;
  v14.super_class = SBFlexibleWindowingItemResizeGestureSwitcherModifier;
  v3 = [(SBFlexibleWindowingItemResizeGestureSwitcherModifier *)&v14 visibleSplitViewHandleNubViews];
  v4 = [v3 mutableCopy];
  v8 = MEMORY[0x277D85DD0];
  v9 = 3221225472;
  v10 = __86__SBFlexibleWindowingItemResizeGestureSwitcherModifier_visibleSplitViewHandleNubViews__block_invoke;
  v11 = &unk_2783C09F0;
  v12 = self;
  v13 = v4;
  v5 = v4;
  [v3 enumerateObjectsUsingBlock:&v8];
  v6 = [v5 copy];

  return v6;
}

void __86__SBFlexibleWindowingItemResizeGestureSwitcherModifier_visibleSplitViewHandleNubViews__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 displayItems];
  v5 = [v4 firstObject];
  v6 = [v4 lastObject];
  v7 = [(SBDisplayItem *)v5 isEqualToItem:?];
  v8 = *(a1 + 32);
  if (v7)
  {
    v9 = *(v8 + 264) + *(v8 + 280);
    v14.receiver = *(a1 + 32);
    v14.super_class = SBFlexibleWindowingItemResizeGestureSwitcherModifier;
    objc_msgSendSuper2(&v14, sel_frameForSplitViewHandleNubView_, v3);
  }

  else
  {
    if (![(SBDisplayItem *)v6 isEqualToItem:?])
    {
      goto LABEL_7;
    }

    v9 = *(*(a1 + 32) + 264);
    v13.receiver = *(a1 + 32);
    v13.super_class = SBFlexibleWindowingItemResizeGestureSwitcherModifier;
    objc_msgSendSuper2(&v13, sel_frameForSplitViewHandleNubView_, v3);
    v10 = v11 + v12;
  }

  if (vabdd_f64(v9, v10) > 2.0)
  {
    [*(a1 + 40) removeObject:v3];
  }

LABEL_7:
}

- (id)visibleSplitViewHandleDimmingViews
{
  v2 = [(SBFlexibleWindowingItemResizeGestureSwitcherModifier *)self visibleSplitViewHandleNubViews];
  v3 = [v2 bs_map:&__block_literal_global_372];

  return v3;
}

SBSwitcherSplitViewHandleDimmingElement *__90__SBFlexibleWindowingItemResizeGestureSwitcherModifier_visibleSplitViewHandleDimmingViews__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [SBSwitcherSplitViewHandleDimmingElement alloc];
  v4 = [v2 displayItems];

  v5 = [(SBSwitcherSplitViewHandleDimmingElement *)v3 initWithDisplayItems:v4];

  return v5;
}

- (id)topMostLayoutRolesForAppLayout:(id)a3
{
  v15.receiver = self;
  v15.super_class = SBFlexibleWindowingItemResizeGestureSwitcherModifier;
  v4 = a3;
  v5 = [(SBFlexibleWindowingItemResizeGestureSwitcherModifier *)&v15 topMostLayoutRolesForAppLayout:v4];
  v6 = [v4 isEqual:{self->_currentAppLayout, v15.receiver, v15.super_class}];

  if (v6)
  {
    v7 = [v5 mutableCopy];
    v8 = [MEMORY[0x277CCABB0] numberWithInteger:self->_selectedLayoutRole];
    [v7 removeObject:v8];

    v9 = [MEMORY[0x277CCABB0] numberWithInteger:self->_selectedLayoutRole];
    [v7 insertObject:v9 atIndex:0];

    v10 = [(SBFlexibleWindowingItemResizeGestureSwitcherModifier *)self displayItemInSlideOver];
    if (v10 && [(SBAppLayout *)self->_currentAppLayout containsItem:v10])
    {
      v11 = [(SBAppLayout *)self->_currentAppLayout layoutRoleForItem:v10];
      v12 = [MEMORY[0x277CCABB0] numberWithInteger:v11];
      [v7 removeObject:v12];

      v13 = [MEMORY[0x277CCABB0] numberWithInteger:v11];
      [v7 insertObject:v13 atIndex:0];
    }
  }

  else
  {
    v7 = v5;
  }

  return v7;
}

- (id)topMostLayoutElements
{
  if (([(SBFlexibleWindowingItemResizeGestureSwitcherModifier *)self prefersStripHiddenAndDisabled]& 1) != 0)
  {
    v7.receiver = self;
    v7.super_class = SBFlexibleWindowingItemResizeGestureSwitcherModifier;
    v3 = [(SBFlexibleWindowingItemResizeGestureSwitcherModifier *)&v7 topMostLayoutElements];
  }

  else
  {
    currentAppLayout = self->_currentAppLayout;
    v8.receiver = self;
    v8.super_class = SBFlexibleWindowingItemResizeGestureSwitcherModifier;
    v5 = [(SBFlexibleWindowingItemResizeGestureSwitcherModifier *)&v8 topMostLayoutElements];
    v3 = [(SBSwitcherModifier *)self topMostLayoutElementsByAddingAppLayoutAndAccessories:currentAppLayout toTopMostLayoutElements:v5 orderFront:1];
  }

  return v3;
}

- (int64_t)occlusionStateForLayoutRole:(int64_t)a3 inAppLayout:(id)a4
{
  v6 = a4;
  v7 = [(SBGestureSwitcherModifier *)self gesturePhase];
  v8 = [(SBFlexibleWindowingItemResizeGestureSwitcherModifier *)self appLayoutOnStage];
  v9 = v8;
  if (v7 != 3)
  {
    if ([v8 isOrContainsAppLayout:v6] && !self->_autoLayoutSpaceWithDraggedItemExcluded)
    {
      v10 = [(SBFlexibleWindowingItemResizeGestureSwitcherModifier *)self appLayoutContainingAppLayout:v6];
      v50[0] = MEMORY[0x277D85DD0];
      v50[1] = 3221225472;
      v50[2] = __96__SBFlexibleWindowingItemResizeGestureSwitcherModifier_occlusionStateForLayoutRole_inAppLayout___block_invoke;
      v50[3] = &unk_2783A8C90;
      v50[4] = self;
      v11 = [v10 appLayoutWithItemsPassingTest:v50];

      if (v11)
      {
        v12 = [v11 allItems];
        v13 = [v12 count];

        if (v13)
        {
          v14 = [(SBFlexibleWindowingItemResizeGestureSwitcherModifier *)self displayItemLayoutAttributesCalculator];
          v48 = [(SBFlexibleWindowingItemResizeGestureSwitcherModifier *)self switcherInterfaceOrientation];
          [(SBFlexibleWindowingItemResizeGestureSwitcherModifier *)self floatingDockHeight];
          v47 = v15;
          [(SBFlexibleWindowingItemResizeGestureSwitcherModifier *)self screenScale];
          v46 = v16;
          [(SBFlexibleWindowingItemResizeGestureSwitcherModifier *)self containerViewBounds];
          v18 = v17;
          v20 = v19;
          v22 = v21;
          v24 = v23;
          v25 = [(SBFlexibleWindowingItemResizeGestureSwitcherModifier *)self isDisplayEmbedded];
          v26 = [(SBFlexibleWindowingItemResizeGestureSwitcherModifier *)self prefersStripHidden];
          v27 = [(SBFlexibleWindowingItemResizeGestureSwitcherModifier *)self prefersDockHidden];
          [(SBFlexibleWindowingItemResizeGestureSwitcherModifier *)self leftStatusBarPartIntersectionRegion];
          v29 = v28;
          v31 = v30;
          v33 = v32;
          v35 = v34;
          [(SBFlexibleWindowingItemResizeGestureSwitcherModifier *)self rightStatusBarPartIntersectionRegion];
          v40 = [v14 flexibleWindowingAutoLayoutSpaceForAppLayout:v11 containerOrientation:v48 floatingDockHeight:v25 screenScale:v26 bounds:v27 isEmbeddedDisplay:v47 prefersStripHidden:v46 prefersDockHidden:v18 leftStatusBarPartIntersectionRegion:v20 rightStatusBarPartIntersectionRegion:{v22, v24, v29, v31, v33, v35, v36, v37, v38, v39}];
          autoLayoutSpaceWithDraggedItemExcluded = self->_autoLayoutSpaceWithDraggedItemExcluded;
          self->_autoLayoutSpaceWithDraggedItemExcluded = v40;
        }
      }
    }

    if (self->_autoLayoutSpaceWithDraggedItemExcluded)
    {
      v42 = [v6 itemForLayoutRole:a3];
      if (([(SBDisplayItem *)v42 isEqualToItem:?]& 1) != 0)
      {
        v43 = 1;
LABEL_20:

        goto LABEL_21;
      }

      if ([(SBFlexibleWindowingAutoLayoutSpace *)self->_autoLayoutSpaceWithDraggedItemExcluded containsDisplayItem:v42])
      {
        v44 = [(SBFlexibleWindowingAutoLayoutSpace *)self->_autoLayoutSpaceWithDraggedItemExcluded flexibleAutoLayoutItemForDisplayItem:v42];
        if ([v44 isFullyOccluded])
        {
          v43 = 3;
        }

        else if ([v44 isOverlapped])
        {
          v43 = 2;
        }

        else
        {
          v43 = 1;
        }

        goto LABEL_20;
      }
    }
  }

  v49.receiver = self;
  v49.super_class = SBFlexibleWindowingItemResizeGestureSwitcherModifier;
  v43 = [(SBFlexibleWindowingItemResizeGestureSwitcherModifier *)&v49 occlusionStateForLayoutRole:a3 inAppLayout:v6];
LABEL_21:

  return v43;
}

- (BOOL)isContentStatusBarVisibleForIndex:(unint64_t)a3
{
  p_currentSceneSize = &self->_currentSceneSize;
  [(SBFlexibleWindowingItemResizeGestureSwitcherModifier *)self containerViewBounds];
  width = p_currentSceneSize->width;
  height = p_currentSceneSize->height;
  if (p_currentSceneSize->width == v9 && height == v6)
  {
    return 0;
  }

  v12.receiver = self;
  v12.super_class = SBFlexibleWindowingItemResizeGestureSwitcherModifier;
  return [(SBFlexibleWindowingItemResizeGestureSwitcherModifier *)&v12 isContentStatusBarVisibleForIndex:a3, width, height];
}

- (unint64_t)hiddenContentStatusBarPartsForLayoutRole:(int64_t)a3 inAppLayout:(id)a4
{
  v6 = a4;
  v17.receiver = self;
  v17.super_class = SBFlexibleWindowingItemResizeGestureSwitcherModifier;
  v7 = [(SBFlexibleWindowingItemResizeGestureSwitcherModifier *)&v17 hiddenContentStatusBarPartsForLayoutRole:a3 inAppLayout:v6];
  [(SBFlexibleWindowingItemResizeGestureSwitcherModifier *)self containerViewBounds];
  width = self->_currentSceneSize.width;
  height = self->_currentSceneSize.height;
  if (width == v11 && height == v8)
  {
    v16.receiver = self;
    v16.super_class = SBFlexibleWindowingItemResizeGestureSwitcherModifier;
    v13 = [(SBFlexibleWindowingItemResizeGestureSwitcherModifier *)&v16 hiddenContentStatusBarPartsForLayoutRole:a3 inAppLayout:v6, width, height];
  }

  else
  {
    v13 = 10;
  }

  v14 = v13 | v7;
  if ([v6 containsItem:{self->_selectedDisplayItem, width, height}] && self->_currentWindowControlsLayout.style == 1)
  {
    v14 |= 4uLL;
  }

  return v14;
}

- (BOOL)wantsDockBehaviorAssertion
{
  [(SBFlexibleWindowingItemResizeGestureSwitcherModifier *)self _dockProgressForResizingWindow];
  v3 = BSFloatLessThanFloat();
  if (v3)
  {
    LOBYTE(v3) = ![(SBFlexibleWindowingItemResizeGestureSwitcherModifier *)self shouldConfigureInAppDockHiddenAssertion];
  }

  return v3;
}

- (double)dockProgress
{
  v6.receiver = self;
  v6.super_class = SBFlexibleWindowingItemResizeGestureSwitcherModifier;
  [(SBFlexibleWindowingItemResizeGestureSwitcherModifier *)&v6 dockProgress];
  v4 = v3;
  [(SBFlexibleWindowingItemResizeGestureSwitcherModifier *)self _dockProgressForResizingWindow];
  if (v4 <= result)
  {
    return v4;
  }

  return result;
}

- (double)_dockProgressForResizingWindow
{
  v3 = 1.0;
  if (([(SBFlexibleWindowingItemResizeGestureSwitcherModifier *)self prefersDockHidden]& 1) == 0 && [(SBAppLayout *)self->_currentAppLayout containsItem:self->_selectedDisplayItem])
  {
    [(SBFlexibleWindowingItemResizeGestureSwitcherModifier *)self containerViewBounds];
    v5 = v4;
    [(SBFlexibleWindowingItemResizeGestureSwitcherModifier *)self floatingDockHeight];
    v7 = v6;
    v8 = [(SBSwitcherModifier *)self windowingConfiguration];
    [v8 dockTopMargin];
    v10 = v7 - v9;

    v11 = self->_currentFrameForDrawingInScreenCoordinates.origin.y + self->_currentFrameForDrawingInScreenCoordinates.size.height;
    if (self->_selectedItemIsInSlideOver)
    {
      v12 = [(SBSwitcherModifier *)self windowingConfiguration];
      [v12 slideOverBorderWidth];
      v11 = v11 + v13;
    }

    v14 = v5 - v11;
    if (v5 - v11 > v10)
    {
      v14 = v10;
    }

    return v14 / v10;
  }

  return v3;
}

- (BOOL)shouldConfigureInAppDockHiddenAssertion
{
  v3 = [(SBFlexibleWindowingItemResizeGestureSwitcherModifier *)self windowManagementContext];
  v4 = [v3 isFlexibleWindowingEnabled];

  if (v4)
  {
    if ([(SBFlexibleWindowingItemResizeGestureSwitcherModifier *)self isSoftwareKeyboardVisible]&& ([(SBFlexibleWindowingItemResizeGestureSwitcherModifier *)self isMedusaHostedKeyboardVisible]& 1) != 0)
    {
      return 1;
    }

    if (([(SBFlexibleWindowingItemResizeGestureSwitcherModifier *)self prefersDockHidden]& 1) != 0)
    {
      return 1;
    }

    [(SBFlexibleWindowingItemResizeGestureSwitcherModifier *)self _dockProgressForResizingWindow];
    if (BSFloatIsZero())
    {
      return 1;
    }

    v6 = [(SBFlexibleWindowingItemResizeGestureSwitcherModifier *)self appLayoutOnStage];
    v45[0] = MEMORY[0x277D85DD0];
    v45[1] = 3221225472;
    v45[2] = __95__SBFlexibleWindowingItemResizeGestureSwitcherModifier_shouldConfigureInAppDockHiddenAssertion__block_invoke;
    v45[3] = &unk_2783A8C90;
    v45[4] = self;
    v7 = [v6 appLayoutWithItemsPassingTest:v45];

    if (v7)
    {
      v8 = [v7 allItems];
      v9 = [v8 count];

      if (v9)
      {
        [(SBFlexibleWindowingItemResizeGestureSwitcherModifier *)self containerViewBounds];
        v43 = v11;
        v44 = v10;
        v13 = v12;
        v15 = v14;
        [(SBFlexibleWindowingItemResizeGestureSwitcherModifier *)self floatingDockHeight];
        v17 = v16;
        v18 = [(SBSwitcherModifier *)self windowingConfiguration];
        v19 = [(SBFlexibleWindowingItemResizeGestureSwitcherModifier *)self displayItemLayoutAttributesCalculator];
        v20 = [(SBFlexibleWindowingItemResizeGestureSwitcherModifier *)self switcherInterfaceOrientation];
        [(SBFlexibleWindowingItemResizeGestureSwitcherModifier *)self screenScale];
        v22 = v21;
        v23 = [(SBFlexibleWindowingItemResizeGestureSwitcherModifier *)self isDisplayEmbedded];
        v24 = [(SBFlexibleWindowingItemResizeGestureSwitcherModifier *)self prefersStripHidden];
        [(SBFlexibleWindowingItemResizeGestureSwitcherModifier *)self leftStatusBarPartIntersectionRegion];
        v26 = v25;
        v28 = v27;
        v30 = v29;
        v32 = v31;
        [(SBFlexibleWindowingItemResizeGestureSwitcherModifier *)self rightStatusBarPartIntersectionRegion];
        v37 = [v19 flexibleWindowingAutoLayoutSpaceForAppLayout:v7 containerOrientation:v20 floatingDockHeight:v23 screenScale:v24 bounds:0 isEmbeddedDisplay:v17 prefersStripHidden:v22 prefersDockHidden:v44 leftStatusBarPartIntersectionRegion:v43 rightStatusBarPartIntersectionRegion:{v13, v15, v26, v28, v30, v32, v33, v34, v35, v36}];

        [v37 boundingBox];
        v40 = v38 + v39;
        [v18 dockTopMargin];
        v42 = v15 - v17 - v41;

        if (v40 > v42)
        {

          return 1;
        }
      }
    }

    return 0;
  }

  else
  {
    v46.receiver = self;
    v46.super_class = SBFlexibleWindowingItemResizeGestureSwitcherModifier;
    return [(SBFlexibleWindowingItemResizeGestureSwitcherModifier *)&v46 shouldConfigureInAppDockHiddenAssertion];
  }
}

- (CGRect)_initialScaledFrameInScreenCoordinatesForSelectedDisplayItemInAppLayout:(id)a3
{
  v4 = a3;
  v5 = [(SBFlexibleWindowingItemResizeGestureSwitcherModifier *)self appLayouts];
  v6 = [v5 indexOfObject:v4];
  if (v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    [(SBFlexibleWindowingItemResizeGestureSwitcherModifier *)self containerViewBounds];
  }

  else
  {
    v26.receiver = self;
    v26.super_class = SBFlexibleWindowingItemResizeGestureSwitcherModifier;
    [(SBFlexibleWindowingItemResizeGestureSwitcherModifier *)&v26 frameForIndex:v6];
  }

  selectedLayoutRole = self->_selectedLayoutRole;
  SBRectWithSize();
  v25.receiver = self;
  v25.super_class = SBFlexibleWindowingItemResizeGestureSwitcherModifier;
  [(SBFlexibleWindowingItemResizeGestureSwitcherModifier *)&v25 frameForLayoutRole:selectedLayoutRole inAppLayout:v4 withBounds:?];
  v9 = v8;
  v11 = v10;
  UIRectGetCenter();
  v13 = v12;
  v15 = v14;
  v16 = self->_selectedLayoutRole;
  v24.receiver = self;
  v24.super_class = SBFlexibleWindowingItemResizeGestureSwitcherModifier;
  [(SBFlexibleWindowingItemResizeGestureSwitcherModifier *)&v24 scaleForLayoutRole:v16 inAppLayout:v4];
  v18 = v9 * v17;
  v19 = v11 * v17;

  v20 = v13 - v18 * 0.5;
  v21 = v15 - v19 * 0.5;
  v22 = v18;
  v23 = v19;
  result.size.height = v23;
  result.size.width = v22;
  result.origin.y = v21;
  result.origin.x = v20;
  return result;
}

- (CGRect)_convertToSpaceRectFromScreenRect:(CGRect)a3
{
  v4 = [(SBFlexibleWindowingItemResizeGestureSwitcherModifier *)self appLayouts];
  v5 = [v4 indexOfObject:self->_currentAppLayout];

  [(SBFlexibleWindowingItemResizeGestureSwitcherModifier *)self frameForIndex:v5];
  [(SBFlexibleWindowingItemResizeGestureSwitcherModifier *)self screenScale];

  UIRectIntegralWithScale();
  result.size.height = v9;
  result.size.width = v8;
  result.origin.y = v7;
  result.origin.x = v6;
  return result;
}

- (BOOL)_isStripVisibleForCurrentAppLayout
{
  v2 = [(SBSwitcherModifier *)self flexibleAutoLayoutSpaceForAppLayout:self->_currentAppLayout];
  v3 = [v2 isStripVisible];

  return v3 ^ 1;
}

- (void)handleGestureEvent:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBFlexibleWindowingItemResizeGestureSwitcherModifier.m" lineNumber:112 description:@"Item resize got a nil selected app layout"];
}

@end