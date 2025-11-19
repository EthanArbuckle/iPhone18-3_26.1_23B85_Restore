@interface NSEnumerator(RCAdditions)
- (id)rc_firstObjectPassingTest:()RCAdditions;
@end

@implementation NSEnumerator(RCAdditions)

- (id)rc_firstObjectPassingTest:()RCAdditions
{
  v4 = a3;
  if (!v4 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NSEnumerator(RCAdditions) rc_firstObjectPassingTest:];
  }

  v5 = 0;
  do
  {
    v6 = v5;
    v5 = [a1 nextObject];
  }

  while (v5 && !v4[2](v4, v5));

  return v5;
}

- (void)rc_firstObjectPassingTest:()RCAdditions .cold.1()
{
  v10 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s", "testBlock"];
  *buf = 136315906;
  v3 = "[NSEnumerator(RCAdditions) rc_firstObjectPassingTest:]";
  v4 = 2080;
  v5 = "/Library/Caches/com.apple.xbs/Sources/RemoteConfiguration/RemoteConfiguration/Categories/NSEnumerator+RCAdditions.m";
  v6 = 1024;
  v7 = 16;
  v8 = 2114;
  v9 = v0;
  _os_log_error_impl(&dword_2179FC000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "*** Assertion failure: %s %s:%d %{public}@", buf, 0x26u);

  v1 = *MEMORY[0x277D85DE8];
}

@end