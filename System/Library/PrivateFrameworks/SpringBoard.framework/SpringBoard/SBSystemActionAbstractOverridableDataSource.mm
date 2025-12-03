@interface SBSystemActionAbstractOverridableDataSource
- (void)addOverrider:(id)overrider;
- (void)removeOverrider:(id)overrider;
- (void)setSelectedSystemAction:(id)action;
@end

@implementation SBSystemActionAbstractOverridableDataSource

- (void)addOverrider:(id)overrider
{
  overriderCopy = overrider;
  overriders = self->_overriders;
  v8 = overriderCopy;
  if (!overriders)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v7 = self->_overriders;
    self->_overriders = v6;

    overriderCopy = v8;
    overriders = self->_overriders;
  }

  [(NSMutableSet *)overriders addObject:overriderCopy];
  [(SBSystemActionAbstractDataSource *)self updateSelectedAction];
}

- (void)removeOverrider:(id)overrider
{
  [(NSMutableSet *)self->_overriders removeObject:overrider];

  [(SBSystemActionAbstractDataSource *)self updateSelectedAction];
}

- (void)setSelectedSystemAction:(id)action
{
  v25 = *MEMORY[0x277D85DE8];
  actionCopy = action;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = [(NSMutableSet *)self->_overriders copy];
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v24 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    while (2)
    {
      v9 = 0;
      do
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v14 + 1) + 8 * v9) systemActionDataSource:self overrideActionForAction:actionCopy];
        if (v10)
        {
          v11 = v10;
          v12 = SBLogSystemActionDataSource();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543874;
            selfCopy = self;
            v20 = 2114;
            v21 = v11;
            v22 = 2114;
            v23 = actionCopy;
            _os_log_impl(&dword_21ED4E000, v12, OS_LOG_TYPE_DEFAULT, "(%{public}@) Found override action: %{public}@ for action: %{public}@", buf, 0x20u);
          }

          goto LABEL_13;
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v14 objects:v24 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v11 = actionCopy;
LABEL_13:

  v13.receiver = self;
  v13.super_class = SBSystemActionAbstractOverridableDataSource;
  [(SBSystemActionAbstractDataSource *)&v13 setSelectedSystemAction:v11];
}

@end