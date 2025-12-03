@interface PLBatteryUIResponseTypeBatteryBreakdownBUIIOS
- (id)getDrainPerBucketIn:(_PLTimeIntervalRange)in;
@end

@implementation PLBatteryUIResponseTypeBatteryBreakdownBUIIOS

- (id)getDrainPerBucketIn:(_PLTimeIntervalRange)in
{
  v4 = [(PLBatteryUIResponseTypeBatteryBreakdown *)self computeNumberOfBuckets:in.location];
  isDynamicEnd = [(PLBatteryUIResponseTypeBatteryBreakdownBUIIOS *)self isDynamicEnd];
  responderService = [(PLBatteryUIResponseTypeBatteryBreakdown *)self responderService];
  v7 = responderService;
  v8 = (86400 * v4);
  if (isDynamicEnd)
  {
    [responderService getDynamicEndUISOCDrainByBuckets:v8 fromCachedLength:1296000 forBucketSize:86400];
  }

  else
  {
    [responderService getUISOCDrainByBuckets:v8 fromCachedLength:1296000 forBucketSize:86400];
  }
  v9 = ;

  reverseObjectEnumerator = [v9 reverseObjectEnumerator];
  allObjects = [reverseObjectEnumerator allObjects];

  return allObjects;
}

@end