@interface HDSPSimulatorReadyProvider
- (HDSPEnvironment)environment;
- (HDSPSimulatorReadyProvider)initWithEnvironment:(id)a3;
- (HDSPSystemReadyDelegate)delegate;
@end

@implementation HDSPSimulatorReadyProvider

- (HDSPSimulatorReadyProvider)initWithEnvironment:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = HDSPSimulatorReadyProvider;
  v5 = [(HDSPSimulatorReadyProvider *)&v9 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_environment, v4);
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