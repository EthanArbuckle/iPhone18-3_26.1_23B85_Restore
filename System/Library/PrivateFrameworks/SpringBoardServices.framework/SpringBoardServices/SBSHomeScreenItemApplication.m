@interface SBSHomeScreenItemApplication
- (BOOL)isEqual:(id)a3;
- (SBSHomeScreenItemApplication)initWithBSXPCCoder:(id)a3;
- (SBSHomeScreenItemApplication)initWithBundleIdentifier:(id)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithBSXPCCoder:(id)a3;
@end

@implementation SBSHomeScreenItemApplication

- (SBSHomeScreenItemApplication)initWithBundleIdentifier:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = SBSHomeScreenItemApplication;
  v5 = [(SBSHomeScreenItemApplication *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    bundleIdentifier = v5->_bundleIdentifier;
    v5->_bundleIdentifier = v6;
  }

  return v5;
}

- (void)encodeWithBSXPCCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = SBSHomeScreenItemApplication;
  v4 = a3;
  [(SBSHomeScreenItem *)&v5 encodeWithBSXPCCoder:v4];
  [v4 encodeObject:self->_bundleIdentifier forKey:{@"bundleIdentifier", v5.receiver, v5.super_class}];
}

- (SBSHomeScreenItemApplication)initWithBSXPCCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = SBSHomeScreenItemApplication;
  v5 = [(SBSHomeScreenItem *)&v9 initWithBSXPCCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeStringForKey:@"bundleIdentifier"];
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E698E6A0] builderWithObject:self ofExpectedClass:objc_opt_class()];
  bundleIdentifier = self->_bundleIdentifier;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __40__SBSHomeScreenItemApplication_isEqual___block_invoke;
  v12[3] = &unk_1E735F618;
  v7 = v4;
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
  v5 = [v3 build];

  return v5;
}

@end