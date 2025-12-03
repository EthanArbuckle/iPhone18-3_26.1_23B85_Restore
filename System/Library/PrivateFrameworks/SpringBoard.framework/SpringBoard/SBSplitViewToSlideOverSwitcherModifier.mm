@interface SBSplitViewToSlideOverSwitcherModifier
- (BOOL)isLayoutRoleBlurred:(int64_t)blurred inAppLayout:(id)layout;
- (BOOL)isLayoutRoleMatchMovedToScene:(int64_t)scene inAppLayout:(id)layout;
- (CGRect)frameForIndex:(unint64_t)index;
- (CGRect)frameForLayoutRole:(int64_t)role inAppLayout:(id)layout withBounds:(CGRect)bounds;
- (SBSplitViewToSlideOverSwitcherModifier)initWithTransitionID:(id)d transitioningLayoutRole:(int64_t)role splitViewAppLayout:(id)layout slideOverAppLayout:(id)appLayout direction:(unint64_t)direction;
- (double)blurDelayForLayoutRole:(int64_t)role inAppLayout:(id)layout;
- (id)animationAttributesForLayoutElement:(id)element;
- (id)handleSceneReadyEvent:(id)event;
- (id)topMostLayoutRolesForAppLayout:(id)layout;
- (id)transitionWillBegin;
- (id)visibleAppLayouts;
@end

@implementation SBSplitViewToSlideOverSwitcherModifier

- (SBSplitViewToSlideOverSwitcherModifier)initWithTransitionID:(id)d transitioningLayoutRole:(int64_t)role splitViewAppLayout:(id)layout slideOverAppLayout:(id)appLayout direction:(unint64_t)direction
{
  layoutCopy = layout;
  appLayoutCopy = appLayout;
  v28.receiver = self;
  v28.super_class = SBSplitViewToSlideOverSwitcherModifier;
  v15 = [(SBTransitionSwitcherModifier *)&v28 initWithTransitionID:d];
  if (!v15)
  {
    goto LABEL_11;
  }

  if (!layoutCopy)
  {
    [SBSplitViewToSlideOverSwitcherModifier initWithTransitionID:transitioningLayoutRole:splitViewAppLayout:slideOverAppLayout:direction:];
    if (appLayoutCopy)
    {
      goto LABEL_4;
    }

LABEL_13:
    [SBSplitViewToSlideOverSwitcherModifier initWithTransitionID:transitioningLayoutRole:splitViewAppLayout:slideOverAppLayout:direction:];
    goto LABEL_4;
  }

  if (!appLayoutCopy)
  {
    goto LABEL_13;
  }

LABEL_4:
  v15->_transitioningLayoutRole = role;
  objc_storeStrong(&v15->_splitViewAppLayout, layout);
  objc_storeStrong(&v15->_slideOverAppLayout, appLayout);
  v15->_direction = direction;
  splitViewAppLayout = v15->_splitViewAppLayout;
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __135__SBSplitViewToSlideOverSwitcherModifier_initWithTransitionID_transitioningLayoutRole_splitViewAppLayout_slideOverAppLayout_direction___block_invoke;
  v26[3] = &unk_2783A8C90;
  v17 = appLayoutCopy;
  v27 = v17;
  v18 = [(SBAppLayout *)splitViewAppLayout appLayoutWithItemsPassingTest:v26];
  fullScreenAppLayout = v15->_fullScreenAppLayout;
  v15->_fullScreenAppLayout = v18;

  if (!v15->_fullScreenAppLayout)
  {
    [SBSplitViewToSlideOverSwitcherModifier initWithTransitionID:transitioningLayoutRole:splitViewAppLayout:slideOverAppLayout:direction:];
  }

  if (!v15->_direction)
  {
    v20 = v15->_splitViewAppLayout;
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __135__SBSplitViewToSlideOverSwitcherModifier_initWithTransitionID_transitioningLayoutRole_splitViewAppLayout_slideOverAppLayout_direction___block_invoke_2;
    v24[3] = &unk_2783A8C90;
    v25 = v17;
    v21 = [(SBAppLayout *)v20 appLayoutWithItemsPassingTest:v24];
    fromMainAppLayoutGoingIntoSlideOver = v15->_fromMainAppLayoutGoingIntoSlideOver;
    v15->_fromMainAppLayoutGoingIntoSlideOver = v21;

    if (!v15->_fromMainAppLayoutGoingIntoSlideOver)
    {
      [SBSplitViewToSlideOverSwitcherModifier initWithTransitionID:transitioningLayoutRole:splitViewAppLayout:slideOverAppLayout:direction:];
    }
  }

LABEL_11:
  return v15;
}

- (id)handleSceneReadyEvent:(id)event
{
  v7.receiver = self;
  v7.super_class = SBSplitViewToSlideOverSwitcherModifier;
  v3 = [(SBSwitcherModifier *)&v7 handleSceneReadyEvent:event];
  v4 = [[SBUpdateLayoutSwitcherEventResponse alloc] initWithOptions:12 updateMode:3];
  v5 = SBAppendSwitcherModifierResponse(v4, v3);

  return v5;
}

- (id)transitionWillBegin
{
  v6.receiver = self;
  v6.super_class = SBSplitViewToSlideOverSwitcherModifier;
  transitionWillBegin = [(SBTransitionSwitcherModifier *)&v6 transitionWillBegin];
  v3 = [[SBUpdateLayoutSwitcherEventResponse alloc] initWithOptions:2 updateMode:2];
  v4 = SBAppendSwitcherModifierResponse(v3, transitionWillBegin);

  return v4;
}

- (id)visibleAppLayouts
{
  v12.receiver = self;
  v12.super_class = SBSplitViewToSlideOverSwitcherModifier;
  visibleAppLayouts = [(SBSplitViewToSlideOverSwitcherModifier *)&v12 visibleAppLayouts];
  v4 = [visibleAppLayouts mutableCopy];

  if (self->_direction)
  {
    [v4 addObject:self->_splitViewAppLayout];
    v5 = &v9;
    v9 = MEMORY[0x277D85DD0];
    v10 = 3221225472;
    v6 = __59__SBSplitViewToSlideOverSwitcherModifier_visibleAppLayouts__block_invoke_2;
  }

  else
  {
    [v4 addObject:self->_slideOverAppLayout];
    v5 = v11;
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v6 = __59__SBSplitViewToSlideOverSwitcherModifier_visibleAppLayouts__block_invoke;
  }

  v5[2] = v6;
  v5[3] = &unk_2783A8CB8;
  v5[4] = self;
  v7 = [v4 bs_firstObjectPassingTest:{v9, v10}];
  if (v7)
  {
    [v4 removeObject:v7];
  }

  return v4;
}

- (CGRect)frameForIndex:(unint64_t)index
{
  v25.receiver = self;
  v25.super_class = SBSplitViewToSlideOverSwitcherModifier;
  [(SBSplitViewToSlideOverSwitcherModifier *)&v25 frameForIndex:?];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  if ([(SBTransitionSwitcherModifier *)self transitionPhase]== 1)
  {
    appLayouts = [(SBSplitViewToSlideOverSwitcherModifier *)self appLayouts];
    v14 = [appLayouts objectAtIndex:index];

    if (!self->_direction)
    {
      if ([v14 isEqual:self->_slideOverAppLayout])
      {
        transitioningLayoutRole = self->_transitioningLayoutRole;
LABEL_9:
        splitViewAppLayout = self->_splitViewAppLayout;
        [(SBSplitViewToSlideOverSwitcherModifier *)self containerViewBounds];
        [(SBSplitViewToSlideOverSwitcherModifier *)self frameForLayoutRole:transitioningLayoutRole inAppLayout:splitViewAppLayout withBounds:?];
        v6 = v17;
        v8 = v18;
        v10 = v19;
        v12 = v20;
        goto LABEL_10;
      }

      if ([v14 isEqual:self->_fullScreenAppLayout])
      {
        if (self->_transitioningLayoutRole == 1)
        {
          transitioningLayoutRole = 2;
        }

        else
        {
          transitioningLayoutRole = 1;
        }

        goto LABEL_9;
      }
    }

LABEL_10:
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

- (CGRect)frameForLayoutRole:(int64_t)role inAppLayout:(id)layout withBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  layoutCopy = layout;
  v44.receiver = self;
  v44.super_class = SBSplitViewToSlideOverSwitcherModifier;
  [(SBSplitViewToSlideOverSwitcherModifier *)&v44 frameForLayoutRole:role inAppLayout:layoutCopy withBounds:x, y, width, height];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  if ([(SBTransitionSwitcherModifier *)self transitionPhase]== 1)
  {
    if (!self->_direction)
    {
      if ([layoutCopy isEqual:self->_slideOverAppLayout])
      {
        transitioningLayoutRole = self->_transitioningLayoutRole;
        splitViewAppLayout = self->_splitViewAppLayout;
        [(SBSplitViewToSlideOverSwitcherModifier *)self containerViewBounds];
        v43.receiver = self;
        v43.super_class = SBSplitViewToSlideOverSwitcherModifier;
        [(SBSplitViewToSlideOverSwitcherModifier *)&v43 frameForLayoutRole:transitioningLayoutRole inAppLayout:splitViewAppLayout withBounds:v34.receiver, v34.super_class];
      }

      else
      {
        if (![layoutCopy isEqual:self->_fullScreenAppLayout])
        {
          goto LABEL_15;
        }

        if (self->_transitioningLayoutRole == 1)
        {
          v27 = 2;
        }

        else
        {
          v27 = 1;
        }

        v28 = self->_splitViewAppLayout;
        [(SBSplitViewToSlideOverSwitcherModifier *)self containerViewBounds];
        v42.receiver = self;
        v42.super_class = SBSplitViewToSlideOverSwitcherModifier;
        [(SBSplitViewToSlideOverSwitcherModifier *)&v42 frameForLayoutRole:v27 inAppLayout:v28 withBounds:v34.receiver, v34.super_class];
      }

      goto LABEL_14;
    }

    if ([layoutCopy isEqual:self->_splitViewAppLayout])
    {
      if (self->_transitioningLayoutRole == role)
      {
        v36 = 0;
        v37 = &v36;
        v38 = 0x4010000000;
        v39 = &unk_21F9DA6A3;
        v40 = 0u;
        v41 = 0u;
        slideOverAppLayout = self->_slideOverAppLayout;
        v35[0] = MEMORY[0x277D85DD0];
        v35[1] = 3221225472;
        v35[2] = __84__SBSplitViewToSlideOverSwitcherModifier_frameForLayoutRole_inAppLayout_withBounds___block_invoke;
        v35[3] = &unk_2783A8CE0;
        v35[4] = self;
        v35[5] = &v36;
        [(SBSwitcherModifier *)self performWithTemporarilyInsertedAppLayout:slideOverAppLayout atIndex:0 block:v35];
        v13 = v37[4];
        v15 = v37[5];
        v17 = v37[6];
        v19 = v37[7];
        _Block_object_dispose(&v36, 8);
        goto LABEL_15;
      }

      fullScreenAppLayout = self->_fullScreenAppLayout;
      [(SBSplitViewToSlideOverSwitcherModifier *)self containerViewBounds];
      [(SBSplitViewToSlideOverSwitcherModifier *)&v34 frameForLayoutRole:1 inAppLayout:fullScreenAppLayout withBounds:self, SBSplitViewToSlideOverSwitcherModifier];
LABEL_14:
      v13 = v23;
      v15 = v24;
      v17 = v25;
      v19 = v26;
    }
  }

LABEL_15:

  v30 = v13;
  v31 = v15;
  v32 = v17;
  v33 = v19;
  result.size.height = v33;
  result.size.width = v32;
  result.origin.y = v31;
  result.origin.x = v30;
  return result;
}

id __84__SBSplitViewToSlideOverSwitcherModifier_frameForLayoutRole_inAppLayout_withBounds___block_invoke(uint64_t a1)
{
  v8.receiver = *(a1 + 32);
  v8.super_class = SBSplitViewToSlideOverSwitcherModifier;
  result = objc_msgSendSuper2(&v8, sel_frameForIndex_, 0);
  v3 = *(*(a1 + 40) + 8);
  v3[4] = v4;
  v3[5] = v5;
  v3[6] = v6;
  v3[7] = v7;
  return result;
}

- (BOOL)isLayoutRoleBlurred:(int64_t)blurred inAppLayout:(id)layout
{
  layoutCopy = layout;
  if (([layoutCopy isEqual:self->_slideOverAppLayout] & 1) != 0 || (objc_msgSend(layoutCopy, "isEqual:", self->_fullScreenAppLayout) & 1) != 0 || objc_msgSend(layoutCopy, "isEqual:", self->_splitViewAppLayout))
  {
    v7 = [(SBSplitViewToSlideOverSwitcherModifier *)self isLayoutRoleContentReady:blurred inAppLayout:layoutCopy]^ 1;
  }

  else
  {
    LOBYTE(v7) = 0;
  }

  return v7;
}

- (BOOL)isLayoutRoleMatchMovedToScene:(int64_t)scene inAppLayout:(id)layout
{
  layoutCopy = layout;
  if ([layoutCopy isEqual:self->_slideOverAppLayout] & 1) != 0 || (objc_msgSend(layoutCopy, "isEqual:", self->_fullScreenAppLayout))
  {
    v6 = 1;
  }

  else
  {
    v6 = [layoutCopy isEqual:self->_splitViewAppLayout];
  }

  return v6;
}

- (double)blurDelayForLayoutRole:(int64_t)role inAppLayout:(id)layout
{
  v4 = [(SBSplitViewToSlideOverSwitcherModifier *)self switcherSettings:role];
  animationSettings = [v4 animationSettings];
  [animationSettings resizeBlurDelay];
  v7 = v6;

  return v7;
}

- (id)topMostLayoutRolesForAppLayout:(id)layout
{
  layoutCopy = layout;
  v17.receiver = self;
  v17.super_class = SBSplitViewToSlideOverSwitcherModifier;
  v5 = [(SBSplitViewToSlideOverSwitcherModifier *)&v17 topMostLayoutRolesForAppLayout:layoutCopy];
  if (self->_splitViewAppLayout && [layoutCopy isEqual:?])
  {
    v6 = [v5 mutableCopy];
    v7 = [MEMORY[0x277CCABB0] numberWithInteger:1];
    v8 = [v6 containsObject:v7];

    if (v8)
    {
      v9 = [MEMORY[0x277CCABB0] numberWithInteger:1];
      [v6 removeObject:v9];
    }

    v10 = [MEMORY[0x277CCABB0] numberWithInteger:2];
    v11 = [v6 containsObject:v10];

    if (v11)
    {
      v12 = [MEMORY[0x277CCABB0] numberWithInteger:2];
      [v6 removeObject:v12];
    }

    if (self->_transitioningLayoutRole == 1)
    {
      v13 = 2;
    }

    else
    {
      v13 = 1;
    }

    v14 = [MEMORY[0x277CCABB0] numberWithInteger:?];
    [v6 addObject:v14];

    v15 = [MEMORY[0x277CCABB0] numberWithInteger:v13];
    [v6 addObject:v15];
  }

  else
  {
    v6 = v5;
  }

  return v6;
}

- (id)animationAttributesForLayoutElement:(id)element
{
  v10.receiver = self;
  v10.super_class = SBSplitViewToSlideOverSwitcherModifier;
  v4 = [(SBTransitionSwitcherModifier *)&v10 animationAttributesForLayoutElement:element];
  v5 = [v4 mutableCopy];

  switcherSettings = [(SBSplitViewToSlideOverSwitcherModifier *)self switcherSettings];
  animationSettings = [switcherSettings animationSettings];

  splitViewToSlideOverSettings = [animationSettings splitViewToSlideOverSettings];
  [v5 setLayoutSettings:splitViewToSlideOverSettings];

  return v5;
}

- (void)initWithTransitionID:transitioningLayoutRole:splitViewAppLayout:slideOverAppLayout:direction:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v0 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v1 handleFailureInMethod:@"splitViewAppLayout" object:? file:? lineNumber:? description:?];
}

- (void)initWithTransitionID:transitioningLayoutRole:splitViewAppLayout:slideOverAppLayout:direction:.cold.2()
{
  OUTLINED_FUNCTION_1_2();
  v0 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v1 handleFailureInMethod:@"slideOverAppLayout" object:? file:? lineNumber:? description:?];
}

- (void)initWithTransitionID:transitioningLayoutRole:splitViewAppLayout:slideOverAppLayout:direction:.cold.3()
{
  OUTLINED_FUNCTION_1_2();
  v0 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v1 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)initWithTransitionID:transitioningLayoutRole:splitViewAppLayout:slideOverAppLayout:direction:.cold.4()
{
  OUTLINED_FUNCTION_1_2();
  v0 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v1 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

@end