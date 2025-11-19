@interface TRAArbitrationUserInterfaceStyleInputs
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToUserInterfaceStyleInputs:(id)a3;
- (TRAArbitrationUserInterfaceStyleInputs)initWithUserInterfaceStyle:(int64_t)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
@end

@implementation TRAArbitrationUserInterfaceStyleInputs

- (TRAArbitrationUserInterfaceStyleInputs)initWithUserInterfaceStyle:(int64_t)a3
{
  v5.receiver = self;
  v5.super_class = TRAArbitrationUserInterfaceStyleInputs;
  result = [(TRAArbitrationUserInterfaceStyleInputs *)&v5 init];
  if (result)
  {
    result->_userInterfaceStyle = a3;
  }

  return result;
}

- (BOOL)isEqualToUserInterfaceStyleInputs:(id)a3
{
  v4 = a3;
  if (v4)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [TRAArbitrationUserInterfaceStyleInputs isEqualToUserInterfaceStyleInputs:];
    }

    if (self == v4)
    {
      v6 = 1;
    }

    else
    {
      userInterfaceStyle = self->_userInterfaceStyle;
      v6 = userInterfaceStyle == [(TRAArbitrationUserInterfaceStyleInputs *)v4 userInterfaceStyle];
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
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
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(TRAArbitrationUserInterfaceStyleInputs *)self isEqualToUserInterfaceStyleInputs:v4];
  }

  return v5;
}

- (id)succinctDescription
{
  v2 = [(TRAArbitrationUserInterfaceStyleInputs *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)succinctDescriptionBuilder
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v4 = [v3 appendInteger:self->_userInterfaceStyle withName:@"userInterfaceStyle"];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(TRAArbitrationUserInterfaceStyleInputs *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (void)isEqualToUserInterfaceStyleInputs:.cold.1()
{
  OUTLINED_FUNCTION_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  [v0 handleFailureInMethod:@"inputs == nil || [inputs isKindOfClass:[TRAArbitrationUserInterfaceStyleInputs class]]" object:? file:? lineNumber:? description:?];
}

@end