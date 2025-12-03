@interface SKDAnalyticsTrackingEvent
- (BOOL)supportedEvent:(id)event;
- (SKDAnalyticsTrackingEvent)initWithName:(id)name event:(id)event domain:(id)domain;
- (id)logs;
- (void)logEvent:(id)event;
@end

@implementation SKDAnalyticsTrackingEvent

- (SKDAnalyticsTrackingEvent)initWithName:(id)name event:(id)event domain:(id)domain
{
  v8.receiver = self;
  v8.super_class = SKDAnalyticsTrackingEvent;
  v5 = [(SKDTrackingEvent *)&v8 initWithName:name event:event domain:domain];
  if (v5)
  {
    Current = CFAbsoluteTimeGetCurrent();
    v5->_startTime = Current;
    v5->_lastEventTime = Current;
    v5->_batchCount = 0;
    v5->_completedCount = 0;
    v5->_errorCount = 0;
  }

  return v5;
}

- (BOOL)supportedEvent:(id)event
{
  eventCopy = event;
  if ([eventCopy status] == 2)
  {
    feedback = [eventCopy feedback];
    v5 = [feedback objectForKeyedSubscript:@"pipeline"];
    v6 = v5 != 0;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)logEvent:(id)event
{
  v16[2] = *MEMORY[0x277D85DE8];
  eventCopy = event;
  ++self->_batchCount;
  if ([eventCopy status] == 2)
  {
    v5 = &OBJC_IVAR___SKDAnalyticsTrackingEvent__completedCount;
  }

  else
  {
    if ([eventCopy status] != 4)
    {
      goto LABEL_6;
    }

    v5 = &OBJC_IVAR___SKDAnalyticsTrackingEvent__errorCount;
  }

  ++*(&self->super.super.isa + *v5);
LABEL_6:
  if ([(SKDAnalyticsTrackingEvent *)self supportedEvent:eventCopy])
  {
    feedback = [eventCopy feedback];
    v7 = [feedback objectForKeyedSubscript:@"pipeline"];

    v8 = CFAbsoluteTimeGetCurrent() - self->_lastEventTime;
    logs = self->_logs;
    if (!logs)
    {
      v10 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v11 = self->_logs;
      self->_logs = v10;

      logs = self->_logs;
    }

    v15[0] = @"pipeline";
    v15[1] = @"duration";
    v16[0] = v7;
    v12 = [MEMORY[0x277CCABB0] numberWithDouble:v8];
    v16[1] = v12;
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:2];
    [(NSMutableArray *)logs addObject:v13];

    self->_lastEventTime = CFAbsoluteTimeGetCurrent();
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (id)logs
{
  v12[4] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  [v3 addObjectsFromArray:self->_logs];
  v11[0] = @"event";
  name = [(SKDTrackingEvent *)self name];
  v12[0] = name;
  v11[1] = @"batchCount";
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_batchCount];
  v12[1] = v5;
  v11[2] = @"processedCount";
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_completedCount];
  v12[2] = v6;
  v11[3] = @"erroredCount";
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_errorCount];
  v12[3] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:4];
  [v3 addObject:v8];

  v9 = *MEMORY[0x277D85DE8];

  return v3;
}

@end