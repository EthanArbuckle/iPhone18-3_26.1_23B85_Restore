@interface TRAPreferencesTreeNodeSpecification
- (BOOL)isEqual:(id)a3;
- (TRAPreferencesTreeNodeSpecification)initWithParticipant:(id)a3 parentParticipant:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
@end

@implementation TRAPreferencesTreeNodeSpecification

- (TRAPreferencesTreeNodeSpecification)initWithParticipant:(id)a3 parentParticipant:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (v7 == v8)
  {
    [TRAPreferencesTreeNodeSpecification initWithParticipant:parentParticipant:];
  }

  v12.receiver = self;
  v12.super_class = TRAPreferencesTreeNodeSpecification;
  v9 = [(TRAPreferencesTreeNodeSpecification *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_participant, a3);
    objc_storeStrong(&v10->_parentParticipant, a4);
  }

  return v10;
}

- (id)copyWithZone:(_NSZone *)a3
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    goto LABEL_10;
  }

  if (v4 == self)
  {
    v12 = 1;
    goto LABEL_12;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
    v7 = [(TRAPreferencesTreeNodeSpecification *)v6 participant];
    v8 = [(TRAPreferencesTreeNodeSpecification *)self participant];

    v9 = [(TRAPreferencesTreeNodeSpecification *)v6 parentParticipant];

    v10 = [(TRAPreferencesTreeNodeSpecification *)self parentParticipant];

    v12 = v7 == v8 && v9 == v10;
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
  v2 = [(TRAPreferencesTreeNodeSpecification *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)succinctDescriptionBuilder
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v4 = MEMORY[0x277CCACA8];
  v5 = [(TRAParticipant *)self->_participant uniqueIdentifier];
  parentParticipant = self->_parentParticipant;
  if (parentParticipant)
  {
    v7 = [(TRAParticipant *)parentParticipant uniqueIdentifier];
  }

  else
  {
    v7 = @"root";
  }

  v8 = [v4 stringWithFormat:@"%@ → %@", v5, v7];
  [v3 appendString:v8 withName:0];

  if (parentParticipant)
  {
  }

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(TRAPreferencesTreeNodeSpecification *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (void)initWithParticipant:parentParticipant:.cold.1()
{
  OUTLINED_FUNCTION_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  [v0 handleFailureInMethod:@"participant != parentParticipant" object:? file:? lineNumber:? description:?];
}

@end