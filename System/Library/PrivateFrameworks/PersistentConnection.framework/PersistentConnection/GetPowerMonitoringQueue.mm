@interface GetPowerMonitoringQueue
@end

@implementation GetPowerMonitoringQueue

uint64_t ___GetPowerMonitoringQueue_block_invoke()
{
  sPowerMonitoringQueue = dispatch_queue_create("PCSimpleTimer-powermonitoringq", 0);

  return MEMORY[0x2821F96F8]();
}

@end