@interface SBBlurViewCoordinator
- (SBBlurViewCoordinator)init;
- (SBBlurViewCoordinator)initWithElementViewControllers:(id)controllers;
- (id)description;
- (void)_fireBlocksForState:(unint64_t)state;
- (void)_setState:(unint64_t)state;
- (void)addNotifyBlock:(id)block forState:(unint64_t)state;
- (void)removeNotifyBlock:(id)block forState:(unint64_t)state;
- (void)setBlurred:(BOOL)blurred withAnimationFactory:(id)factory completion:(id)completion;
@end

@implementation SBBlurViewCoordinator

- (SBBlurViewCoordinator)initWithElementViewControllers:(id)controllers
{
  controllersCopy = controllers;
  v11.receiver = self;
  v11.super_class = SBBlurViewCoordinator;
  v6 = [(SBBlurViewCoordinator *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_elementVCs, controllers);
    v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
    mapStateToBlocks = v7->_mapStateToBlocks;
    v7->_mapStateToBlocks = v8;

    v7->_state = 0;
  }

  return v7;
}

- (SBBlurViewCoordinator)init
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"SBBlurViewCoordinator.m" lineNumber:35 description:@"use initWithElementViewControllers:"];

  return 0;
}

- (id)description
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v4 = [(SBBlurViewCoordinator *)self state]- 1;
  if (v4 > 2)
  {
    v5 = @"idle";
  }

  else
  {
    v5 = off_2783C3E30[v4];
  }

  v6 = [v3 appendObject:v5 withName:@"state"];
  [v3 appendArraySection:self->_elementVCs withName:@"coordinatingVCs" skipIfEmpty:1];
  build = [v3 build];

  return build;
}

- (void)setBlurred:(BOOL)blurred withAnimationFactory:(id)factory completion:(id)completion
{
  blurredCopy = blurred;
  v54 = *MEMORY[0x277D85DE8];
  factoryCopy = factory;
  completionCopy = completion;
  if (![(SBBlurViewCoordinator *)self isBlurred]&& blurredCopy)
  {
    v34 = completionCopy;
    state = self->_state;
    if (state && state != 3)
    {
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"SBBlurViewCoordinator.m" lineNumber:56 description:@"Unexpected state transition for the blur coordinator to blur."];
    }

    v32 = a2;
    [(SBBlurViewCoordinator *)self _setState:1];
    v12 = dispatch_group_create();
    v48 = 0u;
    v49 = 0u;
    v50 = 0u;
    v51 = 0u;
    v13 = self->_elementVCs;
    v14 = [(NSArray *)v13 countByEnumeratingWithState:&v48 objects:v53 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v49;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v49 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = *(*(&v48 + 1) + 8 * i);
          dispatch_group_enter(v12);
          [factoryCopy duration];
          v20 = v19;
          v46[0] = MEMORY[0x277D85DD0];
          v46[1] = 3221225472;
          v46[2] = __68__SBBlurViewCoordinator_setBlurred_withAnimationFactory_completion___block_invoke_2;
          v46[3] = &unk_2783A8C18;
          v47 = v12;
          [v18 setLiveContentBlurEnabled:1 duration:&__block_literal_global_431 blurDelay:v46 iconViewScale:v20 began:0.0 completion:1.0];
        }

        v15 = [(NSArray *)v13 countByEnumeratingWithState:&v48 objects:v53 count:16];
      }

      while (v15);
    }

    v44[0] = MEMORY[0x277D85DD0];
    v44[1] = 3221225472;
    v44[2] = __68__SBBlurViewCoordinator_setBlurred_withAnimationFactory_completion___block_invoke_3;
    v44[3] = &unk_2783AB990;
    v44[4] = self;
    v45[1] = v32;
    v21 = v45;
    completionCopy = v34;
    v45[0] = v34;
    v22 = MEMORY[0x277D85CD0];
    v23 = v44;
LABEL_26:
    dispatch_group_notify(v12, v22, v23);

    goto LABEL_27;
  }

  if ([(SBBlurViewCoordinator *)self isBlurred]&& !blurredCopy)
  {
    if (self->_state - 3 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      [SBBlurViewCoordinator setBlurred:a2 withAnimationFactory:self completion:?];
    }

    v33 = a2;
    [(SBBlurViewCoordinator *)self _setState:3];
    v12 = dispatch_group_create();
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v24 = self->_elementVCs;
    v25 = [(NSArray *)v24 countByEnumeratingWithState:&v40 objects:v52 count:16];
    if (v25)
    {
      v26 = v25;
      v27 = *v41;
      do
      {
        for (j = 0; j != v26; ++j)
        {
          if (*v41 != v27)
          {
            objc_enumerationMutation(v24);
          }

          v29 = *(*(&v40 + 1) + 8 * j);
          dispatch_group_enter(v12);
          [factoryCopy duration];
          v31 = v30;
          v38[0] = MEMORY[0x277D85DD0];
          v38[1] = 3221225472;
          v38[2] = __68__SBBlurViewCoordinator_setBlurred_withAnimationFactory_completion___block_invoke_5;
          v38[3] = &unk_2783A8C18;
          v39 = v12;
          [v29 setLiveContentBlurEnabled:0 duration:&__block_literal_global_23_2 blurDelay:v38 iconViewScale:v31 began:0.0 completion:1.0];
        }

        v26 = [(NSArray *)v24 countByEnumeratingWithState:&v40 objects:v52 count:16];
      }

      while (v26);
    }

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __68__SBBlurViewCoordinator_setBlurred_withAnimationFactory_completion___block_invoke_6;
    block[3] = &unk_2783AB990;
    block[4] = self;
    v37[1] = v33;
    v21 = v37;
    v37[0] = completionCopy;
    v22 = MEMORY[0x277D85CD0];
    v23 = block;
    goto LABEL_26;
  }

LABEL_27:
}

uint64_t __68__SBBlurViewCoordinator_setBlurred_withAnimationFactory_completion___block_invoke_3(uint64_t a1)
{
  v2 = (a1 + 32);
  if ([*(a1 + 32) isBlurred])
  {
    v3 = *v2;
    if (*(*v2 + 16) != 1)
    {
      __68__SBBlurViewCoordinator_setBlurred_withAnimationFactory_completion___block_invoke_3_cold_1(a1, v2, &v6);
      v3 = v6;
    }

    [v3 _setState:2];
  }

  result = *(a1 + 40);
  if (result)
  {
    v5 = *(result + 16);

    return v5();
  }

  return result;
}

uint64_t __68__SBBlurViewCoordinator_setBlurred_withAnimationFactory_completion___block_invoke_6(uint64_t a1)
{
  v2 = (a1 + 32);
  if ([*(a1 + 32) isBlurred])
  {
    v3 = *v2;
    if (*(*v2 + 16) != 3)
    {
      __68__SBBlurViewCoordinator_setBlurred_withAnimationFactory_completion___block_invoke_6_cold_1(a1, v2, &v6);
      v3 = v6;
    }

    [v3 _setState:0];
  }

  result = *(a1 + 40);
  if (result)
  {
    v5 = *(result + 16);

    return v5();
  }

  return result;
}

- (void)addNotifyBlock:(id)block forState:(unint64_t)state
{
  blockCopy = block;
  if (self->_state == state)
  {
    v13 = blockCopy;
    blockCopy[2]();
  }

  else
  {
    if (!blockCopy)
    {
      goto LABEL_8;
    }

    v13 = blockCopy;
    mapStateToBlocks = self->_mapStateToBlocks;
    v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:state];
    v9 = [(NSMutableDictionary *)mapStateToBlocks objectForKey:v8];

    if (!v9)
    {
      v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v10 = self->_mapStateToBlocks;
      v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:state];
      [(NSMutableDictionary *)v10 setObject:v9 forKey:v11];
    }

    v12 = MEMORY[0x223D6F7F0](v13);
    [v9 addObject:v12];
  }

  blockCopy = v13;
LABEL_8:
}

- (void)removeNotifyBlock:(id)block forState:(unint64_t)state
{
  mapStateToBlocks = self->_mapStateToBlocks;
  v6 = MEMORY[0x277CCABB0];
  blockCopy = block;
  v10 = [v6 numberWithUnsignedInteger:state];
  v8 = [(NSMutableDictionary *)mapStateToBlocks objectForKey:v10];
  v9 = MEMORY[0x223D6F7F0](blockCopy);

  [v8 removeObject:v9];
}

- (void)_setState:(unint64_t)state
{
  v16 = *MEMORY[0x277D85DE8];
  if (self->_state != state)
  {
    self->_state = state;
    v4 = SBLogAppResize();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = objc_opt_class();
      v6 = NSStringFromClass(v5);
      v7 = v6;
      v8 = self->_state - 1;
      if (v8 > 2)
      {
        v9 = @"idle";
      }

      else
      {
        v9 = off_2783C3E30[v8];
      }

      v10 = 138412802;
      v11 = v6;
      v12 = 2048;
      selfCopy = self;
      v14 = 2112;
      v15 = v9;
      _os_log_impl(&dword_21ED4E000, v4, OS_LOG_TYPE_INFO, "<%@:%p>: blur view coordinator state changed to: %@", &v10, 0x20u);
    }

    [(SBBlurViewCoordinator *)self _fireBlocksForState:self->_state];
  }
}

- (void)_fireBlocksForState:(unint64_t)state
{
  v20 = *MEMORY[0x277D85DE8];
  mapStateToBlocks = self->_mapStateToBlocks;
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:?];
  v7 = [(NSMutableDictionary *)mapStateToBlocks objectForKey:v6];

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v8 = [v7 copy];
  v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v16;
    do
    {
      v12 = 0;
      do
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(v8);
        }

        (*(*(*(&v15 + 1) + 8 * v12++) + 16))();
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v10);
  }

  v13 = self->_mapStateToBlocks;
  v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:state];
  [(NSMutableDictionary *)v13 removeObjectForKey:v14];
}

- (void)setBlurred:(uint64_t)a1 withAnimationFactory:(uint64_t)a2 completion:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBBlurViewCoordinator.m" lineNumber:81 description:@"Unexpected state transition for the blur coordinator to unblur."];
}

void __68__SBBlurViewCoordinator_setBlurred_withAnimationFactory_completion___block_invoke_3_cold_1(uint64_t a1, void *a2, void *a3)
{
  [MEMORY[0x277CCA890] currentHandler];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_0_55();
  if (!v8 & v7)
  {
    v9 = @"idle";
  }

  else
  {
    v9 = off_2783C3E30[v6];
  }

  [v3 handleFailureInMethod:v9 object:? file:? lineNumber:? description:?];

  *a3 = *a2;
}

void __68__SBBlurViewCoordinator_setBlurred_withAnimationFactory_completion___block_invoke_6_cold_1(uint64_t a1, void *a2, void *a3)
{
  [MEMORY[0x277CCA890] currentHandler];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_0_55();
  if (!v8 & v7)
  {
    v9 = @"idle";
  }

  else
  {
    v9 = off_2783C3E30[v6];
  }

  [v3 handleFailureInMethod:v9 object:? file:? lineNumber:? description:?];

  *a3 = *a2;
}

@end