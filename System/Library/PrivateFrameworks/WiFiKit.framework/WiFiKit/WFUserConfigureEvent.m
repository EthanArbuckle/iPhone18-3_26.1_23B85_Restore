@interface WFUserConfigureEvent
+ (id)configureEventWithType:(int64_t)a3 new:(int64_t)a4 old:(int64_t)a5;
- (WFUserConfigureEvent)initWithType:(int64_t)a3 new:(int64_t)a4 old:(int64_t)a5;
- (id)_configureValueStringForType:(int64_t)a3;
- (id)_eventTypeStringForType:(int64_t)a3;
@end

@implementation WFUserConfigureEvent

+ (id)configureEventWithType:(int64_t)a3 new:(int64_t)a4 old:(int64_t)a5
{
  v5 = [[WFUserConfigureEvent alloc] initWithType:a3 new:a4 old:a5];

  return v5;
}

- (id)_configureValueStringForType:(int64_t)a3
{
  if (a3 > 0xA)
  {
    return @"unknown";
  }

  else
  {
    return off_279EBCCE0[a3];
  }
}

- (id)_eventTypeStringForType:(int64_t)a3
{
  if (a3 > 3)
  {
    return @"unknown";
  }

  else
  {
    return off_279EBCD38[a3];
  }
}

- (WFUserConfigureEvent)initWithType:(int64_t)a3 new:(int64_t)a4 old:(int64_t)a5
{
  v19[3] = *MEMORY[0x277D85DE8];
  v17.receiver = self;
  v17.super_class = WFUserConfigureEvent;
  v8 = [(WFUserConfigureEvent *)&v17 init];
  v9 = v8;
  if (v8)
  {
    v18[0] = @"type";
    v10 = [(WFUserConfigureEvent *)v8 _eventTypeStringForType:a3];
    v19[0] = v10;
    v18[1] = @"value";
    v11 = [(WFUserConfigureEvent *)v9 _configureValueStringForType:a4];
    v19[1] = v11;
    v18[2] = @"previousValue";
    v12 = [(WFUserConfigureEvent *)v9 _configureValueStringForType:a5];
    v19[2] = v12;
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:3];
    eventDictionary = v9->_eventDictionary;
    v9->_eventDictionary = v13;
  }

  v15 = *MEMORY[0x277D85DE8];
  return v9;
}

@end