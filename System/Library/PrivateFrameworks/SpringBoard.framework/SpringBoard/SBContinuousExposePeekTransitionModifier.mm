@interface SBContinuousExposePeekTransitionModifier
- (BOOL)isLayoutRoleMatchMovedToScene:(int64_t)scene inAppLayout:(id)layout;
- (CGRect)frameForIndex:(unint64_t)index;
- (CGRect)frameForLayoutRole:(int64_t)role inAppLayout:(id)layout withBounds:(CGRect)bounds;
- (SBContinuousExposePeekTransitionModifier)initWithTransitionID:(id)d fromAppLayout:(id)layout toAppLayout:(id)appLayout direction:(unint64_t)direction;
- (double)blurDelayForLayoutRole:(int64_t)role inAppLayout:(id)layout;
- (double)scaleForIndex:(unint64_t)index;
- (double)scaleForLayoutRole:(int64_t)role inAppLayout:(id)layout;
- (id)animationAttributesForLayoutElement:(id)element;
- (id)topMostLayoutElements;
- (id)transitionWillBegin;
- (id)visibleAppLayouts;
@end

@implementation SBContinuousExposePeekTransitionModifier

- (SBContinuousExposePeekTransitionModifier)initWithTransitionID:(id)d fromAppLayout:(id)layout toAppLayout:(id)appLayout direction:(unint64_t)direction
{
  layoutCopy = layout;
  appLayoutCopy = appLayout;
  v20.receiver = self;
  v20.super_class = SBContinuousExposePeekTransitionModifier;
  v14 = [(SBTransitionSwitcherModifier *)&v20 initWithTransitionID:d];
  if (v14)
  {
    if (!layoutCopy)
    {
      [SBContinuousExposePeekTransitionModifier initWithTransitionID:a2 fromAppLayout:v14 toAppLayout:? direction:?];
    }

    objc_storeStrong(&v14->_fromAppLayout, layout);
    objc_storeStrong(&v14->_toAppLayout, appLayout);
    v14->_direction = direction;
    v15 = [[SBFullScreenContinuousExposeSwitcherModifier alloc] initWithFullScreenAppLayout:v14->_fromAppLayout];
    fromFullScreenContinuousExposeModifier = v14->_fromFullScreenContinuousExposeModifier;
    v14->_fromFullScreenContinuousExposeModifier = v15;

    if (direction == 1 && v14->_toAppLayout)
    {
      v17 = [[SBFullScreenContinuousExposeSwitcherModifier alloc] initWithFullScreenAppLayout:v14->_toAppLayout];
      toFullScreenContinuousExposeModifier = v14->_toFullScreenContinuousExposeModifier;
      v14->_toFullScreenContinuousExposeModifier = v17;
    }
  }

  return v14;
}

- (id)transitionWillBegin
{
  v6.receiver = self;
  v6.super_class = SBContinuousExposePeekTransitionModifier;
  transitionWillBegin = [(SBTransitionSwitcherModifier *)&v6 transitionWillBegin];
  v3 = [[SBUpdateLayoutSwitcherEventResponse alloc] initWithOptions:4 updateMode:4];
  v4 = SBAppendSwitcherModifierResponse(v3, transitionWillBegin);

  return v4;
}

- (id)visibleAppLayouts
{
  v7.receiver = self;
  v7.super_class = SBContinuousExposePeekTransitionModifier;
  visibleAppLayouts = [(SBContinuousExposePeekTransitionModifier *)&v7 visibleAppLayouts];
  v4 = visibleAppLayouts;
  if (self->_direction == 1)
  {
    v5 = [visibleAppLayouts setByAddingObject:self->_fromAppLayout];

    v4 = v5;
  }

  return v4;
}

- (CGRect)frameForIndex:(unint64_t)index
{
  appLayouts = [(SBContinuousExposePeekTransitionModifier *)self appLayouts];
  v6 = [appLayouts objectAtIndex:index];

  if (self->_direction == 1)
  {
    if (-[SBTransitionSwitcherModifier transitionPhase](self, "transitionPhase") >= 2 && [v6 isEqual:self->_fromAppLayout] && !-[SBAppLayout containsAnyItemFromAppLayout:](self->_toAppLayout, "containsAnyItemFromAppLayout:", self->_fromAppLayout))
    {
      v24 = 0;
      v25 = &v24;
      v26 = 0x4010000000;
      v27 = &unk_21F9DA6A3;
      fromFullScreenContinuousExposeModifier = self->_fromFullScreenContinuousExposeModifier;
      v28 = 0u;
      v29 = 0u;
      v23[0] = MEMORY[0x277D85DD0];
      v23[1] = 3221225472;
      v23[2] = __58__SBContinuousExposePeekTransitionModifier_frameForIndex___block_invoke;
      v23[3] = &unk_2783AA618;
      v23[4] = self;
      v23[5] = &v24;
      v23[6] = index;
      [(SBChainableModifier *)self performTransactionWithTemporaryChildModifier:fromFullScreenContinuousExposeModifier usingBlock:v23];
      goto LABEL_14;
    }

    if (self->_direction == 1 && [(SBTransitionSwitcherModifier *)self transitionPhase]>= 2 && self->_toFullScreenContinuousExposeModifier && [(SBAppLayout *)self->_toAppLayout containsAnyItemFromAppLayout:v6]&& [(SBAppLayout *)self->_fromAppLayout containsAnyItemFromAppLayout:v6])
    {
      v24 = 0;
      v25 = &v24;
      v26 = 0x4010000000;
      v27 = &unk_21F9DA6A3;
      toFullScreenContinuousExposeModifier = self->_toFullScreenContinuousExposeModifier;
      v28 = 0u;
      v29 = 0u;
      v22[0] = MEMORY[0x277D85DD0];
      v22[1] = 3221225472;
      v22[2] = __58__SBContinuousExposePeekTransitionModifier_frameForIndex___block_invoke_2;
      v22[3] = &unk_2783AA618;
      v22[4] = self;
      v22[5] = &v24;
      v22[6] = index;
      [(SBChainableModifier *)self performTransactionWithTemporaryChildModifier:toFullScreenContinuousExposeModifier usingBlock:v22];
LABEL_14:
      v9 = v25[4];
      v11 = v25[5];
      v13 = v25[6];
      v15 = v25[7];
      _Block_object_dispose(&v24, 8);
      goto LABEL_12;
    }
  }

  v21.receiver = self;
  v21.super_class = SBContinuousExposePeekTransitionModifier;
  [(SBContinuousExposePeekTransitionModifier *)&v21 frameForIndex:index];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
LABEL_12:

  v16 = v9;
  v17 = v11;
  v18 = v13;
  v19 = v15;
  result.size.height = v19;
  result.size.width = v18;
  result.origin.y = v17;
  result.origin.x = v16;
  return result;
}

uint64_t __58__SBContinuousExposePeekTransitionModifier_frameForIndex___block_invoke(void *a1)
{
  result = [*(a1[4] + 168) frameForIndex:a1[6]];
  v3 = *(a1[5] + 8);
  v3[4] = v4;
  v3[5] = v5;
  v3[6] = v6;
  v3[7] = v7;
  return result;
}

uint64_t __58__SBContinuousExposePeekTransitionModifier_frameForIndex___block_invoke_2(void *a1)
{
  result = [*(a1[4] + 176) frameForIndex:a1[6]];
  v3 = *(a1[5] + 8);
  v3[4] = v4;
  v3[5] = v5;
  v3[6] = v6;
  v3[7] = v7;
  return result;
}

- (double)scaleForIndex:(unint64_t)index
{
  appLayouts = [(SBContinuousExposePeekTransitionModifier *)self appLayouts];
  v6 = [appLayouts objectAtIndex:index];

  if (self->_direction == 1)
  {
    if (-[SBTransitionSwitcherModifier transitionPhase](self, "transitionPhase") >= 2 && [v6 isEqual:self->_fromAppLayout] && !-[SBAppLayout containsAnyItemFromAppLayout:](self->_toAppLayout, "containsAnyItemFromAppLayout:", self->_fromAppLayout))
    {
      v15 = 0;
      v16 = &v15;
      v17 = 0x2020000000;
      fromFullScreenContinuousExposeModifier = self->_fromFullScreenContinuousExposeModifier;
      v18 = 0;
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __58__SBContinuousExposePeekTransitionModifier_scaleForIndex___block_invoke;
      v14[3] = &unk_2783AA618;
      v14[4] = self;
      v14[5] = &v15;
      v14[6] = index;
      [(SBChainableModifier *)self performTransactionWithTemporaryChildModifier:fromFullScreenContinuousExposeModifier usingBlock:v14];
      goto LABEL_14;
    }

    if (self->_direction == 1 && [(SBTransitionSwitcherModifier *)self transitionPhase]>= 2 && self->_toFullScreenContinuousExposeModifier && [(SBAppLayout *)self->_toAppLayout containsAnyItemFromAppLayout:v6]&& [(SBAppLayout *)self->_fromAppLayout containsAnyItemFromAppLayout:v6])
    {
      v15 = 0;
      v16 = &v15;
      v17 = 0x2020000000;
      toFullScreenContinuousExposeModifier = self->_toFullScreenContinuousExposeModifier;
      v18 = 0;
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = __58__SBContinuousExposePeekTransitionModifier_scaleForIndex___block_invoke_2;
      v13[3] = &unk_2783AA618;
      v13[4] = self;
      v13[5] = &v15;
      v13[6] = index;
      [(SBChainableModifier *)self performTransactionWithTemporaryChildModifier:toFullScreenContinuousExposeModifier usingBlock:v13];
LABEL_14:
      v9 = v16[3];
      _Block_object_dispose(&v15, 8);
      goto LABEL_12;
    }
  }

  v12.receiver = self;
  v12.super_class = SBContinuousExposePeekTransitionModifier;
  [(SBContinuousExposePeekTransitionModifier *)&v12 scaleForIndex:index];
  v9 = v8;
LABEL_12:

  return v9;
}

uint64_t __58__SBContinuousExposePeekTransitionModifier_scaleForIndex___block_invoke(void *a1)
{
  result = [*(a1[4] + 168) scaleForIndex:a1[6]];
  *(*(a1[5] + 8) + 24) = v3;
  return result;
}

uint64_t __58__SBContinuousExposePeekTransitionModifier_scaleForIndex___block_invoke_2(void *a1)
{
  result = [*(a1[4] + 176) scaleForIndex:a1[6]];
  *(*(a1[5] + 8) + 24) = v3;
  return result;
}

- (CGRect)frameForLayoutRole:(int64_t)role inAppLayout:(id)layout withBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  layoutCopy = layout;
  v53.receiver = self;
  v53.super_class = SBContinuousExposePeekTransitionModifier;
  [(SBContinuousExposePeekTransitionModifier *)&v53 frameForLayoutRole:role inAppLayout:layoutCopy withBounds:x, y, width, height];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  if (self->_direction == 1)
  {
    if (-[SBTransitionSwitcherModifier transitionPhase](self, "transitionPhase") >= 2 && [layoutCopy isEqual:self->_fromAppLayout] && !-[SBAppLayout containsAnyItemFromAppLayout:](self->_toAppLayout, "containsAnyItemFromAppLayout:", self->_fromAppLayout))
    {
      v21 = [layoutCopy itemForLayoutRole:role];
      [(SBSwitcherModifier *)self frameForContinuousExposePeekingDisplayItem:v21 inAppLayout:self->_fromAppLayout bounds:x defaultFrameForLayoutRole:y, width, height, v13, v15, v17, v19];
      v23 = v22;
      v15 = v24;
      v17 = v25;
      v19 = v26;
      UIRectGetCenter();
      v28 = v27;
      [(SBContinuousExposePeekTransitionModifier *)self containerViewBounds];
      UIRectGetCenter();
      v30 = v29;
      windowingConfiguration = [(SBSwitcherModifier *)self windowingConfiguration];
      [windowingConfiguration screenEdgePadding];
      v33 = v32;

      v34 = -2.0;
      if (v28 >= v30)
      {
        v34 = 2.0;
      }

      v13 = v23 + v33 * v34 * 2.0;
    }

    else if (self->_direction == 1 && [(SBTransitionSwitcherModifier *)self transitionPhase]>= 2 && self->_toFullScreenContinuousExposeModifier && [(SBAppLayout *)self->_toAppLayout containsAnyItemFromAppLayout:layoutCopy]&& [(SBAppLayout *)self->_fromAppLayout containsAnyItemFromAppLayout:layoutCopy])
    {
      v47 = 0;
      v48 = &v47;
      v49 = 0x4010000000;
      v50 = &unk_21F9DA6A3;
      toFullScreenContinuousExposeModifier = self->_toFullScreenContinuousExposeModifier;
      v51 = 0u;
      v52 = 0u;
      v39[0] = MEMORY[0x277D85DD0];
      v39[1] = 3221225472;
      v39[2] = __86__SBContinuousExposePeekTransitionModifier_frameForLayoutRole_inAppLayout_withBounds___block_invoke;
      v39[3] = &unk_2783AA640;
      v41 = &v47;
      roleCopy = role;
      v39[4] = self;
      v40 = layoutCopy;
      v43 = x;
      v44 = y;
      v45 = width;
      v46 = height;
      [(SBChainableModifier *)self performTransactionWithTemporaryChildModifier:toFullScreenContinuousExposeModifier usingBlock:v39];
      v13 = v48[4];
      v15 = v48[5];
      v17 = v48[6];
      v19 = v48[7];

      _Block_object_dispose(&v47, 8);
    }
  }

  v35 = v13;
  v36 = v15;
  v37 = v17;
  v38 = v19;
  result.size.height = v38;
  result.size.width = v37;
  result.origin.y = v36;
  result.origin.x = v35;
  return result;
}

uint64_t __86__SBContinuousExposePeekTransitionModifier_frameForLayoutRole_inAppLayout_withBounds___block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 32) + 176) frameForLayoutRole:*(a1 + 56) inAppLayout:*(a1 + 40) withBounds:{*(a1 + 64), *(a1 + 72), *(a1 + 80), *(a1 + 88)}];
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
  if (self->_direction == 1 && [(SBTransitionSwitcherModifier *)self transitionPhase]>= 2 && self->_toFullScreenContinuousExposeModifier && [(SBAppLayout *)self->_toAppLayout containsAnyItemFromAppLayout:layoutCopy]&& [(SBAppLayout *)self->_fromAppLayout containsAnyItemFromAppLayout:layoutCopy])
  {
    v16 = 0;
    v17 = &v16;
    v18 = 0x2020000000;
    toFullScreenContinuousExposeModifier = self->_toFullScreenContinuousExposeModifier;
    v19 = 0;
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __75__SBContinuousExposePeekTransitionModifier_scaleForLayoutRole_inAppLayout___block_invoke;
    v12[3] = &unk_2783AA668;
    v14 = &v16;
    roleCopy = role;
    v12[4] = self;
    v13 = layoutCopy;
    [(SBChainableModifier *)self performTransactionWithTemporaryChildModifier:toFullScreenContinuousExposeModifier usingBlock:v12];
    v8 = v17[3];

    _Block_object_dispose(&v16, 8);
  }

  else
  {
    v11.receiver = self;
    v11.super_class = SBContinuousExposePeekTransitionModifier;
    [(SBContinuousExposePeekTransitionModifier *)&v11 scaleForLayoutRole:role inAppLayout:layoutCopy];
    v8 = v9;
  }

  return v8;
}

uint64_t __75__SBContinuousExposePeekTransitionModifier_scaleForLayoutRole_inAppLayout___block_invoke(void *a1)
{
  result = [*(a1[4] + 176) scaleForLayoutRole:a1[7] inAppLayout:a1[5]];
  *(*(a1[6] + 8) + 24) = v3;
  return result;
}

- (id)topMostLayoutElements
{
  v9.receiver = self;
  v9.super_class = SBContinuousExposePeekTransitionModifier;
  topMostLayoutElements = [(SBContinuousExposePeekTransitionModifier *)&v9 topMostLayoutElements];
  if (self->_direction == 1 && self->_toAppLayout && ![(SBAppLayout *)self->_fromAppLayout containsAllItemsFromAppLayout:?])
  {
    toAppLayout = self->_toAppLayout;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __65__SBContinuousExposePeekTransitionModifier_topMostLayoutElements__block_invoke;
    v8[3] = &unk_2783A8C90;
    v8[4] = self;
    v5 = [(SBAppLayout *)toAppLayout appLayoutWithItemsPassingTest:v8];
    if (v5)
    {
      v6 = [topMostLayoutElements sb_arrayByInsertingOrMovingObject:v5 toIndex:0];

      topMostLayoutElements = v6;
    }
  }

  return topMostLayoutElements;
}

- (BOOL)isLayoutRoleMatchMovedToScene:(int64_t)scene inAppLayout:(id)layout
{
  layoutCopy = layout;
  if ([(SBAppLayout *)self->_toAppLayout containsAnyItemFromAppLayout:self->_fromAppLayout]&& ([(SBAppLayout *)self->_toAppLayout containsAnyItemFromAppLayout:layoutCopy]|| [(SBAppLayout *)self->_fromAppLayout containsAnyItemFromAppLayout:layoutCopy]))
  {
    v7 = 1;
  }

  else
  {
    v9.receiver = self;
    v9.super_class = SBContinuousExposePeekTransitionModifier;
    v7 = [(SBContinuousExposePeekTransitionModifier *)&v9 isLayoutRoleMatchMovedToScene:scene inAppLayout:layoutCopy];
  }

  return v7;
}

- (double)blurDelayForLayoutRole:(int64_t)role inAppLayout:(id)layout
{
  layoutCopy = layout;
  if ([(SBAppLayout *)self->_toAppLayout containsAnyItemFromAppLayout:self->_fromAppLayout]&& ([(SBAppLayout *)self->_toAppLayout containsAnyItemFromAppLayout:layoutCopy]|| [(SBAppLayout *)self->_fromAppLayout containsAnyItemFromAppLayout:layoutCopy]))
  {
    switcherSettings = [(SBContinuousExposePeekTransitionModifier *)self switcherSettings];
    animationSettings = [switcherSettings animationSettings];
    [animationSettings resizeBlurDelay];
    v10 = v9;
  }

  else
  {
    v13.receiver = self;
    v13.super_class = SBContinuousExposePeekTransitionModifier;
    [(SBContinuousExposePeekTransitionModifier *)&v13 blurDelayForLayoutRole:role inAppLayout:layoutCopy];
    v10 = v11;
  }

  return v10;
}

- (id)animationAttributesForLayoutElement:(id)element
{
  v4 = objc_alloc_init(SBMutableSwitcherAnimationAttributes);
  [(SBSwitcherAnimationAttributes *)v4 setUpdateMode:3];
  switcherSettings = [(SBContinuousExposePeekTransitionModifier *)self switcherSettings];
  windowingSettings = [switcherSettings windowingSettings];
  appToAppLayoutSettings = [windowingSettings appToAppLayoutSettings];
  [(SBSwitcherAnimationAttributes *)v4 setLayoutSettings:appToAppLayoutSettings];

  return v4;
}

- (void)initWithTransitionID:(uint64_t)a1 fromAppLayout:(uint64_t)a2 toAppLayout:direction:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBContinuousExposePeekTransitionModifier.m" lineNumber:25 description:{@"Invalid parameter not satisfying: %@", @"fromAppLayout"}];
}

@end