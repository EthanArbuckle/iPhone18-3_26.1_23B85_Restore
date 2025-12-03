@interface SBHardwareButtonGestureParametersProviderBase
- (SBHardwareButtonGestureParameters)hardwareButtonGestureParameters;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)succinctDescription;
- (void)addHardwareButtonGestureParametersObserver:(id)observer;
- (void)publishUpdatedParameters:(id)parameters;
@end

@implementation SBHardwareButtonGestureParametersProviderBase

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(SBHardwareButtonGestureParametersProviderBase *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(SBHardwareButtonGestureParametersProviderBase *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  succinctDescriptionBuilder = [(SBHardwareButtonGestureParametersProviderBase *)self succinctDescriptionBuilder];
  hardwareButtonGestureParameters = [(SBHardwareButtonGestureParametersProviderBase *)self hardwareButtonGestureParameters];
  v6 = [succinctDescriptionBuilder appendObject:hardwareButtonGestureParameters withName:@"hardwareButtonGestureParameters"];

  return succinctDescriptionBuilder;
}

- (void)addHardwareButtonGestureParametersObserver:(id)observer
{
  observerCopy = observer;
  observers = self->_observers;
  v8 = observerCopy;
  if (!observers)
  {
    weakToStrongObjectsMapTable = [MEMORY[0x277CCAB00] weakToStrongObjectsMapTable];
    v7 = self->_observers;
    self->_observers = weakToStrongObjectsMapTable;

    observerCopy = v8;
    observers = self->_observers;
  }

  [(NSMapTable *)observers setObject:MEMORY[0x277CBEC38] forKey:observerCopy];
}

- (void)publishUpdatedParameters:(id)parameters
{
  v15 = *MEMORY[0x277D85DE8];
  parametersCopy = parameters;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = self->_observers;
  v6 = [(NSMapTable *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v10 + 1) + 8 * v9++) provider:self didUpdateButtonGestureParameters:{parametersCopy, v10}];
      }

      while (v7 != v9);
      v7 = [(NSMapTable *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (SBHardwareButtonGestureParameters)hardwareButtonGestureParameters
{
  objc_opt_class();
  NSRequestConcreteImplementation();
  return 0;
}

@end