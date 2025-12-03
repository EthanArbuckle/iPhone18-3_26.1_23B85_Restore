@interface TRAArbitrationInterfaceIdiomInputs
- (TRAArbitrationInterfaceIdiomInputs)initWithIsPad:(BOOL)pad;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
@end

@implementation TRAArbitrationInterfaceIdiomInputs

- (TRAArbitrationInterfaceIdiomInputs)initWithIsPad:(BOOL)pad
{
  v5.receiver = self;
  v5.super_class = TRAArbitrationInterfaceIdiomInputs;
  result = [(TRAArbitrationInterfaceIdiomInputs *)&v5 init];
  if (result)
  {
    result->_isPad = pad;
  }

  return result;
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(TRAArbitrationInterfaceIdiomInputs *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)succinctDescriptionBuilder
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v4 = [v3 appendBool:self->_isPad withName:@"isPad"];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(TRAArbitrationInterfaceIdiomInputs *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

@end