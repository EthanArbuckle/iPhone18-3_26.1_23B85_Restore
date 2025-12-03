@interface SBPhysicalButtonCompletionHandler
- (BOOL)completeWithResult:(unint64_t)result;
- (id)descriptionBuilderWithMultilinePrefix:(void *)prefix;
- (id)descriptionWithMultilinePrefix:(uint64_t)prefix;
- (id)succinctDescriptionBuilder;
- (void)dealloc;
- (void)initWithIdentifier:(uint64_t)identifier button:(void *)button block:;
@end

@implementation SBPhysicalButtonCompletionHandler

- (void)initWithIdentifier:(uint64_t)identifier button:(void *)button block:
{
  v7 = a2;
  buttonCopy = button;
  if (self)
  {
    if (!v7)
    {
      [SBPhysicalButtonCompletionHandler initWithIdentifier:? button:? block:?];
    }

    if (!buttonCopy)
    {
      [SBPhysicalButtonCompletionHandler initWithIdentifier:? button:? block:?];
    }

    v14.receiver = self;
    v14.super_class = SBPhysicalButtonCompletionHandler;
    self = objc_msgSendSuper2(&v14, sel_init);
    if (self)
    {
      v9 = [v7 copy];
      v10 = self[3];
      self[3] = v9;

      self[2] = identifier;
      v11 = [buttonCopy copy];
      v12 = self[1];
      self[1] = v11;
    }
  }

  return self;
}

- (void)dealloc
{
  v4 = MEMORY[0x277CCACA8];
  v5 = objc_opt_class();
  v6 = _NSStringFromUIPhysicalButton();
  v7 = [v4 stringWithFormat:@"Client code must invalidate <%@:%p> (%@: %@) before dealloc", v5, self, v6, *(self + 24)];

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v8 = NSStringFromSelector(a2);
    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    *buf = 138544642;
    v12 = v8;
    v13 = 2114;
    v14 = v10;
    v15 = 2048;
    selfCopy = self;
    v17 = 2114;
    v18 = @"SBPhysicalButtonCompletionHandler.m";
    v19 = 1024;
    v20 = 34;
    v21 = 2114;
    v22 = v7;
    _os_log_error_impl(&dword_21ED4E000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
  }

  [v7 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (BOOL)completeWithResult:(unint64_t)result
{
  v19 = *MEMORY[0x277D85DE8];
  block = self->_block;
  if (block)
  {
    v6 = SBLogButtonsInteraction();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = _NSStringFromUIPhysicalButton();
      v8 = NSStringFromSBPhysicalButtonResult(result);
      identifier = self->_identifier;
      v13 = 138543874;
      v14 = v7;
      v15 = 2114;
      v16 = v8;
      v17 = 2114;
      v18 = identifier;
      _os_log_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_DEFAULT, "Button completion %{public}@-%{public}@ for '%{public}@'", &v13, 0x20u);
    }

    v10 = MEMORY[0x223D6F7F0](self->_block);
    v11 = self->_block;
    self->_block = 0;

    (v10)[2](v10, self, result);
  }

  return block != 0;
}

- (id)descriptionWithMultilinePrefix:(uint64_t)prefix
{
  if (prefix)
  {
    succinctDescriptionBuilder = [(SBPhysicalButtonCompletionHandler *)prefix succinctDescriptionBuilder];
    build = [succinctDescriptionBuilder build];
  }

  else
  {
    build = 0;
  }

  return build;
}

- (id)succinctDescriptionBuilder
{
  if (self)
  {
    v2 = [MEMORY[0x277CF0C00] builderWithObject:self];
    v3 = _NSStringFromUIPhysicalButton();
    [v2 appendString:v3 withName:@"button"];

    [v2 appendString:*(self + 24) withName:@"identifier"];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (id)descriptionBuilderWithMultilinePrefix:(void *)prefix
{
  if (prefix)
  {
    prefix = [(SBPhysicalButtonCompletionHandler *)prefix succinctDescriptionBuilder];
    v1 = vars8;
  }

  return prefix;
}

- (void)initWithIdentifier:(const char *)a1 button:block:.cold.1(const char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@", @"block != ((void *)0)"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v3 = NSStringFromSelector(a1);
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    OUTLINED_FUNCTION_0_0();
    v8 = @"SBPhysicalButtonCompletionHandler.m";
    v9 = 1024;
    v10 = 23;
    v11 = v6;
    v12 = v2;
    _os_log_error_impl(&dword_21ED4E000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)initWithIdentifier:(const char *)a1 button:block:.cold.2(const char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@", @"identifier != ((void *)0)"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v3 = NSStringFromSelector(a1);
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    OUTLINED_FUNCTION_0_0();
    v8 = @"SBPhysicalButtonCompletionHandler.m";
    v9 = 1024;
    v10 = 22;
    v11 = v6;
    v12 = v2;
    _os_log_error_impl(&dword_21ED4E000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

@end