@interface SBContinuousExposeWindowDragContainerGestureSwitcherModifier
- (SBContinuousExposeWindowDragContainerGestureSwitcherModifier)initWithContainerModifier:(id)modifier gestureID:(id)d;
- (unint64_t)maskedCornersForLayoutRole:(int64_t)role inAppLayout:(id)layout withMaskedCorners:(unint64_t)corners;
- (void)setState:(int64_t)state;
@end

@implementation SBContinuousExposeWindowDragContainerGestureSwitcherModifier

- (SBContinuousExposeWindowDragContainerGestureSwitcherModifier)initWithContainerModifier:(id)modifier gestureID:(id)d
{
  modifierCopy = modifier;
  v11.receiver = self;
  v11.super_class = SBContinuousExposeWindowDragContainerGestureSwitcherModifier;
  v7 = [(SBGestureSwitcherModifier *)&v11 initWithGestureID:d];
  if (v7)
  {
    selectedDisplayItem = [modifierCopy selectedDisplayItem];
    selectedDisplayItem = v7->_selectedDisplayItem;
    v7->_selectedDisplayItem = selectedDisplayItem;

    [(SBChainableModifier *)v7 addChildModifier:modifierCopy];
  }

  return v7;
}

- (unint64_t)maskedCornersForLayoutRole:(int64_t)role inAppLayout:(id)layout withMaskedCorners:(unint64_t)corners
{
  layoutCopy = layout;
  v19.receiver = self;
  v19.super_class = SBContinuousExposeWindowDragContainerGestureSwitcherModifier;
  v9 = [(SBGestureSwitcherModifier *)&v19 maskedCornersForLayoutRole:role inAppLayout:layoutCopy withMaskedCorners:corners];
  v10 = [layoutCopy itemForLayoutRole:role];
  v11 = v10;
  if (v10)
  {
    if (([(SBDisplayItem *)v10 isEqualToItem:?]& 1) == 0)
    {
      appLayoutOnStage = [(SBContinuousExposeWindowDragContainerGestureSwitcherModifier *)self appLayoutOnStage];
      v13 = [appLayoutOnStage isOrContainsAppLayout:layoutCopy];

      if (v13)
      {
        v14 = [(SBSwitcherModifier *)self flexibleAutoLayoutSpaceForAppLayout:layoutCopy];
        v15 = [v14 flexibleAutoLayoutItemForDisplayItem:v11];
        intersectedDisplayRectCorners = [v15 intersectedDisplayRectCorners];
        v17 = v9 & 0xFFFFFFFFFFFFFFFELL;
        if ((intersectedDisplayRectCorners & 1) == 0)
        {
          v17 = v9;
        }

        if ((intersectedDisplayRectCorners & 2) != 0)
        {
          v17 &= ~2uLL;
        }

        if ((intersectedDisplayRectCorners & 4) != 0)
        {
          v17 &= ~4uLL;
        }

        if ((intersectedDisplayRectCorners & 8) != 0)
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

- (void)setState:(int64_t)state
{
  state = [(SBChainableModifier *)self state];
  if (state == 1 && state != 1)
  {
    [(SBContinuousExposeWindowDragContainerGestureSwitcherModifier *)self newAppLayoutsGenCount];
  }

  v6.receiver = self;
  v6.super_class = SBContinuousExposeWindowDragContainerGestureSwitcherModifier;
  [(SBChainableModifier *)&v6 setState:state];
}

@end