@interface SBPreferenceChangeDodgingModifier
- (SBPreferenceChangeDodgingModifier)initWithIdentifier:(id)a3 animated:(BOOL)a4;
- (id)handleAnimationCompletionEvent:(id)a3;
- (id)handlePreferenceChangeEvent:(id)a3;
- (id)modelForInvalidatedModel:(id)a3;
- (id)zOrderedIdentifiers;
- (int64_t)animationBehaviorModeForIdentifier:(id)a3;
@end

@implementation SBPreferenceChangeDodgingModifier

- (SBPreferenceChangeDodgingModifier)initWithIdentifier:(id)a3 animated:(BOOL)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = SBPreferenceChangeDodgingModifier;
  v8 = [(SBChainableModifier *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_identifier, a3);
    v9->_animated = a4;
  }

  return v9;
}

- (id)handlePreferenceChangeEvent:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = SBPreferenceChangeDodgingModifier;
  v5 = [(SBDodgingModifier *)&v13 handlePreferenceChangeEvent:v4];
  identifier = self->_identifier;
  v7 = [v4 identifier];
  LODWORD(identifier) = [(NSString *)identifier isEqual:v7];

  if (identifier)
  {
    v8 = [v4 phase];
    self->_phase = v8;
    if (v8 == 1)
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

- (id)handleAnimationCompletionEvent:(id)a3
{
  v9.receiver = self;
  v9.super_class = SBPreferenceChangeDodgingModifier;
  v4 = a3;
  v5 = [(SBDodgingModifier *)&v9 handleAnimationCompletionEvent:v4];
  v6 = [v4 identifier];

  if ([v6 isEqualToString:self->_identifier])
  {
    v7 = [(SBPreferenceChangeDodgingModifier *)self isResigningLifecycleManagement];

    if (!v7)
    {
      [(SBChainableModifier *)self setState:1];
    }
  }

  else
  {
  }

  return v5;
}

- (id)modelForInvalidatedModel:(id)a3
{
  v4 = a3;
  v5 = [v4 identifiers];
  v6 = [(SBPreferenceChangeDodgingModifier *)self preferenceForIdentifier:self->_identifier];
  v7 = [v6 excludedDodgingIdentifiers];

  v8 = 0;
  if ([v5 count])
  {
    while (1)
    {
      v9 = [v5 objectAtIndex:v8];
      v10 = [(SBPreferenceChangeDodgingModifier *)self preferenceForIdentifier:v9];
      v11 = [v10 excludedDodgingIdentifiers];

      if (([v11 containsObject:self->_identifier] & 1) == 0 && (self->_boostUpdatedIdentifier || (objc_msgSend(v9, "isEqual:", self->_identifier) & 1) != 0 || objc_msgSend(v7, "containsObject:", v9)))
      {
        break;
      }

      if (++v8 >= [v5 count])
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
  v12 = [v4 modelByModifyingModelWithBlock:v16];
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
    v3 = [(SBPreferenceChangeDodgingModifier *)&v9 zOrderedIdentifiers];
    v4 = [v3 mutableCopy];

    v5 = [v4 indexOfObject:self->_identifier];
    v6 = [MEMORY[0x277CCAA78] indexSetWithIndex:v5];
    [v4 moveObjectsAtIndexes:v6 toIndex:0];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = SBPreferenceChangeDodgingModifier;
    v4 = [(SBPreferenceChangeDodgingModifier *)&v8 zOrderedIdentifiers];
  }

  return v4;
}

- (int64_t)animationBehaviorModeForIdentifier:(id)a3
{
  if (self->_animated)
  {
    return 3;
  }

  v7 = v3;
  v8 = v4;
  v6.receiver = self;
  v6.super_class = SBPreferenceChangeDodgingModifier;
  return [(SBPreferenceChangeDodgingModifier *)&v6 animationBehaviorModeForIdentifier:a3];
}

@end