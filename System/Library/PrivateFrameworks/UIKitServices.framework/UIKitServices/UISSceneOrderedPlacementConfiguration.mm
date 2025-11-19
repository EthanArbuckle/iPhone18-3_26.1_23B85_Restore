@interface UISSceneOrderedPlacementConfiguration
- (BOOL)isEqual:(id)a3;
- (UISSceneOrderedPlacementConfiguration)initWithBSXPCCoder:(id)a3;
- (UISSceneOrderedPlacementConfiguration)initWithCoder:(id)a3;
- (UISSceneOrderedPlacementConfiguration)initWithOrder:(int64_t)a3 relativeScenePersistenceIdentifer:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (void)encodeWithBSXPCCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation UISSceneOrderedPlacementConfiguration

- (UISSceneOrderedPlacementConfiguration)initWithOrder:(int64_t)a3 relativeScenePersistenceIdentifer:(id)a4
{
  v7 = a4;
  v11.receiver = self;
  v11.super_class = UISSceneOrderedPlacementConfiguration;
  v8 = [(UISScenePlacementConfiguration *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_order = a3;
    objc_storeStrong(&v8->_relativeScenePersistenceIdentifier, a4);
  }

  return v9;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [UISSceneOrderedPlacementConfiguration alloc];
  v5 = [(UISSceneOrderedPlacementConfiguration *)self order];
  v6 = [(UISSceneOrderedPlacementConfiguration *)self relativeScenePersistenceIdentifier];
  v7 = [(UISSceneOrderedPlacementConfiguration *)v4 initWithOrder:v5 relativeScenePersistenceIdentifer:v6];

  return v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = UISSceneOrderedPlacementConfiguration;
  if ([(UISScenePlacementConfiguration *)&v10 isEqual:v4])
  {
    v5 = [v4 relativeScenePersistenceIdentifier];
    v6 = [v4 order];
    v7 = [(UISSceneOrderedPlacementConfiguration *)self relativeScenePersistenceIdentifier];
    if ([v7 isEqualToString:v5])
    {
      v8 = [(UISSceneOrderedPlacementConfiguration *)self order]== v6;
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (UISSceneOrderedPlacementConfiguration)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = UISSceneOrderedPlacementConfiguration;
  v5 = [(UISScenePlacementConfiguration *)&v9 initWithCoder:v4];
  if (v5)
  {
    v5->_order = [v4 decodeInt64ForKey:@"kOrderKey"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kRelativeScenePersistenceIdentifierKey"];
    relativeScenePersistenceIdentifier = v5->_relativeScenePersistenceIdentifier;
    v5->_relativeScenePersistenceIdentifier = v6;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = UISSceneOrderedPlacementConfiguration;
  v4 = a3;
  [(UISScenePlacementConfiguration *)&v6 encodeWithCoder:v4];
  [v4 encodeInt64:-[UISSceneOrderedPlacementConfiguration order](self forKey:{"order", v6.receiver, v6.super_class), @"kOrderKey"}];
  v5 = [(UISSceneOrderedPlacementConfiguration *)self relativeScenePersistenceIdentifier];
  [v4 encodeObject:v5 forKey:@"kRelativeScenePersistenceIdentifierKey"];
}

- (UISSceneOrderedPlacementConfiguration)initWithBSXPCCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = UISSceneOrderedPlacementConfiguration;
  v5 = [(UISScenePlacementConfiguration *)&v9 initWithBSXPCCoder:v4];
  if (v5)
  {
    v5->_order = [v4 decodeInt64ForKey:@"kOrderKey"];
    v6 = [v4 decodeStringForKey:@"kRelativeScenePersistenceIdentifierKey"];
    relativeScenePersistenceIdentifier = v5->_relativeScenePersistenceIdentifier;
    v5->_relativeScenePersistenceIdentifier = v6;
  }

  return v5;
}

- (void)encodeWithBSXPCCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = UISSceneOrderedPlacementConfiguration;
  v4 = a3;
  [(UISScenePlacementConfiguration *)&v6 encodeWithBSXPCCoder:v4];
  [v4 encodeInt64:-[UISSceneOrderedPlacementConfiguration order](self forKey:{"order", v6.receiver, v6.super_class), @"kOrderKey"}];
  v5 = [(UISSceneOrderedPlacementConfiguration *)self relativeScenePersistenceIdentifier];
  [v4 encodeObject:v5 forKey:@"kRelativeScenePersistenceIdentifierKey"];
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v12.receiver = self;
  v12.super_class = UISSceneOrderedPlacementConfiguration;
  v4 = a3;
  v5 = [(UISScenePlacementConfiguration *)&v12 descriptionBuilderWithMultilinePrefix:v4];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __79__UISSceneOrderedPlacementConfiguration_descriptionBuilderWithMultilinePrefix___block_invoke;
  v9[3] = &unk_1E7458FE0;
  v6 = v5;
  v10 = v6;
  v11 = self;
  [v6 appendBodySectionWithName:&stru_1F0A7B1D8 multilinePrefix:v4 block:v9];

  v7 = v6;
  return v6;
}

id __79__UISSceneOrderedPlacementConfiguration_descriptionBuilderWithMultilinePrefix___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) relativeScenePersistenceIdentifier];
  [v2 appendString:v3 withName:@"relativeScenePersistenceIdentifier"];

  return [*(a1 + 32) appendInt:objc_msgSend(*(a1 + 40) withName:{"order"), @"order"}];
}

@end