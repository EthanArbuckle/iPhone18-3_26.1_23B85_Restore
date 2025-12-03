@interface VUIMetricsDiskManager
+ (VUIMetricsDiskManager)sharedInstance;
- (VUIMetricsDiskManager)initWithSessionSuiteName:(id)name eventSuiteName:(id)suiteName;
- (id)eventsForSession:(id)session;
- (id)sessionForEvent:(id)event;
- (void)clearAllData;
- (void)writeEvent:(id)event;
- (void)writeSession:(id)session;
@end

@implementation VUIMetricsDiskManager

+ (VUIMetricsDiskManager)sharedInstance
{
  v2 = static MetricsDiskManager.shared.getter();

  return v2;
}

- (VUIMetricsDiskManager)initWithSessionSuiteName:(id)name eventSuiteName:(id)suiteName
{
  v4 = sub_1E4205F14();
  v6 = v5;
  v7 = sub_1E4205F14();
  return sub_1E3272368(v4, v6, v7, v8);
}

- (void)writeSession:(id)session
{
  sessionCopy = session;
  selfCopy = self;
  v6 = OUTLINED_FUNCTION_1_26();
  MetricsDiskManager.writeSession(_:)(v6);
}

- (void)writeEvent:(id)event
{
  eventCopy = event;
  selfCopy = self;
  v6 = OUTLINED_FUNCTION_1_26();
  MetricsDiskManager.writeEvent(_:)(v6);
}

- (id)eventsForSession:(id)session
{
  sessionCopy = session;
  selfCopy = self;
  MetricsDiskManager.eventsForSession(_:)(sessionCopy);

  type metadata accessor for MetricsRenderEvent();
  v6 = sub_1E42062A4();

  return v6;
}

- (id)sessionForEvent:(id)event
{
  eventCopy = event;
  selfCopy = self;
  v6 = MetricsDiskManager.sessionForEvent(_:)(eventCopy);

  return v6;
}

- (void)clearAllData
{
  selfCopy = self;
  MetricsDiskManager.clearAllData()();
}

@end