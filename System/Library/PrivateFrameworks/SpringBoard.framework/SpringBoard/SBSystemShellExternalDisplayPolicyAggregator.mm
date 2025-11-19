@interface SBSystemShellExternalDisplayPolicyAggregator
- (BOOL)allowsCapability:(int64_t)a3 explanation:(id *)a4;
- (BOOL)allowsTransitionRequest:(id)a3;
- (SBSystemShellExternalDisplayPolicyAggregator)initWithDefaults:(id)a3 displayIdentity:(id)a4 policyDataSource:(id)a5;
@end

@implementation SBSystemShellExternalDisplayPolicyAggregator

- (SBSystemShellExternalDisplayPolicyAggregator)initWithDefaults:(id)a3 displayIdentity:(id)a4 policyDataSource:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = SBSystemShellExternalDisplayPolicyAggregator;
  v12 = [(SBSystemShellExternalDisplayPolicyAggregator *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_defaults, a3);
    objc_storeStrong(&v13->_displayIdentity, a4);
    objc_storeWeak(&v13->_policyDataSource, v11);
  }

  return v13;
}

- (BOOL)allowsCapability:(int64_t)a3 explanation:(id *)a4
{
  WeakRetained = objc_loadWeakRetained(&self->_policyDataSource);
  LOBYTE(a4) = [WeakRetained allowsCapability:a3 explanation:a4];

  return a4;
}

- (BOOL)allowsTransitionRequest:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_policyDataSource);
  v6 = [WeakRetained allowsTransitionRequest:v4];

  return v6;
}

@end