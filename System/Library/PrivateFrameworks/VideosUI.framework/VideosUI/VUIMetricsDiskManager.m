@interface VUIMetricsDiskManager
+ (VUIMetricsDiskManager)sharedInstance;
- (VUIMetricsDiskManager)initWithSessionSuiteName:(id)a3 eventSuiteName:(id)a4;
- (id)eventsForSession:(id)a3;
- (id)sessionForEvent:(id)a3;
- (void)clearAllData;
- (void)writeEvent:(id)a3;
- (void)writeSession:(id)a3;
@end

@implementation VUIMetricsDiskManager

+ (VUIMetricsDiskManager)sharedInstance
{
  v2 = static MetricsDiskManager.shared.getter();

  return v2;
}

- (VUIMetricsDiskManager)initWithSessionSuiteName:(id)a3 eventSuiteName:(id)a4
{
  v4 = sub_1E4205F14();
  v6 = v5;
  v7 = sub_1E4205F14();
  return sub_1E3272368(v4, v6, v7, v8);
}

- (void)writeSession:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = OUTLINED_FUNCTION_1_26();
  MetricsDiskManager.writeSession(_:)(v6);
}

- (void)writeEvent:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = OUTLINED_FUNCTION_1_26();
  MetricsDiskManager.writeEvent(_:)(v6);
}

- (id)eventsForSession:(id)a3
{
  v4 = a3;
  v5 = self;
  MetricsDiskManager.eventsForSession(_:)(v4);

  type metadata accessor for MetricsRenderEvent();
  v6 = sub_1E42062A4();

  return v6;
}

- (id)sessionForEvent:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = MetricsDiskManager.sessionForEvent(_:)(v4);

  return v6;
}

- (void)clearAllData
{
  v2 = self;
  MetricsDiskManager.clearAllData()();
}

@end