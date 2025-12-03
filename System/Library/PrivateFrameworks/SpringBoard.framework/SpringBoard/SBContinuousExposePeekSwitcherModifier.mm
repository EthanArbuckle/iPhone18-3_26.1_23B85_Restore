@interface SBContinuousExposePeekSwitcherModifier
- (SBContinuousExposePeekSwitcherModifier)initWithAppLayout:(id)layout configuration:(int64_t)configuration;
- (id)appLayoutsForContinuousExposeIdentifier:(id)identifier;
- (id)debugPotentialChildModifiers;
- (id)handleEvent:(id)event;
- (id)handleScrollEvent:(id)event;
- (id)handleTransitionEvent:(id)event;
- (unint64_t)maskedCornersForIndex:(unint64_t)index;
- (unint64_t)transactionCompletionOptions;
- (void)setState:(int64_t)state;
@end

@implementation SBContinuousExposePeekSwitcherModifier

- (SBContinuousExposePeekSwitcherModifier)initWithAppLayout:(id)layout configuration:(int64_t)configuration
{
  v17[1] = *MEMORY[0x277D85DE8];
  layoutCopy = layout;
  v16.receiver = self;
  v16.super_class = SBContinuousExposePeekSwitcherModifier;
  v9 = [(SBSwitcherModifier *)&v16 init];
  if (v9)
  {
    if (!layoutCopy)
    {
      [SBContinuousExposePeekSwitcherModifier initWithAppLayout:a2 configuration:v9];
    }

    objc_storeStrong(&v9->_appLayout, layout);
    v9->_configuration = configuration;
    v10 = [[_SBContinuousExposePeekContentSwitcherModifier alloc] initWithAppLayout:v9->_appLayout configuration:v9->_configuration];
    contentModifier = v9->_contentModifier;
    v9->_contentModifier = &v10->super;

    v12 = [SBFilteringSwitcherModifier alloc];
    v17[0] = v9->_appLayout;
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:1];
    v14 = [(SBFilteringSwitcherModifier *)v12 initWithAppLayouts:v13 modifier:v9->_contentModifier];

    [(SBChainableModifier *)v9 addChildModifier:v14];
  }

  return v9;
}

- (id)debugPotentialChildModifiers
{
  v4[1] = *MEMORY[0x277D85DE8];
  v4[0] = self->_contentModifier;
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:1];

  return v2;
}

- (void)setState:(int64_t)state
{
  state = [(SBChainableModifier *)self state];
  if (state == 1 && state != 1)
  {
    [(SBContinuousExposePeekSwitcherModifier *)self newAppLayoutsGenCount];
  }

  v6.receiver = self;
  v6.super_class = SBContinuousExposePeekSwitcherModifier;
  [(SBChainableModifier *)&v6 setState:state];
}

- (id)handleEvent:(id)event
{
  eventCopy = event;
  v16.receiver = self;
  v16.super_class = SBContinuousExposePeekSwitcherModifier;
  v5 = [(SBChainableModifier *)&v16 handleEvent:eventCopy];
  dismissalTransitionModifier = self->_dismissalTransitionModifier;
  if (dismissalTransitionModifier && [(SBChainableModifier *)dismissalTransitionModifier state]== 1)
  {
    v7 = objc_alloc_init(SBInvalidateAdjustedAppLayoutsSwitcherEventResponse);
    v8 = SBAppendSwitcherModifierResponse(v7, v5);

    [(SBContinuousExposePeekSwitcherModifier *)self setState:1];
    v5 = v8;
  }

  if ([eventCopy isTransitionEvent])
  {
    v9 = eventCopy;
    toAppLayout = [v9 toAppLayout];
    fromPeekConfiguration = [v9 fromPeekConfiguration];
    toPeekConfiguration = [v9 toPeekConfiguration];
    if (SBPeekConfigurationIsValid(fromPeekConfiguration) && !SBPeekConfigurationIsValid(toPeekConfiguration) && toAppLayout && ([toAppLayout isEqual:self->_appLayout] & 1) == 0)
    {
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __54__SBContinuousExposePeekSwitcherModifier_handleEvent___block_invoke;
      v15[3] = &unk_2783A8C90;
      v15[4] = self;
      v13 = [toAppLayout appLayoutWithItemsPassingTest:v15];
      [v9 setToAppLayout:v13];
    }
  }

  return v5;
}

- (id)handleTransitionEvent:(id)event
{
  eventCopy = event;
  v25.receiver = self;
  v25.super_class = SBContinuousExposePeekSwitcherModifier;
  v5 = [(SBSwitcherModifier *)&v25 handleTransitionEvent:eventCopy];
  phase = [eventCopy phase];
  isAnimated = [eventCopy isAnimated];
  IsValid = SBPeekConfigurationIsValid([eventCopy toPeekConfiguration]);
  v9 = SBPeekConfigurationIsValid([eventCopy fromPeekConfiguration]);
  fromAppLayout = [eventCopy fromAppLayout];
  toAppLayout = [eventCopy toAppLayout];
  v11 = !IsValid;
  if ((phase != 2) | (isAnimated ^ 1) & 1 || (v11 & 1) != 0 || v9)
  {
    if ((phase != 2) | (isAnimated ^ 1) & 1 | IsValid || !v9)
    {
      if (!((phase != 3) | (isAnimated | IsValid) & 1))
      {
        v19 = objc_alloc_init(SBInvalidateAdjustedAppLayoutsSwitcherEventResponse);
        v20 = SBAppendSwitcherModifierResponse(v19, v5);

        [(SBContinuousExposePeekSwitcherModifier *)self setState:1];
        v5 = v20;
      }
    }

    else
    {
      v15 = [SBContinuousExposePeekTransitionModifier alloc];
      transitionID = [eventCopy transitionID];
      v17 = [(SBContinuousExposePeekTransitionModifier *)v15 initWithTransitionID:transitionID fromAppLayout:fromAppLayout toAppLayout:toAppLayout direction:1];
      dismissalTransitionModifier = self->_dismissalTransitionModifier;
      self->_dismissalTransitionModifier = v17;

      [(SBChainableModifier *)self addChildModifier:self->_dismissalTransitionModifier];
    }
  }

  else
  {
    v12 = [SBContinuousExposePeekTransitionModifier alloc];
    transitionID2 = [eventCopy transitionID];
    v14 = [(SBContinuousExposePeekTransitionModifier *)v12 initWithTransitionID:transitionID2 fromAppLayout:fromAppLayout toAppLayout:toAppLayout direction:0];

    [(SBChainableModifier *)self addChildModifier:v14];
  }

  if (!((phase != 2) & isAnimated | (v11 | v9) & 1))
  {
    v21 = objc_alloc_init(SBInvalidateAdjustedAppLayoutsSwitcherEventResponse);
    v22 = SBAppendSwitcherModifierResponse(v21, v5);

    v5 = v22;
  }

  return v5;
}

- (id)handleScrollEvent:(id)event
{
  v17 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  v12.receiver = self;
  v12.super_class = SBContinuousExposePeekSwitcherModifier;
  v5 = [(SBSwitcherModifier *)&v12 handleScrollEvent:eventCopy];
  if (![eventCopy phase] && objc_msgSend(eventCopy, "isUserInitiated"))
  {
    v6 = [(SBChainableModifier *)self childModifierByKey:@"UserScrollingModifier"];
    if (!v6)
    {
      v6 = objc_alloc_init(SBScrollingSwitcherModifier);
      [(SBChainableModifier *)self addChildModifier:v6 atLevel:0 key:@"UserScrollingModifier"];
      v7 = SBLogAppSwitcher();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v8 = objc_opt_class();
        v9 = NSStringFromClass(v8);
        succinctDescription = [(SBChainableModifier *)v6 succinctDescription];
        *buf = 138412546;
        v14 = v9;
        v15 = 2112;
        v16 = succinctDescription;
        _os_log_impl(&dword_21ED4E000, v7, OS_LOG_TYPE_INFO, "[%@] Adding child modifier for scroll %@.", buf, 0x16u);
      }
    }
  }

  return v5;
}

- (id)appLayoutsForContinuousExposeIdentifier:(id)identifier
{
  v12.receiver = self;
  v12.super_class = SBContinuousExposePeekSwitcherModifier;
  identifierCopy = identifier;
  v5 = [(SBContinuousExposePeekSwitcherModifier *)&v12 appLayoutsForContinuousExposeIdentifier:identifierCopy];
  continuousExposeIdentifier = [(SBAppLayout *)self->_appLayout continuousExposeIdentifier];
  v7 = BSEqualStrings();

  if (v7)
  {
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __82__SBContinuousExposePeekSwitcherModifier_appLayoutsForContinuousExposeIdentifier___block_invoke;
    v11[3] = &unk_2783A8CB8;
    v11[4] = self;
    v8 = [v5 bs_filter:v11];
  }

  else
  {
    v8 = v5;
  }

  v9 = v8;

  return v9;
}

- (unint64_t)maskedCornersForIndex:(unint64_t)index
{
  appLayouts = [(SBContinuousExposePeekSwitcherModifier *)self appLayouts];
  v6 = [appLayouts objectAtIndex:index];

  if ([v6 isEqual:self->_appLayout])
  {
    v7 = 15;
  }

  else
  {
    v9.receiver = self;
    v9.super_class = SBContinuousExposePeekSwitcherModifier;
    v7 = [(SBContinuousExposePeekSwitcherModifier *)&v9 maskedCornersForIndex:index];
  }

  return v7;
}

- (unint64_t)transactionCompletionOptions
{
  if ([(SBContinuousExposePeekSwitcherModifier *)self isReduceMotionEnabled])
  {
    return 6;
  }

  else
  {
    return 2;
  }
}

- (void)initWithAppLayout:(uint64_t)a1 configuration:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBContinuousExposePeekSwitcherModifier.m" lineNumber:45 description:{@"Invalid parameter not satisfying: %@", @"appLayout"}];
}

@end