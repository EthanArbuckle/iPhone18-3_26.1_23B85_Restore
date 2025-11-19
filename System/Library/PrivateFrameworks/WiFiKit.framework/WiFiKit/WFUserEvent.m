@interface WFUserEvent
+ (id)eventWithType:(int64_t)a3;
- (WFUserEvent)initWithType:(int64_t)a3 state:(BOOL)a4 stateEnum:(unsigned int)a5;
- (id)_eventTypeStringForType:(int64_t)a3;
@end

@implementation WFUserEvent

+ (id)eventWithType:(int64_t)a3
{
  v3 = [[WFUserEvent alloc] initWithType:a3 state:0 stateEnum:0];

  return v3;
}

- (id)_eventTypeStringForType:(int64_t)a3
{
  if (a3 > 0xE)
  {
    return @"unknown";
  }

  else
  {
    return off_279EBE590[a3];
  }
}

- (WFUserEvent)initWithType:(int64_t)a3 state:(BOOL)a4 stateEnum:(unsigned int)a5
{
  v6 = a4;
  v21[3] = *MEMORY[0x277D85DE8];
  v19.receiver = self;
  v19.super_class = WFUserEvent;
  v8 = [(WFUserEvent *)&v19 init];
  if (v8)
  {
    v9 = @"false";
    if (v6)
    {
      v9 = @"true";
    }

    v10 = v9;
    v11 = v10;
    if (a3 == 2)
    {

      if (a5 > 2)
      {
        v11 = @"unknown";
      }

      else
      {
        v11 = off_279EBE578[a5];
      }
    }

    v20[0] = @"type";
    v12 = [(WFUserEvent *)v8 _eventTypeStringForType:a3];
    v21[0] = v12;
    v21[1] = v11;
    v20[1] = @"value";
    v20[2] = @"process";
    v13 = +[WFMetricsManager sharedManager];
    v14 = [v13 processName];
    v21[2] = v14;
    v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:v20 count:3];
    eventDictionary = v8->_eventDictionary;
    v8->_eventDictionary = v15;
  }

  v17 = *MEMORY[0x277D85DE8];
  return v8;
}

@end