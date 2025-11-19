@interface ThroughputAdviserEnvironment
- (ThroughputAdviserEnvironment)initWithQueue:(id)a3;
@end

@implementation ThroughputAdviserEnvironment

- (ThroughputAdviserEnvironment)initWithQueue:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = ThroughputAdviserEnvironment;
  v6 = [(ThroughputAdviserEnvironment *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_queue, a3);
  }

  return v7;
}

@end