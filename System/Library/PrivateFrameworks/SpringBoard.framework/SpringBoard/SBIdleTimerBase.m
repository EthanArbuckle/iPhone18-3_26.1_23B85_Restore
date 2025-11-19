@interface SBIdleTimerBase
- (BOOL)isActivated;
- (BOOL)isDisabled;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)succinctDescription;
- (unint64_t)hash;
- (void)_enumerateObserversRespondingToSelector:(SEL)a3 usingBlock:(id)a4;
- (void)_makeObserversPerformSelector:(SEL)a3;
- (void)addIdleTimerObserver:(id)a3;
- (void)removeAllIdleTimerObservers;
- (void)removeIdleTimerObserver:(id)a3;
- (void)setActivated:(BOOL)a3;
@end

@implementation SBIdleTimerBase

- (unint64_t)hash
{
  v3.receiver = self;
  v3.super_class = SBIdleTimerBase;
  return [(SBIdleTimerBase *)&v3 hash];
}

- (id)succinctDescription
{
  v2 = [(SBIdleTimerBase *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(SBIdleTimerBase *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (void)removeAllIdleTimerObservers
{
  observers = self->_observers;
  if (observers)
  {
    self->_observers = 0;
  }
}

- (void)addIdleTimerObserver:(id)a3
{
  v4 = a3;
  observers = self->_observers;
  v8 = v4;
  if (!observers)
  {
    v6 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    v7 = self->_observers;
    self->_observers = v6;

    v4 = v8;
    observers = self->_observers;
  }

  [(NSHashTable *)observers addObject:v4];
}

- (void)removeIdleTimerObserver:(id)a3
{
  [(NSHashTable *)self->_observers removeObject:a3];
  if (![(NSHashTable *)self->_observers count])
  {
    observers = self->_observers;
    self->_observers = 0;
  }
}

id __41__SBIdleTimerBase__logExpirationTimeout___block_invoke(uint64_t a1)
{
  v5[1] = *MEMORY[0x277D85DE8];
  v4 = @"lockTimeout";
  v1 = [MEMORY[0x277CCABB0] numberWithDouble:*(a1 + 32)];
  v5[0] = v1;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v5 forKeys:&v4 count:1];

  return v2;
}

- (void)_makeObserversPerformSelector:(SEL)a3
{
  v42 = *MEMORY[0x277D85DE8];
  v5 = [(NSHashTable *)self->_observers allObjects];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v27 objects:v41 count:16];
  if (!v6)
  {
    goto LABEL_15;
  }

  v7 = v6;
  v8 = 0;
  v9 = *v28;
  do
  {
    v10 = 0;
    v25 = v7;
    do
    {
      if (*v28 != v9)
      {
        objc_enumerationMutation(v5);
      }

      v11 = *(*(&v27 + 1) + 8 * v10);
      if (objc_opt_respondsToSelector())
      {
        Class = object_getClass(v11);
        MethodImplementation = class_getMethodImplementation(Class, a3);
        if (!MethodImplementation)
        {
          [SBIdleTimerBase _makeObserversPerformSelector:];
        }

        v14 = SBLogIdleTimer();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          v15 = objc_opt_class();
          v26 = v15;
          NSStringFromSelector(a3);
          v16 = v9;
          v18 = v17 = v5;
          v19 = objc_opt_class();
          *buf = 138544386;
          v32 = v15;
          v33 = 2048;
          v34 = self;
          v35 = 2114;
          v36 = v18;
          v37 = 2114;
          v38 = v19;
          v39 = 2048;
          v40 = v11;
          v20 = v19;
          _os_log_impl(&dword_21ED4E000, v14, OS_LOG_TYPE_DEFAULT, "<%{public}@: %p> sending %{public}@ to <%{public}@: %p>", buf, 0x34u);

          v5 = v17;
          v9 = v16;
          v7 = v25;
        }

        (MethodImplementation)(v11, a3, self);
        v8 = 1;
      }

      ++v10;
    }

    while (v7 != v10);
    v7 = [v5 countByEnumeratingWithState:&v27 objects:v41 count:16];
  }

  while (v7);
  if ((v8 & 1) == 0)
  {
LABEL_15:
    v21 = SBLogIdleTimer();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v22 = objc_opt_class();
      v23 = v22;
      v24 = NSStringFromSelector(a3);
      *buf = 138543874;
      v32 = v22;
      v33 = 2048;
      v34 = self;
      v35 = 2114;
      v36 = v24;
      _os_log_impl(&dword_21ED4E000, v21, OS_LOG_TYPE_DEFAULT, "<%{public}@: %p> no observers for %{public}@", buf, 0x20u);
    }
  }
}

- (void)_enumerateObserversRespondingToSelector:(SEL)a3 usingBlock:(id)a4
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a4;
  observers = self->_observers;
  if (observers)
  {
    v7 = [(NSHashTable *)observers allObjects];
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v14;
      do
      {
        v11 = 0;
        do
        {
          if (*v14 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v13 + 1) + 8 * v11);
          if (objc_opt_respondsToSelector())
          {
            v5[2](v5, v12);
          }

          ++v11;
        }

        while (v9 != v11);
        v9 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v9);
    }
  }
}

- (BOOL)isDisabled
{
  OUTLINED_FUNCTION_1_2();
  objc_opt_class();
  OUTLINED_FUNCTION_0_25();
  NSRequestConcreteImplementation();
  return 1;
}

- (BOOL)isActivated
{
  OUTLINED_FUNCTION_1_2();
  objc_opt_class();
  OUTLINED_FUNCTION_0_25();
  NSRequestConcreteImplementation();
  return 0;
}

- (void)setActivated:(BOOL)a3
{
  OUTLINED_FUNCTION_1_2();
  objc_opt_class();
  OUTLINED_FUNCTION_0_25();

  NSRequestConcreteImplementation();
}

- (void)_makeObserversPerformSelector:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v2 = [MEMORY[0x277CCA890] currentHandler];
  [v2 handleFailureInMethod:v1 object:v0 file:@"SBIdleTimerBase.m" lineNumber:133 description:@"really wanted an IMP here"];
}

@end