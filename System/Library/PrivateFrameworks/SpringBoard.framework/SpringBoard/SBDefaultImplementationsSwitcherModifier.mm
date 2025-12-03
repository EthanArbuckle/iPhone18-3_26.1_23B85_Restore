@interface SBDefaultImplementationsSwitcherModifier
- (BOOL)_isLayoutRoleBehindCenterWindow:(int64_t)window inAppLayout:(id)layout;
- (BOOL)isContinuousExposeStripVisible;
- (BOOL)shouldUseNonuniformSnapshotScalingForLayoutRole:(int64_t)role inAppLayout:(id)layout;
- (BOOL)wantsSpaceAccessoryViewGenieForAppLayout:(id)layout;
- (CGPoint)adjustedSpaceAccessoryViewPerspectiveAngle:(CGPoint)angle forAppLayout:(id)layout;
- (CGPoint)anchorPointForIndex:(unint64_t)index;
- (CGPoint)contentViewOffsetForAccessoriesOfAppLayout:(id)layout;
- (CGPoint)contentViewOffsetForLayoutRole:(int64_t)role inAppLayout:(id)layout;
- (CGPoint)expandedSourcePositionForSystemApertureTransition;
- (CGPoint)frameForIndexOffsetToCounteractSwitcherWindowMatchMoveForIndex:(unint64_t)index;
- (CGPoint)perspectiveAngleForIndex:(unint64_t)index;
- (CGRect)bounceIconInitialFrame;
- (CGRect)frameForLayoutRole:(int64_t)role inAppLayout:(id)layout withBounds:(CGRect)bounds;
- (CGRect)frameForSlideOverTongueAppLayout;
- (CGRect)frameForSplitViewHandleDimmingView:(id)view;
- (CGRect)frameForSplitViewHandleNubView:(id)view;
- (CGRect)rootContentViewMaskRect;
- (SBDefaultImplementationsSwitcherModifier)init;
- (SBWindowControlsLayout)windowControlsLayoutForLeafAppLayout:(SEL)layout;
- (UIRectCornerRadii)cornerRadiiForLayoutRole:(int64_t)role inAppLayout:(id)layout withCornerRadii:(UIRectCornerRadii)radii;
- (double)cornerRadiusForSlideOverTongueAppLayout;
- (double)dimmingAlphaForLayoutRole:(int64_t)role inAppLayout:(id)layout;
- (double)scaleForLayoutRole:(int64_t)role inAppLayout:(id)layout;
- (double)slideOverMarginForLayoutRole:(int64_t)role inAppLayout:(id)layout;
- (double)spaceAccessoryViewIconHitTestOutsetForAppLayout:(id)layout;
- (id)_slideOverAppLayoutIfAny;
- (id)identityMeshTransformForIndex:(unint64_t)index;
- (id)multipleWindowsIndicatorLayoutRolesForAppLayout:(id)layout;
- (id)resizeGrabberLayoutAttributesForAppLayout:(id)layout;
- (id)settingsForAnimatableProperty:(id)property;
- (id)topMostLayoutRolesForAppLayout:(id)layout;
- (unint64_t)maskedCornersForLayoutRole:(int64_t)role inAppLayout:(id)layout withMaskedCorners:(unint64_t)corners;
- (unint64_t)slideOverTongueDirection;
@end

@implementation SBDefaultImplementationsSwitcherModifier

- (CGRect)rootContentViewMaskRect
{
  v2 = *MEMORY[0x277CBF398];
  v3 = *(MEMORY[0x277CBF398] + 8);
  v4 = *(MEMORY[0x277CBF398] + 16);
  v5 = *(MEMORY[0x277CBF398] + 24);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (SBDefaultImplementationsSwitcherModifier)init
{
  v5.receiver = self;
  v5.super_class = SBDefaultImplementationsSwitcherModifier;
  v2 = [(SBSwitcherModifier *)&v5 init];
  if (v2)
  {
    v3 = objc_alloc_init(SBDefaultWindowingModifier);
    [(SBChainableModifier *)v2 addChildModifier:v3];
  }

  return v2;
}

- (CGRect)frameForLayoutRole:(int64_t)role inAppLayout:(id)layout withBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  layoutCopy = layout;
  if ([layoutCopy environment] != 3 && objc_msgSend(layoutCopy, "environment") != 2)
  {
    windowManagementContext = [(SBDefaultImplementationsSwitcherModifier *)self windowManagementContext];
    isFlexibleWindowingEnabled = [windowManagementContext isFlexibleWindowingEnabled];

    if (isFlexibleWindowingEnabled)
    {
      if (role == 4)
      {
        displayItemLayoutAttributesCalculator = [(SBDefaultImplementationsSwitcherModifier *)self displayItemLayoutAttributesCalculator];
        switcherInterfaceOrientation = [(SBDefaultImplementationsSwitcherModifier *)self switcherInterfaceOrientation];
        [(SBDefaultImplementationsSwitcherModifier *)self containerViewBounds];
        [displayItemLayoutAttributesCalculator frameForCenterItemWithConfiguration:1 interfaceOrientation:switcherInterfaceOrientation bounds:?];

        UIRectGetCenter();
        UIRectCenteredAboutPoint();
        x = v16;
        y = v17;
        width = v18;
        height = v19;
      }

      else
      {
        v43 = [(SBSwitcherModifier *)self flexibleAutoLayoutSpaceForAppLayout:layoutCopy];
        v44 = [layoutCopy itemForLayoutRole:role];
        v45 = [v43 flexibleAutoLayoutItemForDisplayItem:v44];
        [v45 position];
        [v45 size];
        SBRectWithSize();
        UIRectCenteredAboutPoint();
        v47 = v46;
        v49 = v48;
        width = v50;
        height = v51;
        [v43 boundingBox];
        v53 = v47 - v52;
        [v43 boundingBox];
        x = x + v53;
        y = y + v49 - v54;
      }
    }

    else
    {
      displayItemLayoutAttributesCalculator2 = [(SBDefaultImplementationsSwitcherModifier *)self displayItemLayoutAttributesCalculator];
      switcherInterfaceOrientation2 = [(SBDefaultImplementationsSwitcherModifier *)self switcherInterfaceOrientation];
      [(SBDefaultImplementationsSwitcherModifier *)self floatingDockHeight];
      v61 = v22;
      [(SBDefaultImplementationsSwitcherModifier *)self screenScale];
      v60 = v23;
      isDisplayEmbedded = [(SBDefaultImplementationsSwitcherModifier *)self isDisplayEmbedded];
      prefersStripHidden = [(SBDefaultImplementationsSwitcherModifier *)self prefersStripHidden];
      prefersDockHidden = [(SBDefaultImplementationsSwitcherModifier *)self prefersDockHidden];
      [(SBDefaultImplementationsSwitcherModifier *)self leftStatusBarPartIntersectionRegion];
      v28 = v27;
      v30 = v29;
      v32 = v31;
      v34 = v33;
      [(SBDefaultImplementationsSwitcherModifier *)self rightStatusBarPartIntersectionRegion];
      LOBYTE(v59) = prefersDockHidden;
      [displayItemLayoutAttributesCalculator2 frameForLayoutRole:role inAppLayout:layoutCopy containerBounds:switcherInterfaceOrientation2 containerOrientation:0 floatingDockHeight:isDisplayEmbedded screenScale:prefersStripHidden isChamoisWindowingUIEnabled:x isEmbeddedDisplay:y prefersStripHidden:width prefersDockHidden:height leftStatusBarPartIntersectionRegion:v61 rightStatusBarPartIntersectionRegion:{v60, v59, v28, v30, v32, v34, v35, v36, v37, v38}];
      x = v39;
      y = v40;
      width = v41;
      height = v42;
    }
  }

  v55 = x;
  v56 = y;
  v57 = width;
  v58 = height;
  result.size.height = v58;
  result.size.width = v57;
  result.origin.y = v56;
  result.origin.x = v55;
  return result;
}

- (double)scaleForLayoutRole:(int64_t)role inAppLayout:(id)layout
{
  layoutCopy = layout;
  windowManagementContext = [(SBDefaultImplementationsSwitcherModifier *)self windowManagementContext];
  v8 = 1.0;
  if ([windowManagementContext isFlexibleWindowingEnabled])
  {
    v9 = [(SBDefaultImplementationsSwitcherModifier *)self appLayoutContainingAppLayout:layoutCopy];
    v10 = [layoutCopy itemForLayoutRole:role];
    v11 = [v9 layoutRoleForItem:v10];

    v12 = [(SBSwitcherModifier *)self flexibleAutoLayoutSpaceForAppLayout:layoutCopy];
    windowingConfiguration = [(SBSwitcherModifier *)self windowingConfiguration];
    v14 = [v9 itemForLayoutRole:v11];
    v15 = [v12 flexibleAutoLayoutItemForDisplayItem:v14];
    if (![v15 isOverlapped] || objc_msgSend(v15, "intersectedDisplayRectCorners"))
    {
      goto LABEL_20;
    }

    [(SBDefaultImplementationsSwitcherModifier *)self containerViewBounds];
    v17 = v16;
    v19 = v18;
    v21 = v20;
    v23 = v22;
    [v15 frame];
    v32.origin.x = v17;
    v32.origin.y = v19;
    v32.size.width = v21;
    v32.size.height = v23;
    CGRectIntersection(v31, v32);
    IsZero = BSFloatIsZero();
    v8 = 1.0;
    if (BSFloatApproximatelyEqualToFloat())
    {
      IsZero |= 4u;
    }

    if (BSFloatIsZero())
    {
      IsZero |= 2u;
    }

    if (BSFloatApproximatelyEqualToFloat())
    {
      v25 = IsZero | 8;
    }

    else
    {
      v25 = IsZero;
    }

    v26 = v25 & 5;
    v27 = v25 & 0xA;
    if (v26 == 5)
    {
      if (v27)
      {
LABEL_20:

        goto LABEL_21;
      }
    }

    else if (v27 == 10 && v26 != 0)
    {
      goto LABEL_20;
    }

    [v15 size];
    [windowingConfiguration partiallyOccludedStageScaleForItemWithSize:?];
    v8 = v29;
    goto LABEL_20;
  }

LABEL_21:

  return v8;
}

- (UIRectCornerRadii)cornerRadiiForLayoutRole:(int64_t)role inAppLayout:(id)layout withCornerRadii:(UIRectCornerRadii)radii
{
  topRight = radii.topRight;
  bottomRight = radii.bottomRight;
  bottomLeft = radii.bottomLeft;
  topLeft = radii.topLeft;
  layoutCopy = layout;
  if (role == 4)
  {
    [(SBDefaultImplementationsSwitcherModifier *)self displayCornerRadius];
    if (BSFloatIsZero())
    {
      switcherSettings = [(SBDefaultImplementationsSwitcherModifier *)self switcherSettings];
      [switcherSettings gridSwitcherHomeButtonDeviceCardCornerRadius];
    }

    SBRectCornerRadiiForRadius();
    topLeft = v13;
    v15 = v14;
    bottomRight = v16;
    topRight = v17;
  }

  else
  {
    windowManagementContext = [(SBDefaultImplementationsSwitcherModifier *)self windowManagementContext];
    isChamoisOrFlexibleWindowing = [windowManagementContext isChamoisOrFlexibleWindowing];

    if ((isChamoisOrFlexibleWindowing & 1) == 0)
    {
      if (role != 1 || ([layoutCopy itemForLayoutRole:2], v20 = objc_claimAutoreleasedReturnValue(), v20, v20))
      {
        isRTLEnabled = [(SBDefaultImplementationsSwitcherModifier *)self isRTLEnabled];
        [(SBDefaultImplementationsSwitcherModifier *)self splitViewInnerCornerRadius];
        v15 = v22;
        v23 = role == 1 && isRTLEnabled == 0;
        if (!v23 && ((role == 2) & isRTLEnabled) == 0)
        {
          topLeft = v22;
          goto LABEL_15;
        }

        topRight = v22;
        bottomRight = v22;
      }
    }

    v15 = bottomLeft;
  }

LABEL_15:

  v24 = topLeft;
  v25 = v15;
  v26 = bottomRight;
  v27 = topRight;
  result.topRight = v27;
  result.bottomRight = v26;
  result.bottomLeft = v25;
  result.topLeft = v24;
  return result;
}

- (unint64_t)maskedCornersForLayoutRole:(int64_t)role inAppLayout:(id)layout withMaskedCorners:(unint64_t)corners
{
  layoutCopy = layout;
  if (role != 4)
  {
    windowManagementContext = [(SBDefaultImplementationsSwitcherModifier *)self windowManagementContext];
    isChamoisOrFlexibleWindowing = [windowManagementContext isChamoisOrFlexibleWindowing];

    if (isChamoisOrFlexibleWindowing)
    {
      goto LABEL_14;
    }

    if (role == 1)
    {
      v11 = [layoutCopy itemForLayoutRole:2];

      if (!v11)
      {
        goto LABEL_14;
      }

      if (![(SBDefaultImplementationsSwitcherModifier *)self isRTLEnabled])
      {
        goto LABEL_11;
      }

      v12 = 0;
    }

    else
    {
      v12 = [(SBDefaultImplementationsSwitcherModifier *)self isRTLEnabled]^ 1;
    }

    if (role != 2 || (v12 & 1) != 0)
    {
      v13 = 5;
      goto LABEL_13;
    }

LABEL_11:
    v13 = 10;
LABEL_13:
    corners |= v13;
    goto LABEL_14;
  }

  corners = 15;
LABEL_14:

  return corners;
}

- (id)topMostLayoutRolesForAppLayout:(id)layout
{
  v21 = *MEMORY[0x277D85DE8];
  layoutCopy = layout;
  v5 = objc_opt_new();
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = [(SBDefaultImplementationsSwitcherModifier *)self zOrderedItemsInAppLayout:layoutCopy, 0];
  v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [layoutCopy layoutRoleForItem:*(*(&v16 + 1) + 8 * i)];
        if (v11 != 4)
        {
          v12 = [MEMORY[0x277CCABB0] numberWithInteger:v11];
          [v5 addObject:v12];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  v13 = [layoutCopy itemForLayoutRole:4];

  if (v13)
  {
    v14 = [MEMORY[0x277CCABB0] numberWithInteger:4];
    [v5 insertObject:v14 atIndex:0];
  }

  return v5;
}

- (double)dimmingAlphaForLayoutRole:(int64_t)role inAppLayout:(id)layout
{
  if (![(SBDefaultImplementationsSwitcherModifier *)self _isLayoutRoleBehindCenterWindow:role inAppLayout:layout])
  {
    return 0.0;
  }

  medusaSettings = [(SBDefaultImplementationsSwitcherModifier *)self medusaSettings];
  [medusaSettings defaultDimmingOpacity];
  v7 = v6;

  return v7;
}

- (BOOL)_isLayoutRoleBehindCenterWindow:(int64_t)window inAppLayout:(id)layout
{
  layoutCopy = layout;
  windowManagementContext = [(SBDefaultImplementationsSwitcherModifier *)self windowManagementContext];
  isFlexibleWindowingEnabled = [windowManagementContext isFlexibleWindowingEnabled];

  if (isFlexibleWindowingEnabled)
  {
    v9 = 0;
  }

  else
  {
    v10 = [(SBDefaultImplementationsSwitcherModifier *)self appLayoutContainingAppLayout:layoutCopy];
    if (v10 != layoutCopy)
    {
      allItems = [layoutCopy allItems];
      v12 = [allItems count];

      if (v12 == 1)
      {
        windowCopy = 1;
      }

      else
      {
        windowCopy = window;
      }

      v14 = [layoutCopy itemForLayoutRole:windowCopy];
      window = [v10 layoutRoleForItem:v14];
    }

    v15 = [v10 itemForLayoutRole:4];

    IsValidForSplitView = SBLayoutRoleIsValidForSplitView(window);
    if (v15)
    {
      v17 = IsValidForSplitView == 0;
    }

    else
    {
      v17 = 1;
    }

    v9 = !v17 && [layoutCopy environment] == 1;
  }

  return v9;
}

- (BOOL)shouldUseNonuniformSnapshotScalingForLayoutRole:(int64_t)role inAppLayout:(id)layout
{
  v5 = [layout itemForLayoutRole:role];
  LOBYTE(self) = [(SBDefaultImplementationsSwitcherModifier *)self displayItemIsClassic:v5];

  return self;
}

- (CGPoint)anchorPointForIndex:(unint64_t)index
{
  v3 = 0.5;
  v4 = 0.5;
  result.y = v4;
  result.x = v3;
  return result;
}

- (id)settingsForAnimatableProperty:(id)property
{
  initWithDefaultValues = [objc_alloc(MEMORY[0x277D65E60]) initWithDefaultValues];

  return initWithDefaultValues;
}

- (CGRect)bounceIconInitialFrame
{
  v2 = *MEMORY[0x277CBF398];
  v3 = *(MEMORY[0x277CBF398] + 8);
  v4 = *(MEMORY[0x277CBF398] + 16);
  v5 = *(MEMORY[0x277CBF398] + 24);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (id)multipleWindowsIndicatorLayoutRolesForAppLayout:(id)layout
{
  layoutCopy = layout;
  if ([layoutCopy environment] == 1)
  {
    v5 = [(SBDefaultImplementationsSwitcherModifier *)self appLayoutContainingAppLayout:layoutCopy];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __92__SBDefaultImplementationsSwitcherModifier_multipleWindowsIndicatorLayoutRolesForAppLayout___block_invoke;
    v9[3] = &unk_2783C06A8;
    v10 = v5;
    selfCopy = self;
    v6 = v5;
    v7 = SBLayoutRoleSetBuilder(v9);
  }

  else
  {
    v7 = SBLayoutRoleSetNone();
  }

  return v7;
}

void __92__SBDefaultImplementationsSwitcherModifier_multipleWindowsIndicatorLayoutRolesForAppLayout___block_invoke(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [*(a1 + 32) itemsWithoutCenterOrFloatingItems];
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        v10 = [*(a1 + 32) layoutRoleForItem:v9];
        v11 = [v9 bundleIdentifier];
        if (v9 && [*(a1 + 40) displayItemSupportsMultipleWindowsIndicator:v9] && objc_msgSend(*(a1 + 40), "numberOfVisibleAppLayoutsForBundleIdentifier:", v11) >= 2)
        {
          v3[2](v3, v10);
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }
}

- (double)spaceAccessoryViewIconHitTestOutsetForAppLayout:(id)layout
{
  medusaSettings = [(SBDefaultImplementationsSwitcherModifier *)self medusaSettings];
  [medusaSettings switcherShelfIconHitTestInset];
  v5 = v4;

  return v5;
}

- (BOOL)wantsSpaceAccessoryViewGenieForAppLayout:(id)layout
{
  allItems = [layout allItems];
  v4 = [allItems count] > 1;

  return v4;
}

- (CGPoint)contentViewOffsetForLayoutRole:(int64_t)role inAppLayout:(id)layout
{
  v4 = *MEMORY[0x277CBF348];
  v5 = *(MEMORY[0x277CBF348] + 8);
  result.y = v5;
  result.x = v4;
  return result;
}

- (CGPoint)contentViewOffsetForAccessoriesOfAppLayout:(id)layout
{
  v3 = *MEMORY[0x277CBF348];
  v4 = *(MEMORY[0x277CBF348] + 8);
  result.y = v4;
  result.x = v3;
  return result;
}

- (id)resizeGrabberLayoutAttributesForAppLayout:(id)layout
{
  layoutCopy = layout;
  isRTLEnabled = [(SBDefaultImplementationsSwitcherModifier *)self isRTLEnabled];
  v6 = &SBLayoutRoleSide;
  if (!isRTLEnabled)
  {
    v6 = &SBLayoutRolePrimary;
  }

  v7 = *v6;
  v8 = [(SBDefaultImplementationsSwitcherModifier *)self appLayoutContainingAppLayout:layoutCopy];

  v9 = [v8 leafAppLayoutForRole:v7];

  v10 = [SBSwitcherResizeGrabberLayoutAttributes attributesWithLeafAppLayout:v9 edge:8];

  return v10;
}

- (CGPoint)adjustedSpaceAccessoryViewPerspectiveAngle:(CGPoint)angle forAppLayout:(id)layout
{
  v4 = *MEMORY[0x277CBF348];
  v5 = *(MEMORY[0x277CBF348] + 8);
  result.y = v5;
  result.x = v4;
  return result;
}

- (CGPoint)perspectiveAngleForIndex:(unint64_t)index
{
  v3 = *MEMORY[0x277CBF348];
  v4 = *(MEMORY[0x277CBF348] + 8);
  result.y = v4;
  result.x = v3;
  return result;
}

- (CGPoint)expandedSourcePositionForSystemApertureTransition
{
  v2 = *MEMORY[0x277CBF348];
  v3 = *(MEMORY[0x277CBF348] + 8);
  result.y = v3;
  result.x = v2;
  return result;
}

- (id)identityMeshTransformForIndex:(unint64_t)index
{
  v51 = *MEMORY[0x277D85DE8];
  v12 = 0;
  memset(v11, 0, sizeof(v11));
  v13 = xmmword_21F8A6570;
  v15 = 0;
  v16 = 0;
  v14 = 0x3FE0000000000000;
  v17 = xmmword_21F8A65A0;
  v18 = 0x3FF0000000000000;
  v19 = 0;
  v20 = 0;
  v21 = 0;
  v22 = xmmword_21F8A6570;
  v23 = xmmword_21F8A6570;
  __asm { FMOV            V0.2D, #0.5 }

  v24 = _Q0;
  v25 = _Q0;
  v26 = xmmword_21F8A6550;
  v27 = xmmword_21F8A6580;
  v29 = 0;
  v30 = 0;
  v28 = 0x3FE0000000000000;
  v31 = xmmword_21F8A65A0;
  v32 = 0x3FF0000000000000;
  v33 = xmmword_21F8A6540;
  v34 = xmmword_21F8A65B0;
  __asm { FMOV            V0.2D, #1.0 }

  v35 = xmmword_21F8A65A0;
  v36 = _Q0;
  v37 = _Q0;
  v38 = 0;
  v39 = xmmword_21F8A65D0;
  v40 = 0;
  v41 = 0;
  v42 = xmmword_21F8A65E0;
  v43 = 0;
  v44 = 0;
  v45 = xmmword_21F8A65F0;
  v46 = 0;
  v47 = 0;
  v48 = xmmword_21F8A6600;
  v49 = 0;
  v50 = 0;
  v9 = [MEMORY[0x277CD9F00] meshTransformWithVertexCount:9 vertices:v11 faceCount:4 faces:&v39 depthNormalization:*MEMORY[0x277CDA150]];

  return v9;
}

- (BOOL)isContinuousExposeStripVisible
{
  [(SBDefaultImplementationsSwitcherModifier *)self continuousExposeStripProgress];

  return BSFloatGreaterThanFloat();
}

- (SBWindowControlsLayout)windowControlsLayoutForLeafAppLayout:(SEL)layout
{
  v25 = a4;
  windowManagementContext = [(SBDefaultImplementationsSwitcherModifier *)self windowManagementContext];
  isFlexibleWindowingEnabled = [windowManagementContext isFlexibleWindowingEnabled];

  if (isFlexibleWindowingEnabled)
  {
    allItems = [v25 allItems];
    firstObject = [allItems firstObject];

    v10 = [(SBSwitcherModifier *)self flexibleAutoLayoutSpaceForAppLayout:v25];
    v11 = [v10 flexibleAutoLayoutItemForDisplayItem:firstObject];

    [v11 frame];
    v13 = v12;
    v15 = v14;
    v17 = v16;
    v19 = v18;
    [(SBDefaultImplementationsSwitcherModifier *)self containerViewBounds];
    [(SBDefaultImplementationsSwitcherModifier *)self defaultWindowControlsLayoutForDisplayItem:firstObject frame:v13 containerBounds:v15, v17, v19, v20, v21, v22, v23];
  }

  else
  {
    SBWindowControlsLayoutMake(1, 0, retstr, *MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8));
  }

  return result;
}

- (unint64_t)slideOverTongueDirection
{
  _slideOverAppLayoutIfAny = [(SBDefaultImplementationsSwitcherModifier *)self _slideOverAppLayoutIfAny];
  if (_slideOverAppLayoutIfAny)
  {
    displayItemInSlideOver = [(SBDefaultImplementationsSwitcherModifier *)self displayItemInSlideOver];
    v5 = [(SBDefaultImplementationsSwitcherModifier *)self layoutAttributesForDisplayItem:displayItemInSlideOver inAppLayout:_slideOverAppLayoutIfAny];
    [(SBDisplayItemLayoutAttributes *)v5 slideOverConfiguration];
    IsLeftSided = SBDisplayItemSlideOverIsLeftSided(v9);

    if (IsLeftSided)
    {
      v7 = 2;
    }

    else
    {
      v7 = 1;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (CGRect)frameForSlideOverTongueAppLayout
{
  _slideOverAppLayoutIfAny = [(SBDefaultImplementationsSwitcherModifier *)self _slideOverAppLayoutIfAny];
  if (_slideOverAppLayoutIfAny)
  {
    displayItemInSlideOver = [(SBDefaultImplementationsSwitcherModifier *)self displayItemInSlideOver];
    v5 = [(SBSwitcherModifier *)self flexibleAutoLayoutSpaceForAppLayout:_slideOverAppLayoutIfAny];
    v6 = [v5 flexibleAutoLayoutItemForDisplayItem:displayItemInSlideOver];
    [v6 frame];
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v32 = 0;
    v30 = 0u;
    v31 = 0u;
    v15 = [(SBDefaultImplementationsSwitcherModifier *)self layoutAttributesForDisplayItem:displayItemInSlideOver inAppLayout:_slideOverAppLayoutIfAny];
    [(SBDisplayItemLayoutAttributes *)v15 slideOverConfiguration];

    windowingConfiguration = [(SBSwitcherModifier *)self windowingConfiguration];
    [windowingConfiguration slideOverBorderWidth];
    v18 = v17;

    v33.origin.x = v8;
    v33.origin.y = v10;
    v33.size.width = v12;
    v33.size.height = v14;
    v34 = CGRectInset(v33, -v18, -v18);
    y = v34.origin.y;
    width = v34.size.width;
    height = v34.size.height;
    v28[0] = v30;
    v28[1] = v31;
    v29 = v32;
    if (SBDisplayItemSlideOverIsLeftSided(v28))
    {
      v22 = -width;
    }

    else
    {
      [(SBDefaultImplementationsSwitcherModifier *)self containerViewBounds];
      v22 = v23;
    }
  }

  else
  {
    v22 = *MEMORY[0x277CBF3A0];
    y = *(MEMORY[0x277CBF3A0] + 8);
    width = *(MEMORY[0x277CBF3A0] + 16);
    height = *(MEMORY[0x277CBF3A0] + 24);
  }

  v24 = v22;
  v25 = y;
  v26 = width;
  v27 = height;
  result.size.height = v27;
  result.size.width = v26;
  result.origin.y = v25;
  result.origin.x = v24;
  return result;
}

- (double)cornerRadiusForSlideOverTongueAppLayout
{
  windowingConfiguration = [(SBSwitcherModifier *)self windowingConfiguration];
  displayItemInSlideOver = [(SBDefaultImplementationsSwitcherModifier *)self displayItemInSlideOver];
  [windowingConfiguration slideOverBorderWidth];
  v6 = v5;
  if (displayItemInSlideOver)
  {
    [(SBDefaultImplementationsSwitcherModifier *)self bestSupportedDefaultCornerRadiusForDisplayItem:displayItemInSlideOver];
  }

  else
  {
    [windowingConfiguration solariumStageCornerRadii];
  }

  v8 = v6 + v7;

  return v8;
}

- (double)slideOverMarginForLayoutRole:(int64_t)role inAppLayout:(id)layout
{
  layoutCopy = layout;
  windowManagementContext = [(SBDefaultImplementationsSwitcherModifier *)self windowManagementContext];
  v8 = 0.0;
  if (![windowManagementContext isFlexibleWindowingEnabled])
  {
    goto LABEL_4;
  }

  v9 = [layoutCopy itemForLayoutRole:role];
  displayItemInSlideOver = [(SBDefaultImplementationsSwitcherModifier *)self displayItemInSlideOver];
  v11 = BSEqualObjects();

  if (v11)
  {
    windowManagementContext = [(SBSwitcherModifier *)self windowingConfiguration];
    [windowManagementContext slideOverBorderWidth];
    v8 = v12;
LABEL_4:
  }

  return v8;
}

- (id)_slideOverAppLayoutIfAny
{
  v13[1] = *MEMORY[0x277D85DE8];
  displayItemInSlideOver = [(SBDefaultImplementationsSwitcherModifier *)self displayItemInSlideOver];
  if (displayItemInSlideOver)
  {
    appLayouts = [(SBDefaultImplementationsSwitcherModifier *)self appLayouts];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __68__SBDefaultImplementationsSwitcherModifier__slideOverAppLayoutIfAny__block_invoke;
    v11[3] = &unk_2783A8CB8;
    v5 = displayItemInSlideOver;
    v12 = v5;
    v6 = [appLayouts bs_firstObjectPassingTest:v11];

    if (!v6)
    {
      v7 = [SBAppLayout alloc];
      v13[0] = v5;
      v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:1];
      LOBYTE(v10) = 0;
      v6 = [(SBAppLayout *)v7 initWithItems:v8 centerItem:0 floatingItem:0 configuration:1 centerConfiguration:0 environment:1 hidden:v10 preferredDisplayOrdinal:[(SBDefaultImplementationsSwitcherModifier *)self displayOrdinal]];
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (CGRect)frameForSplitViewHandleNubView:(id)view
{
  v3 = *MEMORY[0x277CBF398];
  v4 = *(MEMORY[0x277CBF398] + 8);
  v5 = *(MEMORY[0x277CBF398] + 16);
  v6 = *(MEMORY[0x277CBF398] + 24);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (CGRect)frameForSplitViewHandleDimmingView:(id)view
{
  v3 = *MEMORY[0x277CBF398];
  v4 = *(MEMORY[0x277CBF398] + 8);
  v5 = *(MEMORY[0x277CBF398] + 16);
  v6 = *(MEMORY[0x277CBF398] + 24);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (CGPoint)frameForIndexOffsetToCounteractSwitcherWindowMatchMoveForIndex:(unint64_t)index
{
  v3 = *MEMORY[0x277CBF348];
  v4 = *(MEMORY[0x277CBF348] + 8);
  result.y = v4;
  result.x = v3;
  return result;
}

@end