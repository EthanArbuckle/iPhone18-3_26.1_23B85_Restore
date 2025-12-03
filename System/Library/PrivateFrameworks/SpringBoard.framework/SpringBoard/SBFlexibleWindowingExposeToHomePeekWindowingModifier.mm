@interface SBFlexibleWindowingExposeToHomePeekWindowingModifier
- (BOOL)shouldInterruptForActivity:(id)activity;
- (BOOL)shouldUseAnchorPointToPinLayoutRolesToSpace:(unint64_t)space;
- (CGRect)frameForLayoutRole:(int64_t)role inAppLayout:(id)layout withBounds:(CGRect)bounds;
- (SBFlexibleWindowingExposeToHomePeekWindowingModifier)initWithTransitionID:(id)d direction:(int64_t)direction exposeModifier:(id)modifier;
- (SBWindowingItemCorners)cornersForItem:(SEL)item;
- (SBWindowingItemFrame)frameForItem:(SEL)item;
- (SBWindowingItemTitleStyle)titleStyleForItem:(SEL)item;
- (double)opacityForItem:(id)item;
- (double)scaleForLayoutRole:(int64_t)role inAppLayout:(id)layout;
- (id)animationAttributesForItem:(id)item;
- (id)visibleItems;
- (void)transitionWillBegin:(id)begin;
@end

@implementation SBFlexibleWindowingExposeToHomePeekWindowingModifier

- (SBFlexibleWindowingExposeToHomePeekWindowingModifier)initWithTransitionID:(id)d direction:(int64_t)direction exposeModifier:(id)modifier
{
  dCopy = d;
  modifierCopy = modifier;
  v20.receiver = self;
  v20.super_class = SBFlexibleWindowingExposeToHomePeekWindowingModifier;
  v12 = [(SBWindowingModifier *)&v20 init];
  if (v12)
  {
    if (!modifierCopy)
    {
      [SBFlexibleWindowingExposeToHomePeekWindowingModifier initWithTransitionID:a2 direction:v12 exposeModifier:?];
    }

    objc_storeStrong(&v12->_exposeModifier, modifier);
    objc_storeStrong(&v12->_transitionID, d);
    v12->_direction = direction;
    exposeModifier = v12->_exposeModifier;
    v14 = objc_opt_class();
    v15 = exposeModifier;
    if (v14)
    {
      if (objc_opt_isKindOfClass())
      {
        v16 = v15;
      }

      else
      {
        v16 = 0;
      }
    }

    else
    {
      v16 = 0;
    }

    v17 = v16;

    [(SBWindowingModifierBase *)v17 setStaticTemporaryChildModifier:1];
    v18 = [(SBHomeToSwitcherSwitcherModifier *)[SBHomeToGridSwitcherModifier alloc] initWithTransitionID:dCopy direction:direction != 0 multitaskingModifier:v12->_exposeModifier];

    [(SBChainableModifier *)v12 addChildModifier:v18];
  }

  return v12;
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

- (void)transitionWillBegin:(id)begin
{
  beginCopy = begin;
  if (self->_direction)
  {
    [(SBWindowingModifier *)self transitioningFromAppLayout];
  }

  else
  {
    [(SBWindowingModifier *)self transitioningToAppLayout];
  }
  v4 = ;
  if (self->_direction)
  {
    fromPeekConfiguration = [beginCopy fromPeekConfiguration];
  }

  else
  {
    fromPeekConfiguration = [beginCopy toPeekConfiguration];
  }

  v6 = [[SBHomePeekWindowingModifier alloc] initWithPeekingAppLayout:v4 configuration:fromPeekConfiguration];
  homePeekModifier = self->_homePeekModifier;
  self->_homePeekModifier = v6;

  transitionID = [beginCopy transitionID];
  transitionID = self->_transitionID;
  self->_transitionID = transitionID;
}

- (BOOL)shouldUseAnchorPointToPinLayoutRolesToSpace:(unint64_t)space
{
  appLayout = [(SBFlexibleWindowingExposeToHomePeekWindowingModifier *)self appLayout];
  appLayouts = [(SBFlexibleWindowingExposeToHomePeekWindowingModifier *)self appLayouts];
  v7 = [appLayouts objectAtIndex:space];
  v8 = [appLayout isOrContainsAppLayout:v7];

  if (v8)
  {
    return 0;
  }

  v10.receiver = self;
  v10.super_class = SBFlexibleWindowingExposeToHomePeekWindowingModifier;
  return [(SBFlexibleWindowingExposeToHomePeekWindowingModifier *)&v10 shouldUseAnchorPointToPinLayoutRolesToSpace:space];
}

- (SBWindowingItemTitleStyle)titleStyleForItem:(SEL)item
{
  v6 = a4;
  v15 = 0;
  v16 = &v15;
  v17 = 0x4810000000;
  v18 = &unk_21F9DA6A3;
  v19 = 0u;
  v20 = 0u;
  v21 = 0;
  homePeekModifier = self->_homePeekModifier;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __74__SBFlexibleWindowingExposeToHomePeekWindowingModifier_titleStyleForItem___block_invoke;
  v12[3] = &unk_2783AB258;
  v14 = &v15;
  v12[4] = self;
  v8 = v6;
  v13 = v8;
  [(SBChainableModifier *)self performTransactionWithTemporaryChildModifier:homePeekModifier usingBlock:v12];
  v9 = v16;
  v10 = *(v16 + 3);
  *&retstr->titleAndIconOpacity = *(v16 + 2);
  *&retstr->iconOpacity = v10;
  retstr->footerViewIconAlignment = v9[8];

  _Block_object_dispose(&v15, 8);
  return result;
}

double __74__SBFlexibleWindowingExposeToHomePeekWindowingModifier_titleStyleForItem___block_invoke(void *a1)
{
  [*(a1[4] + 184) titleStyleForItem:a1[5]];
  v2 = *(a1[6] + 8);
  result = *&v4;
  *(v2 + 32) = v4;
  *(v2 + 48) = v5;
  *(v2 + 64) = v6;
  return result;
}

- (id)visibleItems
{
  v7.receiver = self;
  v7.super_class = SBFlexibleWindowingExposeToHomePeekWindowingModifier;
  visibleItems = [(SBWindowingModifier *)&v7 visibleItems];
  transitioningToAppLayout = [(SBWindowingModifier *)self transitioningToAppLayout];
  v5 = [visibleItems setByAddingObject:transitioningToAppLayout];

  return v5;
}

- (double)opacityForItem:(id)item
{
  itemCopy = item;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  homePeekModifier = self->_homePeekModifier;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __71__SBFlexibleWindowingExposeToHomePeekWindowingModifier_opacityForItem___block_invoke;
  v9[3] = &unk_2783AB258;
  v11 = &v12;
  v9[4] = self;
  v6 = itemCopy;
  v10 = v6;
  [(SBChainableModifier *)self performTransactionWithTemporaryChildModifier:homePeekModifier usingBlock:v9];
  v7 = v13[3];

  _Block_object_dispose(&v12, 8);
  return v7;
}

uint64_t __71__SBFlexibleWindowingExposeToHomePeekWindowingModifier_opacityForItem___block_invoke(void *a1)
{
  result = [*(a1[4] + 184) opacityForItem:a1[5]];
  *(*(a1[6] + 8) + 24) = v3;
  return result;
}

- (SBWindowingItemFrame)frameForItem:(SEL)item
{
  v6 = a4;
  if ([v6 isAppLayout] && (-[SBFlexibleWindowingExposeToHomePeekWindowingModifier appLayout](self, "appLayout"), v7 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "appLayout"), v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v7, "isOrContainsAppLayout:", v8), v8, v7, v9))
  {
    [(SBFlexibleWindowingExposeToHomePeekWindowingModifier *)self containerViewBounds];
    SBWindowingItemFrameMakeWithBounds(retstr, v10, v11, v12, v13);
  }

  else
  {
    v15.receiver = self;
    v15.super_class = SBFlexibleWindowingExposeToHomePeekWindowingModifier;
    [(SBWindowingItemFrame *)&v15 frameForItem:v6];
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
  v30 = 0;
  v31 = &v30;
  v32 = 0x4010000000;
  v33 = &unk_21F9DA6A3;
  homePeekModifier = self->_homePeekModifier;
  v34 = 0u;
  v35 = 0u;
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __98__SBFlexibleWindowingExposeToHomePeekWindowingModifier_frameForLayoutRole_inAppLayout_withBounds___block_invoke;
  v22[3] = &unk_2783AA640;
  v24 = &v30;
  roleCopy = role;
  v22[4] = self;
  v13 = layoutCopy;
  v23 = v13;
  v26 = x;
  v27 = y;
  v28 = width;
  v29 = height;
  [(SBChainableModifier *)self performTransactionWithTemporaryChildModifier:homePeekModifier usingBlock:v22];
  v14 = v31[4];
  v15 = v31[5];
  v16 = v31[6];
  v17 = v31[7];

  _Block_object_dispose(&v30, 8);
  v18 = v14;
  v19 = v15;
  v20 = v16;
  v21 = v17;
  result.size.height = v21;
  result.size.width = v20;
  result.origin.y = v19;
  result.origin.x = v18;
  return result;
}

uint64_t __98__SBFlexibleWindowingExposeToHomePeekWindowingModifier_frameForLayoutRole_inAppLayout_withBounds___block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 32) + 184) frameForLayoutRole:*(a1 + 56) inAppLayout:*(a1 + 40) withBounds:{*(a1 + 64), *(a1 + 72), *(a1 + 80), *(a1 + 88)}];
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
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  homePeekModifier = self->_homePeekModifier;
  v18 = 0;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __87__SBFlexibleWindowingExposeToHomePeekWindowingModifier_scaleForLayoutRole_inAppLayout___block_invoke;
  v11[3] = &unk_2783AA668;
  v13 = &v15;
  roleCopy = role;
  v11[4] = self;
  v8 = layoutCopy;
  v12 = v8;
  [(SBChainableModifier *)self performTransactionWithTemporaryChildModifier:homePeekModifier usingBlock:v11];
  v9 = v16[3];

  _Block_object_dispose(&v15, 8);
  return v9;
}

uint64_t __87__SBFlexibleWindowingExposeToHomePeekWindowingModifier_scaleForLayoutRole_inAppLayout___block_invoke(void *a1)
{
  result = [*(a1[4] + 184) scaleForLayoutRole:a1[7] inAppLayout:a1[5]];
  *(*(a1[6] + 8) + 24) = v3;
  return result;
}

- (SBWindowingItemCorners)cornersForItem:(SEL)item
{
  v6 = a4;
  v15 = 0;
  v16 = &v15;
  v17 = 0x4810000000;
  v18 = &unk_21F9DA6A3;
  v19 = 0u;
  v20 = 0u;
  v21 = 0;
  homePeekModifier = self->_homePeekModifier;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __71__SBFlexibleWindowingExposeToHomePeekWindowingModifier_cornersForItem___block_invoke;
  v12[3] = &unk_2783AB258;
  v14 = &v15;
  v12[4] = self;
  v8 = v6;
  v13 = v8;
  [(SBChainableModifier *)self performTransactionWithTemporaryChildModifier:homePeekModifier usingBlock:v12];
  v9 = v16;
  v10 = *(v16 + 3);
  *&retstr->cornerRadii.topLeft = *(v16 + 2);
  *&retstr->cornerRadii.bottomRight = v10;
  retstr->cornerMask = v9[8];

  _Block_object_dispose(&v15, 8);
  return result;
}

double __71__SBFlexibleWindowingExposeToHomePeekWindowingModifier_cornersForItem___block_invoke(void *a1)
{
  [*(a1[4] + 184) cornersForItem:a1[5]];
  v2 = *(a1[6] + 8);
  result = *&v4;
  *(v2 + 32) = v4;
  *(v2 + 48) = v5;
  *(v2 + 64) = v6;
  return result;
}

- (id)animationAttributesForItem:(id)item
{
  itemCopy = item;
  if ([itemCopy isAppLayout] && (-[SBFlexibleWindowingExposeToHomePeekWindowingModifier appLayout](self, "appLayout"), v5 = objc_claimAutoreleasedReturnValue(), objc_msgSend(itemCopy, "appLayout"), v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v5, "isOrContainsAppLayout:", v6), v6, v5, v7))
  {
    v8 = objc_alloc_init(SBMutableSwitcherAnimationAttributes);
    [(SBSwitcherAnimationAttributes *)v8 setUpdateMode:3];
    switcherSettings = [(SBFlexibleWindowingExposeToHomePeekWindowingModifier *)self switcherSettings];
    windowingSettings = [switcherSettings windowingSettings];
    appToPeekLayoutSettings = [windowingSettings appToPeekLayoutSettings];
    [(SBSwitcherAnimationAttributes *)v8 setLayoutSettings:appToPeekLayoutSettings];
  }

  else
  {
    v13.receiver = self;
    v13.super_class = SBFlexibleWindowingExposeToHomePeekWindowingModifier;
    v8 = [(SBWindowingModifier *)&v13 animationAttributesForItem:itemCopy];
  }

  return v8;
}

- (void)initWithTransitionID:(uint64_t)a1 direction:(uint64_t)a2 exposeModifier:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBFlexibleWindowingExposeToHomePeekWindowingModifier.m" lineNumber:25 description:{@"Invalid parameter not satisfying: %@", @"exposeModifier"}];
}

@end