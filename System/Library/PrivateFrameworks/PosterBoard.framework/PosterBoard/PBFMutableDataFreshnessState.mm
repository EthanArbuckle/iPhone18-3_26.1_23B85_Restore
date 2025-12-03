@interface PBFMutableDataFreshnessState
- (PBFMutableDataFreshnessState)init;
- (void)track:(id)track;
@end

@implementation PBFMutableDataFreshnessState

- (PBFMutableDataFreshnessState)init
{
  v3 = [MEMORY[0x277CBEB98] set];
  v6.receiver = self;
  v6.super_class = PBFMutableDataFreshnessState;
  v4 = [(PBFDataFreshnessState *)&v6 initWithFreshnessProvider:v3];

  return v4;
}

- (void)track:(id)track
{
  trackCopy = track;
  NSClassFromString(&cfstr_Pbfdatacompone_4.isa);
  if (!trackCopy)
  {
    [PBFMutableDataFreshnessState track:a2];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [PBFMutableDataFreshnessState track:a2];
  }

  freshnessProviders = [(PBFDataFreshnessState *)self freshnessProviders];
  v6 = [freshnessProviders mutableCopy];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = objc_opt_new();
  }

  v9 = v8;

  [v9 addObject:trackCopy];
  v10 = [v9 copy];
  [(PBFDataFreshnessState *)self setFreshnessProviders:v10];
}

- (void)track:(char *)a1 .cold.1(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_21B526000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[_bs_assert_object isKindOfClass:PBFDataComponentObjectEntityClass]", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)track:(char *)a1 .cold.2(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_21B526000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"_bs_assert_object != nil", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

@end