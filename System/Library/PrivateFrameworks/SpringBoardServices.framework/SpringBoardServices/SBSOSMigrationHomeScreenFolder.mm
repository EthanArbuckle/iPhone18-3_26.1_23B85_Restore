@interface SBSOSMigrationHomeScreenFolder
- (SBSOSMigrationHomeScreenFolder)initWithCoder:(id)coder;
- (SBSOSMigrationHomeScreenFolder)initWithDisplayName:(id)name apps:(id)apps;
- (void)appendDescriptionToStream:(id)stream;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SBSOSMigrationHomeScreenFolder

- (SBSOSMigrationHomeScreenFolder)initWithDisplayName:(id)name apps:(id)apps
{
  nameCopy = name;
  appsCopy = apps;
  v14.receiver = self;
  v14.super_class = SBSOSMigrationHomeScreenFolder;
  v8 = [(SBSOSMigrationHomeScreenFolder *)&v14 init];
  if (v8)
  {
    v9 = [nameCopy copy];
    displayName = v8->_displayName;
    v8->_displayName = v9;

    v11 = [appsCopy copy];
    apps = v8->_apps;
    v8->_apps = v11;
  }

  return v8;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  displayName = [(SBSOSMigrationHomeScreenFolder *)self displayName];
  [coderCopy encodeObject:displayName forKey:@"displayName"];

  apps = [(SBSOSMigrationHomeScreenFolder *)self apps];
  [coderCopy encodeObject:apps forKey:@"apps"];
}

- (SBSOSMigrationHomeScreenFolder)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = objc_opt_self();
  v6 = [coderCopy decodeObjectOfClass:v5 forKey:@"displayName"];

  v7 = objc_opt_self();
  v8 = [coderCopy decodeArrayOfObjectsOfClass:v7 forKey:@"apps"];

  v9 = [(SBSOSMigrationHomeScreenFolder *)self initWithDisplayName:v6 apps:v8];
  return v9;
}

- (void)appendDescriptionToStream:(id)stream
{
  streamCopy = stream;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __60__SBSOSMigrationHomeScreenFolder_appendDescriptionToStream___block_invoke;
  v6[3] = &unk_1E735F7F0;
  v7 = streamCopy;
  selfCopy = self;
  v5 = streamCopy;
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