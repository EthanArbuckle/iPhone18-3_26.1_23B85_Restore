@interface MetricsManager
+ (id)sharedInstance;
- (MetricsManager)init;
@end

@implementation MetricsManager

+ (id)sharedInstance
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100009728;
  block[3] = &unk_100025290;
  block[4] = a1;
  if (qword_100029380[0] != -1)
  {
    dispatch_once(qword_100029380, block);
  }

  v2 = qword_100029378;

  return v2;
}

- (MetricsManager)init
{
  v6.receiver = self;
  v6.super_class = MetricsManager;
  v2 = [(MetricsManager *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(_TtC5amfid29ConstraintUsageMetricsManager);
    constraintUsageMetrics = v2->_constraintUsageMetrics;
    v2->_constraintUsageMetrics = v3;
  }

  return v2;
}

@end