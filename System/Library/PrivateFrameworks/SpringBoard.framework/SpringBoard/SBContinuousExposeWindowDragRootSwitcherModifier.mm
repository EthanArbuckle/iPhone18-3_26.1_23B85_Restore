@interface SBContinuousExposeWindowDragRootSwitcherModifier
- (SBContinuousExposeWindowDragRootSwitcherModifier)initWithStartingEnvironmentMode:(int64_t)a3 initialAppLayout:(id)a4;
- (id)appLayoutsToResignActive;
- (id)gestureChildModifierForGestureEvent:(id)a3 activeTransitionModifier:(id)a4;
- (id)handleGestureEvent:(id)a3;
- (id)handleSceneReadyEvent:(id)a3;
- (id)handleTransitionEvent:(id)a3;
- (id)keyboardSuppressionMode;
- (id)transitionChildModifierForMainTransitionEvent:(id)a3 activeGestureModifier:(id)a4;
@end

@implementation SBContinuousExposeWindowDragRootSwitcherModifier

- (SBContinuousExposeWindowDragRootSwitcherModifier)initWithStartingEnvironmentMode:(int64_t)a3 initialAppLayout:(id)a4
{
  v7 = a4;
  v11.receiver = self;
  v11.super_class = SBContinuousExposeWindowDragRootSwitcherModifier;
  v8 = [(SBGestureRootSwitcherModifier *)&v11 initWithStartingEnvironmentMode:a3];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_initialAppLayout, a4);
  }

  return v9;
}

- (id)gestureChildModifierForGestureEvent:(id)a3 activeTransitionModifier:(id)a4
{
  v24[1] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v20 = [(SBGestureRootSwitcherModifier *)self selectedAppLayout];
  v6 = [v20 itemForLayoutRole:1];
  v23.receiver = self;
  v23.super_class = SBContinuousExposeWindowDragRootSwitcherModifier;
  v7 = [(SBContinuousExposeWindowDragRootSwitcherModifier *)&v23 wantsSlideOverTongue];
  v22.receiver = self;
  v22.super_class = SBContinuousExposeWindowDragRootSwitcherModifier;
  v8 = [(SBContinuousExposeWindowDragRootSwitcherModifier *)&v22 slideOverTongueState];
  v21.receiver = self;
  v21.super_class = SBContinuousExposeWindowDragRootSwitcherModifier;
  v9 = [(SBContinuousExposeWindowDragRootSwitcherModifier *)&v21 slideOverTongueDirection];
  v10 = [v5 gestureID];
  currentGestureID = self->_currentGestureID;
  self->_currentGestureID = v10;

  v12 = [SBContinuousExposeWindowDragContentSwitcherModifier alloc];
  v13 = [v5 gestureID];

  v14 = [(SBContinuousExposeWindowDragContentSwitcherModifier *)v12 initWithGestureID:v13 initialAppLayout:self->_initialAppLayout selectedDisplayItem:v6 wantsSlideOverTongue:v7 slideOverTongueState:v8 slideOverTongueDirection:v9];
  v15 = [SBContinuousExposeWindowDragContainerSwitcherModifier alloc];
  v24[0] = v20;
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:1];
  v17 = [(SBContinuousExposeWindowDragContainerSwitcherModifier *)v15 initWithAppLayouts:v16 initialAppLayout:self->_initialAppLayout selectedDisplayItem:v6 windowDragContentSwitcherModifier:v14];

  v18 = [[SBContinuousExposeWindowDragContainerGestureSwitcherModifier alloc] initWithContainerModifier:v17 gestureID:self->_currentGestureID];

  return v18;
}

- (id)transitionChildModifierForMainTransitionEvent:(id)a3 activeGestureModifier:(id)a4
{
  v5 = a3;
  v6 = [SBContinuousExposeWindowDropSwitcherModifier alloc];
  v7 = [v5 transitionID];
  v8 = [(SBGestureRootSwitcherModifier *)self selectedAppLayout];
  v9 = [v8 itemForLayoutRole:1];
  v10 = [v5 toAppLayout];

  v11 = [(SBContinuousExposeWindowDropSwitcherModifier *)v6 initWithTransitionID:v7 selectedDisplayItem:v9 toAppLayout:v10 initialAppLayout:self->_initialAppLayout liftOffVelocity:self->_velocity.x, self->_velocity.y];

  return v11;
}

- (id)handleGestureEvent:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = SBContinuousExposeWindowDragRootSwitcherModifier;
  v5 = [(SBGestureRootSwitcherModifier *)&v14 handleGestureEvent:v4];
  if (![v4 phase] && objc_msgSend(v4, "gestureType") == 9)
  {
    v6 = objc_alloc_init(SBInvalidateAdjustedAppLayoutsSwitcherEventResponse);
    v7 = SBAppendSwitcherModifierResponse(v6, v5);

    [(SBChainableModifier *)self setState:1];
    v5 = v7;
  }

  if ([v4 phase] == 1)
  {
    v8 = objc_alloc_init(SBInvalidateAdjustedAppLayoutsSwitcherEventResponse);
    v9 = SBAppendSwitcherModifierResponse(v8, v5);

    v5 = v9;
  }

  p_velocity = &self->_velocity;
  [v4 velocityInContainerView];
  p_velocity->x = v11;
  p_velocity->y = v12;

  return v5;
}

- (id)handleTransitionEvent:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = SBContinuousExposeWindowDragRootSwitcherModifier;
  v6 = [(SBGestureRootSwitcherModifier *)&v11 handleTransitionEvent:v5];
  v7 = [v5 toAppLayout];
  v8 = v7;
  if (!v7)
  {
    v3 = +[SBAppLayout homeScreenAppLayout];
    v8 = [v3 appLayoutByModifyingPreferredDisplayOrdinal:{-[SBContinuousExposeWindowDragRootSwitcherModifier displayOrdinal](self, "displayOrdinal")}];
  }

  objc_storeStrong(&self->_initialAppLayout, v8);
  if (!v7)
  {
  }

  if ([v5 phase] == 1 && (objc_msgSend(v5, "isAppLaunchDuringWindowDragGestureTransition") & 1) == 0 && (objc_msgSend(v5, "isUnstashFromHomeTransition") & 1) == 0)
  {
    v9 = [(SBGestureRootSwitcherModifier *)self gestureModifier];
    [v9 setState:1];
  }

  if ([v5 phase] == 3 && (objc_msgSend(v5, "isAppLaunchDuringWindowDragGestureTransition") & 1) == 0 && (objc_msgSend(v5, "isUnstashFromHomeTransition") & 1) == 0)
  {
    [(SBChainableModifier *)self setState:1];
  }

  return v6;
}

- (id)handleSceneReadyEvent:(id)a3
{
  v11.receiver = self;
  v11.super_class = SBContinuousExposeWindowDragRootSwitcherModifier;
  v4 = a3;
  v5 = [(SBSwitcherModifier *)&v11 handleSceneReadyEvent:v4];
  initialAppLayout = self->_initialAppLayout;
  v7 = [v4 appLayout];

  LODWORD(initialAppLayout) = [(SBAppLayout *)initialAppLayout containsAllItemsFromAppLayout:v7];
  if (initialAppLayout)
  {
    v8 = [[SBUpdateLayoutSwitcherEventResponse alloc] initWithOptions:30 updateMode:0];
    v9 = SBAppendSwitcherModifierResponse(v8, v5);

    v5 = v9;
  }

  return v5;
}

- (id)appLayoutsToResignActive
{
  v3 = [(SBContinuousExposeWindowDragRootSwitcherModifier *)self windowManagementContext];
  v4 = [v3 isFlexibleWindowingEnabled];

  if (v4)
  {
    v10.receiver = self;
    v10.super_class = SBContinuousExposeWindowDragRootSwitcherModifier;
    v5 = [(SBContinuousExposeWindowDragRootSwitcherModifier *)&v10 appLayoutsToResignActive];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __76__SBContinuousExposeWindowDragRootSwitcherModifier_appLayoutsToResignActive__block_invoke;
    v8[3] = &unk_2783AF2A0;
    v9 = &unk_2833703B8;
    v6 = [v5 bs_filter:v8];
  }

  else
  {
    v6 = MEMORY[0x277CBEC10];
  }

  return v6;
}

- (id)keyboardSuppressionMode
{
  if ([(SBContinuousExposeWindowDragRootSwitcherModifier *)self isSoftwareKeyboardVisible])
  {
    v3 = MEMORY[0x277CBEB98];
    v8.receiver = self;
    v8.super_class = SBContinuousExposeWindowDragRootSwitcherModifier;
    v4 = [(SBContinuousExposeWindowDragRootSwitcherModifier *)&v8 appLayouts];
    v5 = [v3 setWithArray:v4];
    v6 = [SBSwitcherKeyboardSuppressionMode newSuppressionModeForSwitcherScenesFromAppLayouts:v5];

    [v6 setApplyAssertionEvenIfAppIsHostingTheKeyboard:1];
  }

  else
  {
    v6 = +[SBSwitcherKeyboardSuppressionMode suppressionModeNone];
  }

  return v6;
}

@end