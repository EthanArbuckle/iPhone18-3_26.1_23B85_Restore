@interface TRAPreferencesTreeNodeSpecification
- (BOOL)isEqual:(id)equal;
- (TRAPreferencesTreeNodeSpecification)initWithParticipant:(id)participant parentParticipant:(id)parentParticipant;
- (id)copyWithZone:(_NSZone *)zone;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
@end

@implementation TRAPreferencesTreeNodeSpecification

- (TRAPreferencesTreeNodeSpecification)initWithParticipant:(id)participant parentParticipant:(id)parentParticipant
{
  participantCopy = participant;
  parentParticipantCopy = parentParticipant;
  if (participantCopy == parentParticipantCopy)
  {
    [TRAPreferencesTreeNodeSpecification initWithParticipant:parentParticipant:];
  }

  v12.receiver = self;
  v12.super_class = TRAPreferencesTreeNodeSpecification;
  v9 = [(TRAPreferencesTreeNodeSpecification *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_participant, participant);
    objc_storeStrong(&v10->_parentParticipant, parentParticipant);
  }

  return v10;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(objc_opt_class());
  v5 = v4;
  if (v4)
  {
    objc_storeStrong(v4 + 1, self->_participant);
    objc_storeStrong(v5 + 2, self->_parentParticipant);
    v5[3] = *&self->_order;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (!equalCopy)
  {
    goto LABEL_10;
  }

  if (equalCopy == self)
  {
    v12 = 1;
    goto LABEL_12;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
    participant = [(TRAPreferencesTreeNodeSpecification *)v6 participant];
    participant2 = [(TRAPreferencesTreeNodeSpecification *)self participant];

    parentParticipant = [(TRAPreferencesTreeNodeSpecification *)v6 parentParticipant];

    parentParticipant2 = [(TRAPreferencesTreeNodeSpecification *)self parentParticipant];

    v12 = participant == participant2 && parentParticipant == parentParticipant2;
  }

  else
  {
LABEL_10:
    v12 = 0;
  }

LABEL_12:

  return v12;
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(TRAPreferencesTreeNodeSpecification *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)succinctDescriptionBuilder
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v4 = MEMORY[0x277CCACA8];
  uniqueIdentifier = [(TRAParticipant *)self->_participant uniqueIdentifier];
  parentParticipant = self->_parentParticipant;
  if (parentParticipant)
  {
    uniqueIdentifier2 = [(TRAParticipant *)parentParticipant uniqueIdentifier];
  }

  else
  {
    uniqueIdentifier2 = @"root";
  }

  v8 = [v4 stringWithFormat:@"%@ → %@", uniqueIdentifier, uniqueIdentifier2];
  [v3 appendString:v8 withName:0];

  if (parentParticipant)
  {
  }

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(TRAPreferencesTreeNodeSpecification *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (void)initWithParticipant:parentParticipant:.cold.1()
{
  OUTLINED_FUNCTION_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  [v0 handleFailureInMethod:@"participant != parentParticipant" object:? file:? lineNumber:? description:?];
}

@end