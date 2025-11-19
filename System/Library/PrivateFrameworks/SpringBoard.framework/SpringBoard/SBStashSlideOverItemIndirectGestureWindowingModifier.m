@interface SBStashSlideOverItemIndirectGestureWindowingModifier
- (BOOL)isLayoutRoleMatchMovedToScene:(int64_t)a3 inAppLayout:(id)a4;
- (BOOL)shouldUseAnchorPointToPinLayoutRolesToSpace:(unint64_t)a3;
- (BOOL)wantsSlideOverTongue;
- (CGRect)frameForLayoutRole:(int64_t)a3 inAppLayout:(id)a4 withBounds:(CGRect)a5;
- (SBWindowingItemCorners)cornersForItem:(SEL)a3;
- (SBWindowingItemFrame)frameForItem:(SEL)a3;
- (double)opacityForLayoutRole:(int64_t)a3 inAppLayout:(id)a4 atIndex:(unint64_t)a5;
- (id)_responseForGestureEnd:(id)a3;
- (id)_slideOverAppLayout;
- (id)adjustedAppLayoutsForAppLayouts:(id)a3;
- (id)animationAttributesForItem:(id)a3;
- (id)appLayoutsToCacheFullsizeSnapshots;
- (id)appLayoutsToCacheSnapshots;
- (id)topMostItems;
- (id)visibleItems;
- (unint64_t)slideOverTongueDirection;
- (unint64_t)slideOverTongueState;
- (void)didComplete;
- (void)gestureDidComplete:(id)a3;
- (void)gestureDidUpdate:(id)a3;
- (void)gestureWillBegin:(id)a3;
- (void)transitionWillBegin:(id)a3;
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

- (void)gestureWillBegin:(id)a3
{
  v4 = a3;
  gestureID = self->_gestureID;
  v6 = [v4 gestureID];
  v7 = v6;
  if (gestureID)
  {
    v8 = [(NSUUID *)gestureID isEqual:v6];

    if ((v8 & 1) == 0)
    {
      [(SBWindowingModifier *)self complete];
    }
  }

  else
  {
    v9 = self->_gestureID;
    self->_gestureID = v6;

    v10 = [(SBStashSlideOverItemIndirectGestureWindowingModifier *)self displayItemInSlideOver];
    slideOverDisplayItem = self->_slideOverDisplayItem;
    self->_slideOverDisplayItem = v10;

    if (self->_slideOverDisplayItem)
    {
      v12 = [(SBStashSlideOverItemIndirectGestureWindowingModifier *)self _slideOverAppLayout];
      v13 = [(SBStashSlideOverItemIndirectGestureWindowingModifier *)self layoutAttributesForDisplayItem:self->_slideOverDisplayItem inAppLayout:v12];
      [(SBDisplayItemLayoutAttributes *)v13 slideOverConfiguration];
      v14 = v29[1];
      *&self->_initialSlideOverConfiguration.corner = v29[0];
      self->_initialSlideOverConfiguration.size = v14;
      *&self->_initialSlideOverConfiguration.isActive = v30;

      v15 = [(SBWindowingModifier *)self windowingConfiguration];
      [v15 slideOverBorderWidth];
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
        v19 = [(SBWindowingModifier *)self flexibleAutoLayoutSpaceForAppLayout:v12];
        v20 = [v19 flexibleAutoLayoutItemForDisplayItem:self->_slideOverDisplayItem];
        [v20 frame];
        p_initialFrame->origin.x = v21;
        self->_initialFrame.origin.y = v22;
        self->_initialFrame.size.width = v23;
        self->_initialFrame.size.height = v24;
      }

      v25 = [(SBStashSlideOverItemIndirectGestureWindowingModifier *)self appLayout];
      initialAppLayout = self->_initialAppLayout;
      self->_initialAppLayout = v25;
    }

    v27 = +[SBUpdateLayoutSwitcherEventResponse setNeedsLayout];
    [(SBWindowingModifier *)self appendResponse:v27];

    v28 = objc_alloc_init(SBInvalidateAdjustedAppLayoutsSwitcherEventResponse);
    [(SBWindowingModifier *)self appendResponse:v28];
  }
}

- (void)gestureDidUpdate:(id)a3
{
  v4 = a3;
  v5 = [(SBStashSlideOverItemIndirectGestureWindowingModifier *)self appLayouts];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __73__SBStashSlideOverItemIndirectGestureWindowingModifier_gestureDidUpdate___block_invoke;
  v10[3] = &unk_2783A8CB8;
  v10[4] = self;
  v6 = [v5 bs_firstObjectPassingTest:v10];

  if (v6)
  {
    [v4 translationInContainerView];
    self->_translation.x = v7;
    self->_translation.y = v8;
    v9 = +[SBUpdateLayoutSwitcherEventResponse setNeedsLayout];
    [(SBWindowingModifier *)self appendResponse:v9];
  }
}

- (void)gestureDidComplete:(id)a3
{
  v4 = [(SBStashSlideOverItemIndirectGestureWindowingModifier *)self _responseForGestureEnd:a3];
  [(SBWindowingModifier *)self appendResponse:v4];
}

- (void)transitionWillBegin:(id)a3
{
  v10 = a3;
  if ([v10 isGestureInitiated])
  {
    v4 = [v10 toAppLayout];
    v5 = [v4 containsItem:self->_slideOverDisplayItem];

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

    [v10 handleWithReason:@"Stash Slide Over Indirect Gesture Modifier"];
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

- (id)adjustedAppLayoutsForAppLayouts:(id)a3
{
  v15.receiver = self;
  v15.super_class = SBStashSlideOverItemIndirectGestureWindowingModifier;
  v4 = [(SBStashSlideOverItemIndirectGestureWindowingModifier *)&v15 adjustedAppLayoutsForAppLayouts:a3];
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
  v3 = [(SBWindowingModifier *)&v7 topMostItems];
  v4 = [(SBStashSlideOverItemIndirectGestureWindowingModifier *)self _slideOverAppLayout];
  v5 = [v3 sb_arrayByInsertingOrMovingObject:v4 toIndex:0];

  return v5;
}

- (SBWindowingItemFrame)frameForItem:(SEL)a3
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

- (CGRect)frameForLayoutRole:(int64_t)a3 inAppLayout:(id)a4 withBounds:(CGRect)a5
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v11 = a4;
  v12 = [v11 itemForLayoutRole:a3];
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
    [(SBStashSlideOverItemIndirectGestureWindowingModifier *)&v25 frameForLayoutRole:a3 inAppLayout:v11 withBounds:x, y, width, height];
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

- (BOOL)shouldUseAnchorPointToPinLayoutRolesToSpace:(unint64_t)a3
{
  v5 = [(SBStashSlideOverItemIndirectGestureWindowingModifier *)self appLayouts];
  v6 = [v5 objectAtIndex:a3];

  if ([v6 containsItem:self->_slideOverDisplayItem])
  {
    v7 = 0;
  }

  else
  {
    v9.receiver = self;
    v9.super_class = SBStashSlideOverItemIndirectGestureWindowingModifier;
    v7 = [(SBStashSlideOverItemIndirectGestureWindowingModifier *)&v9 shouldUseAnchorPointToPinLayoutRolesToSpace:a3];
  }

  return v7;
}

- (id)visibleItems
{
  v3 = [(SBStashSlideOverItemIndirectGestureWindowingModifier *)self appLayouts];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __68__SBStashSlideOverItemIndirectGestureWindowingModifier_visibleItems__block_invoke;
  v10[3] = &unk_2783A8CB8;
  v10[4] = self;
  v4 = [v3 bs_firstObjectPassingTest:v10];

  if (v4)
  {
    v9.receiver = self;
    v9.super_class = SBStashSlideOverItemIndirectGestureWindowingModifier;
    v5 = [(SBWindowingModifier *)&v9 visibleItems];
    v6 = [v5 setByAddingObject:v4];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = SBStashSlideOverItemIndirectGestureWindowingModifier;
    v6 = [(SBWindowingModifier *)&v8 visibleItems];
  }

  return v6;
}

- (id)animationAttributesForItem:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = SBStashSlideOverItemIndirectGestureWindowingModifier;
  v5 = [(SBWindowingModifier *)&v12 animationAttributesForItem:v4];
  v6 = [v5 mutableCopy];

  [v6 setUpdateMode:3];
  if ([v4 isAppLayout])
  {
    v7 = [v4 appLayout];
    v8 = [v7 containsItem:self->_slideOverDisplayItem];

    if (v8)
    {
      v9 = [(SBStashSlideOverItemIndirectGestureWindowingModifier *)self medusaSettings];
      v10 = [v9 medusaAnimationSettings];
      [v6 setLayoutSettings:v10];
    }
  }

  return v6;
}

- (double)opacityForLayoutRole:(int64_t)a3 inAppLayout:(id)a4 atIndex:(unint64_t)a5
{
  v8 = a4;
  v9 = [v8 itemForLayoutRole:a3];
  v10 = BSEqualObjects();

  v11 = 1.0;
  if ((v10 & 1) == 0)
  {
    v14.receiver = self;
    v14.super_class = SBStashSlideOverItemIndirectGestureWindowingModifier;
    [(SBWindowingModifier *)&v14 opacityForLayoutRole:a3 inAppLayout:v8 atIndex:a5];
    v11 = v12;
  }

  return v11;
}

- (BOOL)isLayoutRoleMatchMovedToScene:(int64_t)a3 inAppLayout:(id)a4
{
  v6 = a4;
  v7 = [v6 itemForLayoutRole:a3];
  v8 = BSEqualObjects();

  if (v8)
  {
    v9 = 1;
  }

  else
  {
    v11.receiver = self;
    v11.super_class = SBStashSlideOverItemIndirectGestureWindowingModifier;
    v9 = [(SBStashSlideOverItemIndirectGestureWindowingModifier *)&v11 isLayoutRoleMatchMovedToScene:a3 inAppLayout:v6];
  }

  return v9;
}

- (SBWindowingItemCorners)cornersForItem:(SEL)a3
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
    v7 = [v6 appLayout];
    v8 = [v7 containsItem:self->_slideOverDisplayItem];

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
  v3 = [(SBStashSlideOverItemIndirectGestureWindowingModifier *)&v12 appLayoutsToCacheFullsizeSnapshots];
  v4 = [(SBStashSlideOverItemIndirectGestureWindowingModifier *)self displayItemInSlideOver];
  v5 = [(SBStashSlideOverItemIndirectGestureWindowingModifier *)self appLayouts];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __90__SBStashSlideOverItemIndirectGestureWindowingModifier_appLayoutsToCacheFullsizeSnapshots__block_invoke;
  v10[3] = &unk_2783A8CB8;
  v11 = v4;
  v6 = v4;
  v7 = [v5 bs_firstObjectPassingTest:v10];

  if (v7)
  {
    v8 = [v3 arrayByAddingObject:v7];

    v3 = v8;
  }

  return v3;
}

- (id)appLayoutsToCacheSnapshots
{
  v12.receiver = self;
  v12.super_class = SBStashSlideOverItemIndirectGestureWindowingModifier;
  v3 = [(SBStashSlideOverItemIndirectGestureWindowingModifier *)&v12 appLayoutsToCacheSnapshots];
  v4 = [(SBStashSlideOverItemIndirectGestureWindowingModifier *)self displayItemInSlideOver];
  v5 = [(SBStashSlideOverItemIndirectGestureWindowingModifier *)self appLayouts];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __82__SBStashSlideOverItemIndirectGestureWindowingModifier_appLayoutsToCacheSnapshots__block_invoke;
  v10[3] = &unk_2783A8CB8;
  v11 = v4;
  v6 = v4;
  v7 = [v5 bs_firstObjectPassingTest:v10];

  if (v7)
  {
    v8 = [v3 arrayByAddingObject:v7];

    v3 = v8;
  }

  return v3;
}

- (id)_slideOverAppLayout
{
  v10[1] = *MEMORY[0x277D85DE8];
  v3 = [(SBStashSlideOverItemIndirectGestureWindowingModifier *)self appLayouts];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __75__SBStashSlideOverItemIndirectGestureWindowingModifier__slideOverAppLayout__block_invoke;
  v9[3] = &unk_2783A8CB8;
  v9[4] = self;
  v4 = [v3 bs_firstObjectPassingTest:v9];

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

- (id)_responseForGestureEnd:(id)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v5 = a3;
  size = self->_initialSlideOverConfiguration.size;
  v25 = *&self->_initialSlideOverConfiguration.corner;
  v26 = size;
  isActive = self->_initialSlideOverConfiguration.isActive;
  isStashed = self->_initialSlideOverConfiguration.isStashed;
  v21 = *&self->_initialSlideOverConfiguration.dodgesDock;
  v22 = *(&self->_initialSlideOverConfiguration.dodgesDock + 2);
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && ([v5 indirectPanEndReason] - 3) <= 1)
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