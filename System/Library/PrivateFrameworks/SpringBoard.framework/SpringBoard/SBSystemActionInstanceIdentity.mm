@interface SBSystemActionInstanceIdentity
- (BOOL)isEqual:(id)a3;
- (unint64_t)hash;
- (void)appendDescriptionToFormatter:(id)a3;
- (void)initWithHostIdentifier:(void *)a3 configurationIdentifier:;
@end

@implementation SBSystemActionInstanceIdentity

- (void)initWithHostIdentifier:(void *)a3 configurationIdentifier:
{
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    if (!v5)
    {
      [SBSystemActionInstanceIdentity initWithHostIdentifier:? configurationIdentifier:?];
    }

    if (!v6)
    {
      [SBSystemActionInstanceIdentity initWithHostIdentifier:? configurationIdentifier:?];
    }

    v12.receiver = a1;
    v12.super_class = SBSystemActionInstanceIdentity;
    a1 = objc_msgSendSuper2(&v12, sel_init);
    if (a1)
    {
      v7 = [v5 copy];
      v8 = a1[1];
      a1[1] = v7;

      v9 = [v6 copy];
      v10 = a1[2];
      a1[2] = v9;
    }
  }

  return a1;
}

- (void)appendDescriptionToFormatter:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __63__SBSystemActionInstanceIdentity_appendDescriptionToFormatter___block_invoke;
  v6[3] = &unk_2783A92D8;
  v7 = v4;
  v8 = self;
  v5 = v4;
  [v5 appendProem:0 block:v6];
}

uint64_t __63__SBSystemActionInstanceIdentity_appendDescriptionToFormatter___block_invoke(uint64_t a1)
{
  [*(a1 + 32) appendString:*(*(a1 + 40) + 8) withName:@"hostIdentifier"];
  v2 = *(a1 + 32);
  v3 = *(*(a1 + 40) + 16);

  return [v2 appendString:v3 withName:@"configurationIdentifier"];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v8 = 1;
  }

  else
  {
    v5 = objc_opt_self();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v7 = v4;
      if (BSEqualStrings())
      {
        v8 = BSEqualStrings();
      }

      else
      {
        v8 = 0;
      }
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x277CF0C40] builder];
  v4 = [v3 appendString:self->_hostIdentifier];
  v5 = [v4 appendString:self->_configurationIdentifier];
  v6 = [v5 hash];

  return v6;
}

- (void)initWithHostIdentifier:(const char *)a1 configurationIdentifier:.cold.1(const char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@", @"configurationIdentifier != ((void *)0)"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v3 = NSStringFromSelector(a1);
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    OUTLINED_FUNCTION_0_0();
    v8 = @"SBSystemActionInstanceIdentity.m";
    v9 = 1024;
    v10 = 25;
    v11 = v6;
    v12 = v2;
    _os_log_error_impl(&dword_21ED4E000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)initWithHostIdentifier:(const char *)a1 configurationIdentifier:.cold.2(const char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@", @"hostIdentifier != ((void *)0)"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v3 = NSStringFromSelector(a1);
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    OUTLINED_FUNCTION_0_0();
    v8 = @"SBSystemActionInstanceIdentity.m";
    v9 = 1024;
    v10 = 24;
    v11 = v6;
    v12 = v2;
    _os_log_error_impl(&dword_21ED4E000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

@end