@interface SBSOSMigrationHomeScreenLayout
- (SBSOSMigrationHomeScreenLayout)initWithCoder:(id)a3;
- (SBSOSMigrationHomeScreenLayout)initWithPages:(id)a3 bottomBarItems:(id)a4;
- (void)appendDescriptionToStream:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SBSOSMigrationHomeScreenLayout

- (SBSOSMigrationHomeScreenLayout)initWithPages:(id)a3 bottomBarItems:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = SBSOSMigrationHomeScreenLayout;
  v8 = [(SBSOSMigrationHomeScreenLayout *)&v14 init];
  if (v8)
  {
    v9 = [v6 copy];
    pages = v8->_pages;
    v8->_pages = v9;

    v11 = [v7 copy];
    bottomBarItems = v8->_bottomBarItems;
    v8->_bottomBarItems = v11;
  }

  return v8;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(SBSOSMigrationHomeScreenLayout *)self pages];
  [v4 encodeObject:v5 forKey:@"pages"];

  v6 = [(SBSOSMigrationHomeScreenLayout *)self bottomBarItems];
  [v4 encodeObject:v6 forKey:@"bottomBarItems"];
}

- (SBSOSMigrationHomeScreenLayout)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = objc_opt_self();
  v6 = [v4 decodeArrayOfObjectsOfClass:v5 forKey:@"pages"];

  v7 = objc_opt_self();
  v8 = [v4 decodeArrayOfObjectsOfClass:v7 forKey:@"bottomBarItems"];

  v9 = [(SBSOSMigrationHomeScreenLayout *)self initWithPages:v6 bottomBarItems:v8];
  return v9;
}

- (void)appendDescriptionToStream:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __60__SBSOSMigrationHomeScreenLayout_appendDescriptionToStream___block_invoke;
  v6[3] = &unk_1E735F7F0;
  v7 = v4;
  v8 = self;
  v5 = v4;
  [v5 appendProem:self block:v6];
}

void __60__SBSOSMigrationHomeScreenLayout_appendDescriptionToStream___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) pages];
  v4 = [v2 appendObject:v3 withName:@"pages"];

  v5 = *(a1 + 32);
  v7 = [*(a1 + 40) bottomBarItems];
  v6 = [v5 appendObject:v7 withName:@"bottomBarItems"];
}

@end