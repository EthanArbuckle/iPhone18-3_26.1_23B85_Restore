@interface NSMutableDictionary(RCAdditions)
- (void)rc_safelySetObjectAllowingNil:()RCAdditions forKey:;
@end

@implementation NSMutableDictionary(RCAdditions)

- (void)rc_safelySetObjectAllowingNil:()RCAdditions forKey:
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    if (v6)
    {
      [self setObject:v6 forKey:v7];
    }

    else
    {
      [self removeObjectForKey:v7];
    }
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NSMutableDictionary(RCAdditions) rc_safelySetObjectAllowingNil:forKey:];
  }
}

- (void)rc_safelySetObjectAllowingNil:()RCAdditions forKey:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"invalid nil value for '%s'"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_3(&dword_2179FC000, MEMORY[0x277D86220], v1, "*** Assertion failure: %s %s:%d %{public}@", v2, v3, v4, v5, "key", v7, 2u);

  v6 = *MEMORY[0x277D85DE8];
}

@end