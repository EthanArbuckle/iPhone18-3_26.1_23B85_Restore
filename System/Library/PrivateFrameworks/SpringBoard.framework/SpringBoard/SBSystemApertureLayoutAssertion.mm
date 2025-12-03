@interface SBSystemApertureLayoutAssertion
- (BOOL)isValid;
- (NSString)description;
- (SBSystemApertureLayoutAssertion)initWithMaximumPermittedLayoutMode:(int64_t)mode reason:(id)reason invalidationHandler:(id)handler;
- (void)addInvalidationBlock:(id)block;
- (void)dealloc;
- (void)invalidateWithReason:(id)reason;
@end

@implementation SBSystemApertureLayoutAssertion

- (void)dealloc
{
  if ([(SBSystemApertureLayoutAssertion *)self isValid])
  {
    [(SBSystemApertureLayoutAssertion *)self invalidateWithReason:@"deallocation"];
  }

  v3.receiver = self;
  v3.super_class = SBSystemApertureLayoutAssertion;
  [(SBSystemApertureLayoutAssertion *)&v3 dealloc];
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = SAUIStringFromElementViewLayoutMode();
  reason = self->_reason;
  [(SBSystemApertureLayoutAssertion *)self isValid];
  v7 = NSStringFromBOOL();
  v8 = [v3 stringWithFormat:@"<%@: %p max layout mode: %@; reason: %@; isValid: %@", v4, self, v5, reason, v7];;

  return v8;
}

- (SBSystemApertureLayoutAssertion)initWithMaximumPermittedLayoutMode:(int64_t)mode reason:(id)reason invalidationHandler:(id)handler
{
  v21 = *MEMORY[0x277D85DE8];
  reasonCopy = reason;
  handlerCopy = handler;
  if ((mode - 4) > 0xFFFFFFFFFFFFFFFALL)
  {
    if (reasonCopy)
    {
      goto LABEL_3;
    }

LABEL_10:
    [SBSystemApertureLayoutAssertion initWithMaximumPermittedLayoutMode:reason:invalidationHandler:];
    if (handlerCopy)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  [SBSystemApertureLayoutAssertion initWithMaximumPermittedLayoutMode:reason:invalidationHandler:];
  if (!reasonCopy)
  {
    goto LABEL_10;
  }

LABEL_3:
  if (handlerCopy)
  {
    goto LABEL_4;
  }

LABEL_11:
  [SBSystemApertureLayoutAssertion initWithMaximumPermittedLayoutMode:reason:invalidationHandler:];
LABEL_4:
  v18.receiver = self;
  v18.super_class = SBSystemApertureLayoutAssertion;
  v10 = [(SBSystemApertureLayoutAssertion *)&v18 init];
  v11 = v10;
  if (v10)
  {
    v10->_maximumPermittedLayoutMode = mode;
    v12 = [reasonCopy copy];
    reason = v11->_reason;
    v11->_reason = v12;

    v14 = [handlerCopy copy];
    invalidationHandler = v11->_invalidationHandler;
    v11->_invalidationHandler = v14;

    v16 = SBLogSystemApertureController();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v20 = v11;
      _os_log_impl(&dword_21ED4E000, v16, OS_LOG_TYPE_DEFAULT, "Created layout assertion: %{public}@", buf, 0xCu);
    }
  }

  return v11;
}

- (BOOL)isValid
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_invalidationHandler != 0;
  objc_sync_exit(selfCopy);

  return v3;
}

- (void)addInvalidationBlock:(id)block
{
  blockCopy = block;
  if (blockCopy)
  {
    v10 = blockCopy;
    selfCopy = self;
    objc_sync_enter(selfCopy);
    invalidationBlocks = selfCopy->_invalidationBlocks;
    if (!invalidationBlocks)
    {
      v7 = objc_alloc_init(MEMORY[0x277CBEB58]);
      v8 = selfCopy->_invalidationBlocks;
      selfCopy->_invalidationBlocks = v7;

      invalidationBlocks = selfCopy->_invalidationBlocks;
    }

    v9 = MEMORY[0x223D6F7F0](v10);
    [(NSMutableSet *)invalidationBlocks addObject:v9];

    objc_sync_exit(selfCopy);
    blockCopy = v10;
  }
}

- (void)invalidateWithReason:(id)reason
{
  v24 = *MEMORY[0x277D85DE8];
  reasonCopy = reason;
  if (![reasonCopy length])
  {
    [SBSystemApertureLayoutAssertion invalidateWithReason:];
  }

  if (![(SBSystemApertureLayoutAssertion *)self isValid])
  {
    [SBSystemApertureLayoutAssertion invalidateWithReason:];
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  v6 = MEMORY[0x223D6F7F0](selfCopy->_invalidationHandler);
  invalidationHandler = selfCopy->_invalidationHandler;
  selfCopy->_invalidationHandler = 0;

  v8 = SBLogSystemApertureController();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v21 = selfCopy;
    v22 = 2114;
    v23 = reasonCopy;
    _os_log_impl(&dword_21ED4E000, v8, OS_LOG_TYPE_DEFAULT, "Invalidated layout assertion: %{public}@; reason: %{public}@", buf, 0x16u);
  }

  (v6)[2](v6, selfCopy);
  v9 = selfCopy;
  objc_sync_enter(v9);
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v10 = v9[2];
  v11 = [v10 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v11)
  {
    v12 = *v16;
    do
    {
      v13 = 0;
      do
      {
        if (*v16 != v12)
        {
          objc_enumerationMutation(v10);
        }

        (*(*(*(&v15 + 1) + 8 * v13) + 16))(*(*(&v15 + 1) + 8 * v13));
        ++v13;
      }

      while (v11 != v13);
      v11 = [v10 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v11);
  }

  v14 = v9[2];
  v9[2] = 0;

  objc_sync_exit(v9);
  objc_sync_exit(v9);
}

- (void)initWithMaximumPermittedLayoutMode:reason:invalidationHandler:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"(SAUIElementViewLayoutModeRemoved <= maxLayoutMode) && (maxLayoutMode <= SAUIElementViewLayoutModeCustom)" object:? file:? lineNumber:? description:?];
}

- (void)initWithMaximumPermittedLayoutMode:reason:invalidationHandler:.cold.2()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"reason" object:? file:? lineNumber:? description:?];
}

- (void)initWithMaximumPermittedLayoutMode:reason:invalidationHandler:.cold.3()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"invalidationHandler" object:? file:? lineNumber:? description:?];
}

- (void)invalidateWithReason:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"[reason length] > 0" object:? file:? lineNumber:? description:?];
}

- (void)invalidateWithReason:.cold.2()
{
  OUTLINED_FUNCTION_1_2();
  v2 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v1 handleFailureInMethod:v0 object:? file:? lineNumber:? description:?];
}

@end