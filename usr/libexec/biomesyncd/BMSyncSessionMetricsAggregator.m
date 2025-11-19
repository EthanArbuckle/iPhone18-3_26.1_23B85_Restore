@interface BMSyncSessionMetricsAggregator
- (BMSyncSessionMetricsAggregator)initWithDatabase:(id)a3 activity:(id)a4;
@end

@implementation BMSyncSessionMetricsAggregator

- (BMSyncSessionMetricsAggregator)initWithDatabase:(id)a3 activity:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = BMSyncSessionMetricsAggregator;
  v9 = [(BMSyncSessionMetricsAggregator *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_database, a3);
    objc_storeStrong(&v10->_activity, a4);
  }

  return v10;
}

@end