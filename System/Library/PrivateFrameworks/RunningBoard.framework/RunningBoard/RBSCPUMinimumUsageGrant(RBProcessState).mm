@interface RBSCPUMinimumUsageGrant(RBProcessState)
- (uint64_t)allowedWithAttribute:()RBProcessState error:;
- (void)applyToProcessState:()RBProcessState attributePath:context:;
@end

@implementation RBSCPUMinimumUsageGrant(RBProcessState)

- (void)applyToProcessState:()RBProcessState attributePath:context:
{
  v14 = a3;
  v7 = [a5 targetProcess];
  v8 = [v7 isPlatformBinary];

  if ((v8 & 1) == 0)
  {
    v9 = [a1 role];
    v10 = [RBProcessCPUMinimumLimits alloc];
    v11 = [a1 percentage];
    [a1 duration];
    v13 = [(RBProcessCPUMinimumLimits *)v10 initWithPercentage:v11 duration:vcvtpd_u64_f64(v12)];
    [v14 setMinCPUUsageLimits:v13 forRole:v9];
  }
}

- (uint64_t)allowedWithAttribute:()RBProcessState error:
{
  v14[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    if (a4)
    {
      v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"Attribute conflict: attribute %@ conflicts with attribute %@", a1, v6];
      v8 = MEMORY[0x277CCA9B8];
      v9 = *MEMORY[0x277D47050];
      v13 = *MEMORY[0x277CCA470];
      v14[0] = v7;
      v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:&v13 count:1];
      *a4 = [v8 errorWithDomain:v9 code:2 userInfo:v10];

      a4 = 0;
    }
  }

  else
  {
    a4 = 1;
  }

  v11 = *MEMORY[0x277D85DE8];
  return a4;
}

@end