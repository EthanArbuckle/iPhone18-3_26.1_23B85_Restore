@interface SBHighlightSwitcherModifier
- (BOOL)shouldAccessoryDrawShadowForAppLayout:(id)a3;
- (SBHighlightSwitcherModifier)initWithLayoutRole:(int64_t)a3 inAppLayout:(id)a4 listensForHighlightEvents:(BOOL)a5;
- (UIRectCornerRadii)cornerRadiiForLayoutRole:(int64_t)a3 inAppLayout:(id)a4 withCornerRadii:(UIRectCornerRadii)a5;
- (id)animationAttributesForLayoutElement:(id)a3;
- (id)handleHighlightEvent:(id)a3;
- (id)topMostLayoutElements;
- (id)topMostLayoutRolesForAppLayout:(id)a3;
@end

@implementation SBHighlightSwitcherModifier

- (SBHighlightSwitcherModifier)initWithLayoutRole:(int64_t)a3 inAppLayout:(id)a4 listensForHighlightEvents:(BOOL)a5
{
  v9 = a4;
  v15.receiver = self;
  v15.super_class = SBHighlightSwitcherModifier;
  v10 = [(SBSwitcherModifier *)&v15 init];
  v11 = v10;
  if (v10)
  {
    v10->_layoutRole = a3;
    objc_storeStrong(&v10->_appLayout, a4);
    v12 = [(SBAppLayout *)v11->_appLayout leafAppLayoutForRole:v11->_layoutRole];
    leafAppLayout = v11->_leafAppLayout;
    v11->_leafAppLayout = v12;

    v11->_listensForHighlightEvents = a5;
    v11->_stylesCornerRadii = 1;
  }

  return v11;
}

- (id)handleHighlightEvent:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = SBHighlightSwitcherModifier;
  v5 = [(SBSwitcherModifier *)&v12 handleHighlightEvent:v4];
  if (self->_listensForHighlightEvents)
  {
    v6 = [v4 appLayout];
    v7 = [v6 leafAppLayoutForRole:{objc_msgSend(v4, "layoutRole")}];

    if (v7 == self->_leafAppLayout)
    {
      phase = [v4 phase];
      self->_phase = phase;
      if (!phase)
      {
        v9 = [[SBUpdateLayoutSwitcherEventResponse alloc] initWithOptions:64 updateMode:3];
        v10 = SBAppendSwitcherModifierResponse(v9, v5);

        phase = self->_phase;
        v5 = v10;
      }

      if ((phase - 1) <= 1)
      {
        [(SBChainableModifier *)self setState:1];
      }
    }
  }

  return v5;
}

- (id)animationAttributesForLayoutElement:(id)a3
{
  v9.receiver = self;
  v9.super_class = SBHighlightSwitcherModifier;
  v4 = a3;
  v5 = [(SBHighlightSwitcherModifier *)&v9 animationAttributesForLayoutElement:v4];
  v6 = [v5 mutableCopy];

  appLayout = self->_appLayout;
  if (appLayout == v4 && ([(SBHighlightSwitcherModifier *)self shouldTetherItemsAndAccessoriesInAppLayout:appLayout]& 1) == 0)
  {
    [v6 setUpdateMode:3];
  }

  return v6;
}

- (BOOL)shouldAccessoryDrawShadowForAppLayout:(id)a3
{
  v4 = a3;
  if ([v4 isOrContainsAppLayout:self->_appLayout] && !-[SBHighlightSwitcherModifier shouldTetherItemsAndAccessoriesInAppLayout:](self, "shouldTetherItemsAndAccessoriesInAppLayout:", self->_appLayout))
  {
    v5 = 0;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = SBHighlightSwitcherModifier;
    v5 = [(SBHighlightSwitcherModifier *)&v7 shouldAccessoryDrawShadowForAppLayout:v4];
  }

  return v5;
}

- (UIRectCornerRadii)cornerRadiiForLayoutRole:(int64_t)a3 inAppLayout:(id)a4 withCornerRadii:(UIRectCornerRadii)a5
{
  topRight = a5.topRight;
  bottomRight = a5.bottomRight;
  bottomLeft = a5.bottomLeft;
  topLeft = a5.topLeft;
  v11 = a4;
  v31.receiver = self;
  v31.super_class = SBHighlightSwitcherModifier;
  [(SBHighlightSwitcherModifier *)&v31 cornerRadiiForLayoutRole:a3 inAppLayout:v11 withCornerRadii:topLeft, bottomLeft, bottomRight, topRight];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  if (self->_stylesCornerRadii && self->_appLayout == v11 && [(SBAppLayout *)v11 environment]== 1)
  {
    if ([(SBAppLayout *)v11 isSplitConfiguration])
    {
      v20 = [(SBAppLayout *)v11 itemForLayoutRole:4];

      if (!v20)
      {
        v21 = [(SBHighlightSwitcherModifier *)self appLayouts];
        v22 = [v21 indexOfObject:v11];

        [(SBHighlightSwitcherModifier *)self cornerRadiiForIndex:v22];
        SBRectCornerRadiiForRadius();
        v13 = v23;
        v15 = v24;
        v17 = v25;
        v19 = v26;
      }
    }
  }

  v27 = v13;
  v28 = v15;
  v29 = v17;
  v30 = v19;
  result.topRight = v30;
  result.bottomRight = v29;
  result.bottomLeft = v28;
  result.topLeft = v27;
  return result;
}

- (id)topMostLayoutElements
{
  v10[1] = *MEMORY[0x277D85DE8];
  if ([(SBHighlightSwitcherModifier *)self shouldBringCardToFrontDuringInsertionOrRemoval]&& [(SBAppLayout *)self->_appLayout environment]== 1)
  {
    v9.receiver = self;
    v9.super_class = SBHighlightSwitcherModifier;
    v3 = [(SBHighlightSwitcherModifier *)&v9 topMostLayoutElements];
    v4 = v3;
    if (v3)
    {
      v5 = [v3 mutableCopy];
      v6 = [v5 indexOfObject:self->_appLayout];
      if (v6 != 0x7FFFFFFFFFFFFFFFLL)
      {
        [v5 removeObjectAtIndex:v6];
      }

      [v5 insertObject:self->_appLayout atIndex:0];
    }

    else
    {
      v10[0] = self->_appLayout;
      v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:1];
    }
  }

  else
  {
    v8.receiver = self;
    v8.super_class = SBHighlightSwitcherModifier;
    v5 = [(SBHighlightSwitcherModifier *)&v8 topMostLayoutElements];
  }

  return v5;
}

- (id)topMostLayoutRolesForAppLayout:(id)a3
{
  v12[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v11.receiver = self;
  v11.super_class = SBHighlightSwitcherModifier;
  v5 = [(SBHighlightSwitcherModifier *)&v11 topMostLayoutRolesForAppLayout:v4];
  if (self->_appLayout == v4)
  {
    v6 = [(SBAppLayout *)v4 itemForLayoutRole:4];

    if (!v6)
    {
      v7 = [MEMORY[0x277CCABB0] numberWithInteger:self->_layoutRole];
      v8 = v7;
      if (v5)
      {
        v9 = [v5 mutableCopy];
        if ([v9 containsObject:v8])
        {
          [v9 removeObject:v8];
        }

        [v9 insertObject:v8 atIndex:0];
      }

      else
      {
        v12[0] = v7;
        v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];
      }

      v5 = v9;
    }
  }

  return v5;
}

@end