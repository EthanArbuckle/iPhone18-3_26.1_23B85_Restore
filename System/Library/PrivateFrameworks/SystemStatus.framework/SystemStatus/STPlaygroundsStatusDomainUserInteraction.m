@interface STPlaygroundsStatusDomainUserInteraction
- (BOOL)isEqual:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)succinctDescription;
- (unint64_t)hash;
@end

@implementation STPlaygroundsStatusDomainUserInteraction

- (BOOL)isEqual:(id)a3
{
  v3 = MEMORY[0x1E698E6A0];
  v4 = a3;
  v5 = [v3 builderWithObject:v4 ofExpectedClass:objc_opt_class()];

  v6 = [v5 isEqual];
  return v6;
}

- (unint64_t)hash
{
  v2 = [MEMORY[0x1E698E6B8] builder];
  v3 = [v2 hash];

  return v3;
}

- (id)succinctDescription
{
  v2 = [(STPlaygroundsStatusDomainUserInteraction *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(STPlaygroundsStatusDomainUserInteraction *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

@end