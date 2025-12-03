@interface UISSceneProminentPlacementConfiguration
- (BOOL)isEqual:(id)equal;
- (UISSceneProminentPlacementConfiguration)init;
- (UISSceneProminentPlacementConfiguration)initWithBSXPCCoder:(id)coder;
- (UISSceneProminentPlacementConfiguration)initWithCoder:(id)coder;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (void)encodeWithBSXPCCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation UISSceneProminentPlacementConfiguration

- (UISSceneProminentPlacementConfiguration)init
{
  v3.receiver = self;
  v3.super_class = UISSceneProminentPlacementConfiguration;
  result = [(UISScenePlacementConfiguration *)&v3 init];
  if (result)
  {
    result->_prefersLargeSize = 0;
  }

  return result;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v8.receiver = self;
  v8.super_class = UISSceneProminentPlacementConfiguration;
  if ([(UISScenePlacementConfiguration *)&v8 isEqual:equalCopy])
  {
    prefersLargeSize = [equalCopy prefersLargeSize];
    v6 = prefersLargeSize ^ [(UISSceneProminentPlacementConfiguration *)self prefersLargeSize]^ 1;
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  return v6;
}

- (UISSceneProminentPlacementConfiguration)initWithCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = UISSceneProminentPlacementConfiguration;
  v5 = [(UISScenePlacementConfiguration *)&v7 initWithCoder:coderCopy];
  if (v5)
  {
    v5->_prefersLargeSize = [coderCopy decodeBoolForKey:@"kPrefersLargeSizeKey"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = UISSceneProminentPlacementConfiguration;
  coderCopy = coder;
  [(UISScenePlacementConfiguration *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeBool:-[UISSceneProminentPlacementConfiguration prefersLargeSize](self forKey:{"prefersLargeSize", v5.receiver, v5.super_class), @"kPrefersLargeSizeKey"}];
}

- (UISSceneProminentPlacementConfiguration)initWithBSXPCCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = UISSceneProminentPlacementConfiguration;
  v5 = [(UISScenePlacementConfiguration *)&v7 initWithBSXPCCoder:coderCopy];
  if (v5)
  {
    v5->_prefersLargeSize = [coderCopy decodeBoolForKey:@"kPrefersLargeSizeKey"];
  }

  return v5;
}

- (void)encodeWithBSXPCCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = UISSceneProminentPlacementConfiguration;
  coderCopy = coder;
  [(UISScenePlacementConfiguration *)&v5 encodeWithBSXPCCoder:coderCopy];
  [coderCopy encodeBool:-[UISSceneProminentPlacementConfiguration prefersLargeSize](self forKey:{"prefersLargeSize", v5.receiver, v5.super_class), @"kPrefersLargeSizeKey"}];
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  v12.receiver = self;
  v12.super_class = UISSceneProminentPlacementConfiguration;
  prefixCopy = prefix;
  v5 = [(UISScenePlacementConfiguration *)&v12 descriptionBuilderWithMultilinePrefix:prefixCopy];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __81__UISSceneProminentPlacementConfiguration_descriptionBuilderWithMultilinePrefix___block_invoke;
  v9[3] = &unk_1E7458FE0;
  v6 = v5;
  v10 = v6;
  selfCopy = self;
  [v6 appendBodySectionWithName:&stru_1F0A7B1D8 multilinePrefix:prefixCopy block:v9];

  v7 = v6;
  return v6;
}

@end