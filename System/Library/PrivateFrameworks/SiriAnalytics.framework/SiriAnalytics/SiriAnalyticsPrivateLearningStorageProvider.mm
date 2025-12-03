@interface SiriAnalyticsPrivateLearningStorageProvider
- (SiriAnalyticsPrivateLearningStorageProvider)init;
- (void)storeOrderedAnyEvent:(id)event;
@end

@implementation SiriAnalyticsPrivateLearningStorageProvider

- (void)storeOrderedAnyEvent:(id)event
{
  eventCopy = event;
  event = [eventCopy event];
  v5 = -[SiriAnalyticsPrivateLearningStorageProvider isAnyEventTypeAllowed:](self, "isAnyEventTypeAllowed:", [event anyEventType]);

  v6 = eventCopy;
  if (v5)
  {
    wrapAsAnyEvent = [eventCopy wrapAsAnyEvent];
    if (wrapAsAnyEvent)
    {
      source = self->_source;
      v9 = objc_alloc(MEMORY[0x1E698F308]);
      uUID = [MEMORY[0x1E696AFB0] UUID];
      uUIDString = [uUID UUIDString];
      Current = CFAbsoluteTimeGetCurrent();
      data = [wrapAsAnyEvent data];
      v14 = [v9 initWithUniqueId:uUIDString absoluteTimestamp:data eventData:Current];
      [(BMSource *)source sendEvent:v14];
    }

    v6 = eventCopy;
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

    source = [(BMSiriPrivateLearningSELFEventStream *)v2->_stream source];
    source = v2->_source;
    v2->_source = source;
  }

  return v2;
}

@end