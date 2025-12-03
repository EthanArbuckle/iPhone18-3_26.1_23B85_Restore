@interface SBDashBoardHostableWorkspaceEntity
- (BOOL)isEqual:(id)equal;
- (SBDashBoardHostableWorkspaceEntity)initWithBundleIdentifier:(id)identifier hostableEntity:(id)entity;
- (id)_generator;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation SBDashBoardHostableWorkspaceEntity

- (SBDashBoardHostableWorkspaceEntity)initWithBundleIdentifier:(id)identifier hostableEntity:(id)entity
{
  identifierCopy = identifier;
  entityCopy = entity;
  identifierCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"DashBoardHostableEntity-%@", identifierCopy];
  v13.receiver = self;
  v13.super_class = SBDashBoardHostableWorkspaceEntity;
  v9 = [(SBWorkspaceEntity *)&v13 initWithIdentifier:identifierCopy displayChangeSettings:0];

  if (v9)
  {
    v10 = [identifierCopy copy];
    bundleIdentifier = v9->_bundleIdentifier;
    v9->_bundleIdentifier = v10;

    objc_storeStrong(&v9->_hostableEntity, entity);
  }

  return v9;
}

- (id)_generator
{
  v3 = [(NSString *)self->_bundleIdentifier copy];
  v4 = self->_hostableEntity;
  v5 = objc_opt_class();
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __48__SBDashBoardHostableWorkspaceEntity__generator__block_invoke;
  v11[3] = &unk_2783C2848;
  v13 = v4;
  v14 = v5;
  v12 = v3;
  v6 = v4;
  v7 = v3;
  v8 = MEMORY[0x223D6F7F0](v11);
  v9 = MEMORY[0x223D6F7F0]();

  return v9;
}

id __48__SBDashBoardHostableWorkspaceEntity__generator__block_invoke(uint64_t a1)
{
  v1 = [objc_alloc(*(a1 + 48)) initWithBundleIdentifier:*(a1 + 32) hostableEntity:*(a1 + 40)];

  return v1;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = objc_opt_class();
  v6 = equalCopy;
  if (v5)
  {
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  if (v8 == self)
  {
    v9 = 1;
  }

  else if (v8 && [(NSString *)v8->_bundleIdentifier isEqualToString:self->_bundleIdentifier])
  {
    v9 = [(CSHostableEntity *)v8->_hostableEntity isEqual:self->_hostableEntity];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v8.receiver = self;
  v8.super_class = SBDashBoardHostableWorkspaceEntity;
  v4 = [(SBWorkspaceEntity *)&v8 copyWithZone:zone];
  v5 = [(NSString *)self->_bundleIdentifier copy];
  v6 = *(v4 + 5);
  *(v4 + 5) = v5;

  objc_storeStrong(v4 + 6, self->_hostableEntity);
  return v4;
}

@end