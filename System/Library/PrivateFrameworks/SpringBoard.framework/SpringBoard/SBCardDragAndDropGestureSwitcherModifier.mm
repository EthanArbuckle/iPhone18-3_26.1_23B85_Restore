@interface SBCardDragAndDropGestureSwitcherModifier
- (BOOL)isLayoutRoleBlurred:(int64_t)blurred inAppLayout:(id)layout;
- (BOOL)isLayoutRoleMatchMovedToScene:(int64_t)scene inAppLayout:(id)layout;
- (BOOL)shouldScaleContentToFillBoundsAtIndex:(unint64_t)index;
- (BOOL)shouldShowBackdropViewAtIndex:(unint64_t)index;
- (BOOL)shouldUseAnchorPointToPinLayoutRolesToSpace:(unint64_t)space;
- (CGRect)frameForLayoutRole:(int64_t)role inAppLayout:(id)layout withBounds:(CGRect)bounds;
- (CGRect)fullyPresentedFrameForLayoutRole:(int64_t)role inAppLayout:(id)layout;
- (SBCardDragAndDropGestureSwitcherModifier)initWithGestureID:(id)d;
- (UIRectCornerRadii)cornerRadiiForLayoutRole:(int64_t)role inAppLayout:(id)layout withCornerRadii:(UIRectCornerRadii)radii;
- (double)dimmingAlphaForLayoutRole:(int64_t)role inAppLayout:(id)layout;
- (double)titleAndIconOpacityForIndex:(unint64_t)index;
- (id)animationAttributesForLayoutElement:(id)element;
- (id)handleBlurProgressEvent:(id)event;
- (id)handleGestureEvent:(id)event;
- (id)handleSceneReadyEvent:(id)event;
- (id)handleScrollEvent:(id)event;
- (id)handleSwitcherDropEvent:(id)event;
- (id)visibleAppLayouts;
@end

@implementation SBCardDragAndDropGestureSwitcherModifier

- (SBCardDragAndDropGestureSwitcherModifier)initWithGestureID:(id)d
{
  dCopy = d;
  v9.receiver = self;
  v9.super_class = SBCardDragAndDropGestureSwitcherModifier;
  v6 = [(SBGestureSwitcherModifier *)&v9 initWithGestureID:dCopy];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_gestureID, d);
  }

  return v7;
}

- (CGRect)frameForLayoutRole:(int64_t)role inAppLayout:(id)layout withBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  v63[2] = *MEMORY[0x277D85DE8];
  layoutCopy = layout;
  v61.receiver = self;
  v61.super_class = SBCardDragAndDropGestureSwitcherModifier;
  [(SBCardDragAndDropGestureSwitcherModifier *)&v61 frameForLayoutRole:role inAppLayout:layoutCopy withBounds:x, y, width, height];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v21 = [(SBAppLayout *)layoutCopy leafAppLayoutForRole:role];
  v22 = v21;
  if (self->_currentDropRegion == 7 && v21 == self->_draggingLeafAppLayout || self->_isScrolling && ![(SBAppLayout *)layoutCopy isOrContainsAppLayout:self->_draggingAppLayout])
  {
    goto LABEL_36;
  }

  if (v22 == self->_draggingLeafAppLayout)
  {
    intersectingAppLayout = self->_intersectingAppLayout;
    if (intersectingAppLayout && ![(SBAppLayout *)intersectingAppLayout isOrContainsAppLayout:?])
    {
      [(SBSwitcherDropRegionContext *)self->_dropRegionContext unscaledIntersectingAppLayoutSize];
      v18 = v40;
      v20 = v41;
    }

    goto LABEL_36;
  }

  if ([(SBAppLayout *)layoutCopy environment]== 2)
  {
    goto LABEL_36;
  }

  configuration = [(SBAppLayout *)self->_draggingAppLayout configuration];
  configuration2 = [(SBAppLayout *)self->_intersectingAppLayout configuration];
  if (self->_draggingAppLayout != layoutCopy || configuration < 2)
  {
    v26 = configuration2;
    if ([(SBAppLayout *)self->_intersectingAppLayout isOrContainsAppLayout:v22])
    {
      v27 = v26 <= 1;
    }

    else
    {
      v27 = 0;
    }

    if (!v27)
    {
      goto LABEL_36;
    }

    v28 = [MEMORY[0x277CCABB0] numberWithInteger:1];
    v62[0] = v28;
    v29 = [(SBAppLayout *)self->_draggingLeafAppLayout itemForLayoutRole:1];
    v63[0] = v29;
    v30 = [MEMORY[0x277CCABB0] numberWithInteger:?];
    v62[1] = v30;
    v31 = [(SBAppLayout *)self->_intersectingLeafAppLayout itemForLayoutRole:1];
    v63[1] = v31;
    v32 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v63 forKeys:v62 count:2];

    v33 = [[SBAppLayout alloc] initWithItemsForLayoutRoles:v32 configuration:3 environment:1 preferredDisplayOrdinal:[(SBCardDragAndDropGestureSwitcherModifier *)self displayOrdinal]];
    currentDropRegion = self->_currentDropRegion;
    if (currentDropRegion == 5)
    {
      [(SBCardDragAndDropGestureSwitcherModifier *)self containerViewBounds];
      v56.receiver = self;
      v56.super_class = SBCardDragAndDropGestureSwitcherModifier;
      [(SBCardDragAndDropGestureSwitcherModifier *)&v56 frameForLayoutRole:1 inAppLayout:v33 withBounds:?];
    }

    else
    {
      if (currentDropRegion != 4)
      {
LABEL_35:

        goto LABEL_36;
      }

      [(SBCardDragAndDropGestureSwitcherModifier *)self containerViewBounds];
      v57.receiver = self;
      v57.super_class = SBCardDragAndDropGestureSwitcherModifier;
      [(SBCardDragAndDropGestureSwitcherModifier *)&v57 frameForLayoutRole:2 inAppLayout:v33 withBounds:?];
    }

    v14 = v35;
    v16 = v36;
    v18 = v37;
    v20 = v38;
    goto LABEL_35;
  }

  if (v22 == self->_draggingLeafAppLayout)
  {
    [SBCardDragAndDropGestureSwitcherModifier frameForLayoutRole:a2 inAppLayout:self withBounds:?];
  }

  if ([(SBAppLayout *)self->_intersectingAppLayout isOrContainsAppLayout:layoutCopy])
  {
    finalTargetAppLayout = [(SBSwitcherDropRegionContext *)self->_dropRegionContext finalTargetAppLayout];
    v43 = self->_currentDropRegion;
    if (v43 == 5)
    {
      [(SBCardDragAndDropGestureSwitcherModifier *)self containerViewBounds];
      v59.receiver = self;
      v59.super_class = SBCardDragAndDropGestureSwitcherModifier;
      [(SBCardDragAndDropGestureSwitcherModifier *)&v59 frameForLayoutRole:1 inAppLayout:finalTargetAppLayout withBounds:?];
    }

    else
    {
      if (v43 != 4)
      {
LABEL_32:

        goto LABEL_36;
      }

      [(SBCardDragAndDropGestureSwitcherModifier *)self containerViewBounds];
      v60.receiver = self;
      v60.super_class = SBCardDragAndDropGestureSwitcherModifier;
      [(SBCardDragAndDropGestureSwitcherModifier *)&v60 frameForLayoutRole:2 inAppLayout:finalTargetAppLayout withBounds:?];
    }

    v14 = v44;
    v16 = v45;
    v18 = v46;
    v20 = v47;
    goto LABEL_32;
  }

  [(SBCardDragAndDropGestureSwitcherModifier *)self containerViewBounds];
  v58.receiver = self;
  v58.super_class = SBCardDragAndDropGestureSwitcherModifier;
  [(SBCardDragAndDropGestureSwitcherModifier *)&v58 frameForLayoutRole:1 inAppLayout:v22 withBounds:?];
  v14 = v48;
  v16 = v49;
  v18 = v50;
  v20 = v51;
LABEL_36:

  v52 = v14;
  v53 = v16;
  v54 = v18;
  v55 = v20;
  result.size.height = v55;
  result.size.width = v54;
  result.origin.y = v53;
  result.origin.x = v52;
  return result;
}

- (id)handleBlurProgressEvent:(id)event
{
  eventCopy = event;
  v5 = [[SBUpdateLayoutSwitcherEventResponse alloc] initWithOptions:64 updateMode:2];
  v9.receiver = self;
  v9.super_class = SBCardDragAndDropGestureSwitcherModifier;
  v6 = [(SBSwitcherModifier *)&v9 handleBlurProgressEvent:eventCopy];

  v7 = [(SBChainableModifierEventResponse *)SBSwitcherModifierEventResponse responseByAppendingResponse:v5 toResponse:v6];

  return v7;
}

- (id)handleScrollEvent:(id)event
{
  v8.receiver = self;
  v8.super_class = SBCardDragAndDropGestureSwitcherModifier;
  eventCopy = event;
  v5 = [(SBSwitcherModifier *)&v8 handleScrollEvent:eventCopy];
  phase = [eventCopy phase];

  self->_isScrolling = phase == 0;

  return v5;
}

- (BOOL)isLayoutRoleBlurred:(int64_t)blurred inAppLayout:(id)layout
{
  layoutCopy = layout;
  v15.receiver = self;
  v15.super_class = SBCardDragAndDropGestureSwitcherModifier;
  v7 = [(SBCardDragAndDropGestureSwitcherModifier *)&v15 isLayoutRoleBlurred:blurred inAppLayout:layoutCopy];
  v8 = [(SBAppLayout *)layoutCopy leafAppLayoutForRole:blurred];
  if (self->_isScrolling && ![(SBAppLayout *)layoutCopy isOrContainsAppLayout:self->_draggingAppLayout]|| [(SBAppLayout *)self->_draggingLeafAppLayout isOrContainsAppLayout:v8]|| [(SBAppLayout *)self->_intersectingAppLayout environment]== 2)
  {
    LOBYTE(v9) = 0;
  }

  else if (self->_gestureEnded)
  {
    LOBYTE(v9) = v7;
  }

  else
  {
    isSplitConfiguration = [(SBAppLayout *)self->_draggingAppLayout isSplitConfiguration];
    isSplitConfiguration2 = [(SBAppLayout *)self->_intersectingAppLayout isSplitConfiguration];
    v9 = ![(SBAppLayout *)self->_intersectingAppLayout isOrContainsAppLayout:v8];
    if (self->_draggingAppLayout != layoutCopy || !isSplitConfiguration)
    {
      v13 = v9 | isSplitConfiguration2;
      LOBYTE(v9) = v7;
      if ((v13 & 1) == 0)
      {
        v14 = [(SBAppLayout *)layoutCopy itemForLayoutRole:blurred];
        if (self->_currentDropRegion == 7)
        {
          LOBYTE(v9) = 0;
        }

        else
        {
          LOBYTE(v9) = [(SBCardDragAndDropGestureSwitcherModifier *)self displayItemSupportsMedusa:v14];
        }
      }
    }
  }

  return v9;
}

- (double)dimmingAlphaForLayoutRole:(int64_t)role inAppLayout:(id)layout
{
  layoutCopy = layout;
  v14.receiver = self;
  v14.super_class = SBCardDragAndDropGestureSwitcherModifier;
  [(SBCardDragAndDropGestureSwitcherModifier *)&v14 dimmingAlphaForLayoutRole:role inAppLayout:layoutCopy];
  v8 = v7;
  v9 = [(SBAppLayout *)layoutCopy leafAppLayoutForRole:role];
  if (self->_currentDropRegion != 7)
  {
    intersectingAppLayout = self->_intersectingAppLayout;
    if (intersectingAppLayout == layoutCopy && [(SBAppLayout *)intersectingAppLayout isSplitConfiguration]&& ![(SBAppLayout *)self->_intersectingAppLayout isOrContainsAppLayout:self->_draggingLeafAppLayout]&& v9 != self->_draggingLeafAppLayout && v9 == self->_intersectingLeafAppLayout)
    {
      medusaSettings = [(SBCardDragAndDropGestureSwitcherModifier *)self medusaSettings];
      [medusaSettings defaultDimmingOpacity];
      v8 = v12;
    }
  }

  return v8;
}

- (BOOL)isLayoutRoleMatchMovedToScene:(int64_t)scene inAppLayout:(id)layout
{
  layoutCopy = layout;
  v10.receiver = self;
  v10.super_class = SBCardDragAndDropGestureSwitcherModifier;
  v7 = [(SBCardDragAndDropGestureSwitcherModifier *)&v10 isLayoutRoleMatchMovedToScene:scene inAppLayout:layoutCopy];
  v8 = [layoutCopy leafAppLayoutForRole:scene];
  if ([(SBAppLayout *)self->_draggingAppLayout isOrContainsAppLayout:v8]|| [(SBAppLayout *)self->_intersectingAppLayout isOrContainsAppLayout:layoutCopy]|| [(SBAppLayout *)self->_previouslyIntersectingAppLayout isOrContainsAppLayout:layoutCopy])
  {
    v7 = 1;
  }

  return v7;
}

- (BOOL)shouldShowBackdropViewAtIndex:(unint64_t)index
{
  appLayouts = [(SBCardDragAndDropGestureSwitcherModifier *)self appLayouts];
  v6 = [appLayouts objectAtIndex:index];

  if (!self->_gestureEnded && self->_intersectingAppLayout && [v6 isOrContainsAppLayout:?])
  {
    v7 = [(SBAppLayout *)self->_intersectingAppLayout isOrContainsAppLayout:self->_draggingLeafAppLayout];
    v8 = !v7 | [(SBAppLayout *)self->_draggingAppLayout isSplitConfiguration];
  }

  else
  {
    v8 = 0;
  }

  if (([v6 isSplitConfiguration] & 1) == 0)
  {
    v9 = [v6 itemForLayoutRole:1];
    v8 &= [(SBCardDragAndDropGestureSwitcherModifier *)self displayItemSupportsMedusa:v9];
  }

  v10 = (self->_currentDropRegion & 0xFFFFFFFFFFFFFFFELL) != 6;

  return v10 & v8;
}

- (id)visibleAppLayouts
{
  v3 = objc_alloc(MEMORY[0x277CBEB58]);
  v7.receiver = self;
  v7.super_class = SBCardDragAndDropGestureSwitcherModifier;
  visibleAppLayouts = [(SBCardDragAndDropGestureSwitcherModifier *)&v7 visibleAppLayouts];
  v5 = [v3 initWithSet:visibleAppLayouts];

  [v5 addObject:self->_draggingAppLayout];

  return v5;
}

- (id)handleSwitcherDropEvent:(id)event
{
  v8.receiver = self;
  v8.super_class = SBCardDragAndDropGestureSwitcherModifier;
  eventCopy = event;
  v5 = [(SBSwitcherModifier *)&v8 handleSwitcherDropEvent:eventCopy];
  phase = [eventCopy phase];

  if (phase == 1)
  {
    [(SBChainableModifier *)self setState:1];
  }

  return v5;
}

- (id)handleSceneReadyEvent:(id)event
{
  eventCopy = event;
  v5 = [[SBUpdateLayoutSwitcherEventResponse alloc] initWithOptions:64 updateMode:2];
  v9.receiver = self;
  v9.super_class = SBCardDragAndDropGestureSwitcherModifier;
  v6 = [(SBSwitcherModifier *)&v9 handleSceneReadyEvent:eventCopy];

  v7 = [(SBChainableModifierEventResponse *)SBSwitcherModifierEventResponse responseByAppendingResponse:v5 toResponse:v6];

  return v7;
}

- (id)handleGestureEvent:(id)event
{
  eventCopy = event;
  v29.receiver = self;
  v29.super_class = SBCardDragAndDropGestureSwitcherModifier;
  v6 = [(SBGestureSwitcherModifier *)&v29 handleGestureEvent:eventCopy];
  gestureID = [eventCopy gestureID];
  v8 = [gestureID isEqual:self->_gestureID];

  if (v8)
  {
    v9 = eventCopy;
    if (!v9)
    {
      [(SBCardDragAndDropGestureSwitcherModifier *)a2 handleGestureEvent:?];
    }

    self->_gestureEnded = [v9 phase] == 3;
    switcherDropRegionContext = [v9 switcherDropRegionContext];
    dropRegionContext = self->_dropRegionContext;
    self->_dropRegionContext = switcherDropRegionContext;

    self->_currentDropRegion = [(SBSwitcherDropRegionContext *)self->_dropRegionContext currentDropRegion];
    selectedAppLayout = [v9 selectedAppLayout];
    draggingAppLayout = self->_draggingAppLayout;
    self->_draggingAppLayout = selectedAppLayout;

    draggedSceneLayoutRole = [v9 draggedSceneLayoutRole];
    self->_draggingLayoutRole = draggedSceneLayoutRole;
    v15 = [(SBAppLayout *)self->_draggingAppLayout leafAppLayoutForRole:draggedSceneLayoutRole];
    draggingLeafAppLayout = self->_draggingLeafAppLayout;
    self->_draggingLeafAppLayout = v15;

    intersectingAppLayout = [(SBSwitcherDropRegionContext *)self->_dropRegionContext intersectingAppLayout];
    if (intersectingAppLayout)
    {
    }

    else
    {
      intersectingAppLayout = self->_intersectingAppLayout;
      if (intersectingAppLayout)
      {
        objc_storeStrong(&self->_previouslyIntersectingAppLayout, intersectingAppLayout);
      }
    }

    intersectingAppLayout2 = [(SBSwitcherDropRegionContext *)self->_dropRegionContext intersectingAppLayout];
    v20 = self->_intersectingAppLayout;
    self->_intersectingAppLayout = intersectingAppLayout2;

    intersectingLayoutRole = [(SBSwitcherDropRegionContext *)self->_dropRegionContext intersectingLayoutRole];
    self->_intersectingLayoutRole = intersectingLayoutRole;
    v22 = [(SBAppLayout *)self->_intersectingAppLayout leafAppLayoutForRole:intersectingLayoutRole];
    intersectingLeafAppLayout = self->_intersectingLeafAppLayout;
    self->_intersectingLeafAppLayout = v22;

    [v9 translationInContainerView];
    self->_translation.x = v24;
    self->_translation.y = v25;
    [v9 locationInContainerView];
    self->_location.x = v26;
    self->_location.y = v27;
  }

  if (self->_gestureEnded && !self->_dropModifier)
  {
    [(SBChainableModifier *)self setState:1];
  }

  return v6;
}

- (CGRect)fullyPresentedFrameForLayoutRole:(int64_t)role inAppLayout:(id)layout
{
  layoutCopy = layout;
  [(SBCardDragAndDropGestureSwitcherModifier *)self containerViewBounds];
  [(SBCardDragAndDropGestureSwitcherModifier *)self frameForLayoutRole:role inAppLayout:layoutCopy withBounds:?];
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

- (UIRectCornerRadii)cornerRadiiForLayoutRole:(int64_t)role inAppLayout:(id)layout withCornerRadii:(UIRectCornerRadii)radii
{
  topRight = radii.topRight;
  bottomRight = radii.bottomRight;
  bottomLeft = radii.bottomLeft;
  topLeft = radii.topLeft;
  layoutCopy = layout;
  v12 = layoutCopy;
  if (self->_currentDropRegion != 7 && (([layoutCopy isOrContainsAppLayout:self->_intersectingAppLayout] & 1) != 0 || objc_msgSend(v12, "isOrContainsAppLayout:", self->_draggingAppLayout)))
  {
    appLayouts = [(SBCardDragAndDropGestureSwitcherModifier *)self appLayouts];
    v31.receiver = self;
    v31.super_class = SBCardDragAndDropGestureSwitcherModifier;
    -[SBCardDragAndDropGestureSwitcherModifier cornerRadiiForIndex:](&v31, sel_cornerRadiiForIndex_, [appLayouts indexOfObject:v12]);
    v14 = v22;
    v16 = v23;
    v18 = v24;
    v20 = v25;
  }

  else
  {
    v30.receiver = self;
    v30.super_class = SBCardDragAndDropGestureSwitcherModifier;
    [(SBCardDragAndDropGestureSwitcherModifier *)&v30 cornerRadiiForLayoutRole:role inAppLayout:v12 withCornerRadii:topLeft, bottomLeft, bottomRight, topRight];
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v20 = v19;
  }

  v26 = v14;
  v27 = v16;
  v28 = v18;
  v29 = v20;
  result.topRight = v29;
  result.bottomRight = v28;
  result.bottomLeft = v27;
  result.topLeft = v26;
  return result;
}

- (double)titleAndIconOpacityForIndex:(unint64_t)index
{
  appLayouts = [(SBCardDragAndDropGestureSwitcherModifier *)self appLayouts];
  v6 = [appLayouts objectAtIndex:index];

  v7 = 0.0;
  if (([v6 isOrContainsAppLayout:self->_draggingAppLayout] & 1) == 0)
  {
    if ((self->_currentDropRegion & 0xFFFFFFFFFFFFFFFELL) == 6 || ![v6 isOrContainsAppLayout:self->_intersectingAppLayout] || (-[SBAppLayout itemForLayoutRole:](self->_intersectingAppLayout, "itemForLayoutRole:", 1), v8 = objc_claimAutoreleasedReturnValue(), v9 = -[SBCardDragAndDropGestureSwitcherModifier displayItemSupportsMedusa:](self, "displayItemSupportsMedusa:", v8), v8, (v9 & 1) == 0))
    {
      v12.receiver = self;
      v12.super_class = SBCardDragAndDropGestureSwitcherModifier;
      [(SBCardDragAndDropGestureSwitcherModifier *)&v12 titleAndIconOpacityForIndex:index];
      v7 = v10;
    }
  }

  return v7;
}

- (BOOL)shouldScaleContentToFillBoundsAtIndex:(unint64_t)index
{
  v23 = *MEMORY[0x277D85DE8];
  appLayouts = [(SBCardDragAndDropGestureSwitcherModifier *)self appLayouts];
  v6 = [appLayouts objectAtIndex:index];

  v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v8 = v7;
  if (self->_draggingAppLayout)
  {
    [v7 addObject:?];
  }

  if (self->_intersectingAppLayout)
  {
    [v8 addObject:?];
  }

  if (self->_previouslyIntersectingAppLayout)
  {
    [v8 addObject:?];
  }

  remainingAppLayout = [(SBSwitcherDropRegionContext *)self->_dropRegionContext remainingAppLayout];

  if (remainingAppLayout)
  {
    remainingAppLayout2 = [(SBSwitcherDropRegionContext *)self->_dropRegionContext remainingAppLayout];
    [v8 addObject:remainingAppLayout2];
  }

  evictedAppLayout = [(SBSwitcherDropRegionContext *)self->_dropRegionContext evictedAppLayout];

  if (evictedAppLayout)
  {
    evictedAppLayout2 = [(SBSwitcherDropRegionContext *)self->_dropRegionContext evictedAppLayout];
    [v8 addObject:evictedAppLayout2];
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v13 = v8;
  v14 = [v13 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v14)
  {
    v15 = *v19;
    while (2)
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v19 != v15)
        {
          objc_enumerationMutation(v13);
        }

        if ([v6 isOrContainsAppLayout:{*(*(&v18 + 1) + 8 * i), v18}])
        {
          LOBYTE(v14) = 1;
          goto LABEL_21;
        }
      }

      v14 = [v13 countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v14)
      {
        continue;
      }

      break;
    }
  }

LABEL_21:

  return v14;
}

- (id)animationAttributesForLayoutElement:(id)element
{
  elementCopy = element;
  v11.receiver = self;
  v11.super_class = SBCardDragAndDropGestureSwitcherModifier;
  v5 = [(SBGestureSwitcherModifier *)&v11 animationAttributesForLayoutElement:elementCopy];
  v6 = [v5 mutableCopy];

  medusaSettings = [(SBCardDragAndDropGestureSwitcherModifier *)self medusaSettings];
  resizeAnimationSettings = [medusaSettings resizeAnimationSettings];

  [v6 setLayoutSettings:resizeAnimationSettings];
  [v6 setPositionSettings:resizeAnimationSettings];
  [v6 setScaleSettings:resizeAnimationSettings];
  [v6 setCornerRadiusSettings:resizeAnimationSettings];
  [v6 setUpdateMode:3];
  if (self->_isScrolling && self->_intersectingAppLayout == elementCopy && [(SBAppLayout *)self->_draggingAppLayout isOrContainsAppLayout:?])
  {
    initWithDefaultValues = [objc_alloc(MEMORY[0x277D65E60]) initWithDefaultValues];
    [resizeAnimationSettings response];
    [initWithDefaultValues setResponse:?];
    [initWithDefaultValues setDampingRatio:1.0];
    v13 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
    [initWithDefaultValues setFrameRateRange:1114113 highFrameRateReason:{*&v13.minimum, *&v13.maximum, *&v13.preferred}];
    [v6 setLayoutSettings:initWithDefaultValues];
    [v6 setPositionSettings:initWithDefaultValues];
    [v6 setScaleSettings:initWithDefaultValues];
    [v6 setPositionUpdateMode:3];
    [v6 setLayoutUpdateMode:3];
    [v6 setOpacityUpdateMode:3];
    [v6 setScaleUpdateMode:3];
    [v6 setCornerRadiusUpdateMode:3];
    [v6 setTitleAndIconOpacityUpdateMode:3];
  }

  return v6;
}

- (BOOL)shouldUseAnchorPointToPinLayoutRolesToSpace:(unint64_t)space
{
  appLayouts = [(SBCardDragAndDropGestureSwitcherModifier *)self appLayouts];
  v6 = [appLayouts objectAtIndex:space];

  if (v6 == self->_draggingAppLayout || v6 == self->_intersectingAppLayout)
  {
    v7 = 0;
  }

  else
  {
    v9.receiver = self;
    v9.super_class = SBCardDragAndDropGestureSwitcherModifier;
    v7 = [(SBCardDragAndDropGestureSwitcherModifier *)&v9 shouldUseAnchorPointToPinLayoutRolesToSpace:space];
  }

  return v7;
}

- (void)frameForLayoutRole:(uint64_t)a1 inAppLayout:(uint64_t)a2 withBounds:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBCardDragAndDropGestureSwitcherModifier.m" lineNumber:98 description:@"Shouldn't attempt to layout the dragging item."];
}

- (void)handleGestureEvent:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBCardDragAndDropGestureSwitcherModifier.m" lineNumber:318 description:@"Found invalid modifier event."];
}

@end