@interface SBHomePeekToFullScreenTransitionModifier
- (BOOL)shouldUseAnchorPointToPinLayoutRolesToSpace:(unint64_t)space;
- (BOOL)wantsSpaceAccessoryViewGenieForAppLayout:(id)layout;
- (CGPoint)perspectiveAngleForLayoutRole:(int64_t)role inAppLayout:(id)layout withPerspectiveAngle:(CGPoint)angle;
- (CGRect)frameForLayoutRole:(int64_t)role inAppLayout:(id)layout withBounds:(CGRect)bounds;
- (SBHomePeekToFullScreenTransitionModifier)initWithTransitionModifier:(id)modifier slidingOffPeekingAppLayout:(id)layout fromPeekingConfiguration:(int64_t)configuration;
- (SBWindowingItemFrame)frameForItem:(SEL)item;
- (double)fadeInDelayForSplitViewHandles;
- (double)opacityForItem:(id)item;
- (double)scaleForLayoutRole:(int64_t)role inAppLayout:(id)layout;
- (id)animationAttributesForItem:(id)item;
- (id)appLayoutsToEnsureExistForMainTransitionEvent:(id)event;
- (id)topMostItems;
- (void)transitionWillBegin:(id)begin;
@end

@implementation SBHomePeekToFullScreenTransitionModifier

- (SBHomePeekToFullScreenTransitionModifier)initWithTransitionModifier:(id)modifier slidingOffPeekingAppLayout:(id)layout fromPeekingConfiguration:(int64_t)configuration
{
  modifierCopy = modifier;
  layoutCopy = layout;
  v16.receiver = self;
  v16.super_class = SBHomePeekToFullScreenTransitionModifier;
  v12 = [(SBWindowingModifier *)&v16 init];
  if (v12)
  {
    if (!modifierCopy)
    {
      [SBHomePeekToFullScreenTransitionModifier initWithTransitionModifier:a2 slidingOffPeekingAppLayout:v12 fromPeekingConfiguration:?];
    }

    objc_storeStrong(&v12->_slidingOffPeekingAppLayout, layout);
    objc_storeStrong(&v12->_transitionModifier, modifier);
    [(SBChainableModifier *)v12 addChildModifier:v12->_transitionModifier];
    if (v12->_slidingOffPeekingAppLayout && SBPeekConfigurationIsValid(configuration))
    {
      v13 = [[SBHomePeekWindowingModifier alloc] initWithPeekingAppLayout:v12->_slidingOffPeekingAppLayout configuration:configuration];
      fromHomePeekModifier = v12->_fromHomePeekModifier;
      v12->_fromHomePeekModifier = v13;
    }
  }

  return v12;
}

- (id)appLayoutsToEnsureExistForMainTransitionEvent:(id)event
{
  v15.receiver = self;
  v15.super_class = SBHomePeekToFullScreenTransitionModifier;
  eventCopy = event;
  v4 = [(SBHomePeekToFullScreenTransitionModifier *)&v15 appLayoutsToEnsureExistForMainTransitionEvent:eventCopy];
  v5 = objc_opt_new();
  fromAppLayout = [eventCopy fromAppLayout];
  toAppLayout = [eventCopy toAppLayout];

  v8 = v4;
  if ((BSEqualObjects() & 1) == 0)
  {
    v8 = v4;
    if ([fromAppLayout containsAnyItemFromAppLayout:toAppLayout])
    {
      v11[0] = MEMORY[0x277D85DD0];
      v11[1] = 3221225472;
      v11[2] = __90__SBHomePeekToFullScreenTransitionModifier_appLayoutsToEnsureExistForMainTransitionEvent___block_invoke;
      v11[3] = &unk_2783B7128;
      v12 = fromAppLayout;
      v13 = toAppLayout;
      v8 = v5;
      v14 = v8;
      [v4 enumerateObjectsUsingBlock:v11];
    }
  }

  v9 = v8;

  return v8;
}

void __90__SBHomePeekToFullScreenTransitionModifier_appLayoutsToEnsureExistForMainTransitionEvent___block_invoke(id *a1, void *a2)
{
  v3 = a2;
  v4 = [v3 isOrContainsAppLayout:a1[4]];
  v5 = [v3 isOrContainsAppLayout:a1[5]];
  if (v4 & 1) != 0 || (v5)
  {
    if ((v4 & v5) == 1)
    {
      v25[0] = MEMORY[0x277D85DD0];
      v25[1] = 3221225472;
      v25[2] = __90__SBHomePeekToFullScreenTransitionModifier_appLayoutsToEnsureExistForMainTransitionEvent___block_invoke_2;
      v25[3] = &unk_2783AF5D8;
      v26 = a1[4];
      v27 = a1[5];
      v6 = [v3 appLayoutWithItemsPassingTest:v25];
      v22[0] = MEMORY[0x277D85DD0];
      v22[1] = 3221225472;
      v22[2] = __90__SBHomePeekToFullScreenTransitionModifier_appLayoutsToEnsureExistForMainTransitionEvent___block_invoke_3;
      v22[3] = &unk_2783AF5D8;
      v23 = a1[5];
      v24 = a1[4];
      v7 = [v3 appLayoutWithItemsPassingTest:v22];
      v19[0] = MEMORY[0x277D85DD0];
      v19[1] = 3221225472;
      v19[2] = __90__SBHomePeekToFullScreenTransitionModifier_appLayoutsToEnsureExistForMainTransitionEvent___block_invoke_4;
      v19[3] = &unk_2783AF5D8;
      v20 = a1[4];
      v21 = a1[5];
      v8 = [v3 appLayoutWithItemsPassingTest:v19];
      [a1[6] bs_safeAddObject:v6];
      [a1[6] bs_safeAddObject:v7];
      [a1[6] bs_safeAddObject:v8];

      v9 = v26;
    }

    else if (v4)
    {
      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = __90__SBHomePeekToFullScreenTransitionModifier_appLayoutsToEnsureExistForMainTransitionEvent___block_invoke_5;
      v17[3] = &unk_2783A8C90;
      v18 = a1[5];
      v10 = [v3 appLayoutWithItemsPassingTest:v17];
      [a1[6] bs_safeAddObject:v10];

      v9 = v18;
    }

    else
    {
      if (!v5)
      {
        goto LABEL_11;
      }

      v12 = MEMORY[0x277D85DD0];
      v13 = 3221225472;
      v14 = __90__SBHomePeekToFullScreenTransitionModifier_appLayoutsToEnsureExistForMainTransitionEvent___block_invoke_6;
      v15 = &unk_2783A8C90;
      v16 = a1[4];
      v11 = [v3 appLayoutWithItemsPassingTest:&v12];
      [a1[6] bs_safeAddObject:{v11, v12, v13, v14, v15}];

      v9 = v16;
    }

    goto LABEL_11;
  }

  [a1[6] addObject:v3];
LABEL_11:
}

uint64_t __90__SBHomePeekToFullScreenTransitionModifier_appLayoutsToEnsureExistForMainTransitionEvent___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(a1 + 32) containsItem:v3])
  {
    v4 = [*(a1 + 40) containsItem:v3] ^ 1;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t __90__SBHomePeekToFullScreenTransitionModifier_appLayoutsToEnsureExistForMainTransitionEvent___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(a1 + 32) containsItem:v3])
  {
    v4 = [*(a1 + 40) containsItem:v3] ^ 1;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t __90__SBHomePeekToFullScreenTransitionModifier_appLayoutsToEnsureExistForMainTransitionEvent___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(a1 + 32) containsItem:v3])
  {
    v4 = [*(a1 + 40) containsItem:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (double)fadeInDelayForSplitViewHandles
{
  switcherSettings = [(SBHomePeekToFullScreenTransitionModifier *)self switcherSettings];
  windowingSettings = [switcherSettings windowingSettings];
  [windowingSettings percentageOfTransitionForSplitViewHandleFadeInDelay];
  v5 = v4;
  animationSettings = [switcherSettings animationSettings];
  layoutSettings = [animationSettings layoutSettings];
  [layoutSettings settlingDuration];
  v9 = v5 * v8;

  return v9;
}

- (id)topMostItems
{
  toAppLayout = self->_toAppLayout;
  v7.receiver = self;
  v7.super_class = SBHomePeekToFullScreenTransitionModifier;
  topMostItems = [(SBWindowingModifier *)&v7 topMostItems];
  v5 = [(SBWindowingModifierBase *)self topMostItemsByAddingAppLayoutAndAccessories:toAppLayout toTopMostItems:topMostItems orderFront:1];

  return v5;
}

- (BOOL)wantsSpaceAccessoryViewGenieForAppLayout:(id)layout
{
  if (self->_toFullScreen)
  {
    return ![(SBAppLayout *)self->_toAppLayout containsAllItemsFromAppLayout:self->_fromAppLayout];
  }

  v4.receiver = self;
  v4.super_class = SBHomePeekToFullScreenTransitionModifier;
  return [(SBHomePeekToFullScreenTransitionModifier *)&v4 wantsSpaceAccessoryViewGenieForAppLayout:layout];
}

- (SBWindowingItemFrame)frameForItem:(SEL)item
{
  v6 = a4;
  slidingOffPeekingAppLayout = self->_slidingOffPeekingAppLayout;
  appLayout = [v6 appLayout];
  LODWORD(slidingOffPeekingAppLayout) = [(SBAppLayout *)slidingOffPeekingAppLayout isOrContainsAppLayout:appLayout];

  if (slidingOffPeekingAppLayout)
  {
    [(SBHomePeekToFullScreenTransitionModifier *)self containerViewBounds];
    SBWindowingItemFrameMakeWithBounds(retstr, v9, v10, v11, v12);
  }

  else
  {
    v14.receiver = self;
    v14.super_class = SBHomePeekToFullScreenTransitionModifier;
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
  if (self->_fromHomePeekModifier && [(SBAppLayout *)self->_slidingOffPeekingAppLayout containsItem:v12])
  {
    v44 = 0;
    v45 = &v44;
    v46 = 0x4010000000;
    v47 = &unk_21F9DA6A3;
    fromHomePeekModifier = self->_fromHomePeekModifier;
    v48 = 0u;
    v49 = 0u;
    v36[0] = MEMORY[0x277D85DD0];
    v36[1] = 3221225472;
    v36[2] = __86__SBHomePeekToFullScreenTransitionModifier_frameForLayoutRole_inAppLayout_withBounds___block_invoke;
    v36[3] = &unk_2783AA640;
    v38 = &v44;
    roleCopy = role;
    v36[4] = self;
    v37 = layoutCopy;
    v40 = x;
    v41 = y;
    v42 = width;
    v43 = height;
    [(SBChainableModifier *)self performTransactionWithTemporaryChildModifier:fromHomePeekModifier usingBlock:v36];
    transitionPhase = [(SBWindowingModifier *)self transitionPhase];
    v15 = v45;
    v16 = v45[4];
    if (transitionPhase >= 2)
    {
      switcherSettings = [(SBHomePeekToFullScreenTransitionModifier *)self switcherSettings];
      windowingSettings = [switcherSettings windowingSettings];
      [windowingSettings diffuseShadowRadius];
      v20 = v19;

      [(SBHomePeekToFullScreenTransitionModifier *)self containerViewBounds];
      v21 = v20 * 2.8;
      if (v16 >= v22 * 0.5)
      {
        [(SBHomePeekToFullScreenTransitionModifier *)self containerViewBounds];
        v16 = v21 + v30;
        v15 = v45;
      }

      else
      {
        v15 = v45;
        v16 = -(v21 + v45[6]);
      }

      v15[4] = v16;
    }

    v25 = v15[5];
    v27 = v15[6];
    v29 = v15[7];

    _Block_object_dispose(&v44, 8);
  }

  else
  {
    v35.receiver = self;
    v35.super_class = SBHomePeekToFullScreenTransitionModifier;
    [(SBHomePeekToFullScreenTransitionModifier *)&v35 frameForLayoutRole:role inAppLayout:layoutCopy withBounds:x, y, width, height];
    v16 = v23;
    v25 = v24;
    v27 = v26;
    v29 = v28;
  }

  v31 = v16;
  v32 = v25;
  v33 = v27;
  v34 = v29;
  result.size.height = v34;
  result.size.width = v33;
  result.origin.y = v32;
  result.origin.x = v31;
  return result;
}

uint64_t __86__SBHomePeekToFullScreenTransitionModifier_frameForLayoutRole_inAppLayout_withBounds___block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 32) + 200) frameForLayoutRole:*(a1 + 56) inAppLayout:*(a1 + 40) withBounds:{*(a1 + 64), *(a1 + 72), *(a1 + 80), *(a1 + 88)}];
  v3 = *(*(a1 + 48) + 8);
  v3[4] = v4;
  v3[5] = v5;
  v3[6] = v6;
  v3[7] = v7;
  return result;
}

- (double)scaleForLayoutRole:(int64_t)role inAppLayout:(id)layout
{
  layoutCopy = layout;
  v7 = [layoutCopy itemForLayoutRole:role];
  if (self->_fromHomePeekModifier && [(SBAppLayout *)self->_slidingOffPeekingAppLayout containsItem:v7])
  {
    v8 = 1.0;
    if ([(SBWindowingModifier *)self transitionPhase]<= 1)
    {
      v17 = 0;
      v18 = &v17;
      v19 = 0x2020000000;
      fromHomePeekModifier = self->_fromHomePeekModifier;
      v20 = 0;
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = __75__SBHomePeekToFullScreenTransitionModifier_scaleForLayoutRole_inAppLayout___block_invoke;
      v13[3] = &unk_2783AA668;
      v15 = &v17;
      roleCopy = role;
      v13[4] = self;
      v14 = layoutCopy;
      [(SBChainableModifier *)self performTransactionWithTemporaryChildModifier:fromHomePeekModifier usingBlock:v13];
      v8 = v18[3];

      _Block_object_dispose(&v17, 8);
    }
  }

  else
  {
    v12.receiver = self;
    v12.super_class = SBHomePeekToFullScreenTransitionModifier;
    [(SBHomePeekToFullScreenTransitionModifier *)&v12 scaleForLayoutRole:role inAppLayout:layoutCopy];
    v8 = v10;
  }

  return v8;
}

uint64_t __75__SBHomePeekToFullScreenTransitionModifier_scaleForLayoutRole_inAppLayout___block_invoke(void *a1)
{
  result = [*(a1[4] + 200) scaleForLayoutRole:a1[7] inAppLayout:a1[5]];
  *(*(a1[6] + 8) + 24) = v3;
  return result;
}

- (CGPoint)perspectiveAngleForLayoutRole:(int64_t)role inAppLayout:(id)layout withPerspectiveAngle:(CGPoint)angle
{
  y = angle.y;
  x = angle.x;
  layoutCopy = layout;
  v10 = [layoutCopy itemForLayoutRole:role];
  if (self->_fromHomePeekModifier && [(SBAppLayout *)self->_slidingOffPeekingAppLayout containsItem:v10])
  {
    if ([(SBWindowingModifier *)self transitionPhase]< 2)
    {
      v25 = 0;
      v26 = &v25;
      v27 = 0x3010000000;
      v29 = 0;
      v30 = 0;
      fromHomePeekModifier = self->_fromHomePeekModifier;
      v28 = &unk_21F9DA6A3;
      v19[0] = MEMORY[0x277D85DD0];
      v19[1] = 3221225472;
      v19[2] = __107__SBHomePeekToFullScreenTransitionModifier_perspectiveAngleForLayoutRole_inAppLayout_withPerspectiveAngle___block_invoke;
      v19[3] = &unk_2783B7150;
      v21 = &v25;
      roleCopy = role;
      v19[4] = self;
      v20 = layoutCopy;
      v23 = x;
      v24 = y;
      [(SBChainableModifier *)self performTransactionWithTemporaryChildModifier:fromHomePeekModifier usingBlock:v19];
      v11 = v26[4];
      v12 = v26[5];

      _Block_object_dispose(&v25, 8);
    }

    else
    {
      v11 = *MEMORY[0x277CBF348];
      v12 = *(MEMORY[0x277CBF348] + 8);
    }
  }

  else
  {
    v18.receiver = self;
    v18.super_class = SBHomePeekToFullScreenTransitionModifier;
    [(SBHomePeekToFullScreenTransitionModifier *)&v18 perspectiveAngleForLayoutRole:role inAppLayout:layoutCopy withPerspectiveAngle:x, y];
    v11 = v13;
    v12 = v14;
  }

  v15 = v11;
  v16 = v12;
  result.y = v16;
  result.x = v15;
  return result;
}

uint64_t __107__SBHomePeekToFullScreenTransitionModifier_perspectiveAngleForLayoutRole_inAppLayout_withPerspectiveAngle___block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 32) + 200) perspectiveAngleForLayoutRole:*(a1 + 56) inAppLayout:*(a1 + 40) withPerspectiveAngle:{*(a1 + 64), *(a1 + 72)}];
  v3 = *(*(a1 + 48) + 8);
  *(v3 + 32) = v4;
  *(v3 + 40) = v5;
  return result;
}

- (BOOL)shouldUseAnchorPointToPinLayoutRolesToSpace:(unint64_t)space
{
  appLayouts = [(SBHomePeekToFullScreenTransitionModifier *)self appLayouts];
  v6 = [appLayouts objectAtIndex:space];

  if (self->_fromHomePeekModifier && [(SBAppLayout *)self->_slidingOffPeekingAppLayout isOrContainsAppLayout:v6])
  {
    v12 = 0;
    v13 = &v12;
    v14 = 0x2020000000;
    fromHomePeekModifier = self->_fromHomePeekModifier;
    v15 = 0;
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __88__SBHomePeekToFullScreenTransitionModifier_shouldUseAnchorPointToPinLayoutRolesToSpace___block_invoke;
    v11[3] = &unk_2783AA618;
    v11[4] = self;
    v11[5] = &v12;
    v11[6] = space;
    [(SBChainableModifier *)self performTransactionWithTemporaryChildModifier:fromHomePeekModifier usingBlock:v11];
    v8 = *(v13 + 24);
    _Block_object_dispose(&v12, 8);
  }

  else
  {
    v10.receiver = self;
    v10.super_class = SBHomePeekToFullScreenTransitionModifier;
    v8 = [(SBHomePeekToFullScreenTransitionModifier *)&v10 shouldUseAnchorPointToPinLayoutRolesToSpace:space];
  }

  return v8 & 1;
}

uint64_t __88__SBHomePeekToFullScreenTransitionModifier_shouldUseAnchorPointToPinLayoutRolesToSpace___block_invoke(void *a1)
{
  result = [*(a1[4] + 200) shouldUseAnchorPointToPinLayoutRolesToSpace:a1[6]];
  *(*(a1[5] + 8) + 24) = result;
  return result;
}

- (double)opacityForItem:(id)item
{
  itemCopy = item;
  if (![itemCopy isAppLayout] || (slidingOffPeekingAppLayout = self->_slidingOffPeekingAppLayout, objc_msgSend(itemCopy, "appLayout"), v6 = objc_claimAutoreleasedReturnValue(), LOBYTE(slidingOffPeekingAppLayout) = -[SBAppLayout isOrContainsAppLayout:](slidingOffPeekingAppLayout, "isOrContainsAppLayout:", v6), v6, v7 = 1.0, (slidingOffPeekingAppLayout & 1) == 0))
  {
    v10.receiver = self;
    v10.super_class = SBHomePeekToFullScreenTransitionModifier;
    [(SBWindowingModifier *)&v10 opacityForItem:itemCopy];
    v7 = v8;
  }

  return v7;
}

- (id)animationAttributesForItem:(id)item
{
  itemCopy = item;
  if ([itemCopy isAppLayout])
  {
    slidingOffPeekingAppLayout = self->_slidingOffPeekingAppLayout;
    appLayout = [itemCopy appLayout];
    LODWORD(slidingOffPeekingAppLayout) = [(SBAppLayout *)slidingOffPeekingAppLayout isOrContainsAppLayout:appLayout];

    if (slidingOffPeekingAppLayout)
    {
      v7 = objc_alloc_init(SBMutableSwitcherAnimationAttributes);
      [(SBSwitcherAnimationAttributes *)v7 setUpdateMode:3];
      switcherSettings = [(SBHomePeekToFullScreenTransitionModifier *)self switcherSettings];
      windowingSettings = [switcherSettings windowingSettings];
      appToPeekLayoutSettings = [windowingSettings appToPeekLayoutSettings];
      [(SBSwitcherAnimationAttributes *)v7 setLayoutSettings:appToPeekLayoutSettings];

      goto LABEL_13;
    }
  }

  if ([itemCopy isAppLayout])
  {
    appLayout2 = [itemCopy appLayout];
    if ([(SBHomePeekToFullScreenTransitionModifier *)self prioritizesSortOrderForAppLayout:appLayout2])
    {

LABEL_7:
      v7 = objc_alloc_init(SBMutableSwitcherAnimationAttributes);
      [(SBSwitcherAnimationAttributes *)v7 setUpdateMode:2];
      [(SBSwitcherAnimationAttributes *)v7 setLayoutUpdateMode:2];
      goto LABEL_13;
    }

    if ([(SBHomePeekToFullScreenTransitionModifier *)self prefersStripHiddenAndDisabled])
    {
      toAppLayout = self->_toAppLayout;
      appLayout3 = [itemCopy appLayout];
      LOBYTE(toAppLayout) = [(SBAppLayout *)toAppLayout isOrContainsAppLayout:appLayout3];

      if ((toAppLayout & 1) == 0)
      {
        goto LABEL_7;
      }
    }

    else
    {
    }
  }

  v15.receiver = self;
  v15.super_class = SBHomePeekToFullScreenTransitionModifier;
  v7 = [(SBWindowingModifier *)&v15 animationAttributesForItem:itemCopy];
LABEL_13:

  return v7;
}

- (void)transitionWillBegin:(id)begin
{
  beginCopy = begin;
  toAppLayout = [beginCopy toAppLayout];
  toAppLayout = self->_toAppLayout;
  self->_toAppLayout = toAppLayout;

  fromAppLayout = [beginCopy fromAppLayout];
  fromAppLayout = self->_fromAppLayout;
  self->_fromAppLayout = fromAppLayout;

  if (SBPeekConfigurationIsValid([beginCopy fromPeekConfiguration]) && !SBPeekConfigurationIsValid(objc_msgSend(beginCopy, "toPeekConfiguration")) && self->_toAppLayout)
  {
    fromAppLayout2 = [beginCopy fromAppLayout];
    self->_toFullScreen = [fromAppLayout2 isEqual:self->_toAppLayout] ^ 1;
  }

  else
  {
    self->_toFullScreen = 0;
  }
}

- (void)initWithTransitionModifier:(uint64_t)a1 slidingOffPeekingAppLayout:(uint64_t)a2 fromPeekingConfiguration:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBHomePeekToFullScreenTransitionModifier.m" lineNumber:24 description:{@"Invalid parameter not satisfying: %@", @"transitionModifier"}];
}

@end