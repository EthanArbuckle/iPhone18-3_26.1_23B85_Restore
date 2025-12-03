@interface SBInsertionDodgingModifier
- (CGPoint)initialCenter;
- (CGSize)initialSize;
- (SBInsertionDodgingModifier)initWithIdentifier:(id)identifier initialCenter:(CGPoint)center initialSize:(CGSize)size;
- (id)framesForIdentifiers;
- (id)handleAnimationCompletionEvent:(id)event;
- (id)handleCustomEvent:(id)event;
- (id)handleInsertionEvent:(id)event;
- (id)modelForInvalidatedModel:(id)model;
- (int64_t)animationBehaviorModeForIdentifier:(id)identifier;
@end

@implementation SBInsertionDodgingModifier

- (SBInsertionDodgingModifier)initWithIdentifier:(id)identifier initialCenter:(CGPoint)center initialSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  y = center.y;
  x = center.x;
  identifierCopy = identifier;
  v15.receiver = self;
  v15.super_class = SBInsertionDodgingModifier;
  v13 = [(SBChainableModifier *)&v15 init];
  if (v13)
  {
    if (!identifierCopy)
    {
      [SBInsertionDodgingModifier initWithIdentifier:a2 initialCenter:v13 initialSize:?];
    }

    objc_storeStrong(&v13->_identifier, identifier);
    v13->_initialCenter.x = x;
    v13->_initialCenter.y = y;
    v13->_initialSize.width = width;
    v13->_initialSize.height = height;
    v13->_phase = 0;
  }

  return v13;
}

- (id)handleInsertionEvent:(id)event
{
  v15.receiver = self;
  v15.super_class = SBInsertionDodgingModifier;
  eventCopy = event;
  v6 = [(SBDodgingModifier *)&v15 handleInsertionEvent:eventCopy];
  identifier = self->_identifier;
  identifier = [eventCopy identifier];

  LODWORD(eventCopy) = [(NSString *)identifier isEqual:identifier];
  if (eventCopy)
  {
    if (self->_phase)
    {
      [(SBInsertionDodgingModifier *)a2 handleInsertionEvent:?];
    }

    self->_phase = 1;
    v9 = [[SBInvalidationDodgingModifierEventResponse alloc] initWithOptions:3];
    [(SBInvalidationDodgingModifierEventResponse *)v9 setIdentifier:self->_identifier];
    [(SBInvalidationDodgingModifierEventResponse *)v9 setDisableCoalescing:1];
    v10 = [(SBChainableModifierEventResponse *)SBDodgingModifierEventResponse responseByAppendingResponse:v9 toResponse:v6];

    v11 = [SBScheduleEventDodgingModifierEventResponse alloc];
    _modelDidUpdateEventName = [(SBInsertionDodgingModifier *)self _modelDidUpdateEventName];
    v13 = [(SBScheduleEventDodgingModifierEventResponse *)v11 initWithName:_modelDidUpdateEventName];

    v6 = [(SBChainableModifierEventResponse *)SBDodgingModifierEventResponse responseByAppendingResponse:v13 toResponse:v10];
  }

  return v6;
}

- (id)handleCustomEvent:(id)event
{
  v13.receiver = self;
  v13.super_class = SBInsertionDodgingModifier;
  eventCopy = event;
  v5 = [(SBDodgingModifier *)&v13 handleCustomEvent:eventCopy];
  name = [eventCopy name];

  _modelDidUpdateEventName = [(SBInsertionDodgingModifier *)self _modelDidUpdateEventName];
  v8 = [name isEqualToString:_modelDidUpdateEventName];

  if (v8)
  {
    self->_phase = 2;
    v9 = [[SBInvalidationDodgingModifierEventResponse alloc] initWithOptions:2];
    _animationDidCompleteEventName = [(SBInsertionDodgingModifier *)self _animationDidCompleteEventName];
    [(SBInvalidationDodgingModifierEventResponse *)v9 setCompletionIdentifier:_animationDidCompleteEventName];

    v11 = [(SBChainableModifierEventResponse *)SBDodgingModifierEventResponse responseByAppendingResponse:v9 toResponse:v5];

    v5 = v11;
  }

  return v5;
}

- (id)handleAnimationCompletionEvent:(id)event
{
  v10.receiver = self;
  v10.super_class = SBInsertionDodgingModifier;
  eventCopy = event;
  v5 = [(SBDodgingModifier *)&v10 handleAnimationCompletionEvent:eventCopy];
  identifier = [eventCopy identifier];

  _animationDidCompleteEventName = [(SBInsertionDodgingModifier *)self _animationDidCompleteEventName];
  v8 = [identifier isEqualToString:_animationDidCompleteEventName];

  if (v8)
  {
    [(SBChainableModifier *)self setState:1];
  }

  return v5;
}

- (id)modelForInvalidatedModel:(id)model
{
  modelCopy = model;
  v5 = modelCopy;
  if (self->_phase == 1 && ([modelCopy identifiers], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "containsObject:", self->_identifier), v6, (v7 & 1) == 0))
  {
    v9 = [(SBInsertionDodgingModifier *)self preferenceForIdentifier:self->_identifier];
    excludedDodgingIdentifiers = [v9 excludedDodgingIdentifiers];

    identifiers = [v5 identifiers];
    v35[0] = MEMORY[0x277D85DD0];
    v35[1] = 3221225472;
    v35[2] = __55__SBInsertionDodgingModifier_modelForInvalidatedModel___block_invoke;
    v35[3] = &unk_2783A8B78;
    v12 = excludedDodgingIdentifiers;
    v36 = v12;
    v31 = identifiers;
    v13 = [identifiers bs_filter:v35];
    identifiers2 = [v5 identifiers];
    if ([identifiers2 count])
    {
      v15 = 0;
      v16 = 0;
      do
      {
        v17 = [identifiers2 objectAtIndex:v15];
        v18 = v15 + 1;
        if ([v13 containsObject:v17])
        {
          v16 = v15 + 1;
        }

        ++v15;
      }

      while (v18 < [identifiers2 count]);
    }

    else
    {
      v16 = 0;
    }

    v19 = [(SBInsertionDodgingModifier *)self preferenceForIdentifier:self->_identifier];
    [v19 preferredCenter];
    v21 = v20;
    v23 = v22;

    v24 = [(SBInsertionDodgingModifier *)self preferenceForIdentifier:self->_identifier];
    [v24 preferredSize];
    v26 = v25;
    v28 = v27;

    v34[0] = MEMORY[0x277D85DD0];
    v34[1] = 3221225472;
    v34[2] = __55__SBInsertionDodgingModifier_modelForInvalidatedModel___block_invoke_2;
    v34[3] = &unk_2783A8BA0;
    v34[4] = self;
    v34[5] = v16;
    v34[6] = v21;
    v34[7] = v23;
    v34[8] = v26;
    v34[9] = v28;
    v29 = [v5 modelByModifyingModelWithBlock:v34];
    v33.receiver = self;
    v33.super_class = SBInsertionDodgingModifier;
    v8 = [(SBInsertionDodgingModifier *)&v33 modelForInvalidatedModel:v29];
  }

  else
  {
    v32.receiver = self;
    v32.super_class = SBInsertionDodgingModifier;
    v8 = [(SBInsertionDodgingModifier *)&v32 modelForInvalidatedModel:v5];
  }

  return v8;
}

- (id)framesForIdentifiers
{
  v10[1] = *MEMORY[0x277D85DE8];
  v8.receiver = self;
  v8.super_class = SBInsertionDodgingModifier;
  framesForIdentifiers = [(SBInsertionDodgingModifier *)&v8 framesForIdentifiers];
  if (self->_phase == 1)
  {
    SBRectWithSize();
    UIRectCenteredAboutPoint();
    identifier = self->_identifier;
    v4 = [MEMORY[0x277CCAE60] valueWithCGRect:?];
    v10[0] = v4;
    v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&identifier count:1];
    v6 = [framesForIdentifiers bs_dictionaryByAddingEntriesFromDictionary:v5];

    framesForIdentifiers = v6;
  }

  return framesForIdentifiers;
}

- (int64_t)animationBehaviorModeForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = identifierCopy;
  if (self->_phase == 1 && ([identifierCopy isEqual:self->_identifier] & 1) != 0)
  {
    v6 = 2;
  }

  else
  {
    v6 = 3;
  }

  return v6;
}

- (CGPoint)initialCenter
{
  x = self->_initialCenter.x;
  y = self->_initialCenter.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGSize)initialSize
{
  width = self->_initialSize.width;
  height = self->_initialSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (void)initWithIdentifier:(uint64_t)a1 initialCenter:(uint64_t)a2 initialSize:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBInsertionDodgingModifier.m" lineNumber:33 description:{@"Invalid parameter not satisfying: %@", @"identifier"}];
}

- (void)handleInsertionEvent:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBInsertionDodgingModifier.m" lineNumber:45 description:@"Phase should be possible. Is the same identifier being inserted twice?"];
}

@end