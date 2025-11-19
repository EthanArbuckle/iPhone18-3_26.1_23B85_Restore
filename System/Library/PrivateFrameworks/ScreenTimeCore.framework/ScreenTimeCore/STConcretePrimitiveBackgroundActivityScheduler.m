@interface STConcretePrimitiveBackgroundActivityScheduler
- (STConcretePrimitiveBackgroundActivityScheduler)init;
- (STPrimitiveBackgroundActivitySchedulerDelegate)delegate;
- (void)invalidateBackgroundActivityOfType:(int64_t)a3;
- (void)scheduleBackgroundActivityOfType:(int64_t)a3 interval:(id)a4;
@end

@implementation STConcretePrimitiveBackgroundActivityScheduler

- (STConcretePrimitiveBackgroundActivityScheduler)init
{
  v6.receiver = self;
  v6.super_class = STConcretePrimitiveBackgroundActivityScheduler;
  v2 = [(STConcretePrimitiveBackgroundActivityScheduler *)&v6 init];
  v3 = objc_opt_new();
  scheduledActivitiesByType = v2->_scheduledActivitiesByType;
  v2->_scheduledActivitiesByType = v3;

  return v2;
}

- (void)scheduleBackgroundActivityOfType:(int64_t)a3 interval:(id)a4
{
  v6 = a4;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10001B4EC;
  v10[3] = &unk_1001A3458;
  v10[4] = self;
  v7 = [[STConcretePrimitiveBackgroundActivity alloc] initWithType:a3 interval:v6 willBegin:v10 didEnd:&stru_1001A3498];

  v8 = [(STConcretePrimitiveBackgroundActivityScheduler *)self scheduledActivitiesByType];
  v9 = [NSNumber numberWithInteger:a3];
  [v8 setObject:v7 forKeyedSubscript:v9];
}

- (void)invalidateBackgroundActivityOfType:(int64_t)a3
{
  v6 = [(STConcretePrimitiveBackgroundActivityScheduler *)self scheduledActivitiesByType];
  v4 = [NSNumber numberWithInteger:a3];
  v5 = [v6 objectForKeyedSubscript:v4];
  [v5 invalidate];
}

- (STPrimitiveBackgroundActivitySchedulerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->delegate);

  return WeakRetained;
}

@end