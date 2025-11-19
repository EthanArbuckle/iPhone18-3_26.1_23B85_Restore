@interface STAirPlayStatusDomainUserInteraction
- (BOOL)isEqual:(id)a3;
- (id)_descriptionBuilderWithMultilinePrefix:(uint64_t)a3 forDebug:;
- (id)debugDescriptionWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)succinctDescription;
- (unint64_t)hash;
@end

@implementation STAirPlayStatusDomainUserInteraction

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
  v2 = [(STAirPlayStatusDomainUserInteraction *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(STAirPlayStatusDomainUserInteraction *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)debugDescriptionWithMultilinePrefix:(id)a3
{
  v3 = [(STAirPlayStatusDomainUserInteraction *)self _descriptionBuilderWithMultilinePrefix:a3 forDebug:1];
  v4 = [v3 build];

  return v4;
}

- (id)_descriptionBuilderWithMultilinePrefix:(uint64_t)a3 forDebug:
{
  v3 = a1;
  if (a1)
  {
    v5 = a2;
    v3 = [v3 succinctDescriptionBuilder];
    [v3 setUseDebugDescription:a3];
    [v3 setActiveMultilinePrefix:v5];
  }

  return v3;
}

@end