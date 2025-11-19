@interface SBContinuityDisplayLayoutCoordinator
- (SBContinuityDisplayLayoutCoordinator)initWithRootPublisher:(id)a3;
- (id)activateForPublisher:(id)a3;
- (void)dealloc;
- (void)invalidate;
- (void)start;
@end

@implementation SBContinuityDisplayLayoutCoordinator

- (SBContinuityDisplayLayoutCoordinator)initWithRootPublisher:(id)a3
{
  v6 = a3;
  if (!v6)
  {
    [SBContinuityDisplayLayoutCoordinator initWithRootPublisher:a2];
  }

  v7 = v6;
  v11.receiver = self;
  v11.super_class = SBContinuityDisplayLayoutCoordinator;
  v8 = [(SBContinuityDisplayLayoutCoordinator *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_rootPublisher, a3);
  }

  return v9;
}

- (void)dealloc
{
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"<SBContinuityDisplayLayoutCoordinator:%p> deallocated with active publisher=%@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v5 = NSStringFromSelector(a3);
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_3(&dword_21ED4E000, MEMORY[0x277D86220], v8, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v9, v10, v11, v12, a1, a2, v15);
  }

  [v4 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)start
{
  BSDispatchQueueAssertMain();
  if (!self->_currentPublisher)
  {
    v3 = [(FBSDisplayLayoutPublisher *)self->_rootPublisher suppressLayoutForReason:@"startListener"];
    suppression = self->_suppression;
    self->_suppression = v3;
  }
}

- (void)invalidate
{
  BSDispatchQueueAssertMain();
  rootPublisher = self->_rootPublisher;
  self->_rootPublisher = 0;

  [(BSInvalidatable *)self->_suppression invalidate];
  suppression = self->_suppression;
  self->_suppression = 0;
}

- (id)activateForPublisher:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    [SBContinuityDisplayLayoutCoordinator activateForPublisher:a2];
  }

  v6 = v5;
  BSDispatchQueueAssertMain();
  if (self->_currentPublisher)
  {
    [(SBContinuityDisplayLayoutCoordinator *)&self->_currentPublisher activateForPublisher:a2, self, v6];
  }

  v7 = [MEMORY[0x277CF0D30] referenceWithObject:v6];
  currentPublisher = self->_currentPublisher;
  self->_currentPublisher = v7;

  [(BSInvalidatable *)self->_suppression invalidate];
  suppression = self->_suppression;
  self->_suppression = 0;

  objc_initWeak(&location, self);
  v10 = objc_alloc(MEMORY[0x277CF0CE8]);
  v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"<SBContinuityDisplayLayoutCoordinator:%p>", self];
  v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"<%@:%p>", objc_opt_class(), v6];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __61__SBContinuityDisplayLayoutCoordinator_activateForPublisher___block_invoke;
  v15[3] = &unk_2783A9070;
  objc_copyWeak(&v16, &location);
  v13 = [v10 initWithIdentifier:v11 forReason:v12 invalidationBlock:v15];
  objc_destroyWeak(&v16);

  objc_destroyWeak(&location);

  return v13;
}

void __61__SBContinuityDisplayLayoutCoordinator_activateForPublisher___block_invoke(uint64_t a1)
{
  BSDispatchQueueAssertMain();
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained[3];
    WeakRetained[3] = 0;
    v6 = WeakRetained;

    v4 = [v6[1] suppressLayoutForReason:@"invalidated session"];
    v5 = v6[2];
    v6[2] = v4;

    WeakRetained = v6;
  }
}

- (void)initWithRootPublisher:(const char *)a1 .cold.1(const char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v3 = NSStringFromSelector(a1);
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_3(&dword_21ED4E000, MEMORY[0x277D86220], v6, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v7, v8, v9, v10, @"rootPublisher", v11, v12);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)activateForPublisher:(uint64_t)a3 .cold.1(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = [MEMORY[0x277CCA890] currentHandler];
  [v8 handleFailureInMethod:a2 object:a3 file:@"SBContinuityDisplayLayoutCoordinator.m" lineNumber:55 description:{@"<SBContinuityDisplayLayoutCoordinator:%p> cannot remove suppression for %@ because it is already tracking %@", a3, a4, *a1}];
}

- (void)activateForPublisher:(const char *)a1 .cold.2(const char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v3 = NSStringFromSelector(a1);
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_3(&dword_21ED4E000, MEMORY[0x277D86220], v6, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v7, v8, v9, v10, @"publisher", v12, v13);
  }

  v11 = v2;
  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

@end