@interface TRAArbitrationUserInterfaceStyleInputs
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToUserInterfaceStyleInputs:(id)inputs;
- (TRAArbitrationUserInterfaceStyleInputs)initWithUserInterfaceStyle:(int64_t)style;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
@end

@implementation TRAArbitrationUserInterfaceStyleInputs

- (TRAArbitrationUserInterfaceStyleInputs)initWithUserInterfaceStyle:(int64_t)style
{
  v5.receiver = self;
  v5.super_class = TRAArbitrationUserInterfaceStyleInputs;
  result = [(TRAArbitrationUserInterfaceStyleInputs *)&v5 init];
  if (result)
  {
    result->_userInterfaceStyle = style;
  }

  return result;
}

- (BOOL)isEqualToUserInterfaceStyleInputs:(id)inputs
{
  inputsCopy = inputs;
  if (inputsCopy)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [TRAArbitrationUserInterfaceStyleInputs isEqualToUserInterfaceStyleInputs:];
    }

    if (self == inputsCopy)
    {
      v6 = 1;
    }

    else
    {
      userInterfaceStyle = self->_userInterfaceStyle;
      v6 = userInterfaceStyle == [(TRAArbitrationUserInterfaceStyleInputs *)inputsCopy userInterfaceStyle];
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
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
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(TRAArbitrationUserInterfaceStyleInputs *)self isEqualToUserInterfaceStyleInputs:equalCopy];
  }

  return v5;
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(TRAArbitrationUserInterfaceStyleInputs *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)succinctDescriptionBuilder
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v4 = [v3 appendInteger:self->_userInterfaceStyle withName:@"userInterfaceStyle"];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(TRAArbitrationUserInterfaceStyleInputs *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (void)isEqualToUserInterfaceStyleInputs:.cold.1()
{
  OUTLINED_FUNCTION_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  [v0 handleFailureInMethod:@"inputs == nil || [inputs isKindOfClass:[TRAArbitrationUserInterfaceStyleInputs class]]" object:? file:? lineNumber:? description:?];
}

@end