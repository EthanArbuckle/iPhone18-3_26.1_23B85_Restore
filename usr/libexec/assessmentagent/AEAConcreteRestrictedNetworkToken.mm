@interface AEAConcreteRestrictedNetworkToken
- (BOOL)releaseRestrictions;
- (void)dealloc;
@end

@implementation AEAConcreteRestrictedNetworkToken

- (void)dealloc
{
  [(AEAConcreteRestrictedNetworkToken *)self releaseRestrictions];
  v3.receiver = self;
  v3.super_class = AEAConcreteRestrictedNetworkToken;
  [(AEAConcreteRestrictedNetworkToken *)&v3 dealloc];
}

- (BOOL)releaseRestrictions
{
  if (!self || !self->_policySession)
  {
    goto LABEL_5;
  }

  removeAllPolicies = [(NEPolicySession *)self->_policySession removeAllPolicies];
  if (removeAllPolicies)
  {
    sub_10007C448(self, 0);
LABEL_5:
    LOBYTE(removeAllPolicies) = 1;
  }

  return removeAllPolicies;
}

@end