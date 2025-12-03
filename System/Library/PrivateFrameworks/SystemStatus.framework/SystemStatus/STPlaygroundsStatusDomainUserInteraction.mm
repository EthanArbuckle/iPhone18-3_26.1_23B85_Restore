@interface STPlaygroundsStatusDomainUserInteraction
- (BOOL)isEqual:(id)equal;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)succinctDescription;
- (unint64_t)hash;
@end

@implementation STPlaygroundsStatusDomainUserInteraction

- (BOOL)isEqual:(id)equal
{
  v3 = MEMORY[0x1E698E6A0];
  equalCopy = equal;
  v5 = [v3 builderWithObject:equalCopy ofExpectedClass:objc_opt_class()];

  v6 = [v5 isEqual];
  return v6;
}

- (unint64_t)hash
{
  builder = [MEMORY[0x1E698E6B8] builder];
  v3 = [builder hash];

  return v3;
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(STPlaygroundsStatusDomainUserInteraction *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(STPlaygroundsStatusDomainUserInteraction *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

@end