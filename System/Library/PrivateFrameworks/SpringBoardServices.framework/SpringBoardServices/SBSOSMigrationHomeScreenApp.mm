@interface SBSOSMigrationHomeScreenApp
- (SBSOSMigrationHomeScreenApp)initWithBundleIdentifier:(id)identifier;
- (SBSOSMigrationHomeScreenApp)initWithCoder:(id)coder;
- (void)appendDescriptionToStream:(id)stream;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SBSOSMigrationHomeScreenApp

- (SBSOSMigrationHomeScreenApp)initWithBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v9.receiver = self;
  v9.super_class = SBSOSMigrationHomeScreenApp;
  v5 = [(SBSOSMigrationHomeScreenApp *)&v9 init];
  if (v5)
  {
    v6 = [identifierCopy copy];
    bundleIdentifier = v5->_bundleIdentifier;
    v5->_bundleIdentifier = v6;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  bundleIdentifier = [(SBSOSMigrationHomeScreenApp *)self bundleIdentifier];
  [coderCopy encodeObject:bundleIdentifier forKey:@"bundleIdentifier"];
}

- (SBSOSMigrationHomeScreenApp)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = objc_opt_self();
  v6 = [coderCopy decodeObjectOfClass:v5 forKey:@"bundleIdentifier"];

  v7 = [(SBSOSMigrationHomeScreenApp *)self initWithBundleIdentifier:v6];
  return v7;
}

- (void)appendDescriptionToStream:(id)stream
{
  streamCopy = stream;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __57__SBSOSMigrationHomeScreenApp_appendDescriptionToStream___block_invoke;
  v6[3] = &unk_1E735F7F0;
  v7 = streamCopy;
  selfCopy = self;
  v5 = streamCopy;
  [v5 appendProem:self block:v6];
}

void __57__SBSOSMigrationHomeScreenApp_appendDescriptionToStream___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3 = [*(a1 + 40) bundleIdentifier];
  v2 = [v1 appendObject:v3 withName:@"bundleIdentifier"];
}

@end