@interface SFL2InterfaceQueueStats
+ (id)interfaceQueueStatsSlotToString:(unsigned __int8)a3;
- (id)description;
@end

@implementation SFL2InterfaceQueueStats

- (id)description
{
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  v4 = [(SFL2InterfaceQueueStats *)self interfaceType];
  if (v4 >= 5)
  {
    v5 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"(unknown: %i)", v4];
  }

  else
  {
    v5 = *(&off_27898A628 + v4);
  }

  v6 = [(SFL2InterfaceQueueStats *)self interfaceName];
  v7 = [SFL2InterfaceQueueStats interfaceQueueStatsSlotToString:[(SFL2InterfaceQueueStats *)self slot]];
  v8 = [v3 initWithFormat:@"<NWL2InterfaceQueueStats:, Interface Type: %@, Interface Name: %@, Slot: %@, Average Queue Delay: %llu, Minimum Queue Delay: %llu, Maximum Queue Delay: %llu>", v5, v6, v7, -[SFL2InterfaceQueueStats averageQueueDelay](self, "averageQueueDelay"), -[SFL2InterfaceQueueStats minimumQueueDelay](self, "minimumQueueDelay"), -[SFL2InterfaceQueueStats maximumQueueDelay](self, "maximumQueueDelay")];

  return v8;
}

+ (id)interfaceQueueStatsSlotToString:(unsigned __int8)a3
{
  if (a3 > 9u)
  {
    v4 = @"Unknown";
  }

  else
  {
    v4 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%s", off_27898A458[a3]];
  }

  return v4;
}

@end