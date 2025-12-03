@interface WFInstantHotspotJoinEvent
+ (id)joinEventWithType:(int64_t)type latency:(double)latency channel:(unint64_t)channel error:(int64_t)error;
- (WFInstantHotspotJoinEvent)initWithType:(int64_t)type latency:(double)latency channel:(unint64_t)channel error:(int64_t)error;
- (id)_eventTypeStringForType:(int64_t)type;
- (int64_t)_bandGHzForChannel:(unint64_t)channel;
@end

@implementation WFInstantHotspotJoinEvent

+ (id)joinEventWithType:(int64_t)type latency:(double)latency channel:(unint64_t)channel error:(int64_t)error
{
  v6 = [[WFInstantHotspotJoinEvent alloc] initWithType:type latency:channel channel:error error:latency];

  return v6;
}

- (id)_eventTypeStringForType:(int64_t)type
{
  if (type > 4)
  {
    return @"unknown";
  }

  else
  {
    return off_279EBCF88[type];
  }
}

- (int64_t)_bandGHzForChannel:(unint64_t)channel
{
  v3 = 2;
  if (channel > 0x23)
  {
    v3 = 5;
  }

  if (channel)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

- (WFInstantHotspotJoinEvent)initWithType:(int64_t)type latency:(double)latency channel:(unint64_t)channel error:(int64_t)error
{
  v24[7] = *MEMORY[0x277D85DE8];
  v22.receiver = self;
  v22.super_class = WFInstantHotspotJoinEvent;
  v10 = [(WFInstantHotspotJoinEvent *)&v22 init];
  v11 = v10;
  if (v10)
  {
    v23[0] = @"latencyType";
    v12 = [(WFInstantHotspotJoinEvent *)v10 _eventTypeStringForType:type];
    v24[0] = v12;
    v23[1] = @"latency";
    v13 = [MEMORY[0x277CCABB0] numberWithDouble:latency];
    v24[1] = v13;
    v23[2] = @"successfulJoinAttempt";
    v14 = [MEMORY[0x277CCABB0] numberWithBool:error == 0];
    v24[2] = v14;
    v24[3] = @"Settings";
    v23[3] = @"joinReason";
    v23[4] = @"failureReporter";
    v15 = @"wifi";
    if (type == 1)
    {
      v15 = @"sharing";
    }

    v24[4] = v15;
    v23[5] = @"joinFailureCode";
    v16 = [MEMORY[0x277CCABB0] numberWithInteger:error];
    v24[5] = v16;
    v23[6] = @"band";
    v17 = [MEMORY[0x277CCABB0] numberWithInteger:{-[WFInstantHotspotJoinEvent _bandGHzForChannel:](v11, "_bandGHzForChannel:", channel)}];
    v24[6] = v17;
    v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:v23 count:7];
    eventDictionary = v11->_eventDictionary;
    v11->_eventDictionary = v18;
  }

  v20 = *MEMORY[0x277D85DE8];
  return v11;
}

@end