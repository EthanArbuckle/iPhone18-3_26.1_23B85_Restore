@interface SBWindowDeclineSwitcherModifier
- (CGPoint)anchorPointForIndex:(unint64_t)index;
- (CGPoint)perspectiveAngleForIndex:(unint64_t)index;
- (CGRect)frameForIndex:(unint64_t)index;
- (CGRect)frameForLayoutRole:(int64_t)role inAppLayout:(id)layout withBounds:(CGRect)bounds;
- (SBSwitcherWallpaperGradientAttributes)wallpaperGradientAttributesForLayoutRole:(int64_t)role inAppLayout:(id)layout;
- (SBWindowDeclineSwitcherModifier)initWithTransitionID:(id)d fromAppLayout:(id)layout layoutRole:(int64_t)role;
- (UIRectCornerRadii)cornerRadiiForIndex:(unint64_t)index;
- (double)dimmingAlphaForLayoutRole:(int64_t)role inAppLayout:(id)layout;
- (double)opacityForLayoutRole:(int64_t)role inAppLayout:(id)layout atIndex:(unint64_t)index;
- (double)scaleForIndex:(unint64_t)index;
- (double)titleAndIconOpacityForIndex:(unint64_t)index;
- (id)adjustedContinuousExposeIdentifiersInStripFromPreviousIdentifiersInStrip:(id)strip;
- (id)animationAttributesForLayoutElement:(id)element;
- (id)appLayoutContainingAppLayout:(id)layout;
- (id)appLayoutsToEnsureExistForMainTransitionEvent:(id)event;
- (id)topMostLayoutElements;
- (id)transitionWillBegin;
- (id)visibleAppLayouts;
@end

@implementation SBWindowDeclineSwitcherModifier

- (SBWindowDeclineSwitcherModifier)initWithTransitionID:(id)d fromAppLayout:(id)layout layoutRole:(int64_t)role
{
  layoutCopy = layout;
  v20.receiver = self;
  v20.super_class = SBWindowDeclineSwitcherModifier;
  v10 = [(SBTransitionSwitcherModifier *)&v20 initWithTransitionID:d];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_fromAppLayout, layout);
    v11->_layoutRole = role;
    v12 = [layoutCopy leafAppLayoutForRole:role];
    centerWindowAppLayout = v11->_centerWindowAppLayout;
    v11->_centerWindowAppLayout = v12;

    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __81__SBWindowDeclineSwitcherModifier_initWithTransitionID_fromAppLayout_layoutRole___block_invoke;
    v18[3] = &unk_2783A8C90;
    v14 = v11;
    v19 = v14;
    v15 = [layoutCopy appLayoutWithItemsPassingTest:v18];
    fullScreenAppLayout = v14->_fullScreenAppLayout;
    v14->_fullScreenAppLayout = v15;
  }

  return v11;
}

uint64_t __81__SBWindowDeclineSwitcherModifier_initWithTransitionID_fromAppLayout_layoutRole___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(*(a1 + 32) + 184);
  v3 = a2;
  v4 = [v2 itemForLayoutRole:1];
  v5 = [(SBDisplayItem *)v3 isEqualToItem:v4];

  return v5 ^ 1u;
}

- (id)transitionWillBegin
{
  v16.receiver = self;
  v16.super_class = SBWindowDeclineSwitcherModifier;
  transitionWillBegin = [(SBTransitionSwitcherModifier *)&v16 transitionWillBegin];
  v4 = objc_alloc_init(SBInvalidateAdjustedAppLayoutsSwitcherEventResponse);
  v5 = SBAppendSwitcherModifierResponse(v4, transitionWillBegin);

  v6 = [[SBUpdateLayoutSwitcherEventResponse alloc] initWithOptions:2 updateMode:2];
  v7 = SBAppendSwitcherModifierResponse(v6, v5);

  appLayouts = [(SBWindowDeclineSwitcherModifier *)self appLayouts];
  v9 = [appLayouts mutableCopy];

  if (!self->_fullScreenAppLayout)
  {
    v11 = [v9 indexOfObject:self->_centerWindowAppLayout];
    if (v11 == 0x7FFFFFFFFFFFFFFFLL)
    {
      [v9 insertObject:self->_centerWindowAppLayout atIndex:0];
      v12 = 0;
LABEL_9:
      v13 = [[SBOverrideAppLayoutsSwitcherModifier alloc] initWithAppLayouts:v9];
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __54__SBWindowDeclineSwitcherModifier_transitionWillBegin__block_invoke;
      v15[3] = &unk_2783A8BC8;
      v15[4] = self;
      v15[5] = v12;
      [(SBChainableModifier *)self performTransactionWithTemporaryChildModifier:v13 usingBlock:v15];

      goto LABEL_10;
    }

LABEL_7:
    v12 = v11;
    goto LABEL_9;
  }

  v10 = [v9 indexOfObject:?];
  if (v10 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v12 = v10;
    [v9 replaceObjectAtIndex:v10 withObject:self->_fromAppLayout];
    goto LABEL_9;
  }

  v11 = [v9 indexOfObject:self->_fromAppLayout];
  if (v11 != 0x7FFFFFFFFFFFFFFFLL)
  {
    goto LABEL_7;
  }

LABEL_10:

  return v7;
}

id __54__SBWindowDeclineSwitcherModifier_transitionWillBegin__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = (*(a1 + 32) + 200);
  v17.receiver = *(a1 + 32);
  v17.super_class = SBWindowDeclineSwitcherModifier;
  objc_msgSendSuper2(&v17, sel_frameForIndex_, v2);
  *v3 = v4;
  v3[1] = v5;
  v3[2] = v6;
  v3[3] = v7;
  v9 = *(a1 + 32);
  v8 = *(a1 + 40);
  v10 = v9 + 29;
  v16.receiver = v9;
  v16.super_class = SBWindowDeclineSwitcherModifier;
  result = objc_msgSendSuper2(&v16, sel_cornerRadiiForIndex_, v8);
  *v10 = v12;
  v10[1] = v13;
  v10[2] = v14;
  v10[3] = v15;
  return result;
}

- (id)appLayoutContainingAppLayout:(id)layout
{
  layoutCopy = layout;
  windowManagementContext = [(SBWindowDeclineSwitcherModifier *)self windowManagementContext];
  if (![windowManagementContext isChamoisOrFlexibleWindowing])
  {

    goto LABEL_8;
  }

  v6 = [layoutCopy isEqual:self->_centerWindowAppLayout];

  if (!v6)
  {
LABEL_8:
    v11.receiver = self;
    v11.super_class = SBWindowDeclineSwitcherModifier;
    v8 = [(SBWindowDeclineSwitcherModifier *)&v11 appLayoutContainingAppLayout:layoutCopy];
    goto LABEL_9;
  }

  if ([(SBTransitionSwitcherModifier *)self transitionPhase]< 2 || (p_fromAppLayout = &self->_fullScreenAppLayout, ![(SBAppLayout *)self->_fullScreenAppLayout containsAnyItemFromAppLayout:self->_centerWindowAppLayout]))
  {
    p_fromAppLayout = &self->_fromAppLayout;
  }

  v8 = *p_fromAppLayout;
LABEL_9:
  v9 = v8;

  return v9;
}

- (id)adjustedContinuousExposeIdentifiersInStripFromPreviousIdentifiersInStrip:(id)strip
{
  stripCopy = strip;
  windowManagementContext = [(SBWindowDeclineSwitcherModifier *)self windowManagementContext];
  if (![windowManagementContext isAutomaticStageCreationEnabled] || -[SBTransitionSwitcherModifier transitionPhase](self, "transitionPhase") < 2 || self->_fullScreenAppLayout)
  {

LABEL_5:
    v12.receiver = self;
    v12.super_class = SBWindowDeclineSwitcherModifier;
    v6 = [(SBWindowDeclineSwitcherModifier *)&v12 adjustedContinuousExposeIdentifiersInStripFromPreviousIdentifiersInStrip:stripCopy];
    goto LABEL_6;
  }

  appLayoutOnStage = [(SBWindowDeclineSwitcherModifier *)self appLayoutOnStage];

  if (!appLayoutOnStage)
  {
    goto LABEL_5;
  }

  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__32;
  v23 = __Block_byref_object_dispose__32;
  v24 = 0;
  v18.receiver = self;
  v18.super_class = SBWindowDeclineSwitcherModifier;
  appLayouts = [(SBWindowDeclineSwitcherModifier *)&v18 appLayouts];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __108__SBWindowDeclineSwitcherModifier_adjustedContinuousExposeIdentifiersInStripFromPreviousIdentifiersInStrip___block_invoke;
  v17[3] = &unk_2783A8CB8;
  v17[4] = self;
  v10 = [appLayouts bs_filter:v17];

  v11 = [[SBOverrideAppLayoutsSwitcherModifier alloc] initWithAppLayouts:v10];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __108__SBWindowDeclineSwitcherModifier_adjustedContinuousExposeIdentifiersInStripFromPreviousIdentifiersInStrip___block_invoke_2;
  v13[3] = &unk_2783AB258;
  v16 = &v19;
  v14 = stripCopy;
  selfCopy = self;
  [(SBChainableModifier *)self performTransactionWithTemporaryChildModifier:v11 usingBlock:v13];
  v6 = v20[5];

  _Block_object_dispose(&v19, 8);
LABEL_6:

  return v6;
}

uint64_t __108__SBWindowDeclineSwitcherModifier_adjustedContinuousExposeIdentifiersInStripFromPreviousIdentifiersInStrip___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 isEqual:*(*(a1 + 32) + 184)])
  {
    v4 = 0;
  }

  else
  {
    v5 = [*(a1 + 32) appLayoutOnStage];
    v4 = [v3 isEqual:v5] ^ 1;
  }

  return v4;
}

void __108__SBWindowDeclineSwitcherModifier_adjustedContinuousExposeIdentifiersInStripFromPreviousIdentifiersInStrip___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v6.receiver = *(a1 + 40);
  v6.super_class = SBWindowDeclineSwitcherModifier;
  v3 = objc_msgSendSuper2(&v6, sel_adjustedContinuousExposeIdentifiersInStripFromPreviousIdentifiersInStrip_, v2);
  v4 = *(*(a1 + 48) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

- (id)appLayoutsToEnsureExistForMainTransitionEvent:(id)event
{
  v7.receiver = self;
  v7.super_class = SBWindowDeclineSwitcherModifier;
  v4 = [(SBWindowDeclineSwitcherModifier *)&v7 appLayoutsToEnsureExistForMainTransitionEvent:event];
  v5 = [v4 sb_arrayByAddingOrMovingObject:self->_centerWindowAppLayout];

  return v5;
}

- (id)animationAttributesForLayoutElement:(id)element
{
  v12.receiver = self;
  v12.super_class = SBWindowDeclineSwitcherModifier;
  elementCopy = element;
  v5 = [(SBTransitionSwitcherModifier *)&v12 animationAttributesForLayoutElement:elementCopy];
  v6 = [v5 mutableCopy];

  centerWindowAppLayout = self->_centerWindowAppLayout;
  if (centerWindowAppLayout == elementCopy)
  {
    entityRemovalSettings = [(SBWindowDeclineSwitcherModifier *)self entityRemovalSettings];
    dosidoDeclineIntentAnimationSettings = [entityRemovalSettings dosidoDeclineIntentAnimationSettings];
    fromViewSlideOutAnimationSettings = [dosidoDeclineIntentAnimationSettings fromViewSlideOutAnimationSettings];
    [v6 setLayoutSettings:fromViewSlideOutAnimationSettings];
  }

  return v6;
}

- (double)dimmingAlphaForLayoutRole:(int64_t)role inAppLayout:(id)layout
{
  layoutCopy = layout;
  if (self->_fullScreenAppLayout == layoutCopy && [(SBTransitionSwitcherModifier *)self isPreparingLayout])
  {
    medusaSettings = [(SBWindowDeclineSwitcherModifier *)self medusaSettings];
    [medusaSettings defaultDimmingOpacity];
    v9 = v8;
  }

  else if (self->_centerWindowAppLayout == layoutCopy)
  {
    v9 = 0.0;
  }

  else
  {
    v12.receiver = self;
    v12.super_class = SBWindowDeclineSwitcherModifier;
    [(SBWindowDeclineSwitcherModifier *)&v12 dimmingAlphaForLayoutRole:role inAppLayout:layoutCopy];
    v9 = v10;
  }

  return v9;
}

- (CGRect)frameForIndex:(unint64_t)index
{
  appLayouts = [(SBWindowDeclineSwitcherModifier *)self appLayouts];
  v6 = [appLayouts objectAtIndex:index];

  if (v6 == self->_centerWindowAppLayout)
  {
    x = self->_initialFrame.origin.x;
    y = self->_initialFrame.origin.y;
    width = self->_initialFrame.size.width;
    height = self->_initialFrame.size.height;
    if ([(SBTransitionSwitcherModifier *)self isUpdatingLayout])
    {
      v27.origin.x = x;
      v27.origin.y = y;
      v27.size.width = width;
      v27.size.height = height;
      v15 = CGRectGetHeight(v27);
      [(SBWindowDeclineSwitcherModifier *)self scaleForIndex:index];
      v17 = v15 * v16;
      entityRemovalSettings = [(SBWindowDeclineSwitcherModifier *)self entityRemovalSettings];
      dosidoDeclineIntentAnimationSettings = [entityRemovalSettings dosidoDeclineIntentAnimationSettings];
      [dosidoDeclineIntentAnimationSettings fromViewSlideOutHeightOffsetMultiplier];
      v21 = v17 * v20;

      y = y + v21;
    }
  }

  else
  {
    v26.receiver = self;
    v26.super_class = SBWindowDeclineSwitcherModifier;
    [(SBWindowDeclineSwitcherModifier *)&v26 frameForIndex:index];
    x = v7;
    y = v9;
    width = v11;
    height = v13;
  }

  v22 = x;
  v23 = y;
  v24 = width;
  v25 = height;
  result.size.height = v25;
  result.size.width = v24;
  result.origin.y = v23;
  result.origin.x = v22;
  return result;
}

- (CGRect)frameForLayoutRole:(int64_t)role inAppLayout:(id)layout withBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  layoutCopy = layout;
  v12 = layoutCopy;
  if (self->_centerWindowAppLayout == layoutCopy && ([(SBAppLayout *)layoutCopy itemForLayoutRole:role], v13 = objc_claimAutoreleasedReturnValue(), [(SBAppLayout *)self->_fromAppLayout itemForLayoutRole:self->_layoutRole], v14 = objc_claimAutoreleasedReturnValue(), v15 = [(SBDisplayItem *)v13 isEqualToItem:v14], v14, v13, v15))
  {
    layoutRole = self->_layoutRole;
    fromAppLayout = self->_fromAppLayout;
    SBRectWithSize();
    [(SBWindowDeclineSwitcherModifier *)&v35 frameForLayoutRole:layoutRole inAppLayout:fromAppLayout withBounds:v18, v19, v20, v21, v34.receiver, v34.super_class, self, SBWindowDeclineSwitcherModifier];
  }

  else
  {
    [(SBWindowDeclineSwitcherModifier *)&v34 frameForLayoutRole:role inAppLayout:v12 withBounds:x, y, width, height, self, SBWindowDeclineSwitcherModifier, v35.receiver, v35.super_class];
  }

  v26 = v22;
  v27 = v23;
  v28 = v24;
  v29 = v25;

  v30 = v26;
  v31 = v27;
  v32 = v28;
  v33 = v29;
  result.size.height = v33;
  result.size.width = v32;
  result.origin.y = v31;
  result.origin.x = v30;
  return result;
}

- (CGPoint)anchorPointForIndex:(unint64_t)index
{
  appLayouts = [(SBWindowDeclineSwitcherModifier *)self appLayouts];
  v6 = [appLayouts objectAtIndex:index];

  if (v6 == self->_centerWindowAppLayout)
  {
    v8 = 0.5;
    v10 = 0.5;
  }

  else
  {
    v13.receiver = self;
    v13.super_class = SBWindowDeclineSwitcherModifier;
    [(SBWindowDeclineSwitcherModifier *)&v13 anchorPointForIndex:index];
    v8 = v7;
    v10 = v9;
  }

  v11 = v8;
  v12 = v10;
  result.y = v12;
  result.x = v11;
  return result;
}

- (double)opacityForLayoutRole:(int64_t)role inAppLayout:(id)layout atIndex:(unint64_t)index
{
  layoutCopy = layout;
  if (self->_centerWindowAppLayout != layoutCopy || (v9 = 1.0, ![(SBTransitionSwitcherModifier *)self isUpdatingLayout]))
  {
    if (self->_fullScreenAppLayout == layoutCopy)
    {
      v9 = 1.0;
    }

    else
    {
      v12.receiver = self;
      v12.super_class = SBWindowDeclineSwitcherModifier;
      [(SBWindowDeclineSwitcherModifier *)&v12 opacityForLayoutRole:role inAppLayout:layoutCopy atIndex:index];
      v9 = v10;
    }
  }

  return v9;
}

- (double)titleAndIconOpacityForIndex:(unint64_t)index
{
  appLayouts = [(SBWindowDeclineSwitcherModifier *)self appLayouts];
  v6 = [appLayouts objectAtIndex:index];

  v7 = 0.0;
  if (([v6 isEqual:self->_centerWindowAppLayout] & 1) == 0)
  {
    v10.receiver = self;
    v10.super_class = SBWindowDeclineSwitcherModifier;
    [(SBWindowDeclineSwitcherModifier *)&v10 titleAndIconOpacityForIndex:index];
    v7 = v8;
  }

  return v7;
}

- (UIRectCornerRadii)cornerRadiiForIndex:(unint64_t)index
{
  appLayouts = [(SBWindowDeclineSwitcherModifier *)self appLayouts];
  v6 = [appLayouts objectAtIndex:index];

  if ([v6 isEqual:self->_centerWindowAppLayout])
  {
    topLeft = self->_initialCornerRadii.topLeft;
    bottomLeft = self->_initialCornerRadii.bottomLeft;
    bottomRight = self->_initialCornerRadii.bottomRight;
    topRight = self->_initialCornerRadii.topRight;
  }

  else
  {
    v19.receiver = self;
    v19.super_class = SBWindowDeclineSwitcherModifier;
    [(SBWindowDeclineSwitcherModifier *)&v19 cornerRadiiForIndex:index];
    topLeft = v11;
    bottomLeft = v12;
    bottomRight = v13;
    topRight = v14;
  }

  v15 = topLeft;
  v16 = bottomLeft;
  v17 = bottomRight;
  v18 = topRight;
  result.topRight = v18;
  result.bottomRight = v17;
  result.bottomLeft = v16;
  result.topLeft = v15;
  return result;
}

- (double)scaleForIndex:(unint64_t)index
{
  appLayouts = [(SBWindowDeclineSwitcherModifier *)self appLayouts];
  v6 = [appLayouts objectAtIndex:index];

  if (v6 == self->_centerWindowAppLayout && [(SBTransitionSwitcherModifier *)self isUpdatingLayout])
  {
    entityRemovalSettings = [(SBWindowDeclineSwitcherModifier *)self entityRemovalSettings];
    dosidoDeleteIntentAnimationSettings = [entityRemovalSettings dosidoDeleteIntentAnimationSettings];
    [dosidoDeleteIntentAnimationSettings fromViewFinalScale];
    v10 = v9;
  }

  else
  {
    v13.receiver = self;
    v13.super_class = SBWindowDeclineSwitcherModifier;
    [(SBWindowDeclineSwitcherModifier *)&v13 scaleForIndex:index];
    v10 = v11;
  }

  return v10;
}

- (id)topMostLayoutElements
{
  v9.receiver = self;
  v9.super_class = SBWindowDeclineSwitcherModifier;
  topMostLayoutElements = [(SBWindowDeclineSwitcherModifier *)&v9 topMostLayoutElements];
  v4 = [topMostLayoutElements mutableCopy];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
  }

  v7 = v6;

  [v7 removeObject:self->_centerWindowAppLayout];
  [v7 insertObject:self->_centerWindowAppLayout atIndex:0];

  return v7;
}

- (id)visibleAppLayouts
{
  v6.receiver = self;
  v6.super_class = SBWindowDeclineSwitcherModifier;
  visibleAppLayouts = [(SBWindowDeclineSwitcherModifier *)&v6 visibleAppLayouts];
  v4 = [visibleAppLayouts mutableCopy];

  if (self->_centerWindowAppLayout)
  {
    [v4 addObject:?];
  }

  if (self->_fullScreenAppLayout)
  {
    [v4 addObject:?];
  }

  return v4;
}

- (CGPoint)perspectiveAngleForIndex:(unint64_t)index
{
  appLayouts = [(SBWindowDeclineSwitcherModifier *)self appLayouts];
  v6 = [appLayouts objectAtIndex:index];

  if ([v6 isEqual:self->_centerWindowAppLayout])
  {
    v7 = *MEMORY[0x277CBF348];
    v8 = *(MEMORY[0x277CBF348] + 8);
  }

  else
  {
    v13.receiver = self;
    v13.super_class = SBWindowDeclineSwitcherModifier;
    [(SBWindowDeclineSwitcherModifier *)&v13 perspectiveAngleForIndex:index];
    v7 = v9;
    v8 = v10;
  }

  v11 = v7;
  v12 = v8;
  result.y = v12;
  result.x = v11;
  return result;
}

- (SBSwitcherWallpaperGradientAttributes)wallpaperGradientAttributesForLayoutRole:(int64_t)role inAppLayout:(id)layout
{
  layoutCopy = layout;
  if ([layoutCopy isEqual:self->_centerWindowAppLayout])
  {
    Empty = SBSwitcherWallpaperGradientAttributesMakeEmpty();
  }

  else
  {
    v13.receiver = self;
    v13.super_class = SBWindowDeclineSwitcherModifier;
    [(SBWindowDeclineSwitcherModifier *)&v13 wallpaperGradientAttributesForLayoutRole:role inAppLayout:layoutCopy];
  }

  v9 = Empty;
  v10 = v8;

  v11 = v9;
  v12 = v10;
  result.trailingAlpha = v12;
  result.leadingAlpha = v11;
  return result;
}

@end