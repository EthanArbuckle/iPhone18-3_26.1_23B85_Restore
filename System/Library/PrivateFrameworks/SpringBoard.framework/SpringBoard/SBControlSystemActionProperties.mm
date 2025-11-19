@interface SBControlSystemActionProperties
+ (void)propertiesForControlInstance:(uint64_t)a1;
- (BOOL)isEqual:(id)a3;
- (unint64_t)hash;
- (void)_initWithViewModel:(void *)a3 control:(void *)a4 descriptor:;
- (void)appendDescriptionToFormatter:(id)a3;
@end

@implementation SBControlSystemActionProperties

+ (void)propertiesForControlInstance:(uint64_t)a1
{
  v2 = a2;
  v3 = objc_opt_self();
  if (!v2)
  {
    [SBControlSystemActionProperties propertiesForControlInstance:?];
  }

  v4 = [v2 sb_viewModel];
  if (v4)
  {
    v5 = [v2 control];
    v6 = [v2 descriptor];
    v7 = [(SBControlSystemActionProperties *)[v3 alloc] _initWithViewModel:v4 control:v5 descriptor:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)_initWithViewModel:(void *)a3 control:(void *)a4 descriptor:
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (a1)
  {
    if (!v7)
    {
      [SBControlSystemActionProperties _initWithViewModel:? control:? descriptor:?];
    }

    v36.receiver = a1;
    v36.super_class = SBControlSystemActionProperties;
    a1 = objc_msgSendSuper2(&v36, sel_init);
    if (a1)
    {
      v10 = [v7 title];
      v11 = [v10 copy];
      v12 = v11;
      if (v11)
      {
        v13 = v11;
      }

      else
      {
        v13 = [v9 displayName];
      }

      v14 = a1[1];
      a1[1] = v13;

      v15 = [v7 sb_secondaryText];
      v16 = [v15 copy];
      v17 = a1[2];
      a1[2] = v16;

      v18 = [v7 sb_secondaryTextColor];
      v19 = a1[3];
      a1[3] = v18;

      v20 = [v7 sb_keyColor];
      v21 = a1[4];
      a1[4] = v20;

      v35 = 0;
      v22 = [v7 sb_actionHintTextWithType:&v35];
      if (!v22)
      {
        v22 = [v9 displayName];
        v35 = 0;
      }

      v23 = [v22 copy];
      v24 = a1[5];
      a1[5] = v23;

      a1[6] = v35;
      v25 = [v7 isRedacted];
      if ([v7 isDisabled])
      {
        v25 |= 2uLL;
      }

      v26 = [v7 hasError];
      v27 = v25 | 4;
      if (!v26)
      {
        v27 = v25;
      }

      a1[7] = v27;
      v28 = [v7 accessibilityIdentifier];
      v29 = v28;
      if (v28)
      {
        v30 = v28;
      }

      else
      {
        v30 = [v8 kind];
      }

      v31 = v30;

      v32 = [v31 copy];
      v33 = a1[8];
      a1[8] = v32;
    }
  }

  return a1;
}

- (void)appendDescriptionToFormatter:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __64__SBControlSystemActionProperties_appendDescriptionToFormatter___block_invoke;
  v6[3] = &unk_2783A92D8;
  v7 = v4;
  v8 = self;
  v5 = v4;
  [v5 appendProem:0 block:v6];
}

id __64__SBControlSystemActionProperties_appendDescriptionToFormatter___block_invoke(uint64_t a1)
{
  [*(a1 + 32) appendString:*(*(a1 + 40) + 8) withName:@"titleText" skipIfEmpty:1];
  [*(a1 + 32) appendString:*(*(a1 + 40) + 16) withName:@"secondaryText" skipIfEmpty:1];
  [*(a1 + 32) appendString:*(*(a1 + 40) + 40) withName:@"actionHintText"];
  v2 = *(a1 + 32);
  v3 = NSStringFromSBControlSystemActionHintType(*(*(a1 + 40) + 48));
  [v2 appendString:v3 withName:@"actionHintType"];

  v4 = *(a1 + 32);
  v5 = NSStringFromSBControlSystemActionAttributes(*(*(a1 + 40) + 56));
  [v4 appendString:v5 withName:@"attributes" skipIfEmpty:1];

  [*(a1 + 32) appendString:*(*(a1 + 40) + 64) withName:@"accessibilityIdentifier"];
  v6 = [*(a1 + 32) appendObject:*(*(a1 + 40) + 24) withName:@"secondaryTextColor"];
  return [*(a1 + 32) appendObject:*(*(a1 + 40) + 32) withName:@"keyColor"];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      if (BSEqualStrings() && BSEqualStrings() && BSEqualObjects() && BSEqualObjects() && BSEqualStrings() && self->_actionHintType == v5->_actionHintType && self->_attributes == v5->_attributes)
      {
        v6 = BSEqualStrings();
      }

      else
      {
        v6 = 0;
      }
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_titleText hash];
  v4 = [(NSString *)self->_secondaryText hash]^ v3;
  v5 = [(UIColor *)self->_secondaryTextColor hash];
  v6 = v4 ^ v5 ^ [(UIColor *)self->_keyColor hash];
  v7 = v6 ^ [(NSString *)self->_actionHintText hash]^ self->_actionHintType ^ self->_attributes;
  return v7 ^ [(NSString *)self->_accessibilityIdentifier hash];
}

+ (void)propertiesForControlInstance:(const char *)a1 .cold.1(const char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@", @"controlInstance != ((void *)0)"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v3 = NSStringFromSelector(a1);
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    OUTLINED_FUNCTION_0_0();
    v8 = @"SBControlSystemActionProperties.m";
    v9 = 1024;
    v10 = 84;
    v11 = v6;
    v12 = v2;
    _os_log_error_impl(&dword_21ED4E000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)_initWithViewModel:(const char *)a1 control:descriptor:.cold.1(const char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@", @"viewModel != ((void *)0)"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v3 = NSStringFromSelector(a1);
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    OUTLINED_FUNCTION_0_0();
    v8 = @"SBControlSystemActionProperties.m";
    v9 = 1024;
    v10 = 97;
    v11 = v6;
    v12 = v2;
    _os_log_error_impl(&dword_21ED4E000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

@end