@interface SBInsertionDodgingModifier
- (CGPoint)initialCenter;
- (CGSize)initialSize;
- (SBInsertionDodgingModifier)initWithIdentifier:(id)a3 initialCenter:(CGPoint)a4 initialSize:(CGSize)a5;
- (id)framesForIdentifiers;
- (id)handleAnimationCompletionEvent:(id)a3;
- (id)handleCustomEvent:(id)a3;
- (id)handleInsertionEvent:(id)a3;
- (id)modelForInvalidatedModel:(id)a3;
- (int64_t)animationBehaviorModeForIdentifier:(id)a3;
@end

@implementation SBInsertionDodgingModifier

- (SBInsertionDodgingModifier)initWithIdentifier:(id)a3 initialCenter:(CGPoint)a4 initialSize:(CGSize)a5
{
  height = a5.height;
  width = a5.width;
  y = a4.y;
  x = a4.x;
  v12 = a3;
  v15.receiver = self;
  v15.super_class = SBInsertionDodgingModifier;
  v13 = [(SBChainableModifier *)&v15 init];
  if (v13)
  {
    if (!v12)
    {
      [SBInsertionDodgingModifier initWithIdentifier:a2 initialCenter:v13 initialSize:?];
    }

    objc_storeStrong(&v13->_identifier, a3);
    v13->_initialCenter.x = x;
    v13->_initialCenter.y = y;
    v13->_initialSize.width = width;
    v13->_initialSize.height = height;
    v13->_phase = 0;
  }

  return v13;
}

- (id)handleInsertionEvent:(id)a3
{
  v15.receiver = self;
  v15.super_class = SBInsertionDodgingModifier;
  v5 = a3;
  v6 = [(SBDodgingModifier *)&v15 handleInsertionEvent:v5];
  identifier = self->_identifier;
  v8 = [v5 identifier];

  LODWORD(v5) = [(NSString *)identifier isEqual:v8];
  if (v5)
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
    v12 = [(SBInsertionDodgingModifier *)self _modelDidUpdateEventName];
    v13 = [(SBScheduleEventDodgingModifierEventResponse *)v11 initWithName:v12];

    v6 = [(SBChainableModifierEventResponse *)SBDodgingModifierEventResponse responseByAppendingResponse:v13 toResponse:v10];
  }

  return v6;
}

- (id)handleCustomEvent:(id)a3
{
  v13.receiver = self;
  v13.super_class = SBInsertionDodgingModifier;
  v4 = a3;
  v5 = [(SBDodgingModifier *)&v13 handleCustomEvent:v4];
  v6 = [v4 name];

  v7 = [(SBInsertionDodgingModifier *)self _modelDidUpdateEventName];
  v8 = [v6 isEqualToString:v7];

  if (v8)
  {
    self->_phase = 2;
    v9 = [[SBInvalidationDodgingModifierEventResponse alloc] initWithOptions:2];
    v10 = [(SBInsertionDodgingModifier *)self _animationDidCompleteEventName];
    [(SBInvalidationDodgingModifierEventResponse *)v9 setCompletionIdentifier:v10];

    v11 = [(SBChainableModifierEventResponse *)SBDodgingModifierEventResponse responseByAppendingResponse:v9 toResponse:v5];

    v5 = v11;
  }

  return v5;
}

- (id)handleAnimationCompletionEvent:(id)a3
{
  v10.receiver = self;
  v10.super_class = SBInsertionDodgingModifier;
  v4 = a3;
  v5 = [(SBDodgingModifier *)&v10 handleAnimationCompletionEvent:v4];
  v6 = [v4 identifier];

  v7 = [(SBInsertionDodgingModifier *)self _animationDidCompleteEventName];
  v8 = [v6 isEqualToString:v7];

  if (v8)
  {
    [(SBChainableModifier *)self setState:1];
  }

  return v5;
}

- (id)modelForInvalidatedModel:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_phase == 1 && ([v4 identifiers], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "containsObject:", self->_identifier), v6, (v7 & 1) == 0))
  {
    v9 = [(SBInsertionDodgingModifier *)self preferenceForIdentifier:self->_identifier];
    v10 = [v9 excludedDodgingIdentifiers];

    v11 = [v5 identifiers];
    v35[0] = MEMORY[0x277D85DD0];
    v35[1] = 3221225472;
    v35[2] = __55__SBInsertionDodgingModifier_modelForInvalidatedModel___block_invoke;
    v35[3] = &unk_2783A8B78;
    v12 = v10;
    v36 = v12;
    v31 = v11;
    v13 = [v11 bs_filter:v35];
    v14 = [v5 identifiers];
    if ([v14 count])
    {
      v15 = 0;
      v16 = 0;
      do
      {
        v17 = [v14 objectAtIndex:v15];
        v18 = v15 + 1;
        if ([v13 containsObject:v17])
        {
          v16 = v15 + 1;
        }

        ++v15;
      }

      while (v18 < [v14 count]);
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
  v3 = [(SBInsertionDodgingModifier *)&v8 framesForIdentifiers];
  if (self->_phase == 1)
  {
    SBRectWithSize();
    UIRectCenteredAboutPoint();
    identifier = self->_identifier;
    v4 = [MEMORY[0x277CCAE60] valueWithCGRect:?];
    v10[0] = v4;
    v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&identifier count:1];
    v6 = [v3 bs_dictionaryByAddingEntriesFromDictionary:v5];

    v3 = v6;
  }

  return v3;
}

- (int64_t)animationBehaviorModeForIdentifier:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_phase == 1 && ([v4 isEqual:self->_identifier] & 1) != 0)
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