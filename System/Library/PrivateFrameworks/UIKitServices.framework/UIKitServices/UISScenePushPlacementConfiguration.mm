@interface UISScenePushPlacementConfiguration
- (BOOL)isEqual:(id)equal;
- (UISScenePushPlacementConfiguration)initWithBSXPCCoder:(id)coder;
- (UISScenePushPlacementConfiguration)initWithCoder:(id)coder;
- (UISScenePushPlacementConfiguration)initWithTargetSceneSessionPersistentIdentifier:(id)identifier;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (void)encodeWithBSXPCCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation UISScenePushPlacementConfiguration

- (UISScenePushPlacementConfiguration)initWithTargetSceneSessionPersistentIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v9.receiver = self;
  v9.super_class = UISScenePushPlacementConfiguration;
  v6 = [(UISScenePlacementConfiguration *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_targetSceneSessionPersistentIdentifier, identifier);
  }

  return v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v9.receiver = self;
  v9.super_class = UISScenePushPlacementConfiguration;
  if ([(UISScenePlacementConfiguration *)&v9 isEqual:equalCopy])
  {
    targetSceneSessionPersistentIdentifier = [equalCopy targetSceneSessionPersistentIdentifier];
    targetSceneSessionPersistentIdentifier2 = [(UISScenePushPlacementConfiguration *)self targetSceneSessionPersistentIdentifier];
    v7 = [targetSceneSessionPersistentIdentifier2 isEqual:targetSceneSessionPersistentIdentifier];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (UISScenePushPlacementConfiguration)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = UISScenePushPlacementConfiguration;
  v5 = [(UISScenePlacementConfiguration *)&v9 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kTargetSceneSessionPersistentIdentifierKey"];
    targetSceneSessionPersistentIdentifier = v5->_targetSceneSessionPersistentIdentifier;
    v5->_targetSceneSessionPersistentIdentifier = v6;

    if (!v5->_targetSceneSessionPersistentIdentifier)
    {

      v5 = 0;
    }
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = UISScenePushPlacementConfiguration;
  coderCopy = coder;
  [(UISScenePlacementConfiguration *)&v6 encodeWithCoder:coderCopy];
  v5 = [(UISScenePushPlacementConfiguration *)self targetSceneSessionPersistentIdentifier:v6.receiver];
  [coderCopy encodeObject:v5 forKey:@"kTargetSceneSessionPersistentIdentifierKey"];
}

- (UISScenePushPlacementConfiguration)initWithBSXPCCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = UISScenePushPlacementConfiguration;
  v5 = [(UISScenePlacementConfiguration *)&v9 initWithBSXPCCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kTargetSceneSessionPersistentIdentifierKey"];
    targetSceneSessionPersistentIdentifier = v5->_targetSceneSessionPersistentIdentifier;
    v5->_targetSceneSessionPersistentIdentifier = v6;

    if (!v5->_targetSceneSessionPersistentIdentifier)
    {

      v5 = 0;
    }
  }

  return v5;
}

- (void)encodeWithBSXPCCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = UISScenePushPlacementConfiguration;
  coderCopy = coder;
  [(UISScenePlacementConfiguration *)&v6 encodeWithBSXPCCoder:coderCopy];
  v5 = [(UISScenePushPlacementConfiguration *)self targetSceneSessionPersistentIdentifier:v6.receiver];
  [coderCopy encodeObject:v5 forKey:@"kTargetSceneSessionPersistentIdentifierKey"];
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  v12.receiver = self;
  v12.super_class = UISScenePushPlacementConfiguration;
  prefixCopy = prefix;
  v5 = [(UISScenePlacementConfiguration *)&v12 descriptionBuilderWithMultilinePrefix:prefixCopy];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __76__UISScenePushPlacementConfiguration_descriptionBuilderWithMultilinePrefix___block_invoke;
  v9[3] = &unk_1E7458FE0;
  v6 = v5;
  v10 = v6;
  selfCopy = self;
  [v6 appendBodySectionWithName:&stru_1F0A7B1D8 multilinePrefix:prefixCopy block:v9];

  v7 = v6;
  return v6;
}

void __76__UISScenePushPlacementConfiguration_descriptionBuilderWithMultilinePrefix___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3 = [*(a1 + 40) targetSceneSessionPersistentIdentifier];
  v2 = [v1 appendObject:v3 withName:@"targetSceneSessionPersistentIdentifier"];
}

@end