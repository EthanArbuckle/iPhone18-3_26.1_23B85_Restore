@interface IISMetricStore
+ (IISMetricStore)sharedInstance;
- (BOOL)sendMessagesWithShouldContinue:(id)continue;
- (BOOL)shouldSendMessages;
- (id)saveMessage:(id)message backend:(unsigned __int8)backend messageIdentifier:(id)identifier;
- (void)registerEnrichmentProvider:(id)provider;
- (void)registerMessageListener:(id)listener;
- (void)removeAllMetricsWithPrefix:(id)prefix;
@end

@implementation IISMetricStore

+ (IISMetricStore)sharedInstance
{
  v2 = static MetricStore.sharedInstance.getter();

  return v2;
}

- (id)saveMessage:(id)message backend:(unsigned __int8)backend messageIdentifier:(id)identifier
{
  v7 = sub_231CA7C68();
  v8 = sub_231CA7CC8();
  v10 = v9;
  selfCopy = self;
  MetricStore.saveMessage(_:backend:messageIdentifier:)(v7, backend, v8, v10);

  v12 = sub_231CA7C58();

  return v12;
}

- (void)removeAllMetricsWithPrefix:(id)prefix
{
  v4 = sub_231CA7CC8();
  v6 = v5;
  selfCopy = self;
  v8._countAndFlagsBits = v4;
  v8._object = v6;
  MetricStore.removeAllMetrics(withPrefix:)(v8);
}

- (void)registerEnrichmentProvider:(id)provider
{
  swift_unknownObjectRetain();
  selfCopy = self;
  MetricStore.registerEnrichmentProvider(_:)();
  swift_unknownObjectRelease();
}

- (void)registerMessageListener:(id)listener
{
  v4 = _Block_copy(listener);
  OUTLINED_FUNCTION_0();
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  selfCopy = self;
  MetricStore.registerMessageListener(_:)(sub_231CA4ED8, v5);
}

- (BOOL)sendMessagesWithShouldContinue:(id)continue
{
  v4 = _Block_copy(continue);
  OUTLINED_FUNCTION_0();
  *(swift_allocObject() + 16) = v4;
  selfCopy = self;
  MetricStore.sendMessages(shouldContinue:)();
  LOBYTE(self) = v6;

  return self & 1;
}

- (BOOL)shouldSendMessages
{
  selfCopy = self;
  v3 = MetricStore.shouldSendMessages()();

  return v3;
}

@end