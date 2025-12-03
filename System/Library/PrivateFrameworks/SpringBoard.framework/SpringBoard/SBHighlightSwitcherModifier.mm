@interface SBHighlightSwitcherModifier
- (BOOL)shouldAccessoryDrawShadowForAppLayout:(id)layout;
- (SBHighlightSwitcherModifier)initWithLayoutRole:(int64_t)role inAppLayout:(id)layout listensForHighlightEvents:(BOOL)events;
- (UIRectCornerRadii)cornerRadiiForLayoutRole:(int64_t)role inAppLayout:(id)layout withCornerRadii:(UIRectCornerRadii)radii;
- (id)animationAttributesForLayoutElement:(id)element;
- (id)handleHighlightEvent:(id)event;
- (id)topMostLayoutElements;
- (id)topMostLayoutRolesForAppLayout:(id)layout;
@end

@implementation SBHighlightSwitcherModifier

- (SBHighlightSwitcherModifier)initWithLayoutRole:(int64_t)role inAppLayout:(id)layout listensForHighlightEvents:(BOOL)events
{
  layoutCopy = layout;
  v15.receiver = self;
  v15.super_class = SBHighlightSwitcherModifier;
  v10 = [(SBSwitcherModifier *)&v15 init];
  v11 = v10;
  if (v10)
  {
    v10->_layoutRole = role;
    objc_storeStrong(&v10->_appLayout, layout);
    v12 = [(SBAppLayout *)v11->_appLayout leafAppLayoutForRole:v11->_layoutRole];
    leafAppLayout = v11->_leafAppLayout;
    v11->_leafAppLayout = v12;

    v11->_listensForHighlightEvents = events;
    v11->_stylesCornerRadii = 1;
  }

  return v11;
}

- (id)handleHighlightEvent:(id)event
{
  eventCopy = event;
  v12.receiver = self;
  v12.super_class = SBHighlightSwitcherModifier;
  v5 = [(SBSwitcherModifier *)&v12 handleHighlightEvent:eventCopy];
  if (self->_listensForHighlightEvents)
  {
    appLayout = [eventCopy appLayout];
    v7 = [appLayout leafAppLayoutForRole:{objc_msgSend(eventCopy, "layoutRole")}];

    if (v7 == self->_leafAppLayout)
    {
      phase = [eventCopy phase];
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

- (id)animationAttributesForLayoutElement:(id)element
{
  v9.receiver = self;
  v9.super_class = SBHighlightSwitcherModifier;
  elementCopy = element;
  v5 = [(SBHighlightSwitcherModifier *)&v9 animationAttributesForLayoutElement:elementCopy];
  v6 = [v5 mutableCopy];

  appLayout = self->_appLayout;
  if (appLayout == elementCopy && ([(SBHighlightSwitcherModifier *)self shouldTetherItemsAndAccessoriesInAppLayout:appLayout]& 1) == 0)
  {
    [v6 setUpdateMode:3];
  }

  return v6;
}

- (BOOL)shouldAccessoryDrawShadowForAppLayout:(id)layout
{
  layoutCopy = layout;
  if ([layoutCopy isOrContainsAppLayout:self->_appLayout] && !-[SBHighlightSwitcherModifier shouldTetherItemsAndAccessoriesInAppLayout:](self, "shouldTetherItemsAndAccessoriesInAppLayout:", self->_appLayout))
  {
    v5 = 0;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = SBHighlightSwitcherModifier;
    v5 = [(SBHighlightSwitcherModifier *)&v7 shouldAccessoryDrawShadowForAppLayout:layoutCopy];
  }

  return v5;
}

- (UIRectCornerRadii)cornerRadiiForLayoutRole:(int64_t)role inAppLayout:(id)layout withCornerRadii:(UIRectCornerRadii)radii
{
  topRight = radii.topRight;
  bottomRight = radii.bottomRight;
  bottomLeft = radii.bottomLeft;
  topLeft = radii.topLeft;
  layoutCopy = layout;
  v31.receiver = self;
  v31.super_class = SBHighlightSwitcherModifier;
  [(SBHighlightSwitcherModifier *)&v31 cornerRadiiForLayoutRole:role inAppLayout:layoutCopy withCornerRadii:topLeft, bottomLeft, bottomRight, topRight];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  if (self->_stylesCornerRadii && self->_appLayout == layoutCopy && [(SBAppLayout *)layoutCopy environment]== 1)
  {
    if ([(SBAppLayout *)layoutCopy isSplitConfiguration])
    {
      v20 = [(SBAppLayout *)layoutCopy itemForLayoutRole:4];

      if (!v20)
      {
        appLayouts = [(SBHighlightSwitcherModifier *)self appLayouts];
        v22 = [appLayouts indexOfObject:layoutCopy];

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
    topMostLayoutElements = [(SBHighlightSwitcherModifier *)&v9 topMostLayoutElements];
    v4 = topMostLayoutElements;
    if (topMostLayoutElements)
    {
      topMostLayoutElements2 = [topMostLayoutElements mutableCopy];
      v6 = [topMostLayoutElements2 indexOfObject:self->_appLayout];
      if (v6 != 0x7FFFFFFFFFFFFFFFLL)
      {
        [topMostLayoutElements2 removeObjectAtIndex:v6];
      }

      [topMostLayoutElements2 insertObject:self->_appLayout atIndex:0];
    }

    else
    {
      v10[0] = self->_appLayout;
      topMostLayoutElements2 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:1];
    }
  }

  else
  {
    v8.receiver = self;
    v8.super_class = SBHighlightSwitcherModifier;
    topMostLayoutElements2 = [(SBHighlightSwitcherModifier *)&v8 topMostLayoutElements];
  }

  return topMostLayoutElements2;
}

- (id)topMostLayoutRolesForAppLayout:(id)layout
{
  v12[1] = *MEMORY[0x277D85DE8];
  layoutCopy = layout;
  v11.receiver = self;
  v11.super_class = SBHighlightSwitcherModifier;
  v5 = [(SBHighlightSwitcherModifier *)&v11 topMostLayoutRolesForAppLayout:layoutCopy];
  if (self->_appLayout == layoutCopy)
  {
    v6 = [(SBAppLayout *)layoutCopy itemForLayoutRole:4];

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