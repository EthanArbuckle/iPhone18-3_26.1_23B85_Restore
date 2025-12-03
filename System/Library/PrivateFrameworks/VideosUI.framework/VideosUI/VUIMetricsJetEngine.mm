@interface VUIMetricsJetEngine
+ (VUIMetricsJetEngine)sharedInstance;
- (BOOL)isSharedContent:(id)content;
- (NSObject)wrappedPipeline;
- (id)recordEventWithTopic:(id)topic eventType:(id)type eventData:(id)data pageData:(id)pageData;
- (void)flushMetrics;
- (void)flushMetricsWithCompletion:(id)completion;
- (void)setMonitorsLifecycleEvents:(BOOL)events;
- (void)setWrappedPipeline:(id)pipeline;
@end

@implementation VUIMetricsJetEngine

+ (VUIMetricsJetEngine)sharedInstance
{
  v2 = static MetricsJetEngine.shared.getter();

  return v2;
}

- (id)recordEventWithTopic:(id)topic eventType:(id)type eventData:(id)data pageData:(id)pageData
{
  sub_1E4205F14();
  sub_1E4205F14();
  sub_1E4205C64();
  sub_1E4205C64();
  selfCopy = self;
  MetricsJetEngine.recordEvent(topic:eventType:eventData:pageData:)();
  v8 = v7;

  return v8;
}

- (NSObject)wrappedPipeline
{
  v2 = MetricsJetEngine.wrappedPipeline.getter();

  return v2;
}

- (void)setWrappedPipeline:(id)pipeline
{
  pipelineCopy = pipeline;
  selfCopy = self;
  MetricsJetEngine.wrappedPipeline.setter(pipelineCopy);
}

- (void)flushMetrics
{
  selfCopy = self;
  MetricsJetEngine.flushMetrics()();
}

- (BOOL)isSharedContent:(id)content
{
  if (content)
  {
    v4 = sub_1E4205F14();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  selfCopy = self;
  v8.value._countAndFlagsBits = v4;
  v8.value._object = v6;
  v9 = MetricsJetEngine.isSharedContent(_:)(v8);

  return v9;
}

- (void)flushMetricsWithCompletion:(id)completion
{
  v4 = _Block_copy(completion);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  selfCopy = self;
  MetricsJetEngine.flushMetricsWithCompletion(_:)(sub_1E37951AC, v5);
}

- (void)setMonitorsLifecycleEvents:(BOOL)events
{
  selfCopy = self;
  MetricsJetEngine.setMonitorsLifecycleEvents(_:)(events);
}

@end