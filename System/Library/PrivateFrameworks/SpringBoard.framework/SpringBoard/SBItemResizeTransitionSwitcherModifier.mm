@interface SBItemResizeTransitionSwitcherModifier
- (BOOL)wantsSceneResizesHostedContextForAppLayout:(id)layout;
- (CGRect)frameForIndex:(unint64_t)index;
- (SBItemResizeTransitionSwitcherModifier)initWithTransitionID:(id)d selectedAppLayout:(id)layout selectedLayoutRole:(int64_t)role;
- (double)fadeInDelayForSplitViewHandles;
- (id)animationAttributesForLayoutElement:(id)element;
- (unint64_t)maskedCornersForLayoutRole:(int64_t)role inAppLayout:(id)layout withMaskedCorners:(unint64_t)corners;
@end

@implementation SBItemResizeTransitionSwitcherModifier

- (SBItemResizeTransitionSwitcherModifier)initWithTransitionID:(id)d selectedAppLayout:(id)layout selectedLayoutRole:(int64_t)role
{
  layoutCopy = layout;
  v15.receiver = self;
  v15.super_class = SBItemResizeTransitionSwitcherModifier;
  v10 = [(SBTransitionSwitcherModifier *)&v15 initWithTransitionID:d];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_selectedAppLayout, layout);
    v12 = [layoutCopy itemForLayoutRole:role];
    selectedDisplayItem = v11->_selectedDisplayItem;
    v11->_selectedDisplayItem = v12;
  }

  return v11;
}

- (CGRect)frameForIndex:(unint64_t)index
{
  v29.receiver = self;
  v29.super_class = SBItemResizeTransitionSwitcherModifier;
  [(SBItemResizeTransitionSwitcherModifier *)&v29 frameForIndex:?];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  appLayouts = [(SBItemResizeTransitionSwitcherModifier *)self appLayouts];
  v14 = [appLayouts objectAtIndex:index];
  if ([v14 isOrContainsAppLayout:self->_selectedAppLayout])
  {
    v28.receiver = self;
    v28.super_class = SBItemResizeTransitionSwitcherModifier;
    [(SBItemResizeTransitionSwitcherModifier *)&v28 frameForIndex:index];
    v16 = v15;
    v18 = v17;
    [(SBItemResizeTransitionSwitcherModifier *)self containerViewBounds];
    v20 = v19;
    v22 = v21;

    if (v16 == v20 && v18 == v22)
    {
      v10 = v10 + 0.000000001;
      v12 = v12 + 0.000000001;
    }
  }

  else
  {
  }

  v24 = v6;
  v25 = v8;
  v26 = v10;
  v27 = v12;
  result.size.height = v27;
  result.size.width = v26;
  result.origin.y = v25;
  result.origin.x = v24;
  return result;
}

- (unint64_t)maskedCornersForLayoutRole:(int64_t)role inAppLayout:(id)layout withMaskedCorners:(unint64_t)corners
{
  layoutCopy = layout;
  v17.receiver = self;
  v17.super_class = SBItemResizeTransitionSwitcherModifier;
  v9 = [(SBTransitionSwitcherModifier *)&v17 maskedCornersForLayoutRole:role inAppLayout:layoutCopy withMaskedCorners:corners];
  v10 = [layoutCopy itemForLayoutRole:role];
  v11 = v10;
  if (v10 && ([(SBDisplayItem *)v10 isEqualToItem:?]& 1) == 0 && [(SBAppLayout *)self->_selectedAppLayout isOrContainsAppLayout:layoutCopy])
  {
    v12 = [(SBSwitcherModifier *)self flexibleAutoLayoutSpaceForAppLayout:layoutCopy];
    v13 = [v12 flexibleAutoLayoutItemForDisplayItem:v11];
    intersectedDisplayRectCorners = [v13 intersectedDisplayRectCorners];
    v15 = v9 & 0xFFFFFFFFFFFFFFFELL;
    if ((intersectedDisplayRectCorners & 1) == 0)
    {
      v15 = v9;
    }

    if ((intersectedDisplayRectCorners & 2) != 0)
    {
      v15 &= ~2uLL;
    }

    if ((intersectedDisplayRectCorners & 4) != 0)
    {
      v15 &= ~4uLL;
    }

    if ((intersectedDisplayRectCorners & 8) != 0)
    {
      v9 = v15 & 0xFFFFFFFFFFFFFFF7;
    }

    else
    {
      v9 = v15;
    }
  }

  return v9;
}

- (id)animationAttributesForLayoutElement:(id)element
{
  elementCopy = element;
  v13.receiver = self;
  v13.super_class = SBItemResizeTransitionSwitcherModifier;
  v5 = [(SBTransitionSwitcherModifier *)&v13 animationAttributesForLayoutElement:elementCopy];
  v6 = [v5 mutableCopy];

  if ([elementCopy switcherLayoutElementType] || !objc_msgSend(elementCopy, "isOrContainsAppLayout:", self->_selectedAppLayout))
  {
    if ([elementCopy isAppLayout])
    {
      appLayout = [elementCopy appLayout];
      v11 = [(SBItemResizeTransitionSwitcherModifier *)self prioritizesSortOrderForAppLayout:appLayout];

      if (v11)
      {
        [v6 setUpdateMode:2];
        [v6 setLayoutUpdateMode:2];
      }
    }
  }

  else
  {
    [v6 setLayoutUpdateMode:3];
    switcherSettings = [(SBItemResizeTransitionSwitcherModifier *)self switcherSettings];
    windowingSettings = [switcherSettings windowingSettings];
    liveResizeAfterReleaseLayoutAnimationSettings = [windowingSettings liveResizeAfterReleaseLayoutAnimationSettings];
    [v6 setLayoutSettings:liveResizeAfterReleaseLayoutAnimationSettings];
  }

  return v6;
}

- (BOOL)wantsSceneResizesHostedContextForAppLayout:(id)layout
{
  layoutCopy = layout;
  if ([layoutCopy isOrContainsAppLayout:self->_selectedAppLayout])
  {
    v5 = 1;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = SBItemResizeTransitionSwitcherModifier;
    v5 = [(SBItemResizeTransitionSwitcherModifier *)&v7 wantsSceneResizesHostedContextForAppLayout:layoutCopy];
  }

  return v5;
}

- (double)fadeInDelayForSplitViewHandles
{
  switcherSettings = [(SBItemResizeTransitionSwitcherModifier *)self switcherSettings];
  windowingSettings = [switcherSettings windowingSettings];
  [windowingSettings percentageOfTransitionForSplitViewHandleFadeInDelay];
  v5 = v4;
  animationSettings = [switcherSettings animationSettings];
  layoutSettings = [animationSettings layoutSettings];
  [layoutSettings settlingDuration];
  v9 = v5 * v8;

  return v9;
}

@end