@interface SBStashSlideOverItemIndirectGestureWindowingModifier
- (BOOL)isLayoutRoleMatchMovedToScene:(int64_t)scene inAppLayout:(id)layout;
- (BOOL)shouldUseAnchorPointToPinLayoutRolesToSpace:(unint64_t)space;
- (BOOL)wantsSlideOverTongue;
- (CGRect)frameForLayoutRole:(int64_t)role inAppLayout:(id)layout withBounds:(CGRect)bounds;
- (SBWindowingItemCorners)cornersForItem:(SEL)item;
- (SBWindowingItemFrame)frameForItem:(SEL)item;
- (double)opacityForLayoutRole:(int64_t)role inAppLayout:(id)layout atIndex:(unint64_t)index;
- (id)_responseForGestureEnd:(id)end;
- (id)_slideOverAppLayout;
- (id)adjustedAppLayoutsForAppLayouts:(id)layouts;
- (id)animationAttributesForItem:(id)item;
- (id)appLayoutsToCacheFullsizeSnapshots;
- (id)appLayoutsToCacheSnapshots;
- (id)topMostItems;
- (id)visibleItems;
- (unint64_t)slideOverTongueDirection;
- (unint64_t)slideOverTongueState;
- (void)didComplete;
- (void)gestureDidComplete:(id)complete;
- (void)gestureDidUpdate:(id)update;
- (void)gestureWillBegin:(id)begin;
- (void)transitionWillBegin:(id)begin;
- (void)willBegin;
@end

@implementation SBStashSlideOverItemIndirectGestureWindowingModifier

- (void)willBegin
{
  v5.receiver = self;
  v5.super_class = SBStashSlideOverItemIndirectGestureWindowingModifier;
  self->_wantsSlideOverTongue = [(SBStashSlideOverItemIndirectGestureWindowingModifier *)&v5 wantsSlideOverTongue];
  v4.receiver = self;
  v4.super_class = SBStashSlideOverItemIndirectGestureWindowingModifier;
  self->_slideOverTongueState = [(SBStashSlideOverItemIndirectGestureWindowingModifier *)&v4 slideOverTongueState];
  v3.receiver = self;
  v3.super_class = SBStashSlideOverItemIndirectGestureWindowingModifier;
  self->_slideOverTongueDirection = [(SBStashSlideOverItemIndirectGestureWindowingModifier *)&v3 slideOverTongueDirection];
}

- (void)gestureWillBegin:(id)begin
{
  beginCopy = begin;
  gestureID = self->_gestureID;
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

    displayItemInSlideOver = [(SBStashSlideOverItemIndirectGestureWindowingModifier *)self displayItemInSlideOver];
    slideOverDisplayItem = self->_slideOverDisplayItem;
    self->_slideOverDisplayItem = displayItemInSlideOver;

    if (self->_slideOverDisplayItem)
    {
      _slideOverAppLayout = [(SBStashSlideOverItemIndirectGestureWindowingModifier *)self _slideOverAppLayout];
      v13 = [(SBStashSlideOverItemIndirectGestureWindowingModifier *)self layoutAttributesForDisplayItem:self->_slideOverDisplayItem inAppLayout:_slideOverAppLayout];
      [(SBDisplayItemLayoutAttributes *)v13 slideOverConfiguration];
      v14 = v29[1];
      *&self->_initialSlideOverConfiguration.corner = v29[0];
      self->_initialSlideOverConfiguration.size = v14;
      *&self->_initialSlideOverConfiguration.isActive = v30;

      windowingConfiguration = [(SBWindowingModifier *)self windowingConfiguration];
      [windowingConfiguration slideOverBorderWidth];
      v17 = v16;

      p_initialFrame = &self->_initialFrame;
      if (self->_initialSlideOverConfiguration.isStashed)
      {
        [(SBStashSlideOverItemIndirectGestureWindowingModifier *)self frameForSlideOverTongueAppLayout];
        v32 = CGRectInset(v31, v17, v17);
        p_initialFrame->origin.x = v32.origin.x;
        self->_initialFrame.origin.y = v32.origin.y;
        self->_initialFrame.size.width = v32.size.width;
        self->_initialFrame.size.height = v32.size.height;
      }

      else
      {
        v19 = [(SBWindowingModifier *)self flexibleAutoLayoutSpaceForAppLayout:_slideOverAppLayout];
        v20 = [v19 flexibleAutoLayoutItemForDisplayItem:self->_slideOverDisplayItem];
        [v20 frame];
        p_initialFrame->origin.x = v21;
        self->_initialFrame.origin.y = v22;
        self->_initialFrame.size.width = v23;
        self->_initialFrame.size.height = v24;
      }

      appLayout = [(SBStashSlideOverItemIndirectGestureWindowingModifier *)self appLayout];
      initialAppLayout = self->_initialAppLayout;
      self->_initialAppLayout = appLayout;
    }

    v27 = +[SBUpdateLayoutSwitcherEventResponse setNeedsLayout];
    [(SBWindowingModifier *)self appendResponse:v27];

    v28 = objc_alloc_init(SBInvalidateAdjustedAppLayoutsSwitcherEventResponse);
    [(SBWindowingModifier *)self appendResponse:v28];
  }
}

- (void)gestureDidUpdate:(id)update
{
  updateCopy = update;
  appLayouts = [(SBStashSlideOverItemIndirectGestureWindowingModifier *)self appLayouts];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __73__SBStashSlideOverItemIndirectGestureWindowingModifier_gestureDidUpdate___block_invoke;
  v10[3] = &unk_2783A8CB8;
  v10[4] = self;
  v6 = [appLayouts bs_firstObjectPassingTest:v10];

  if (v6)
  {
    [updateCopy translationInContainerView];
    self->_translation.x = v7;
    self->_translation.y = v8;
    v9 = +[SBUpdateLayoutSwitcherEventResponse setNeedsLayout];
    [(SBWindowingModifier *)self appendResponse:v9];
  }
}

- (void)gestureDidComplete:(id)complete
{
  v4 = [(SBStashSlideOverItemIndirectGestureWindowingModifier *)self _responseForGestureEnd:complete];
  [(SBWindowingModifier *)self appendResponse:v4];
}

- (void)transitionWillBegin:(id)begin
{
  beginCopy = begin;
  if ([beginCopy isGestureInitiated])
  {
    toAppLayout = [beginCopy toAppLayout];
    v5 = [toAppLayout containsItem:self->_slideOverDisplayItem];

    v6 = [SBAddModifierSwitcherEventResponse alloc];
    if (v5)
    {
      v7 = objc_alloc_init(SBFinishUnstashingSlideOverItemAnimationModifier);
    }

    else
    {
      v7 = [[SBStashSlideOverItemAnimationModifier alloc] initWithDirection:0];
    }

    v8 = v7;
    v9 = [(SBAddModifierSwitcherEventResponse *)v6 initWithModifier:v7 level:3];
    [(SBWindowingModifier *)self appendResponse:v9];

    [beginCopy handleWithReason:@"Stash Slide Over Indirect Gesture Modifier"];
  }

  else
  {
    [(SBWindowingModifier *)self complete];
  }
}

- (void)didComplete
{
  v3 = objc_alloc_init(SBInvalidateAdjustedAppLayoutsSwitcherEventResponse);
  [(SBWindowingModifier *)self appendResponse:v3];
}

- (id)adjustedAppLayoutsForAppLayouts:(id)layouts
{
  v15.receiver = self;
  v15.super_class = SBStashSlideOverItemIndirectGestureWindowingModifier;
  v4 = [(SBStashSlideOverItemIndirectGestureWindowingModifier *)&v15 adjustedAppLayoutsForAppLayouts:layouts];
  v5 = objc_opt_new();
  v6 = self->_slideOverDisplayItem;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __88__SBStashSlideOverItemIndirectGestureWindowingModifier_adjustedAppLayoutsForAppLayouts___block_invoke;
  v12[3] = &unk_2783AE4E0;
  v13 = v6;
  v7 = v5;
  v14 = v7;
  v8 = v6;
  [v4 enumerateObjectsUsingBlock:v12];
  v9 = v14;
  v10 = v7;

  return v7;
}

void __88__SBStashSlideOverItemIndirectGestureWindowingModifier_adjustedAppLayoutsForAppLayouts___block_invoke(uint64_t a1, void *a2)
{
  v10 = a2;
  if ([v10 containsItem:*(a1 + 32)] && (objc_msgSend(v10, "allItems"), v3 = objc_claimAutoreleasedReturnValue(), v4 = objc_msgSend(v3, "count"), v3, v4 != 1))
  {
    v5 = *(a1 + 40);
    v6 = [v10 leafAppLayoutForItem:*(a1 + 32)];
    [v5 addObject:v6];

    v7 = [v10 appLayoutByRemovingItemInLayoutRole:{objc_msgSend(v10, "layoutRoleForItem:", *(a1 + 32))}];
    v8 = [v7 allItems];
    v9 = [v8 count];

    if (v9)
    {
      [*(a1 + 40) addObject:v7];
    }
  }

  else
  {
    [*(a1 + 40) addObject:v10];
  }
}

- (id)topMostItems
{
  v7.receiver = self;
  v7.super_class = SBStashSlideOverItemIndirectGestureWindowingModifier;
  topMostItems = [(SBWindowingModifier *)&v7 topMostItems];
  _slideOverAppLayout = [(SBStashSlideOverItemIndirectGestureWindowingModifier *)self _slideOverAppLayout];
  v5 = [topMostItems sb_arrayByInsertingOrMovingObject:_slideOverAppLayout toIndex:0];

  return v5;
}

- (SBWindowingItemFrame)frameForItem:(SEL)item
{
  v6 = a4;
  if ([v6 isAppLayout] && (objc_msgSend(v6, "appLayout"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "containsItem:", self->_slideOverDisplayItem), v7, v8))
  {
    [(SBStashSlideOverItemIndirectGestureWindowingModifier *)self containerViewBounds];
    SBWindowingItemFrameMakeWithBounds(retstr, v9, v10, v11, v12);
  }

  else
  {
    v14.receiver = self;
    v14.super_class = SBStashSlideOverItemIndirectGestureWindowingModifier;
    [(SBWindowingItemFrame *)&v14 frameForItem:v6];
  }

  return result;
}

- (CGRect)frameForLayoutRole:(int64_t)role inAppLayout:(id)layout withBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  layoutCopy = layout;
  v12 = [layoutCopy itemForLayoutRole:role];
  if (BSEqualObjects())
  {
    v13 = self->_initialFrame.origin.y;
    v14 = self->_initialFrame.size.width;
    v15 = self->_initialFrame.size.height;
    v16 = self->_initialFrame.origin.x + self->_translation.x;
  }

  else
  {
    v25.receiver = self;
    v25.super_class = SBStashSlideOverItemIndirectGestureWindowingModifier;
    [(SBStashSlideOverItemIndirectGestureWindowingModifier *)&v25 frameForLayoutRole:role inAppLayout:layoutCopy withBounds:x, y, width, height];
    v16 = v17;
    v13 = v18;
    v14 = v19;
    v15 = v20;
  }

  v21 = v16;
  v22 = v13;
  v23 = v14;
  v24 = v15;
  result.size.height = v24;
  result.size.width = v23;
  result.origin.y = v22;
  result.origin.x = v21;
  return result;
}

- (BOOL)shouldUseAnchorPointToPinLayoutRolesToSpace:(unint64_t)space
{
  appLayouts = [(SBStashSlideOverItemIndirectGestureWindowingModifier *)self appLayouts];
  v6 = [appLayouts objectAtIndex:space];

  if ([v6 containsItem:self->_slideOverDisplayItem])
  {
    v7 = 0;
  }

  else
  {
    v9.receiver = self;
    v9.super_class = SBStashSlideOverItemIndirectGestureWindowingModifier;
    v7 = [(SBStashSlideOverItemIndirectGestureWindowingModifier *)&v9 shouldUseAnchorPointToPinLayoutRolesToSpace:space];
  }

  return v7;
}

- (id)visibleItems
{
  appLayouts = [(SBStashSlideOverItemIndirectGestureWindowingModifier *)self appLayouts];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __68__SBStashSlideOverItemIndirectGestureWindowingModifier_visibleItems__block_invoke;
  v10[3] = &unk_2783A8CB8;
  v10[4] = self;
  v4 = [appLayouts bs_firstObjectPassingTest:v10];

  if (v4)
  {
    v9.receiver = self;
    v9.super_class = SBStashSlideOverItemIndirectGestureWindowingModifier;
    visibleItems = [(SBWindowingModifier *)&v9 visibleItems];
    visibleItems2 = [visibleItems setByAddingObject:v4];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = SBStashSlideOverItemIndirectGestureWindowingModifier;
    visibleItems2 = [(SBWindowingModifier *)&v8 visibleItems];
  }

  return visibleItems2;
}

- (id)animationAttributesForItem:(id)item
{
  itemCopy = item;
  v12.receiver = self;
  v12.super_class = SBStashSlideOverItemIndirectGestureWindowingModifier;
  v5 = [(SBWindowingModifier *)&v12 animationAttributesForItem:itemCopy];
  v6 = [v5 mutableCopy];

  [v6 setUpdateMode:3];
  if ([itemCopy isAppLayout])
  {
    appLayout = [itemCopy appLayout];
    v8 = [appLayout containsItem:self->_slideOverDisplayItem];

    if (v8)
    {
      medusaSettings = [(SBStashSlideOverItemIndirectGestureWindowingModifier *)self medusaSettings];
      medusaAnimationSettings = [medusaSettings medusaAnimationSettings];
      [v6 setLayoutSettings:medusaAnimationSettings];
    }
  }

  return v6;
}

- (double)opacityForLayoutRole:(int64_t)role inAppLayout:(id)layout atIndex:(unint64_t)index
{
  layoutCopy = layout;
  v9 = [layoutCopy itemForLayoutRole:role];
  v10 = BSEqualObjects();

  v11 = 1.0;
  if ((v10 & 1) == 0)
  {
    v14.receiver = self;
    v14.super_class = SBStashSlideOverItemIndirectGestureWindowingModifier;
    [(SBWindowingModifier *)&v14 opacityForLayoutRole:role inAppLayout:layoutCopy atIndex:index];
    v11 = v12;
  }

  return v11;
}

- (BOOL)isLayoutRoleMatchMovedToScene:(int64_t)scene inAppLayout:(id)layout
{
  layoutCopy = layout;
  v7 = [layoutCopy itemForLayoutRole:scene];
  v8 = BSEqualObjects();

  if (v8)
  {
    v9 = 1;
  }

  else
  {
    v11.receiver = self;
    v11.super_class = SBStashSlideOverItemIndirectGestureWindowingModifier;
    v9 = [(SBStashSlideOverItemIndirectGestureWindowingModifier *)&v11 isLayoutRoleMatchMovedToScene:scene inAppLayout:layoutCopy];
  }

  return v9;
}

- (SBWindowingItemCorners)cornersForItem:(SEL)item
{
  v6 = a4;
  *&retstr->cornerRadii.topLeft = 0u;
  *&retstr->cornerRadii.bottomRight = 0u;
  retstr->cornerMask = 0;
  v14.receiver = self;
  v14.super_class = SBStashSlideOverItemIndirectGestureWindowingModifier;
  [(SBWindowingItemCorners *)&v14 cornersForItem:v6];
  if ([v6 isAppLayout])
  {
    appLayout = [v6 appLayout];
    v8 = [appLayout containsItem:self->_slideOverDisplayItem];

    if (v8)
    {
      [(SBStashSlideOverItemIndirectGestureWindowingModifier *)self bestSupportedDefaultCornerRadiusForDisplayItem:self->_slideOverDisplayItem];
      SBRectCornerRadiiForRadius();
      retstr->cornerRadii.topLeft = v9;
      retstr->cornerRadii.bottomLeft = v10;
      retstr->cornerRadii.bottomRight = v11;
      retstr->cornerRadii.topRight = v12;
      retstr->cornerMask = 15;
    }
  }

  return result;
}

- (id)appLayoutsToCacheFullsizeSnapshots
{
  v12.receiver = self;
  v12.super_class = SBStashSlideOverItemIndirectGestureWindowingModifier;
  appLayoutsToCacheFullsizeSnapshots = [(SBStashSlideOverItemIndirectGestureWindowingModifier *)&v12 appLayoutsToCacheFullsizeSnapshots];
  displayItemInSlideOver = [(SBStashSlideOverItemIndirectGestureWindowingModifier *)self displayItemInSlideOver];
  appLayouts = [(SBStashSlideOverItemIndirectGestureWindowingModifier *)self appLayouts];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __90__SBStashSlideOverItemIndirectGestureWindowingModifier_appLayoutsToCacheFullsizeSnapshots__block_invoke;
  v10[3] = &unk_2783A8CB8;
  v11 = displayItemInSlideOver;
  v6 = displayItemInSlideOver;
  v7 = [appLayouts bs_firstObjectPassingTest:v10];

  if (v7)
  {
    v8 = [appLayoutsToCacheFullsizeSnapshots arrayByAddingObject:v7];

    appLayoutsToCacheFullsizeSnapshots = v8;
  }

  return appLayoutsToCacheFullsizeSnapshots;
}

- (id)appLayoutsToCacheSnapshots
{
  v12.receiver = self;
  v12.super_class = SBStashSlideOverItemIndirectGestureWindowingModifier;
  appLayoutsToCacheSnapshots = [(SBStashSlideOverItemIndirectGestureWindowingModifier *)&v12 appLayoutsToCacheSnapshots];
  displayItemInSlideOver = [(SBStashSlideOverItemIndirectGestureWindowingModifier *)self displayItemInSlideOver];
  appLayouts = [(SBStashSlideOverItemIndirectGestureWindowingModifier *)self appLayouts];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __82__SBStashSlideOverItemIndirectGestureWindowingModifier_appLayoutsToCacheSnapshots__block_invoke;
  v10[3] = &unk_2783A8CB8;
  v11 = displayItemInSlideOver;
  v6 = displayItemInSlideOver;
  v7 = [appLayouts bs_firstObjectPassingTest:v10];

  if (v7)
  {
    v8 = [appLayoutsToCacheSnapshots arrayByAddingObject:v7];

    appLayoutsToCacheSnapshots = v8;
  }

  return appLayoutsToCacheSnapshots;
}

- (id)_slideOverAppLayout
{
  v10[1] = *MEMORY[0x277D85DE8];
  appLayouts = [(SBStashSlideOverItemIndirectGestureWindowingModifier *)self appLayouts];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __75__SBStashSlideOverItemIndirectGestureWindowingModifier__slideOverAppLayout__block_invoke;
  v9[3] = &unk_2783A8CB8;
  v9[4] = self;
  v4 = [appLayouts bs_firstObjectPassingTest:v9];

  if (!v4)
  {
    v5 = [SBAppLayout alloc];
    v10[0] = self->_slideOverDisplayItem;
    v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:1];
    LOBYTE(v8) = 0;
    v4 = [(SBAppLayout *)v5 initWithItems:v6 centerItem:0 floatingItem:0 configuration:1 centerConfiguration:0 environment:1 hidden:v8 preferredDisplayOrdinal:[(SBStashSlideOverItemIndirectGestureWindowingModifier *)self displayOrdinal]];
  }

  return v4;
}

- (BOOL)wantsSlideOverTongue
{
  wantsSlideOverTongue = self->_wantsSlideOverTongue;
  if (!wantsSlideOverTongue)
  {
    v4.receiver = self;
    v4.super_class = SBStashSlideOverItemIndirectGestureWindowingModifier;
    return [(SBStashSlideOverItemIndirectGestureWindowingModifier *)&v4 wantsSlideOverTongue];
  }

  return wantsSlideOverTongue;
}

- (unint64_t)slideOverTongueState
{
  if (self->_wantsSlideOverTongue)
  {
    result = self->_slideOverTongueState;
  }

  else
  {
    v9.receiver = self;
    v9.super_class = SBStashSlideOverItemIndirectGestureWindowingModifier;
    result = [(SBStashSlideOverItemIndirectGestureWindowingModifier *)&v9 slideOverTongueState];
    if (!self->_wantsSlideOverTongue)
    {
      return result;
    }
  }

  if (self->_slideOverTongueState == 1)
  {
    width = self->_initialFrame.size.width;
    v5 = self->_initialFrame.origin.x + self->_translation.x;
    slideOverTongueDirection = self->_slideOverTongueDirection;
    if (slideOverTongueDirection == 1)
    {
      [(SBStashSlideOverItemIndirectGestureWindowingModifier *)self containerViewBounds];
      if (v5 >= v7 + -24.0)
      {
        return 1;
      }

      slideOverTongueDirection = self->_slideOverTongueDirection;
    }

    return width + v5 <= 24.0 && slideOverTongueDirection == 2;
  }

  return result;
}

- (unint64_t)slideOverTongueDirection
{
  if (self->_wantsSlideOverTongue)
  {
    return self->_slideOverTongueDirection;
  }

  v6 = v2;
  v7 = v3;
  v5.receiver = self;
  v5.super_class = SBStashSlideOverItemIndirectGestureWindowingModifier;
  return [(SBStashSlideOverItemIndirectGestureWindowingModifier *)&v5 slideOverTongueDirection];
}

- (id)_responseForGestureEnd:(id)end
{
  v28 = *MEMORY[0x277D85DE8];
  endCopy = end;
  size = self->_initialSlideOverConfiguration.size;
  v25 = *&self->_initialSlideOverConfiguration.corner;
  v26 = size;
  isActive = self->_initialSlideOverConfiguration.isActive;
  isStashed = self->_initialSlideOverConfiguration.isStashed;
  v21 = *&self->_initialSlideOverConfiguration.dodgesDock;
  v22 = *(&self->_initialSlideOverConfiguration.dodgesDock + 2);
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && ([endCopy indirectPanEndReason] - 3) <= 1)
  {
    isStashed = !self->_initialSlideOverConfiguration.isStashed;
  }

  v8 = objc_alloc_init(SBMutableSwitcherTransitionRequest);
  v9 = self->_initialAppLayout;
  v10 = v9;
  if (isStashed)
  {
    v11 = [(SBAppLayout *)v9 appLayoutByRemovingItemInLayoutRole:[(SBAppLayout *)v9 layoutRoleForItem:self->_slideOverDisplayItem]];

    [(SBSwitcherTransitionRequest *)v8 setPeekConfiguration:1];
    v12 = [(SBStashSlideOverItemIndirectGestureWindowingModifier *)self layoutAttributesForDisplayItem:self->_slideOverDisplayItem inAppLayout:v11];
    LOBYTE(v19) = isActive;
    BYTE1(v19) = isStashed;
    *(&v19 + 2) = v21;
    HIWORD(v19) = v22;
    v13 = [SBDisplayItemLayoutAttributes attributesByModifyingSlideOverConfiguration:v12];

    [(SBStashSlideOverItemIndirectGestureWindowingModifier *)self updateLayoutAttributes:v13 ofDisplayItem:self->_slideOverDisplayItem, v25, v26, v19];
  }

  else
  {
    v14 = v9;
    if (!v9)
    {
      v3 = +[SBAppLayout homeScreenAppLayout];
      v14 = [v3 appLayoutByModifyingPreferredDisplayOrdinal:{-[SBStashSlideOverItemIndirectGestureWindowingModifier displayOrdinal](self, "displayOrdinal")}];
    }

    v11 = [v14 appLayoutByInsertingItem:self->_slideOverDisplayItem];

    if (!v10)
    {
    }

    v15 = [(SBStashSlideOverItemIndirectGestureWindowingModifier *)self layoutAttributesForDisplayItem:self->_slideOverDisplayItem inAppLayout:v11];
    LOBYTE(v20) = isActive;
    BYTE1(v20) = isStashed;
    *(&v20 + 2) = v21;
    HIWORD(v20) = v22;
    v13 = [SBDisplayItemLayoutAttributes attributesByModifyingSlideOverConfiguration:v15];

    slideOverDisplayItem = self->_slideOverDisplayItem;
    v24 = v13;
    v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v24 forKeys:&slideOverDisplayItem count:{1, v25, v26, v20}];
    [(SBSwitcherTransitionRequest *)v8 setDisplayItemLayoutAttributesMap:v16];
  }

  [(SBSwitcherTransitionRequest *)v8 setAppLayout:v11];
  v17 = [[SBPerformTransitionSwitcherEventResponse alloc] initWithTransitionRequest:v8 gestureInitiated:1];

  return v17;
}

@end