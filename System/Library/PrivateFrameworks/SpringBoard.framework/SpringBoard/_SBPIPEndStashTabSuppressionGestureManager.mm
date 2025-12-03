@interface _SBPIPEndStashTabSuppressionGestureManager
- (_SBPIPEndStashTabSuppressionGestureManager)initWithSystemGestureManager:(id)manager;
- (void)_addSystemRecognizers;
- (void)_removeGestureRecognizers;
- (void)addTarget:(id)target action:(SEL)action;
- (void)dealloc;
- (void)removeTarget:(id)target action:(SEL)action;
@end

@implementation _SBPIPEndStashTabSuppressionGestureManager

- (_SBPIPEndStashTabSuppressionGestureManager)initWithSystemGestureManager:(id)manager
{
  managerCopy = manager;
  v9.receiver = self;
  v9.super_class = _SBPIPEndStashTabSuppressionGestureManager;
  v6 = [(_SBPIPEndStashTabSuppressionGestureManager *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_systemGestureManager, manager);
  }

  return v7;
}

- (void)dealloc
{
  [(NSMutableSet *)self->_targets removeAllObjects];
  targets = self->_targets;
  self->_targets = 0;

  [(_SBPIPEndStashTabSuppressionGestureManager *)self _removeGestureRecognizers];
  v4.receiver = self;
  v4.super_class = _SBPIPEndStashTabSuppressionGestureManager;
  [(_SBPIPEndStashTabSuppressionGestureManager *)&v4 dealloc];
}

- (void)addTarget:(id)target action:(SEL)action
{
  v14 = *MEMORY[0x277D85DE8];
  targetCopy = target;
  v7 = SBLogPIP();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412290;
    v13 = targetCopy;
    _os_log_impl(&dword_21ED4E000, v7, OS_LOG_TYPE_DEFAULT, "[_SBPIPEndStashTabSuppressionGestureManager] addTarget %@", &v12, 0xCu);
  }

  if (([(NSMutableSet *)self->_targets containsObject:targetCopy]& 1) == 0)
  {
    singleTapRecognizer = self->_singleTapRecognizer;
    if (!singleTapRecognizer)
    {
      [(_SBPIPEndStashTabSuppressionGestureManager *)self _addSystemRecognizers];
      singleTapRecognizer = self->_singleTapRecognizer;
    }

    [(UITapGestureRecognizer *)singleTapRecognizer addTarget:targetCopy action:action];
    targets = self->_targets;
    if (!targets)
    {
      v10 = [MEMORY[0x277CBEB58] setWithCapacity:1];
      v11 = self->_targets;
      self->_targets = v10;

      targets = self->_targets;
    }

    [(NSMutableSet *)targets addObject:targetCopy];
  }
}

- (void)removeTarget:(id)target action:(SEL)action
{
  v11 = *MEMORY[0x277D85DE8];
  targetCopy = target;
  v7 = SBLogPIP();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = targetCopy;
    _os_log_impl(&dword_21ED4E000, v7, OS_LOG_TYPE_DEFAULT, "[_SBPIPEndStashTabSuppressionGestureManager] removeTarget %@", &v9, 0xCu);
  }

  if ([(NSMutableSet *)self->_targets containsObject:targetCopy])
  {
    [(UITapGestureRecognizer *)self->_singleTapRecognizer removeTarget:targetCopy action:action];
    [(NSMutableSet *)self->_targets removeObject:targetCopy];
    if (![(NSMutableSet *)self->_targets count])
    {
      targets = self->_targets;
      self->_targets = 0;

      [(_SBPIPEndStashTabSuppressionGestureManager *)self _removeGestureRecognizers];
    }
  }
}

- (void)_addSystemRecognizers
{
  OUTLINED_FUNCTION_1_2();
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v1 handleFailureInMethod:v0 object:? file:? lineNumber:? description:?];
}

- (void)_removeGestureRecognizers
{
  OUTLINED_FUNCTION_1_2();
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v2 handleFailureInMethod:v0 object:? file:? lineNumber:? description:?];
}

@end