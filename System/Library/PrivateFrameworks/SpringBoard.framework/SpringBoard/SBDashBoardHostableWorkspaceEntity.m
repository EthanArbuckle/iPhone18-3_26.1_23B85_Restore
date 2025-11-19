@interface SBDashBoardHostableWorkspaceEntity
- (BOOL)isEqual:(id)a3;
- (SBDashBoardHostableWorkspaceEntity)initWithBundleIdentifier:(id)a3 hostableEntity:(id)a4;
- (id)_generator;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation SBDashBoardHostableWorkspaceEntity

- (SBDashBoardHostableWorkspaceEntity)initWithBundleIdentifier:(id)a3 hostableEntity:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"DashBoardHostableEntity-%@", v6];
  v13.receiver = self;
  v13.super_class = SBDashBoardHostableWorkspaceEntity;
  v9 = [(SBWorkspaceEntity *)&v13 initWithIdentifier:v8 displayChangeSettings:0];

  if (v9)
  {
    v10 = [v6 copy];
    bundleIdentifier = v9->_bundleIdentifier;
    v9->_bundleIdentifier = v10;

    objc_storeStrong(&v9->_hostableEntity, a4);
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = v4;
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

- (id)copyWithZone:(_NSZone *)a3
{
  v8.receiver = self;
  v8.super_class = SBDashBoardHostableWorkspaceEntity;
  v4 = [(SBWorkspaceEntity *)&v8 copyWithZone:a3];
  v5 = [(NSString *)self->_bundleIdentifier copy];
  v6 = *(v4 + 5);
  *(v4 + 5) = v5;

  objc_storeStrong(v4 + 6, self->_hostableEntity);
  return v4;
}

@end