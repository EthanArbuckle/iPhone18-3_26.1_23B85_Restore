@interface _SBPIPEndStashTabSuppressionGestureManager
- (_SBPIPEndStashTabSuppressionGestureManager)initWithSystemGestureManager:(id)a3;
- (void)_addSystemRecognizers;
- (void)_removeGestureRecognizers;
- (void)addTarget:(id)a3 action:(SEL)a4;
- (void)dealloc;
- (void)removeTarget:(id)a3 action:(SEL)a4;
@end

@implementation _SBPIPEndStashTabSuppressionGestureManager

- (_SBPIPEndStashTabSuppressionGestureManager)initWithSystemGestureManager:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = _SBPIPEndStashTabSuppressionGestureManager;
  v6 = [(_SBPIPEndStashTabSuppressionGestureManager *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_systemGestureManager, a3);
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

- (void)addTarget:(id)a3 action:(SEL)a4
{
  v14 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = SBLogPIP();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412290;
    v13 = v6;
    _os_log_impl(&dword_21ED4E000, v7, OS_LOG_TYPE_DEFAULT, "[_SBPIPEndStashTabSuppressionGestureManager] addTarget %@", &v12, 0xCu);
  }

  if (([(NSMutableSet *)self->_targets containsObject:v6]& 1) == 0)
  {
    singleTapRecognizer = self->_singleTapRecognizer;
    if (!singleTapRecognizer)
    {
      [(_SBPIPEndStashTabSuppressionGestureManager *)self _addSystemRecognizers];
      singleTapRecognizer = self->_singleTapRecognizer;
    }

    [(UITapGestureRecognizer *)singleTapRecognizer addTarget:v6 action:a4];
    targets = self->_targets;
    if (!targets)
    {
      v10 = [MEMORY[0x277CBEB58] setWithCapacity:1];
      v11 = self->_targets;
      self->_targets = v10;

      targets = self->_targets;
    }

    [(NSMutableSet *)targets addObject:v6];
  }
}

- (void)removeTarget:(id)a3 action:(SEL)a4
{
  v11 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = SBLogPIP();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = v6;
    _os_log_impl(&dword_21ED4E000, v7, OS_LOG_TYPE_DEFAULT, "[_SBPIPEndStashTabSuppressionGestureManager] removeTarget %@", &v9, 0xCu);
  }

  if ([(NSMutableSet *)self->_targets containsObject:v6])
  {
    [(UITapGestureRecognizer *)self->_singleTapRecognizer removeTarget:v6 action:a4];
    [(NSMutableSet *)self->_targets removeObject:v6];
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
  v2 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v1 handleFailureInMethod:v0 object:? file:? lineNumber:? description:?];
}

- (void)_removeGestureRecognizers
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v2 handleFailureInMethod:v0 object:? file:? lineNumber:? description:?];
}

@end