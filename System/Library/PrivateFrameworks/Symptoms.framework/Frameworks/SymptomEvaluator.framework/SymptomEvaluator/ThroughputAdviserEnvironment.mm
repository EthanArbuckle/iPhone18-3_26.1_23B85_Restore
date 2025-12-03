@interface ThroughputAdviserEnvironment
- (ThroughputAdviserEnvironment)initWithQueue:(id)queue;
@end

@implementation ThroughputAdviserEnvironment

- (ThroughputAdviserEnvironment)initWithQueue:(id)queue
{
  queueCopy = queue;
  v9.receiver = self;
  v9.super_class = ThroughputAdviserEnvironment;
  v6 = [(ThroughputAdviserEnvironment *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_queue, queue);
  }

  return v7;
}

@end