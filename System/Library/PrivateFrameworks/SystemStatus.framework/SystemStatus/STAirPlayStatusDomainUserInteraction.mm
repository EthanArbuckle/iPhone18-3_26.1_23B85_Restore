@interface STAirPlayStatusDomainUserInteraction
- (BOOL)isEqual:(id)equal;
- (id)_descriptionBuilderWithMultilinePrefix:(uint64_t)prefix forDebug:;
- (id)debugDescriptionWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)succinctDescription;
- (unint64_t)hash;
@end

@implementation STAirPlayStatusDomainUserInteraction

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
  succinctDescriptionBuilder = [(STAirPlayStatusDomainUserInteraction *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(STAirPlayStatusDomainUserInteraction *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)debugDescriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(STAirPlayStatusDomainUserInteraction *)self _descriptionBuilderWithMultilinePrefix:prefix forDebug:1];
  build = [v3 build];

  return build;
}

- (id)_descriptionBuilderWithMultilinePrefix:(uint64_t)prefix forDebug:
{
  selfCopy = self;
  if (self)
  {
    v5 = a2;
    selfCopy = [selfCopy succinctDescriptionBuilder];
    [selfCopy setUseDebugDescription:prefix];
    [selfCopy setActiveMultilinePrefix:v5];
  }

  return selfCopy;
}

@end