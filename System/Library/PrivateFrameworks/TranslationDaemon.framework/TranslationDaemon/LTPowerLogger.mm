@interface LTPowerLogger
@end

@implementation LTPowerLogger

uint64_t __32___LTPowerLogger_sharedInstance__block_invoke()
{
  sharedInstance_sharedInstance = objc_alloc_init(_LTPowerLogger);

  return MEMORY[0x2821F96F8]();
}

void __65___LTPowerLogger_logTranslateRequestEvent_requestType_routeType___block_invoke(void *a1)
{
  v7[2] = *MEMORY[0x277D85DE8];
  v1 = &stru_284834138;
  v2 = a1[5];
  if (a1[4])
  {
    v1 = a1[4];
  }

  v7[0] = v1;
  v6[0] = @"processName";
  v6[1] = @"requestType";
  v3 = [v2 _maskForRequestType:a1[6]];
  v7[1] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:v6 count:2];

  PLLogRegisteredEvent();
  v5 = *MEMORY[0x277D85DE8];
}

@end