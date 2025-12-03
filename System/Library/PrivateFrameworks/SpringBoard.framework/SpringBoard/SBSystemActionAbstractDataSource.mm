@interface SBSystemActionAbstractDataSource
- (SBSystemActionAbstractDataSource)initWithHostIdentifier:(id)identifier;
- (id)executorForSystemAction:(id)action;
- (void)_notifyDidUpdateSelectedAction;
- (void)addObserver:(id)observer;
- (void)setSelectedSystemAction:(id)action;
@end

@implementation SBSystemActionAbstractDataSource

- (SBSystemActionAbstractDataSource)initWithHostIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (!identifierCopy)
  {
    [(SBSystemActionAbstractDataSource *)a2 initWithHostIdentifier:?];
  }

  v6 = identifierCopy;
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

- (void)addObserver:(id)observer
{
  observerCopy = observer;
  observers = self->_observers;
  v8 = observerCopy;
  if (!observers)
  {
    weakObjectsHashTable = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    v7 = self->_observers;
    self->_observers = weakObjectsHashTable;

    observerCopy = v8;
    observers = self->_observers;
  }

  [(NSHashTable *)observers addObject:observerCopy];
}

- (void)setSelectedSystemAction:(id)action
{
  actionCopy = action;
  if ((BSEqualObjects() & 1) == 0)
  {
    objc_storeStrong(&self->_selectedSystemAction, action);
    [(SBSystemActionAbstractDataSource *)&self->super.isa _notifyDidUpdateSelectedAction];
  }
}

- (id)executorForSystemAction:(id)action
{
  objc_opt_class();
  NSRequestConcreteImplementation();
  return 0;
}

- (void)_notifyDidUpdateSelectedAction
{
  v13 = *MEMORY[0x277D85DE8];
  if (self)
  {
    BSDispatchQueueAssertMain();
    selectedSystemAction = [self selectedSystemAction];
    v8 = 0u;
    v9 = 0u;
    v10 = 0u;
    v11 = 0u;
    allObjects = [self[1] allObjects];
    v4 = [allObjects countByEnumeratingWithState:&v8 objects:v12 count:16];
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
            objc_enumerationMutation(allObjects);
          }

          [*(*(&v8 + 1) + 8 * v7++) systemActionDataSource:self didUpdateSelectedAction:selectedSystemAction];
        }

        while (v5 != v7);
        v5 = [allObjects countByEnumeratingWithState:&v8 objects:v12 count:16];
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