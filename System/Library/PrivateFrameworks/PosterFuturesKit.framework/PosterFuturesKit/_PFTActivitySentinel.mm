@interface _PFTActivitySentinel
- (_PFTActivitySentinel)initWithActivity:(id)activity;
- (void)dealloc;
- (void)invalidate;
@end

@implementation _PFTActivitySentinel

- (void)invalidate
{
  if ([(BSAtomicSignal *)self->_invalidationSignal signal])
  {
    os_activity_scope_leave(&self->_state);
    activity = self->_activity;
    self->_activity = 0;
  }
}

- (void)dealloc
{
  [(_PFTActivitySentinel *)self invalidate];
  v3.receiver = self;
  v3.super_class = _PFTActivitySentinel;
  [(_PFTActivitySentinel *)&v3 dealloc];
}

- (_PFTActivitySentinel)initWithActivity:(id)activity
{
  activityCopy = activity;
  if (!activityCopy)
  {
    [(_PFTActivitySentinel *)a2 initWithActivity:?];
  }

  v7 = activityCopy;
  v14.receiver = self;
  v14.super_class = _PFTActivitySentinel;
  v8 = [(_PFTActivitySentinel *)&v14 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_activity, activity);
    v10 = objc_opt_new();
    invalidationSignal = v9->_invalidationSignal;
    v9->_invalidationSignal = v10;

    wrappedActivity = [v7 wrappedActivity];
    os_activity_scope_enter(wrappedActivity, &v9->_state);
  }

  return v9;
}

- (void)initWithActivity:(const char *)a1 .cold.1(const char *a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@", @"activity"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v5 = NSStringFromSelector(a1);
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    *buf = 138544642;
    v9 = v5;
    v10 = 2114;
    v11 = v7;
    v12 = 2048;
    v13 = a2;
    v14 = 2114;
    v15 = @"PFTActivity.m";
    v16 = 1024;
    v17 = 99;
    v18 = 2114;
    v19 = v4;
    _os_log_error_impl(&dword_25ED8F000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
  }

  [v4 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

@end