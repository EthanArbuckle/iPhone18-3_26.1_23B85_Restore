@interface SBHTestAppIconDescriptor
- (BOOL)isEqual:(id)equal;
- (BOOL)sbh_isValidWithError:(id *)error;
- (SBHTestAppIconDescriptor)initWithAppIconBundleIdentifier:(id)identifier;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation SBHTestAppIconDescriptor

- (SBHTestAppIconDescriptor)initWithAppIconBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v9.receiver = self;
  v9.super_class = SBHTestAppIconDescriptor;
  v5 = [(SBHTestAppIconDescriptor *)&v9 init];
  if (v5)
  {
    v6 = [identifierCopy copy];
    bundleIdentifier = v5->_bundleIdentifier;
    v5->_bundleIdentifier = v6;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  bundleIdentifier = self->_bundleIdentifier;

  return [v4 initWithAppIconBundleIdentifier:bundleIdentifier];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (self == equalCopy)
  {
    v7 = 1;
  }

  else if (equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    bundleIdentifier = [(SBHTestAppIconDescriptor *)v5 bundleIdentifier];
    v7 = [bundleIdentifier isEqual:self->_bundleIdentifier];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)sbh_isValidWithError:(id *)error
{
  v3 = [objc_alloc(MEMORY[0x1E69635F8]) initWithBundleIdentifier:self->_bundleIdentifier allowPlaceholder:0 error:error];
  v4 = v3;
  if (v3)
  {
    applicationState = [v3 applicationState];
    isValid = [applicationState isValid];
  }

  else
  {
    isValid = 0;
  }

  return isValid;
}

@end