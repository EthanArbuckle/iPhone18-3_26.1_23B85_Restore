@interface SBSystemShellExternalDisplayPolicyAggregator
- (BOOL)allowsCapability:(int64_t)capability explanation:(id *)explanation;
- (BOOL)allowsTransitionRequest:(id)request;
- (SBSystemShellExternalDisplayPolicyAggregator)initWithDefaults:(id)defaults displayIdentity:(id)identity policyDataSource:(id)source;
@end

@implementation SBSystemShellExternalDisplayPolicyAggregator

- (SBSystemShellExternalDisplayPolicyAggregator)initWithDefaults:(id)defaults displayIdentity:(id)identity policyDataSource:(id)source
{
  defaultsCopy = defaults;
  identityCopy = identity;
  sourceCopy = source;
  v15.receiver = self;
  v15.super_class = SBSystemShellExternalDisplayPolicyAggregator;
  v12 = [(SBSystemShellExternalDisplayPolicyAggregator *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_defaults, defaults);
    objc_storeStrong(&v13->_displayIdentity, identity);
    objc_storeWeak(&v13->_policyDataSource, sourceCopy);
  }

  return v13;
}

- (BOOL)allowsCapability:(int64_t)capability explanation:(id *)explanation
{
  WeakRetained = objc_loadWeakRetained(&self->_policyDataSource);
  LOBYTE(explanation) = [WeakRetained allowsCapability:capability explanation:explanation];

  return explanation;
}

- (BOOL)allowsTransitionRequest:(id)request
{
  requestCopy = request;
  WeakRetained = objc_loadWeakRetained(&self->_policyDataSource);
  v6 = [WeakRetained allowsTransitionRequest:requestCopy];

  return v6;
}

@end