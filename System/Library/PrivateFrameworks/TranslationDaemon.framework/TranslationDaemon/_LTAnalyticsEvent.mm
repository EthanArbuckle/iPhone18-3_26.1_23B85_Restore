@interface _LTAnalyticsEvent
+ (id)timedEventWithName:(id)name;
- (_LTAnalyticsEvent)initWithName:(id)name;
- (void)addFieldsFromDictionary:(id)dictionary internalOnly:(BOOL)only;
- (void)addFieldsWithError:(id)error;
- (void)markEnd;
- (void)markStart;
- (void)sendLazy;
- (void)timestampWithName:(id)name;
@end

@implementation _LTAnalyticsEvent

- (_LTAnalyticsEvent)initWithName:(id)name
{
  nameCopy = name;
  v15.receiver = self;
  v15.super_class = _LTAnalyticsEvent;
  v5 = [(_LTAnalyticsEvent *)&v15 init];
  v6 = v5;
  if (v5)
  {
    *&v5->_startTime = xmmword_233005A50;
    nameCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%@", @"com.apple.translation", nameCopy];
    eventName = v6->_eventName;
    v6->_eventName = nameCopy;

    v9 = dispatch_queue_create("com.apple.translation.analytics-event", 0);
    queue = v6->_queue;
    v6->_queue = v9;

    dictionary = [MEMORY[0x277CBEB38] dictionary];
    fields = v6->_fields;
    v6->_fields = dictionary;

    v13 = v6;
  }

  return v6;
}

+ (id)timedEventWithName:(id)name
{
  nameCopy = name;
  v4 = [[_LTAnalyticsEvent alloc] initWithName:nameCopy];

  [(_LTAnalyticsEvent *)v4 markStart];

  return v4;
}

- (void)markStart
{
  processInfo = [MEMORY[0x277CCAC38] processInfo];
  [processInfo systemUptime];
  self->_startTime = v3;
}

- (void)markEnd
{
  processInfo = [MEMORY[0x277CCAC38] processInfo];
  [processInfo systemUptime];
  self->_endTime = v3;
}

- (void)timestampWithName:(id)name
{
  nameCopy = name;
  processInfo = [MEMORY[0x277CCAC38] processInfo];
  [processInfo systemUptime];
  v7 = v6;

  v8 = v7 - self->_startTime;
  objc_initWeak(&location, self);
  queue = self->_queue;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __39___LTAnalyticsEvent_timestampWithName___block_invoke;
  v11[3] = &unk_2789B5260;
  objc_copyWeak(v13, &location);
  v12 = nameCopy;
  v13[1] = *&v8;
  v10 = nameCopy;
  dispatch_async(queue, v11);

  objc_destroyWeak(v13);
  objc_destroyWeak(&location);
}

- (void)addFieldsFromDictionary:(id)dictionary internalOnly:(BOOL)only
{
  onlyCopy = only;
  dictionaryCopy = dictionary;
  if (!onlyCopy || _LTIsInternalInstall())
  {
    objc_initWeak(&location, self);
    queue = self->_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __58___LTAnalyticsEvent_addFieldsFromDictionary_internalOnly___block_invoke;
    block[3] = &unk_2789B5288;
    objc_copyWeak(&v10, &location);
    v9 = dictionaryCopy;
    dispatch_async(queue, block);

    objc_destroyWeak(&v10);
    objc_destroyWeak(&location);
  }
}

- (void)addFieldsWithError:(id)error
{
  v12[3] = *MEMORY[0x277D85DE8];
  v11[0] = @"errorDomain";
  errorCopy = error;
  domain = [errorCopy domain];
  v12[0] = domain;
  v11[1] = @"errorCode";
  v6 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(errorCopy, "code")}];
  v12[1] = v6;
  v11[2] = @"errorDescription";
  localizedDescription = [errorCopy localizedDescription];

  v8 = &stru_284834138;
  if (localizedDescription)
  {
    v8 = localizedDescription;
  }

  v12[2] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:3];
  [(_LTAnalyticsEvent *)self addFieldsFromDictionary:v9];

  v10 = *MEMORY[0x277D85DE8];
}

- (void)sendLazy
{
  if (self->_endTime < 0.0)
  {
    [(_LTAnalyticsEvent *)self markEnd];
  }

  objc_initWeak(&location, self);
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __29___LTAnalyticsEvent_sendLazy__block_invoke;
  block[3] = &unk_2789B5288;
  objc_copyWeak(&v5, &location);
  block[4] = self;
  dispatch_async(queue, block);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

@end