@interface SBWindowDeleteSwitcherModifier
- (BOOL)shouldAllowGroupOpacityForAppLayout:(id)a3;
- (CGPoint)_centerOfCenterPageFullScreenAssociatedSourceDisplayItem:(id)a3 appLayout:(id)a4;
- (CGPoint)anchorPointForIndex:(unint64_t)a3;
- (CGPoint)perspectiveAngleForIndex:(unint64_t)a3;
- (CGRect)frameForIndex:(unint64_t)a3;
- (CGRect)frameForLayoutRole:(int64_t)a3 inAppLayout:(id)a4 withBounds:(CGRect)a5;
- (SBSwitcherWallpaperGradientAttributes)wallpaperGradientAttributesForLayoutRole:(int64_t)a3 inAppLayout:(id)a4;
- (SBWindowDeleteSwitcherModifier)initWithTransitionID:(id)a3 fromAppLayout:(id)a4 layoutRole:(int64_t)a5;
- (UIRectCornerRadii)cornerRadiiForIndex:(unint64_t)a3;
- (double)dimmingAlphaForLayoutRole:(int64_t)a3 inAppLayout:(id)a4;
- (double)opacityForLayoutRole:(int64_t)a3 inAppLayout:(id)a4 atIndex:(unint64_t)a5;
- (double)scaleForIndex:(unint64_t)a3;
- (double)titleAndIconOpacityForIndex:(unint64_t)a3;
- (id)adjustedContinuousExposeIdentifiersInStripFromPreviousIdentifiersInStrip:(id)a3;
- (id)animationAttributesForLayoutElement:(id)a3;
- (id)appLayoutContainingAppLayout:(id)a3;
- (id)appLayoutsToEnsureExistForMainTransitionEvent:(id)a3;
- (id)topMostLayoutElements;
- (id)transitionDidEnd;
- (id)transitionWillBegin;
- (id)transitionWillUpdate;
- (id)visibleAppLayouts;
@end

@implementation SBWindowDeleteSwitcherModifier

- (SBWindowDeleteSwitcherModifier)initWithTransitionID:(id)a3 fromAppLayout:(id)a4 layoutRole:(int64_t)a5
{
  v9 = a4;
  v21.receiver = self;
  v21.super_class = SBWindowDeleteSwitcherModifier;
  v10 = [(SBTransitionSwitcherModifier *)&v21 initWithTransitionID:a3];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_fromAppLayout, a4);
    v11->_layoutRole = a5;
    v12 = [v9 leafAppLayoutForRole:a5];
    centerWindowAppLayout = v11->_centerWindowAppLayout;
    v11->_centerWindowAppLayout = v12;

    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __80__SBWindowDeleteSwitcherModifier_initWithTransitionID_fromAppLayout_layoutRole___block_invoke;
    v19[3] = &unk_2783A8C90;
    v14 = v11;
    v20 = v14;
    v15 = [v9 appLayoutWithItemsPassingTest:v19];
    fullScreenAppLayout = v14->_fullScreenAppLayout;
    v14->_fullScreenAppLayout = v15;

    v17 = [MEMORY[0x277D75418] currentDevice];
    v14->_supportsGroupOpacity = [v17 sbf_animatedBlurRadiusGraphicsQuality] == 100;
  }

  return v11;
}

uint64_t __80__SBWindowDeleteSwitcherModifier_initWithTransitionID_fromAppLayout_layoutRole___block_invoke(uint64_t a1, void *a2)
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
  v16.super_class = SBWindowDeleteSwitcherModifier;
  v3 = [(SBTransitionSwitcherModifier *)&v16 transitionWillBegin];
  v4 = objc_alloc_init(SBInvalidateAdjustedAppLayoutsSwitcherEventResponse);
  v5 = SBAppendSwitcherModifierResponse(v4, v3);

  v6 = [[SBUpdateLayoutSwitcherEventResponse alloc] initWithOptions:2 updateMode:2];
  v7 = SBAppendSwitcherModifierResponse(v6, v5);

  v8 = [(SBWindowDeleteSwitcherModifier *)self appLayouts];
  v9 = [v8 mutableCopy];

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
      v15[2] = __53__SBWindowDeleteSwitcherModifier_transitionWillBegin__block_invoke;
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

id __53__SBWindowDeleteSwitcherModifier_transitionWillBegin__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = (*(a1 + 32) + 200);
  v17.receiver = *(a1 + 32);
  v17.super_class = SBWindowDeleteSwitcherModifier;
  objc_msgSendSuper2(&v17, sel_frameForIndex_, v2);
  *v3 = v4;
  v3[1] = v5;
  v3[2] = v6;
  v3[3] = v7;
  v9 = *(a1 + 32);
  v8 = *(a1 + 40);
  v10 = v9 + 29;
  v16.receiver = v9;
  v16.super_class = SBWindowDeleteSwitcherModifier;
  result = objc_msgSendSuper2(&v16, sel_cornerRadiiForIndex_, v8);
  *v10 = v12;
  v10[1] = v13;
  v10[2] = v14;
  v10[3] = v15;
  return result;
}

- (id)transitionWillUpdate
{
  v7.receiver = self;
  v7.super_class = SBWindowDeleteSwitcherModifier;
  v3 = [(SBTransitionSwitcherModifier *)&v7 transitionWillUpdate];
  v4 = [[SBBlurItemContainerSwitcherEventResponse alloc] initWithAppLayout:self->_centerWindowAppLayout shouldBlur:1 animationUpdateMode:3];
  v5 = [(SBChainableModifierEventResponse *)SBSwitcherModifierEventResponse responseByAppendingResponse:v4 toResponse:v3];

  return v5;
}

- (id)transitionDidEnd
{
  v7.receiver = self;
  v7.super_class = SBWindowDeleteSwitcherModifier;
  v3 = [(SBTransitionSwitcherModifier *)&v7 transitionDidEnd];
  v4 = [[SBBlurItemContainerSwitcherEventResponse alloc] initWithAppLayout:self->_centerWindowAppLayout shouldBlur:0 animationUpdateMode:2];
  v5 = [(SBChainableModifierEventResponse *)SBSwitcherModifierEventResponse responseByAppendingResponse:v4 toResponse:v3];

  return v5;
}

- (id)appLayoutContainingAppLayout:(id)a3
{
  v4 = a3;
  v5 = [(SBWindowDeleteSwitcherModifier *)self windowManagementContext];
  if (![v5 isChamoisOrFlexibleWindowing])
  {

    goto LABEL_8;
  }

  v6 = [v4 isEqual:self->_centerWindowAppLayout];

  if (!v6)
  {
LABEL_8:
    v11.receiver = self;
    v11.super_class = SBWindowDeleteSwitcherModifier;
    v8 = [(SBWindowDeleteSwitcherModifier *)&v11 appLayoutContainingAppLayout:v4];
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

- (id)adjustedContinuousExposeIdentifiersInStripFromPreviousIdentifiersInStrip:(id)a3
{
  v4 = a3;
  v5 = [(SBWindowDeleteSwitcherModifier *)self windowManagementContext];
  if (![v5 isAutomaticStageCreationEnabled] || -[SBTransitionSwitcherModifier transitionPhase](self, "transitionPhase") < 2 || self->_fullScreenAppLayout)
  {

LABEL_5:
    v12.receiver = self;
    v12.super_class = SBWindowDeleteSwitcherModifier;
    v6 = [(SBWindowDeleteSwitcherModifier *)&v12 adjustedContinuousExposeIdentifiersInStripFromPreviousIdentifiersInStrip:v4];
    goto LABEL_6;
  }

  v8 = [(SBWindowDeleteSwitcherModifier *)self appLayoutOnStage];

  if (!v8)
  {
    goto LABEL_5;
  }

  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__127;
  v23 = __Block_byref_object_dispose__127;
  v24 = 0;
  v18.receiver = self;
  v18.super_class = SBWindowDeleteSwitcherModifier;
  v9 = [(SBWindowDeleteSwitcherModifier *)&v18 appLayouts];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __107__SBWindowDeleteSwitcherModifier_adjustedContinuousExposeIdentifiersInStripFromPreviousIdentifiersInStrip___block_invoke;
  v17[3] = &unk_2783A8CB8;
  v17[4] = self;
  v10 = [v9 bs_filter:v17];

  v11 = [[SBOverrideAppLayoutsSwitcherModifier alloc] initWithAppLayouts:v10];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __107__SBWindowDeleteSwitcherModifier_adjustedContinuousExposeIdentifiersInStripFromPreviousIdentifiersInStrip___block_invoke_2;
  v13[3] = &unk_2783AB258;
  v16 = &v19;
  v14 = v4;
  v15 = self;
  [(SBChainableModifier *)self performTransactionWithTemporaryChildModifier:v11 usingBlock:v13];
  v6 = v20[5];

  _Block_object_dispose(&v19, 8);
LABEL_6:

  return v6;
}

uint64_t __107__SBWindowDeleteSwitcherModifier_adjustedContinuousExposeIdentifiersInStripFromPreviousIdentifiersInStrip___block_invoke(uint64_t a1, void *a2)
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

void __107__SBWindowDeleteSwitcherModifier_adjustedContinuousExposeIdentifiersInStripFromPreviousIdentifiersInStrip___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v6.receiver = *(a1 + 40);
  v6.super_class = SBWindowDeleteSwitcherModifier;
  v3 = objc_msgSendSuper2(&v6, sel_adjustedContinuousExposeIdentifiersInStripFromPreviousIdentifiersInStrip_, v2);
  v4 = *(*(a1 + 48) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

- (id)appLayoutsToEnsureExistForMainTransitionEvent:(id)a3
{
  v7.receiver = self;
  v7.super_class = SBWindowDeleteSwitcherModifier;
  v4 = [(SBWindowDeleteSwitcherModifier *)&v7 appLayoutsToEnsureExistForMainTransitionEvent:a3];
  v5 = [v4 sb_arrayByAddingOrMovingObject:self->_centerWindowAppLayout];

  return v5;
}

- (id)animationAttributesForLayoutElement:(id)a3
{
  v12.receiver = self;
  v12.super_class = SBWindowDeleteSwitcherModifier;
  v4 = a3;
  v5 = [(SBTransitionSwitcherModifier *)&v12 animationAttributesForLayoutElement:v4];
  v6 = [v5 mutableCopy];

  centerWindowAppLayout = self->_centerWindowAppLayout;
  if (centerWindowAppLayout == v4)
  {
    v8 = [(SBWindowDeleteSwitcherModifier *)self entityRemovalSettings];
    v9 = [v8 dosidoDeclineIntentAnimationSettings];
    v10 = [v9 fromViewSlideOutAnimationSettings];
    [v6 setLayoutSettings:v10];
  }

  return v6;
}

- (double)dimmingAlphaForLayoutRole:(int64_t)a3 inAppLayout:(id)a4
{
  v6 = a4;
  if (self->_fullScreenAppLayout == v6 && [(SBTransitionSwitcherModifier *)self isPreparingLayout])
  {
    v7 = [(SBWindowDeleteSwitcherModifier *)self medusaSettings];
    [v7 defaultDimmingOpacity];
    v9 = v8;
  }

  else if (self->_centerWindowAppLayout == v6)
  {
    v9 = 0.0;
  }

  else
  {
    v12.receiver = self;
    v12.super_class = SBWindowDeleteSwitcherModifier;
    [(SBWindowDeleteSwitcherModifier *)&v12 dimmingAlphaForLayoutRole:a3 inAppLayout:v6];
    v9 = v10;
  }

  return v9;
}

- (CGRect)frameForIndex:(unint64_t)a3
{
  v5 = [(SBWindowDeleteSwitcherModifier *)self appLayouts];
  v6 = [v5 objectAtIndex:a3];

  if (v6 == self->_centerWindowAppLayout)
  {
    if (self->_usePageFullScreenCenterWindowDeletion)
    {
      v15 = [(SBAppLayout *)self->_fromAppLayout centerItem];
      if (v15)
      {
        v16 = [(SBWindowDeleteSwitcherModifier *)self sourceLeafAppLayoutForCenterItem:v15];
        v17 = [v16 allItems];
        v18 = [v17 firstObject];

        v19 = [(SBWindowDeleteSwitcherModifier *)self appLayoutContainingAppLayout:v16];
        v20 = v19;
        if (v18)
        {
          v21 = v19 == 0;
        }

        else
        {
          v21 = 1;
        }

        if (!v21)
        {
          [(SBWindowDeleteSwitcherModifier *)self _centerOfCenterPageFullScreenAssociatedSourceDisplayItem:v18 appLayout:v19];
          x = v26;
          y = v27;
          width = self->_initialFrame.size.width;
          height = self->_initialFrame.size.height;

          goto LABEL_13;
        }
      }
    }

    x = self->_initialFrame.origin.x;
    y = self->_initialFrame.origin.y;
    width = self->_initialFrame.size.width;
    height = self->_initialFrame.size.height;
    goto LABEL_13;
  }

  v28.receiver = self;
  v28.super_class = SBWindowDeleteSwitcherModifier;
  [(SBWindowDeleteSwitcherModifier *)&v28 frameForIndex:a3];
  x = v7;
  y = v9;
  width = v11;
  height = v13;
LABEL_13:

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

- (CGPoint)_centerOfCenterPageFullScreenAssociatedSourceDisplayItem:(id)a3 appLayout:(id)a4
{
  p_initialFrame = &self->_initialFrame;
  y = self->_initialFrame.origin.y;
  height = self->_initialFrame.size.height;
  v8 = (self->_initialFrame.origin.x + self->_initialFrame.size.width * 0.5) / self->_initialFrame.size.width;
  v9 = a4;
  v10 = a3;
  v11 = [v9 configuration];
  v12 = [v9 layoutRoleForItem:v10];

  switch(v11)
  {
    case 2:
      if (v12 == 1)
      {
        v13 = -0.33;
      }

      else
      {
        v13 = 0.17;
      }

      goto LABEL_13;
    case 4:
      if (v12 == 1)
      {
        v13 = -0.17;
      }

      else
      {
        v13 = 0.33;
      }

      goto LABEL_13;
    case 3:
      if (v12 == 1)
      {
        v13 = -0.25;
      }

      else
      {
        v13 = 0.25;
      }

LABEL_13:
      v8 = v8 + p_initialFrame->size.width * v13;
      break;
  }

  v14 = (y + height * 0.5) / height;
  v15 = v8;
  result.y = v14;
  result.x = v15;
  return result;
}

- (CGRect)frameForLayoutRole:(int64_t)a3 inAppLayout:(id)a4 withBounds:(CGRect)a5
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v11 = a4;
  v12 = v11;
  if (self->_centerWindowAppLayout == v11 && ([(SBAppLayout *)v11 itemForLayoutRole:a3], v13 = objc_claimAutoreleasedReturnValue(), [(SBAppLayout *)self->_fromAppLayout itemForLayoutRole:self->_layoutRole], v14 = objc_claimAutoreleasedReturnValue(), v15 = [(SBDisplayItem *)v13 isEqualToItem:v14], v14, v13, v15))
  {
    layoutRole = self->_layoutRole;
    fromAppLayout = self->_fromAppLayout;
    SBRectWithSize();
    [(SBWindowDeleteSwitcherModifier *)&v35 frameForLayoutRole:layoutRole inAppLayout:fromAppLayout withBounds:v18, v19, v20, v21, v34.receiver, v34.super_class, self, SBWindowDeleteSwitcherModifier];
  }

  else
  {
    [(SBWindowDeleteSwitcherModifier *)&v34 frameForLayoutRole:a3 inAppLayout:v12 withBounds:x, y, width, height, self, SBWindowDeleteSwitcherModifier, v35.receiver, v35.super_class];
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

- (CGPoint)anchorPointForIndex:(unint64_t)a3
{
  v5 = [(SBWindowDeleteSwitcherModifier *)self appLayouts];
  v6 = [v5 objectAtIndex:a3];

  if (v6 == self->_centerWindowAppLayout)
  {
    v8 = 0.5;
    v10 = 0.5;
  }

  else
  {
    v13.receiver = self;
    v13.super_class = SBWindowDeleteSwitcherModifier;
    [(SBWindowDeleteSwitcherModifier *)&v13 anchorPointForIndex:a3];
    v8 = v7;
    v10 = v9;
  }

  v11 = v8;
  v12 = v10;
  result.y = v12;
  result.x = v11;
  return result;
}

- (double)opacityForLayoutRole:(int64_t)a3 inAppLayout:(id)a4 atIndex:(unint64_t)a5
{
  v8 = a4;
  if (self->_centerWindowAppLayout == v8 && [(SBTransitionSwitcherModifier *)self isUpdatingLayout])
  {
    v9 = [(SBWindowDeleteSwitcherModifier *)self entityRemovalSettings];
    v10 = [v9 dosidoDeleteIntentAnimationSettings];
    [v10 fromViewFinalAlpha];
    v12 = v11;
  }

  else if (self->_fullScreenAppLayout == v8)
  {
    v12 = 1.0;
  }

  else
  {
    v15.receiver = self;
    v15.super_class = SBWindowDeleteSwitcherModifier;
    [(SBWindowDeleteSwitcherModifier *)&v15 opacityForLayoutRole:a3 inAppLayout:v8 atIndex:a5];
    v12 = v13;
  }

  return v12;
}

- (BOOL)shouldAllowGroupOpacityForAppLayout:(id)a3
{
  v4 = a3;
  if ([v4 isEqual:self->_centerWindowAppLayout] && self->_supportsGroupOpacity)
  {
    v5 = 1;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = SBWindowDeleteSwitcherModifier;
    v5 = [(SBWindowDeleteSwitcherModifier *)&v7 shouldAllowGroupOpacityForAppLayout:v4];
  }

  return v5;
}

- (double)titleAndIconOpacityForIndex:(unint64_t)a3
{
  v5 = [(SBWindowDeleteSwitcherModifier *)self appLayouts];
  v6 = [v5 objectAtIndex:a3];

  v7 = 0.0;
  if (([v6 isEqual:self->_centerWindowAppLayout] & 1) == 0)
  {
    v10.receiver = self;
    v10.super_class = SBWindowDeleteSwitcherModifier;
    [(SBWindowDeleteSwitcherModifier *)&v10 titleAndIconOpacityForIndex:a3];
    v7 = v8;
  }

  return v7;
}

- (UIRectCornerRadii)cornerRadiiForIndex:(unint64_t)a3
{
  v5 = [(SBWindowDeleteSwitcherModifier *)self appLayouts];
  v6 = [v5 objectAtIndex:a3];

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
    v19.super_class = SBWindowDeleteSwitcherModifier;
    [(SBWindowDeleteSwitcherModifier *)&v19 cornerRadiiForIndex:a3];
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

- (double)scaleForIndex:(unint64_t)a3
{
  v5 = [(SBWindowDeleteSwitcherModifier *)self appLayouts];
  v6 = [v5 objectAtIndex:a3];

  if (v6 == self->_centerWindowAppLayout && [(SBTransitionSwitcherModifier *)self isUpdatingLayout])
  {
    v7 = [(SBWindowDeleteSwitcherModifier *)self windowManagementContext];
    v8 = [v7 isChamoisOrFlexibleWindowing];

    if (v8)
    {
      v9 = 0.8;
    }

    else
    {
      v9 = 0.0;
      if ([(SBAppLayout *)v6 centerConfiguration]!= 2)
      {
        v12 = [(SBWindowDeleteSwitcherModifier *)self entityRemovalSettings];
        v13 = [v12 dosidoDeleteIntentAnimationSettings];
        [v13 fromViewFinalScale];
        v9 = v14;
      }
    }
  }

  else
  {
    v15.receiver = self;
    v15.super_class = SBWindowDeleteSwitcherModifier;
    [(SBWindowDeleteSwitcherModifier *)&v15 scaleForIndex:a3];
    v9 = v10;
  }

  return v9;
}

- (id)topMostLayoutElements
{
  v11.receiver = self;
  v11.super_class = SBWindowDeleteSwitcherModifier;
  v3 = [(SBWindowDeleteSwitcherModifier *)&v11 topMostLayoutElements];
  v4 = [(SBWindowDeleteSwitcherModifier *)self windowManagementContext];
  v5 = [v4 isChamoisOrFlexibleWindowing];

  if (v5)
  {
    v6 = v3;
  }

  else
  {
    v7 = [v3 mutableCopy];
    v8 = v7;
    if (v7)
    {
      v9 = v7;
    }

    else
    {
      v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
    }

    v6 = v9;

    [v6 removeObject:self->_centerWindowAppLayout];
    [v6 insertObject:self->_centerWindowAppLayout atIndex:0];
  }

  return v6;
}

- (id)visibleAppLayouts
{
  v6.receiver = self;
  v6.super_class = SBWindowDeleteSwitcherModifier;
  v3 = [(SBWindowDeleteSwitcherModifier *)&v6 visibleAppLayouts];
  v4 = [v3 mutableCopy];

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

- (CGPoint)perspectiveAngleForIndex:(unint64_t)a3
{
  v5 = [(SBWindowDeleteSwitcherModifier *)self appLayouts];
  v6 = [v5 objectAtIndex:a3];

  if ([v6 isEqual:self->_centerWindowAppLayout])
  {
    v7 = *MEMORY[0x277CBF348];
    v8 = *(MEMORY[0x277CBF348] + 8);
  }

  else
  {
    v13.receiver = self;
    v13.super_class = SBWindowDeleteSwitcherModifier;
    [(SBWindowDeleteSwitcherModifier *)&v13 perspectiveAngleForIndex:a3];
    v7 = v9;
    v8 = v10;
  }

  v11 = v7;
  v12 = v8;
  result.y = v12;
  result.x = v11;
  return result;
}

- (SBSwitcherWallpaperGradientAttributes)wallpaperGradientAttributesForLayoutRole:(int64_t)a3 inAppLayout:(id)a4
{
  v6 = a4;
  if ([v6 isEqual:self->_centerWindowAppLayout])
  {
    Empty = SBSwitcherWallpaperGradientAttributesMakeEmpty();
  }

  else
  {
    v13.receiver = self;
    v13.super_class = SBWindowDeleteSwitcherModifier;
    [(SBWindowDeleteSwitcherModifier *)&v13 wallpaperGradientAttributesForLayoutRole:a3 inAppLayout:v6];
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