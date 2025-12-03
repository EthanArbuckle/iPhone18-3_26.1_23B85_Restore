@interface WFUserConfigureEvent
+ (id)configureEventWithType:(int64_t)type new:(int64_t)new old:(int64_t)old;
- (WFUserConfigureEvent)initWithType:(int64_t)type new:(int64_t)new old:(int64_t)old;
- (id)_configureValueStringForType:(int64_t)type;
- (id)_eventTypeStringForType:(int64_t)type;
@end

@implementation WFUserConfigureEvent

+ (id)configureEventWithType:(int64_t)type new:(int64_t)new old:(int64_t)old
{
  v5 = [[WFUserConfigureEvent alloc] initWithType:type new:new old:old];

  return v5;
}

- (id)_configureValueStringForType:(int64_t)type
{
  if (type > 0xA)
  {
    return @"unknown";
  }

  else
  {
    return off_279EBCCE0[type];
  }
}

- (id)_eventTypeStringForType:(int64_t)type
{
  if (type > 3)
  {
    return @"unknown";
  }

  else
  {
    return off_279EBCD38[type];
  }
}

- (WFUserConfigureEvent)initWithType:(int64_t)type new:(int64_t)new old:(int64_t)old
{
  v19[3] = *MEMORY[0x277D85DE8];
  v17.receiver = self;
  v17.super_class = WFUserConfigureEvent;
  v8 = [(WFUserConfigureEvent *)&v17 init];
  v9 = v8;
  if (v8)
  {
    v18[0] = @"type";
    v10 = [(WFUserConfigureEvent *)v8 _eventTypeStringForType:type];
    v19[0] = v10;
    v18[1] = @"value";
    v11 = [(WFUserConfigureEvent *)v9 _configureValueStringForType:new];
    v19[1] = v11;
    v18[2] = @"previousValue";
    v12 = [(WFUserConfigureEvent *)v9 _configureValueStringForType:old];
    v19[2] = v12;
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:3];
    eventDictionary = v9->_eventDictionary;
    v9->_eventDictionary = v13;
  }

  v15 = *MEMORY[0x277D85DE8];
  return v9;
}

@end