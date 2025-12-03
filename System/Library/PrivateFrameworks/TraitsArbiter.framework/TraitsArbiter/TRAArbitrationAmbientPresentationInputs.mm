@interface TRAArbitrationAmbientPresentationInputs
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToAmbientPresentationInputs:(id)inputs;
- (TRAArbitrationAmbientPresentationInputs)initWithAmbientPresented:(BOOL)presented ambientDisplayStyle:(int64_t)style;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
@end

@implementation TRAArbitrationAmbientPresentationInputs

- (TRAArbitrationAmbientPresentationInputs)initWithAmbientPresented:(BOOL)presented ambientDisplayStyle:(int64_t)style
{
  v7.receiver = self;
  v7.super_class = TRAArbitrationAmbientPresentationInputs;
  result = [(TRAArbitrationAmbientPresentationInputs *)&v7 init];
  if (result)
  {
    result->_ambientPresented = presented;
    result->_ambientDisplayStyle = style;
  }

  return result;
}

- (BOOL)isEqualToAmbientPresentationInputs:(id)inputs
{
  inputsCopy = inputs;
  if (!inputsCopy)
  {
    goto LABEL_7;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [TRAArbitrationAmbientPresentationInputs isEqualToAmbientPresentationInputs:];
  }

  if (self == inputsCopy)
  {
    v7 = 1;
    goto LABEL_9;
  }

  ambientPresented = self->_ambientPresented;
  if (ambientPresented == [(TRAArbitrationAmbientPresentationInputs *)inputsCopy isAmbientPresented])
  {
    ambientDisplayStyle = self->_ambientDisplayStyle;
    v7 = ambientDisplayStyle == [(TRAArbitrationAmbientPresentationInputs *)inputsCopy ambientDisplayStyle];
  }

  else
  {
LABEL_7:
    v7 = 0;
  }

LABEL_9:

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
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(TRAArbitrationAmbientPresentationInputs *)self isEqualToAmbientPresentationInputs:equalCopy];
  }

  return v5;
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(TRAArbitrationAmbientPresentationInputs *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)succinctDescriptionBuilder
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v4 = [v3 appendBool:self->_ambientPresented withName:@"isAmbientPresented"];
  v5 = [v3 appendInteger:self->_ambientDisplayStyle withName:@"ambientDisplayStyle"];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(TRAArbitrationAmbientPresentationInputs *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (void)isEqualToAmbientPresentationInputs:.cold.1()
{
  OUTLINED_FUNCTION_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  [v0 handleFailureInMethod:@"inputs == nil || [inputs isKindOfClass:[TRAArbitrationAmbientPresentationInputs class]]" object:? file:? lineNumber:? description:?];
}

@end