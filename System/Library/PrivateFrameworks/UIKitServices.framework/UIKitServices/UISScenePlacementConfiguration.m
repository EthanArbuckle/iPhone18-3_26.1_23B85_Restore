@interface UISScenePlacementConfiguration
- (BOOL)isEqual:(id)a3;
- (UISScenePlacementConfiguration)init;
- (UISScenePlacementConfiguration)initWithBSXPCCoder:(id)a3;
- (UISScenePlacementConfiguration)initWithCoder:(id)a3;
- (id)debugDescriptionWithMultilinePrefix:(id)a3;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    if (self == v4)
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

- (UISScenePlacementConfiguration)initWithCoder:(id)a3
{
  v4.receiver = self;
  v4.super_class = UISScenePlacementConfiguration;
  return [(UISScenePlacementConfiguration *)&v4 init];
}

- (UISScenePlacementConfiguration)initWithBSXPCCoder:(id)a3
{
  v4.receiver = self;
  v4.super_class = UISScenePlacementConfiguration;
  return [(UISScenePlacementConfiguration *)&v4 init];
}

- (id)succinctDescription
{
  v2 = [(UISScenePlacementConfiguration *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
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
  v9 = self;
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

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v4 = a3;
  v5 = [(UISScenePlacementConfiguration *)self succinctDescriptionBuilder];
  [v5 setActiveMultilinePrefix:v4];

  return v5;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(UISScenePlacementConfiguration *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)debugDescriptionWithMultilinePrefix:(id)a3
{
  v3 = [(UISScenePlacementConfiguration *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

@end