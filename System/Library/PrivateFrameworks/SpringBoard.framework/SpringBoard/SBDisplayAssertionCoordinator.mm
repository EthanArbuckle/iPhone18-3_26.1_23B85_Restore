@interface SBDisplayAssertionCoordinator
- (SBDisplayAssertionCoordinator)init;
- (SBDisplayAssertionCoordinatorDelegate)delegate;
- (id)_createDisplayAssertionStackForRootDisplay:(id)a3;
- (id)acquireAssertionForDisplay:(id)a3 level:(unint64_t)a4 deactivationReasons:(unint64_t)a5 delegate:(id)a6;
- (void)activateAssertionsForDisplay:(id)a3;
- (void)assertionStack:(id)a3 updatedAssertionPreferences:(id)a4 oldPreferences:(id)a5;
- (void)dealloc;
- (void)invalidateAssertionForDerivedDisplayDisconnect:(id)a3;
- (void)rootDisplayDidConnect:(id)a3;
- (void)rootDisplayDidDisconnect:(id)a3;
@end

@implementation SBDisplayAssertionCoordinator

- (SBDisplayAssertionCoordinator)init
{
  v8.receiver = self;
  v8.super_class = SBDisplayAssertionCoordinator;
  v2 = [(SBDisplayAssertionCoordinator *)&v8 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CBEB38] dictionary];
    assertionStackMap = v2->_assertionStackMap;
    v2->_assertionStackMap = v3;

    v5 = [MEMORY[0x277CBEB38] dictionary];
    assertionPreferencesMap = v2->_assertionPreferencesMap;
    v2->_assertionPreferencesMap = v5;
  }

  return v2;
}

- (void)dealloc
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = self->_assertionStackMap;
  v4 = [(NSMutableDictionary *)v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      v7 = 0;
      do
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [(NSMutableDictionary *)self->_assertionStackMap objectForKey:*(*(&v11 + 1) + 8 * v7)];
        [v8 invalidateForDisplayDisconnect];

        ++v7;
      }

      while (v5 != v7);
      v5 = [(NSMutableDictionary *)v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  assertionStackMap = self->_assertionStackMap;
  self->_assertionStackMap = 0;

  v10.receiver = self;
  v10.super_class = SBDisplayAssertionCoordinator;
  [(SBDisplayAssertionCoordinator *)&v10 dealloc];
}

- (id)acquireAssertionForDisplay:(id)a3 level:(unint64_t)a4 deactivationReasons:(unint64_t)a5 delegate:(id)a6
{
  v10 = a6;
  v11 = a3;
  if (([v11 isRootIdentity] & 1) == 0)
  {
    [SBDisplayAssertionCoordinator acquireAssertionForDisplay:level:deactivationReasons:delegate:];
  }

  if (SBDisplayAssertionLevelIsValid(a4))
  {
    if (v10)
    {
      goto LABEL_5;
    }
  }

  else
  {
    [SBDisplayAssertionCoordinator acquireAssertionForDisplay:level:deactivationReasons:delegate:];
    if (v10)
    {
      goto LABEL_5;
    }
  }

  [SBDisplayAssertionCoordinator acquireAssertionForDisplay:level:deactivationReasons:delegate:];
LABEL_5:
  v12 = [(NSMutableDictionary *)self->_assertionStackMap objectForKey:v11];
  v13 = [v12 acquireAssertionForDisplay:v11 level:a4 deactivationReasons:a5 delegate:v10];

  return v13;
}

- (void)activateAssertionsForDisplay:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (([v4 isRootIdentity] & 1) == 0)
  {
    [SBDisplayAssertionCoordinator activateAssertionsForDisplay:];
  }

  v5 = SBLogDisplayAssertions();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = _SBFLoggingMethodProem();
    v8 = 138543618;
    v9 = v6;
    v10 = 2114;
    v11 = v4;
    _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ activating assertions for display %{public}@", &v8, 0x16u);
  }

  v7 = [(NSMutableDictionary *)self->_assertionStackMap objectForKey:v4];
  [v7 activateAssertionsForDisplay:v4];
}

- (void)rootDisplayDidConnect:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (([v5 isRootIdentity] & 1) == 0)
  {
    [SBDisplayAssertionCoordinator rootDisplayDidConnect:];
  }

  v6 = [(NSMutableDictionary *)self->_assertionStackMap objectForKey:v5];

  if (v6)
  {
    [(SBDisplayAssertionCoordinator *)a2 rootDisplayDidConnect:v5];
  }

  v7 = SBLogDisplayAssertions();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = _SBFLoggingMethodProem();
    v11 = 138543618;
    v12 = v8;
    v13 = 2114;
    v14 = v5;
    _os_log_impl(&dword_21ED4E000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ told root display connected %{public}@", &v11, 0x16u);
  }

  v9 = [(NSMutableDictionary *)self->_assertionStackMap objectForKey:v5];

  if (!v9)
  {
    v10 = [(SBDisplayAssertionCoordinator *)self _createDisplayAssertionStackForRootDisplay:v5];
    [(NSMutableDictionary *)self->_assertionStackMap setObject:v10 forKey:v5];
  }
}

- (void)rootDisplayDidDisconnect:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (([v5 isRootIdentity] & 1) == 0)
  {
    [SBDisplayAssertionCoordinator rootDisplayDidDisconnect:];
  }

  v6 = [(NSMutableDictionary *)self->_assertionStackMap objectForKey:v5];

  if (!v6)
  {
    [(SBDisplayAssertionCoordinator *)a2 rootDisplayDidDisconnect:v5];
  }

  v7 = SBLogDisplayAssertions();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = _SBFLoggingMethodProem();
    v12 = 138543618;
    v13 = v8;
    v14 = 2114;
    v15 = v5;
    _os_log_impl(&dword_21ED4E000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ told root display disconnected %{public}@", &v12, 0x16u);
  }

  v9 = [(NSMutableDictionary *)self->_assertionStackMap objectForKey:v5];
  [(NSMutableDictionary *)self->_assertionStackMap removeObjectForKey:v5];
  v10 = [(NSMutableDictionary *)self->_assertionPreferencesMap objectForKey:v5];
  if (v10)
  {
    [(NSMutableDictionary *)self->_assertionPreferencesMap removeObjectForKey:v5];
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained assertionCoordinator:self updatedAssertionPreferences:0 oldPreferences:v10 forDisplay:v5];
  }

  [v9 invalidateForDisplayDisconnect];
}

- (void)invalidateAssertionForDerivedDisplayDisconnect:(id)a3
{
  v4 = a3;
  v8 = v4;
  if (!v4)
  {
    [SBDisplayAssertionCoordinator invalidateAssertionForDerivedDisplayDisconnect:];
    v4 = 0;
  }

  assertionStackMap = self->_assertionStackMap;
  v6 = [v4 rootDisplayIdentity];
  v7 = [(NSMutableDictionary *)assertionStackMap objectForKey:v6];

  [v7 invalidateAssertionForDerivedDisplayDisconnect:v8];
}

- (void)assertionStack:(id)a3 updatedAssertionPreferences:(id)a4 oldPreferences:(id)a5
{
  v12 = a4;
  v8 = a5;
  v9 = [a3 displayIdentity];
  assertionPreferencesMap = self->_assertionPreferencesMap;
  if (v12)
  {
    [(NSMutableDictionary *)assertionPreferencesMap setObject:v12 forKey:v9];
  }

  else
  {
    [(NSMutableDictionary *)assertionPreferencesMap removeObjectForKey:v9];
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained assertionCoordinator:self updatedAssertionPreferences:v12 oldPreferences:v8 forDisplay:v9];
}

- (id)_createDisplayAssertionStackForRootDisplay:(id)a3
{
  v4 = a3;
  if (([v4 isRootIdentity] & 1) == 0)
  {
    [SBDisplayAssertionCoordinator _createDisplayAssertionStackForRootDisplay:];
  }

  v5 = [(NSMutableDictionary *)self->_assertionStackMap objectForKey:v4];

  if (v5)
  {
    [SBDisplayAssertionCoordinator _createDisplayAssertionStackForRootDisplay:];
  }

  v6 = [[_SBDisplayAssertionStack alloc] initWithRootDisplay:v4 delegate:self];

  return v6;
}

- (SBDisplayAssertionCoordinatorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)acquireAssertionForDisplay:level:deactivationReasons:delegate:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"[rootIdentity isRootIdentity]" object:? file:? lineNumber:? description:?];
}

- (void)acquireAssertionForDisplay:level:deactivationReasons:delegate:.cold.2()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"SBDisplayAssertionLevelIsValid(assertionLevel)" object:? file:? lineNumber:? description:?];
}

- (void)acquireAssertionForDisplay:level:deactivationReasons:delegate:.cold.3()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"assertionDelegate" object:? file:? lineNumber:? description:?];
}

- (void)activateAssertionsForDisplay:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"[rootIdentity isRootIdentity]" object:? file:? lineNumber:? description:?];
}

- (void)rootDisplayDidConnect:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"[rootIdentity isRootIdentity]" object:? file:? lineNumber:? description:?];
}

- (void)rootDisplayDidConnect:(uint64_t)a3 .cold.2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = [MEMORY[0x277CCA890] currentHandler];
  [v6 handleFailureInMethod:a1 object:a2 file:@"SBDisplayAssertionCoordinator.m" lineNumber:61 description:{@"told multiple times about a connecting display: %@", a3}];
}

- (void)rootDisplayDidDisconnect:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"[rootIdentity isRootIdentity]" object:? file:? lineNumber:? description:?];
}

- (void)rootDisplayDidDisconnect:(uint64_t)a3 .cold.2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = [MEMORY[0x277CCA890] currentHandler];
  [v6 handleFailureInMethod:a1 object:a2 file:@"SBDisplayAssertionCoordinator.m" lineNumber:71 description:{@"told about a disconnecting display that we don't know about. were we told it disconnected twice?: %@", a3}];
}

- (void)invalidateAssertionForDerivedDisplayDisconnect:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"assertion" object:? file:? lineNumber:? description:?];
}

- (void)_createDisplayAssertionStackForRootDisplay:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"[rootIdentity isRootIdentity]" object:? file:? lineNumber:? description:?];
}

- (void)_createDisplayAssertionStackForRootDisplay:.cold.2()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"[_assertionStackMap objectForKey:rootIdentity] == nil" object:? file:? lineNumber:? description:?];
}

@end