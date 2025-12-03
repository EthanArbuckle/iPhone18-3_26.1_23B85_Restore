@interface SFL2InterfaceQueueStats
+ (id)interfaceQueueStatsSlotToString:(unsigned __int8)string;
- (id)description;
@end

@implementation SFL2InterfaceQueueStats

- (id)description
{
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  interfaceType = [(SFL2InterfaceQueueStats *)self interfaceType];
  if (interfaceType >= 5)
  {
    v5 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"(unknown: %i)", interfaceType];
  }

  else
  {
    v5 = *(&off_27898A628 + interfaceType);
  }

  interfaceName = [(SFL2InterfaceQueueStats *)self interfaceName];
  v7 = [SFL2InterfaceQueueStats interfaceQueueStatsSlotToString:[(SFL2InterfaceQueueStats *)self slot]];
  v8 = [v3 initWithFormat:@"<NWL2InterfaceQueueStats:, Interface Type: %@, Interface Name: %@, Slot: %@, Average Queue Delay: %llu, Minimum Queue Delay: %llu, Maximum Queue Delay: %llu>", v5, interfaceName, v7, -[SFL2InterfaceQueueStats averageQueueDelay](self, "averageQueueDelay"), -[SFL2InterfaceQueueStats minimumQueueDelay](self, "minimumQueueDelay"), -[SFL2InterfaceQueueStats maximumQueueDelay](self, "maximumQueueDelay")];

  return v8;
}

+ (id)interfaceQueueStatsSlotToString:(unsigned __int8)string
{
  if (string > 9u)
  {
    v4 = @"Unknown";
  }

  else
  {
    v4 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%s", off_27898A458[string]];
  }

  return v4;
}

@end