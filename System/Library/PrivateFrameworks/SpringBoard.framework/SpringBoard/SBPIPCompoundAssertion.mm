@interface SBPIPCompoundAssertion
- (SBPIPCompoundAssertion)initWithIdentifier:(id)a3 reason:(int64_t)a4;
- (void)addAssertionForController:(id)a3 windowScene:(id)a4;
- (void)dealloc;
- (void)invalidate;
- (void)removeAssertionForController:(id)a3;
@end

@implementation SBPIPCompoundAssertion

- (SBPIPCompoundAssertion)initWithIdentifier:(id)a3 reason:(int64_t)a4
{
  v6 = a3;
  v11.receiver = self;
  v11.super_class = SBPIPCompoundAssertion;
  v7 = [(SBPIPCompoundAssertion *)&v11 init];
  if (v7)
  {
    v8 = [v6 copy];
    identifier = v7->_identifier;
    v7->_identifier = v8;

    v7->_reason = a4;
  }

  return v7;
}

- (void)dealloc
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBPIPCompoundAssertion.m" lineNumber:26 description:@"Deallocated with outstanding assertions"];
}

- (void)addAssertionForController:(id)a3 windowScene:(id)a4
{
  v10 = a3;
  v6 = a4;
  if (!self->_controllerToStashAssertionMap)
  {
    v7 = [MEMORY[0x277CCAB00] weakToStrongObjectsMapTable];
    controllerToStashAssertionMap = self->_controllerToStashAssertionMap;
    self->_controllerToStashAssertionMap = v7;
  }

  v9 = [v10 acquireStashAssertionForWindowScene:v6 withReason:self->_reason identifier:self->_identifier];
  [(NSMapTable *)self->_controllerToStashAssertionMap setObject:v9 forKey:v10];
}

- (void)removeAssertionForController:(id)a3
{
  controllerToStashAssertionMap = self->_controllerToStashAssertionMap;
  v6 = a3;
  v8 = [(NSMapTable *)controllerToStashAssertionMap objectForKey:v6];
  [(NSMapTable *)self->_controllerToStashAssertionMap removeObjectForKey:v6];

  v7 = v8;
  if (!v8)
  {
    [(SBPIPCompoundAssertion *)a2 removeAssertionForController:?];
    v7 = 0;
  }

  [v7 invalidate];
}

- (void)invalidate
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = [(NSMapTable *)self->_controllerToStashAssertionMap objectEnumerator];
  v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v8 + 1) + 8 * v7++) invalidate];
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }

  [(NSMapTable *)self->_controllerToStashAssertionMap removeAllObjects];
}

- (void)removeAssertionForController:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBPIPCompoundAssertion.m" lineNumber:42 description:@"Removing an assertion for a controller which was never registered"];
}

@end