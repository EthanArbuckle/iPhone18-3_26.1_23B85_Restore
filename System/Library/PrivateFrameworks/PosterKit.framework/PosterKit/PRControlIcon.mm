@interface PRControlIcon
- (PRControlIcon)initWithControlIdentity:(id)identity controlType:(unint64_t)type leafIdentifier:(id)identifier;
@end

@implementation PRControlIcon

- (PRControlIcon)initWithControlIdentity:(id)identity controlType:(unint64_t)type leafIdentifier:(id)identifier
{
  identityCopy = identity;
  identifierCopy = identifier;
  extensionIdentity = [identityCopy extensionIdentity];
  containerBundleIdentifier = [extensionIdentity containerBundleIdentifier];

  v15.receiver = self;
  v15.super_class = PRControlIcon;
  v13 = [(SBLeafIcon *)&v15 initWithLeafIdentifier:identifierCopy applicationBundleID:containerBundleIdentifier];

  if (v13)
  {
    objc_storeStrong(&v13->_controlIdentity, identity);
    v13->_controlType = type;
  }

  return v13;
}

@end