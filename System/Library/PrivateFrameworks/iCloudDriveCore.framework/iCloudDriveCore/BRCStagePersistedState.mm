@interface BRCStagePersistedState
+ (id)loadFromClientStateInSession:(id)session options:(id)options;
- (BRCStagePersistedState)init;
- (BRCStagePersistedState)initWithCoder:(id)coder;
- (BRCStagePersistedState)initWithLatestGCStartTime:(int64_t)time;
- (int64_t)timeSinceLatestGCStartTime;
- (void)encodeWithCoder:(id)coder;
- (void)timeSinceLatestGCStartTime;
@end

@implementation BRCStagePersistedState

+ (id)loadFromClientStateInSession:(id)session options:(id)options
{
  clientState = [session clientState];
  v5 = [clientState objectForKeyedSubscript:@"stage"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v7 = objc_opt_new();

    [clientState setObject:v7 forKeyedSubscript:@"stage"];
    v5 = v7;
  }

  return v5;
}

- (BRCStagePersistedState)init
{
  v3 = time(0);

  return [(BRCStagePersistedState *)self initWithLatestGCStartTime:v3];
}

- (BRCStagePersistedState)initWithLatestGCStartTime:(int64_t)time
{
  v5.receiver = self;
  v5.super_class = BRCStagePersistedState;
  result = [(BRCStagePersistedState *)&v5 init];
  if (result)
  {
    result->_latestGCStartTime = time;
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

- (BRCStagePersistedState)initWithCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = BRCStagePersistedState;
  v5 = [(BRCPersistedState *)&v7 initWithCoder:coderCopy];
  if (v5)
  {
    v5->_latestGCStartTime = [coderCopy decodeInt64ForKey:@"gc"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = BRCStagePersistedState;
  coderCopy = coder;
  [(BRCPersistedState *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeInt64:self->_latestGCStartTime forKey:{@"gc", v5.receiver, v5.super_class}];
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