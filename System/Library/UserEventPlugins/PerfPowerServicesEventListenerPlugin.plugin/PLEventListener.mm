@interface PLEventListener
+ (BOOL)hasBattery;
- (PLEventListener)initWithQueue:(id)queue;
- (void)dealloc;
- (void)registerForThermalNotification;
@end

@implementation PLEventListener

- (PLEventListener)initWithQueue:(id)queue
{
  v6.receiver = self;
  v6.super_class = PLEventListener;
  v4 = [(PLEventListener *)&v6 init];
  if (v4)
  {
    v4->_powerEventListener = [[PLPowerEventListener alloc] initWithQueue:queue];
    v4->_aggregateLogger = objc_alloc_init(PLAggregateLogger);
    [(PLEventListener *)v4 registerForThermalNotification];
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = PLEventListener;
  [(PLEventListener *)&v3 dealloc];
}

- (void)registerForThermalNotification
{
  if (qword_13C38 != -1)
  {
    sub_9994();
  }
}

+ (BOOL)hasBattery
{
  if (qword_13C48 != -1)
  {
    sub_99A8();
  }

  return byte_13C44;
}

@end