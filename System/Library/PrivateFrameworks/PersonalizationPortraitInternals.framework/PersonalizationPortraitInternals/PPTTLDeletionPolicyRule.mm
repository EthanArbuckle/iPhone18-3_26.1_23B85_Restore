@interface PPTTLDeletionPolicyRule
- (PPTTLDeletionPolicyRule)initWithBundleIdentifier:(id)identifier groupIdentifier:(id)groupIdentifier maxAgeSeconds:(id)seconds;
- (id)description;
@end

@implementation PPTTLDeletionPolicyRule

- (id)description
{
  v2 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"<PPTTLDeletionPolicyRule b:%@ g:%@ m:%@>", self->_bundleIdentifier, self->_groupIdentifier, self->_maxAgeSeconds];

  return v2;
}

- (PPTTLDeletionPolicyRule)initWithBundleIdentifier:(id)identifier groupIdentifier:(id)groupIdentifier maxAgeSeconds:(id)seconds
{
  identifierCopy = identifier;
  groupIdentifierCopy = groupIdentifier;
  secondsCopy = seconds;
  v15.receiver = self;
  v15.super_class = PPTTLDeletionPolicyRule;
  v12 = [(PPTTLDeletionPolicyRule *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_bundleIdentifier, identifier);
    objc_storeStrong(&v13->_groupIdentifier, groupIdentifier);
    objc_storeStrong(&v13->_maxAgeSeconds, seconds);
  }

  return v13;
}

@end