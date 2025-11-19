@interface VUIMetricsJetEngine
+ (VUIMetricsJetEngine)sharedInstance;
- (BOOL)isSharedContent:(id)a3;
- (NSObject)wrappedPipeline;
- (id)recordEventWithTopic:(id)a3 eventType:(id)a4 eventData:(id)a5 pageData:(id)a6;
- (void)flushMetrics;
- (void)flushMetricsWithCompletion:(id)a3;
- (void)setMonitorsLifecycleEvents:(BOOL)a3;
- (void)setWrappedPipeline:(id)a3;
@end

@implementation VUIMetricsJetEngine

+ (VUIMetricsJetEngine)sharedInstance
{
  v2 = static MetricsJetEngine.shared.getter();

  return v2;
}

- (id)recordEventWithTopic:(id)a3 eventType:(id)a4 eventData:(id)a5 pageData:(id)a6
{
  sub_1E4205F14();
  sub_1E4205F14();
  sub_1E4205C64();
  sub_1E4205C64();
  v6 = self;
  MetricsJetEngine.recordEvent(topic:eventType:eventData:pageData:)();
  v8 = v7;

  return v8;
}

- (NSObject)wrappedPipeline
{
  v2 = MetricsJetEngine.wrappedPipeline.getter();

  return v2;
}

- (void)setWrappedPipeline:(id)a3
{
  v4 = a3;
  v5 = self;
  MetricsJetEngine.wrappedPipeline.setter(v4);
}

- (void)flushMetrics
{
  v2 = self;
  MetricsJetEngine.flushMetrics()();
}

- (BOOL)isSharedContent:(id)a3
{
  if (a3)
  {
    v4 = sub_1E4205F14();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v7 = self;
  v8.value._countAndFlagsBits = v4;
  v8.value._object = v6;
  v9 = MetricsJetEngine.isSharedContent(_:)(v8);

  return v9;
}

- (void)flushMetricsWithCompletion:(id)a3
{
  v4 = _Block_copy(a3);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v6 = self;
  MetricsJetEngine.flushMetricsWithCompletion(_:)(sub_1E37951AC, v5);
}

- (void)setMonitorsLifecycleEvents:(BOOL)a3
{
  v4 = self;
  MetricsJetEngine.setMonitorsLifecycleEvents(_:)(a3);
}

@end