@interface SBAppExposeToAppWindowingModifier
- (BOOL)shouldInterruptForActivity:(id)activity;
- (CGPoint)adjustedSpaceAccessoryViewAnchorPoint:(CGPoint)point forAppLayout:(id)layout;
- (CGPoint)adjustedSpaceAccessoryViewPerspectiveAngle:(CGPoint)angle forAppLayout:(id)layout;
- (CGPoint)perspectiveAngleForItem:(id)item;
- (CGRect)adjustedSpaceAccessoryViewFrame:(CGRect)frame forAppLayout:(id)layout;
- (CGRect)frameForLayoutRole:(int64_t)role inAppLayout:(id)layout withBounds:(CGRect)bounds;
- (SBAppExposeToAppWindowingModifier)initWithSwitcherTransitionModifier:(id)modifier fromAppExposeModifier:(id)exposeModifier toFullScreenContinuousExposeModifier:(id)continuousExposeModifier;
- (SBWindowingItemCorners)cornersForItem:(SEL)item;
- (SBWindowingItemFrame)frameForItem:(SEL)item;
- (SBWindowingItemTitleStyle)titleStyleForItem:(SEL)item;
- (double)adjustedSpaceAccessoryViewScale:(double)scale forAppLayout:(id)layout;
- (double)opacityForLayoutRole:(int64_t)role inAppLayout:(id)layout atIndex:(unint64_t)index;
- (double)scaleForLayoutRole:(int64_t)role inAppLayout:(id)layout;
- (id)adjustedAppLayoutsForAppLayouts:(id)layouts;
- (id)animationAttributesForLayoutRole:(int64_t)role inAppLayout:(id)layout withAnimationAttributes:(id)attributes;
- (id)visibleItems;
- (void)stripDidChange:(id)change;
- (void)transitionWillBegin:(id)begin;
- (void)willBegin;
@end

@implementation SBAppExposeToAppWindowingModifier

- (SBAppExposeToAppWindowingModifier)initWithSwitcherTransitionModifier:(id)modifier fromAppExposeModifier:(id)exposeModifier toFullScreenContinuousExposeModifier:(id)continuousExposeModifier
{
  modifierCopy = modifier;
  exposeModifierCopy = exposeModifier;
  continuousExposeModifierCopy = continuousExposeModifier;
  v17.receiver = self;
  v17.super_class = SBAppExposeToAppWindowingModifier;
  v13 = [(SBWindowingModifier *)&v17 init];
  if (v13)
  {
    if (modifierCopy)
    {
      if (exposeModifierCopy)
      {
        goto LABEL_4;
      }
    }

    else
    {
      [SBAppExposeToAppWindowingModifier initWithSwitcherTransitionModifier:a2 fromAppExposeModifier:v13 toFullScreenContinuousExposeModifier:?];
      if (exposeModifierCopy)
      {
LABEL_4:
        if (continuousExposeModifierCopy)
        {
LABEL_5:
          objc_storeStrong(&v13->_fromAppExposeModifier, exposeModifier);
          objc_storeStrong(&v13->_toFullScreenContinuousExposeModifier, continuousExposeModifier);
          objc_storeStrong(&v13->_transitionSwitcherModifier, modifier);
          fullScreenAppLayout = [(SBFullScreenContinuousExposeSwitcherModifier *)v13->_toFullScreenContinuousExposeModifier fullScreenAppLayout];
          toAppLayout = v13->_toAppLayout;
          v13->_toAppLayout = fullScreenAppLayout;

          [(SBChainableModifier *)v13 addChildModifier:v13->_transitionSwitcherModifier];
          goto LABEL_6;
        }

LABEL_9:
        [SBAppExposeToAppWindowingModifier initWithSwitcherTransitionModifier:a2 fromAppExposeModifier:v13 toFullScreenContinuousExposeModifier:?];
        goto LABEL_5;
      }
    }

    [SBAppExposeToAppWindowingModifier initWithSwitcherTransitionModifier:a2 fromAppExposeModifier:v13 toFullScreenContinuousExposeModifier:?];
    if (continuousExposeModifierCopy)
    {
      goto LABEL_5;
    }

    goto LABEL_9;
  }

LABEL_6:

  return v13;
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

- (void)willBegin
{
  fromAppExposeModifier = self->_fromAppExposeModifier;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __46__SBAppExposeToAppWindowingModifier_willBegin__block_invoke;
  v10[3] = &unk_2783A8C18;
  v10[4] = self;
  [(SBChainableModifier *)self performTransactionWithTemporaryChildModifier:fromAppExposeModifier usingBlock:v10];
  v4 = [(NSArray *)self->_adjustedAppLayoutsBeforeTransition bs_map:&__block_literal_global_171];
  bs_flatten = [v4 bs_flatten];
  bs_set = [bs_flatten bs_set];
  visibleItemsInAppExpose = self->_visibleItemsInAppExpose;
  self->_visibleItemsInAppExpose = bs_set;

  toFullScreenContinuousExposeModifier = self->_toFullScreenContinuousExposeModifier;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __46__SBAppExposeToAppWindowingModifier_willBegin__block_invoke_3;
  v9[3] = &unk_2783A8C18;
  v9[4] = self;
  [(SBChainableModifier *)self performTransactionWithTemporaryChildModifier:toFullScreenContinuousExposeModifier usingBlock:v9];
}

void __46__SBAppExposeToAppWindowingModifier_willBegin__block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 192);
  v7.receiver = *(a1 + 32);
  v7.super_class = SBAppExposeToAppWindowingModifier;
  v3 = objc_msgSendSuper2(&v7, sel_appLayouts);
  v4 = [v2 adjustedAppLayoutsForAppLayouts:v3];
  v5 = *(a1 + 32);
  v6 = *(v5 + 208);
  *(v5 + 208) = v4;
}

void __46__SBAppExposeToAppWindowingModifier_willBegin__block_invoke_3(uint64_t a1)
{
  v1 = [*(*(a1 + 32) + 200) _forwardingTargetForUpdate];
  if (v1)
  {
    v3 = v1;
    v2 = [v1 update];
    v1 = v3;
  }
}

- (void)transitionWillBegin:(id)begin
{
  transitionID = [begin transitionID];
  transitionID = self->_transitionID;
  self->_transitionID = transitionID;

  windowManagementContext = [(SBAppExposeToAppWindowingModifier *)self windowManagementContext];
  isAutomaticStageCreationEnabled = [windowManagementContext isAutomaticStageCreationEnabled];

  if (isAutomaticStageCreationEnabled)
  {
    v8 = 6;
  }

  else
  {
    v8 = 2;
  }

  v9 = [[SBUpdateLayoutSwitcherEventResponse alloc] initWithOptions:v8 updateMode:0];
  [(SBWindowingModifier *)self appendResponse:v9];
}

- (void)stripDidChange:(id)change
{
  toFullScreenContinuousExposeModifier = self->_toFullScreenContinuousExposeModifier;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __52__SBAppExposeToAppWindowingModifier_stripDidChange___block_invoke;
  v4[3] = &unk_2783A8C18;
  v4[4] = self;
  [(SBChainableModifier *)self performTransactionWithTemporaryChildModifier:toFullScreenContinuousExposeModifier usingBlock:v4];
}

void __52__SBAppExposeToAppWindowingModifier_stripDidChange___block_invoke(uint64_t a1)
{
  v1 = [*(*(a1 + 32) + 200) _forwardingTargetForUpdate];
  if (v1)
  {
    v3 = v1;
    v2 = [v1 update];
    [v3 layoutViewModelsIfNeeded];
    v1 = v3;
  }
}

- (id)visibleItems
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__61;
  v13 = __Block_byref_object_dispose__61;
  v14 = objc_alloc_init(MEMORY[0x277CBEB58]);
  fromAppExposeModifier = self->_fromAppExposeModifier;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __49__SBAppExposeToAppWindowingModifier_visibleItems__block_invoke;
  v8[3] = &unk_2783A8CE0;
  v8[4] = self;
  v8[5] = &v9;
  [(SBChainableModifier *)self performTransactionWithTemporaryChildModifier:fromAppExposeModifier usingBlock:v8];
  toFullScreenContinuousExposeModifier = self->_toFullScreenContinuousExposeModifier;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __49__SBAppExposeToAppWindowingModifier_visibleItems__block_invoke_2;
  v7[3] = &unk_2783A8CE0;
  v7[4] = self;
  v7[5] = &v9;
  [(SBChainableModifier *)self performTransactionWithTemporaryChildModifier:toFullScreenContinuousExposeModifier usingBlock:v7];
  v5 = v10[5];
  _Block_object_dispose(&v9, 8);

  return v5;
}

void __49__SBAppExposeToAppWindowingModifier_visibleItems__block_invoke(uint64_t a1)
{
  v1 = *(*(*(a1 + 40) + 8) + 40);
  v2 = [*(*(a1 + 32) + 192) visibleItems];
  [v1 unionSet:v2];
}

void __49__SBAppExposeToAppWindowingModifier_visibleItems__block_invoke_2(uint64_t a1)
{
  v1 = *(*(*(a1 + 40) + 8) + 40);
  v2 = [*(*(a1 + 32) + 200) visibleAppLayouts];
  [v1 unionSet:v2];
}

- (id)adjustedAppLayoutsForAppLayouts:(id)layouts
{
  v16.receiver = self;
  v16.super_class = SBAppExposeToAppWindowingModifier;
  v4 = [(SBAppExposeToAppWindowingModifier *)&v16 adjustedAppLayoutsForAppLayouts:layouts];
  if (self->_adjustedAppLayoutsBeforeTransition && -[SBWindowingModifier transitionPhase](self, "transitionPhase") == 2 && [v4 count])
  {
    v5 = MEMORY[0x277CBEB18];
    firstObject = [v4 firstObject];
    v7 = [v5 arrayWithObject:firstObject];

    windowManagementContext = [(SBAppExposeToAppWindowingModifier *)self windowManagementContext];
    isAutomaticStageCreationEnabled = [windowManagementContext isAutomaticStageCreationEnabled];

    if (isAutomaticStageCreationEnabled)
    {
      v10 = [v4 mutableCopy];
    }

    else
    {
      adjustedAppLayoutsBeforeTransition = self->_adjustedAppLayoutsBeforeTransition;
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = __69__SBAppExposeToAppWindowingModifier_adjustedAppLayoutsForAppLayouts___block_invoke;
      v13[3] = &unk_2783AE4E0;
      v14 = v4;
      v10 = v7;
      v15 = v10;
      [(NSArray *)adjustedAppLayoutsBeforeTransition enumerateObjectsUsingBlock:v13];

      v7 = v14;
    }
  }

  else
  {
    v10 = v4;
  }

  return v10;
}

void __69__SBAppExposeToAppWindowingModifier_adjustedAppLayoutsForAppLayouts___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = v5;
  if (a3)
  {
    v7 = *(a1 + 32);
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __69__SBAppExposeToAppWindowingModifier_adjustedAppLayoutsForAppLayouts___block_invoke_2;
    v9[3] = &unk_2783A8CB8;
    v8 = v5;
    v10 = v8;
    if ([v7 bs_containsObjectPassingTest:v9])
    {
      [*(a1 + 40) addObject:v8];
    }
  }
}

- (double)opacityForLayoutRole:(int64_t)role inAppLayout:(id)layout atIndex:(unint64_t)index
{
  layoutCopy = layout;
  if (-[SBWindowingModifier transitionPhase](self, "transitionPhase") != 1 || (visibleItemsInAppExpose = self->_visibleItemsInAppExpose, [layoutCopy itemForLayoutRole:role], v10 = objc_claimAutoreleasedReturnValue(), LODWORD(visibleItemsInAppExpose) = -[NSSet containsObject:](visibleItemsInAppExpose, "containsObject:", v10), v10, v11 = 0.0, visibleItemsInAppExpose))
  {
    v14.receiver = self;
    v14.super_class = SBAppExposeToAppWindowingModifier;
    [(SBWindowingModifier *)&v14 opacityForLayoutRole:role inAppLayout:layoutCopy atIndex:index];
    v11 = v12;
  }

  return v11;
}

- (SBWindowingItemFrame)frameForItem:(SEL)item
{
  v6 = a4;
  v27 = 0;
  v28 = &v27;
  v29 = 0x8010000000;
  v30 = &unk_21F9DA6A3;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  if ([(SBWindowingModifier *)self transitionPhase]== 1)
  {
    toFullScreenContinuousExposeModifier = self->_toFullScreenContinuousExposeModifier;
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __50__SBAppExposeToAppWindowingModifier_frameForItem___block_invoke;
    v24[3] = &unk_2783AB258;
    v26 = &v27;
    v24[4] = self;
    v25 = v6;
    [(SBChainableModifier *)self performTransactionWithTemporaryChildModifier:toFullScreenContinuousExposeModifier usingBlock:v24];

    v8 = v28;
  }

  else
  {
    v17.receiver = self;
    v17.super_class = SBAppExposeToAppWindowingModifier;
    [(SBWindowingItemFrame *)&v17 frameForItem:v6];
    v8 = v28;
    v9 = v23;
    v10 = v22;
    v11 = v21;
    *(v28 + 4) = v20;
    *(v8 + 5) = v11;
    *(v8 + 6) = v10;
    *(v8 + 7) = v9;
    v12 = v19;
    *(v8 + 2) = v18;
    *(v8 + 3) = v12;
  }

  v13 = *(v8 + 5);
  retstr->position = *(v8 + 4);
  retstr->anchorPoint = v13;
  v14 = *(v8 + 7);
  retstr->scale = *(v8 + 6);
  retstr->translation = v14;
  v15 = *(v8 + 3);
  retstr->bounds.origin = *(v8 + 2);
  retstr->bounds.size = v15;
  _Block_object_dispose(&v27, 8);

  return result;
}

double __50__SBAppExposeToAppWindowingModifier_frameForItem___block_invoke(void *a1)
{
  [*(a1[4] + 200) frameForItem:a1[5]];
  v2 = *(a1[6] + 8);
  v2[4] = v6;
  v2[5] = v7;
  v2[6] = v8;
  v2[7] = v9;
  result = *&v4;
  v2[2] = v4;
  v2[3] = v5;
  return result;
}

- (CGPoint)perspectiveAngleForItem:(id)item
{
  itemCopy = item;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3010000000;
  v21 = 0;
  v22 = 0;
  v20 = &unk_21F9DA6A3;
  if ([(SBWindowingModifier *)self transitionPhase]== 1)
  {
    toFullScreenContinuousExposeModifier = self->_toFullScreenContinuousExposeModifier;
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __61__SBAppExposeToAppWindowingModifier_perspectiveAngleForItem___block_invoke;
    v14[3] = &unk_2783AB258;
    v16 = &v17;
    v14[4] = self;
    v15 = itemCopy;
    [(SBChainableModifier *)self performTransactionWithTemporaryChildModifier:toFullScreenContinuousExposeModifier usingBlock:v14];

    v6 = v18[4];
    v7 = v18[5];
  }

  else
  {
    v13.receiver = self;
    v13.super_class = SBAppExposeToAppWindowingModifier;
    [(SBWindowingModifier *)&v13 perspectiveAngleForItem:itemCopy];
    v6 = v8;
    v7 = v9;
    v10 = v18;
    v18[4] = v8;
    v10[5] = v9;
  }

  _Block_object_dispose(&v17, 8);

  v11 = v6;
  v12 = v7;
  result.y = v12;
  result.x = v11;
  return result;
}

uint64_t __61__SBAppExposeToAppWindowingModifier_perspectiveAngleForItem___block_invoke(void *a1)
{
  result = [*(a1[4] + 200) perspectiveAngleForItem:a1[5]];
  v3 = *(a1[6] + 8);
  *(v3 + 32) = v4;
  *(v3 + 40) = v5;
  return result;
}

- (CGRect)adjustedSpaceAccessoryViewFrame:(CGRect)frame forAppLayout:(id)layout
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  layoutCopy = layout;
  v32 = 0;
  v33 = &v32;
  v34 = 0x4010000000;
  v35 = &unk_21F9DA6A3;
  v36 = 0u;
  v37 = 0u;
  if ([(SBWindowingModifier *)self transitionPhase]== 1)
  {
    toFullScreenContinuousExposeModifier = self->_toFullScreenContinuousExposeModifier;
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __82__SBAppExposeToAppWindowingModifier_adjustedSpaceAccessoryViewFrame_forAppLayout___block_invoke;
    v25[3] = &unk_2783AA6E0;
    v27 = &v32;
    v25[4] = self;
    v28 = x;
    v29 = y;
    v30 = width;
    v31 = height;
    v26 = layoutCopy;
    [(SBChainableModifier *)self performTransactionWithTemporaryChildModifier:toFullScreenContinuousExposeModifier usingBlock:v25];

    v11 = v33[4];
    v12 = v33[5];
    v13 = v33[6];
    v14 = v33[7];
  }

  else
  {
    v24.receiver = self;
    v24.super_class = SBAppExposeToAppWindowingModifier;
    [(SBWindowingModifier *)&v24 adjustedSpaceAccessoryViewFrame:layoutCopy forAppLayout:x, y, width, height];
    v11 = v15;
    v12 = v16;
    v13 = v17;
    v14 = v18;
    v19 = v33;
    v33[4] = v15;
    v19[5] = v16;
    v19[6] = v17;
    v19[7] = v18;
  }

  _Block_object_dispose(&v32, 8);

  v20 = v11;
  v21 = v12;
  v22 = v13;
  v23 = v14;
  result.size.height = v23;
  result.size.width = v22;
  result.origin.y = v21;
  result.origin.x = v20;
  return result;
}

uint64_t __82__SBAppExposeToAppWindowingModifier_adjustedSpaceAccessoryViewFrame_forAppLayout___block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 32) + 200) adjustedSpaceAccessoryViewFrame:*(a1 + 40) forAppLayout:{*(a1 + 56), *(a1 + 64), *(a1 + 72), *(a1 + 80)}];
  v3 = *(*(a1 + 48) + 8);
  v3[4] = v4;
  v3[5] = v5;
  v3[6] = v6;
  v3[7] = v7;
  return result;
}

- (double)adjustedSpaceAccessoryViewScale:(double)scale forAppLayout:(id)layout
{
  layoutCopy = layout;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  if ([(SBWindowingModifier *)self transitionPhase]== 1)
  {
    toFullScreenContinuousExposeModifier = self->_toFullScreenContinuousExposeModifier;
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __82__SBAppExposeToAppWindowingModifier_adjustedSpaceAccessoryViewScale_forAppLayout___block_invoke;
    v12[3] = &unk_2783AA668;
    v14 = &v16;
    v12[4] = self;
    scaleCopy = scale;
    v13 = layoutCopy;
    [(SBChainableModifier *)self performTransactionWithTemporaryChildModifier:toFullScreenContinuousExposeModifier usingBlock:v12];

    v8 = v17[3];
  }

  else
  {
    v11.receiver = self;
    v11.super_class = SBAppExposeToAppWindowingModifier;
    [(SBWindowingModifier *)&v11 adjustedSpaceAccessoryViewScale:layoutCopy forAppLayout:scale];
    v8 = v9;
    v17[3] = v9;
  }

  _Block_object_dispose(&v16, 8);

  return v8;
}

uint64_t __82__SBAppExposeToAppWindowingModifier_adjustedSpaceAccessoryViewScale_forAppLayout___block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 32) + 200) adjustedSpaceAccessoryViewScale:*(a1 + 40) forAppLayout:*(a1 + 56)];
  *(*(*(a1 + 48) + 8) + 24) = v3;
  return result;
}

- (CGPoint)adjustedSpaceAccessoryViewAnchorPoint:(CGPoint)point forAppLayout:(id)layout
{
  y = point.y;
  x = point.x;
  layoutCopy = layout;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3010000000;
  v26 = 0;
  v27 = 0;
  v25 = &unk_21F9DA6A3;
  if ([(SBWindowingModifier *)self transitionPhase]== 1)
  {
    toFullScreenContinuousExposeModifier = self->_toFullScreenContinuousExposeModifier;
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __88__SBAppExposeToAppWindowingModifier_adjustedSpaceAccessoryViewAnchorPoint_forAppLayout___block_invoke;
    v17[3] = &unk_2783AA690;
    v19 = &v22;
    v17[4] = self;
    v20 = x;
    v21 = y;
    v18 = layoutCopy;
    [(SBChainableModifier *)self performTransactionWithTemporaryChildModifier:toFullScreenContinuousExposeModifier usingBlock:v17];

    v9 = v23[4];
    v10 = v23[5];
  }

  else
  {
    v16.receiver = self;
    v16.super_class = SBAppExposeToAppWindowingModifier;
    [(SBWindowingModifier *)&v16 adjustedSpaceAccessoryViewAnchorPoint:layoutCopy forAppLayout:x, y];
    v9 = v11;
    v10 = v12;
    v13 = v23;
    v23[4] = v11;
    v13[5] = v12;
  }

  _Block_object_dispose(&v22, 8);

  v14 = v9;
  v15 = v10;
  result.y = v15;
  result.x = v14;
  return result;
}

uint64_t __88__SBAppExposeToAppWindowingModifier_adjustedSpaceAccessoryViewAnchorPoint_forAppLayout___block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 32) + 200) adjustedSpaceAccessoryViewAnchorPoint:*(a1 + 40) forAppLayout:{*(a1 + 56), *(a1 + 64)}];
  v3 = *(*(a1 + 48) + 8);
  *(v3 + 32) = v4;
  *(v3 + 40) = v5;
  return result;
}

- (CGPoint)adjustedSpaceAccessoryViewPerspectiveAngle:(CGPoint)angle forAppLayout:(id)layout
{
  y = angle.y;
  x = angle.x;
  layoutCopy = layout;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3010000000;
  v26 = 0;
  v27 = 0;
  v25 = &unk_21F9DA6A3;
  if ([(SBWindowingModifier *)self transitionPhase]== 1)
  {
    toFullScreenContinuousExposeModifier = self->_toFullScreenContinuousExposeModifier;
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __93__SBAppExposeToAppWindowingModifier_adjustedSpaceAccessoryViewPerspectiveAngle_forAppLayout___block_invoke;
    v17[3] = &unk_2783AA690;
    v19 = &v22;
    v17[4] = self;
    v20 = x;
    v21 = y;
    v18 = layoutCopy;
    [(SBChainableModifier *)self performTransactionWithTemporaryChildModifier:toFullScreenContinuousExposeModifier usingBlock:v17];

    v9 = v23[4];
    v10 = v23[5];
  }

  else
  {
    v16.receiver = self;
    v16.super_class = SBAppExposeToAppWindowingModifier;
    [(SBWindowingModifier *)&v16 adjustedSpaceAccessoryViewPerspectiveAngle:layoutCopy forAppLayout:x, y];
    v9 = v11;
    v10 = v12;
    v13 = v23;
    v23[4] = v11;
    v13[5] = v12;
  }

  _Block_object_dispose(&v22, 8);

  v14 = v9;
  v15 = v10;
  result.y = v15;
  result.x = v14;
  return result;
}

uint64_t __93__SBAppExposeToAppWindowingModifier_adjustedSpaceAccessoryViewPerspectiveAngle_forAppLayout___block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 32) + 200) adjustedSpaceAccessoryViewPerspectiveAngle:*(a1 + 40) forAppLayout:{*(a1 + 56), *(a1 + 64)}];
  v3 = *(*(a1 + 48) + 8);
  *(v3 + 32) = v4;
  *(v3 + 40) = v5;
  return result;
}

- (SBWindowingItemCorners)cornersForItem:(SEL)item
{
  v6 = a4;
  v20 = 0;
  v21 = &v20;
  v22 = 0x4810000000;
  v23 = &unk_21F9DA6A3;
  v24 = 0u;
  v25 = 0u;
  v26 = 0;
  if ([(SBWindowingModifier *)self transitionPhase]== 1)
  {
    toFullScreenContinuousExposeModifier = self->_toFullScreenContinuousExposeModifier;
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __52__SBAppExposeToAppWindowingModifier_cornersForItem___block_invoke;
    v17[3] = &unk_2783AB258;
    v19 = &v20;
    v17[4] = self;
    v18 = v6;
    [(SBChainableModifier *)self performTransactionWithTemporaryChildModifier:toFullScreenContinuousExposeModifier usingBlock:v17];

    v8 = v21;
  }

  else
  {
    v13.receiver = self;
    v13.super_class = SBAppExposeToAppWindowingModifier;
    [(SBWindowingItemCorners *)&v13 cornersForItem:v6];
    v8 = v21;
    v9 = v16;
    v10 = v15;
    *(v21 + 2) = v14;
    *(v8 + 3) = v10;
    v8[8] = v9;
  }

  v11 = *(v8 + 3);
  *&retstr->cornerRadii.topLeft = *(v8 + 2);
  *&retstr->cornerRadii.bottomRight = v11;
  retstr->cornerMask = v8[8];
  _Block_object_dispose(&v20, 8);

  return result;
}

double __52__SBAppExposeToAppWindowingModifier_cornersForItem___block_invoke(void *a1)
{
  [*(a1[4] + 200) cornersForItem:a1[5]];
  v2 = *(a1[6] + 8);
  result = *&v4;
  *(v2 + 32) = v4;
  *(v2 + 48) = v5;
  *(v2 + 64) = v6;
  return result;
}

- (SBWindowingItemTitleStyle)titleStyleForItem:(SEL)item
{
  v6 = a4;
  v20 = 0;
  v21 = &v20;
  v22 = 0x4810000000;
  v23 = &unk_21F9DA6A3;
  v24 = 0u;
  v25 = 0u;
  v26 = 0;
  if ([(SBWindowingModifier *)self transitionPhase]== 1)
  {
    toFullScreenContinuousExposeModifier = self->_toFullScreenContinuousExposeModifier;
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __55__SBAppExposeToAppWindowingModifier_titleStyleForItem___block_invoke;
    v17[3] = &unk_2783AB258;
    v19 = &v20;
    v17[4] = self;
    v18 = v6;
    [(SBChainableModifier *)self performTransactionWithTemporaryChildModifier:toFullScreenContinuousExposeModifier usingBlock:v17];

    v8 = v21;
  }

  else
  {
    v13.receiver = self;
    v13.super_class = SBAppExposeToAppWindowingModifier;
    [(SBWindowingItemTitleStyle *)&v13 titleStyleForItem:v6];
    v8 = v21;
    v9 = v16;
    v10 = v15;
    *(v21 + 2) = v14;
    *(v8 + 3) = v10;
    v8[8] = v9;
  }

  v11 = *(v8 + 3);
  *&retstr->titleAndIconOpacity = *(v8 + 2);
  *&retstr->iconOpacity = v11;
  retstr->footerViewIconAlignment = v8[8];
  _Block_object_dispose(&v20, 8);

  return result;
}

double __55__SBAppExposeToAppWindowingModifier_titleStyleForItem___block_invoke(void *a1)
{
  [*(a1[4] + 200) titleStyleForItem:a1[5]];
  v2 = *(a1[6] + 8);
  result = *&v4;
  *(v2 + 32) = v4;
  *(v2 + 48) = v5;
  *(v2 + 64) = v6;
  return result;
}

- (CGRect)frameForLayoutRole:(int64_t)role inAppLayout:(id)layout withBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  layoutCopy = layout;
  v35 = 0;
  v36 = &v35;
  v37 = 0x4010000000;
  v38 = &unk_21F9DA6A3;
  v39 = 0u;
  v40 = 0u;
  if ([(SBWindowingModifier *)self transitionPhase]== 1)
  {
    toFullScreenContinuousExposeModifier = self->_toFullScreenContinuousExposeModifier;
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __79__SBAppExposeToAppWindowingModifier_frameForLayoutRole_inAppLayout_withBounds___block_invoke;
    v27[3] = &unk_2783AA640;
    v29 = &v35;
    roleCopy = role;
    v27[4] = self;
    v28 = layoutCopy;
    v31 = x;
    v32 = y;
    v33 = width;
    v34 = height;
    [(SBChainableModifier *)self performTransactionWithTemporaryChildModifier:toFullScreenContinuousExposeModifier usingBlock:v27];

    v13 = v36[4];
    v14 = v36[5];
    v15 = v36[6];
    v16 = v36[7];
  }

  else
  {
    v26.receiver = self;
    v26.super_class = SBAppExposeToAppWindowingModifier;
    [(SBAppExposeToAppWindowingModifier *)&v26 frameForLayoutRole:role inAppLayout:layoutCopy withBounds:x, y, width, height];
    v13 = v17;
    v14 = v18;
    v15 = v19;
    v16 = v20;
    v21 = v36;
    v36[4] = v17;
    v21[5] = v18;
    v21[6] = v19;
    v21[7] = v20;
  }

  _Block_object_dispose(&v35, 8);

  v22 = v13;
  v23 = v14;
  v24 = v15;
  v25 = v16;
  result.size.height = v25;
  result.size.width = v24;
  result.origin.y = v23;
  result.origin.x = v22;
  return result;
}

uint64_t __79__SBAppExposeToAppWindowingModifier_frameForLayoutRole_inAppLayout_withBounds___block_invoke(uint64_t a1)
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
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  if ([(SBWindowingModifier *)self transitionPhase]== 1)
  {
    toFullScreenContinuousExposeModifier = self->_toFullScreenContinuousExposeModifier;
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __68__SBAppExposeToAppWindowingModifier_scaleForLayoutRole_inAppLayout___block_invoke;
    v12[3] = &unk_2783AA668;
    v14 = &v16;
    roleCopy = role;
    v12[4] = self;
    v13 = layoutCopy;
    [(SBChainableModifier *)self performTransactionWithTemporaryChildModifier:toFullScreenContinuousExposeModifier usingBlock:v12];

    v8 = v17[3];
  }

  else
  {
    v11.receiver = self;
    v11.super_class = SBAppExposeToAppWindowingModifier;
    [(SBAppExposeToAppWindowingModifier *)&v11 scaleForLayoutRole:role inAppLayout:layoutCopy];
    v8 = v9;
    v17[3] = v9;
  }

  _Block_object_dispose(&v16, 8);

  return v8;
}

uint64_t __68__SBAppExposeToAppWindowingModifier_scaleForLayoutRole_inAppLayout___block_invoke(void *a1)
{
  result = [*(a1[4] + 200) scaleForLayoutRole:a1[7] inAppLayout:a1[5]];
  *(*(a1[6] + 8) + 24) = v3;
  return result;
}

- (id)animationAttributesForLayoutRole:(int64_t)role inAppLayout:(id)layout withAnimationAttributes:(id)attributes
{
  layoutCopy = layout;
  v9 = [attributes mutableCopy];
  v10 = [layoutCopy itemForLayoutRole:role];

  if ([(NSSet *)self->_visibleItemsInAppExpose containsObject:v10])
  {
    [v9 setUpdateMode:3];
    [v9 setLayoutUpdateMode:3];
    [v9 setPositionUpdateMode:3];
  }

  else
  {
    [v9 setUpdateMode:2];
    [v9 setLayoutUpdateMode:2];
    [v9 setPositionUpdateMode:2];
    [v9 setOpacityUpdateMode:3];
  }

  return v9;
}

- (void)initWithSwitcherTransitionModifier:(uint64_t)a1 fromAppExposeModifier:(uint64_t)a2 toFullScreenContinuousExposeModifier:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBAppExposeToAppWindowingModifier.m" lineNumber:27 description:{@"Invalid parameter not satisfying: %@", @"transitionModifier"}];
}

- (void)initWithSwitcherTransitionModifier:(uint64_t)a1 fromAppExposeModifier:(uint64_t)a2 toFullScreenContinuousExposeModifier:.cold.2(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBAppExposeToAppWindowingModifier.m" lineNumber:28 description:{@"Invalid parameter not satisfying: %@", @"fromAppExposeModifier"}];
}

- (void)initWithSwitcherTransitionModifier:(uint64_t)a1 fromAppExposeModifier:(uint64_t)a2 toFullScreenContinuousExposeModifier:.cold.3(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBAppExposeToAppWindowingModifier.m" lineNumber:29 description:{@"Invalid parameter not satisfying: %@", @"toFullScreenContinuousExposeModifier"}];
}

@end