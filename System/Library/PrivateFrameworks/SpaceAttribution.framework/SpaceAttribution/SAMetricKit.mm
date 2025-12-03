@interface SAMetricKit
+ (void)sendDataToMetricKit:(id)kit telemetryManager:(id)manager;
@end

@implementation SAMetricKit

+ (void)sendDataToMetricKit:(id)kit telemetryManager:(id)manager
{
  managerCopy = manager;
  kitCopy = kit;
  v7 = SALog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v32 = "+[SAMetricKit sendDataToMetricKit:telemetryManager:]";
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "START: %s", buf, 0xCu);
  }

  v8 = [NSMeasurement alloc];
  aPFSDiskUsed = [kitCopy APFSDiskUsed];
  v10 = +[NSUnitInformationStorage bytes];
  v11 = [v8 initWithDoubleValue:v10 unit:aPFSDiskUsed];

  v12 = [NSMeasurement alloc];
  diskCapacity = [kitCopy diskCapacity];
  v14 = +[NSUnitInformationStorage bytes];
  v15 = [v12 initWithDoubleValue:v14 unit:diskCapacity];

  v16 = +[MXSourceManager sharedManager];
  v17 = objc_opt_new();
  v23 = _NSConcreteStackBlock;
  v24 = 3221225472;
  v25 = sub_100006318;
  v26 = &unk_1000649F8;
  v18 = managerCopy;
  v27 = v18;
  v19 = v11;
  v28 = v19;
  v20 = v15;
  v29 = v20;
  v21 = v17;
  v30 = v21;
  [kitCopy enumerateAppsDataUsingBlock:&v23];

  if ([v21 count])
  {
    v22 = +[NSDate date];
    [v16 sendMetrics:v21 forDate:v22 andSourceID:6];
  }
}

@end