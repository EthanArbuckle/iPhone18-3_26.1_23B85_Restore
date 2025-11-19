@interface SBSceneManagerReference
- (BOOL)isDefunct;
- (BOOL)isRetaining;
- (SBSceneManagerReference)initWithDisplayIdentity:(id)a3;
- (id)debugDescriptionWithMultilinePrefix:(id)a3;
- (id)delegate;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)manager;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
- (void)_autoreleaseManager:(id)a3;
- (void)_updateRetainWithBlock:(id)a3;
- (void)delegate;
- (void)invalidate;
- (void)isDefunct;
- (void)isRetaining;
- (void)manager;
- (void)releaseForScene:(id)a3;
- (void)retainForScene:(id)a3;
- (void)setDelegate:(id)a3;
- (void)setDisplayIsConnected:(BOOL)a3;
- (void)setManager:(id)a3;
@end

@implementation SBSceneManagerReference

- (id)manager
{
  if (([MEMORY[0x277CCACC8] isMainThread] & 1) == 0)
  {
    [SBSceneManagerReference manager];
  }

  manager = self->_manager;
  if (manager)
  {
    WeakRetained = manager;
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_weak_manager);
  }

  return WeakRetained;
}

- (BOOL)isDefunct
{
  if (([MEMORY[0x277CCACC8] isMainThread] & 1) == 0)
  {
    [SBSceneManagerReference isDefunct];
  }

  if (!self->_managerWasValid)
  {
    return 0;
  }

  v3 = [(SBSceneManagerReference *)self manager];
  v4 = v3 == 0;

  return v4;
}

- (BOOL)isRetaining
{
  if (([MEMORY[0x277CCACC8] isMainThread] & 1) == 0)
  {
    [SBSceneManagerReference isRetaining];
  }

  if (self->_invalidated)
  {
    return 0;
  }

  if (self->_displayIsConnected)
  {
    return 1;
  }

  return [(NSMutableSet *)self->_retainingScenes count]!= 0;
}

- (SBSceneManagerReference)initWithDisplayIdentity:(id)a3
{
  v6 = a3;
  if (!v6)
  {
    [(SBSceneManagerReference *)a2 initWithDisplayIdentity:?];
  }

  v10.receiver = self;
  v10.super_class = SBSceneManagerReference;
  v7 = [(SBSceneManagerReference *)&v10 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_displayIdentity, a3);
  }

  return v8;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(SBSceneManagerReference *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v4 = a3;
  v5 = [(SBSceneManagerReference *)self succinctDescriptionBuilder];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __65__SBSceneManagerReference_descriptionBuilderWithMultilinePrefix___block_invoke;
  v9[3] = &unk_2783A92D8;
  v6 = v5;
  v10 = v6;
  v11 = self;
  [v6 appendBodySectionWithName:0 multilinePrefix:v4 block:v9];

  v7 = v6;
  return v6;
}

void __65__SBSceneManagerReference_descriptionBuilderWithMultilinePrefix___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3 = [*(a1 + 40) manager];
  v2 = [v1 appendObject:v3 withName:@"manager"];
}

- (id)succinctDescription
{
  v2 = [(SBSceneManagerReference *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)succinctDescriptionBuilder
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v4 = [v3 appendObject:self->_displayIdentity withName:@"display"];
  v5 = [v3 appendBool:-[SBSceneManagerReference isRetaining](self withName:{"isRetaining"), @"isRetaining"}];
  v6 = [v3 appendBool:-[SBSceneManagerReference isDefunct](self withName:{"isDefunct"), @"isDefunct"}];

  return v3;
}

- (id)debugDescriptionWithMultilinePrefix:(id)a3
{
  v4 = a3;
  v5 = [(SBSceneManagerReference *)self descriptionBuilderWithMultilinePrefix:v4];
  v9 = MEMORY[0x277D85DD0];
  v10 = 3221225472;
  v11 = __63__SBSceneManagerReference_debugDescriptionWithMultilinePrefix___block_invoke;
  v12 = &unk_2783A92D8;
  v13 = self;
  v14 = v5;
  v6 = v5;
  [v6 appendBodySectionWithName:@"retaining reasons" multilinePrefix:v4 block:&v9];

  v7 = [v6 build];

  return v7;
}

void __63__SBSceneManagerReference_debugDescriptionWithMultilinePrefix___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  if (*(v2 + 41) == 1)
  {
    [*(a1 + 40) appendString:@"display-connected" withName:0];
    v2 = *(a1 + 32);
  }

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = *(v2 + 48);
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      v7 = 0;
      do
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(a1 + 40);
        v9 = [*(*(&v10 + 1) + 8 * v7) description];
        [v8 appendString:v9 withName:0];

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }
}

- (void)_updateRetainWithBlock:(id)a3
{
  v4 = a3;
  v5 = [(SBSceneManagerReference *)self isRetaining];
  v4[2](v4);

  if ([(SBSceneManagerReference *)self isRetaining])
  {
    if (v5)
    {
      return;
    }

    WeakRetained = objc_loadWeakRetained(&self->_weak_manager);
  }

  else
  {
    if (!v5)
    {
      return;
    }

    v7 = [(SBSceneManagerReference *)self manager];
    [(SBSceneManagerReference *)self _autoreleaseManager:v7];

    WeakRetained = 0;
  }

  manager = self->_manager;
  self->_manager = WeakRetained;
}

- (void)_autoreleaseManager:(id)a3
{
  v3 = a3;
  if (v3)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      [SBSceneManagerReference _autoreleaseManager:v3];
    }

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __47__SBSceneManagerReference__autoreleaseManager___block_invoke;
    block[3] = &unk_2783A8C18;
    v5 = v3;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

void __47__SBSceneManagerReference__autoreleaseManager___block_invoke(uint64_t a1)
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    __47__SBSceneManagerReference__autoreleaseManager___block_invoke_cold_1(a1);
  }
}

- (id)delegate
{
  if (([MEMORY[0x277CCACC8] isMainThread] & 1) == 0)
  {
    [SBSceneManagerReference delegate];
  }

  delegate = self->_delegate;

  return delegate;
}

- (void)setDelegate:(id)a3
{
  v4 = a3;
  if (([MEMORY[0x277CCACC8] isMainThread] & 1) == 0)
  {
    [SBSceneManagerReference setDelegate:];
  }

  delegate = self->_delegate;
  self->_delegate = v4;
}

- (void)setManager:(id)a3
{
  obj = a3;
  if (([MEMORY[0x277CCACC8] isMainThread] & 1) == 0)
  {
    [SBSceneManagerReference setManager:];
  }

  v5 = [(SBSceneManagerReference *)self manager];
  if (v5 != obj)
  {
    if (obj && self->_invalidated)
    {
      [(SBSceneManagerReference *)a2 setManager:obj];
    }

    [(SBSceneManagerReference *)self _autoreleaseManager:v5];
    [(SBSceneManagerReference *)self _autoreleaseManager:obj];
    objc_storeWeak(&self->_weak_manager, obj);
    if ([(SBSceneManagerReference *)self isRetaining])
    {
      WeakRetained = objc_loadWeakRetained(&self->_weak_manager);
      manager = self->_manager;
      self->_manager = WeakRetained;
    }

    self->_managerWasValid = obj != 0;
  }
}

- (void)setDisplayIsConnected:(BOOL)a3
{
  if (([MEMORY[0x277CCACC8] isMainThread] & 1) == 0)
  {
    [SBSceneManagerReference setDisplayIsConnected:];
  }

  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __49__SBSceneManagerReference_setDisplayIsConnected___block_invoke;
  v5[3] = &unk_2783A9F58;
  v5[4] = self;
  v6 = a3;
  [(SBSceneManagerReference *)self _updateRetainWithBlock:v5];
}

- (void)retainForScene:(id)a3
{
  v4 = a3;
  if ([MEMORY[0x277CCACC8] isMainThread])
  {
    if (!v4)
    {
      goto LABEL_5;
    }
  }

  else
  {
    [SBSceneManagerReference retainForScene:];
    if (!v4)
    {
      goto LABEL_5;
    }
  }

  if (([(NSMutableSet *)self->_retainingScenes containsObject:v4]& 1) == 0)
  {
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __42__SBSceneManagerReference_retainForScene___block_invoke;
    v5[3] = &unk_2783A92D8;
    v5[4] = self;
    v6 = v4;
    [(SBSceneManagerReference *)self _updateRetainWithBlock:v5];
  }

LABEL_5:
}

void __42__SBSceneManagerReference_retainForScene___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 48);
  if (v2)
  {
    v3 = *(a1 + 40);

    [v2 addObject:v3];
  }

  else
  {
    v4 = [objc_alloc(MEMORY[0x277CBEB58]) initWithObjects:a1 + 40 count:1];
    v5 = *(a1 + 32);
    v6 = *(v5 + 48);
    *(v5 + 48) = v4;
  }
}

- (void)releaseForScene:(id)a3
{
  v4 = a3;
  if (([MEMORY[0x277CCACC8] isMainThread] & 1) == 0)
  {
    [SBSceneManagerReference releaseForScene:];
    if (!v4)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  if (v4)
  {
LABEL_3:
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __43__SBSceneManagerReference_releaseForScene___block_invoke;
    v5[3] = &unk_2783A92D8;
    v5[4] = self;
    v6 = v4;
    [(SBSceneManagerReference *)self _updateRetainWithBlock:v5];
  }

LABEL_4:
}

- (void)invalidate
{
  v7 = [MEMORY[0x277CCA890] currentHandler];
  v0 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[SBSceneManagerReference invalidate]"];
  [OUTLINED_FUNCTION_2_0(v0 v1];
}

- (void)initWithDisplayIdentity:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBSceneManagerReference.m" lineNumber:36 description:{@"Invalid parameter not satisfying: %@", @"displayIdentity"}];
}

- (void)_autoreleaseManager:(uint64_t)a1 .cold.1(uint64_t a1)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = 138412290;
  v2 = a1;
  _os_log_debug_impl(&dword_21ED4E000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "delaying release of %@", &v1, 0xCu);
}

void __47__SBSceneManagerReference__autoreleaseManager___block_invoke_cold_1(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  v2 = 138412290;
  v3 = v1;
  _os_log_debug_impl(&dword_21ED4E000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "performing delayed release of %@", &v2, 0xCu);
}

- (void)delegate
{
  v7 = [MEMORY[0x277CCA890] currentHandler];
  v0 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[SBSceneManagerReference delegate]"];
  [OUTLINED_FUNCTION_2_0(v0 v1];
}

- (void)setDelegate:.cold.1()
{
  v7 = [MEMORY[0x277CCA890] currentHandler];
  v0 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[SBSceneManagerReference setDelegate:]"];
  [OUTLINED_FUNCTION_2_0(v0 v1];
}

- (void)manager
{
  v7 = [MEMORY[0x277CCA890] currentHandler];
  v0 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[SBSceneManagerReference manager]"];
  [OUTLINED_FUNCTION_2_0(v0 v1];
}

- (void)setManager:.cold.1()
{
  v7 = [MEMORY[0x277CCA890] currentHandler];
  v0 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[SBSceneManagerReference setManager:]"];
  [OUTLINED_FUNCTION_2_0(v0 v1];
}

- (void)setManager:(uint64_t)a3 .cold.2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = [MEMORY[0x277CCA890] currentHandler];
  [v6 handleFailureInMethod:a1 object:a2 file:@"SBSceneManagerReference.m" lineNumber:151 description:{@"you can't set the manager if the reference has been invalidated : manager=%@", a3}];
}

- (void)isRetaining
{
  v7 = [MEMORY[0x277CCA890] currentHandler];
  v0 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[SBSceneManagerReference isRetaining]"];
  [OUTLINED_FUNCTION_2_0(v0 v1];
}

- (void)isDefunct
{
  v7 = [MEMORY[0x277CCA890] currentHandler];
  v0 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[SBSceneManagerReference isDefunct]"];
  [OUTLINED_FUNCTION_2_0(v0 v1];
}

- (void)setDisplayIsConnected:.cold.1()
{
  v7 = [MEMORY[0x277CCA890] currentHandler];
  v0 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[SBSceneManagerReference setDisplayIsConnected:]"];
  [OUTLINED_FUNCTION_2_0(v0 v1];
}

- (void)retainForScene:.cold.1()
{
  v7 = [MEMORY[0x277CCA890] currentHandler];
  v0 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[SBSceneManagerReference retainForScene:]"];
  [OUTLINED_FUNCTION_2_0(v0 v1];
}

- (void)releaseForScene:.cold.1()
{
  v7 = [MEMORY[0x277CCA890] currentHandler];
  v0 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[SBSceneManagerReference releaseForScene:]"];
  [OUTLINED_FUNCTION_2_0(v0 v1];
}

@end