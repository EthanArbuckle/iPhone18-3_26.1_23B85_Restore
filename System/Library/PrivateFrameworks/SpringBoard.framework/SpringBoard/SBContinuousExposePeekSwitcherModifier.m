@interface SBContinuousExposePeekSwitcherModifier
- (SBContinuousExposePeekSwitcherModifier)initWithAppLayout:(id)a3 configuration:(int64_t)a4;
- (id)appLayoutsForContinuousExposeIdentifier:(id)a3;
- (id)debugPotentialChildModifiers;
- (id)handleEvent:(id)a3;
- (id)handleScrollEvent:(id)a3;
- (id)handleTransitionEvent:(id)a3;
- (unint64_t)maskedCornersForIndex:(unint64_t)a3;
- (unint64_t)transactionCompletionOptions;
- (void)setState:(int64_t)a3;
@end

@implementation SBContinuousExposePeekSwitcherModifier

- (SBContinuousExposePeekSwitcherModifier)initWithAppLayout:(id)a3 configuration:(int64_t)a4
{
  v17[1] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v16.receiver = self;
  v16.super_class = SBContinuousExposePeekSwitcherModifier;
  v9 = [(SBSwitcherModifier *)&v16 init];
  if (v9)
  {
    if (!v8)
    {
      [SBContinuousExposePeekSwitcherModifier initWithAppLayout:a2 configuration:v9];
    }

    objc_storeStrong(&v9->_appLayout, a3);
    v9->_configuration = a4;
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

- (void)setState:(int64_t)a3
{
  v5 = [(SBChainableModifier *)self state];
  if (a3 == 1 && v5 != 1)
  {
    [(SBContinuousExposePeekSwitcherModifier *)self newAppLayoutsGenCount];
  }

  v6.receiver = self;
  v6.super_class = SBContinuousExposePeekSwitcherModifier;
  [(SBChainableModifier *)&v6 setState:a3];
}

- (id)handleEvent:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = SBContinuousExposePeekSwitcherModifier;
  v5 = [(SBChainableModifier *)&v16 handleEvent:v4];
  dismissalTransitionModifier = self->_dismissalTransitionModifier;
  if (dismissalTransitionModifier && [(SBChainableModifier *)dismissalTransitionModifier state]== 1)
  {
    v7 = objc_alloc_init(SBInvalidateAdjustedAppLayoutsSwitcherEventResponse);
    v8 = SBAppendSwitcherModifierResponse(v7, v5);

    [(SBContinuousExposePeekSwitcherModifier *)self setState:1];
    v5 = v8;
  }

  if ([v4 isTransitionEvent])
  {
    v9 = v4;
    v10 = [v9 toAppLayout];
    v11 = [v9 fromPeekConfiguration];
    v12 = [v9 toPeekConfiguration];
    if (SBPeekConfigurationIsValid(v11) && !SBPeekConfigurationIsValid(v12) && v10 && ([v10 isEqual:self->_appLayout] & 1) == 0)
    {
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __54__SBContinuousExposePeekSwitcherModifier_handleEvent___block_invoke;
      v15[3] = &unk_2783A8C90;
      v15[4] = self;
      v13 = [v10 appLayoutWithItemsPassingTest:v15];
      [v9 setToAppLayout:v13];
    }
  }

  return v5;
}

- (id)handleTransitionEvent:(id)a3
{
  v4 = a3;
  v25.receiver = self;
  v25.super_class = SBContinuousExposePeekSwitcherModifier;
  v5 = [(SBSwitcherModifier *)&v25 handleTransitionEvent:v4];
  v6 = [v4 phase];
  v7 = [v4 isAnimated];
  IsValid = SBPeekConfigurationIsValid([v4 toPeekConfiguration]);
  v9 = SBPeekConfigurationIsValid([v4 fromPeekConfiguration]);
  v24 = [v4 fromAppLayout];
  v10 = [v4 toAppLayout];
  v11 = !IsValid;
  if ((v6 != 2) | (v7 ^ 1) & 1 || (v11 & 1) != 0 || v9)
  {
    if ((v6 != 2) | (v7 ^ 1) & 1 | IsValid || !v9)
    {
      if (!((v6 != 3) | (v7 | IsValid) & 1))
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
      v16 = [v4 transitionID];
      v17 = [(SBContinuousExposePeekTransitionModifier *)v15 initWithTransitionID:v16 fromAppLayout:v24 toAppLayout:v10 direction:1];
      dismissalTransitionModifier = self->_dismissalTransitionModifier;
      self->_dismissalTransitionModifier = v17;

      [(SBChainableModifier *)self addChildModifier:self->_dismissalTransitionModifier];
    }
  }

  else
  {
    v12 = [SBContinuousExposePeekTransitionModifier alloc];
    v13 = [v4 transitionID];
    v14 = [(SBContinuousExposePeekTransitionModifier *)v12 initWithTransitionID:v13 fromAppLayout:v24 toAppLayout:v10 direction:0];

    [(SBChainableModifier *)self addChildModifier:v14];
  }

  if (!((v6 != 2) & v7 | (v11 | v9) & 1))
  {
    v21 = objc_alloc_init(SBInvalidateAdjustedAppLayoutsSwitcherEventResponse);
    v22 = SBAppendSwitcherModifierResponse(v21, v5);

    v5 = v22;
  }

  return v5;
}

- (id)handleScrollEvent:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v12.receiver = self;
  v12.super_class = SBContinuousExposePeekSwitcherModifier;
  v5 = [(SBSwitcherModifier *)&v12 handleScrollEvent:v4];
  if (![v4 phase] && objc_msgSend(v4, "isUserInitiated"))
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
        v10 = [(SBChainableModifier *)v6 succinctDescription];
        *buf = 138412546;
        v14 = v9;
        v15 = 2112;
        v16 = v10;
        _os_log_impl(&dword_21ED4E000, v7, OS_LOG_TYPE_INFO, "[%@] Adding child modifier for scroll %@.", buf, 0x16u);
      }
    }
  }

  return v5;
}

- (id)appLayoutsForContinuousExposeIdentifier:(id)a3
{
  v12.receiver = self;
  v12.super_class = SBContinuousExposePeekSwitcherModifier;
  v4 = a3;
  v5 = [(SBContinuousExposePeekSwitcherModifier *)&v12 appLayoutsForContinuousExposeIdentifier:v4];
  v6 = [(SBAppLayout *)self->_appLayout continuousExposeIdentifier];
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

- (unint64_t)maskedCornersForIndex:(unint64_t)a3
{
  v5 = [(SBContinuousExposePeekSwitcherModifier *)self appLayouts];
  v6 = [v5 objectAtIndex:a3];

  if ([v6 isEqual:self->_appLayout])
  {
    v7 = 15;
  }

  else
  {
    v9.receiver = self;
    v9.super_class = SBContinuousExposePeekSwitcherModifier;
    v7 = [(SBContinuousExposePeekSwitcherModifier *)&v9 maskedCornersForIndex:a3];
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