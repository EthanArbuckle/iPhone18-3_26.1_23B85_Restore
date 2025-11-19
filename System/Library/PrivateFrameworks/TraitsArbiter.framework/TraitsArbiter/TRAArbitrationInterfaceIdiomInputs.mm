@interface TRAArbitrationInterfaceIdiomInputs
- (TRAArbitrationInterfaceIdiomInputs)initWithIsPad:(BOOL)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
@end

@implementation TRAArbitrationInterfaceIdiomInputs

- (TRAArbitrationInterfaceIdiomInputs)initWithIsPad:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = TRAArbitrationInterfaceIdiomInputs;
  result = [(TRAArbitrationInterfaceIdiomInputs *)&v5 init];
  if (result)
  {
    result->_isPad = a3;
  }

  return result;
}

- (id)succinctDescription
{
  v2 = [(TRAArbitrationInterfaceIdiomInputs *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)succinctDescriptionBuilder
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v4 = [v3 appendBool:self->_isPad withName:@"isPad"];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(TRAArbitrationInterfaceIdiomInputs *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

@end