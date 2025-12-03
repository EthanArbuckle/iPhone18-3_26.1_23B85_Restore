@interface FedStatsCohortQueryDeviceType
+ (id)cohortInstance;
- (FedStatsCohortQueryDeviceType)initWithDeviceType:(id)type;
@end

@implementation FedStatsCohortQueryDeviceType

- (FedStatsCohortQueryDeviceType)initWithDeviceType:(id)type
{
  typeCopy = type;
  v9.receiver = self;
  v9.super_class = FedStatsCohortQueryDeviceType;
  v6 = [(FedStatsCohortQueryDeviceType *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_deviceType, type);
  }

  return v7;
}

+ (id)cohortInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __47__FedStatsCohortQueryDeviceType_cohortInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (cohortInstance_onceToken[0] != -1)
  {
    dispatch_once(cohortInstance_onceToken, block);
  }

  v2 = cohortInstance_cohortInstance;

  return v2;
}

void __47__FedStatsCohortQueryDeviceType_cohortInstance__block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  memset(&v7, 0, 512);
  uname(&v7);
  v2 = objc_alloc(*(a1 + 32));
  v3 = [MEMORY[0x277CCACA8] stringWithCString:v7.machine encoding:4];
  v4 = [v2 initWithDeviceType:v3];
  v5 = cohortInstance_cohortInstance;
  cohortInstance_cohortInstance = v4;

  v6 = *MEMORY[0x277D85DE8];
}

@end