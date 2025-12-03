@interface UISScenePlacementConfiguration
- (BOOL)isEqual:(id)equal;
- (UISScenePlacementConfiguration)init;
- (UISScenePlacementConfiguration)initWithBSXPCCoder:(id)coder;
- (UISScenePlacementConfiguration)initWithCoder:(id)coder;
- (id)debugDescriptionWithMultilinePrefix:(id)prefix;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
@end

@implementation UISScenePlacementConfiguration

- (UISScenePlacementConfiguration)init
{
  v3.receiver = self;
  v3.super_class = UISScenePlacementConfiguration;
  return [(UISScenePlacementConfiguration *)&v3 init];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy)
  {
    if (self == equalCopy)
    {
      v7 = 1;
    }

    else
    {
      v6 = objc_opt_class();
      v7 = v6 == objc_opt_class();
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (UISScenePlacementConfiguration)initWithCoder:(id)coder
{
  v4.receiver = self;
  v4.super_class = UISScenePlacementConfiguration;
  return [(UISScenePlacementConfiguration *)&v4 init];
}

- (UISScenePlacementConfiguration)initWithBSXPCCoder:(id)coder
{
  v4.receiver = self;
  v4.super_class = UISScenePlacementConfiguration;
  return [(UISScenePlacementConfiguration *)&v4 init];
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(UISScenePlacementConfiguration *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)succinctDescriptionBuilder
{
  v3 = [MEMORY[0x1E698E680] builderWithObject:self];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __60__UISScenePlacementConfiguration_succinctDescriptionBuilder__block_invoke;
  v7[3] = &unk_1E7458FE0;
  v4 = v3;
  v8 = v4;
  selfCopy = self;
  [v4 appendProem:0 block:v7];
  v5 = v4;

  return v4;
}

void __60__UISScenePlacementConfiguration_succinctDescriptionBuilder__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [objc_opt_class() placementType];
  v3 = NSStringForUISScenePlacementType(v2);
  [v1 appendString:v3 withName:@"placementType"];
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  prefixCopy = prefix;
  succinctDescriptionBuilder = [(UISScenePlacementConfiguration *)self succinctDescriptionBuilder];
  [succinctDescriptionBuilder setActiveMultilinePrefix:prefixCopy];

  return succinctDescriptionBuilder;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(UISScenePlacementConfiguration *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)debugDescriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(UISScenePlacementConfiguration *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

@end