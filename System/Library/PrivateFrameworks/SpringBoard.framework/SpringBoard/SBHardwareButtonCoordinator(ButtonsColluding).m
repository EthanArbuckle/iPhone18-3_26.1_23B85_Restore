@interface SBHardwareButtonCoordinator(ButtonsColluding)
@end

@implementation SBHardwareButtonCoordinator(ButtonsColluding)

- (void)cancelHardwareButtons:()ButtonsColluding fromButton:.cold.1(uint64_t a1, const char *a2, uint64_t a3)
{
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"button cannot cancel itself (%@)", a1];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v6 = NSStringFromSelector(a2);
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    *buf = 138544642;
    v10 = v6;
    v11 = 2114;
    v12 = v8;
    v13 = 2048;
    v14 = a3;
    v15 = 2114;
    v16 = @"SBHardwareButtonCoordinator.m";
    v17 = 1024;
    v18 = 178;
    v19 = 2114;
    v20 = v5;
    _os_log_error_impl(&dword_21ED4E000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
  }

  [v5 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

@end