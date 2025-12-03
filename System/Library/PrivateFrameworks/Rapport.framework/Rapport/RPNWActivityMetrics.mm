@interface RPNWActivityMetrics
+ (id)metricsUsingToken:(id)token;
- (id)_initWithNWActivity:(id)activity;
- (void)_withLock:(os_unfair_lock_s *)lock;
- (void)submitMetrics;
@end

@implementation RPNWActivityMetrics

- (void)submitMetrics
{
  _metricsDictionary = [(RPNWActivityMetrics *)self _metricsDictionary];
  v3 = _CFXPCCreateXPCObjectFromCFObject();
  if (v3)
  {
    nwActivity = [(RPNWActivityMetrics *)self nwActivity];
    nw_activity_submit_metrics();
  }

  else if (gLogCategory_RPNWActivity <= 90 && (gLogCategory_RPNWActivity != -1 || _LogCategory_Initialize()))
  {
    [RPNWActivityMetrics submitMetrics];
  }
}

+ (id)metricsUsingToken:(id)token
{
  tokenCopy = token;
  v5 = [RPNWActivityUtils activityFromToken:tokenCopy];
  if (v5)
  {
    v6 = [[self alloc] _initWithNWActivity:v5];
  }

  else
  {
    if (gLogCategory_RPNWActivity <= 90 && (gLogCategory_RPNWActivity != -1 || _LogCategory_Initialize()))
    {
      +[RPNWActivityMetrics metricsUsingToken:];
    }

    v6 = 0;
  }

  return v6;
}

- (id)_initWithNWActivity:(id)activity
{
  activityCopy = activity;
  v9.receiver = self;
  v9.super_class = RPNWActivityMetrics;
  v6 = [(RPNWActivityMetrics *)&v9 init];
  v7 = v6;
  if (v6)
  {
    v6->_lock._os_unfair_lock_opaque = 0;
    objc_storeStrong(&v6->_nwActivity, activity);
  }

  return v7;
}

- (void)_withLock:(os_unfair_lock_s *)lock
{
  if (lock)
  {
    v3 = a2;
    os_unfair_lock_lock(lock + 2);
    v3[2](v3);

    os_unfair_lock_unlock(lock + 2);
  }
}

@end