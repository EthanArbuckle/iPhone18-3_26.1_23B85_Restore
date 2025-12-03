@interface UISSceneOverlayPlacementConfiguration
- (BOOL)isEqual:(id)equal;
- (UISSceneOverlayPlacementConfiguration)initWithBSXPCCoder:(id)coder;
- (UISSceneOverlayPlacementConfiguration)initWithCoder:(id)coder;
- (UISSceneOverlayPlacementConfiguration)initWithTargetSceneIdentity:(id)identity;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (void)encodeWithBSXPCCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation UISSceneOverlayPlacementConfiguration

- (UISSceneOverlayPlacementConfiguration)initWithTargetSceneIdentity:(id)identity
{
  identityCopy = identity;
  v9.receiver = self;
  v9.super_class = UISSceneOverlayPlacementConfiguration;
  v6 = [(UISScenePlacementConfiguration *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_targetSceneIdentity, identity);
  }

  return v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v9.receiver = self;
  v9.super_class = UISSceneOverlayPlacementConfiguration;
  if ([(UISScenePlacementConfiguration *)&v9 isEqual:equalCopy])
  {
    targetSceneIdentity = [equalCopy targetSceneIdentity];
    targetSceneIdentity2 = [(UISSceneOverlayPlacementConfiguration *)self targetSceneIdentity];
    v7 = [targetSceneIdentity2 isEqual:targetSceneIdentity];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (UISSceneOverlayPlacementConfiguration)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = UISSceneOverlayPlacementConfiguration;
  v5 = [(UISScenePlacementConfiguration *)&v9 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kTargetSceneIdentityKey"];
    targetSceneIdentity = v5->_targetSceneIdentity;
    v5->_targetSceneIdentity = v6;

    if (!v5->_targetSceneIdentity)
    {

      v5 = 0;
    }
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = UISSceneOverlayPlacementConfiguration;
  coderCopy = coder;
  [(UISScenePlacementConfiguration *)&v6 encodeWithCoder:coderCopy];
  v5 = [(UISSceneOverlayPlacementConfiguration *)self targetSceneIdentity:v6.receiver];
  [coderCopy encodeObject:v5 forKey:@"kTargetSceneIdentityKey"];
}

- (UISSceneOverlayPlacementConfiguration)initWithBSXPCCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = UISSceneOverlayPlacementConfiguration;
  v5 = [(UISScenePlacementConfiguration *)&v9 initWithBSXPCCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kTargetSceneIdentityKey"];
    targetSceneIdentity = v5->_targetSceneIdentity;
    v5->_targetSceneIdentity = v6;

    if (!v5->_targetSceneIdentity)
    {

      v5 = 0;
    }
  }

  return v5;
}

- (void)encodeWithBSXPCCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = UISSceneOverlayPlacementConfiguration;
  coderCopy = coder;
  [(UISScenePlacementConfiguration *)&v6 encodeWithBSXPCCoder:coderCopy];
  v5 = [(UISSceneOverlayPlacementConfiguration *)self targetSceneIdentity:v6.receiver];
  [coderCopy encodeObject:v5 forKey:@"kTargetSceneIdentityKey"];
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  v12.receiver = self;
  v12.super_class = UISSceneOverlayPlacementConfiguration;
  prefixCopy = prefix;
  v5 = [(UISScenePlacementConfiguration *)&v12 descriptionBuilderWithMultilinePrefix:prefixCopy];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __79__UISSceneOverlayPlacementConfiguration_descriptionBuilderWithMultilinePrefix___block_invoke;
  v9[3] = &unk_1E7458FE0;
  v6 = v5;
  v10 = v6;
  selfCopy = self;
  [v6 appendBodySectionWithName:&stru_1F0A7B1D8 multilinePrefix:prefixCopy block:v9];

  v7 = v6;
  return v6;
}

void __79__UISSceneOverlayPlacementConfiguration_descriptionBuilderWithMultilinePrefix___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3 = [*(a1 + 40) targetSceneIdentity];
  v2 = [v1 appendObject:v3 withName:@"targetSceneIdentity"];
}

@end