@interface TRAArbitrationKeyboardInputs
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToTraitsArbitrationKeyboardInputs:(id)inputs;
- (TRAArbitrationKeyboardInputs)initWithKeyboardFocusedParticipantUniqueIdentifier:(id)identifier;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
@end

@implementation TRAArbitrationKeyboardInputs

- (TRAArbitrationKeyboardInputs)initWithKeyboardFocusedParticipantUniqueIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v9.receiver = self;
  v9.super_class = TRAArbitrationKeyboardInputs;
  v5 = [(TRAArbitrationKeyboardInputs *)&v9 init];
  if (v5)
  {
    v6 = [identifierCopy copy];
    focusedParticipantUniqueIdentifier = v5->_focusedParticipantUniqueIdentifier;
    v5->_focusedParticipantUniqueIdentifier = v6;
  }

  return v5;
}

- (BOOL)isEqualToTraitsArbitrationKeyboardInputs:(id)inputs
{
  inputsCopy = inputs;
  if (inputsCopy)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [TRAArbitrationKeyboardInputs isEqualToTraitsArbitrationKeyboardInputs:];
    }

    if (self == inputsCopy)
    {
      v7 = 1;
    }

    else
    {
      focusedParticipantUniqueIdentifier = self->_focusedParticipantUniqueIdentifier;
      focusedParticipantUniqueIdentifier = [(TRAArbitrationKeyboardInputs *)inputsCopy focusedParticipantUniqueIdentifier];
      v7 = [(NSString *)focusedParticipantUniqueIdentifier isEqualToString:focusedParticipantUniqueIdentifier];
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(TRAArbitrationKeyboardInputs *)self isEqualToTraitsArbitrationKeyboardInputs:equalCopy];
  }

  return v5;
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(TRAArbitrationKeyboardInputs *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)succinctDescriptionBuilder
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  [v3 appendString:self->_focusedParticipantUniqueIdentifier withName:@"focusedParticipantUniqueIdentifier"];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(TRAArbitrationKeyboardInputs *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (void)isEqualToTraitsArbitrationKeyboardInputs:.cold.1()
{
  OUTLINED_FUNCTION_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  [v0 handleFailureInMethod:@"inputs == nil || [inputs isKindOfClass:[TRAArbitrationKeyboardInputs class]]" object:? file:? lineNumber:? description:?];
}

@end