@interface UISSceneOrderedPlacementConfiguration
- (BOOL)isEqual:(id)equal;
- (UISSceneOrderedPlacementConfiguration)initWithBSXPCCoder:(id)coder;
- (UISSceneOrderedPlacementConfiguration)initWithCoder:(id)coder;
- (UISSceneOrderedPlacementConfiguration)initWithOrder:(int64_t)order relativeScenePersistenceIdentifer:(id)identifer;
- (id)copyWithZone:(_NSZone *)zone;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (void)encodeWithBSXPCCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation UISSceneOrderedPlacementConfiguration

- (UISSceneOrderedPlacementConfiguration)initWithOrder:(int64_t)order relativeScenePersistenceIdentifer:(id)identifer
{
  identiferCopy = identifer;
  v11.receiver = self;
  v11.super_class = UISSceneOrderedPlacementConfiguration;
  v8 = [(UISScenePlacementConfiguration *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_order = order;
    objc_storeStrong(&v8->_relativeScenePersistenceIdentifier, identifer);
  }

  return v9;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [UISSceneOrderedPlacementConfiguration alloc];
  order = [(UISSceneOrderedPlacementConfiguration *)self order];
  relativeScenePersistenceIdentifier = [(UISSceneOrderedPlacementConfiguration *)self relativeScenePersistenceIdentifier];
  v7 = [(UISSceneOrderedPlacementConfiguration *)v4 initWithOrder:order relativeScenePersistenceIdentifer:relativeScenePersistenceIdentifier];

  return v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v10.receiver = self;
  v10.super_class = UISSceneOrderedPlacementConfiguration;
  if ([(UISScenePlacementConfiguration *)&v10 isEqual:equalCopy])
  {
    relativeScenePersistenceIdentifier = [equalCopy relativeScenePersistenceIdentifier];
    order = [equalCopy order];
    relativeScenePersistenceIdentifier2 = [(UISSceneOrderedPlacementConfiguration *)self relativeScenePersistenceIdentifier];
    if ([relativeScenePersistenceIdentifier2 isEqualToString:relativeScenePersistenceIdentifier])
    {
      v8 = [(UISSceneOrderedPlacementConfiguration *)self order]== order;
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

- (UISSceneOrderedPlacementConfiguration)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = UISSceneOrderedPlacementConfiguration;
  v5 = [(UISScenePlacementConfiguration *)&v9 initWithCoder:coderCopy];
  if (v5)
  {
    v5->_order = [coderCopy decodeInt64ForKey:@"kOrderKey"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kRelativeScenePersistenceIdentifierKey"];
    relativeScenePersistenceIdentifier = v5->_relativeScenePersistenceIdentifier;
    v5->_relativeScenePersistenceIdentifier = v6;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = UISSceneOrderedPlacementConfiguration;
  coderCopy = coder;
  [(UISScenePlacementConfiguration *)&v6 encodeWithCoder:coderCopy];
  [coderCopy encodeInt64:-[UISSceneOrderedPlacementConfiguration order](self forKey:{"order", v6.receiver, v6.super_class), @"kOrderKey"}];
  relativeScenePersistenceIdentifier = [(UISSceneOrderedPlacementConfiguration *)self relativeScenePersistenceIdentifier];
  [coderCopy encodeObject:relativeScenePersistenceIdentifier forKey:@"kRelativeScenePersistenceIdentifierKey"];
}

- (UISSceneOrderedPlacementConfiguration)initWithBSXPCCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = UISSceneOrderedPlacementConfiguration;
  v5 = [(UISScenePlacementConfiguration *)&v9 initWithBSXPCCoder:coderCopy];
  if (v5)
  {
    v5->_order = [coderCopy decodeInt64ForKey:@"kOrderKey"];
    v6 = [coderCopy decodeStringForKey:@"kRelativeScenePersistenceIdentifierKey"];
    relativeScenePersistenceIdentifier = v5->_relativeScenePersistenceIdentifier;
    v5->_relativeScenePersistenceIdentifier = v6;
  }

  return v5;
}

- (void)encodeWithBSXPCCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = UISSceneOrderedPlacementConfiguration;
  coderCopy = coder;
  [(UISScenePlacementConfiguration *)&v6 encodeWithBSXPCCoder:coderCopy];
  [coderCopy encodeInt64:-[UISSceneOrderedPlacementConfiguration order](self forKey:{"order", v6.receiver, v6.super_class), @"kOrderKey"}];
  relativeScenePersistenceIdentifier = [(UISSceneOrderedPlacementConfiguration *)self relativeScenePersistenceIdentifier];
  [coderCopy encodeObject:relativeScenePersistenceIdentifier forKey:@"kRelativeScenePersistenceIdentifierKey"];
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  v12.receiver = self;
  v12.super_class = UISSceneOrderedPlacementConfiguration;
  prefixCopy = prefix;
  v5 = [(UISScenePlacementConfiguration *)&v12 descriptionBuilderWithMultilinePrefix:prefixCopy];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __79__UISSceneOrderedPlacementConfiguration_descriptionBuilderWithMultilinePrefix___block_invoke;
  v9[3] = &unk_1E7458FE0;
  v6 = v5;
  v10 = v6;
  selfCopy = self;
  [v6 appendBodySectionWithName:&stru_1F0A7B1D8 multilinePrefix:prefixCopy block:v9];

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