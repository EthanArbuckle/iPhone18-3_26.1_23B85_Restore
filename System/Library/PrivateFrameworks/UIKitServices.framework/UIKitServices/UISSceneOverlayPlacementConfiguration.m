@interface UISSceneOverlayPlacementConfiguration
- (BOOL)isEqual:(id)a3;
- (UISSceneOverlayPlacementConfiguration)initWithBSXPCCoder:(id)a3;
- (UISSceneOverlayPlacementConfiguration)initWithCoder:(id)a3;
- (UISSceneOverlayPlacementConfiguration)initWithTargetSceneIdentity:(id)a3;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (void)encodeWithBSXPCCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation UISSceneOverlayPlacementConfiguration

- (UISSceneOverlayPlacementConfiguration)initWithTargetSceneIdentity:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = UISSceneOverlayPlacementConfiguration;
  v6 = [(UISScenePlacementConfiguration *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_targetSceneIdentity, a3);
  }

  return v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = UISSceneOverlayPlacementConfiguration;
  if ([(UISScenePlacementConfiguration *)&v9 isEqual:v4])
  {
    v5 = [v4 targetSceneIdentity];
    v6 = [(UISSceneOverlayPlacementConfiguration *)self targetSceneIdentity];
    v7 = [v6 isEqual:v5];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (UISSceneOverlayPlacementConfiguration)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = UISSceneOverlayPlacementConfiguration;
  v5 = [(UISScenePlacementConfiguration *)&v9 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kTargetSceneIdentityKey"];
    targetSceneIdentity = v5->_targetSceneIdentity;
    v5->_targetSceneIdentity = v6;

    if (!v5->_targetSceneIdentity)
    {

      v5 = 0;
    }
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = UISSceneOverlayPlacementConfiguration;
  v4 = a3;
  [(UISScenePlacementConfiguration *)&v6 encodeWithCoder:v4];
  v5 = [(UISSceneOverlayPlacementConfiguration *)self targetSceneIdentity:v6.receiver];
  [v4 encodeObject:v5 forKey:@"kTargetSceneIdentityKey"];
}

- (UISSceneOverlayPlacementConfiguration)initWithBSXPCCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = UISSceneOverlayPlacementConfiguration;
  v5 = [(UISScenePlacementConfiguration *)&v9 initWithBSXPCCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kTargetSceneIdentityKey"];
    targetSceneIdentity = v5->_targetSceneIdentity;
    v5->_targetSceneIdentity = v6;

    if (!v5->_targetSceneIdentity)
    {

      v5 = 0;
    }
  }

  return v5;
}

- (void)encodeWithBSXPCCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = UISSceneOverlayPlacementConfiguration;
  v4 = a3;
  [(UISScenePlacementConfiguration *)&v6 encodeWithBSXPCCoder:v4];
  v5 = [(UISSceneOverlayPlacementConfiguration *)self targetSceneIdentity:v6.receiver];
  [v4 encodeObject:v5 forKey:@"kTargetSceneIdentityKey"];
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v12.receiver = self;
  v12.super_class = UISSceneOverlayPlacementConfiguration;
  v4 = a3;
  v5 = [(UISScenePlacementConfiguration *)&v12 descriptionBuilderWithMultilinePrefix:v4];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __79__UISSceneOverlayPlacementConfiguration_descriptionBuilderWithMultilinePrefix___block_invoke;
  v9[3] = &unk_1E7458FE0;
  v6 = v5;
  v10 = v6;
  v11 = self;
  [v6 appendBodySectionWithName:&stru_1F0A7B1D8 multilinePrefix:v4 block:v9];

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