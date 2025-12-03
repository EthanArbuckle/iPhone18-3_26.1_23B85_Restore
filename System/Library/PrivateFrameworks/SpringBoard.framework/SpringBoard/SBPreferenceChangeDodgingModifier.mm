@interface SBPreferenceChangeDodgingModifier
- (SBPreferenceChangeDodgingModifier)initWithIdentifier:(id)identifier animated:(BOOL)animated;
- (id)handleAnimationCompletionEvent:(id)event;
- (id)handlePreferenceChangeEvent:(id)event;
- (id)modelForInvalidatedModel:(id)model;
- (id)zOrderedIdentifiers;
- (int64_t)animationBehaviorModeForIdentifier:(id)identifier;
@end

@implementation SBPreferenceChangeDodgingModifier

- (SBPreferenceChangeDodgingModifier)initWithIdentifier:(id)identifier animated:(BOOL)animated
{
  identifierCopy = identifier;
  v11.receiver = self;
  v11.super_class = SBPreferenceChangeDodgingModifier;
  v8 = [(SBChainableModifier *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_identifier, identifier);
    v9->_animated = animated;
  }

  return v9;
}

- (id)handlePreferenceChangeEvent:(id)event
{
  eventCopy = event;
  v13.receiver = self;
  v13.super_class = SBPreferenceChangeDodgingModifier;
  v5 = [(SBDodgingModifier *)&v13 handlePreferenceChangeEvent:eventCopy];
  identifier = self->_identifier;
  identifier = [eventCopy identifier];
  LODWORD(identifier) = [(NSString *)identifier isEqual:identifier];

  if (identifier)
  {
    phase = [eventCopy phase];
    self->_phase = phase;
    if (phase == 1)
    {
      v9 = [SBInvalidationDodgingModifierEventResponse responseWithOptions:3];
      v10 = v9;
      if (self->_animated)
      {
        [v9 setCompletionIdentifier:self->_identifier];
      }

      else if (![(SBPreferenceChangeDodgingModifier *)self isResigningLifecycleManagement])
      {
        [(SBChainableModifier *)self setState:1];
      }

      v11 = [(SBChainableModifierEventResponse *)SBDodgingModifierEventResponse responseByAppendingResponse:v10 toResponse:v5];

      v5 = v11;
    }
  }

  return v5;
}

- (id)handleAnimationCompletionEvent:(id)event
{
  v9.receiver = self;
  v9.super_class = SBPreferenceChangeDodgingModifier;
  eventCopy = event;
  v5 = [(SBDodgingModifier *)&v9 handleAnimationCompletionEvent:eventCopy];
  identifier = [eventCopy identifier];

  if ([identifier isEqualToString:self->_identifier])
  {
    isResigningLifecycleManagement = [(SBPreferenceChangeDodgingModifier *)self isResigningLifecycleManagement];

    if (!isResigningLifecycleManagement)
    {
      [(SBChainableModifier *)self setState:1];
    }
  }

  else
  {
  }

  return v5;
}

- (id)modelForInvalidatedModel:(id)model
{
  modelCopy = model;
  identifiers = [modelCopy identifiers];
  v6 = [(SBPreferenceChangeDodgingModifier *)self preferenceForIdentifier:self->_identifier];
  excludedDodgingIdentifiers = [v6 excludedDodgingIdentifiers];

  v8 = 0;
  if ([identifiers count])
  {
    while (1)
    {
      v9 = [identifiers objectAtIndex:v8];
      v10 = [(SBPreferenceChangeDodgingModifier *)self preferenceForIdentifier:v9];
      excludedDodgingIdentifiers2 = [v10 excludedDodgingIdentifiers];

      if (([excludedDodgingIdentifiers2 containsObject:self->_identifier] & 1) == 0 && (self->_boostUpdatedIdentifier || (objc_msgSend(v9, "isEqual:", self->_identifier) & 1) != 0 || objc_msgSend(excludedDodgingIdentifiers, "containsObject:", v9)))
      {
        break;
      }

      if (++v8 >= [identifiers count])
      {
        goto LABEL_9;
      }
    }
  }

LABEL_9:
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __62__SBPreferenceChangeDodgingModifier_modelForInvalidatedModel___block_invoke;
  v16[3] = &unk_2783B5210;
  v16[4] = self;
  v16[5] = v8;
  v12 = [modelCopy modelByModifyingModelWithBlock:v16];
  v15.receiver = self;
  v15.super_class = SBPreferenceChangeDodgingModifier;
  v13 = [(SBPreferenceChangeDodgingModifier *)&v15 modelForInvalidatedModel:v12];

  return v13;
}

- (id)zOrderedIdentifiers
{
  if (self->_animated)
  {
    v9.receiver = self;
    v9.super_class = SBPreferenceChangeDodgingModifier;
    zOrderedIdentifiers = [(SBPreferenceChangeDodgingModifier *)&v9 zOrderedIdentifiers];
    zOrderedIdentifiers2 = [zOrderedIdentifiers mutableCopy];

    v5 = [zOrderedIdentifiers2 indexOfObject:self->_identifier];
    v6 = [MEMORY[0x277CCAA78] indexSetWithIndex:v5];
    [zOrderedIdentifiers2 moveObjectsAtIndexes:v6 toIndex:0];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = SBPreferenceChangeDodgingModifier;
    zOrderedIdentifiers2 = [(SBPreferenceChangeDodgingModifier *)&v8 zOrderedIdentifiers];
  }

  return zOrderedIdentifiers2;
}

- (int64_t)animationBehaviorModeForIdentifier:(id)identifier
{
  if (self->_animated)
  {
    return 3;
  }

  v7 = v3;
  v8 = v4;
  v6.receiver = self;
  v6.super_class = SBPreferenceChangeDodgingModifier;
  return [(SBPreferenceChangeDodgingModifier *)&v6 animationBehaviorModeForIdentifier:identifier];
}

@end