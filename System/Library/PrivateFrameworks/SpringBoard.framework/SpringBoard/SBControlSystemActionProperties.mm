@interface SBControlSystemActionProperties
+ (void)propertiesForControlInstance:(uint64_t)instance;
- (BOOL)isEqual:(id)equal;
- (unint64_t)hash;
- (void)_initWithViewModel:(void *)model control:(void *)control descriptor:;
- (void)appendDescriptionToFormatter:(id)formatter;
@end

@implementation SBControlSystemActionProperties

+ (void)propertiesForControlInstance:(uint64_t)instance
{
  v2 = a2;
  v3 = objc_opt_self();
  if (!v2)
  {
    [SBControlSystemActionProperties propertiesForControlInstance:?];
  }

  sb_viewModel = [v2 sb_viewModel];
  if (sb_viewModel)
  {
    control = [v2 control];
    descriptor = [v2 descriptor];
    v7 = [(SBControlSystemActionProperties *)[v3 alloc] _initWithViewModel:sb_viewModel control:control descriptor:descriptor];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)_initWithViewModel:(void *)model control:(void *)control descriptor:
{
  v7 = a2;
  modelCopy = model;
  controlCopy = control;
  if (self)
  {
    if (!v7)
    {
      [SBControlSystemActionProperties _initWithViewModel:? control:? descriptor:?];
    }

    v36.receiver = self;
    v36.super_class = SBControlSystemActionProperties;
    self = objc_msgSendSuper2(&v36, sel_init);
    if (self)
    {
      title = [v7 title];
      v11 = [title copy];
      v12 = v11;
      if (v11)
      {
        displayName = v11;
      }

      else
      {
        displayName = [controlCopy displayName];
      }

      v14 = self[1];
      self[1] = displayName;

      sb_secondaryText = [v7 sb_secondaryText];
      v16 = [sb_secondaryText copy];
      v17 = self[2];
      self[2] = v16;

      sb_secondaryTextColor = [v7 sb_secondaryTextColor];
      v19 = self[3];
      self[3] = sb_secondaryTextColor;

      sb_keyColor = [v7 sb_keyColor];
      v21 = self[4];
      self[4] = sb_keyColor;

      v35 = 0;
      displayName2 = [v7 sb_actionHintTextWithType:&v35];
      if (!displayName2)
      {
        displayName2 = [controlCopy displayName];
        v35 = 0;
      }

      v23 = [displayName2 copy];
      v24 = self[5];
      self[5] = v23;

      self[6] = v35;
      isRedacted = [v7 isRedacted];
      if ([v7 isDisabled])
      {
        isRedacted |= 2uLL;
      }

      hasError = [v7 hasError];
      v27 = isRedacted | 4;
      if (!hasError)
      {
        v27 = isRedacted;
      }

      self[7] = v27;
      accessibilityIdentifier = [v7 accessibilityIdentifier];
      v29 = accessibilityIdentifier;
      if (accessibilityIdentifier)
      {
        kind = accessibilityIdentifier;
      }

      else
      {
        kind = [modelCopy kind];
      }

      v31 = kind;

      v32 = [v31 copy];
      v33 = self[8];
      self[8] = v32;
    }
  }

  return self;
}

- (void)appendDescriptionToFormatter:(id)formatter
{
  formatterCopy = formatter;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __64__SBControlSystemActionProperties_appendDescriptionToFormatter___block_invoke;
  v6[3] = &unk_2783A92D8;
  v7 = formatterCopy;
  selfCopy = self;
  v5 = formatterCopy;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
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