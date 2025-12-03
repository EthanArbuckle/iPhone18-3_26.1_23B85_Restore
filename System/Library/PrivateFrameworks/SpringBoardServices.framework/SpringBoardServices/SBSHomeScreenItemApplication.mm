@interface SBSHomeScreenItemApplication
- (BOOL)isEqual:(id)equal;
- (SBSHomeScreenItemApplication)initWithBSXPCCoder:(id)coder;
- (SBSHomeScreenItemApplication)initWithBundleIdentifier:(id)identifier;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithBSXPCCoder:(id)coder;
@end

@implementation SBSHomeScreenItemApplication

- (SBSHomeScreenItemApplication)initWithBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v9.receiver = self;
  v9.super_class = SBSHomeScreenItemApplication;
  v5 = [(SBSHomeScreenItemApplication *)&v9 init];
  if (v5)
  {
    v6 = [identifierCopy copy];
    bundleIdentifier = v5->_bundleIdentifier;
    v5->_bundleIdentifier = v6;
  }

  return v5;
}

- (void)encodeWithBSXPCCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = SBSHomeScreenItemApplication;
  coderCopy = coder;
  [(SBSHomeScreenItem *)&v5 encodeWithBSXPCCoder:coderCopy];
  [coderCopy encodeObject:self->_bundleIdentifier forKey:{@"bundleIdentifier", v5.receiver, v5.super_class}];
}

- (SBSHomeScreenItemApplication)initWithBSXPCCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = SBSHomeScreenItemApplication;
  v5 = [(SBSHomeScreenItem *)&v9 initWithBSXPCCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeStringForKey:@"bundleIdentifier"];
    bundleIdentifier = v5->_bundleIdentifier;
    v5->_bundleIdentifier = v6;
  }

  return v5;
}

- (unint64_t)hash
{
  v3 = objc_opt_new();
  v4 = [v3 appendObject:self->_bundleIdentifier];
  v8.receiver = self;
  v8.super_class = SBSHomeScreenItemApplication;
  v5 = [(SBSHomeScreenItem *)&v8 hash];
  v6 = [v3 hash];

  return v6 ^ v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = [MEMORY[0x1E698E6A0] builderWithObject:self ofExpectedClass:objc_opt_class()];
  bundleIdentifier = self->_bundleIdentifier;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __40__SBSHomeScreenItemApplication_isEqual___block_invoke;
  v12[3] = &unk_1E735F618;
  v7 = equalCopy;
  v13 = v7;
  v8 = [v5 appendObject:bundleIdentifier counterpart:v12];
  v11.receiver = self;
  v11.super_class = SBSHomeScreenItemApplication;
  if ([(SBSHomeScreenItem *)&v11 isEqual:v7])
  {
    v9 = [v5 isEqual];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)description
{
  v3 = [MEMORY[0x1E698E680] builderWithObject:self];
  v4 = [v3 appendObject:self->_bundleIdentifier withName:@"bundleIdentifier"];
  build = [v3 build];

  return build;
}

@end