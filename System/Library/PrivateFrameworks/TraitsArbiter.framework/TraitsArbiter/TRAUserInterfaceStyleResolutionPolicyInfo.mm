@interface TRAUserInterfaceStyleResolutionPolicyInfo
- (TRAUserInterfaceStyleResolutionPolicyInfo)initWithActuationContext:(id)context;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
@end

@implementation TRAUserInterfaceStyleResolutionPolicyInfo

- (TRAUserInterfaceStyleResolutionPolicyInfo)initWithActuationContext:(id)context
{
  contextCopy = context;
  v9.receiver = self;
  v9.super_class = TRAUserInterfaceStyleResolutionPolicyInfo;
  v5 = [(TRAUserInterfaceStyleResolutionPolicyInfo *)&v9 init];
  if (v5)
  {
    v6 = [contextCopy copy];
    actuationContext = v5->_actuationContext;
    v5->_actuationContext = v6;
  }

  return v5;
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(TRAUserInterfaceStyleResolutionPolicyInfo *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)succinctDescriptionBuilder
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v4 = v3;
  actuationContext = self->_actuationContext;
  if (actuationContext)
  {
    v6 = [v3 appendObject:actuationContext withName:@"Actuation Context"];
  }

  return v4;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(TRAUserInterfaceStyleResolutionPolicyInfo *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

@end