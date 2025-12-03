@interface SBContinuousExposeWindowDragRootSwitcherModifier
- (SBContinuousExposeWindowDragRootSwitcherModifier)initWithStartingEnvironmentMode:(int64_t)mode initialAppLayout:(id)layout;
- (id)appLayoutsToResignActive;
- (id)gestureChildModifierForGestureEvent:(id)event activeTransitionModifier:(id)modifier;
- (id)handleGestureEvent:(id)event;
- (id)handleSceneReadyEvent:(id)event;
- (id)handleTransitionEvent:(id)event;
- (id)keyboardSuppressionMode;
- (id)transitionChildModifierForMainTransitionEvent:(id)event activeGestureModifier:(id)modifier;
@end

@implementation SBContinuousExposeWindowDragRootSwitcherModifier

- (SBContinuousExposeWindowDragRootSwitcherModifier)initWithStartingEnvironmentMode:(int64_t)mode initialAppLayout:(id)layout
{
  layoutCopy = layout;
  v11.receiver = self;
  v11.super_class = SBContinuousExposeWindowDragRootSwitcherModifier;
  v8 = [(SBGestureRootSwitcherModifier *)&v11 initWithStartingEnvironmentMode:mode];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_initialAppLayout, layout);
  }

  return v9;
}

- (id)gestureChildModifierForGestureEvent:(id)event activeTransitionModifier:(id)modifier
{
  v24[1] = *MEMORY[0x277D85DE8];
  eventCopy = event;
  selectedAppLayout = [(SBGestureRootSwitcherModifier *)self selectedAppLayout];
  v6 = [selectedAppLayout itemForLayoutRole:1];
  v23.receiver = self;
  v23.super_class = SBContinuousExposeWindowDragRootSwitcherModifier;
  wantsSlideOverTongue = [(SBContinuousExposeWindowDragRootSwitcherModifier *)&v23 wantsSlideOverTongue];
  v22.receiver = self;
  v22.super_class = SBContinuousExposeWindowDragRootSwitcherModifier;
  slideOverTongueState = [(SBContinuousExposeWindowDragRootSwitcherModifier *)&v22 slideOverTongueState];
  v21.receiver = self;
  v21.super_class = SBContinuousExposeWindowDragRootSwitcherModifier;
  slideOverTongueDirection = [(SBContinuousExposeWindowDragRootSwitcherModifier *)&v21 slideOverTongueDirection];
  gestureID = [eventCopy gestureID];
  currentGestureID = self->_currentGestureID;
  self->_currentGestureID = gestureID;

  v12 = [SBContinuousExposeWindowDragContentSwitcherModifier alloc];
  gestureID2 = [eventCopy gestureID];

  v14 = [(SBContinuousExposeWindowDragContentSwitcherModifier *)v12 initWithGestureID:gestureID2 initialAppLayout:self->_initialAppLayout selectedDisplayItem:v6 wantsSlideOverTongue:wantsSlideOverTongue slideOverTongueState:slideOverTongueState slideOverTongueDirection:slideOverTongueDirection];
  v15 = [SBContinuousExposeWindowDragContainerSwitcherModifier alloc];
  v24[0] = selectedAppLayout;
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:1];
  v17 = [(SBContinuousExposeWindowDragContainerSwitcherModifier *)v15 initWithAppLayouts:v16 initialAppLayout:self->_initialAppLayout selectedDisplayItem:v6 windowDragContentSwitcherModifier:v14];

  v18 = [[SBContinuousExposeWindowDragContainerGestureSwitcherModifier alloc] initWithContainerModifier:v17 gestureID:self->_currentGestureID];

  return v18;
}

- (id)transitionChildModifierForMainTransitionEvent:(id)event activeGestureModifier:(id)modifier
{
  eventCopy = event;
  v6 = [SBContinuousExposeWindowDropSwitcherModifier alloc];
  transitionID = [eventCopy transitionID];
  selectedAppLayout = [(SBGestureRootSwitcherModifier *)self selectedAppLayout];
  v9 = [selectedAppLayout itemForLayoutRole:1];
  toAppLayout = [eventCopy toAppLayout];

  v11 = [(SBContinuousExposeWindowDropSwitcherModifier *)v6 initWithTransitionID:transitionID selectedDisplayItem:v9 toAppLayout:toAppLayout initialAppLayout:self->_initialAppLayout liftOffVelocity:self->_velocity.x, self->_velocity.y];

  return v11;
}

- (id)handleGestureEvent:(id)event
{
  eventCopy = event;
  v14.receiver = self;
  v14.super_class = SBContinuousExposeWindowDragRootSwitcherModifier;
  v5 = [(SBGestureRootSwitcherModifier *)&v14 handleGestureEvent:eventCopy];
  if (![eventCopy phase] && objc_msgSend(eventCopy, "gestureType") == 9)
  {
    v6 = objc_alloc_init(SBInvalidateAdjustedAppLayoutsSwitcherEventResponse);
    v7 = SBAppendSwitcherModifierResponse(v6, v5);

    [(SBChainableModifier *)self setState:1];
    v5 = v7;
  }

  if ([eventCopy phase] == 1)
  {
    v8 = objc_alloc_init(SBInvalidateAdjustedAppLayoutsSwitcherEventResponse);
    v9 = SBAppendSwitcherModifierResponse(v8, v5);

    v5 = v9;
  }

  p_velocity = &self->_velocity;
  [eventCopy velocityInContainerView];
  p_velocity->x = v11;
  p_velocity->y = v12;

  return v5;
}

- (id)handleTransitionEvent:(id)event
{
  eventCopy = event;
  v11.receiver = self;
  v11.super_class = SBContinuousExposeWindowDragRootSwitcherModifier;
  v6 = [(SBGestureRootSwitcherModifier *)&v11 handleTransitionEvent:eventCopy];
  toAppLayout = [eventCopy toAppLayout];
  v8 = toAppLayout;
  if (!toAppLayout)
  {
    v3 = +[SBAppLayout homeScreenAppLayout];
    v8 = [v3 appLayoutByModifyingPreferredDisplayOrdinal:{-[SBContinuousExposeWindowDragRootSwitcherModifier displayOrdinal](self, "displayOrdinal")}];
  }

  objc_storeStrong(&self->_initialAppLayout, v8);
  if (!toAppLayout)
  {
  }

  if ([eventCopy phase] == 1 && (objc_msgSend(eventCopy, "isAppLaunchDuringWindowDragGestureTransition") & 1) == 0 && (objc_msgSend(eventCopy, "isUnstashFromHomeTransition") & 1) == 0)
  {
    gestureModifier = [(SBGestureRootSwitcherModifier *)self gestureModifier];
    [gestureModifier setState:1];
  }

  if ([eventCopy phase] == 3 && (objc_msgSend(eventCopy, "isAppLaunchDuringWindowDragGestureTransition") & 1) == 0 && (objc_msgSend(eventCopy, "isUnstashFromHomeTransition") & 1) == 0)
  {
    [(SBChainableModifier *)self setState:1];
  }

  return v6;
}

- (id)handleSceneReadyEvent:(id)event
{
  v11.receiver = self;
  v11.super_class = SBContinuousExposeWindowDragRootSwitcherModifier;
  eventCopy = event;
  v5 = [(SBSwitcherModifier *)&v11 handleSceneReadyEvent:eventCopy];
  initialAppLayout = self->_initialAppLayout;
  appLayout = [eventCopy appLayout];

  LODWORD(initialAppLayout) = [(SBAppLayout *)initialAppLayout containsAllItemsFromAppLayout:appLayout];
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
  windowManagementContext = [(SBContinuousExposeWindowDragRootSwitcherModifier *)self windowManagementContext];
  isFlexibleWindowingEnabled = [windowManagementContext isFlexibleWindowingEnabled];

  if (isFlexibleWindowingEnabled)
  {
    v10.receiver = self;
    v10.super_class = SBContinuousExposeWindowDragRootSwitcherModifier;
    appLayoutsToResignActive = [(SBContinuousExposeWindowDragRootSwitcherModifier *)&v10 appLayoutsToResignActive];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __76__SBContinuousExposeWindowDragRootSwitcherModifier_appLayoutsToResignActive__block_invoke;
    v8[3] = &unk_2783AF2A0;
    v9 = &unk_2833703B8;
    v6 = [appLayoutsToResignActive bs_filter:v8];
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
    appLayouts = [(SBContinuousExposeWindowDragRootSwitcherModifier *)&v8 appLayouts];
    v5 = [v3 setWithArray:appLayouts];
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