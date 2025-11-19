@interface PLBatteryUIResponseTypeBatteryBreakdownBUIIOS
- (id)getDrainPerBucketIn:(_PLTimeIntervalRange)a3;
@end

@implementation PLBatteryUIResponseTypeBatteryBreakdownBUIIOS

- (id)getDrainPerBucketIn:(_PLTimeIntervalRange)a3
{
  v4 = [(PLBatteryUIResponseTypeBatteryBreakdown *)self computeNumberOfBuckets:a3.location];
  v5 = [(PLBatteryUIResponseTypeBatteryBreakdownBUIIOS *)self isDynamicEnd];
  v6 = [(PLBatteryUIResponseTypeBatteryBreakdown *)self responderService];
  v7 = v6;
  v8 = (86400 * v4);
  if (v5)
  {
    [v6 getDynamicEndUISOCDrainByBuckets:v8 fromCachedLength:1296000 forBucketSize:86400];
  }

  else
  {
    [v6 getUISOCDrainByBuckets:v8 fromCachedLength:1296000 forBucketSize:86400];
  }
  v9 = ;

  v10 = [v9 reverseObjectEnumerator];
  v11 = [v10 allObjects];

  return v11;
}

@end