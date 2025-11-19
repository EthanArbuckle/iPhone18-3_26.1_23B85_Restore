@interface SBContinuousExposeWindowDragContainerGestureSwitcherModifier
- (SBContinuousExposeWindowDragContainerGestureSwitcherModifier)initWithContainerModifier:(id)a3 gestureID:(id)a4;
- (unint64_t)maskedCornersForLayoutRole:(int64_t)a3 inAppLayout:(id)a4 withMaskedCorners:(unint64_t)a5;
- (void)setState:(int64_t)a3;
@end

@implementation SBContinuousExposeWindowDragContainerGestureSwitcherModifier

- (SBContinuousExposeWindowDragContainerGestureSwitcherModifier)initWithContainerModifier:(id)a3 gestureID:(id)a4
{
  v6 = a3;
  v11.receiver = self;
  v11.super_class = SBContinuousExposeWindowDragContainerGestureSwitcherModifier;
  v7 = [(SBGestureSwitcherModifier *)&v11 initWithGestureID:a4];
  if (v7)
  {
    v8 = [v6 selectedDisplayItem];
    selectedDisplayItem = v7->_selectedDisplayItem;
    v7->_selectedDisplayItem = v8;

    [(SBChainableModifier *)v7 addChildModifier:v6];
  }

  return v7;
}

- (unint64_t)maskedCornersForLayoutRole:(int64_t)a3 inAppLayout:(id)a4 withMaskedCorners:(unint64_t)a5
{
  v8 = a4;
  v19.receiver = self;
  v19.super_class = SBContinuousExposeWindowDragContainerGestureSwitcherModifier;
  v9 = [(SBGestureSwitcherModifier *)&v19 maskedCornersForLayoutRole:a3 inAppLayout:v8 withMaskedCorners:a5];
  v10 = [v8 itemForLayoutRole:a3];
  v11 = v10;
  if (v10)
  {
    if (([(SBDisplayItem *)v10 isEqualToItem:?]& 1) == 0)
    {
      v12 = [(SBContinuousExposeWindowDragContainerGestureSwitcherModifier *)self appLayoutOnStage];
      v13 = [v12 isOrContainsAppLayout:v8];

      if (v13)
      {
        v14 = [(SBSwitcherModifier *)self flexibleAutoLayoutSpaceForAppLayout:v8];
        v15 = [v14 flexibleAutoLayoutItemForDisplayItem:v11];
        v16 = [v15 intersectedDisplayRectCorners];
        v17 = v9 & 0xFFFFFFFFFFFFFFFELL;
        if ((v16 & 1) == 0)
        {
          v17 = v9;
        }

        if ((v16 & 2) != 0)
        {
          v17 &= ~2uLL;
        }

        if ((v16 & 4) != 0)
        {
          v17 &= ~4uLL;
        }

        if ((v16 & 8) != 0)
        {
          v9 = v17 & 0xFFFFFFFFFFFFFFF7;
        }

        else
        {
          v9 = v17;
        }
      }
    }
  }

  return v9;
}

- (void)setState:(int64_t)a3
{
  v5 = [(SBChainableModifier *)self state];
  if (a3 == 1 && v5 != 1)
  {
    [(SBContinuousExposeWindowDragContainerGestureSwitcherModifier *)self newAppLayoutsGenCount];
  }

  v6.receiver = self;
  v6.super_class = SBContinuousExposeWindowDragContainerGestureSwitcherModifier;
  [(SBChainableModifier *)&v6 setState:a3];
}

@end