@interface SBContinuousExposeWindowDragContentSwitcherModifier
- (BOOL)wantsSlideOverTongue;
- (SBContinuousExposeWindowDragContentSwitcherModifier)initWithGestureID:(id)a3 initialAppLayout:(id)a4 selectedDisplayItem:(id)a5 wantsSlideOverTongue:(BOOL)a6 slideOverTongueState:(unint64_t)a7 slideOverTongueDirection:(unint64_t)a8;
- (id)adjustedAppLayoutsForAppLayouts:(id)a3;
- (unint64_t)slideOverTongueDirection;
- (unint64_t)slideOverTongueState;
- (void)_createFloorAndMultitaskingModifiersWithAppLayout:(id)a3;
- (void)setDelegate:(id)a3;
- (void)updateFloorModifiersWithAppLayout:(id)a3;
@end

@implementation SBContinuousExposeWindowDragContentSwitcherModifier

- (SBContinuousExposeWindowDragContentSwitcherModifier)initWithGestureID:(id)a3 initialAppLayout:(id)a4 selectedDisplayItem:(id)a5 wantsSlideOverTongue:(BOOL)a6 slideOverTongueState:(unint64_t)a7 slideOverTongueDirection:(unint64_t)a8
{
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v21.receiver = self;
  v21.super_class = SBContinuousExposeWindowDragContentSwitcherModifier;
  v18 = [(SBSwitcherModifier *)&v21 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_selectedDisplayItem, a5);
    objc_storeStrong(&v19->_initialAppLayout, a4);
    objc_storeStrong(&v19->_gestureID, a3);
    v19->_wantsSlideOverTongue = a6;
    v19->_slideOverTongueState = a7;
    v19->_slideOverTongueDirection = a8;
    [(SBContinuousExposeWindowDragContentSwitcherModifier *)v19 _createFloorAndMultitaskingModifiersWithAppLayout:v16];
  }

  return v19;
}

- (void)setDelegate:(id)a3
{
  v7.receiver = self;
  v7.super_class = SBContinuousExposeWindowDragContentSwitcherModifier;
  [(SBChainableModifier *)&v7 setDelegate:?];
  if (a3)
  {
    if (!self->_gestureModifier)
    {
      v5 = [[SBFlexibleWindowingWindowDragSwitcherModifier alloc] initWithGestureID:self->_gestureID initialAppLayout:self->_initialAppLayout selectedDisplayItem:self->_selectedDisplayItem wantsSlideOverTongue:self->_wantsSlideOverTongue slideOverTongueState:self->_slideOverTongueState slideOverTongueDirection:self->_slideOverTongueDirection];
      gestureModifier = self->_gestureModifier;
      self->_gestureModifier = v5;

      [(SBChainableModifier *)self addChildModifier:self->_gestureModifier atLevel:0 key:0];
    }
  }
}

- (void)updateFloorModifiersWithAppLayout:(id)a3
{
  v6 = a3;
  v4 = [(SBChainableModifier *)self childModifierByKey:@"SBContinuousExposeWindowDragContentSwitcherModifierFloorModifier"];
  if (v4)
  {
    [(SBChainableModifier *)self removeChildModifier:v4];
  }

  v5 = [(SBChainableModifier *)self childModifierByKey:@"SBContinuousExposeWindowDragContentSwitcherModifierMultitaskingModifier"];
  if (v5)
  {
    [(SBChainableModifier *)self removeChildModifier:v5];
  }

  [(SBContinuousExposeWindowDragContentSwitcherModifier *)self _createFloorAndMultitaskingModifiersWithAppLayout:v6];
}

- (void)_createFloorAndMultitaskingModifiersWithAppLayout:(id)a3
{
  v4 = a3;
  v6 = [[SBFullScreenContinuousExposeSwitcherModifier alloc] initWithFullScreenAppLayout:v4];

  [(SBFullScreenContinuousExposeSwitcherModifier *)v6 setHandlesTapAppLayoutEvents:0];
  [(SBFullScreenContinuousExposeSwitcherModifier *)v6 setHandlesTapAppLayoutHeaderEvents:0];
  [(SBChainableModifier *)self addChildModifier:v6 atLevel:1 key:@"SBContinuousExposeWindowDragContentSwitcherModifierFloorModifier"];
  v5 = objc_alloc_init(SBAppSwitcherContinuousExposeSwitcherModifier);
  [(SBAppSwitcherContinuousExposeSwitcherModifier *)v5 setHandlesTapAppLayoutEvents:0];
  [(SBAppSwitcherContinuousExposeSwitcherModifier *)v5 setHandlesTapAppLayoutHeaderEvents:0];
  [(SBChainableModifier *)self addChildModifier:v5 atLevel:2 key:@"SBContinuousExposeWindowDragContentSwitcherModifierMultitaskingModifier"];
}

- (id)adjustedAppLayoutsForAppLayouts:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v16.receiver = self;
  v16.super_class = SBContinuousExposeWindowDragContentSwitcherModifier;
  v7 = [(SBContinuousExposeWindowDragContentSwitcherModifier *)&v16 adjustedAppLayoutsForAppLayouts:v4];
  v8 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v18;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v18 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v17 + 1) + 8 * i);
        if ([v12 containsItem:self->_selectedDisplayItem])
        {
          v13 = v5;
        }

        else
        {
          v13 = v6;
        }

        [v13 addObject:v12];
      }

      v9 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v9);
  }

  v14 = [v5 arrayByAddingObjectsFromArray:v6];

  return v14;
}

- (BOOL)wantsSlideOverTongue
{
  v3.receiver = self;
  v3.super_class = SBContinuousExposeWindowDragContentSwitcherModifier;
  return [(SBContinuousExposeWindowDragContentSwitcherModifier *)&v3 wantsSlideOverTongue];
}

- (unint64_t)slideOverTongueState
{
  v3.receiver = self;
  v3.super_class = SBContinuousExposeWindowDragContentSwitcherModifier;
  return [(SBContinuousExposeWindowDragContentSwitcherModifier *)&v3 slideOverTongueState];
}

- (unint64_t)slideOverTongueDirection
{
  v3.receiver = self;
  v3.super_class = SBContinuousExposeWindowDragContentSwitcherModifier;
  return [(SBContinuousExposeWindowDragContentSwitcherModifier *)&v3 slideOverTongueDirection];
}

@end