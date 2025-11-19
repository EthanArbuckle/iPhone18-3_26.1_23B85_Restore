@interface SBSOSMigrationHomeScreenFolder
- (SBSOSMigrationHomeScreenFolder)initWithCoder:(id)a3;
- (SBSOSMigrationHomeScreenFolder)initWithDisplayName:(id)a3 apps:(id)a4;
- (void)appendDescriptionToStream:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SBSOSMigrationHomeScreenFolder

- (SBSOSMigrationHomeScreenFolder)initWithDisplayName:(id)a3 apps:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = SBSOSMigrationHomeScreenFolder;
  v8 = [(SBSOSMigrationHomeScreenFolder *)&v14 init];
  if (v8)
  {
    v9 = [v6 copy];
    displayName = v8->_displayName;
    v8->_displayName = v9;

    v11 = [v7 copy];
    apps = v8->_apps;
    v8->_apps = v11;
  }

  return v8;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(SBSOSMigrationHomeScreenFolder *)self displayName];
  [v4 encodeObject:v5 forKey:@"displayName"];

  v6 = [(SBSOSMigrationHomeScreenFolder *)self apps];
  [v4 encodeObject:v6 forKey:@"apps"];
}

- (SBSOSMigrationHomeScreenFolder)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = objc_opt_self();
  v6 = [v4 decodeObjectOfClass:v5 forKey:@"displayName"];

  v7 = objc_opt_self();
  v8 = [v4 decodeArrayOfObjectsOfClass:v7 forKey:@"apps"];

  v9 = [(SBSOSMigrationHomeScreenFolder *)self initWithDisplayName:v6 apps:v8];
  return v9;
}

- (void)appendDescriptionToStream:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __60__SBSOSMigrationHomeScreenFolder_appendDescriptionToStream___block_invoke;
  v6[3] = &unk_1E735F7F0;
  v7 = v4;
  v8 = self;
  v5 = v4;
  [v5 appendProem:self block:v6];
}

void __60__SBSOSMigrationHomeScreenFolder_appendDescriptionToStream___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) displayName];
  v4 = [v2 appendObject:v3 withName:@"displayName"];

  v5 = *(a1 + 32);
  v7 = [*(a1 + 40) apps];
  v6 = [v5 appendObject:v7 withName:@"apps"];
}

@end