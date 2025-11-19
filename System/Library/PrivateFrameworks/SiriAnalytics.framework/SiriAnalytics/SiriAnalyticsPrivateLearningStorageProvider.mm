@interface SiriAnalyticsPrivateLearningStorageProvider
- (SiriAnalyticsPrivateLearningStorageProvider)init;
- (void)storeOrderedAnyEvent:(id)a3;
@end

@implementation SiriAnalyticsPrivateLearningStorageProvider

- (void)storeOrderedAnyEvent:(id)a3
{
  v15 = a3;
  v4 = [v15 event];
  v5 = -[SiriAnalyticsPrivateLearningStorageProvider isAnyEventTypeAllowed:](self, "isAnyEventTypeAllowed:", [v4 anyEventType]);

  v6 = v15;
  if (v5)
  {
    v7 = [v15 wrapAsAnyEvent];
    if (v7)
    {
      source = self->_source;
      v9 = objc_alloc(MEMORY[0x1E698F308]);
      v10 = [MEMORY[0x1E696AFB0] UUID];
      v11 = [v10 UUIDString];
      Current = CFAbsoluteTimeGetCurrent();
      v13 = [v7 data];
      v14 = [v9 initWithUniqueId:v11 absoluteTimestamp:v13 eventData:Current];
      [(BMSource *)source sendEvent:v14];
    }

    v6 = v15;
  }
}

- (SiriAnalyticsPrivateLearningStorageProvider)init
{
  v8.receiver = self;
  v8.super_class = SiriAnalyticsPrivateLearningStorageProvider;
  v2 = [(SiriAnalyticsPrivateLearningStorageProvider *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E698F310]);
    stream = v2->_stream;
    v2->_stream = v3;

    v5 = [(BMSiriPrivateLearningSELFEventStream *)v2->_stream source];
    source = v2->_source;
    v2->_source = v5;
  }

  return v2;
}

@end