@interface SBSlideOverPeekSwitcherModifier
- (CGRect)frameForIndex:(unint64_t)index;
- (SBSlideOverPeekSwitcherModifier)initWithAppLayout:(id)layout peekConfiguration:(int64_t)configuration environmentMode:(int64_t)mode fromFloatingConfiguration:(int64_t)floatingConfiguration;
- (id)copyWithZone:(_NSZone *)zone;
- (id)handleTapAppLayoutEvent:(id)event;
- (id)keyboardSuppressionMode;
- (id)visibleHomeAffordanceLayoutElements;
- (unint64_t)slideOverTongueDirection;
@end

@implementation SBSlideOverPeekSwitcherModifier

- (SBSlideOverPeekSwitcherModifier)initWithAppLayout:(id)layout peekConfiguration:(int64_t)configuration environmentMode:(int64_t)mode fromFloatingConfiguration:(int64_t)floatingConfiguration
{
  layoutCopy = layout;
  if (!layoutCopy)
  {
    [SBSlideOverPeekSwitcherModifier initWithAppLayout:a2 peekConfiguration:self environmentMode:? fromFloatingConfiguration:?];
  }

  v19.receiver = self;
  v19.super_class = SBSlideOverPeekSwitcherModifier;
  v13 = [(SBSwitcherModifier *)&v19 init];
  if (v13)
  {
    v14 = +[SBAppSwitcherDomain rootSettings];
    switcherSettings = v13->_switcherSettings;
    v13->_switcherSettings = v14;

    objc_storeStrong(&v13->_peekingAppLayout, layout);
    v13->_peekConfiguration = configuration;
    v13->_environmentMode = mode;
    v13->_fromFloatingConfiguration = floatingConfiguration;
    v16 = [[SBActiveAppLayoutFloatingSwitcherModifier alloc] initWithActiveAppLayout:layoutCopy fullScreenAppLayout:0 floatingConfiguration:2 environmentMode:mode];
    floorModifier = v13->_floorModifier;
    v13->_floorModifier = v16;

    [(SBChainableModifier *)v13 addChildModifier:v13->_floorModifier];
  }

  return v13;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  v5 = [(SBAppLayout *)self->_peekingAppLayout copy];
  v6 = [v4 initWithAppLayout:v5 peekConfiguration:self->_peekConfiguration environmentMode:self->_environmentMode fromFloatingConfiguration:self->_fromFloatingConfiguration];

  return v6;
}

- (CGRect)frameForIndex:(unint64_t)index
{
  v24.receiver = self;
  v24.super_class = SBSlideOverPeekSwitcherModifier;
  [(SBSlideOverPeekSwitcherModifier *)&v24 frameForIndex:?];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  appLayouts = [(SBSlideOverPeekSwitcherModifier *)self appLayouts];
  v14 = [appLayouts objectAtIndex:index];

  if ([v14 isEqual:self->_peekingAppLayout])
  {
    peekConfiguration = self->_peekConfiguration;
    if (peekConfiguration == 3)
    {
      if (![(SBSlideOverPeekSwitcherModifier *)self isRTLEnabled])
      {
LABEL_7:
        [(SBSlideOverPeekSwitcherModifier *)self switcherViewBounds];
        MaxX = CGRectGetMaxX(v25);
        [(SBAppSwitcherSettings *)self->_switcherSettings peekInsetWidth];
        v6 = MaxX - v17;
        goto LABEL_9;
      }

      peekConfiguration = self->_peekConfiguration;
    }

    if (peekConfiguration != 2 || ![(SBSlideOverPeekSwitcherModifier *)self isRTLEnabled])
    {
      [(SBAppSwitcherSettings *)self->_switcherSettings peekInsetWidth];
      v19 = v18;
      v26.origin.x = v6;
      v26.origin.y = v8;
      v26.size.width = v10;
      v26.size.height = v12;
      v6 = v19 - CGRectGetWidth(v26);
      goto LABEL_9;
    }

    goto LABEL_7;
  }

LABEL_9:

  v20 = v6;
  v21 = v8;
  v22 = v10;
  v23 = v12;
  result.size.height = v23;
  result.size.width = v22;
  result.origin.y = v21;
  result.origin.x = v20;
  return result;
}

- (id)keyboardSuppressionMode
{
  v2 = MEMORY[0x277CBEB98];
  appLayouts = [(SBSlideOverPeekSwitcherModifier *)self appLayouts];
  v4 = [v2 setWithArray:appLayouts];
  v5 = [SBSwitcherKeyboardSuppressionMode newSuppressionModeForSwitcherScenesFromAppLayouts:v4];

  [v5 setApplyAssertionEvenIfAppIsHostingTheKeyboard:1];

  return v5;
}

- (id)visibleHomeAffordanceLayoutElements
{
  v6.receiver = self;
  v6.super_class = SBSlideOverPeekSwitcherModifier;
  visibleHomeAffordanceLayoutElements = [(SBSlideOverPeekSwitcherModifier *)&v6 visibleHomeAffordanceLayoutElements];
  v4 = [visibleHomeAffordanceLayoutElements mutableCopy];

  [v4 removeObject:self->_peekingAppLayout];

  return v4;
}

- (unint64_t)slideOverTongueDirection
{
  if (SBFloatingConfigurationIsLeft(self->_fromFloatingConfiguration))
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

- (id)handleTapAppLayoutEvent:(id)event
{
  v18[1] = *MEMORY[0x277D85DE8];
  eventCopy = event;
  v16.receiver = self;
  v16.super_class = SBSlideOverPeekSwitcherModifier;
  v5 = [(SBSwitcherModifier *)&v16 handleTapAppLayoutEvent:eventCopy];
  appLayout = [eventCopy appLayout];
  v7 = [appLayout isEqual:self->_peekingAppLayout];

  if (v7)
  {
    v8 = [(SBAppLayout *)self->_peekingAppLayout itemForLayoutRole:1];
    v9 = [SBAppLayout alloc];
    v10 = [MEMORY[0x277CCABB0] numberWithInteger:1];
    v17 = v10;
    v18[0] = v8;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:&v17 count:1];
    v12 = [(SBAppLayout *)v9 initWithItemsForLayoutRoles:v11 configuration:1 environment:1 preferredDisplayOrdinal:[(SBSlideOverPeekSwitcherModifier *)self displayOrdinal]];

    v13 = [(SBSwitcherTransitionRequest *)SBMutableSwitcherTransitionRequest requestForTapAppLayoutEvent:eventCopy];
    [v13 setAppLayout:v12];
    [v13 setPeekConfiguration:1];
    [v13 setRetainsSiri:{-[SBSlideOverPeekSwitcherModifier isSystemAssistantExperiencePersistentSiriEnabled](self, "isSystemAssistantExperiencePersistentSiriEnabled")}];
    v14 = [[SBPerformTransitionSwitcherEventResponse alloc] initWithTransitionRequest:v13 gestureInitiated:0];

    v5 = v14;
  }

  return v5;
}

- (void)initWithAppLayout:(uint64_t)a1 peekConfiguration:(uint64_t)a2 environmentMode:fromFloatingConfiguration:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBSlideOverPeekSwitcherModifier.m" lineNumber:36 description:{@"Invalid parameter not satisfying: %@", @"peekingAppLayout"}];
}

@end