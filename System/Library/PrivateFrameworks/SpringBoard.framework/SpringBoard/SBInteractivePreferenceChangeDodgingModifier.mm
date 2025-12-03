@interface SBInteractivePreferenceChangeDodgingModifier
- (SBInteractivePreferenceChangeDodgingModifier)initWithIdentifier:(id)identifier;
- (id)framesForIdentifiers;
- (id)handlePreferenceChangeEvent:(id)event;
- (id)zOrderedIdentifiers;
- (int64_t)animationBehaviorModeForIdentifier:(id)identifier;
@end

@implementation SBInteractivePreferenceChangeDodgingModifier

- (SBInteractivePreferenceChangeDodgingModifier)initWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v11.receiver = self;
  v11.super_class = SBInteractivePreferenceChangeDodgingModifier;
  v6 = [(SBChainableModifier *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_identifier, identifier);
    v8 = [[SBPreferenceChangeDodgingModifier alloc] initWithIdentifier:v7->_identifier animated:0];
    preferenceChangeModifier = v7->_preferenceChangeModifier;
    v7->_preferenceChangeModifier = v8;

    [(SBPreferenceChangeDodgingModifier *)v7->_preferenceChangeModifier setResignLifecycleManagement:1];
    [(SBPreferenceChangeDodgingModifier *)v7->_preferenceChangeModifier setBoostUpdatedIdentifier:1];
    [(SBChainableModifier *)v7 addChildModifier:v7->_preferenceChangeModifier];
  }

  return v7;
}

- (id)handlePreferenceChangeEvent:(id)event
{
  eventCopy = event;
  v12.receiver = self;
  v12.super_class = SBInteractivePreferenceChangeDodgingModifier;
  v5 = [(SBDodgingModifier *)&v12 handlePreferenceChangeEvent:eventCopy];
  identifier = [eventCopy identifier];
  if ([identifier isEqual:self->_identifier])
  {
    awaitingFinalAnimation = self->_awaitingFinalAnimation;

    if (!awaitingFinalAnimation)
    {
      style = [eventCopy style];
      self->_style = style;
      if (style != 1)
      {
        if ([eventCopy phase])
        {
          if (self->_style != 1 && [eventCopy phase] == 1)
          {
            self->_awaitingFinalAnimation = 1;
          }
        }

        else
        {
          [(SBChainableModifier *)self removeChildModifier:self->_preferenceChangeModifier];
          v9 = -[SBPreferenceChangeDodgingModifier initWithIdentifier:animated:]([SBPreferenceChangeDodgingModifier alloc], "initWithIdentifier:animated:", self->_identifier, [eventCopy style] == 2);
          preferenceChangeModifier = self->_preferenceChangeModifier;
          self->_preferenceChangeModifier = v9;

          [(SBPreferenceChangeDodgingModifier *)self->_preferenceChangeModifier setBoostUpdatedIdentifier:1];
          [(SBChainableModifier *)self addChildModifier:self->_preferenceChangeModifier];
        }
      }

      [eventCopy handleWithReason:@"Interactive preference change"];
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
  zOrderedIdentifiers = [(SBInteractivePreferenceChangeDodgingModifier *)&v8 zOrderedIdentifiers];
  v4 = [zOrderedIdentifiers mutableCopy];

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
  framesForIdentifiers = [(SBInteractivePreferenceChangeDodgingModifier *)&v25 framesForIdentifiers];
  if (self->_style == 1)
  {
    v4 = [(SBInteractivePreferenceChangeDodgingModifier *)self preferenceForIdentifier:self->_identifier];
    v5 = [framesForIdentifiers objectForKey:self->_identifier];
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
      v23 = [framesForIdentifiers bs_dictionaryByAddingEntriesFromDictionary:v22];

      framesForIdentifiers = v23;
    }
  }

  return framesForIdentifiers;
}

- (int64_t)animationBehaviorModeForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if ([identifierCopy isEqual:self->_identifier] && self->_style == 1)
  {
    v5 = 5;
  }

  else
  {
    v8.receiver = self;
    v8.super_class = SBInteractivePreferenceChangeDodgingModifier;
    v6 = [(SBInteractivePreferenceChangeDodgingModifier *)&v8 animationBehaviorModeForIdentifier:identifierCopy];
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