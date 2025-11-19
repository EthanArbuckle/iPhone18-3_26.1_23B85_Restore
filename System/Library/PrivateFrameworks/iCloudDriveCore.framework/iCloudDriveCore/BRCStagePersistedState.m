@interface BRCStagePersistedState
+ (id)loadFromClientStateInSession:(id)a3 options:(id)a4;
- (BRCStagePersistedState)init;
- (BRCStagePersistedState)initWithCoder:(id)a3;
- (BRCStagePersistedState)initWithLatestGCStartTime:(int64_t)a3;
- (int64_t)timeSinceLatestGCStartTime;
- (void)encodeWithCoder:(id)a3;
- (void)timeSinceLatestGCStartTime;
@end

@implementation BRCStagePersistedState

+ (id)loadFromClientStateInSession:(id)a3 options:(id)a4
{
  v4 = [a3 clientState];
  v5 = [v4 objectForKeyedSubscript:@"stage"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v7 = objc_opt_new();

    [v4 setObject:v7 forKeyedSubscript:@"stage"];
    v5 = v7;
  }

  return v5;
}

- (BRCStagePersistedState)init
{
  v3 = time(0);

  return [(BRCStagePersistedState *)self initWithLatestGCStartTime:v3];
}

- (BRCStagePersistedState)initWithLatestGCStartTime:(int64_t)a3
{
  v5.receiver = self;
  v5.super_class = BRCStagePersistedState;
  result = [(BRCStagePersistedState *)&v5 init];
  if (result)
  {
    result->_latestGCStartTime = a3;
  }

  return result;
}

- (int64_t)timeSinceLatestGCStartTime
{
  v2 = time(0) - self->_latestGCStartTime;
  if (v2 < 0)
  {
    v3 = brc_bread_crumbs();
    v4 = brc_default_log();
    if (os_log_type_enabled(v4, 0x90u))
    {
      [BRCStagePersistedState timeSinceLatestGCStartTime];
    }

    return 0;
  }

  return v2;
}

- (BRCStagePersistedState)initWithCoder:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = BRCStagePersistedState;
  v5 = [(BRCPersistedState *)&v7 initWithCoder:v4];
  if (v5)
  {
    v5->_latestGCStartTime = [v4 decodeInt64ForKey:@"gc"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = BRCStagePersistedState;
  v4 = a3;
  [(BRCPersistedState *)&v5 encodeWithCoder:v4];
  [v4 encodeInt64:self->_latestGCStartTime forKey:{@"gc", v5.receiver, v5.super_class}];
}

- (void)timeSinceLatestGCStartTime
{
  v5 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_9();
  _os_log_error_impl(v0, v1, 0x90u, v2, v3, 0x16u);
  v4 = *MEMORY[0x277D85DE8];
}

@end