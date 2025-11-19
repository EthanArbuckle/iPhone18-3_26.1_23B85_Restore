@interface SBInteractivePreferenceChangeDodgingModifier
- (SBInteractivePreferenceChangeDodgingModifier)initWithIdentifier:(id)a3;
- (id)framesForIdentifiers;
- (id)handlePreferenceChangeEvent:(id)a3;
- (id)zOrderedIdentifiers;
- (int64_t)animationBehaviorModeForIdentifier:(id)a3;
@end

@implementation SBInteractivePreferenceChangeDodgingModifier

- (SBInteractivePreferenceChangeDodgingModifier)initWithIdentifier:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = SBInteractivePreferenceChangeDodgingModifier;
  v6 = [(SBChainableModifier *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_identifier, a3);
    v8 = [[SBPreferenceChangeDodgingModifier alloc] initWithIdentifier:v7->_identifier animated:0];
    preferenceChangeModifier = v7->_preferenceChangeModifier;
    v7->_preferenceChangeModifier = v8;

    [(SBPreferenceChangeDodgingModifier *)v7->_preferenceChangeModifier setResignLifecycleManagement:1];
    [(SBPreferenceChangeDodgingModifier *)v7->_preferenceChangeModifier setBoostUpdatedIdentifier:1];
    [(SBChainableModifier *)v7 addChildModifier:v7->_preferenceChangeModifier];
  }

  return v7;
}

- (id)handlePreferenceChangeEvent:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = SBInteractivePreferenceChangeDodgingModifier;
  v5 = [(SBDodgingModifier *)&v12 handlePreferenceChangeEvent:v4];
  v6 = [v4 identifier];
  if ([v6 isEqual:self->_identifier])
  {
    awaitingFinalAnimation = self->_awaitingFinalAnimation;

    if (!awaitingFinalAnimation)
    {
      v8 = [v4 style];
      self->_style = v8;
      if (v8 != 1)
      {
        if ([v4 phase])
        {
          if (self->_style != 1 && [v4 phase] == 1)
          {
            self->_awaitingFinalAnimation = 1;
          }
        }

        else
        {
          [(SBChainableModifier *)self removeChildModifier:self->_preferenceChangeModifier];
          v9 = -[SBPreferenceChangeDodgingModifier initWithIdentifier:animated:]([SBPreferenceChangeDodgingModifier alloc], "initWithIdentifier:animated:", self->_identifier, [v4 style] == 2);
          preferenceChangeModifier = self->_preferenceChangeModifier;
          self->_preferenceChangeModifier = v9;

          [(SBPreferenceChangeDodgingModifier *)self->_preferenceChangeModifier setBoostUpdatedIdentifier:1];
          [(SBChainableModifier *)self addChildModifier:self->_preferenceChangeModifier];
        }
      }

      [v4 handleWithReason:@"Interactive preference change"];
    }
  }

  else
  {
  }

  return v5;
}

- (id)zOrderedIdentifiers
{
  v8.receiver = self;
  v8.super_class = SBInteractivePreferenceChangeDodgingModifier;
  v3 = [(SBInteractivePreferenceChangeDodgingModifier *)&v8 zOrderedIdentifiers];
  v4 = [v3 mutableCopy];

  v5 = [v4 indexOfObject:self->_identifier];
  v6 = [MEMORY[0x277CCAA78] indexSetWithIndex:v5];
  [v4 moveObjectsAtIndexes:v6 toIndex:0];

  return v4;
}

- (id)framesForIdentifiers
{
  v27[1] = *MEMORY[0x277D85DE8];
  v25.receiver = self;
  v25.super_class = SBInteractivePreferenceChangeDodgingModifier;
  v3 = [(SBInteractivePreferenceChangeDodgingModifier *)&v25 framesForIdentifiers];
  if (self->_style == 1)
  {
    v4 = [(SBInteractivePreferenceChangeDodgingModifier *)self preferenceForIdentifier:self->_identifier];
    v5 = [v3 objectForKey:self->_identifier];
    [v5 CGRectValue];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;

    [v4 preferredSize];
    SBRectWithSize();
    [v4 preferredCenter];
    UIRectCenteredAboutPoint();
    v30.origin.x = v7;
    v30.origin.y = v9;
    v30.size.width = v11;
    v30.size.height = v13;
    if (!CGRectEqualToRect(v29, v30))
    {
      [v4 minimumSize];
      BSUIConstrainValueToIntervalWithRubberBand();
      v15 = v14;
      BSUIConstrainValueToIntervalWithRubberBand();
      v17 = v16;
      BSUIConstrainValueToIntervalWithRubberBand();
      v19 = v18;
      BSUIConstrainValueToIntervalWithRubberBand();
      identifier = self->_identifier;
      v21 = [MEMORY[0x277CCAE60] valueWithCGRect:{v15, v17, v19, v20}];
      v27[0] = v21;
      v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:&identifier count:1];
      v23 = [v3 bs_dictionaryByAddingEntriesFromDictionary:v22];

      v3 = v23;
    }
  }

  return v3;
}

- (int64_t)animationBehaviorModeForIdentifier:(id)a3
{
  v4 = a3;
  if ([v4 isEqual:self->_identifier] && self->_style == 1)
  {
    v5 = 5;
  }

  else
  {
    v8.receiver = self;
    v8.super_class = SBInteractivePreferenceChangeDodgingModifier;
    v6 = [(SBInteractivePreferenceChangeDodgingModifier *)&v8 animationBehaviorModeForIdentifier:v4];
    if (v6 == 2)
    {
      v5 = 3;
    }

    else
    {
      v5 = v6;
    }
  }

  return v5;
}

@end