@interface BYXPCActivity
+ (id)activityWithXPCActivity:(id)activity;
- (BOOL)setCompletionStatus:(int64_t)status;
- (BOOL)setState:(int64_t)state;
- (BOOL)shouldDefer;
- (OS_xpc_object)criteria;
- (int64_t)state;
- (void)setCriteria:(id)criteria;
@end

@implementation BYXPCActivity

+ (id)activityWithXPCActivity:(id)activity
{
  activityCopy = activity;
  v4 = objc_alloc_init(BYXPCActivity);
  [(BYXPCActivity *)v4 setUnderlyingActivity:activityCopy];

  return v4;
}

- (BOOL)setState:(int64_t)state
{
  underlyingActivity = [(BYXPCActivity *)self underlyingActivity];
  LOBYTE(state) = xpc_activity_set_state(underlyingActivity, state);

  return state;
}

- (int64_t)state
{
  underlyingActivity = [(BYXPCActivity *)self underlyingActivity];
  state = xpc_activity_get_state(underlyingActivity);

  return state;
}

- (BOOL)shouldDefer
{
  underlyingActivity = [(BYXPCActivity *)self underlyingActivity];
  should_defer = xpc_activity_should_defer(underlyingActivity);

  return should_defer;
}

- (BOOL)setCompletionStatus:(int64_t)status
{
  underlyingActivity = [(BYXPCActivity *)self underlyingActivity];
  v4 = xpc_activity_set_completion_status();

  return v4;
}

- (void)setCriteria:(id)criteria
{
  criteriaCopy = criteria;
  underlyingActivity = [(BYXPCActivity *)self underlyingActivity];
  xpc_activity_set_criteria(underlyingActivity, criteriaCopy);
}

- (OS_xpc_object)criteria
{
  underlyingActivity = [(BYXPCActivity *)self underlyingActivity];
  v3 = xpc_activity_copy_criteria(underlyingActivity);

  return v3;
}

@end