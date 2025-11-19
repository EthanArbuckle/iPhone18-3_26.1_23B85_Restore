@interface TRAArbitrationAmbientPresentationInputs
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToAmbientPresentationInputs:(id)a3;
- (TRAArbitrationAmbientPresentationInputs)initWithAmbientPresented:(BOOL)a3 ambientDisplayStyle:(int64_t)a4;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
@end

@implementation TRAArbitrationAmbientPresentationInputs

- (TRAArbitrationAmbientPresentationInputs)initWithAmbientPresented:(BOOL)a3 ambientDisplayStyle:(int64_t)a4
{
  v7.receiver = self;
  v7.super_class = TRAArbitrationAmbientPresentationInputs;
  result = [(TRAArbitrationAmbientPresentationInputs *)&v7 init];
  if (result)
  {
    result->_ambientPresented = a3;
    result->_ambientDisplayStyle = a4;
  }

  return result;
}

- (BOOL)isEqualToAmbientPresentationInputs:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    goto LABEL_7;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [TRAArbitrationAmbientPresentationInputs isEqualToAmbientPresentationInputs:];
  }

  if (self == v4)
  {
    v7 = 1;
    goto LABEL_9;
  }

  ambientPresented = self->_ambientPresented;
  if (ambientPresented == [(TRAArbitrationAmbientPresentationInputs *)v4 isAmbientPresented])
  {
    ambientDisplayStyle = self->_ambientDisplayStyle;
    v7 = ambientDisplayStyle == [(TRAArbitrationAmbientPresentationInputs *)v4 ambientDisplayStyle];
  }

  else
  {
LABEL_7:
    v7 = 0;
  }

LABEL_9:

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
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(TRAArbitrationAmbientPresentationInputs *)self isEqualToAmbientPresentationInputs:v4];
  }

  return v5;
}

- (id)succinctDescription
{
  v2 = [(TRAArbitrationAmbientPresentationInputs *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)succinctDescriptionBuilder
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v4 = [v3 appendBool:self->_ambientPresented withName:@"isAmbientPresented"];
  v5 = [v3 appendInteger:self->_ambientDisplayStyle withName:@"ambientDisplayStyle"];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(TRAArbitrationAmbientPresentationInputs *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (void)isEqualToAmbientPresentationInputs:.cold.1()
{
  OUTLINED_FUNCTION_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  [v0 handleFailureInMethod:@"inputs == nil || [inputs isKindOfClass:[TRAArbitrationAmbientPresentationInputs class]]" object:? file:? lineNumber:? description:?];
}

@end