@interface HDSPMacReadyProvider
- (HDSPEnvironment)environment;
- (HDSPMacReadyProvider)initWithEnvironment:(id)environment;
- (HDSPSystemReadyDelegate)delegate;
@end

@implementation HDSPMacReadyProvider

- (HDSPMacReadyProvider)initWithEnvironment:(id)environment
{
  environmentCopy = environment;
  v9.receiver = self;
  v9.super_class = HDSPMacReadyProvider;
  v5 = [(HDSPMacReadyProvider *)&v9 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_environment, environmentCopy);
    v7 = v6;
  }

  return v6;
}

- (HDSPEnvironment)environment
{
  WeakRetained = objc_loadWeakRetained(&self->_environment);

  return WeakRetained;
}

- (HDSPSystemReadyDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end