@interface SBHTestAppIconDescriptor
- (BOOL)isEqual:(id)a3;
- (BOOL)sbh_isValidWithError:(id *)a3;
- (SBHTestAppIconDescriptor)initWithAppIconBundleIdentifier:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation SBHTestAppIconDescriptor

- (SBHTestAppIconDescriptor)initWithAppIconBundleIdentifier:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = SBHTestAppIconDescriptor;
  v5 = [(SBHTestAppIconDescriptor *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    bundleIdentifier = v5->_bundleIdentifier;
    v5->_bundleIdentifier = v6;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  bundleIdentifier = self->_bundleIdentifier;

  return [v4 initWithAppIconBundleIdentifier:bundleIdentifier];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self == v4)
  {
    v7 = 1;
  }

  else if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = [(SBHTestAppIconDescriptor *)v5 bundleIdentifier];
    v7 = [v6 isEqual:self->_bundleIdentifier];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)sbh_isValidWithError:(id *)a3
{
  v3 = [objc_alloc(MEMORY[0x1E69635F8]) initWithBundleIdentifier:self->_bundleIdentifier allowPlaceholder:0 error:a3];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 applicationState];
    v6 = [v5 isValid];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end