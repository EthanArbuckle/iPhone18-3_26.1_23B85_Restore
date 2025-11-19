@interface SBHardwareButtonGestureParametersProviderBase
- (SBHardwareButtonGestureParameters)hardwareButtonGestureParameters;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)succinctDescription;
- (void)addHardwareButtonGestureParametersObserver:(id)a3;
- (void)publishUpdatedParameters:(id)a3;
@end

@implementation SBHardwareButtonGestureParametersProviderBase

- (id)succinctDescription
{
  v2 = [(SBHardwareButtonGestureParametersProviderBase *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(SBHardwareButtonGestureParametersProviderBase *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v4 = [(SBHardwareButtonGestureParametersProviderBase *)self succinctDescriptionBuilder];
  v5 = [(SBHardwareButtonGestureParametersProviderBase *)self hardwareButtonGestureParameters];
  v6 = [v4 appendObject:v5 withName:@"hardwareButtonGestureParameters"];

  return v4;
}

- (void)addHardwareButtonGestureParametersObserver:(id)a3
{
  v4 = a3;
  observers = self->_observers;
  v8 = v4;
  if (!observers)
  {
    v6 = [MEMORY[0x277CCAB00] weakToStrongObjectsMapTable];
    v7 = self->_observers;
    self->_observers = v6;

    v4 = v8;
    observers = self->_observers;
  }

  [(NSMapTable *)observers setObject:MEMORY[0x277CBEC38] forKey:v4];
}

- (void)publishUpdatedParameters:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
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

        [*(*(&v10 + 1) + 8 * v9++) provider:self didUpdateButtonGestureParameters:{v4, v10}];
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