@interface SBSOSMigrationHomeScreenApp
- (SBSOSMigrationHomeScreenApp)initWithBundleIdentifier:(id)a3;
- (SBSOSMigrationHomeScreenApp)initWithCoder:(id)a3;
- (void)appendDescriptionToStream:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SBSOSMigrationHomeScreenApp

- (SBSOSMigrationHomeScreenApp)initWithBundleIdentifier:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = SBSOSMigrationHomeScreenApp;
  v5 = [(SBSOSMigrationHomeScreenApp *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    bundleIdentifier = v5->_bundleIdentifier;
    v5->_bundleIdentifier = v6;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(SBSOSMigrationHomeScreenApp *)self bundleIdentifier];
  [v4 encodeObject:v5 forKey:@"bundleIdentifier"];
}

- (SBSOSMigrationHomeScreenApp)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = objc_opt_self();
  v6 = [v4 decodeObjectOfClass:v5 forKey:@"bundleIdentifier"];

  v7 = [(SBSOSMigrationHomeScreenApp *)self initWithBundleIdentifier:v6];
  return v7;
}

- (void)appendDescriptionToStream:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __57__SBSOSMigrationHomeScreenApp_appendDescriptionToStream___block_invoke;
  v6[3] = &unk_1E735F7F0;
  v7 = v4;
  v8 = self;
  v5 = v4;
  [v5 appendProem:self block:v6];
}

void __57__SBSOSMigrationHomeScreenApp_appendDescriptionToStream___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3 = [*(a1 + 40) bundleIdentifier];
  v2 = [v1 appendObject:v3 withName:@"bundleIdentifier"];
}

@end