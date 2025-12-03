@interface WFConfiguredStaccatoAction(SBUtilities)
- (void)sb_configuredIntentAction;
@end

@implementation WFConfiguredStaccatoAction(SBUtilities)

- (void)sb_configuredIntentAction
{
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"Only valid when this is an Intent action %@ is not.", self];;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v5 = NSStringFromSelector(a2);
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    *buf = 138544642;
    v9 = v5;
    v10 = 2114;
    v11 = v7;
    v12 = 2048;
    selfCopy = self;
    v14 = 2114;
    v15 = @"SBLocalSystemActionUtilities.m";
    v16 = 1024;
    v17 = 48;
    v18 = 2114;
    v19 = v4;
    _os_log_error_impl(&dword_21ED4E000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
  }

  [v4 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

@end