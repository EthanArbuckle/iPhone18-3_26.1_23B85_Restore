@interface _LTAnalyticsEvent
+ (id)timedEventWithName:(id)a3;
- (_LTAnalyticsEvent)initWithName:(id)a3;
- (void)addFieldsFromDictionary:(id)a3 internalOnly:(BOOL)a4;
- (void)addFieldsWithError:(id)a3;
- (void)markEnd;
- (void)markStart;
- (void)sendLazy;
- (void)timestampWithName:(id)a3;
@end

@implementation _LTAnalyticsEvent

- (_LTAnalyticsEvent)initWithName:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = _LTAnalyticsEvent;
  v5 = [(_LTAnalyticsEvent *)&v15 init];
  v6 = v5;
  if (v5)
  {
    *&v5->_startTime = xmmword_233005A50;
    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%@", @"com.apple.translation", v4];
    eventName = v6->_eventName;
    v6->_eventName = v7;

    v9 = dispatch_queue_create("com.apple.translation.analytics-event", 0);
    queue = v6->_queue;
    v6->_queue = v9;

    v11 = [MEMORY[0x277CBEB38] dictionary];
    fields = v6->_fields;
    v6->_fields = v11;

    v13 = v6;
  }

  return v6;
}

+ (id)timedEventWithName:(id)a3
{
  v3 = a3;
  v4 = [[_LTAnalyticsEvent alloc] initWithName:v3];

  [(_LTAnalyticsEvent *)v4 markStart];

  return v4;
}

- (void)markStart
{
  v4 = [MEMORY[0x277CCAC38] processInfo];
  [v4 systemUptime];
  self->_startTime = v3;
}

- (void)markEnd
{
  v4 = [MEMORY[0x277CCAC38] processInfo];
  [v4 systemUptime];
  self->_endTime = v3;
}

- (void)timestampWithName:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277CCAC38] processInfo];
  [v5 systemUptime];
  v7 = v6;

  v8 = v7 - self->_startTime;
  objc_initWeak(&location, self);
  queue = self->_queue;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __39___LTAnalyticsEvent_timestampWithName___block_invoke;
  v11[3] = &unk_2789B5260;
  objc_copyWeak(v13, &location);
  v12 = v4;
  v13[1] = *&v8;
  v10 = v4;
  dispatch_async(queue, v11);

  objc_destroyWeak(v13);
  objc_destroyWeak(&location);
}

- (void)addFieldsFromDictionary:(id)a3 internalOnly:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  if (!v4 || _LTIsInternalInstall())
  {
    objc_initWeak(&location, self);
    queue = self->_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __58___LTAnalyticsEvent_addFieldsFromDictionary_internalOnly___block_invoke;
    block[3] = &unk_2789B5288;
    objc_copyWeak(&v10, &location);
    v9 = v6;
    dispatch_async(queue, block);

    objc_destroyWeak(&v10);
    objc_destroyWeak(&location);
  }
}

- (void)addFieldsWithError:(id)a3
{
  v12[3] = *MEMORY[0x277D85DE8];
  v11[0] = @"errorDomain";
  v4 = a3;
  v5 = [v4 domain];
  v12[0] = v5;
  v11[1] = @"errorCode";
  v6 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v4, "code")}];
  v12[1] = v6;
  v11[2] = @"errorDescription";
  v7 = [v4 localizedDescription];

  v8 = &stru_284834138;
  if (v7)
  {
    v8 = v7;
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