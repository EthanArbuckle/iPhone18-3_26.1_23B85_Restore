@interface PPTTLDeletionPolicyRule
- (PPTTLDeletionPolicyRule)initWithBundleIdentifier:(id)a3 groupIdentifier:(id)a4 maxAgeSeconds:(id)a5;
- (id)description;
@end

@implementation PPTTLDeletionPolicyRule

- (id)description
{
  v2 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"<PPTTLDeletionPolicyRule b:%@ g:%@ m:%@>", self->_bundleIdentifier, self->_groupIdentifier, self->_maxAgeSeconds];

  return v2;
}

- (PPTTLDeletionPolicyRule)initWithBundleIdentifier:(id)a3 groupIdentifier:(id)a4 maxAgeSeconds:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = PPTTLDeletionPolicyRule;
  v12 = [(PPTTLDeletionPolicyRule *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_bundleIdentifier, a3);
    objc_storeStrong(&v13->_groupIdentifier, a4);
    objc_storeStrong(&v13->_maxAgeSeconds, a5);
  }

  return v13;
}

@end