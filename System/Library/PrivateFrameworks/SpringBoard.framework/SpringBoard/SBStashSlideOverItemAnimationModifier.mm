@interface SBStashSlideOverItemAnimationModifier
- (BOOL)_layOutSlideOverItemFullyOffscreen;
- (BOOL)isHomeScreenContentRequired;
- (BOOL)shouldInterruptForActivity:(id)a3;
- (BOOL)shouldUseAnchorPointToPinLayoutRolesToSpace:(unint64_t)a3;
- (CGRect)frameForLayoutRole:(int64_t)a3 inAppLayout:(id)a4 withBounds:(CGRect)a5;
- (SBStashSlideOverItemAnimationModifier)initWithDirection:(unint64_t)a3;
- (SBWindowingItemCorners)cornersForItem:(SEL)a3;
- (SBWindowingItemFrame)frameForItem:(SEL)a3;
- (double)opacityForLayoutRole:(int64_t)a3 inAppLayout:(id)a4 atIndex:(unint64_t)a5;
- (id)_slideOverAppLayout;
- (id)adjustedAppLayoutsForAppLayouts:(id)a3;
- (id)animationAttributesForItem:(id)a3;
- (id)appLayoutsToEnsureExistForMainTransitionEvent:(id)a3;
- (id)topMostItems;
- (id)visibleItems;
- (void)didComplete;
- (void)transitionDidUpdate:(id)a3;
- (void)transitionWillBegin:(id)a3;
- (void)willBegin;
@end

@implementation SBStashSlideOverItemAnimationModifier

- (SBStashSlideOverItemAnimationModifier)initWithDirection:(unint64_t)a3
{
  v5.receiver = self;
  v5.super_class = SBStashSlideOverItemAnimationModifier;
  result = [(SBWindowingModifier *)&v5 init];
  if (result)
  {
    result->_direction = a3;
  }

  return result;
}

- (void)willBegin
{
  v3 = [(SBStashSlideOverItemAnimationModifier *)self displayItemInSlideOver];
  slideOverDisplayItem = self->_slideOverDisplayItem;
  self->_slideOverDisplayItem = v3;

  if (!self->_slideOverDisplayItem)
  {

    [(SBWindowingModifier *)self complete];
  }
}

- (BOOL)shouldInterruptForActivity:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_transitionID && [v4 isTransitionEvent])
  {
    v6 = v5;
    v7 = [v6 transitionID];
    if (BSEqualObjects())
    {
      v8 = 0;
    }

    else if ([v6 isRotationTransition])
    {
      v9 = [v6 toInterfaceOrientation];
      v8 = v9 != [v6 fromInterfaceOrientation];
    }

    else
    {
      v8 = 1;
    }
  }

  else if ([v5 isGestureEvent])
  {
    v8 = [v5 phase] != 0;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)transitionWillBegin:(id)a3
{
  v4 = a3;
  v5 = [v4 transitionID];
  transitionID = self->_transitionID;
  self->_transitionID = v5;

  v7 = [v4 toEnvironmentMode];
  self->_transitioningToHome = v7 == 1;
  v8 = objc_alloc_init(SBInvalidateAdjustedAppLayoutsSwitcherEventResponse);
  [(SBWindowingModifier *)self appendResponse:v8];

  if (self->_direction == 1)
  {
    v9 = [[SBUpdateLayoutSwitcherEventResponse alloc] initWithOptions:30 updateMode:2];
    [(SBWindowingModifier *)self appendResponse:v9];
  }
}

- (void)transitionDidUpdate:(id)a3
{
  v4 = objc_alloc_init(SBInvalidateAdjustedAppLayoutsSwitcherEventResponse);
  [(SBWindowingModifier *)self appendResponse:v4];
}

- (void)didComplete
{
  v3 = objc_alloc_init(SBInvalidateAdjustedAppLayoutsSwitcherEventResponse);
  [(SBWindowingModifier *)self appendResponse:v3];
}

- (id)appLayoutsToEnsureExistForMainTransitionEvent:(id)a3
{
  v7.receiver = self;
  v7.super_class = SBStashSlideOverItemAnimationModifier;
  v4 = [(SBStashSlideOverItemAnimationModifier *)&v7 appLayoutsToEnsureExistForMainTransitionEvent:a3];
  v5 = [(SBStashSlideOverItemAnimationModifier *)self adjustedAppLayoutsForAppLayouts:v4];

  return v5;
}

- (id)adjustedAppLayoutsForAppLayouts:(id)a3
{
  v15.receiver = self;
  v15.super_class = SBStashSlideOverItemAnimationModifier;
  v4 = [(SBStashSlideOverItemAnimationModifier *)&v15 adjustedAppLayoutsForAppLayouts:a3];
  v5 = objc_opt_new();
  v6 = self->_slideOverDisplayItem;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __73__SBStashSlideOverItemAnimationModifier_adjustedAppLayoutsForAppLayouts___block_invoke;
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

void __73__SBStashSlideOverItemAnimationModifier_adjustedAppLayoutsForAppLayouts___block_invoke(uint64_t a1, void *a2)
{
  v10 = a2;
  if ([v10 containsItem:*(a1 + 32)] && (objc_msgSend(v10, "allItems"), v3 = objc_claimAutoreleasedReturnValue(), v4 = objc_msgSend(v3, "count"), v3, v4 != 1))
  {
    v5 = *(a1 + 40);
    v6 = [v10 leafAppLayoutForItem:*(a1 + 32)];
    [v5 addObject:v6];

    v7 = [v10 appLayoutByRemovingItemInLayoutRole:{objc_msgSend(v10, "layoutRoleForItem:", *(a1 + 32))}];
    if (v7)
    {
      v8 = +[SBAppLayout homeScreenAppLayout];
      v9 = [v7 isEqual:v8];

      if ((v9 & 1) == 0)
      {
        [*(a1 + 40) addObject:v7];
      }
    }
  }

  else
  {
    [*(a1 + 40) addObject:v10];
  }
}

- (SBWindowingItemFrame)frameForItem:(SEL)a3
{
  v6 = a4;
  if (![v6 isAppLayout])
  {
    goto LABEL_6;
  }

  v7 = [v6 appLayout];
  if (([v7 containsItem:self->_slideOverDisplayItem] & 1) == 0)
  {

    goto LABEL_6;
  }

  v8 = [(SBStashSlideOverItemAnimationModifier *)self _layOutSlideOverItemFullyOffscreen];

  if (!v8)
  {
LABEL_6:
    v21.receiver = self;
    v21.super_class = SBStashSlideOverItemAnimationModifier;
    [(SBWindowingItemFrame *)&v21 frameForItem:v6];
    goto LABEL_7;
  }

  retstr->scale = 0u;
  retstr->translation = 0u;
  retstr->position = 0u;
  retstr->anchorPoint = 0u;
  retstr->bounds.origin = 0u;
  retstr->bounds.size = 0u;
  [(SBStashSlideOverItemAnimationModifier *)self containerViewBounds];
  v13 = [(SBStashSlideOverItemAnimationModifier *)self appLayouts:SBWindowingItemFrameMakeWithBounds(retstr];
  v14 = [v6 appLayout];
  -[SBStashSlideOverItemAnimationModifier frameForIndexOffsetToCounteractSwitcherWindowMatchMoveForIndex:](self, "frameForIndexOffsetToCounteractSwitcherWindowMatchMoveForIndex:", [v13 indexOfObject:v14]);
  v19 = v16;
  v20 = v15;

  v17.f64[0] = v20;
  v17.f64[1] = v19;
  retstr->position = vaddq_f64(v17, retstr->position);
LABEL_7:

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
  if (BSEqualObjects() && [(SBStashSlideOverItemAnimationModifier *)self _layOutSlideOverItemFullyOffscreen])
  {
    v13 = [(SBWindowingModifier *)self flexibleAutoLayoutSpaceForAppLayout:v11];
    v14 = [v13 flexibleAutoLayoutItemForDisplayItem:v12];
    [v14 frame];
    v16 = v15;
    v18 = v17;
    v20 = v19;
    v40 = 0;
    v38 = 0u;
    v39 = 0u;
    v21 = [(SBStashSlideOverItemAnimationModifier *)self layoutAttributesForDisplayItem:v12 inAppLayout:v11];
    [(SBDisplayItemLayoutAttributes *)v21 slideOverConfiguration];

    v22 = [(SBWindowingModifier *)self windowingConfiguration];
    [v22 slideOverBorderWidth];
    v24 = v23;

    v36[0] = v38;
    v36[1] = v39;
    v37 = v40;
    if (SBDisplayItemSlideOverIsLeftSided(v36))
    {
      v25 = -v18 - v24;
    }

    else
    {
      [(SBStashSlideOverItemAnimationModifier *)self containerViewBounds];
      v25 = v24 + v30;
    }
  }

  else
  {
    v35.receiver = self;
    v35.super_class = SBStashSlideOverItemAnimationModifier;
    [(SBStashSlideOverItemAnimationModifier *)&v35 frameForLayoutRole:a3 inAppLayout:v11 withBounds:x, y, width, height];
    v25 = v26;
    v16 = v27;
    v18 = v28;
    v20 = v29;
  }

  v31 = v25;
  v32 = v16;
  v33 = v18;
  v34 = v20;
  result.size.height = v34;
  result.size.width = v33;
  result.origin.y = v32;
  result.origin.x = v31;
  return result;
}

- (BOOL)shouldUseAnchorPointToPinLayoutRolesToSpace:(unint64_t)a3
{
  v5 = [(SBStashSlideOverItemAnimationModifier *)self appLayouts];
  v6 = [v5 objectAtIndex:a3];

  if ([v6 containsItem:self->_slideOverDisplayItem])
  {
    v7 = 0;
  }

  else
  {
    v9.receiver = self;
    v9.super_class = SBStashSlideOverItemAnimationModifier;
    v7 = [(SBStashSlideOverItemAnimationModifier *)&v9 shouldUseAnchorPointToPinLayoutRolesToSpace:a3];
  }

  return v7;
}

- (id)animationAttributesForItem:(id)a3
{
  v4 = a3;
  if ([v4 switcherLayoutElementType] == 4)
  {
    v15.receiver = self;
    v15.super_class = SBStashSlideOverItemAnimationModifier;
    v5 = [(SBWindowingModifier *)&v15 animationAttributesForItem:v4];
    v6 = [v5 mutableCopy];

    [(SBSwitcherAnimationAttributes *)v6 setLayoutUpdateMode:2];
  }

  else if ([v4 isAppLayout] && (objc_msgSend(v4, "appLayout"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "containsItem:", self->_slideOverDisplayItem), v7, v8))
  {
    v6 = objc_alloc_init(SBMutableSwitcherAnimationAttributes);
    [(SBSwitcherAnimationAttributes *)v6 setUpdateMode:3];
    v9 = [(SBStashSlideOverItemAnimationModifier *)self switcherSettings];
    v10 = [v9 windowingSettings];
    v11 = [v10 appToPeekLayoutSettings];
    [(SBSwitcherAnimationAttributes *)v6 setLayoutSettings:v11];
  }

  else
  {
    v14.receiver = self;
    v14.super_class = SBStashSlideOverItemAnimationModifier;
    v12 = [(SBWindowingModifier *)&v14 animationAttributesForItem:v4];
    v6 = [v12 mutableCopy];

    [(SBSwitcherAnimationAttributes *)v6 setUpdateMode:3];
  }

  return v6;
}

- (id)topMostItems
{
  v9.receiver = self;
  v9.super_class = SBStashSlideOverItemAnimationModifier;
  v3 = [(SBWindowingModifier *)&v9 topMostItems];
  v4 = [v3 mutableCopy];

  v5 = [(SBStashSlideOverItemAnimationModifier *)self slideOverTongueLayoutElement];
  v6 = [(SBStashSlideOverItemAnimationModifier *)self _slideOverAppLayout];
  v7 = [v6 leafAppLayoutForItem:self->_slideOverDisplayItem];
  [v4 insertObject:v7 atIndex:0];

  if (v5)
  {
    [v4 insertObject:v5 atIndex:0];
  }

  return v4;
}

- (id)visibleItems
{
  v3 = [(SBStashSlideOverItemAnimationModifier *)self appLayouts];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __53__SBStashSlideOverItemAnimationModifier_visibleItems__block_invoke;
  v10[3] = &unk_2783A8CB8;
  v10[4] = self;
  v4 = [v3 bs_firstObjectPassingTest:v10];

  if (v4)
  {
    v9.receiver = self;
    v9.super_class = SBStashSlideOverItemAnimationModifier;
    v5 = [(SBWindowingModifier *)&v9 visibleItems];
    v6 = [v5 setByAddingObject:v4];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = SBStashSlideOverItemAnimationModifier;
    v6 = [(SBWindowingModifier *)&v8 visibleItems];
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
    v14.super_class = SBStashSlideOverItemAnimationModifier;
    [(SBWindowingModifier *)&v14 opacityForLayoutRole:a3 inAppLayout:v8 atIndex:a5];
    v11 = v12;
  }

  return v11;
}

- (BOOL)isHomeScreenContentRequired
{
  if (self->_transitioningToHome)
  {
    return 1;
  }

  v6 = v2;
  v7 = v3;
  v5.receiver = self;
  v5.super_class = SBStashSlideOverItemAnimationModifier;
  return [(SBStashSlideOverItemAnimationModifier *)&v5 isHomeScreenContentRequired];
}

- (SBWindowingItemCorners)cornersForItem:(SEL)a3
{
  v6 = a4;
  if ([v6 isAppLayout] && (objc_msgSend(v6, "appLayout"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "containsItem:", self->_slideOverDisplayItem), v7, v8))
  {
    v9 = [v6 appLayout];
    [(SBStashSlideOverItemAnimationModifier *)self bestSupportedDefaultCornerRadiusForAppLayout:v9];
    SBRectCornerRadiiForRadius();
    SBWindowingItemCornersMake(15, retstr, v10, v11, v12, v13);
  }

  else
  {
    v15.receiver = self;
    v15.super_class = SBStashSlideOverItemAnimationModifier;
    [(SBWindowingItemCorners *)&v15 cornersForItem:v6];
  }

  return result;
}

- (BOOL)_layOutSlideOverItemFullyOffscreen
{
  v3 = [(SBWindowingModifier *)self transitionPhase];
  if (v3 == 2)
  {
    v4 = 0;
    return self->_direction == v4;
  }

  if (v3 == 1)
  {
    v4 = 1;
    return self->_direction == v4;
  }

  return 0;
}

- (id)_slideOverAppLayout
{
  v10[1] = *MEMORY[0x277D85DE8];
  v3 = [(SBStashSlideOverItemAnimationModifier *)self appLayouts];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __60__SBStashSlideOverItemAnimationModifier__slideOverAppLayout__block_invoke;
  v9[3] = &unk_2783A8CB8;
  v9[4] = self;
  v4 = [v3 bs_firstObjectPassingTest:v9];

  if (!v4)
  {
    v5 = [SBAppLayout alloc];
    v10[0] = self->_slideOverDisplayItem;
    v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:1];
    LOBYTE(v8) = 0;
    v4 = [(SBAppLayout *)v5 initWithItems:v6 centerItem:0 floatingItem:0 configuration:1 centerConfiguration:0 environment:1 hidden:v8 preferredDisplayOrdinal:[(SBStashSlideOverItemAnimationModifier *)self displayOrdinal]];
  }

  return v4;
}

@end