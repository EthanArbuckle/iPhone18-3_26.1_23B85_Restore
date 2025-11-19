@interface TRAUserInterfaceStyleResolutionPolicyInfo
- (TRAUserInterfaceStyleResolutionPolicyInfo)initWithActuationContext:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
@end

@implementation TRAUserInterfaceStyleResolutionPolicyInfo

- (TRAUserInterfaceStyleResolutionPolicyInfo)initWithActuationContext:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = TRAUserInterfaceStyleResolutionPolicyInfo;
  v5 = [(TRAUserInterfaceStyleResolutionPolicyInfo *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    actuationContext = v5->_actuationContext;
    v5->_actuationContext = v6;
  }

  return v5;
}

- (id)succinctDescription
{
  v2 = [(TRAUserInterfaceStyleResolutionPolicyInfo *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
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

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(TRAUserInterfaceStyleResolutionPolicyInfo *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

@end