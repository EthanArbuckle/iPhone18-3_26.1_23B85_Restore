@interface UISScenePreservedPlacementConfiguration
- (BOOL)isEqual:(id)equal;
- (UISScenePreservedPlacementConfiguration)init;
- (UISScenePreservedPlacementConfiguration)initWithBSXPCCoder:(id)coder;
- (UISScenePreservedPlacementConfiguration)initWithCoder:(id)coder;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (void)encodeWithBSXPCCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v8.receiver = self;
  v8.super_class = UISScenePreservedPlacementConfiguration;
  if ([(UISScenePlacementConfiguration *)&v8 isEqual:equalCopy])
  {
    keepInBackground = [equalCopy keepInBackground];
    v6 = keepInBackground ^ [(UISScenePreservedPlacementConfiguration *)self keepInBackground]^ 1;
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  return v6;
}

- (UISScenePreservedPlacementConfiguration)initWithCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = UISScenePreservedPlacementConfiguration;
  v5 = [(UISScenePlacementConfiguration *)&v7 initWithCoder:coderCopy];
  if (v5)
  {
    v5->_keepInBackground = [coderCopy decodeBoolForKey:@"kKeepInBackgroundKey"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = UISScenePreservedPlacementConfiguration;
  coderCopy = coder;
  [(UISScenePlacementConfiguration *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeBool:-[UISScenePreservedPlacementConfiguration keepInBackground](self forKey:{"keepInBackground", v5.receiver, v5.super_class), @"kKeepInBackgroundKey"}];
}

- (UISScenePreservedPlacementConfiguration)initWithBSXPCCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = UISScenePreservedPlacementConfiguration;
  v5 = [(UISScenePlacementConfiguration *)&v7 initWithBSXPCCoder:coderCopy];
  if (v5)
  {
    v5->_keepInBackground = [coderCopy decodeBoolForKey:@"kKeepInBackgroundKey"];
  }

  return v5;
}

- (void)encodeWithBSXPCCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = UISScenePreservedPlacementConfiguration;
  coderCopy = coder;
  [(UISScenePlacementConfiguration *)&v5 encodeWithBSXPCCoder:coderCopy];
  [coderCopy encodeBool:-[UISScenePreservedPlacementConfiguration keepInBackground](self forKey:{"keepInBackground", v5.receiver, v5.super_class), @"kKeepInBackgroundKey"}];
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  v12.receiver = self;
  v12.super_class = UISScenePreservedPlacementConfiguration;
  prefixCopy = prefix;
  v5 = [(UISScenePlacementConfiguration *)&v12 descriptionBuilderWithMultilinePrefix:prefixCopy];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __81__UISScenePreservedPlacementConfiguration_descriptionBuilderWithMultilinePrefix___block_invoke;
  v9[3] = &unk_1E7458FE0;
  v6 = v5;
  v10 = v6;
  selfCopy = self;
  [v6 appendBodySectionWithName:&stru_1F0A7B1D8 multilinePrefix:prefixCopy block:v9];

  v7 = v6;
  return v6;
}

@end