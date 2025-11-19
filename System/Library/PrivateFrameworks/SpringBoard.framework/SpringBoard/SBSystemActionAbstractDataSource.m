@interface SBSystemActionAbstractDataSource
- (SBSystemActionAbstractDataSource)initWithHostIdentifier:(id)a3;
- (id)executorForSystemAction:(id)a3;
- (void)_notifyDidUpdateSelectedAction;
- (void)addObserver:(id)a3;
- (void)setSelectedSystemAction:(id)a3;
@end

@implementation SBSystemActionAbstractDataSource

- (SBSystemActionAbstractDataSource)initWithHostIdentifier:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    [(SBSystemActionAbstractDataSource *)a2 initWithHostIdentifier:?];
  }

  v6 = v5;
  v11.receiver = self;
  v11.super_class = SBSystemActionAbstractDataSource;
  v7 = [(SBSystemActionAbstractDataSource *)&v11 init];
  if (v7)
  {
    v8 = [v6 copy];
    hostIdentifier = v7->_hostIdentifier;
    v7->_hostIdentifier = v8;

    [(SBSystemActionAbstractDataSource *)v7 updateSelectedAction];
  }

  return v7;
}

- (void)addObserver:(id)a3
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

- (void)setSelectedSystemAction:(id)a3
{
  v5 = a3;
  if ((BSEqualObjects() & 1) == 0)
  {
    objc_storeStrong(&self->_selectedSystemAction, a3);
    [(SBSystemActionAbstractDataSource *)&self->super.isa _notifyDidUpdateSelectedAction];
  }
}

- (id)executorForSystemAction:(id)a3
{
  objc_opt_class();
  NSRequestConcreteImplementation();
  return 0;
}

- (void)_notifyDidUpdateSelectedAction
{
  v13 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    BSDispatchQueueAssertMain();
    v2 = [a1 selectedSystemAction];
    v8 = 0u;
    v9 = 0u;
    v10 = 0u;
    v11 = 0u;
    v3 = [a1[1] allObjects];
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

          [*(*(&v8 + 1) + 8 * v7++) systemActionDataSource:a1 didUpdateSelectedAction:v2];
        }

        while (v5 != v7);
        v5 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
      }

      while (v5);
    }
  }
}

- (void)initWithHostIdentifier:(const char *)a1 .cold.1(const char *a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@", @"hostIdentifier != ((void *)0)"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v5 = NSStringFromSelector(a1);
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    *buf = 138544642;
    v9 = v5;
    v10 = 2114;
    v11 = v7;
    v12 = 2048;
    v13 = a2;
    v14 = 2114;
    v15 = @"SBSystemActionAbstractDataSource.m";
    v16 = 1024;
    v17 = 27;
    v18 = 2114;
    v19 = v4;
    _os_log_error_impl(&dword_21ED4E000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
  }

  [v4 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

@end