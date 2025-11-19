@interface SBINAppIntent
- (BOOL)isEqual:(id)a3;
- (SBINAppIntent)initWithIdentifier:(id)a3 systemContext:(id)a4;
- (void)appendDescriptionToFormatter:(id)a3;
@end

@implementation SBINAppIntent

- (SBINAppIntent)initWithIdentifier:(id)a3 systemContext:(id)a4
{
  v8 = a3;
  v9 = a4;
  if (!v8)
  {
    [SBINAppIntent initWithIdentifier:a2 systemContext:?];
  }

  v10 = v9;
  if (!v9)
  {
    [SBINAppIntent initWithIdentifier:a2 systemContext:?];
  }

  v14.receiver = self;
  v14.super_class = SBINAppIntent;
  v11 = [(SBINAppIntent *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_identifier, a3);
    objc_storeStrong(&v12->_systemContext, a4);
  }

  return v12;
}

- (void)appendDescriptionToFormatter:(id)a3
{
  v5 = a3;
  [v5 appendString:self->_identifier withName:@"identifier"];
  v4 = [v5 appendObject:self->_systemContext withName:@"systemContext"];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v12 = 1;
  }

  else
  {
    v5 = objc_opt_self();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v7 = v4;
      identifier = self->_identifier;
      v9 = v7->_identifier;
      if (BSEqualStrings())
      {
        systemContext = self->_systemContext;
        v11 = v7->_systemContext;
        v12 = BSEqualObjects();
      }

      else
      {
        v12 = 0;
      }
    }

    else
    {
      v12 = 0;
    }
  }

  return v12;
}

- (void)initWithIdentifier:(const char *)a1 systemContext:.cold.1(const char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@", @"systemContext != ((void*)0)"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v3 = NSStringFromSelector(a1);
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    OUTLINED_FUNCTION_0();
    v8 = @"SBINAppIntent.m";
    v9 = 1024;
    v10 = 20;
    v11 = v6;
    v12 = v2;
    _os_log_error_impl(&dword_26B9E8000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)initWithIdentifier:(const char *)a1 systemContext:.cold.2(const char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@", @"identifier != ((void*)0)"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v3 = NSStringFromSelector(a1);
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    OUTLINED_FUNCTION_0();
    v8 = @"SBINAppIntent.m";
    v9 = 1024;
    v10 = 19;
    v11 = v6;
    v12 = v2;
    _os_log_error_impl(&dword_26B9E8000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

@end