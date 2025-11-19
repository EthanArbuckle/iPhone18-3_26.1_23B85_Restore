@interface IISMetricStore
+ (IISMetricStore)sharedInstance;
- (BOOL)sendMessagesWithShouldContinue:(id)a3;
- (BOOL)shouldSendMessages;
- (id)saveMessage:(id)a3 backend:(unsigned __int8)a4 messageIdentifier:(id)a5;
- (void)registerEnrichmentProvider:(id)a3;
- (void)registerMessageListener:(id)a3;
- (void)removeAllMetricsWithPrefix:(id)a3;
@end

@implementation IISMetricStore

+ (IISMetricStore)sharedInstance
{
  v2 = static MetricStore.sharedInstance.getter();

  return v2;
}

- (id)saveMessage:(id)a3 backend:(unsigned __int8)a4 messageIdentifier:(id)a5
{
  v7 = sub_231CA7C68();
  v8 = sub_231CA7CC8();
  v10 = v9;
  v11 = self;
  MetricStore.saveMessage(_:backend:messageIdentifier:)(v7, a4, v8, v10);

  v12 = sub_231CA7C58();

  return v12;
}

- (void)removeAllMetricsWithPrefix:(id)a3
{
  v4 = sub_231CA7CC8();
  v6 = v5;
  v7 = self;
  v8._countAndFlagsBits = v4;
  v8._object = v6;
  MetricStore.removeAllMetrics(withPrefix:)(v8);
}

- (void)registerEnrichmentProvider:(id)a3
{
  swift_unknownObjectRetain();
  v4 = self;
  MetricStore.registerEnrichmentProvider(_:)();
  swift_unknownObjectRelease();
}

- (void)registerMessageListener:(id)a3
{
  v4 = _Block_copy(a3);
  OUTLINED_FUNCTION_0();
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v6 = self;
  MetricStore.registerMessageListener(_:)(sub_231CA4ED8, v5);
}

- (BOOL)sendMessagesWithShouldContinue:(id)a3
{
  v4 = _Block_copy(a3);
  OUTLINED_FUNCTION_0();
  *(swift_allocObject() + 16) = v4;
  v5 = self;
  MetricStore.sendMessages(shouldContinue:)();
  LOBYTE(self) = v6;

  return self & 1;
}

- (BOOL)shouldSendMessages
{
  v2 = self;
  v3 = MetricStore.shouldSendMessages()();

  return v3;
}

@end