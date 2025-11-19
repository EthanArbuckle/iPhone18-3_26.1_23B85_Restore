@interface TRAArbitrationKeyboardInputs
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToTraitsArbitrationKeyboardInputs:(id)a3;
- (TRAArbitrationKeyboardInputs)initWithKeyboardFocusedParticipantUniqueIdentifier:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
@end

@implementation TRAArbitrationKeyboardInputs

- (TRAArbitrationKeyboardInputs)initWithKeyboardFocusedParticipantUniqueIdentifier:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = TRAArbitrationKeyboardInputs;
  v5 = [(TRAArbitrationKeyboardInputs *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    focusedParticipantUniqueIdentifier = v5->_focusedParticipantUniqueIdentifier;
    v5->_focusedParticipantUniqueIdentifier = v6;
  }

  return v5;
}

- (BOOL)isEqualToTraitsArbitrationKeyboardInputs:(id)a3
{
  v4 = a3;
  if (v4)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [TRAArbitrationKeyboardInputs isEqualToTraitsArbitrationKeyboardInputs:];
    }

    if (self == v4)
    {
      v7 = 1;
    }

    else
    {
      focusedParticipantUniqueIdentifier = self->_focusedParticipantUniqueIdentifier;
      v6 = [(TRAArbitrationKeyboardInputs *)v4 focusedParticipantUniqueIdentifier];
      v7 = [(NSString *)focusedParticipantUniqueIdentifier isEqualToString:v6];
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(TRAArbitrationKeyboardInputs *)self isEqualToTraitsArbitrationKeyboardInputs:v4];
  }

  return v5;
}

- (id)succinctDescription
{
  v2 = [(TRAArbitrationKeyboardInputs *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)succinctDescriptionBuilder
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  [v3 appendString:self->_focusedParticipantUniqueIdentifier withName:@"focusedParticipantUniqueIdentifier"];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(TRAArbitrationKeyboardInputs *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (void)isEqualToTraitsArbitrationKeyboardInputs:.cold.1()
{
  OUTLINED_FUNCTION_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  [v0 handleFailureInMethod:@"inputs == nil || [inputs isKindOfClass:[TRAArbitrationKeyboardInputs class]]" object:? file:? lineNumber:? description:?];
}

@end