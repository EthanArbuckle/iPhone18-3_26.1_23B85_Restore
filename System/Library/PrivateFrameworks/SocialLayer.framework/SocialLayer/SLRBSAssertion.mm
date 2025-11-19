@interface SLRBSAssertion
+ (id)assertionNameForType:(int64_t)a3;
- (BOOL)isValid;
- (void)dealloc;
- (void)invalidate;
@end

@implementation SLRBSAssertion

+ (id)assertionNameForType:(int64_t)a3
{
  if (a3)
  {
    return 0;
  }

  else
  {
    return @"CollaborationHandshake";
  }
}

- (BOOL)isValid
{
  v2 = [(SLRBSAssertion *)self assertion];
  v3 = [v2 isValid];

  return v3;
}

- (void)invalidate
{
  v11 = *MEMORY[0x277D85DE8];
  if ([(SLRBSAssertion *)self isValid])
  {
    v3 = SLDaemonLogHandle();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = [(SLRBSAssertion *)self assertion];
      v7 = 136315394;
      v8 = "[SLRBSAssertion invalidate]";
      v9 = 2048;
      v10 = v4;
      _os_log_impl(&dword_231772000, v3, OS_LOG_TYPE_DEFAULT, "%s invalidating assertion: <RBSAssertion: %p>", &v7, 0x16u);
    }

    v5 = [(SLRBSAssertion *)self assertion];
    [v5 invalidate];
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)dealloc
{
  v12 = *MEMORY[0x277D85DE8];
  if ([(SLRBSAssertion *)self isValid])
  {
    v3 = SLDaemonLogHandle();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = [(SLRBSAssertion *)self assertion];
      *buf = 136315394;
      v9 = "[SLRBSAssertion dealloc]";
      v10 = 2048;
      v11 = v4;
      _os_log_impl(&dword_231772000, v3, OS_LOG_TYPE_DEFAULT, "%s invalidating assertion: <RBSAssertion: %p>", buf, 0x16u);
    }

    v5 = [(SLRBSAssertion *)self assertion];
    [v5 invalidate];
  }

  v7.receiver = self;
  v7.super_class = SLRBSAssertion;
  [(SLRBSAssertion *)&v7 dealloc];
  v6 = *MEMORY[0x277D85DE8];
}

- (void)initWithType:(uint64_t *)a1 pid:(int)a2 error:(os_log_t)log .cold.1(uint64_t *a1, int a2, os_log_t log)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v5 = 136315650;
  v6 = "[SLRBSAssertion initWithType:pid:error:]";
  v7 = 1024;
  v8 = a2;
  v9 = 2112;
  v10 = v3;
  _os_log_error_impl(&dword_231772000, log, OS_LOG_TYPE_ERROR, "%s Unable to acquire assertion for pid: %i error: %@", &v5, 0x1Cu);
  v4 = *MEMORY[0x277D85DE8];
}

- (void)initWithType:(os_log_t)log pid:error:.cold.2(os_log_t log)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 136315138;
  v3 = "[SLRBSAssertion initWithType:pid:error:]";
  _os_log_error_impl(&dword_231772000, log, OS_LOG_TYPE_ERROR, "%s initialization failed, but we acquired the assertion. Invalidating it and returning nil", &v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

@end