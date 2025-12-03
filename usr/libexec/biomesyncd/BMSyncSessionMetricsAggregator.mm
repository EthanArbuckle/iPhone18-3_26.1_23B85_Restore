@interface BMSyncSessionMetricsAggregator
- (BMSyncSessionMetricsAggregator)initWithDatabase:(id)database activity:(id)activity;
@end

@implementation BMSyncSessionMetricsAggregator

- (BMSyncSessionMetricsAggregator)initWithDatabase:(id)database activity:(id)activity
{
  databaseCopy = database;
  activityCopy = activity;
  v12.receiver = self;
  v12.super_class = BMSyncSessionMetricsAggregator;
  v9 = [(BMSyncSessionMetricsAggregator *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_database, database);
    objc_storeStrong(&v10->_activity, activity);
  }

  return v10;
}

@end