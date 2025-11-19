@interface SBItemResizeTransitionSwitcherModifier
- (BOOL)wantsSceneResizesHostedContextForAppLayout:(id)a3;
- (CGRect)frameForIndex:(unint64_t)a3;
- (SBItemResizeTransitionSwitcherModifier)initWithTransitionID:(id)a3 selectedAppLayout:(id)a4 selectedLayoutRole:(int64_t)a5;
- (double)fadeInDelayForSplitViewHandles;
- (id)animationAttributesForLayoutElement:(id)a3;
- (unint64_t)maskedCornersForLayoutRole:(int64_t)a3 inAppLayout:(id)a4 withMaskedCorners:(unint64_t)a5;
@end

@implementation SBItemResizeTransitionSwitcherModifier

- (SBItemResizeTransitionSwitcherModifier)initWithTransitionID:(id)a3 selectedAppLayout:(id)a4 selectedLayoutRole:(int64_t)a5
{
  v9 = a4;
  v15.receiver = self;
  v15.super_class = SBItemResizeTransitionSwitcherModifier;
  v10 = [(SBTransitionSwitcherModifier *)&v15 initWithTransitionID:a3];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_selectedAppLayout, a4);
    v12 = [v9 itemForLayoutRole:a5];
    selectedDisplayItem = v11->_selectedDisplayItem;
    v11->_selectedDisplayItem = v12;
  }

  return v11;
}

- (CGRect)frameForIndex:(unint64_t)a3
{
  v29.receiver = self;
  v29.super_class = SBItemResizeTransitionSwitcherModifier;
  [(SBItemResizeTransitionSwitcherModifier *)&v29 frameForIndex:?];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = [(SBItemResizeTransitionSwitcherModifier *)self appLayouts];
  v14 = [v13 objectAtIndex:a3];
  if ([v14 isOrContainsAppLayout:self->_selectedAppLayout])
  {
    v28.receiver = self;
    v28.super_class = SBItemResizeTransitionSwitcherModifier;
    [(SBItemResizeTransitionSwitcherModifier *)&v28 frameForIndex:a3];
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

- (unint64_t)maskedCornersForLayoutRole:(int64_t)a3 inAppLayout:(id)a4 withMaskedCorners:(unint64_t)a5
{
  v8 = a4;
  v17.receiver = self;
  v17.super_class = SBItemResizeTransitionSwitcherModifier;
  v9 = [(SBTransitionSwitcherModifier *)&v17 maskedCornersForLayoutRole:a3 inAppLayout:v8 withMaskedCorners:a5];
  v10 = [v8 itemForLayoutRole:a3];
  v11 = v10;
  if (v10 && ([(SBDisplayItem *)v10 isEqualToItem:?]& 1) == 0 && [(SBAppLayout *)self->_selectedAppLayout isOrContainsAppLayout:v8])
  {
    v12 = [(SBSwitcherModifier *)self flexibleAutoLayoutSpaceForAppLayout:v8];
    v13 = [v12 flexibleAutoLayoutItemForDisplayItem:v11];
    v14 = [v13 intersectedDisplayRectCorners];
    v15 = v9 & 0xFFFFFFFFFFFFFFFELL;
    if ((v14 & 1) == 0)
    {
      v15 = v9;
    }

    if ((v14 & 2) != 0)
    {
      v15 &= ~2uLL;
    }

    if ((v14 & 4) != 0)
    {
      v15 &= ~4uLL;
    }

    if ((v14 & 8) != 0)
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

- (id)animationAttributesForLayoutElement:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = SBItemResizeTransitionSwitcherModifier;
  v5 = [(SBTransitionSwitcherModifier *)&v13 animationAttributesForLayoutElement:v4];
  v6 = [v5 mutableCopy];

  if ([v4 switcherLayoutElementType] || !objc_msgSend(v4, "isOrContainsAppLayout:", self->_selectedAppLayout))
  {
    if ([v4 isAppLayout])
    {
      v10 = [v4 appLayout];
      v11 = [(SBItemResizeTransitionSwitcherModifier *)self prioritizesSortOrderForAppLayout:v10];

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
    v7 = [(SBItemResizeTransitionSwitcherModifier *)self switcherSettings];
    v8 = [v7 windowingSettings];
    v9 = [v8 liveResizeAfterReleaseLayoutAnimationSettings];
    [v6 setLayoutSettings:v9];
  }

  return v6;
}

- (BOOL)wantsSceneResizesHostedContextForAppLayout:(id)a3
{
  v4 = a3;
  if ([v4 isOrContainsAppLayout:self->_selectedAppLayout])
  {
    v5 = 1;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = SBItemResizeTransitionSwitcherModifier;
    v5 = [(SBItemResizeTransitionSwitcherModifier *)&v7 wantsSceneResizesHostedContextForAppLayout:v4];
  }

  return v5;
}

- (double)fadeInDelayForSplitViewHandles
{
  v2 = [(SBItemResizeTransitionSwitcherModifier *)self switcherSettings];
  v3 = [v2 windowingSettings];
  [v3 percentageOfTransitionForSplitViewHandleFadeInDelay];
  v5 = v4;
  v6 = [v2 animationSettings];
  v7 = [v6 layoutSettings];
  [v7 settlingDuration];
  v9 = v5 * v8;

  return v9;
}

@end