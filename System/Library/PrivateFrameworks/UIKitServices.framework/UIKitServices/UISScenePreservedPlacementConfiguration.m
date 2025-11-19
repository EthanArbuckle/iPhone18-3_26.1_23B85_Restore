@interface UISScenePreservedPlacementConfiguration
- (BOOL)isEqual:(id)a3;
- (UISScenePreservedPlacementConfiguration)init;
- (UISScenePreservedPlacementConfiguration)initWithBSXPCCoder:(id)a3;
- (UISScenePreservedPlacementConfiguration)initWithCoder:(id)a3;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (void)encodeWithBSXPCCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation UISScenePreservedPlacementConfiguration

- (UISScenePreservedPlacementConfiguration)init
{
  v3.receiver = self;
  v3.super_class = UISScenePreservedPlacementConfiguration;
  result = [(UISScenePlacementConfiguration *)&v3 init];
  if (result)
  {
    result->_keepInBackground = 0;
  }

  return result;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = UISScenePreservedPlacementConfiguration;
  if ([(UISScenePlacementConfiguration *)&v8 isEqual:v4])
  {
    v5 = [v4 keepInBackground];
    v6 = v5 ^ [(UISScenePreservedPlacementConfiguration *)self keepInBackground]^ 1;
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  return v6;
}

- (UISScenePreservedPlacementConfiguration)initWithCoder:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = UISScenePreservedPlacementConfiguration;
  v5 = [(UISScenePlacementConfiguration *)&v7 initWithCoder:v4];
  if (v5)
  {
    v5->_keepInBackground = [v4 decodeBoolForKey:@"kKeepInBackgroundKey"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = UISScenePreservedPlacementConfiguration;
  v4 = a3;
  [(UISScenePlacementConfiguration *)&v5 encodeWithCoder:v4];
  [v4 encodeBool:-[UISScenePreservedPlacementConfiguration keepInBackground](self forKey:{"keepInBackground", v5.receiver, v5.super_class), @"kKeepInBackgroundKey"}];
}

- (UISScenePreservedPlacementConfiguration)initWithBSXPCCoder:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = UISScenePreservedPlacementConfiguration;
  v5 = [(UISScenePlacementConfiguration *)&v7 initWithBSXPCCoder:v4];
  if (v5)
  {
    v5->_keepInBackground = [v4 decodeBoolForKey:@"kKeepInBackgroundKey"];
  }

  return v5;
}

- (void)encodeWithBSXPCCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = UISScenePreservedPlacementConfiguration;
  v4 = a3;
  [(UISScenePlacementConfiguration *)&v5 encodeWithBSXPCCoder:v4];
  [v4 encodeBool:-[UISScenePreservedPlacementConfiguration keepInBackground](self forKey:{"keepInBackground", v5.receiver, v5.super_class), @"kKeepInBackgroundKey"}];
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v12.receiver = self;
  v12.super_class = UISScenePreservedPlacementConfiguration;
  v4 = a3;
  v5 = [(UISScenePlacementConfiguration *)&v12 descriptionBuilderWithMultilinePrefix:v4];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __81__UISScenePreservedPlacementConfiguration_descriptionBuilderWithMultilinePrefix___block_invoke;
  v9[3] = &unk_1E7458FE0;
  v6 = v5;
  v10 = v6;
  v11 = self;
  [v6 appendBodySectionWithName:&stru_1F0A7B1D8 multilinePrefix:v4 block:v9];

  v7 = v6;
  return v6;
}

@end