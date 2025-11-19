@interface SBSHomeScreenConfigurationLayout
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (SBSHomeScreenConfigurationLayout)initWithBSXPCCoder:(id)a3;
- (SBSHomeScreenConfigurationLayout)initWithItems:(id)a3 dockItems:(id)a4;
- (unint64_t)hash;
- (void)encodeWithBSXPCCoder:(id)a3;
@end

@implementation SBSHomeScreenConfigurationLayout

- (SBSHomeScreenConfigurationLayout)initWithItems:(id)a3 dockItems:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = SBSHomeScreenConfigurationLayout;
  v8 = [(SBSHomeScreenConfigurationLayout *)&v14 init];
  if (v8)
  {
    v9 = [v6 copy];
    items = v8->_items;
    v8->_items = v9;

    v11 = [v7 copy];
    dockItems = v8->_dockItems;
    v8->_dockItems = v11;
  }

  return v8;
}

- (void)encodeWithBSXPCCoder:(id)a3
{
  items = self->_items;
  v5 = a3;
  [v5 encodeCollection:items forKey:@"items"];
  [v5 encodeCollection:self->_dockItems forKey:@"dockItems"];
}

- (SBSHomeScreenConfigurationLayout)initWithBSXPCCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = SBSHomeScreenConfigurationLayout;
  v5 = [(SBSHomeScreenConfigurationLayout *)&v13 init];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = [v4 decodeCollectionOfClass:v6 containingClass:objc_opt_class() forKey:@"items"];
    items = v5->_items;
    v5->_items = v7;

    v9 = objc_opt_class();
    v10 = [v4 decodeCollectionOfClass:v9 containingClass:objc_opt_class() forKey:@"dockItems"];
    dockItems = v5->_dockItems;
    v5->_dockItems = v10;
  }

  return v5;
}

- (unint64_t)hash
{
  v3 = objc_opt_new();
  v4 = [v3 appendObject:self->_items];
  v5 = [v3 appendObject:self->_dockItems];
  v6 = [v3 hash];

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E698E6A0] builderWithObject:self ofExpectedClass:objc_opt_class()];
  items = self->_items;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __44__SBSHomeScreenConfigurationLayout_isEqual___block_invoke;
  v18[3] = &unk_1E735F618;
  v7 = v4;
  v19 = v7;
  v8 = [v5 appendObject:items counterpart:v18];
  dockItems = self->_dockItems;
  v13 = MEMORY[0x1E69E9820];
  v14 = 3221225472;
  v15 = __44__SBSHomeScreenConfigurationLayout_isEqual___block_invoke_2;
  v16 = &unk_1E735F618;
  v17 = v7;
  v10 = v7;
  v11 = [v5 appendObject:dockItems counterpart:&v13];
  LOBYTE(dockItems) = [v5 isEqual];

  return dockItems;
}

- (NSString)description
{
  v3 = [MEMORY[0x1E698E680] builderWithObject:self];
  v4 = [v3 appendObject:self->_items withName:@"items"];
  v5 = [v3 appendObject:self->_dockItems withName:@"dockItems"];
  v6 = [v3 build];

  return v6;
}

@end